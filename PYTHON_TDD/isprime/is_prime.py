def is_prime(num):
    if num < 0:
        return False
    if num == 2 or num == 3:
        return True
    
    if is_even_number(num):
        return False
    elif is_odd_number(num) and not is_divisible_by_3(num):
        return True
    return False

def is_even_number(i):
    return i % 2 == 0

def is_odd_number(i):
    return i % 2 != 0

def is_divisible_by_3(i):
    return i % 3 == 0