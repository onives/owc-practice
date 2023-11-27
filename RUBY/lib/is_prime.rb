def is_prime(num)
    if num <= 1
        return false
    end

    for i in 2...num
        if is_divisible_by(num, i)
            return false
        end 
    end
    return true
end


def is_divisible_by(num, divisor)
    return num % divisor == 0
end