import csv
def SG_csv_file(filename):
    data = []
    with open(filename, 'rt') as csvfile:
        reader = csv.reader(csvfile)
        x=0
        for row in reader:
            if x > 0:
             data.append(row)
            else:
                x=x+1

        print(data)
    return data