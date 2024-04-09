; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85738 () Bool)

(assert start!85738)

(declare-fun b!994454 () Bool)

(declare-fun res!665122 () Bool)

(declare-fun e!561245 () Bool)

(assert (=> b!994454 (=> (not res!665122) (not e!561245))))

(declare-datatypes ((array!62895 0))(
  ( (array!62896 (arr!30282 (Array (_ BitVec 32) (_ BitVec 64))) (size!30785 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62895)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994454 (= res!665122 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994455 () Bool)

(declare-fun res!665120 () Bool)

(assert (=> b!994455 (=> (not res!665120) (not e!561245))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994455 (= res!665120 (validKeyInArray!0 (select (arr!30282 a!3219) j!170)))))

(declare-fun res!665118 () Bool)

(assert (=> start!85738 (=> (not res!665118) (not e!561245))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85738 (= res!665118 (validMask!0 mask!3464))))

(assert (=> start!85738 e!561245))

(declare-fun array_inv!23272 (array!62895) Bool)

(assert (=> start!85738 (array_inv!23272 a!3219)))

(assert (=> start!85738 true))

(declare-fun b!994456 () Bool)

(assert (=> b!994456 (= e!561245 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!994457 () Bool)

(declare-fun res!665121 () Bool)

(assert (=> b!994457 (=> (not res!665121) (not e!561245))))

(assert (=> b!994457 (= res!665121 (validKeyInArray!0 k!2224))))

(declare-fun b!994458 () Bool)

(declare-fun res!665119 () Bool)

(assert (=> b!994458 (=> (not res!665119) (not e!561245))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994458 (= res!665119 (and (= (size!30785 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30785 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30785 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994459 () Bool)

(declare-fun res!665117 () Bool)

(assert (=> b!994459 (=> (not res!665117) (not e!561245))))

(declare-datatypes ((SeekEntryResult!9214 0))(
  ( (MissingZero!9214 (index!39226 (_ BitVec 32))) (Found!9214 (index!39227 (_ BitVec 32))) (Intermediate!9214 (undefined!10026 Bool) (index!39228 (_ BitVec 32)) (x!86704 (_ BitVec 32))) (Undefined!9214) (MissingVacant!9214 (index!39229 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62895 (_ BitVec 32)) SeekEntryResult!9214)

(assert (=> b!994459 (= res!665117 (not (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) (MissingVacant!9214 i!1194))))))

(assert (= (and start!85738 res!665118) b!994458))

(assert (= (and b!994458 res!665119) b!994455))

(assert (= (and b!994455 res!665120) b!994457))

(assert (= (and b!994457 res!665121) b!994454))

(assert (= (and b!994454 res!665122) b!994459))

(assert (= (and b!994459 res!665117) b!994456))

(declare-fun m!922137 () Bool)

(assert (=> b!994457 m!922137))

(declare-fun m!922139 () Bool)

(assert (=> b!994455 m!922139))

(assert (=> b!994455 m!922139))

(declare-fun m!922141 () Bool)

(assert (=> b!994455 m!922141))

(declare-fun m!922143 () Bool)

(assert (=> b!994454 m!922143))

(declare-fun m!922145 () Bool)

(assert (=> b!994459 m!922145))

(declare-fun m!922147 () Bool)

(assert (=> start!85738 m!922147))

(declare-fun m!922149 () Bool)

(assert (=> start!85738 m!922149))

(push 1)

(assert (not b!994454))

(assert (not b!994455))

(assert (not start!85738))

(assert (not b!994459))

(assert (not b!994457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

