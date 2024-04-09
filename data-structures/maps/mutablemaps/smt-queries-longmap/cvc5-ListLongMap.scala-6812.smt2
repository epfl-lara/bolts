; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85728 () Bool)

(assert start!85728)

(declare-fun b!994371 () Bool)

(declare-fun res!665036 () Bool)

(declare-fun e!561215 () Bool)

(assert (=> b!994371 (=> (not res!665036) (not e!561215))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994371 (= res!665036 (validKeyInArray!0 k!2224))))

(declare-fun res!665035 () Bool)

(assert (=> start!85728 (=> (not res!665035) (not e!561215))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85728 (= res!665035 (validMask!0 mask!3464))))

(assert (=> start!85728 e!561215))

(declare-datatypes ((array!62885 0))(
  ( (array!62886 (arr!30277 (Array (_ BitVec 32) (_ BitVec 64))) (size!30780 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62885)

(declare-fun array_inv!23267 (array!62885) Bool)

(assert (=> start!85728 (array_inv!23267 a!3219)))

(assert (=> start!85728 true))

(declare-fun b!994372 () Bool)

(assert (=> b!994372 (= e!561215 false)))

(declare-datatypes ((SeekEntryResult!9209 0))(
  ( (MissingZero!9209 (index!39206 (_ BitVec 32))) (Found!9209 (index!39207 (_ BitVec 32))) (Intermediate!9209 (undefined!10021 Bool) (index!39208 (_ BitVec 32)) (x!86691 (_ BitVec 32))) (Undefined!9209) (MissingVacant!9209 (index!39209 (_ BitVec 32))) )
))
(declare-fun lt!440667 () SeekEntryResult!9209)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62885 (_ BitVec 32)) SeekEntryResult!9209)

(assert (=> b!994372 (= lt!440667 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994373 () Bool)

(declare-fun res!665034 () Bool)

(assert (=> b!994373 (=> (not res!665034) (not e!561215))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994373 (= res!665034 (and (= (size!30780 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30780 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30780 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994374 () Bool)

(declare-fun res!665038 () Bool)

(assert (=> b!994374 (=> (not res!665038) (not e!561215))))

(assert (=> b!994374 (= res!665038 (validKeyInArray!0 (select (arr!30277 a!3219) j!170)))))

(declare-fun b!994375 () Bool)

(declare-fun res!665037 () Bool)

(assert (=> b!994375 (=> (not res!665037) (not e!561215))))

(declare-fun arrayContainsKey!0 (array!62885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994375 (= res!665037 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85728 res!665035) b!994373))

(assert (= (and b!994373 res!665034) b!994374))

(assert (= (and b!994374 res!665038) b!994371))

(assert (= (and b!994371 res!665036) b!994375))

(assert (= (and b!994375 res!665037) b!994372))

(declare-fun m!922067 () Bool)

(assert (=> b!994375 m!922067))

(declare-fun m!922069 () Bool)

(assert (=> b!994371 m!922069))

(declare-fun m!922071 () Bool)

(assert (=> b!994372 m!922071))

(declare-fun m!922073 () Bool)

(assert (=> start!85728 m!922073))

(declare-fun m!922075 () Bool)

(assert (=> start!85728 m!922075))

(declare-fun m!922077 () Bool)

(assert (=> b!994374 m!922077))

(assert (=> b!994374 m!922077))

(declare-fun m!922079 () Bool)

(assert (=> b!994374 m!922079))

(push 1)

(assert (not b!994372))

(assert (not b!994371))

(assert (not b!994375))

(assert (not b!994374))

(assert (not start!85728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

