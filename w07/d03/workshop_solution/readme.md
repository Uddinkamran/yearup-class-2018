# Day 30:
## Schoolhouse Automation
### Goal
To reinforce an understanding of debugging and clean code in ruby.
### Learning Objectives
By the end of this exercise the student will be able to:
* examine a block of legacy ruby code and understand its functionality
* write comments explaining codes functionality
* identify and debug errors for specific functions
### Introduction
Kimmy, the principal of the local high school, is an avid ruby developer. She loves using ruby to automate parts of her job. She recently wrote a program to keep track of student grades across classrooms and has been testing it on the first years. Since she’s still a beginner she needs some help debugging where her program might have gone wrong.

Initially it was used to just store records. However things started to go awry as she added functionality. The two features she worked on were:
* A function to display a report of which students passed or failed (scored 200 or less in total across all four subjects).
* A function to print the names of students that got more than 260 in a class.

Kimmy could really use your help fixing this program so those two functions work as expected.
### Setup
* `bundle install` inside of that directory. This makes sure your computer has  the two dependencies Kimmy used: `faker` and `pry`. Kimmy uses faker to generate fake users since she can’t show you the students’ actual records.
* If bundle does not work maybe you need to install it with `sudo gem install bundler`. If it doesn't work after that, try `sudo bundle install`.
* You can run the program by using `bundle exec pry -r ./app.rb`. Don’t forget that after any file changes you need to restart pry.
### Instructions
* Your first task is to start figuring out what each part of Kimmy’s program does. It seems as though she didn’t leave many comments while working on it. Try to use each class in the pry repl and put a few comments in the appropriate file about what it does or what information it holds. Eg: “Student: takes in a name and age as the constructor. Contains an instance of Reportcard.”
* Next try to fix the first problem the `findFailing` function (app.rb line 49). Kimmy commented out her code since she was afraid it would do further damage. Uncomment it and take a look at the first error it raises. Just a reminder that this function should display a report of which students passed or failed. A failing score is 200 or less in total for all four subjects.
* The `findExemplary` follows a similar pattern. Try to figure out where Kimmy went wrong with that one. Maybe she didn’t use some methods correctly.

#### Notes:
* Feel free to change the code in any of the Classes to help get the desired result of feature one.
* The inspect method may be useful to see into objects.
* Don’t forget `pry` is your best friend here - you can interact with classes in the repl by simply using their instance name. Eg: `pry > @A.roster` would display the roster for class 1A. Running the function is as simple as `pry > findFailing @A`.

### References
* Hashes: https://docs.ruby-lang.org/en/2.0.0/Hash.html
* Inspect method: https://docs.ruby-lang.org/en/2.0.0/Hash.html#method-i-inspect
* Pry: http://pryrepl.org/
* Faker: https://github.com/stympy/faker
### Completion Requirements
* Complete Workshop by end of allotted time limit.
* The completed workshop:
  * Has comments in each of the 4 Classes describing what they do.
  * Has the findFailing function correctly determining which students pass or fail.
  * Has the findExceptional function correctly determining who got more than 260 points.
  * Code should be neat and readable.
* Group review session with the instructor.




