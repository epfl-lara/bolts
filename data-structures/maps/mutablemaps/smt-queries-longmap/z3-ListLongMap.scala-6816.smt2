; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85754 () Bool)

(assert start!85754)

(declare-fun b!994575 () Bool)

(declare-fun res!665241 () Bool)

(declare-fun e!561292 () Bool)

(assert (=> b!994575 (=> (not res!665241) (not e!561292))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994575 (= res!665241 (validKeyInArray!0 k0!2224))))

(declare-fun b!994576 () Bool)

(assert (=> b!994576 (= e!561292 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9222 0))(
  ( (MissingZero!9222 (index!39258 (_ BitVec 32))) (Found!9222 (index!39259 (_ BitVec 32))) (Intermediate!9222 (undefined!10034 Bool) (index!39260 (_ BitVec 32)) (x!86736 (_ BitVec 32))) (Undefined!9222) (MissingVacant!9222 (index!39261 (_ BitVec 32))) )
))
(declare-fun lt!440697 () SeekEntryResult!9222)

(declare-datatypes ((array!62911 0))(
  ( (array!62912 (arr!30290 (Array (_ BitVec 32) (_ BitVec 64))) (size!30793 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62911)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62911 (_ BitVec 32)) SeekEntryResult!9222)

(assert (=> b!994576 (= lt!440697 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!994577 () Bool)

(declare-fun res!665238 () Bool)

(assert (=> b!994577 (=> (not res!665238) (not e!561292))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994577 (= res!665238 (and (= (size!30793 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30793 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30793 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!665242 () Bool)

(assert (=> start!85754 (=> (not res!665242) (not e!561292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85754 (= res!665242 (validMask!0 mask!3464))))

(assert (=> start!85754 e!561292))

(declare-fun array_inv!23280 (array!62911) Bool)

(assert (=> start!85754 (array_inv!23280 a!3219)))

(assert (=> start!85754 true))

(declare-fun b!994578 () Bool)

(declare-fun res!665240 () Bool)

(assert (=> b!994578 (=> (not res!665240) (not e!561292))))

(declare-fun arrayContainsKey!0 (array!62911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994578 (= res!665240 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994579 () Bool)

(declare-fun res!665239 () Bool)

(assert (=> b!994579 (=> (not res!665239) (not e!561292))))

(assert (=> b!994579 (= res!665239 (validKeyInArray!0 (select (arr!30290 a!3219) j!170)))))

(assert (= (and start!85754 res!665242) b!994577))

(assert (= (and b!994577 res!665238) b!994579))

(assert (= (and b!994579 res!665239) b!994575))

(assert (= (and b!994575 res!665241) b!994578))

(assert (= (and b!994578 res!665240) b!994576))

(declare-fun m!922249 () Bool)

(assert (=> b!994579 m!922249))

(assert (=> b!994579 m!922249))

(declare-fun m!922251 () Bool)

(assert (=> b!994579 m!922251))

(declare-fun m!922253 () Bool)

(assert (=> b!994578 m!922253))

(declare-fun m!922255 () Bool)

(assert (=> b!994575 m!922255))

(declare-fun m!922257 () Bool)

(assert (=> b!994576 m!922257))

(declare-fun m!922259 () Bool)

(assert (=> start!85754 m!922259))

(declare-fun m!922261 () Bool)

(assert (=> start!85754 m!922261))

(check-sat (not b!994579) (not start!85754) (not b!994578) (not b!994576) (not b!994575))
