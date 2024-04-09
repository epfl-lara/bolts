; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85774 () Bool)

(assert start!85774)

(declare-fun res!665392 () Bool)

(declare-fun e!561352 () Bool)

(assert (=> start!85774 (=> (not res!665392) (not e!561352))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85774 (= res!665392 (validMask!0 mask!3464))))

(assert (=> start!85774 e!561352))

(declare-datatypes ((array!62931 0))(
  ( (array!62932 (arr!30300 (Array (_ BitVec 32) (_ BitVec 64))) (size!30803 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62931)

(declare-fun array_inv!23290 (array!62931) Bool)

(assert (=> start!85774 (array_inv!23290 a!3219)))

(assert (=> start!85774 true))

(declare-datatypes ((SeekEntryResult!9232 0))(
  ( (MissingZero!9232 (index!39298 (_ BitVec 32))) (Found!9232 (index!39299 (_ BitVec 32))) (Intermediate!9232 (undefined!10044 Bool) (index!39300 (_ BitVec 32)) (x!86770 (_ BitVec 32))) (Undefined!9232) (MissingVacant!9232 (index!39301 (_ BitVec 32))) )
))
(declare-fun lt!440727 () SeekEntryResult!9232)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun b!994725 () Bool)

(assert (=> b!994725 (= e!561352 (and (or (= lt!440727 (MissingVacant!9232 i!1194)) (= lt!440727 (MissingZero!9232 i!1194))) (bvsgt #b00000000000000000000000000000000 (size!30803 a!3219))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62931 (_ BitVec 32)) SeekEntryResult!9232)

(assert (=> b!994725 (= lt!440727 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994726 () Bool)

(declare-fun res!665389 () Bool)

(assert (=> b!994726 (=> (not res!665389) (not e!561352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994726 (= res!665389 (validKeyInArray!0 k!2224))))

(declare-fun b!994727 () Bool)

(declare-fun res!665391 () Bool)

(assert (=> b!994727 (=> (not res!665391) (not e!561352))))

(declare-fun arrayContainsKey!0 (array!62931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994727 (= res!665391 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994728 () Bool)

(declare-fun res!665390 () Bool)

(assert (=> b!994728 (=> (not res!665390) (not e!561352))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994728 (= res!665390 (validKeyInArray!0 (select (arr!30300 a!3219) j!170)))))

(declare-fun b!994729 () Bool)

(declare-fun res!665388 () Bool)

(assert (=> b!994729 (=> (not res!665388) (not e!561352))))

(assert (=> b!994729 (= res!665388 (and (= (size!30803 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30803 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30803 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85774 res!665392) b!994729))

(assert (= (and b!994729 res!665388) b!994728))

(assert (= (and b!994728 res!665390) b!994726))

(assert (= (and b!994726 res!665389) b!994727))

(assert (= (and b!994727 res!665391) b!994725))

(declare-fun m!922389 () Bool)

(assert (=> b!994725 m!922389))

(declare-fun m!922391 () Bool)

(assert (=> b!994727 m!922391))

(declare-fun m!922393 () Bool)

(assert (=> b!994726 m!922393))

(declare-fun m!922395 () Bool)

(assert (=> start!85774 m!922395))

(declare-fun m!922397 () Bool)

(assert (=> start!85774 m!922397))

(declare-fun m!922399 () Bool)

(assert (=> b!994728 m!922399))

(assert (=> b!994728 m!922399))

(declare-fun m!922401 () Bool)

(assert (=> b!994728 m!922401))

(push 1)

(assert (not b!994725))

(assert (not b!994727))

(assert (not start!85774))

(assert (not b!994726))

(assert (not b!994728))

(check-sat)

