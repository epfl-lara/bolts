; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85734 () Bool)

(assert start!85734)

(declare-fun res!665085 () Bool)

(declare-fun e!561232 () Bool)

(assert (=> start!85734 (=> (not res!665085) (not e!561232))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85734 (= res!665085 (validMask!0 mask!3464))))

(assert (=> start!85734 e!561232))

(declare-datatypes ((array!62891 0))(
  ( (array!62892 (arr!30280 (Array (_ BitVec 32) (_ BitVec 64))) (size!30783 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62891)

(declare-fun array_inv!23270 (array!62891) Bool)

(assert (=> start!85734 (array_inv!23270 a!3219)))

(assert (=> start!85734 true))

(declare-fun b!994418 () Bool)

(declare-fun res!665086 () Bool)

(assert (=> b!994418 (=> (not res!665086) (not e!561232))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9212 0))(
  ( (MissingZero!9212 (index!39218 (_ BitVec 32))) (Found!9212 (index!39219 (_ BitVec 32))) (Intermediate!9212 (undefined!10024 Bool) (index!39220 (_ BitVec 32)) (x!86702 (_ BitVec 32))) (Undefined!9212) (MissingVacant!9212 (index!39221 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62891 (_ BitVec 32)) SeekEntryResult!9212)

(assert (=> b!994418 (= res!665086 (not (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) (MissingVacant!9212 i!1194))))))

(declare-fun b!994419 () Bool)

(declare-fun res!665081 () Bool)

(assert (=> b!994419 (=> (not res!665081) (not e!561232))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994419 (= res!665081 (and (= (size!30783 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30783 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30783 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994420 () Bool)

(declare-fun res!665084 () Bool)

(assert (=> b!994420 (=> (not res!665084) (not e!561232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994420 (= res!665084 (validKeyInArray!0 (select (arr!30280 a!3219) j!170)))))

(declare-fun b!994421 () Bool)

(declare-fun res!665083 () Bool)

(assert (=> b!994421 (=> (not res!665083) (not e!561232))))

(assert (=> b!994421 (= res!665083 (validKeyInArray!0 k!2224))))

(declare-fun b!994422 () Bool)

(assert (=> b!994422 (= e!561232 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!994423 () Bool)

(declare-fun res!665082 () Bool)

(assert (=> b!994423 (=> (not res!665082) (not e!561232))))

(declare-fun arrayContainsKey!0 (array!62891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994423 (= res!665082 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85734 res!665085) b!994419))

(assert (= (and b!994419 res!665081) b!994420))

(assert (= (and b!994420 res!665084) b!994421))

(assert (= (and b!994421 res!665083) b!994423))

(assert (= (and b!994423 res!665082) b!994418))

(assert (= (and b!994418 res!665086) b!994422))

(declare-fun m!922109 () Bool)

(assert (=> b!994420 m!922109))

(assert (=> b!994420 m!922109))

(declare-fun m!922111 () Bool)

(assert (=> b!994420 m!922111))

(declare-fun m!922113 () Bool)

(assert (=> b!994423 m!922113))

(declare-fun m!922115 () Bool)

(assert (=> b!994418 m!922115))

(declare-fun m!922117 () Bool)

(assert (=> start!85734 m!922117))

(declare-fun m!922119 () Bool)

(assert (=> start!85734 m!922119))

(declare-fun m!922121 () Bool)

(assert (=> b!994421 m!922121))

(push 1)

(assert (not b!994418))

(assert (not b!994421))

(assert (not b!994420))

(assert (not start!85734))

(assert (not b!994423))

(check-sat)

