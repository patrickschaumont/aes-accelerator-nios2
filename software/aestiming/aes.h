#ifndef AES_H
#define AES_H

#define AES_MAXNR 14

struct aes_key_st {
    unsigned int rd_key[4 *(AES_MAXNR + 1)];
    int rounds;
};
typedef struct aes_key_st AES_KEY;

int AES_set_encrypt_key(const unsigned char *userKey,
			const int bits,
			AES_KEY *key);

int AES_set_decrypt_key(const unsigned char *userKey,
			const int bits,
			AES_KEY *key);

void AES_encrypt(const unsigned char *in,
		 unsigned char *out,
		 const AES_KEY *key);

void AES_decrypt(const unsigned char *in,
		 unsigned char *out,
		 const AES_KEY *key);

#endif
