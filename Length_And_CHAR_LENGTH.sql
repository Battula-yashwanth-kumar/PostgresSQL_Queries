select tweet_id from Tweets where CHAR_LENGTH(content)>15;

select tweet_id from Tweets where LENGTH(content)>15;


LENGTH() returns the length of the string measured in bytes.
CHAR_LENGTH() returns the length of the string measured in characters.
This is especially relevant for Unicode, in which most characters are encoded in two bytes, or UTF-8, where the number of bytes varies.

Example:

SELECT LENGTH('€')  # is equal to 3
SELECT CHAR_LENGTH('€') # is equal to 1
Important Note: Using LENGTH() will pass the testcases. If the testcases included characters such as € then it would fail as shown in the examples above.