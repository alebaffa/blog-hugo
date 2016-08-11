+++
author = "alebaffa"
date = "2016-07-05T21:29:11+02:00"
description = ""
tags = ["software-craftsmanship"]
title = "Transformation Priority Premise: overcome the fear of new tests"
+++

[The Transformation Priority Premise](https://blog.8thlight.com/uncle-bob/2013/05/27/TheTransformationPriorityPremise.html) (TPP) is a great empirical list of transformations that you can apply in your code when you’re working in TDD:

<img src="../../../../img/tpp.png"/>

## When do you need it?
Practicing with TDD I realized that sometimes I reach a point when I get stuck: I am almost scared to add a new particular test because I already know it’s going to force me to completely rewrite the structure of the code.
The problem is that the more particular tests you add, the more generic your code has to become to handle all of them.

TPP comes in handy at this point. When you feel you’re stuck, take a look at your code and start from the top of this list to see if there are some transformations that you can apply.

Apply them even if you don’t see clearly how they will unblock you: the code itself will light up the path to follow.

## An example: the Roman Numeral Kata
Inspired by the solution published by Codurance, I tried to practice with TPP using the same kata in Java. I made it several times and every time taking a look to the TPP list in order to see how I could use it.

In few occasions I got stuck with the algorithm and just by applying one of the items in the list, the code itself suggested me how to proceed. 
Let’s see few examples.

At this point the code was handling only the case for 1, 2 and 3.
{{< gist 6944a3e84f7672505e11f3aa43dcd040 >}}

Now I wanted to add the new test to handle 4. So, in TDD you start by doing the easiest thing, so I added a new element “IV” in the array. Tests pass. 
At this point you clearly see the duplication of the string “I” and so I said “_OK, time to refactor_”. Well, how?

So, I took the TPP list and the transformation 8) is (array -> container). So, I transformed the array to a collection that could be used as a dictionary:
{{< gist 440d85e947fef253405fe45a6b144992 >}}

Now let’s keep only “I” and “IV” from the collection and let’s see if there’s another transformation I can use. 
Uhm, my method has only a return, so the transformation 9) (statement -> recursion) looks promising. I have now a collection that may have some useful methods I can take advantage from…let’s try:
{{< gist a692a3e1608c69c9a52db39db988a7b5 >}}

Nice. Having a collection helped me to find an option that I wasn’t considering before.

## Another example
At some point I had a lot of if statements:
{{< gist 6fd459d1f2049fa70fc0f7db9b8fc717 >}}

The TPP(10) says (if -> while). So, I changed the code accordingly:
{{< gist ecb93847173129f279ff5de6ca8677dd >}}

At this point the repetition is really visible. A lot of while statements doing the same things with a decreasing value in the condition. It looks like something that begs to be refactored again using recursion, and so here it is:
{{< gist a9111713ec0e3b6f6647e5ab6af6d4f1 >}}

## Conclusion
The Transformation Priority Premise is really helpful. It’s a handy list of changes that you can apply easily and with no damage every time you are stuck or you don’t know how to make your code more generic.

I am going to do again some code kata I already done using this technique.

If you’re curious, you can see all the steps I’ve done in my implementation on [Github](https://github.com/alebaffa/codekata/commits/master/src).
