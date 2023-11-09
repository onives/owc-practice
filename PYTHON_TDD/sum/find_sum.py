# a function that returns the sum of two numbers

def find_sum(x, y):
    if type(x) not in [int, float] or type(y) not in [int, float]:
    # if isinstance(x, str) or isinstance(y, str):
        raise TypeError
    return x + y

print(find_sum(2, 5))
