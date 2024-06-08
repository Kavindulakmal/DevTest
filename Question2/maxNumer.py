def maxnumber(numbers):
    if not numbers:     #check list is empty or not
        raise ValueError("List is empty")
    
    return max(numbers)


numbers = [12,5,45,78,150,23,89,99,45,64]
max_number = max(numbers)
print("Maximum Number of the list is  : ",max_number)


