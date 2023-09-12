import python

class EvalCall extends Call {
  EvalCall() {
    // The | in the section below separates
    // assignments from logic, it's not a
    // *nix pipe
    exists(Name name |
    this.getFunc() = name |
    name.getId() = "eval"
    )
  }
}

from Call c, Name name
where c instanceof EvalCall and
  c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c
