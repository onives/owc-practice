import unittest
from find_sum import find_sum


class FindSumTest(unittest.TestCase):
    def test_sum(self):
        self.assertAlmostEqual(find_sum(2,3), 5)
        self.assertAlmostEqual(find_sum(2, -5), -3)
        self.assertAlmostEqual(find_sum(2.5, -5), -2.5)
        self.assertAlmostEqual(find_sum(2.5, 2.5), 5)
        self.assertAlmostEqual(find_sum(-1, -5), -6)
        self.assertAlmostEqual(find_sum(-2.5, -5.1), -7.6)

    def test_type_values(self):
        # test that value errors are raised when string inputs are used
        with self.assertRaises(TypeError):
            find_sum('hi', 'hi')

        with self.assertRaises(TypeError):
            find_sum('hi', 1)

        with self.assertRaises(TypeError):
            find_sum(4, 'hi')
        # self.assertRaises(ValueError, find_sum, 'hi', 'two')
        # self.assertRaises(ValueError, find_sum, 2, 'two')
