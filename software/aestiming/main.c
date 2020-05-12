/* 
 * "Small Hello World" example. 
 * 
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example 
 * designs. It requires a STDOUT  device in your system's hardware. 
 *
 * The purpose of this example is to demonstrate the smallest possible Hello 
 * World application, using the Nios II HAL library.  The memory footprint
 * of this hosted application is ~332 bytes by default using the standard 
 * reference design.  For a more fully featured Hello World application
 * example, see the example titled "Hello World".
 *
 * The memory footprint of this example has been reduced by making the
 * following changes to the normal "Hello World" example.
 * Check in the Nios II Software Developers Manual for a more complete 
 * description.
 * 
 * In the SW Application project (small_hello_world):
 *
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 * In System Library project (small_hello_world_syslib):
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 *    - Define the preprocessor option ALT_NO_INSTRUCTION_EMULATION 
 *      This removes software exception handling, which means that you cannot 
 *      run code compiled for Nios II cpu with a hardware multiplier on a core 
 *      without a the multiply unit. Check the Nios II Software Developers 
 *      Manual for more details.
 *
 *  - In the System Library page:
 *    - Set Periodic system timer and Timestamp timer to none
 *      This prevents the automatic inclusion of the timer driver.
 *
 *    - Set Max file descriptors to 4
 *      This reduces the size of the file handle pool.
 *
 *    - Check Main function does not exit
 *    - Uncheck Clean exit (flush buffers)
 *      This removes the unneeded call to exit when main returns, since it
 *      won't.
 *
 *    - Check Don't use C++
 *      This builds without the C++ support code.
 *
 *    - Check Small C library
 *      This uses a reduced functionality C library, which lacks  
 *      support for buffering, file IO, floating point and getch(), etc. 
 *      Check the Nios II Software Developers Manual for a complete list.
 *
 *    - Check Reduced device drivers
 *      This uses reduced functionality drivers if they're available. For the
 *      standard design this means you get polled UART and JTAG UART drivers,
 *      no support for the LCD driver and you lose the ability to program 
 *      CFI compliant flash devices.
 *
 *    - Check Access device drivers directly
 *      This bypasses the device file system to access device drivers directly.
 *      This eliminates the space required for the device file system services.
 *      It also provides a HAL version of libc services that access the drivers
 *      directly, further reducing space. Only a limited number of libc
 *      functions are available in this configuration.
 *
 *    - Use ALT versions of stdio routines:
 *
 *           Function                  Description
 *        ===============  =====================================
 *        alt_printf       Only supports %s, %x, and %c ( < 1 Kbyte)
 *        alt_putstr       Smaller overhead than puts with direct drivers
 *                         Note this function doesn't add a newline.
 *        alt_putchar      Smaller overhead than putchar with direct drivers
 *        alt_getchar      Smaller overhead than getchar with direct drivers
 *
 */

#include "sys/alt_stdio.h"

#include "system.h"
#include "aes.h"
#include <stdio.h>
#include "sys/alt_timestamp.h"

typedef unsigned int u32;
typedef unsigned char u8;

#define GETU32(pt) (((u32)(pt)[0] << 24) ^ \
                     ((u32)(pt)[1] << 16) ^ \
                     ((u32)(pt)[2] <<  8) ^ \
                     ((u32)(pt)[3]))

#define PUTU32(ct, st) { (ct)[0] = (u8)((st) >> 24); \
                          (ct)[1] = (u8)((st) >> 16); \
                          (ct)[2] = (u8)((st) >>  8); \
                          (ct)[3] = (u8)(st); }

enum {IDLEINS,
      LOADINS,
      UPDATEINS,
      RKINS,
      ENCINS,
      DECINS,
      ENCLASTINS,
      DECLASTINS};

void AES_encrypt_CI(const unsigned char *in,
    unsigned char *out,
    const AES_KEY *key) {
  const u32 *rk;
  u32 s0, s1, s2, s3;
  int r;

  rk = key->rd_key;

  s0 = GETU32(in     ) ^ rk[0];
  s1 = GETU32(in +  4) ^ rk[1];
  s2 = GETU32(in +  8) ^ rk[2];
  s3 = GETU32(in + 12) ^ rk[3];

  ALT_CI_TBOXTOP_0(LOADINS, s0, 0);
  ALT_CI_TBOXTOP_0(LOADINS, s1, 0);
  ALT_CI_TBOXTOP_0(LOADINS, s2, 0);
  ALT_CI_TBOXTOP_0(LOADINS, s3, 0);

  rk += 4;
  ALT_CI_TBOXTOP_0(RKINS,  rk[0], rk[1]);
  ALT_CI_TBOXTOP_0(ENCINS, rk[2], rk[3]);

  for (r=0; r<8; r++) {
    rk += 4;
    ALT_CI_TBOXTOP_0(UPDATEINS,  rk[0], rk[1]);
    ALT_CI_TBOXTOP_0(ENCINS,     rk[2], rk[3]);
  }

  rk += 4;
  ALT_CI_TBOXTOP_0(UPDATEINS,  rk[0], rk[1]);
  ALT_CI_TBOXTOP_0(ENCLASTINS, rk[2], rk[3]);

  s0 = ALT_CI_TBOXTOP_0(UPDATEINS,  0,     0);
  s1 = ALT_CI_TBOXTOP_0(LOADINS,    0,     0);
  s2 = ALT_CI_TBOXTOP_0(LOADINS,    0,     0);
  s3 = ALT_CI_TBOXTOP_0(LOADINS,    0,     0);

  PUTU32(out     , s0);
  PUTU32(out +  4, s1);
  PUTU32(out +  8, s2);
  PUTU32(out + 12, s3);
}

void AES_decrypt_CI(const unsigned char *in,
    unsigned char *out,
    const AES_KEY *key) {
  const u32 *rk;
  u32 s0, s1, s2, s3;
  int r;

  rk = key->rd_key;

  s0 = GETU32(in     ) ^ rk[0];
  s1 = GETU32(in +  4) ^ rk[1];
  s2 = GETU32(in +  8) ^ rk[2];
  s3 = GETU32(in + 12) ^ rk[3];

  ALT_CI_TBOXTOP_0(LOADINS, s0, 0);
  ALT_CI_TBOXTOP_0(LOADINS, s1, 0);
  ALT_CI_TBOXTOP_0(LOADINS, s2, 0);
  ALT_CI_TBOXTOP_0(LOADINS, s3, 0);

  rk += 4;
  ALT_CI_TBOXTOP_0(RKINS,  rk[0], rk[1]);
  ALT_CI_TBOXTOP_0(DECINS, rk[2], rk[3]);

  for (r=0; r<8; r++) {
    rk += 4;
    ALT_CI_TBOXTOP_0(UPDATEINS,  rk[0], rk[1]);
    ALT_CI_TBOXTOP_0(DECINS,     rk[2], rk[3]);
  }

  rk += 4;
  ALT_CI_TBOXTOP_0(UPDATEINS,  rk[0], rk[1]);
  ALT_CI_TBOXTOP_0(DECLASTINS, rk[2], rk[3]);

  s0 = ALT_CI_TBOXTOP_0(UPDATEINS,  0,     0);
  s1 = ALT_CI_TBOXTOP_0(LOADINS,    0,     0);
  s2 = ALT_CI_TBOXTOP_0(LOADINS,    0,     0);
  s3 = ALT_CI_TBOXTOP_0(LOADINS,    0,     0);

  PUTU32(out     , s0);
  PUTU32(out +  4, s1);
  PUTU32(out +  8, s2);
  PUTU32(out + 12, s3);
}

int main() {
  unsigned i;
  unsigned t1;

  typedef unsigned char u8;
  u8 key[] = {0x00, 0x01, 0x02, 0x03,
      0x04, 0x05, 0x06, 0x07,
      0x08, 0x09, 0x0A, 0x0B,
      0x0C, 0x0D, 0x0E, 0x0F};

  u8 txt[] = {0x00, 0x11, 0x22, 0x33,
      0x44, 0x55, 0x66, 0x77,
      0x88, 0x99, 0xAA, 0xBB,
      0xCC, 0xDD, 0xEE, 0xFF};
  u8 dout[16];

  AES_KEY keyexp;

  if (alt_timestamp_start()) {
    printf("No timer!\n");
    return 0;
  }

  printf("Timer Frequency %u\n", (unsigned) alt_timestamp_freq());

  AES_set_encrypt_key(key, 128, &keyexp);

  //------- function

  AES_encrypt(txt, dout, &keyexp);

  printf("E ");
  for (i=0; i<16; i++)
    printf("%x ", dout[i]);
  printf("\n");

  AES_encrypt_CI(txt, dout, &keyexp);

  printf("Eci ");
  for (i=0; i<16; i++)
    printf("%x ", dout[i]);
  printf("\n");

  AES_set_decrypt_key(key, 128, &keyexp);

  AES_decrypt(dout, txt, &keyexp);

  printf("D ");
  for (i=0; i<16; i++)
    printf("%x ", txt[i]);
  printf("\n");

  AES_decrypt_CI(dout, txt, &keyexp);

  printf("Dci ");
  for (i=0; i<16; i++)
    printf("%x ", txt[i]);
  printf("\n");

  //------- timing

  t1 =alt_timestamp();
  AES_set_encrypt_key(key, 128, &keyexp);
  t1 =alt_timestamp()-t1;

  printf("Encrypt Keyschedule %d\n", t1);

  t1 =alt_timestamp();
  AES_encrypt(txt, dout, &keyexp);
  t1 =alt_timestamp()-t1;

  printf("Encrypt %d\n", t1);

  t1 =alt_timestamp();
  AES_encrypt_CI(txt, dout, &keyexp);
  t1 =alt_timestamp()-t1;

  printf("Encryptci %d\n", t1);

  t1 =alt_timestamp();
  AES_set_decrypt_key(key, 128, &keyexp);
  t1 =alt_timestamp()-t1;

  printf("Decrypt Keyschedule %d\n", t1);

  t1=alt_timestamp();
  AES_decrypt(dout, txt, &keyexp);
  t1=alt_timestamp()-t1;

  printf("Decrypt %d\n", t1);

  t1=alt_timestamp();
  AES_decrypt_CI(dout, txt, &keyexp);
  t1=alt_timestamp()-t1;

  printf("Decryptci %d\n", t1);

  while (1) ;

  return 0;
}
