; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85748 () Bool)

(assert start!85748)

(declare-fun b!994530 () Bool)

(declare-fun res!665196 () Bool)

(declare-fun e!561274 () Bool)

(assert (=> b!994530 (=> (not res!665196) (not e!561274))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994530 (= res!665196 (validKeyInArray!0 k0!2224))))

(declare-fun b!994531 () Bool)

(declare-fun res!665194 () Bool)

(assert (=> b!994531 (=> (not res!665194) (not e!561274))))

(declare-datatypes ((array!62905 0))(
  ( (array!62906 (arr!30287 (Array (_ BitVec 32) (_ BitVec 64))) (size!30790 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62905)

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994531 (= res!665194 (validKeyInArray!0 (select (arr!30287 a!3219) j!170)))))

(declare-fun res!665195 () Bool)

(assert (=> start!85748 (=> (not res!665195) (not e!561274))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85748 (= res!665195 (validMask!0 mask!3464))))

(assert (=> start!85748 e!561274))

(declare-fun array_inv!23277 (array!62905) Bool)

(assert (=> start!85748 (array_inv!23277 a!3219)))

(assert (=> start!85748 true))

(declare-fun b!994532 () Bool)

(declare-fun res!665193 () Bool)

(assert (=> b!994532 (=> (not res!665193) (not e!561274))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994532 (= res!665193 (and (= (size!30790 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30790 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30790 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994533 () Bool)

(declare-fun res!665197 () Bool)

(assert (=> b!994533 (=> (not res!665197) (not e!561274))))

(declare-fun arrayContainsKey!0 (array!62905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994533 (= res!665197 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994534 () Bool)

(assert (=> b!994534 (= e!561274 false)))

(declare-datatypes ((SeekEntryResult!9219 0))(
  ( (MissingZero!9219 (index!39246 (_ BitVec 32))) (Found!9219 (index!39247 (_ BitVec 32))) (Intermediate!9219 (undefined!10031 Bool) (index!39248 (_ BitVec 32)) (x!86725 (_ BitVec 32))) (Undefined!9219) (MissingVacant!9219 (index!39249 (_ BitVec 32))) )
))
(declare-fun lt!440688 () SeekEntryResult!9219)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62905 (_ BitVec 32)) SeekEntryResult!9219)

(assert (=> b!994534 (= lt!440688 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!85748 res!665195) b!994532))

(assert (= (and b!994532 res!665193) b!994531))

(assert (= (and b!994531 res!665194) b!994530))

(assert (= (and b!994530 res!665196) b!994533))

(assert (= (and b!994533 res!665197) b!994534))

(declare-fun m!922207 () Bool)

(assert (=> b!994531 m!922207))

(assert (=> b!994531 m!922207))

(declare-fun m!922209 () Bool)

(assert (=> b!994531 m!922209))

(declare-fun m!922211 () Bool)

(assert (=> b!994533 m!922211))

(declare-fun m!922213 () Bool)

(assert (=> start!85748 m!922213))

(declare-fun m!922215 () Bool)

(assert (=> start!85748 m!922215))

(declare-fun m!922217 () Bool)

(assert (=> b!994530 m!922217))

(declare-fun m!922219 () Bool)

(assert (=> b!994534 m!922219))

(check-sat (not b!994531) (not start!85748) (not b!994534) (not b!994533) (not b!994530))
