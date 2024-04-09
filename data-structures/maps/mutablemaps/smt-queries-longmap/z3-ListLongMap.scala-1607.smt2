; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30320 () Bool)

(assert start!30320)

(declare-fun b!303337 () Bool)

(declare-fun res!160987 () Bool)

(declare-fun e!190880 () Bool)

(assert (=> b!303337 (=> (not res!160987) (not e!190880))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303337 (= res!160987 (validKeyInArray!0 k0!2441))))

(declare-fun b!303338 () Bool)

(declare-fun res!160985 () Bool)

(assert (=> b!303338 (=> (not res!160985) (not e!190880))))

(declare-datatypes ((array!15424 0))(
  ( (array!15425 (arr!7298 (Array (_ BitVec 32) (_ BitVec 64))) (size!7650 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15424)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2449 0))(
  ( (MissingZero!2449 (index!11972 (_ BitVec 32))) (Found!2449 (index!11973 (_ BitVec 32))) (Intermediate!2449 (undefined!3261 Bool) (index!11974 (_ BitVec 32)) (x!30197 (_ BitVec 32))) (Undefined!2449) (MissingVacant!2449 (index!11975 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15424 (_ BitVec 32)) SeekEntryResult!2449)

(assert (=> b!303338 (= res!160985 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2449 i!1240)))))

(declare-fun b!303339 () Bool)

(declare-fun res!160982 () Bool)

(declare-fun e!190882 () Bool)

(assert (=> b!303339 (=> (not res!160982) (not e!190882))))

(declare-fun lt!150179 () SeekEntryResult!2449)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15424 (_ BitVec 32)) SeekEntryResult!2449)

(assert (=> b!303339 (= res!160982 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150179))))

(declare-fun b!303340 () Bool)

(declare-fun res!160989 () Bool)

(assert (=> b!303340 (=> (not res!160989) (not e!190880))))

(declare-fun arrayContainsKey!0 (array!15424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303340 (= res!160989 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!160984 () Bool)

(assert (=> start!30320 (=> (not res!160984) (not e!190880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30320 (= res!160984 (validMask!0 mask!3709))))

(assert (=> start!30320 e!190880))

(declare-fun array_inv!5252 (array!15424) Bool)

(assert (=> start!30320 (array_inv!5252 a!3293)))

(assert (=> start!30320 true))

(declare-fun b!303341 () Bool)

(assert (=> b!303341 (= e!190880 e!190882)))

(declare-fun res!160986 () Bool)

(assert (=> b!303341 (=> (not res!160986) (not e!190882))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303341 (= res!160986 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150179))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303341 (= lt!150179 (Intermediate!2449 false resIndex!52 resX!52))))

(declare-fun b!303342 () Bool)

(assert (=> b!303342 (= e!190882 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7298 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7298 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7298 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!303343 () Bool)

(declare-fun res!160988 () Bool)

(assert (=> b!303343 (=> (not res!160988) (not e!190880))))

(assert (=> b!303343 (= res!160988 (and (= (size!7650 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7650 a!3293))))))

(declare-fun b!303344 () Bool)

(declare-fun res!160981 () Bool)

(assert (=> b!303344 (=> (not res!160981) (not e!190882))))

(assert (=> b!303344 (= res!160981 (and (= (select (arr!7298 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7650 a!3293))))))

(declare-fun b!303345 () Bool)

(declare-fun res!160983 () Bool)

(assert (=> b!303345 (=> (not res!160983) (not e!190880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15424 (_ BitVec 32)) Bool)

(assert (=> b!303345 (= res!160983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30320 res!160984) b!303343))

(assert (= (and b!303343 res!160988) b!303337))

(assert (= (and b!303337 res!160987) b!303340))

(assert (= (and b!303340 res!160989) b!303338))

(assert (= (and b!303338 res!160985) b!303345))

(assert (= (and b!303345 res!160983) b!303341))

(assert (= (and b!303341 res!160986) b!303344))

(assert (= (and b!303344 res!160981) b!303339))

(assert (= (and b!303339 res!160982) b!303342))

(declare-fun m!314711 () Bool)

(assert (=> b!303342 m!314711))

(declare-fun m!314713 () Bool)

(assert (=> start!30320 m!314713))

(declare-fun m!314715 () Bool)

(assert (=> start!30320 m!314715))

(declare-fun m!314717 () Bool)

(assert (=> b!303345 m!314717))

(declare-fun m!314719 () Bool)

(assert (=> b!303340 m!314719))

(declare-fun m!314721 () Bool)

(assert (=> b!303344 m!314721))

(declare-fun m!314723 () Bool)

(assert (=> b!303341 m!314723))

(assert (=> b!303341 m!314723))

(declare-fun m!314725 () Bool)

(assert (=> b!303341 m!314725))

(declare-fun m!314727 () Bool)

(assert (=> b!303339 m!314727))

(declare-fun m!314729 () Bool)

(assert (=> b!303337 m!314729))

(declare-fun m!314731 () Bool)

(assert (=> b!303338 m!314731))

(check-sat (not b!303339) (not b!303341) (not b!303345) (not start!30320) (not b!303337) (not b!303338) (not b!303340))
(check-sat)
