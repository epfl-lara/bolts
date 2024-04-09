; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85766 () Bool)

(assert start!85766)

(declare-fun b!994665 () Bool)

(declare-fun res!665328 () Bool)

(declare-fun e!561329 () Bool)

(assert (=> b!994665 (=> (not res!665328) (not e!561329))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994665 (= res!665328 (validKeyInArray!0 k0!2224))))

(declare-fun res!665329 () Bool)

(assert (=> start!85766 (=> (not res!665329) (not e!561329))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85766 (= res!665329 (validMask!0 mask!3464))))

(assert (=> start!85766 e!561329))

(declare-datatypes ((array!62923 0))(
  ( (array!62924 (arr!30296 (Array (_ BitVec 32) (_ BitVec 64))) (size!30799 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62923)

(declare-fun array_inv!23286 (array!62923) Bool)

(assert (=> start!85766 (array_inv!23286 a!3219)))

(assert (=> start!85766 true))

(declare-fun b!994666 () Bool)

(assert (=> b!994666 (= e!561329 false)))

(declare-datatypes ((SeekEntryResult!9228 0))(
  ( (MissingZero!9228 (index!39282 (_ BitVec 32))) (Found!9228 (index!39283 (_ BitVec 32))) (Intermediate!9228 (undefined!10040 Bool) (index!39284 (_ BitVec 32)) (x!86758 (_ BitVec 32))) (Undefined!9228) (MissingVacant!9228 (index!39285 (_ BitVec 32))) )
))
(declare-fun lt!440715 () SeekEntryResult!9228)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62923 (_ BitVec 32)) SeekEntryResult!9228)

(assert (=> b!994666 (= lt!440715 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!994667 () Bool)

(declare-fun res!665331 () Bool)

(assert (=> b!994667 (=> (not res!665331) (not e!561329))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994667 (= res!665331 (and (= (size!30799 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30799 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30799 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994668 () Bool)

(declare-fun res!665330 () Bool)

(assert (=> b!994668 (=> (not res!665330) (not e!561329))))

(declare-fun arrayContainsKey!0 (array!62923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994668 (= res!665330 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994669 () Bool)

(declare-fun res!665332 () Bool)

(assert (=> b!994669 (=> (not res!665332) (not e!561329))))

(assert (=> b!994669 (= res!665332 (validKeyInArray!0 (select (arr!30296 a!3219) j!170)))))

(assert (= (and start!85766 res!665329) b!994667))

(assert (= (and b!994667 res!665331) b!994669))

(assert (= (and b!994669 res!665332) b!994665))

(assert (= (and b!994665 res!665328) b!994668))

(assert (= (and b!994668 res!665330) b!994666))

(declare-fun m!922333 () Bool)

(assert (=> b!994668 m!922333))

(declare-fun m!922335 () Bool)

(assert (=> b!994665 m!922335))

(declare-fun m!922337 () Bool)

(assert (=> b!994669 m!922337))

(assert (=> b!994669 m!922337))

(declare-fun m!922339 () Bool)

(assert (=> b!994669 m!922339))

(declare-fun m!922341 () Bool)

(assert (=> b!994666 m!922341))

(declare-fun m!922343 () Bool)

(assert (=> start!85766 m!922343))

(declare-fun m!922345 () Bool)

(assert (=> start!85766 m!922345))

(check-sat (not start!85766) (not b!994669) (not b!994665) (not b!994668) (not b!994666))
