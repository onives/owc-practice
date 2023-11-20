const isPrime = (num)=>{
    if (num <= 1){
        return false;
    };

    for (let i = 2; i < num; i++){
        if (isDivisibleBy(num, i)){
            return false;
        };
    };

    return true;
};

const isDivisibleBy = (i, divisor)=>{
    return i % divisor === 0;
};

describe("IsPrimeNumber", ()=>{
    it("should return true for no.2", ()=>{
        expect(isPrime(2)).toBe(true);
    });
    it("should return false for all -ve numbers", ()=>{
        expect(isPrime(-2)).toBe(false);
        expect(isPrime(-4)).toBe(false);
    });
    it("should return false for even numbers", ()=>{
        expect(isPrime(6)).toBe(false);
        expect(isPrime(8)).toBe(false);
    });
    it("should return true for no.3", ()=>{
        expect(isPrime(3)).toBe(true);
    });
    it("should return true for odd numbers", ()=>{
        expect(isPrime(7)).toBe(true);
        expect(isPrime(11)).toBe(true);
        expect(isPrime(17)).toBe(true);
        expect(isPrime(5)).toBe(true);
    });
    it("should return false for odd numbers divisible by 3", ()=>{
        expect(isPrime(15)).toBe(false);
    });
    it("should return false for no.25", ()=>{
        expect(isPrime(25)).toBe(false);
    });
    it("should return false for no.1", ()=>{
        expect(isPrime(1)).toBe(false);
    });
    it("should return false for nos divisible by 7", ()=>{
        expect(isPrime(49)).toBe(false);
        expect(isPrime(77)).toBe(false);
    });
    it("should return false for nos divisible by 17", ()=>{
        expect(isPrime(119)).toBe(false);
        expect(isPrime(187)).toBe(false);
        expect(isPrime(221)).toBe(false);
    });
    it("should return true for no. 19", ()=>{
        expect(isPrime(19)).toBe(true);
    });
});

  