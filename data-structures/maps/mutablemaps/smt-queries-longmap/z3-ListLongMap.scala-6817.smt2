; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85760 () Bool)

(assert start!85760)

(declare-fun b!994620 () Bool)

(declare-fun res!665287 () Bool)

(declare-fun e!561311 () Bool)

(assert (=> b!994620 (=> (not res!665287) (not e!561311))))

(declare-datatypes ((array!62917 0))(
  ( (array!62918 (arr!30293 (Array (_ BitVec 32) (_ BitVec 64))) (size!30796 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62917)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994620 (= res!665287 (validKeyInArray!0 (select (arr!30293 a!3219) j!170)))))

(declare-fun b!994621 () Bool)

(assert (=> b!994621 (= e!561311 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9225 0))(
  ( (MissingZero!9225 (index!39270 (_ BitVec 32))) (Found!9225 (index!39271 (_ BitVec 32))) (Intermediate!9225 (undefined!10037 Bool) (index!39272 (_ BitVec 32)) (x!86747 (_ BitVec 32))) (Undefined!9225) (MissingVacant!9225 (index!39273 (_ BitVec 32))) )
))
(declare-fun lt!440706 () SeekEntryResult!9225)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62917 (_ BitVec 32)) SeekEntryResult!9225)

(assert (=> b!994621 (= lt!440706 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!994622 () Bool)

(declare-fun res!665286 () Bool)

(assert (=> b!994622 (=> (not res!665286) (not e!561311))))

(declare-fun arrayContainsKey!0 (array!62917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994622 (= res!665286 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994623 () Bool)

(declare-fun res!665285 () Bool)

(assert (=> b!994623 (=> (not res!665285) (not e!561311))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994623 (= res!665285 (and (= (size!30796 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30796 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30796 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994624 () Bool)

(declare-fun res!665284 () Bool)

(assert (=> b!994624 (=> (not res!665284) (not e!561311))))

(assert (=> b!994624 (= res!665284 (validKeyInArray!0 k0!2224))))

(declare-fun res!665283 () Bool)

(assert (=> start!85760 (=> (not res!665283) (not e!561311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85760 (= res!665283 (validMask!0 mask!3464))))

(assert (=> start!85760 e!561311))

(declare-fun array_inv!23283 (array!62917) Bool)

(assert (=> start!85760 (array_inv!23283 a!3219)))

(assert (=> start!85760 true))

(assert (= (and start!85760 res!665283) b!994623))

(assert (= (and b!994623 res!665285) b!994620))

(assert (= (and b!994620 res!665287) b!994624))

(assert (= (and b!994624 res!665284) b!994622))

(assert (= (and b!994622 res!665286) b!994621))

(declare-fun m!922291 () Bool)

(assert (=> start!85760 m!922291))

(declare-fun m!922293 () Bool)

(assert (=> start!85760 m!922293))

(declare-fun m!922295 () Bool)

(assert (=> b!994624 m!922295))

(declare-fun m!922297 () Bool)

(assert (=> b!994620 m!922297))

(assert (=> b!994620 m!922297))

(declare-fun m!922299 () Bool)

(assert (=> b!994620 m!922299))

(declare-fun m!922301 () Bool)

(assert (=> b!994622 m!922301))

(declare-fun m!922303 () Bool)

(assert (=> b!994621 m!922303))

(check-sat (not b!994624) (not start!85760) (not b!994622) (not b!994620) (not b!994621))
