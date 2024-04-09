; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30284 () Bool)

(assert start!30284)

(declare-fun b!302873 () Bool)

(declare-fun res!160521 () Bool)

(declare-fun e!190740 () Bool)

(assert (=> b!302873 (=> (not res!160521) (not e!190740))))

(declare-datatypes ((array!15388 0))(
  ( (array!15389 (arr!7280 (Array (_ BitVec 32) (_ BitVec 64))) (size!7632 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15388)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302873 (= res!160521 (and (= (size!7632 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7632 a!3293))))))

(declare-fun b!302874 () Bool)

(declare-fun res!160523 () Bool)

(assert (=> b!302874 (=> (not res!160523) (not e!190740))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302874 (= res!160523 (validKeyInArray!0 k0!2441))))

(declare-fun res!160519 () Bool)

(assert (=> start!30284 (=> (not res!160519) (not e!190740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30284 (= res!160519 (validMask!0 mask!3709))))

(assert (=> start!30284 e!190740))

(declare-fun array_inv!5234 (array!15388) Bool)

(assert (=> start!30284 (array_inv!5234 a!3293)))

(assert (=> start!30284 true))

(declare-fun b!302875 () Bool)

(declare-fun res!160517 () Bool)

(assert (=> b!302875 (=> (not res!160517) (not e!190740))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2431 0))(
  ( (MissingZero!2431 (index!11900 (_ BitVec 32))) (Found!2431 (index!11901 (_ BitVec 32))) (Intermediate!2431 (undefined!3243 Bool) (index!11902 (_ BitVec 32)) (x!30131 (_ BitVec 32))) (Undefined!2431) (MissingVacant!2431 (index!11903 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15388 (_ BitVec 32)) SeekEntryResult!2431)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302875 (= res!160517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2431 false resIndex!52 resX!52)))))

(declare-fun b!302876 () Bool)

(assert (=> b!302876 (= e!190740 false)))

(declare-fun lt!150125 () SeekEntryResult!2431)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!302876 (= lt!150125 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!302877 () Bool)

(declare-fun res!160520 () Bool)

(assert (=> b!302877 (=> (not res!160520) (not e!190740))))

(declare-fun arrayContainsKey!0 (array!15388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302877 (= res!160520 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302878 () Bool)

(declare-fun res!160522 () Bool)

(assert (=> b!302878 (=> (not res!160522) (not e!190740))))

(assert (=> b!302878 (= res!160522 (and (= (select (arr!7280 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7632 a!3293))))))

(declare-fun b!302879 () Bool)

(declare-fun res!160518 () Bool)

(assert (=> b!302879 (=> (not res!160518) (not e!190740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15388 (_ BitVec 32)) Bool)

(assert (=> b!302879 (= res!160518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302880 () Bool)

(declare-fun res!160524 () Bool)

(assert (=> b!302880 (=> (not res!160524) (not e!190740))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15388 (_ BitVec 32)) SeekEntryResult!2431)

(assert (=> b!302880 (= res!160524 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2431 i!1240)))))

(assert (= (and start!30284 res!160519) b!302873))

(assert (= (and b!302873 res!160521) b!302874))

(assert (= (and b!302874 res!160523) b!302877))

(assert (= (and b!302877 res!160520) b!302880))

(assert (= (and b!302880 res!160524) b!302879))

(assert (= (and b!302879 res!160518) b!302875))

(assert (= (and b!302875 res!160517) b!302878))

(assert (= (and b!302878 res!160522) b!302876))

(declare-fun m!314331 () Bool)

(assert (=> b!302877 m!314331))

(declare-fun m!314333 () Bool)

(assert (=> b!302876 m!314333))

(declare-fun m!314335 () Bool)

(assert (=> b!302880 m!314335))

(declare-fun m!314337 () Bool)

(assert (=> start!30284 m!314337))

(declare-fun m!314339 () Bool)

(assert (=> start!30284 m!314339))

(declare-fun m!314341 () Bool)

(assert (=> b!302874 m!314341))

(declare-fun m!314343 () Bool)

(assert (=> b!302875 m!314343))

(assert (=> b!302875 m!314343))

(declare-fun m!314345 () Bool)

(assert (=> b!302875 m!314345))

(declare-fun m!314347 () Bool)

(assert (=> b!302878 m!314347))

(declare-fun m!314349 () Bool)

(assert (=> b!302879 m!314349))

(check-sat (not b!302876) (not b!302877) (not start!30284) (not b!302874) (not b!302880) (not b!302879) (not b!302875))
