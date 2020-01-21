
from argparse import ArgumentParser
from random import randint
from pprint import pprint

LIMIT = 100000000

def main():
	parser = ArgumentParser(description="Generate example input files for WordCount tests")
	parser.add_argument("typ", type=str, help="'same' or 'random'")
	
	args = parser.parse_args()
	generationTyp = args.typ
	
	if generationTyp == "same":
		numbers = list(123456789 for _ in range(LIMIT))
		storeToFile(numbers, 'wordsSame.txt')		
		
	elif generationTyp == "random":
		numbers = list(randint(100000000, 999999999) for n in range(LIMIT))
		storeToFile(numbers, 'wordsRandom.txt')
	
	else:
		parser.error("argument 'typ' must be 'same' or 'random'")


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def storeToFile(l, fileName):
	c = list(chunks(l, 10))
	file = open(fileName, 'w')
	
	for chunkGen in c:
		x = " ".join(map(str, chunkGen))
		file.write(x)
		file.write("\n")
	file.close()
    
def new():
	file = open('new.txt', 'w')
	
	for i in range(LIMIT):
		numbers = list(str(randint(100000000, 999999999)) for n in range(10))
		x = " ".join(numbers)
		file.write(x)
		file.write("\n")
	file.close()

if __name__ == "__main__":
    # execute only if run as a script
    main()