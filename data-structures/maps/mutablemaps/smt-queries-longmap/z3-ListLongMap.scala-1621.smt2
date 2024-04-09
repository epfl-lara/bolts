; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30458 () Bool)

(assert start!30458)

(declare-fun b!304741 () Bool)

(declare-fun res!162248 () Bool)

(declare-fun e!191452 () Bool)

(assert (=> b!304741 (=> (not res!162248) (not e!191452))))

(declare-datatypes ((array!15511 0))(
  ( (array!15512 (arr!7340 (Array (_ BitVec 32) (_ BitVec 64))) (size!7692 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15511)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304741 (= res!162248 (and (= (select (arr!7340 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7692 a!3293))))))

(declare-fun b!304742 () Bool)

(declare-fun e!191449 () Bool)

(assert (=> b!304742 (= e!191452 e!191449)))

(declare-fun res!162250 () Bool)

(assert (=> b!304742 (=> (not res!162250) (not e!191449))))

(declare-datatypes ((SeekEntryResult!2491 0))(
  ( (MissingZero!2491 (index!12140 (_ BitVec 32))) (Found!2491 (index!12141 (_ BitVec 32))) (Intermediate!2491 (undefined!3303 Bool) (index!12142 (_ BitVec 32)) (x!30360 (_ BitVec 32))) (Undefined!2491) (MissingVacant!2491 (index!12143 (_ BitVec 32))) )
))
(declare-fun lt!150523 () SeekEntryResult!2491)

(declare-fun lt!150524 () SeekEntryResult!2491)

(declare-fun k0!2441 () (_ BitVec 64))

(assert (=> b!304742 (= res!162250 (and (= lt!150523 lt!150524) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7340 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7340 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7340 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15511 (_ BitVec 32)) SeekEntryResult!2491)

(assert (=> b!304742 (= lt!150523 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!304743 () Bool)

(declare-fun res!162252 () Bool)

(declare-fun e!191450 () Bool)

(assert (=> b!304743 (=> (not res!162252) (not e!191450))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15511 (_ BitVec 32)) SeekEntryResult!2491)

(assert (=> b!304743 (= res!162252 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2491 i!1240)))))

(declare-fun b!304745 () Bool)

(assert (=> b!304745 (= e!191449 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304745 (= lt!150523 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304746 () Bool)

(declare-fun res!162251 () Bool)

(assert (=> b!304746 (=> (not res!162251) (not e!191450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304746 (= res!162251 (validKeyInArray!0 k0!2441))))

(declare-fun b!304744 () Bool)

(declare-fun res!162245 () Bool)

(assert (=> b!304744 (=> (not res!162245) (not e!191450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15511 (_ BitVec 32)) Bool)

(assert (=> b!304744 (= res!162245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!162249 () Bool)

(assert (=> start!30458 (=> (not res!162249) (not e!191450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30458 (= res!162249 (validMask!0 mask!3709))))

(assert (=> start!30458 e!191450))

(declare-fun array_inv!5294 (array!15511) Bool)

(assert (=> start!30458 (array_inv!5294 a!3293)))

(assert (=> start!30458 true))

(declare-fun b!304747 () Bool)

(declare-fun res!162246 () Bool)

(assert (=> b!304747 (=> (not res!162246) (not e!191450))))

(declare-fun arrayContainsKey!0 (array!15511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304747 (= res!162246 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304748 () Bool)

(assert (=> b!304748 (= e!191450 e!191452)))

(declare-fun res!162247 () Bool)

(assert (=> b!304748 (=> (not res!162247) (not e!191452))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304748 (= res!162247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150524))))

(assert (=> b!304748 (= lt!150524 (Intermediate!2491 false resIndex!52 resX!52))))

(declare-fun b!304749 () Bool)

(declare-fun res!162244 () Bool)

(assert (=> b!304749 (=> (not res!162244) (not e!191450))))

(assert (=> b!304749 (= res!162244 (and (= (size!7692 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7692 a!3293))))))

(assert (= (and start!30458 res!162249) b!304749))

(assert (= (and b!304749 res!162244) b!304746))

(assert (= (and b!304746 res!162251) b!304747))

(assert (= (and b!304747 res!162246) b!304743))

(assert (= (and b!304743 res!162252) b!304744))

(assert (= (and b!304744 res!162245) b!304748))

(assert (= (and b!304748 res!162247) b!304741))

(assert (= (and b!304741 res!162248) b!304742))

(assert (= (and b!304742 res!162250) b!304745))

(declare-fun m!315861 () Bool)

(assert (=> b!304743 m!315861))

(declare-fun m!315863 () Bool)

(assert (=> b!304745 m!315863))

(assert (=> b!304745 m!315863))

(declare-fun m!315865 () Bool)

(assert (=> b!304745 m!315865))

(declare-fun m!315867 () Bool)

(assert (=> b!304744 m!315867))

(declare-fun m!315869 () Bool)

(assert (=> b!304742 m!315869))

(declare-fun m!315871 () Bool)

(assert (=> b!304742 m!315871))

(declare-fun m!315873 () Bool)

(assert (=> b!304746 m!315873))

(declare-fun m!315875 () Bool)

(assert (=> b!304747 m!315875))

(declare-fun m!315877 () Bool)

(assert (=> b!304741 m!315877))

(declare-fun m!315879 () Bool)

(assert (=> b!304748 m!315879))

(assert (=> b!304748 m!315879))

(declare-fun m!315881 () Bool)

(assert (=> b!304748 m!315881))

(declare-fun m!315883 () Bool)

(assert (=> start!30458 m!315883))

(declare-fun m!315885 () Bool)

(assert (=> start!30458 m!315885))

(check-sat (not b!304747) (not b!304744) (not start!30458) (not b!304745) (not b!304746) (not b!304748) (not b!304742) (not b!304743))
(check-sat)
