# Data Analysis Projects
# Author: John Stallings
# Purpose: Basic data exploration template

import csv
import os

def load_data(filepath):
    """Load a CSV file and return the data as a list"""
    data = []
    with open(filepath, 'r') as file:
        reader = csv.reader(file)
        headers = next(reader)
        for row in reader:
            data.append(row)
    return headers, data

def summarise_data(headers, data):
    """Print a basic summary of the dataset"""
    print(f"Dataset Summary")
    print(f"---------------")
    print(f"Total rows: {len(data)}")
    print(f"Total columns: {len(headers)}")
    print(f"Column names: {', '.join(headers)}")

if __name__ == "__main__":
    print("Data analysis template ready.")
    print("Replace load_data() filepath with your actual CSV file.")
