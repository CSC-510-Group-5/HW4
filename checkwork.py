import numpy as np

# Load the CSV file into a numpy array
data = np.genfromtxt('titanic.csv', delimiter=',', skip_header=1)
# Remove rows with NaN in the 7th column
data = data[~np.isnan(data[:, 6])]


# Calculate the average value of the 6th column
average_value = np.mean(data[:, 6])

print(f"The average value of the 6th column is: {average_value}")