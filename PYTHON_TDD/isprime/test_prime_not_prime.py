import unittest
from PYTHON_TDD.isprime.is_prime import is_prime

class PrimeNotPrimeTest(unittest.TestCase):
    def test_is_prime(self):
        self.assertTrue(is_prime(5))

    def test_is_2(self):
        self.assertTrue(is_prime(2))

    def test_is_prime(self):
        self.assertTrue(is_prime(3))

    def test_isnot_prime(self):
        self.assertFalse(is_prime(15))
    
    def test_negative_number(self):
        self.assertFalse(is_prime(-3))