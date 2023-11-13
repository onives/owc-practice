const isPrime = (num)=>{
    if (num == 2 || num ===3){
        return true;
    };
    if (num <= 1){
        return false;
    };

    if (isEvenNumber(num)){
        return false;
    } else if (isOddNumber(num) && !isDivisibleBy3(num) &&!isDivisibleBy5(num)){
        return true;
    };

    return false;
};

const isEvenNumber = (i)=>{
    return i % 2 === 0;
};

function isOddNumber(i) {
    return i % 2 !== 0;
}

const isDivisibleBy3 = (i)=>{
    return i % 3 === 0;
};
const isDivisibleBy5 = (i)=>{
    return i % 5 === 0;
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
});

  