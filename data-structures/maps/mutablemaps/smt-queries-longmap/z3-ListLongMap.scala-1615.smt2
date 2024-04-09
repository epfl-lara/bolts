; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30422 () Bool)

(assert start!30422)

(declare-fun b!304255 () Bool)

(declare-fun res!161762 () Bool)

(declare-fun e!191234 () Bool)

(assert (=> b!304255 (=> (not res!161762) (not e!191234))))

(declare-datatypes ((array!15475 0))(
  ( (array!15476 (arr!7322 (Array (_ BitVec 32) (_ BitVec 64))) (size!7674 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15475)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2473 0))(
  ( (MissingZero!2473 (index!12068 (_ BitVec 32))) (Found!2473 (index!12069 (_ BitVec 32))) (Intermediate!2473 (undefined!3285 Bool) (index!12070 (_ BitVec 32)) (x!30294 (_ BitVec 32))) (Undefined!2473) (MissingVacant!2473 (index!12071 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15475 (_ BitVec 32)) SeekEntryResult!2473)

(assert (=> b!304255 (= res!161762 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2473 i!1240)))))

(declare-fun b!304256 () Bool)

(declare-fun res!161761 () Bool)

(declare-fun e!191233 () Bool)

(assert (=> b!304256 (=> (not res!161761) (not e!191233))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304256 (= res!161761 (and (= (select (arr!7322 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7674 a!3293))))))

(declare-fun b!304257 () Bool)

(declare-fun res!161759 () Bool)

(assert (=> b!304257 (=> (not res!161759) (not e!191234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304257 (= res!161759 (validKeyInArray!0 k0!2441))))

(declare-fun b!304258 () Bool)

(declare-fun e!191235 () Bool)

(assert (=> b!304258 (= e!191233 e!191235)))

(declare-fun res!161763 () Bool)

(assert (=> b!304258 (=> (not res!161763) (not e!191235))))

(declare-fun lt!150416 () SeekEntryResult!2473)

(declare-fun lt!150415 () SeekEntryResult!2473)

(assert (=> b!304258 (= res!161763 (and (= lt!150415 lt!150416) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7322 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7322 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7322 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15475 (_ BitVec 32)) SeekEntryResult!2473)

(assert (=> b!304258 (= lt!150415 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!161766 () Bool)

(assert (=> start!30422 (=> (not res!161766) (not e!191234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30422 (= res!161766 (validMask!0 mask!3709))))

(assert (=> start!30422 e!191234))

(declare-fun array_inv!5276 (array!15475) Bool)

(assert (=> start!30422 (array_inv!5276 a!3293)))

(assert (=> start!30422 true))

(declare-fun b!304259 () Bool)

(assert (=> b!304259 (= e!191234 e!191233)))

(declare-fun res!161765 () Bool)

(assert (=> b!304259 (=> (not res!161765) (not e!191233))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304259 (= res!161765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150416))))

(assert (=> b!304259 (= lt!150416 (Intermediate!2473 false resIndex!52 resX!52))))

(declare-fun b!304260 () Bool)

(assert (=> b!304260 (= e!191235 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304260 (= lt!150415 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304261 () Bool)

(declare-fun res!161760 () Bool)

(assert (=> b!304261 (=> (not res!161760) (not e!191234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15475 (_ BitVec 32)) Bool)

(assert (=> b!304261 (= res!161760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304262 () Bool)

(declare-fun res!161764 () Bool)

(assert (=> b!304262 (=> (not res!161764) (not e!191234))))

(declare-fun arrayContainsKey!0 (array!15475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304262 (= res!161764 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304263 () Bool)

(declare-fun res!161758 () Bool)

(assert (=> b!304263 (=> (not res!161758) (not e!191234))))

(assert (=> b!304263 (= res!161758 (and (= (size!7674 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7674 a!3293))))))

(assert (= (and start!30422 res!161766) b!304263))

(assert (= (and b!304263 res!161758) b!304257))

(assert (= (and b!304257 res!161759) b!304262))

(assert (= (and b!304262 res!161764) b!304255))

(assert (= (and b!304255 res!161762) b!304261))

(assert (= (and b!304261 res!161760) b!304259))

(assert (= (and b!304259 res!161765) b!304256))

(assert (= (and b!304256 res!161761) b!304258))

(assert (= (and b!304258 res!161763) b!304260))

(declare-fun m!315393 () Bool)

(assert (=> b!304255 m!315393))

(declare-fun m!315395 () Bool)

(assert (=> b!304256 m!315395))

(declare-fun m!315397 () Bool)

(assert (=> b!304258 m!315397))

(declare-fun m!315399 () Bool)

(assert (=> b!304258 m!315399))

(declare-fun m!315401 () Bool)

(assert (=> b!304257 m!315401))

(declare-fun m!315403 () Bool)

(assert (=> start!30422 m!315403))

(declare-fun m!315405 () Bool)

(assert (=> start!30422 m!315405))

(declare-fun m!315407 () Bool)

(assert (=> b!304260 m!315407))

(assert (=> b!304260 m!315407))

(declare-fun m!315409 () Bool)

(assert (=> b!304260 m!315409))

(declare-fun m!315411 () Bool)

(assert (=> b!304262 m!315411))

(declare-fun m!315413 () Bool)

(assert (=> b!304259 m!315413))

(assert (=> b!304259 m!315413))

(declare-fun m!315415 () Bool)

(assert (=> b!304259 m!315415))

(declare-fun m!315417 () Bool)

(assert (=> b!304261 m!315417))

(check-sat (not b!304262) (not b!304261) (not b!304260) (not b!304257) (not b!304258) (not b!304255) (not start!30422) (not b!304259))
(check-sat)
