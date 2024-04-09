; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85746 () Bool)

(assert start!85746)

(declare-fun b!994515 () Bool)

(declare-fun res!665180 () Bool)

(declare-fun e!561268 () Bool)

(assert (=> b!994515 (=> (not res!665180) (not e!561268))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994515 (= res!665180 (validKeyInArray!0 k!2224))))

(declare-fun res!665182 () Bool)

(assert (=> start!85746 (=> (not res!665182) (not e!561268))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85746 (= res!665182 (validMask!0 mask!3464))))

(assert (=> start!85746 e!561268))

(declare-datatypes ((array!62903 0))(
  ( (array!62904 (arr!30286 (Array (_ BitVec 32) (_ BitVec 64))) (size!30789 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62903)

(declare-fun array_inv!23276 (array!62903) Bool)

(assert (=> start!85746 (array_inv!23276 a!3219)))

(assert (=> start!85746 true))

(declare-fun b!994516 () Bool)

(declare-fun res!665179 () Bool)

(assert (=> b!994516 (=> (not res!665179) (not e!561268))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994516 (= res!665179 (and (= (size!30789 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30789 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30789 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994517 () Bool)

(assert (=> b!994517 (= e!561268 false)))

(declare-datatypes ((SeekEntryResult!9218 0))(
  ( (MissingZero!9218 (index!39242 (_ BitVec 32))) (Found!9218 (index!39243 (_ BitVec 32))) (Intermediate!9218 (undefined!10030 Bool) (index!39244 (_ BitVec 32)) (x!86724 (_ BitVec 32))) (Undefined!9218) (MissingVacant!9218 (index!39245 (_ BitVec 32))) )
))
(declare-fun lt!440685 () SeekEntryResult!9218)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62903 (_ BitVec 32)) SeekEntryResult!9218)

(assert (=> b!994517 (= lt!440685 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994518 () Bool)

(declare-fun res!665181 () Bool)

(assert (=> b!994518 (=> (not res!665181) (not e!561268))))

(assert (=> b!994518 (= res!665181 (validKeyInArray!0 (select (arr!30286 a!3219) j!170)))))

(declare-fun b!994519 () Bool)

(declare-fun res!665178 () Bool)

(assert (=> b!994519 (=> (not res!665178) (not e!561268))))

(declare-fun arrayContainsKey!0 (array!62903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994519 (= res!665178 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85746 res!665182) b!994516))

(assert (= (and b!994516 res!665179) b!994518))

(assert (= (and b!994518 res!665181) b!994515))

(assert (= (and b!994515 res!665180) b!994519))

(assert (= (and b!994519 res!665178) b!994517))

(declare-fun m!922193 () Bool)

(assert (=> b!994518 m!922193))

(assert (=> b!994518 m!922193))

(declare-fun m!922195 () Bool)

(assert (=> b!994518 m!922195))

(declare-fun m!922197 () Bool)

(assert (=> b!994515 m!922197))

(declare-fun m!922199 () Bool)

(assert (=> start!85746 m!922199))

(declare-fun m!922201 () Bool)

(assert (=> start!85746 m!922201))

(declare-fun m!922203 () Bool)

(assert (=> b!994517 m!922203))

(declare-fun m!922205 () Bool)

(assert (=> b!994519 m!922205))

(push 1)

(assert (not b!994517))

(assert (not b!994518))

(assert (not b!994515))

(assert (not b!994519))

(assert (not start!85746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

