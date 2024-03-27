% from https://www.tutorialspoint.com/prolog/prolog_loop_and_decision_making.htm
% usage
% consult('count.pro').
% count_to_10(3).  will output integers from 3 to 10.

count_to_10(10) :- write(10),nl.
count_to_10(X) :- 
    write(X),nl,
    Y is X + 1,
    count_to_10(Y).

% It seems first matched rule is applied. So If you put "count_to_10(10) :- write(10),nl." after the other rule named count_to_10,
% it will be infinite loop.
