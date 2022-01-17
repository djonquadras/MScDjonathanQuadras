firstName = input("First Name = ").lower()
secondName = input("Second Name = ").lower()
decimal = 0
unidade = 0
for i in "true":
    decimal += firstName.count(i)
    decimal += secondName.count(i)
for i in "love":
    unidade += firstName.count(i)
    unidade += secondName.count(i)
    
print(f"Total = {decimal}{unidade}%")