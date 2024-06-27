# san-vitale


Using the program:

1) Install python and the libraries in requirements.txt
2) Open a command prompt and set the following environment variable:
	set DATASET_PATH=data/track1/	(example, here is the appropriate path by definition)

3) Run the program as follows:
	python shatterV2.py train/1		(the test case to be solved can be specified as a parameter)

4) Other parameters can be specified in the shatterV2.py source file, for example whether multithreading should be used or how many threads.
	Visual debugging can also be enabled there.

5) The program will draw partial results and, when ready, will also draw the final result in blue.
	If we then close the drawn result, the adjacency matrix will also appear in the command line.

How the program works in brief:
	The program scans the polylines and takes color samples from the images along them. It then compares all possible pairings
	of the pieces and fits them together along their contours in every possible way (this is a rather expensive process).
	A scoring function determines the success of each match (low score = good match), and then the two best
	a matching pieces are "soldered together". From there, the process is repeated until only one piece remains.

Comment:
	In this form, the program is not capable of complete reconstruction, partly because it always uses the "most obvious" pairing. However, due to runtime constraints, it is not possible to scan all options with this method. The method could be improved with human feedback, so the program would offer it
	several options, from which the best combination should be selected at each step.
	In order to reduce the running time, further parallelization (on GPU) is possible, because currently only the comparison of pieces runs in parallel, but the scoring of all possible placements between two pieces is also an independent problem.

Featured test cases: test/1, train/1 train/10
