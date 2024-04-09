; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85736 () Bool)

(assert start!85736)

(declare-fun b!994437 () Bool)

(declare-fun res!665100 () Bool)

(declare-fun e!561239 () Bool)

(assert (=> b!994437 (=> (not res!665100) (not e!561239))))

(declare-datatypes ((array!62893 0))(
  ( (array!62894 (arr!30281 (Array (_ BitVec 32) (_ BitVec 64))) (size!30784 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62893)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994437 (= res!665100 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994438 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!994438 (= e!561239 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!994439 () Bool)

(declare-fun res!665099 () Bool)

(assert (=> b!994439 (=> (not res!665099) (not e!561239))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994439 (= res!665099 (and (= (size!30784 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30784 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30784 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994436 () Bool)

(declare-fun res!665104 () Bool)

(assert (=> b!994436 (=> (not res!665104) (not e!561239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994436 (= res!665104 (validKeyInArray!0 (select (arr!30281 a!3219) j!170)))))

(declare-fun res!665101 () Bool)

(assert (=> start!85736 (=> (not res!665101) (not e!561239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85736 (= res!665101 (validMask!0 mask!3464))))

(assert (=> start!85736 e!561239))

(declare-fun array_inv!23271 (array!62893) Bool)

(assert (=> start!85736 (array_inv!23271 a!3219)))

(assert (=> start!85736 true))

(declare-fun b!994440 () Bool)

(declare-fun res!665103 () Bool)

(assert (=> b!994440 (=> (not res!665103) (not e!561239))))

(declare-datatypes ((SeekEntryResult!9213 0))(
  ( (MissingZero!9213 (index!39222 (_ BitVec 32))) (Found!9213 (index!39223 (_ BitVec 32))) (Intermediate!9213 (undefined!10025 Bool) (index!39224 (_ BitVec 32)) (x!86703 (_ BitVec 32))) (Undefined!9213) (MissingVacant!9213 (index!39225 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62893 (_ BitVec 32)) SeekEntryResult!9213)

(assert (=> b!994440 (= res!665103 (not (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) (MissingVacant!9213 i!1194))))))

(declare-fun b!994441 () Bool)

(declare-fun res!665102 () Bool)

(assert (=> b!994441 (=> (not res!665102) (not e!561239))))

(assert (=> b!994441 (= res!665102 (validKeyInArray!0 k0!2224))))

(assert (= (and start!85736 res!665101) b!994439))

(assert (= (and b!994439 res!665099) b!994436))

(assert (= (and b!994436 res!665104) b!994441))

(assert (= (and b!994441 res!665102) b!994437))

(assert (= (and b!994437 res!665100) b!994440))

(assert (= (and b!994440 res!665103) b!994438))

(declare-fun m!922123 () Bool)

(assert (=> b!994440 m!922123))

(declare-fun m!922125 () Bool)

(assert (=> b!994436 m!922125))

(assert (=> b!994436 m!922125))

(declare-fun m!922127 () Bool)

(assert (=> b!994436 m!922127))

(declare-fun m!922129 () Bool)

(assert (=> b!994437 m!922129))

(declare-fun m!922131 () Bool)

(assert (=> start!85736 m!922131))

(declare-fun m!922133 () Bool)

(assert (=> start!85736 m!922133))

(declare-fun m!922135 () Bool)

(assert (=> b!994441 m!922135))

(check-sat (not b!994436) (not b!994437) (not start!85736) (not b!994441) (not b!994440))
(check-sat)
