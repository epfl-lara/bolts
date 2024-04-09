; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86398 () Bool)

(assert start!86398)

(declare-fun b!999267 () Bool)

(declare-fun res!668907 () Bool)

(declare-fun e!563492 () Bool)

(assert (=> b!999267 (=> (not res!668907) (not e!563492))))

(declare-datatypes ((array!63151 0))(
  ( (array!63152 (arr!30397 (Array (_ BitVec 32) (_ BitVec 64))) (size!30900 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63151)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63151 (_ BitVec 32)) Bool)

(assert (=> b!999267 (= res!668907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999268 () Bool)

(declare-fun res!668908 () Bool)

(declare-fun e!563490 () Bool)

(assert (=> b!999268 (=> (not res!668908) (not e!563490))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9329 0))(
  ( (MissingZero!9329 (index!39686 (_ BitVec 32))) (Found!9329 (index!39687 (_ BitVec 32))) (Intermediate!9329 (undefined!10141 Bool) (index!39688 (_ BitVec 32)) (x!87158 (_ BitVec 32))) (Undefined!9329) (MissingVacant!9329 (index!39689 (_ BitVec 32))) )
))
(declare-fun lt!441965 () SeekEntryResult!9329)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63151 (_ BitVec 32)) SeekEntryResult!9329)

(assert (=> b!999268 (= res!668908 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30397 a!3219) j!170) a!3219 mask!3464) lt!441965))))

(declare-fun b!999269 () Bool)

(declare-fun res!668903 () Bool)

(declare-fun e!563489 () Bool)

(assert (=> b!999269 (=> (not res!668903) (not e!563489))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999269 (= res!668903 (validKeyInArray!0 k!2224))))

(declare-fun b!999270 () Bool)

(assert (=> b!999270 (= e!563492 e!563490)))

(declare-fun res!668902 () Bool)

(assert (=> b!999270 (=> (not res!668902) (not e!563490))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999270 (= res!668902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30397 a!3219) j!170) mask!3464) (select (arr!30397 a!3219) j!170) a!3219 mask!3464) lt!441965))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999270 (= lt!441965 (Intermediate!9329 false resIndex!38 resX!38))))

(declare-fun b!999271 () Bool)

(assert (=> b!999271 (= e!563490 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!441964 () (_ BitVec 32))

(assert (=> b!999271 (= lt!441964 (toIndex!0 (select (store (arr!30397 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun res!668901 () Bool)

(assert (=> start!86398 (=> (not res!668901) (not e!563489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86398 (= res!668901 (validMask!0 mask!3464))))

(assert (=> start!86398 e!563489))

(declare-fun array_inv!23387 (array!63151) Bool)

(assert (=> start!86398 (array_inv!23387 a!3219)))

(assert (=> start!86398 true))

(declare-fun b!999272 () Bool)

(assert (=> b!999272 (= e!563489 e!563492)))

(declare-fun res!668906 () Bool)

(assert (=> b!999272 (=> (not res!668906) (not e!563492))))

(declare-fun lt!441966 () SeekEntryResult!9329)

(assert (=> b!999272 (= res!668906 (or (= lt!441966 (MissingVacant!9329 i!1194)) (= lt!441966 (MissingZero!9329 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63151 (_ BitVec 32)) SeekEntryResult!9329)

(assert (=> b!999272 (= lt!441966 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999273 () Bool)

(declare-fun res!668909 () Bool)

(assert (=> b!999273 (=> (not res!668909) (not e!563492))))

(assert (=> b!999273 (= res!668909 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30900 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30900 a!3219))))))

(declare-fun b!999274 () Bool)

(declare-fun res!668910 () Bool)

(assert (=> b!999274 (=> (not res!668910) (not e!563492))))

(declare-datatypes ((List!21199 0))(
  ( (Nil!21196) (Cons!21195 (h!22372 (_ BitVec 64)) (t!30208 List!21199)) )
))
(declare-fun arrayNoDuplicates!0 (array!63151 (_ BitVec 32) List!21199) Bool)

(assert (=> b!999274 (= res!668910 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21196))))

(declare-fun b!999275 () Bool)

(declare-fun res!668905 () Bool)

(assert (=> b!999275 (=> (not res!668905) (not e!563489))))

(assert (=> b!999275 (= res!668905 (validKeyInArray!0 (select (arr!30397 a!3219) j!170)))))

(declare-fun b!999276 () Bool)

(declare-fun res!668904 () Bool)

(assert (=> b!999276 (=> (not res!668904) (not e!563489))))

(declare-fun arrayContainsKey!0 (array!63151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999276 (= res!668904 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999277 () Bool)

(declare-fun res!668911 () Bool)

(assert (=> b!999277 (=> (not res!668911) (not e!563489))))

(assert (=> b!999277 (= res!668911 (and (= (size!30900 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30900 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30900 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86398 res!668901) b!999277))

(assert (= (and b!999277 res!668911) b!999275))

(assert (= (and b!999275 res!668905) b!999269))

(assert (= (and b!999269 res!668903) b!999276))

(assert (= (and b!999276 res!668904) b!999272))

(assert (= (and b!999272 res!668906) b!999267))

(assert (= (and b!999267 res!668907) b!999274))

(assert (= (and b!999274 res!668910) b!999273))

(assert (= (and b!999273 res!668909) b!999270))

(assert (= (and b!999270 res!668902) b!999268))

(assert (= (and b!999268 res!668908) b!999271))

(declare-fun m!925629 () Bool)

(assert (=> b!999270 m!925629))

(assert (=> b!999270 m!925629))

(declare-fun m!925631 () Bool)

(assert (=> b!999270 m!925631))

(assert (=> b!999270 m!925631))

(assert (=> b!999270 m!925629))

(declare-fun m!925633 () Bool)

(assert (=> b!999270 m!925633))

(declare-fun m!925635 () Bool)

(assert (=> b!999276 m!925635))

(declare-fun m!925637 () Bool)

(assert (=> b!999274 m!925637))

(declare-fun m!925639 () Bool)

(assert (=> b!999272 m!925639))

(declare-fun m!925641 () Bool)

(assert (=> b!999267 m!925641))

(declare-fun m!925643 () Bool)

(assert (=> b!999271 m!925643))

(declare-fun m!925645 () Bool)

(assert (=> b!999271 m!925645))

(assert (=> b!999271 m!925645))

(declare-fun m!925647 () Bool)

(assert (=> b!999271 m!925647))

(assert (=> b!999275 m!925629))

(assert (=> b!999275 m!925629))

(declare-fun m!925649 () Bool)

(assert (=> b!999275 m!925649))

(declare-fun m!925651 () Bool)

(assert (=> start!86398 m!925651))

(declare-fun m!925653 () Bool)

(assert (=> start!86398 m!925653))

(assert (=> b!999268 m!925629))

(assert (=> b!999268 m!925629))

(declare-fun m!925655 () Bool)

(assert (=> b!999268 m!925655))

(declare-fun m!925657 () Bool)

(assert (=> b!999269 m!925657))

(push 1)

