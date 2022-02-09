# Read a text File

with open("Python/textFile.txt", mode = "r") as file:
    content = file.read()
    print(content)

# Erase and write in a text File

with open("Python/textFile.txt", mode = "w") as file:
    file.write("Beleza")

# Appending to a text File

with open("Python/textFile.txt", mode = "a") as file:
    file.write("\nBeleza")
