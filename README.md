# study-cobol
<blockquote>
The use of COBOL cripples the mind - Edsger W. Dijkstra
</blockquote>

<br/>

COBOL is too obsolete to study these days, but I've been curious about the actual code level for a long time.

<br/>

## What is COBOL?
- Common Business-Oriented Language
- In fact, every day about three trillion dollars in finance gets handled by COBOL.

<br/>

## Basic COBOL Syntax
- sequence number area  [0~6]: 
    - sometimes these are blank, other times we use them to provide context to a series of statements.
    - multi-purpose area. if we're going to leave a comment, asterisk, goes in here.
    - if we're continuing a previous line it'll be a dash or a hyphen.
    - it can also can be a debugging line or a slash for source code listing formatting.
- indicator area [7]
- A area [8~11]
    - You'll find divisions, sections, paragraphs, level indicators and other elements that give COBOL programs and structure.
- B area [12~72]
    - actual statements, sentences and clauses the things that make a COBOL program perform calculations and do stuff.
- identification area [73~80]
    - the compiler might consider at least because it actually ignores it. so it doesn't consider it at all.
    - it is an actually an area the programmer can use for any purpose, so it's often just left blank.

<br/>

## COBOL Divisions
- the biggest things in COBOL program are DIVISIONS.
- and within those divisions there are sections, and within those sections you'll find paragraphs, those paragraphs contain sentences and sentences have statements.
- let's start at the statement and work out.
    - statement is usually starting with one of those reserved words, something like ADD, DIVIDE, MOVE, COMPUTE, and so on.
    - example: `ADD 2 TO TOTAL.`
    - `.` is an implicit scope terminator.
    - if statement example
    ```
    IF ITEM = "B"
        ADD 2 TO TOTAL
    END IF
    ```
- there are 4 COBOL divisions.
    1. identification division
        - which is where you'd put the name of your program, who wrote it, when it was written, how should be used, all that helpful information.
    2. environment division
        - the type of computer environment required to run your program, and the other sets of the mapping between the files in your program, and the files on the actual data sets.
        - so, it's the link between your program and the system it's running on.
    3. data division
        - sets up all the data that will be used within your program.
        - this includes files data from other programs what type of storage or memory you'll use while the program is running, and what it will give up when the program ends.
    4. procedure division
        - this is where all those sections and paragraphs go.
        - so the instructions for how to take data in, how to set up the variables performing math on them interacting with the user and all that kind of fun stuff that happens in the procedure division.

<br/>

## COBOL Variables
- every programming language in existence has variables of some sort and even basic algebra has the concept of having a letter represent a value like `x = 5`.
