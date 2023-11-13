const isPrime = (num) => {
    if (num < 0) {
      return false;
    }
    
    if (num === 2 || num === 3) {
      return true;
    }
  
    if (isEvenNumber(num)) {
      return false;
    } else if (isOddNumber(num) && !isDivisibleBy3(num)) {
      return true;
    }
    return false;
}
  
function isEvenNumber(i) {
    return i % 2 === 0;
}
  
function isOddNumber(i) {
    return i % 2 !== 0;
}
  
function isDivisibleBy3(i) {
    return i % 3 === 0;
}

describe('isPrime', () => {
  it('should return false for negative numbers', () => {
    expect(isPrime(-1)).toBe(false);
    expect(isPrime(-5)).toBe(false);
  });
  it('should return true for prime numbers', () => {
    expect(isPrime(3)).toBe(true);
    expect(isPrime(5)).toBe(true);
    expect(isPrime(7)).toBe(true);
  });
  it('should return true for 2', () => {
    expect(isPrime(2)).toBe(true);
  });
});
