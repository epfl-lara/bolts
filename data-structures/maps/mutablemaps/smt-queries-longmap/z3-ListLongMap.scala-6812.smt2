; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85730 () Bool)

(assert start!85730)

(declare-fun b!994386 () Bool)

(declare-fun res!665051 () Bool)

(declare-fun e!561220 () Bool)

(assert (=> b!994386 (=> (not res!665051) (not e!561220))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994386 (= res!665051 (validKeyInArray!0 k0!2224))))

(declare-fun b!994387 () Bool)

(declare-fun res!665052 () Bool)

(assert (=> b!994387 (=> (not res!665052) (not e!561220))))

(declare-datatypes ((array!62887 0))(
  ( (array!62888 (arr!30278 (Array (_ BitVec 32) (_ BitVec 64))) (size!30781 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62887)

(declare-fun arrayContainsKey!0 (array!62887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994387 (= res!665052 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!665049 () Bool)

(assert (=> start!85730 (=> (not res!665049) (not e!561220))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85730 (= res!665049 (validMask!0 mask!3464))))

(assert (=> start!85730 e!561220))

(declare-fun array_inv!23268 (array!62887) Bool)

(assert (=> start!85730 (array_inv!23268 a!3219)))

(assert (=> start!85730 true))

(declare-fun b!994388 () Bool)

(assert (=> b!994388 (= e!561220 false)))

(declare-datatypes ((SeekEntryResult!9210 0))(
  ( (MissingZero!9210 (index!39210 (_ BitVec 32))) (Found!9210 (index!39211 (_ BitVec 32))) (Intermediate!9210 (undefined!10022 Bool) (index!39212 (_ BitVec 32)) (x!86692 (_ BitVec 32))) (Undefined!9210) (MissingVacant!9210 (index!39213 (_ BitVec 32))) )
))
(declare-fun lt!440670 () SeekEntryResult!9210)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62887 (_ BitVec 32)) SeekEntryResult!9210)

(assert (=> b!994388 (= lt!440670 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!994389 () Bool)

(declare-fun res!665050 () Bool)

(assert (=> b!994389 (=> (not res!665050) (not e!561220))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994389 (= res!665050 (validKeyInArray!0 (select (arr!30278 a!3219) j!170)))))

(declare-fun b!994390 () Bool)

(declare-fun res!665053 () Bool)

(assert (=> b!994390 (=> (not res!665053) (not e!561220))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994390 (= res!665053 (and (= (size!30781 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30781 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30781 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85730 res!665049) b!994390))

(assert (= (and b!994390 res!665053) b!994389))

(assert (= (and b!994389 res!665050) b!994386))

(assert (= (and b!994386 res!665051) b!994387))

(assert (= (and b!994387 res!665052) b!994388))

(declare-fun m!922081 () Bool)

(assert (=> start!85730 m!922081))

(declare-fun m!922083 () Bool)

(assert (=> start!85730 m!922083))

(declare-fun m!922085 () Bool)

(assert (=> b!994387 m!922085))

(declare-fun m!922087 () Bool)

(assert (=> b!994389 m!922087))

(assert (=> b!994389 m!922087))

(declare-fun m!922089 () Bool)

(assert (=> b!994389 m!922089))

(declare-fun m!922091 () Bool)

(assert (=> b!994388 m!922091))

(declare-fun m!922093 () Bool)

(assert (=> b!994386 m!922093))

(check-sat (not b!994387) (not b!994386) (not start!85730) (not b!994389) (not b!994388))
