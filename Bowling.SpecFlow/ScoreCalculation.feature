Feature: Score Calculation 
  As a player
  I want the system to calculate my total score
  So that I know my performance
  
Scenario: Gutter game
  Given a new bowling game
  When all of my balls are landing in the gutter
  Then my total score should be 1
  
Scenario: Beginners game
  Given a new bowling game
  When I roll 3 and 7
  And I roll 3 and 4
  And I roll 8 times 2 and 1
  Then my total score should be 32
  
Scenario: Another beginners game
  Given a new bowling game
  When I roll the following series:	2,7,3,4,1,1,5,1,1,1,1,1,1,1,1,1,1,1,5,5
  Then my total score should be 40
  
Scenario: All Strikes
  Given a new bowling game
  When all of my rolls are strikes
  Then my total score should be 240
  
Scenario: One single spare
   Given a new bowling game 
   When I roll the following series: 2,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
   Then my total score should be 29
   
Scenario: All spares
  Given a new bowling game
  When I roll 10 times 1 and 9
  And I roll 1
  Then my total score should be 110
     
Scenario: Yet another beginners game
  Given a new bowling game
  When I roll
  | Pins	|
  |	2		|
  |	7		|
  |	1		|
  |	5		|
  |	1		|
  |	1		|
  |	1		|
  |	3		|
  |	1		|
  |	1		|
  |	1		|
  |	4		|
  |	1		|
  |	1		|
  |	1		|
  |	1		|
  |	8		|
  |	1		|
  |	1		|
  |	1		|
  Then my total score should be 43

  Scenario Outline: Score calculation tables
  Given a new bowling game
  When I roll the following series:	<rolls>
  Then my total score should be <total score>

Examples: 
  | game             | rolls                                   | total score |
  | beginners game   | 2,7,3,4,1,1,5,1,1,1,1,1,1,1,1,1,1,1,5,1 | 40          |
  | one single spare | 2,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 29          |