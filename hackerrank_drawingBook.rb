# A teacher asks the class to open their books to a page number. A student can either start turning pages from the front of the book or from the back of the book.
# They always turn pages one at a time. When they open the book, page  is always on the right side:
# When they flip page , they see pages  and . Each page except the last page will always be printed on both sides.
# The last page may only be printed on the front, given the length of the book. If the book is  pages long, and a student wants to turn to page ,
# what is the minimum number of pages to turn? They can start at the beginning or the end of the book.

# Given  and , find and print the minimum number of pages that must be turned in order to arrive at page .
# https://www.hackerrank.com/challenges/drawing-book/problem?h_r=internal-search

def pageCount(n, p)   
    turns = n/2
    pages = p/2
    arr = []
    if n.even?
        arr<<pages
        arr<<((turns - pages) + 1/2) #weird that 0.5 doesn´t fullfill 2 test cases?
    else
        arr<<pages
        arr<<((turns - pages))
    end
    arr.min
end
