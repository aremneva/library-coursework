import unittest
import re
import main

class Test_test_incorrect(unittest.TestCase):
    def test_A(self):
        self.assertFalse(main.resF)
if __name__ == '__main__':
    unittest.main()
