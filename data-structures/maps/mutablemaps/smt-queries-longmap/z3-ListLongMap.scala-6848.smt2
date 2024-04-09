; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86322 () Bool)

(assert start!86322)

(declare-fun b!998643 () Bool)

(declare-fun e!563189 () Bool)

(assert (=> b!998643 (= e!563189 false)))

(declare-datatypes ((array!63126 0))(
  ( (array!63127 (arr!30386 (Array (_ BitVec 32) (_ BitVec 64))) (size!30889 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63126)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun lt!441763 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998643 (= lt!441763 (toIndex!0 (select (store (arr!30386 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!998644 () Bool)

(declare-fun res!668446 () Bool)

(declare-fun e!563190 () Bool)

(assert (=> b!998644 (=> (not res!668446) (not e!563190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998644 (= res!668446 (validKeyInArray!0 (select (arr!30386 a!3219) j!170)))))

(declare-fun b!998645 () Bool)

(declare-fun res!668437 () Bool)

(declare-fun e!563191 () Bool)

(assert (=> b!998645 (=> (not res!668437) (not e!563191))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998645 (= res!668437 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30889 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30889 a!3219))))))

(declare-fun b!998646 () Bool)

(assert (=> b!998646 (= e!563190 e!563191)))

(declare-fun res!668438 () Bool)

(assert (=> b!998646 (=> (not res!668438) (not e!563191))))

(declare-datatypes ((SeekEntryResult!9318 0))(
  ( (MissingZero!9318 (index!39642 (_ BitVec 32))) (Found!9318 (index!39643 (_ BitVec 32))) (Intermediate!9318 (undefined!10130 Bool) (index!39644 (_ BitVec 32)) (x!87109 (_ BitVec 32))) (Undefined!9318) (MissingVacant!9318 (index!39645 (_ BitVec 32))) )
))
(declare-fun lt!441764 () SeekEntryResult!9318)

(assert (=> b!998646 (= res!668438 (or (= lt!441764 (MissingVacant!9318 i!1194)) (= lt!441764 (MissingZero!9318 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63126 (_ BitVec 32)) SeekEntryResult!9318)

(assert (=> b!998646 (= lt!441764 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998647 () Bool)

(declare-fun res!668439 () Bool)

(assert (=> b!998647 (=> (not res!668439) (not e!563189))))

(declare-fun lt!441765 () SeekEntryResult!9318)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63126 (_ BitVec 32)) SeekEntryResult!9318)

(assert (=> b!998647 (= res!668439 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30386 a!3219) j!170) a!3219 mask!3464) lt!441765))))

(declare-fun b!998648 () Bool)

(assert (=> b!998648 (= e!563191 e!563189)))

(declare-fun res!668442 () Bool)

(assert (=> b!998648 (=> (not res!668442) (not e!563189))))

(assert (=> b!998648 (= res!668442 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30386 a!3219) j!170) mask!3464) (select (arr!30386 a!3219) j!170) a!3219 mask!3464) lt!441765))))

(assert (=> b!998648 (= lt!441765 (Intermediate!9318 false resIndex!38 resX!38))))

(declare-fun b!998650 () Bool)

(declare-fun res!668440 () Bool)

(assert (=> b!998650 (=> (not res!668440) (not e!563191))))

(declare-datatypes ((List!21188 0))(
  ( (Nil!21185) (Cons!21184 (h!22358 (_ BitVec 64)) (t!30197 List!21188)) )
))
(declare-fun arrayNoDuplicates!0 (array!63126 (_ BitVec 32) List!21188) Bool)

(assert (=> b!998650 (= res!668440 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21185))))

(declare-fun b!998651 () Bool)

(declare-fun res!668436 () Bool)

(assert (=> b!998651 (=> (not res!668436) (not e!563191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63126 (_ BitVec 32)) Bool)

(assert (=> b!998651 (= res!668436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998652 () Bool)

(declare-fun res!668444 () Bool)

(assert (=> b!998652 (=> (not res!668444) (not e!563190))))

(assert (=> b!998652 (= res!668444 (and (= (size!30889 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30889 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30889 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998653 () Bool)

(declare-fun res!668443 () Bool)

(assert (=> b!998653 (=> (not res!668443) (not e!563190))))

(assert (=> b!998653 (= res!668443 (validKeyInArray!0 k0!2224))))

(declare-fun b!998649 () Bool)

(declare-fun res!668445 () Bool)

(assert (=> b!998649 (=> (not res!668445) (not e!563190))))

(declare-fun arrayContainsKey!0 (array!63126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998649 (= res!668445 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!668441 () Bool)

(assert (=> start!86322 (=> (not res!668441) (not e!563190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86322 (= res!668441 (validMask!0 mask!3464))))

(assert (=> start!86322 e!563190))

(declare-fun array_inv!23376 (array!63126) Bool)

(assert (=> start!86322 (array_inv!23376 a!3219)))

(assert (=> start!86322 true))

(assert (= (and start!86322 res!668441) b!998652))

(assert (= (and b!998652 res!668444) b!998644))

(assert (= (and b!998644 res!668446) b!998653))

(assert (= (and b!998653 res!668443) b!998649))

(assert (= (and b!998649 res!668445) b!998646))

(assert (= (and b!998646 res!668438) b!998651))

(assert (= (and b!998651 res!668436) b!998650))

(assert (= (and b!998650 res!668440) b!998645))

(assert (= (and b!998645 res!668437) b!998648))

(assert (= (and b!998648 res!668442) b!998647))

(assert (= (and b!998647 res!668439) b!998643))

(declare-fun m!925155 () Bool)

(assert (=> b!998643 m!925155))

(declare-fun m!925157 () Bool)

(assert (=> b!998643 m!925157))

(assert (=> b!998643 m!925157))

(declare-fun m!925159 () Bool)

(assert (=> b!998643 m!925159))

(declare-fun m!925161 () Bool)

(assert (=> b!998646 m!925161))

(declare-fun m!925163 () Bool)

(assert (=> start!86322 m!925163))

(declare-fun m!925165 () Bool)

(assert (=> start!86322 m!925165))

(declare-fun m!925167 () Bool)

(assert (=> b!998651 m!925167))

(declare-fun m!925169 () Bool)

(assert (=> b!998648 m!925169))

(assert (=> b!998648 m!925169))

(declare-fun m!925171 () Bool)

(assert (=> b!998648 m!925171))

(assert (=> b!998648 m!925171))

(assert (=> b!998648 m!925169))

(declare-fun m!925173 () Bool)

(assert (=> b!998648 m!925173))

(assert (=> b!998644 m!925169))

(assert (=> b!998644 m!925169))

(declare-fun m!925175 () Bool)

(assert (=> b!998644 m!925175))

(declare-fun m!925177 () Bool)

(assert (=> b!998653 m!925177))

(assert (=> b!998647 m!925169))

(assert (=> b!998647 m!925169))

(declare-fun m!925179 () Bool)

(assert (=> b!998647 m!925179))

(declare-fun m!925181 () Bool)

(assert (=> b!998649 m!925181))

(declare-fun m!925183 () Bool)

(assert (=> b!998650 m!925183))

(check-sat (not b!998648) (not b!998643) (not start!86322) (not b!998653) (not b!998649) (not b!998651) (not b!998644) (not b!998647) (not b!998650) (not b!998646))
(check-sat)
