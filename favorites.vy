# pragma version 0.4.0

# @license MIT

#has_favorite_number: bool
#my_favorite_number: uint256
#when you have uint256; uint is unsigned integer, 256 is the bits, if it is int then its integer and that can include negative #s

my_address : address

my_favorite_number: public(uint256) # 0
# when you declare state variable like this the uint256 is the type of storage. It means there will be an empty storage slot for my_favorite_number and 
# it will have zero value in that slot
# wrap public around uint256, 
# if you don't have public wrapped around uint256 then only the internal function can call that variable.

#functions: functions or methods are very small subsections of code that when called
# or ivoked or clicked will execute some subset of code from our code base.

# to declare a function use the def keyword.
@external # this is for making it visible. This is known as a decorator. 
def store(new_number: uint256) : 
    self.my_favorite_number = new_number # here self is a specific keyword in vyper, & when you put self in here, it refers to this contract.


