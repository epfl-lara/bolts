; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85724 () Bool)

(assert start!85724)

(declare-fun b!994341 () Bool)

(declare-fun res!665006 () Bool)

(declare-fun e!561202 () Bool)

(assert (=> b!994341 (=> (not res!665006) (not e!561202))))

(declare-datatypes ((array!62881 0))(
  ( (array!62882 (arr!30275 (Array (_ BitVec 32) (_ BitVec 64))) (size!30778 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62881)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994341 (= res!665006 (validKeyInArray!0 (select (arr!30275 a!3219) j!170)))))

(declare-fun b!994342 () Bool)

(declare-fun res!665007 () Bool)

(assert (=> b!994342 (=> (not res!665007) (not e!561202))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!994342 (= res!665007 (validKeyInArray!0 k0!2224))))

(declare-fun b!994343 () Bool)

(declare-fun res!665008 () Bool)

(assert (=> b!994343 (=> (not res!665008) (not e!561202))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994343 (= res!665008 (and (= (size!30778 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30778 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30778 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994344 () Bool)

(assert (=> b!994344 (= e!561202 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun res!665004 () Bool)

(assert (=> start!85724 (=> (not res!665004) (not e!561202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85724 (= res!665004 (validMask!0 mask!3464))))

(assert (=> start!85724 e!561202))

(declare-fun array_inv!23265 (array!62881) Bool)

(assert (=> start!85724 (array_inv!23265 a!3219)))

(assert (=> start!85724 true))

(declare-fun b!994345 () Bool)

(declare-fun res!665005 () Bool)

(assert (=> b!994345 (=> (not res!665005) (not e!561202))))

(declare-fun arrayContainsKey!0 (array!62881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994345 (= res!665005 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85724 res!665004) b!994343))

(assert (= (and b!994343 res!665008) b!994341))

(assert (= (and b!994341 res!665006) b!994342))

(assert (= (and b!994342 res!665007) b!994345))

(assert (= (and b!994345 res!665005) b!994344))

(declare-fun m!922043 () Bool)

(assert (=> b!994341 m!922043))

(assert (=> b!994341 m!922043))

(declare-fun m!922045 () Bool)

(assert (=> b!994341 m!922045))

(declare-fun m!922047 () Bool)

(assert (=> b!994342 m!922047))

(declare-fun m!922049 () Bool)

(assert (=> start!85724 m!922049))

(declare-fun m!922051 () Bool)

(assert (=> start!85724 m!922051))

(declare-fun m!922053 () Bool)

(assert (=> b!994345 m!922053))

(check-sat (not b!994341) (not start!85724) (not b!994342) (not b!994345))
(check-sat)
