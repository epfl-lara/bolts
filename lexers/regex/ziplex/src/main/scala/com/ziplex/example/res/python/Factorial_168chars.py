
def fact(i):
  if (i < 2):
    # Base case
    return 1
  else: 
    rec = fact(i-1)
    return i * rec

print("5! = " + str(fact(5)))
print("10! = " + str(fact(10)))
