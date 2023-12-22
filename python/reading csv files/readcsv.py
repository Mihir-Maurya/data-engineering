import csv
file = open('survey.csv')
print(type(file))

csvreader = csv.reader(file)
header = []
rows = []
header = next(csvreader)
print(header)
for row in csvreader:
    rows.append(row)
    
print(rows)    