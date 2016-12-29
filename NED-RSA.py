import sys
from sys import argv,exit
import primefac
from os import system
from sys import maxint
from  numba import autojit, jit
import gmpy2 as gmpy
from Crypto.PublicKey import RSA
def KeyGen():
	try:
		spacer = "-" * 64
		pub_input = argv[1]
		raw_key = file(pub_input, 'r').read()
		pub_key = RSA.importKey("""{0}""".format(raw_key))
		n = long((pub_key.n))
		maxint = n*3
		print(spacer)
		print("N: {0}".format(n))
		e = long((pub_key.e))
		print(spacer)
		print("E: {0}".format(e))
		print(spacer)
		fh = file('worktodo.ini', 'w')
		fh.write(str(n))
		fh.close()
		system("./msieve -n -v")
	except KeyboardInterrupt:
		print("For Science!")
		sys.exit()
KeyGen()
