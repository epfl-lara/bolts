; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85768 () Bool)

(assert start!85768)

(declare-fun b!994680 () Bool)

(declare-fun e!561335 () Bool)

(assert (=> b!994680 (= e!561335 false)))

(declare-datatypes ((array!62925 0))(
  ( (array!62926 (arr!30297 (Array (_ BitVec 32) (_ BitVec 64))) (size!30800 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62925)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9229 0))(
  ( (MissingZero!9229 (index!39286 (_ BitVec 32))) (Found!9229 (index!39287 (_ BitVec 32))) (Intermediate!9229 (undefined!10041 Bool) (index!39288 (_ BitVec 32)) (x!86759 (_ BitVec 32))) (Undefined!9229) (MissingVacant!9229 (index!39289 (_ BitVec 32))) )
))
(declare-fun lt!440718 () SeekEntryResult!9229)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62925 (_ BitVec 32)) SeekEntryResult!9229)

(assert (=> b!994680 (= lt!440718 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!665347 () Bool)

(assert (=> start!85768 (=> (not res!665347) (not e!561335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85768 (= res!665347 (validMask!0 mask!3464))))

(assert (=> start!85768 e!561335))

(declare-fun array_inv!23287 (array!62925) Bool)

(assert (=> start!85768 (array_inv!23287 a!3219)))

(assert (=> start!85768 true))

(declare-fun b!994681 () Bool)

(declare-fun res!665346 () Bool)

(assert (=> b!994681 (=> (not res!665346) (not e!561335))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994681 (= res!665346 (and (= (size!30800 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30800 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30800 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994682 () Bool)

(declare-fun res!665343 () Bool)

(assert (=> b!994682 (=> (not res!665343) (not e!561335))))

(declare-fun arrayContainsKey!0 (array!62925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994682 (= res!665343 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994683 () Bool)

(declare-fun res!665345 () Bool)

(assert (=> b!994683 (=> (not res!665345) (not e!561335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994683 (= res!665345 (validKeyInArray!0 k!2224))))

(declare-fun b!994684 () Bool)

(declare-fun res!665344 () Bool)

(assert (=> b!994684 (=> (not res!665344) (not e!561335))))

(assert (=> b!994684 (= res!665344 (validKeyInArray!0 (select (arr!30297 a!3219) j!170)))))

(assert (= (and start!85768 res!665347) b!994681))

(assert (= (and b!994681 res!665346) b!994684))

(assert (= (and b!994684 res!665344) b!994683))

(assert (= (and b!994683 res!665345) b!994682))

(assert (= (and b!994682 res!665343) b!994680))

(declare-fun m!922347 () Bool)

(assert (=> start!85768 m!922347))

(declare-fun m!922349 () Bool)

(assert (=> start!85768 m!922349))

(declare-fun m!922351 () Bool)

(assert (=> b!994684 m!922351))

(assert (=> b!994684 m!922351))

(declare-fun m!922353 () Bool)

(assert (=> b!994684 m!922353))

(declare-fun m!922355 () Bool)

(assert (=> b!994682 m!922355))

(declare-fun m!922357 () Bool)

(assert (=> b!994680 m!922357))

(declare-fun m!922359 () Bool)

(assert (=> b!994683 m!922359))

(push 1)

(assert (not start!85768))

(assert (not b!994680))

(assert (not b!994684))

(assert (not b!994682))

(assert (not b!994683))

(check-sat)

(pop 1)

(push 1)

