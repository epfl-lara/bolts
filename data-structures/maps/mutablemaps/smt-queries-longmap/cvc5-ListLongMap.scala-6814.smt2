; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85740 () Bool)

(assert start!85740)

(declare-fun b!994470 () Bool)

(declare-fun res!665133 () Bool)

(declare-fun e!561250 () Bool)

(assert (=> b!994470 (=> (not res!665133) (not e!561250))))

(declare-datatypes ((array!62897 0))(
  ( (array!62898 (arr!30283 (Array (_ BitVec 32) (_ BitVec 64))) (size!30786 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62897)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994470 (= res!665133 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!665136 () Bool)

(assert (=> start!85740 (=> (not res!665136) (not e!561250))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85740 (= res!665136 (validMask!0 mask!3464))))

(assert (=> start!85740 e!561250))

(declare-fun array_inv!23273 (array!62897) Bool)

(assert (=> start!85740 (array_inv!23273 a!3219)))

(assert (=> start!85740 true))

(declare-fun b!994471 () Bool)

(declare-fun res!665134 () Bool)

(assert (=> b!994471 (=> (not res!665134) (not e!561250))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994471 (= res!665134 (validKeyInArray!0 (select (arr!30283 a!3219) j!170)))))

(declare-fun b!994472 () Bool)

(declare-fun res!665135 () Bool)

(assert (=> b!994472 (=> (not res!665135) (not e!561250))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994472 (= res!665135 (and (= (size!30786 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30786 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30786 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994473 () Bool)

(declare-fun res!665137 () Bool)

(assert (=> b!994473 (=> (not res!665137) (not e!561250))))

(assert (=> b!994473 (= res!665137 (validKeyInArray!0 k!2224))))

(declare-fun b!994474 () Bool)

(assert (=> b!994474 (= e!561250 false)))

(declare-datatypes ((SeekEntryResult!9215 0))(
  ( (MissingZero!9215 (index!39230 (_ BitVec 32))) (Found!9215 (index!39231 (_ BitVec 32))) (Intermediate!9215 (undefined!10027 Bool) (index!39232 (_ BitVec 32)) (x!86713 (_ BitVec 32))) (Undefined!9215) (MissingVacant!9215 (index!39233 (_ BitVec 32))) )
))
(declare-fun lt!440676 () SeekEntryResult!9215)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62897 (_ BitVec 32)) SeekEntryResult!9215)

(assert (=> b!994474 (= lt!440676 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!85740 res!665136) b!994472))

(assert (= (and b!994472 res!665135) b!994471))

(assert (= (and b!994471 res!665134) b!994473))

(assert (= (and b!994473 res!665137) b!994470))

(assert (= (and b!994470 res!665133) b!994474))

(declare-fun m!922151 () Bool)

(assert (=> start!85740 m!922151))

(declare-fun m!922153 () Bool)

(assert (=> start!85740 m!922153))

(declare-fun m!922155 () Bool)

(assert (=> b!994471 m!922155))

(assert (=> b!994471 m!922155))

(declare-fun m!922157 () Bool)

(assert (=> b!994471 m!922157))

(declare-fun m!922159 () Bool)

(assert (=> b!994470 m!922159))

(declare-fun m!922161 () Bool)

(assert (=> b!994474 m!922161))

(declare-fun m!922163 () Bool)

(assert (=> b!994473 m!922163))

(push 1)

(assert (not b!994471))

(assert (not b!994473))

(assert (not b!994474))

(assert (not start!85740))

(assert (not b!994470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

