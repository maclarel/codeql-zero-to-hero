import python

// implied returns are a thing in ql, so this will return true for matches
predicate isEvalCall(Call c, Name name) {
    c.getFunc() = name and
    name.getId() = "eval" 
}

from Call c, Name name
where isEvalCall(c, name) and
  c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c
