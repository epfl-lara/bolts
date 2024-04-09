; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86324 () Bool)

(assert start!86324)

(declare-fun b!998676 () Bool)

(declare-fun e!563202 () Bool)

(declare-fun e!563201 () Bool)

(assert (=> b!998676 (= e!563202 e!563201)))

(declare-fun res!668477 () Bool)

(assert (=> b!998676 (=> (not res!668477) (not e!563201))))

(declare-datatypes ((SeekEntryResult!9319 0))(
  ( (MissingZero!9319 (index!39646 (_ BitVec 32))) (Found!9319 (index!39647 (_ BitVec 32))) (Intermediate!9319 (undefined!10131 Bool) (index!39648 (_ BitVec 32)) (x!87110 (_ BitVec 32))) (Undefined!9319) (MissingVacant!9319 (index!39649 (_ BitVec 32))) )
))
(declare-fun lt!441773 () SeekEntryResult!9319)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998676 (= res!668477 (or (= lt!441773 (MissingVacant!9319 i!1194)) (= lt!441773 (MissingZero!9319 i!1194))))))

(declare-datatypes ((array!63128 0))(
  ( (array!63129 (arr!30387 (Array (_ BitVec 32) (_ BitVec 64))) (size!30890 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63128)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63128 (_ BitVec 32)) SeekEntryResult!9319)

(assert (=> b!998676 (= lt!441773 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998677 () Bool)

(declare-fun res!668470 () Bool)

(assert (=> b!998677 (=> (not res!668470) (not e!563202))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998677 (= res!668470 (validKeyInArray!0 (select (arr!30387 a!3219) j!170)))))

(declare-fun b!998678 () Bool)

(declare-fun res!668478 () Bool)

(assert (=> b!998678 (=> (not res!668478) (not e!563202))))

(assert (=> b!998678 (= res!668478 (and (= (size!30890 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30890 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30890 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998679 () Bool)

(declare-fun res!668469 () Bool)

(assert (=> b!998679 (=> (not res!668469) (not e!563201))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998679 (= res!668469 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30890 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30890 a!3219))))))

(declare-fun b!998681 () Bool)

(declare-fun e!563204 () Bool)

(assert (=> b!998681 (= e!563201 e!563204)))

(declare-fun res!668471 () Bool)

(assert (=> b!998681 (=> (not res!668471) (not e!563204))))

(declare-fun lt!441774 () SeekEntryResult!9319)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63128 (_ BitVec 32)) SeekEntryResult!9319)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998681 (= res!668471 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30387 a!3219) j!170) mask!3464) (select (arr!30387 a!3219) j!170) a!3219 mask!3464) lt!441774))))

(assert (=> b!998681 (= lt!441774 (Intermediate!9319 false resIndex!38 resX!38))))

(declare-fun b!998682 () Bool)

(declare-fun res!668479 () Bool)

(assert (=> b!998682 (=> (not res!668479) (not e!563202))))

(assert (=> b!998682 (= res!668479 (validKeyInArray!0 k!2224))))

(declare-fun b!998683 () Bool)

(declare-fun res!668476 () Bool)

(assert (=> b!998683 (=> (not res!668476) (not e!563201))))

(declare-datatypes ((List!21189 0))(
  ( (Nil!21186) (Cons!21185 (h!22359 (_ BitVec 64)) (t!30198 List!21189)) )
))
(declare-fun arrayNoDuplicates!0 (array!63128 (_ BitVec 32) List!21189) Bool)

(assert (=> b!998683 (= res!668476 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21186))))

(declare-fun b!998684 () Bool)

(declare-fun res!668472 () Bool)

(assert (=> b!998684 (=> (not res!668472) (not e!563204))))

(assert (=> b!998684 (= res!668472 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30387 a!3219) j!170) a!3219 mask!3464) lt!441774))))

(declare-fun b!998680 () Bool)

(declare-fun res!668475 () Bool)

(assert (=> b!998680 (=> (not res!668475) (not e!563202))))

(declare-fun arrayContainsKey!0 (array!63128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998680 (= res!668475 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!668473 () Bool)

(assert (=> start!86324 (=> (not res!668473) (not e!563202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86324 (= res!668473 (validMask!0 mask!3464))))

(assert (=> start!86324 e!563202))

(declare-fun array_inv!23377 (array!63128) Bool)

(assert (=> start!86324 (array_inv!23377 a!3219)))

(assert (=> start!86324 true))

(declare-fun b!998685 () Bool)

(declare-fun res!668474 () Bool)

(assert (=> b!998685 (=> (not res!668474) (not e!563201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63128 (_ BitVec 32)) Bool)

(assert (=> b!998685 (= res!668474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998686 () Bool)

(assert (=> b!998686 (= e!563204 false)))

(declare-fun lt!441772 () (_ BitVec 32))

(assert (=> b!998686 (= lt!441772 (toIndex!0 (select (store (arr!30387 a!3219) i!1194 k!2224) j!170) mask!3464))))

(assert (= (and start!86324 res!668473) b!998678))

(assert (= (and b!998678 res!668478) b!998677))

(assert (= (and b!998677 res!668470) b!998682))

(assert (= (and b!998682 res!668479) b!998680))

(assert (= (and b!998680 res!668475) b!998676))

(assert (= (and b!998676 res!668477) b!998685))

(assert (= (and b!998685 res!668474) b!998683))

(assert (= (and b!998683 res!668476) b!998679))

(assert (= (and b!998679 res!668469) b!998681))

(assert (= (and b!998681 res!668471) b!998684))

(assert (= (and b!998684 res!668472) b!998686))

(declare-fun m!925185 () Bool)

(assert (=> b!998677 m!925185))

(assert (=> b!998677 m!925185))

(declare-fun m!925187 () Bool)

(assert (=> b!998677 m!925187))

(declare-fun m!925189 () Bool)

(assert (=> b!998683 m!925189))

(assert (=> b!998681 m!925185))

(assert (=> b!998681 m!925185))

(declare-fun m!925191 () Bool)

(assert (=> b!998681 m!925191))

(assert (=> b!998681 m!925191))

(assert (=> b!998681 m!925185))

(declare-fun m!925193 () Bool)

(assert (=> b!998681 m!925193))

(assert (=> b!998684 m!925185))

(assert (=> b!998684 m!925185))

(declare-fun m!925195 () Bool)

(assert (=> b!998684 m!925195))

(declare-fun m!925197 () Bool)

(assert (=> b!998680 m!925197))

(declare-fun m!925199 () Bool)

(assert (=> b!998685 m!925199))

(declare-fun m!925201 () Bool)

(assert (=> b!998682 m!925201))

(declare-fun m!925203 () Bool)

(assert (=> b!998676 m!925203))

(declare-fun m!925205 () Bool)

(assert (=> b!998686 m!925205))

(declare-fun m!925207 () Bool)

(assert (=> b!998686 m!925207))

(assert (=> b!998686 m!925207))

(declare-fun m!925209 () Bool)

(assert (=> b!998686 m!925209))

(declare-fun m!925211 () Bool)

(assert (=> start!86324 m!925211))

(declare-fun m!925213 () Bool)

(assert (=> start!86324 m!925213))

(push 1)

(assert (not b!998676))

(assert (not start!86324))

(assert (not b!998685))

(assert (not b!998683))

