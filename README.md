# CS360-Lab4
Haskell!

Introduction <br />
The purpose of this lab is to give you exposure to a programming paradigm that is different from
what you’re used to. If you’ve already used Haskell or another language that supports functional
programming, then you have a head start. If not, then I recommend you read one or more of the
various introductions and tutorials that you can find from the Haskell web page (especially the Learn
You a Haskell for Great Good.) Do not expect to be able to complete this lab without studying
the Haskell language, to at least an introductory level. Your task is to write a number of functions
in Haskell that solve various simple problems. To do this you’ll need access the Glasgow Haskell
Compiler (GHC) and it’s interpreter (ghci). The best installation is to install haskell-platform.
See www.haskell.org for more information. <br />
Nothing required here will be any more difficult than you’ll see in class during lecture. I have no
doubt that you could search the web for answers to some of these problems. Please do not do this.
This lab needs to be your own work. You will learn much more about functional programming this
way, and you’ll also be able to answer the questions about Haskell on the quiz.
For this lab it is helpful to have a good editor – one that performs syntax highlighting for Haskell.
Notepad++ seems to do an OK job and Textmate on the Mac has a bundle plug-in. GEdit on
Linux works well. Since Haskell uses two dimensional layout (no braces or semicolons) it is essential
that your editor uses spaces for tabs or always assigns 8 spaces to a tab. <br />
For each of these problems, write your Haskell code in a single file. Name it Lab4.hs Please start
with something like this, with your name of course. <br />
{- Lab 4 Scot Morse -} <br />
-- Example <br />
square :: Integer -> Integer <br />
square x = x^2 <br />
{- ANSWER: The square of 93240823948293048 is 8693851250556578380656712885130304 -} <br />
-- Problem #1 <br />
{- ANSWER: -} <br />
-- Problem #2 <br />
{- ANSWER: -} <br />
-- Problem #3 <br />
{- ANSWER: -} <br />
Each problem will go in this file in the appropriate place. To get started, please begin with the
interpreter. From the command line, navigate to where you have written this file, then start your
ghci session. Go ahead and try out the square function. First you must :load (or :l) the file
containing your code. After working on your code, you need to tell the interpreter to use the new
code. You can do this by typing :reload (or :r). It will then reload the last module and you can
be off and running. This will be the typical procedure for this lab. Write code, reload, try it out,
repeat. There will be one part that will require a main function. <br />
For most of the questions you’ll write the function or functions and then be asked to use it to provide
a resulting value for an example input. Put that answer in comments just after the function, as
illustrated above. <br />
Important note: For every function you write, make sure and write a type signature for it. Haskell
doesn’t force you to do it, but it is good practice. It forces you to think about types and that is a
good thing, especially when you’re first learning. <br />
Questions: A Bunch of Random Things
1. As a good scientist should, I use SI units in everyday life. For example my thermometers are
set to Celsius and I record my fuel efficiency in liters per 100km. Some misguided individuals
persist in using archaic units. To help them when traveling to sensible countries, write
functions necessary to answer the following questions. How many US gallons are there in
a certain number of liters? How much have you spent in USD if you spent $x CAD? Now,
use these two functions to answer this question: you filled up your gas tank in Canada. You
bought 62.3 liters of fuel and paid 78.4 Canadian dollars. What price was that in US dollars
per gallon? To get you started on this one, call your first function gallons, the second one
usd and the last price.
2. Write a function called flightDistance to compute the approximate distance between two
locations on the Earth (in nautical miles1
) given the latitude and longitude of each coordinate
as Double values. The needed function is
d = a cos−1

cos(δ1)cos(δ2)cos(λ1 − λ2) + sin(δ1)sin(δ2)

where d is the flight distance2
in miles between two points on a sphere of radius a (in miles),
roughly 3963 miles for the Earth. Point one has latitude δ1 and longitude λ1 while point 2
has latitude δ2 and longitude λ2. The latitude and longitude need to be in decimal form, i.e.
+45.58 latitude and -122.6 longitude is basically 45 degrees North latitude and 122.6 West
longitude. Note that these values are in degrees and that trigonometry functions usually
assume values in radians. Also, in case you are unfamiliar with the notation, cos−1 means an
inverse, or arc cosine. Important: Please write your function using tuples to represent each
coordinate; write a helper function to convert from degrees to radians. Also you must use
a where clause. What is the flight distance between the point at 45◦N,122◦W to the point
21◦N,158◦W? <br />
1. Ok, so nautical miles aren’t SI units – but they’re standard for navigation purposes on a curved earth, so work
with me here. <br />
2. http://mathworld.wolfram.com/GreatCircle.html
