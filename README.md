# How to run

## REPL

```bash
docker run -it -v $(pwd)/app:/app -w /app swipl
# in repl, run the following to load the script.
# you can use either of consult and [] notation.
consult('test.pro').
['test.pro'].
# Check if it's loaded.
dog(rover).   # Should output "true."
# Import module. Maybe equivalent to ":- use_module(library(clpfd))." in .pro file.
[library(clpfd)].
```


## Compile and run
```bash
docker run -it --entrypoint bash -v $(pwd)/app:/app -w /app swipl
swipl -s test.pl
```


## Run Sudoku solver(by `https://github.com/dev-jan/sudokusolver`)

```bash
docker run -it -v $(pwd)/app:/app -w /app swipl
# In the REPL,
consult('sudokusolver/solver/sudoku.pl').
S = [_,_,_,2,6,_,7,_,1,
         6,8,_,_,7,_,_,9,_,
         1,9,_,_,_,4,5,_,_,
         8,2,_,1,_,_,_,4,_,
         _,_,4,6,_,2,9,_,_,
         _,5,_,_,_,3,_,2,8,
         _,_,9,3,_,_,_,7,4,
         _,4,_,_,5,_,_,3,6,
         7,_,3,_,1,8,_,_,_],
    solvesudoku(S, Solution).
# Outputs the result of sudoku.
```

# Prolog basic syntax examples\[1]

## Concepts

- **Fact**
  - an explicit relationship between objects, and properties these objects might have.
  - unconditionally true in nature.
  - syntax: `relation(object1,object2...).`
- **Rule**
  - implicit relationship between objects
  - conditionally true
  - syntax: `rule_name(object1, object2, ...) :- fact/rule(object1, object2, ...)`
- **functor**(\[3])
```
brother(john, jack).
   ^      ^     ^
functor   |     |
      argument  |
            argument
\________  ________/
         \/
   fact/predicate
```
- **term**
  - "atoms, numbers, variables, and complex terms (or structures)"\[6]
  - **constants**
    - are either Numbers or Atoms.
    - **Numbers**
      - any real numbers.
      - e.g., 1, 0.004, -3.14
    - **Atom** \[5]
      - one variation of constants
      - can be any names or objects
      - e.g., `john`, `pizza`, `foo_123`
  - **Variable**
    - starts with an upper-case letter or an underscore character.
  - **Complex term(=structure)**
    - 
- **Arity**
  - the number of arguments that a complex term has.\[6]
  - e.g., 
    - woman(mia) is a complex term of arity 1 \[6]
    - loves(vincent,mia) is a complex term of arity 2 \[6]
- **Queries**
  - e.g.,
    - ?- Length = 8, length(List,Length).  % Generate a list whose length is 8 using the predicate `length` and a variable `Length`.
    - 

| Operations | e.g.,                    | e.g., result |
| ---------- | ------------------------ | ------------ |
| Fact       | `likes(john, pizza).`    | `true`       |
| Rule       | `parent(john, mary).`    | `true`       |
| Query      | `?- likes(john, pizza).` | `true`       |


# References
- \[1]: https://github.com/klaudiosinani/awesome-prolog?tab=readme-ov-file#artificial-intelligence
- \[2]: https://www.tutorialspoint.com/prolog/prolog_basics.htm
- \[3]: https://stackoverflow.com/questions/53266306/whats-the-difference-between-functor-a-fact-a-predicate-and-a-rule-in-prolog
- \[4]: https://stackoverflow.com/questions/28972038/prolog-structurecomplex-term-vs-predicate-i-dont-really-get-the-difference
- \[5]: https://www.tutorialspoint.com/prolog/prolog_data_objects.htm
- \[6]: https://lpn.swi-prolog.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse2