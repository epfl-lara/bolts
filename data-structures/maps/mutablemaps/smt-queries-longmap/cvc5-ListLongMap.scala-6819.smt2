; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85770 () Bool)

(assert start!85770)

(declare-datatypes ((array!62927 0))(
  ( (array!62928 (arr!30298 (Array (_ BitVec 32) (_ BitVec 64))) (size!30801 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62927)

(declare-fun b!994695 () Bool)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun e!561340 () Bool)

(declare-datatypes ((SeekEntryResult!9230 0))(
  ( (MissingZero!9230 (index!39290 (_ BitVec 32))) (Found!9230 (index!39291 (_ BitVec 32))) (Intermediate!9230 (undefined!10042 Bool) (index!39292 (_ BitVec 32)) (x!86768 (_ BitVec 32))) (Undefined!9230) (MissingVacant!9230 (index!39293 (_ BitVec 32))) )
))
(declare-fun lt!440721 () SeekEntryResult!9230)

(assert (=> b!994695 (= e!561340 (and (or (= lt!440721 (MissingVacant!9230 i!1194)) (= lt!440721 (MissingZero!9230 i!1194))) (bvsgt #b00000000000000000000000000000000 (size!30801 a!3219))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62927 (_ BitVec 32)) SeekEntryResult!9230)

(assert (=> b!994695 (= lt!440721 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994696 () Bool)

(declare-fun res!665362 () Bool)

(assert (=> b!994696 (=> (not res!665362) (not e!561340))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994696 (= res!665362 (and (= (size!30801 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30801 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30801 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994697 () Bool)

(declare-fun res!665358 () Bool)

(assert (=> b!994697 (=> (not res!665358) (not e!561340))))

(declare-fun arrayContainsKey!0 (array!62927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994697 (= res!665358 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994698 () Bool)

(declare-fun res!665360 () Bool)

(assert (=> b!994698 (=> (not res!665360) (not e!561340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994698 (= res!665360 (validKeyInArray!0 (select (arr!30298 a!3219) j!170)))))

(declare-fun b!994699 () Bool)

(declare-fun res!665361 () Bool)

(assert (=> b!994699 (=> (not res!665361) (not e!561340))))

(assert (=> b!994699 (= res!665361 (validKeyInArray!0 k!2224))))

(declare-fun res!665359 () Bool)

(assert (=> start!85770 (=> (not res!665359) (not e!561340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85770 (= res!665359 (validMask!0 mask!3464))))

(assert (=> start!85770 e!561340))

(declare-fun array_inv!23288 (array!62927) Bool)

(assert (=> start!85770 (array_inv!23288 a!3219)))

(assert (=> start!85770 true))

(assert (= (and start!85770 res!665359) b!994696))

(assert (= (and b!994696 res!665362) b!994698))

(assert (= (and b!994698 res!665360) b!994699))

(assert (= (and b!994699 res!665361) b!994697))

(assert (= (and b!994697 res!665358) b!994695))

(declare-fun m!922361 () Bool)

(assert (=> b!994695 m!922361))

(declare-fun m!922363 () Bool)

(assert (=> b!994699 m!922363))

(declare-fun m!922365 () Bool)

(assert (=> b!994697 m!922365))

(declare-fun m!922367 () Bool)

(assert (=> b!994698 m!922367))

(assert (=> b!994698 m!922367))

(declare-fun m!922369 () Bool)

(assert (=> b!994698 m!922369))

(declare-fun m!922371 () Bool)

(assert (=> start!85770 m!922371))

(declare-fun m!922373 () Bool)

(assert (=> start!85770 m!922373))

(push 1)

(assert (not b!994697))

(assert (not b!994699))

(assert (not start!85770))

