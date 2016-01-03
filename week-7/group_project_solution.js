// PSEUDOCODE

// Test 1 - Sum
//    Create a variable to store our running sum
//    Start with 0 for the running sum
//    LOOP through the list
//       Add each value to the running sum
//    END LOOP
//    Return the sum when the loop has completed.

// Test 2 - Average
//    Create a variable to store our running sum
//    Start with 0 for the running sum
//    Create a variable to count the number of items
//    Start with a count of 0
//    LOOP through the list
//       Add each value to the running sum
//       Add 1 to the count variable
//    END LOOP
//    WHen the loop has completed, divide the sum by the count of items
//    Return the result of the division

// Test 3 - Median
//    Create a variable to count the number of items
//    Start with a count of 0
//    Create a sum variable for the median value(s)
//    Start with 0 for that sum
//    LOOP through the list
//       Add 1 to the count variable
//    END LOOP
//    To find the position of the median number - 
//       Add 1 to the count of items
//       Divide that new number by 2
//       IF there is no remainder
//          Return the item from the calculated position number as our median
//       END IF
//       IF there IS a remainder
//          Drop the remainder
//          Add the item from that position to the median sum variable
//          Add the item from one position higher to the median sum variable
//          Divide that new sum by 2, return that as the median
//       END IF

