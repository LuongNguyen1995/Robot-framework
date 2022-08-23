import csv
import random

def read_csv_file(filename):
    data = []
    with open(filename,'r') as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data

def random_number():
    return random.randint(1,1000)


print(random_number())

