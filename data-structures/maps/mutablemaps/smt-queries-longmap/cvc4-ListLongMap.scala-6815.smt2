; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85750 () Bool)

(assert start!85750)

(declare-fun b!994545 () Bool)

(declare-fun e!561281 () Bool)

(assert (=> b!994545 (= e!561281 false)))

(declare-datatypes ((array!62907 0))(
  ( (array!62908 (arr!30288 (Array (_ BitVec 32) (_ BitVec 64))) (size!30791 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62907)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9220 0))(
  ( (MissingZero!9220 (index!39250 (_ BitVec 32))) (Found!9220 (index!39251 (_ BitVec 32))) (Intermediate!9220 (undefined!10032 Bool) (index!39252 (_ BitVec 32)) (x!86726 (_ BitVec 32))) (Undefined!9220) (MissingVacant!9220 (index!39253 (_ BitVec 32))) )
))
(declare-fun lt!440691 () SeekEntryResult!9220)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62907 (_ BitVec 32)) SeekEntryResult!9220)

(assert (=> b!994545 (= lt!440691 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!665210 () Bool)

(assert (=> start!85750 (=> (not res!665210) (not e!561281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85750 (= res!665210 (validMask!0 mask!3464))))

(assert (=> start!85750 e!561281))

(declare-fun array_inv!23278 (array!62907) Bool)

(assert (=> start!85750 (array_inv!23278 a!3219)))

(assert (=> start!85750 true))

(declare-fun b!994546 () Bool)

(declare-fun res!665208 () Bool)

(assert (=> b!994546 (=> (not res!665208) (not e!561281))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994546 (= res!665208 (validKeyInArray!0 (select (arr!30288 a!3219) j!170)))))

(declare-fun b!994547 () Bool)

(declare-fun res!665211 () Bool)

(assert (=> b!994547 (=> (not res!665211) (not e!561281))))

(assert (=> b!994547 (= res!665211 (validKeyInArray!0 k!2224))))

(declare-fun b!994548 () Bool)

(declare-fun res!665212 () Bool)

(assert (=> b!994548 (=> (not res!665212) (not e!561281))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994548 (= res!665212 (and (= (size!30791 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30791 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30791 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994549 () Bool)

(declare-fun res!665209 () Bool)

(assert (=> b!994549 (=> (not res!665209) (not e!561281))))

(declare-fun arrayContainsKey!0 (array!62907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994549 (= res!665209 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85750 res!665210) b!994548))

(assert (= (and b!994548 res!665212) b!994546))

(assert (= (and b!994546 res!665208) b!994547))

(assert (= (and b!994547 res!665211) b!994549))

(assert (= (and b!994549 res!665209) b!994545))

(declare-fun m!922221 () Bool)

(assert (=> b!994546 m!922221))

(assert (=> b!994546 m!922221))

(declare-fun m!922223 () Bool)

(assert (=> b!994546 m!922223))

(declare-fun m!922225 () Bool)

(assert (=> b!994549 m!922225))

(declare-fun m!922227 () Bool)

(assert (=> b!994547 m!922227))

(declare-fun m!922229 () Bool)

(assert (=> start!85750 m!922229))

(declare-fun m!922231 () Bool)

(assert (=> start!85750 m!922231))

(declare-fun m!922233 () Bool)

(assert (=> b!994545 m!922233))

(push 1)

(assert (not b!994546))

(assert (not b!994549))

(assert (not start!85750))

(assert (not b!994545))

(assert (not b!994547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

