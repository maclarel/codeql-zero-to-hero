import python

class CommandFunc extends Function {
  CommandFunc() { 
    // some predicates are built-in
    // like regexpMatch
    this.getName().regexpMatch(".*command.*")
  }
}

from Function f
where f instanceof CommandFunc and
  f.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select f

// A takeaway here is that a Function is different
// from a Call. We can call a function, but a Function
// itself is not a Call.
