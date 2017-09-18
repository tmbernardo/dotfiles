'''
Command Line Encrypt/Decrypt

Python command-line program to encrypt or decrypt a file
'''

import itertools, numpy, argparse

def readHelper(readfile, writefile, key, method):
    with open(readfile) as readtxt:
        with open(writefile, "w") as writetxt:
            for line in readtxt:
                for letter in line:
                    writetxt.write(method(key, str.lower(letter)))
    return


def ceaser_encrypt(key, letter):
    cipherText = ''
    if 96 < ord(letter) < 123:
        cipherText += chr((((ord(letter) - ord('a')) + key) % 26) + ord('a'))
    else:
        cipherText += letter
    return cipherText

def ceaser_decrypt(key, letter):
    decipheredText = ''
    if 96 < ord(letter) < 123:
        decipheredText += chr((((ord(letter) - ord('a')) - key + 26) % 26) + ord('a'))
    else:
        decipheredText += letter
    return decipheredText

def vigenere_encrypt(key, letter):
    cipherText = ''
    keyletter = itertools.cycle(str.lower(key))
    
    if 96 < ord(letter) < 123:
        cipherText += chr((((ord(letter) - ord('a')) + ord(next(keyletter))) % 26) + ord('a'))
    else:
        cipherText += letter
    return cipherText

def vigenere_decrypt(key, letter):
    decipheredText = ''
    keyletter = itertools.cycle(str.lower(key))

    if 96 < ord(letter) < 123:
        decipheredText += chr((((ord(letter) - ord('a')) - ord(next(keyletter)) + 26) % 26) + ord('a'))
    else:
        decipheredText += letter
    return decipheredText

def sub_encrypt(key, letter):
    cipherAlpha = 'zebrascdfghijklmnopqtuvwxy'
    cipherText = ''
    
    if 96 < ord(letter) < 123:
        cipherText += cipherAlpha[(ord(letter) - ord('a'))]
    else:
        cipherText += letter

    return cipherText

def sub_decrypt(key, letter):
    cipherAlpha = 'zebrascdfghijklmnopqtuvwxy'
    decipheredText = ''
    
    if 96 < ord(letter) < 123:
        decipheredText += chr(ord('a') + cipherAlpha.find(letter))
    else:
        decipheredText += letter
    
    return decipheredText

def transpos(readfile, writefile):
    newStr = ''
    with open(readfile) as readtxt:
        with open(writefile, "w") as writetxt:
            for line in readtxt:
                newStr += str.lower(line.strip())[::-1]
                newStr += '\n'
            writetxt.write(newStr)
    return



if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Encrypt/Decrypt a file')
    parser.add_argument("file", help = "the file you wish to encrypt/decrypt", type=str)
    parser.add_argument('key', nargs='?', type=str)
    parser.add_argument('-c', '--ceaser',help='ceaser', action='store_true')
    parser.add_argument('-v', '--vigenere',help='vigenere', action='store_true')
    parser.add_argument('-s', '--substitution',help='simple substitution', action='store_true')
    parser.add_argument('-t', '--transpose',help='transpos', action='store_true')
    parser.add_argument('-e', '--encryption',help='file encryption', action='store_true')
    parser.add_argument('-d', '--decryption',help='file decryption', action='store_true')

    args = parser.parse_args()

    if args.encryption:
        writeToFile = 'ciphered.txt'
        if args.ceaser:
            readHelper(args.file, writeToFile, int(args.key), ceaser_encrypt)
        if args.vigenere:
            readHelper(args.file, writeToFile, args.key, vigenere_encrypt)
        if args.substitution:
            readHelper(args.file, writeToFile, args.key, sub_encrypt)
        if args.transpose:
            transpos(args.file, writeToFile)
    elif args.decryption:
        writeToFile = 'deciphered.txt'
        if args.ceaser:
            readHelper(args.file, writeToFile, int(args.key), ceaser_decrypt)
        if args.vigenere:
            readHelper(args.file, writeToFile, args.key, vigenere_decrypt)
        if args.substitution:
            readHelper(args.file, writeToFile, args.key, sub_decrypt)
        if args.transpose:
            transpos(args.file, writeToFile)
    
	
