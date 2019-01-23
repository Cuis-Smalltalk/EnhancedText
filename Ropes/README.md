Cuis-Ropes
==========

### Immutable (a.k.a. functional) strings for Cuis

Tested in Cuis 4.2 rev 3374

Ropes are a high-level representation of text that offers much better performance than strings for common operations, and generally reduce memory allocations and copies, while only entailing a small degradation of less common operations.

More precisely, where a string is represented as a memory buffer, a rope is a tree structure whose leaves are slices of immutable strings.  Therefore, concatenation, appending, prepending, substrings, etc. are operations that require only trivial tree manipulation, generally without having to copy memory.  In addition, the tree structure of ropes makes them suitable as a form of index to speed-up access to Unicode characters by index in long chunks of text.
The following operations are algorithmically faster in ropes

- extracting a subrope is logarithmic (linear in strings);
- appending/prepending is near-constant time (linear in strings);
- concatenation is near-constant time (linear in strings);
- char length is constant-time (linear in strings);
- access to a character by index is logarithmic (linear in strings);

If a Rope doesNotUnderstand, it prints the message to the transcript and
delegates the message to a its stringRepresentation.

### Installation

To load the package in Cuis 4.2

````Smalltalk
	Feature require: 'Ropes'.
````

### Example application

To see how a text editor copes with Rope execute

````Smalltalk
    Rope openTextEditor.
    FileListWindow openRopeFileList.
    RopeTextEditor fromUser.
````
Or just open the FileList and select a file with suffix '.txt' and use the 'Basic Text Edit' button.


### References

- https://en.wikipedia.org/wiki/Rope_(data_structure)
- A Python implementation which uses Ropes http://morepypy.blogspot.com/2007/11/ropes-branch-merged.html
- IBM Java Ropes performance report http://www.ibm.com/developerworks/java/library/j-ropes/index.html
- 'Ropes: an Alternative to Strings' http://citeseer.ist.psu.edu/viewdoc/downloaddoi=10.1.1.14.9450&rep=rep1&type=pdf
  The optimizations suggested in this paper have been implemented, but more optimizations could be done.
- The Mozilla Rust language uses Ropes http://static.rust-lang.org/doc/0.5/std/rope.html ;
  Ropes API http://static.rust-lang.org/doc/0.5/std/rope.html#type-rope
