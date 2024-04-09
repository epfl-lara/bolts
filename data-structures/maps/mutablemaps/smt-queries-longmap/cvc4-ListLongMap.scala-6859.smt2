; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86444 () Bool)

(assert start!86444)

(declare-fun b!1000062 () Bool)

(declare-fun res!669701 () Bool)

(declare-fun e!563774 () Bool)

(assert (=> b!1000062 (=> (not res!669701) (not e!563774))))

(declare-datatypes ((array!63197 0))(
  ( (array!63198 (arr!30420 (Array (_ BitVec 32) (_ BitVec 64))) (size!30923 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63197)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000062 (= res!669701 (and (= (size!30923 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30923 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30923 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000063 () Bool)

(declare-fun e!563775 () Bool)

(assert (=> b!1000063 (= e!563775 false)))

(declare-datatypes ((SeekEntryResult!9352 0))(
  ( (MissingZero!9352 (index!39778 (_ BitVec 32))) (Found!9352 (index!39779 (_ BitVec 32))) (Intermediate!9352 (undefined!10164 Bool) (index!39780 (_ BitVec 32)) (x!87237 (_ BitVec 32))) (Undefined!9352) (MissingVacant!9352 (index!39781 (_ BitVec 32))) )
))
(declare-fun lt!442173 () SeekEntryResult!9352)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63197 (_ BitVec 32)) SeekEntryResult!9352)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000063 (= lt!442173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30420 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30420 a!3219) i!1194 k!2224) j!170) (array!63198 (store (arr!30420 a!3219) i!1194 k!2224) (size!30923 a!3219)) mask!3464))))

(declare-fun b!1000064 () Bool)

(declare-fun e!563776 () Bool)

(assert (=> b!1000064 (= e!563774 e!563776)))

(declare-fun res!669697 () Bool)

(assert (=> b!1000064 (=> (not res!669697) (not e!563776))))

(declare-fun lt!442172 () SeekEntryResult!9352)

(assert (=> b!1000064 (= res!669697 (or (= lt!442172 (MissingVacant!9352 i!1194)) (= lt!442172 (MissingZero!9352 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63197 (_ BitVec 32)) SeekEntryResult!9352)

(assert (=> b!1000064 (= lt!442172 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000065 () Bool)

(declare-fun res!669703 () Bool)

(assert (=> b!1000065 (=> (not res!669703) (not e!563775))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442171 () SeekEntryResult!9352)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1000065 (= res!669703 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30420 a!3219) j!170) a!3219 mask!3464) lt!442171))))

(declare-fun b!1000066 () Bool)

(declare-fun res!669700 () Bool)

(assert (=> b!1000066 (=> (not res!669700) (not e!563776))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000066 (= res!669700 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30923 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30923 a!3219))))))

(declare-fun b!1000067 () Bool)

(declare-fun res!669699 () Bool)

(assert (=> b!1000067 (=> (not res!669699) (not e!563776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63197 (_ BitVec 32)) Bool)

(assert (=> b!1000067 (= res!669699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!669705 () Bool)

(assert (=> start!86444 (=> (not res!669705) (not e!563774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86444 (= res!669705 (validMask!0 mask!3464))))

(assert (=> start!86444 e!563774))

(declare-fun array_inv!23410 (array!63197) Bool)

(assert (=> start!86444 (array_inv!23410 a!3219)))

(assert (=> start!86444 true))

(declare-fun b!1000068 () Bool)

(declare-fun res!669702 () Bool)

(assert (=> b!1000068 (=> (not res!669702) (not e!563774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000068 (= res!669702 (validKeyInArray!0 k!2224))))

(declare-fun b!1000069 () Bool)

(declare-fun res!669696 () Bool)

(assert (=> b!1000069 (=> (not res!669696) (not e!563774))))

(assert (=> b!1000069 (= res!669696 (validKeyInArray!0 (select (arr!30420 a!3219) j!170)))))

(declare-fun b!1000070 () Bool)

(assert (=> b!1000070 (= e!563776 e!563775)))

(declare-fun res!669704 () Bool)

(assert (=> b!1000070 (=> (not res!669704) (not e!563775))))

(assert (=> b!1000070 (= res!669704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30420 a!3219) j!170) mask!3464) (select (arr!30420 a!3219) j!170) a!3219 mask!3464) lt!442171))))

(assert (=> b!1000070 (= lt!442171 (Intermediate!9352 false resIndex!38 resX!38))))

(declare-fun b!1000071 () Bool)

(declare-fun res!669706 () Bool)

(assert (=> b!1000071 (=> (not res!669706) (not e!563774))))

(declare-fun arrayContainsKey!0 (array!63197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000071 (= res!669706 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000072 () Bool)

(declare-fun res!669698 () Bool)

(assert (=> b!1000072 (=> (not res!669698) (not e!563776))))

(declare-datatypes ((List!21222 0))(
  ( (Nil!21219) (Cons!21218 (h!22395 (_ BitVec 64)) (t!30231 List!21222)) )
))
(declare-fun arrayNoDuplicates!0 (array!63197 (_ BitVec 32) List!21222) Bool)

(assert (=> b!1000072 (= res!669698 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21219))))

(assert (= (and start!86444 res!669705) b!1000062))

(assert (= (and b!1000062 res!669701) b!1000069))

(assert (= (and b!1000069 res!669696) b!1000068))

(assert (= (and b!1000068 res!669702) b!1000071))

(assert (= (and b!1000071 res!669706) b!1000064))

(assert (= (and b!1000064 res!669697) b!1000067))

(assert (= (and b!1000067 res!669699) b!1000072))

(assert (= (and b!1000072 res!669698) b!1000066))

(assert (= (and b!1000066 res!669700) b!1000070))

(assert (= (and b!1000070 res!669704) b!1000065))

(assert (= (and b!1000065 res!669703) b!1000063))

(declare-fun m!926359 () Bool)

(assert (=> b!1000065 m!926359))

(assert (=> b!1000065 m!926359))

(declare-fun m!926361 () Bool)

(assert (=> b!1000065 m!926361))

(declare-fun m!926363 () Bool)

(assert (=> b!1000072 m!926363))

(declare-fun m!926365 () Bool)

(assert (=> b!1000063 m!926365))

(declare-fun m!926367 () Bool)

(assert (=> b!1000063 m!926367))

(assert (=> b!1000063 m!926367))

(declare-fun m!926369 () Bool)

(assert (=> b!1000063 m!926369))

(assert (=> b!1000063 m!926369))

(assert (=> b!1000063 m!926367))

(declare-fun m!926371 () Bool)

(assert (=> b!1000063 m!926371))

(declare-fun m!926373 () Bool)

(assert (=> b!1000068 m!926373))

(declare-fun m!926375 () Bool)

(assert (=> b!1000064 m!926375))

(declare-fun m!926377 () Bool)

(assert (=> b!1000071 m!926377))

(declare-fun m!926379 () Bool)

(assert (=> start!86444 m!926379))

(declare-fun m!926381 () Bool)

(assert (=> start!86444 m!926381))

(declare-fun m!926383 () Bool)

(assert (=> b!1000067 m!926383))

(assert (=> b!1000069 m!926359))

(assert (=> b!1000069 m!926359))

(declare-fun m!926385 () Bool)

(assert (=> b!1000069 m!926385))

(assert (=> b!1000070 m!926359))

(assert (=> b!1000070 m!926359))

(declare-fun m!926387 () Bool)

(assert (=> b!1000070 m!926387))

(assert (=> b!1000070 m!926387))

(assert (=> b!1000070 m!926359))

(declare-fun m!926389 () Bool)

(assert (=> b!1000070 m!926389))

(push 1)

(assert (not b!1000065))

(assert (not b!1000063))

(assert (not b!1000069))

(assert (not start!86444))

(assert (not b!1000064))

(assert (not b!1000067))

(assert (not b!1000071))

(assert (not b!1000072))

(assert (not b!1000070))

(assert (not b!1000068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

