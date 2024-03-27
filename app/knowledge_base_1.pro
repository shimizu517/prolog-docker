% "Knowledge Base in Logic Programming" from https://www.tutorialspoint.com/prolog/prolog_basics.htm
% This is a comment. 4 facts.

% facts will like base case for the query(IMO).
girl(priya).
girl(tiyasha).
girl(jaya).

can_cook(priya).

% Knowledge base
% ananya sings a song and rohit listens to music. These are always true.
sing_a_song(ananya).
listens_to_music(rohit).

% since ananya sings a song, she is happy.
listens_to_music(ananya) :- sing_a_song(ananya).
happy(ananya) :- sing_a_song(ananya).
happy(rohit) :- listens_to_music(rohit).
playes_guitar(rohit) :- listens_to_music(rohit).

% Knowledge base from https://athena.ecs.csus.edu/~mei/logicp/prolog/programming-examples.html.
% facts
studies(charlie, csc135).  % charlie studies csc135
studies(olivia, csc135).
studies(taro, csc135).
studies(jack, csc131).  
studies(arthur, csc134).

teaches(kirke, csc135).     % kirke 
teaches(collins, csc131).
teaches(collins, csc171).
teaches(juniper, csc134).

test(a,b,c).
test(a,f,d).

% Rules. X is a professor of Y if X teaches C and Y studies C.
professor(X, Y) :-
teaches(X, C), studies(Y, C).

% example queries(execute in REPL).
% ?- studies(charlie, What).  % You can know charlie studies csc135 based on the fact.
% ?- professor(kirke, Students).    % You can type ";" to get all the students.
% ?- test(a,Foo,Bar)    % You can type ";" to get all matched facts.
