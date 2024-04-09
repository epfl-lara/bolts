; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30536 () Bool)

(assert start!30536)

(declare-fun b!305333 () Bool)

(declare-datatypes ((Unit!9393 0))(
  ( (Unit!9394) )
))
(declare-fun e!191746 () Unit!9393)

(declare-fun e!191749 () Unit!9393)

(assert (=> b!305333 (= e!191746 e!191749)))

(declare-fun c!48941 () Bool)

(declare-datatypes ((array!15538 0))(
  ( (array!15539 (arr!7352 (Array (_ BitVec 32) (_ BitVec 64))) (size!7704 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15538)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305333 (= c!48941 (or (= (select (arr!7352 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7352 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305334 () Bool)

(declare-fun e!191748 () Bool)

(declare-fun e!191745 () Bool)

(assert (=> b!305334 (= e!191748 e!191745)))

(declare-fun res!162658 () Bool)

(assert (=> b!305334 (=> (not res!162658) (not e!191745))))

(declare-datatypes ((SeekEntryResult!2503 0))(
  ( (MissingZero!2503 (index!12188 (_ BitVec 32))) (Found!2503 (index!12189 (_ BitVec 32))) (Intermediate!2503 (undefined!3315 Bool) (index!12190 (_ BitVec 32)) (x!30413 (_ BitVec 32))) (Undefined!2503) (MissingVacant!2503 (index!12191 (_ BitVec 32))) )
))
(declare-fun lt!150729 () SeekEntryResult!2503)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15538 (_ BitVec 32)) SeekEntryResult!2503)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305334 (= res!162658 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150729))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305334 (= lt!150729 (Intermediate!2503 false resIndex!52 resX!52))))

(declare-fun b!305335 () Bool)

(declare-fun res!162659 () Bool)

(assert (=> b!305335 (=> (not res!162659) (not e!191748))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15538 (_ BitVec 32)) SeekEntryResult!2503)

(assert (=> b!305335 (= res!162659 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2503 i!1240)))))

(declare-fun b!305336 () Bool)

(declare-fun res!162664 () Bool)

(assert (=> b!305336 (=> (not res!162664) (not e!191745))))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!305336 (= res!162664 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7352 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!305337 () Bool)

(declare-fun res!162663 () Bool)

(assert (=> b!305337 (=> (not res!162663) (not e!191745))))

(assert (=> b!305337 (= res!162663 (and (= (select (arr!7352 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7704 a!3293))))))

(declare-fun b!305338 () Bool)

(assert (=> b!305338 (= e!191745 (not true))))

(assert (=> b!305338 (= index!1781 resIndex!52)))

(declare-fun lt!150731 () Unit!9393)

(assert (=> b!305338 (= lt!150731 e!191746)))

(declare-fun c!48940 () Bool)

(assert (=> b!305338 (= c!48940 (not (= resIndex!52 index!1781)))))

(declare-fun b!305339 () Bool)

(declare-fun res!162657 () Bool)

(assert (=> b!305339 (=> (not res!162657) (not e!191748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305339 (= res!162657 (validKeyInArray!0 k0!2441))))

(declare-fun b!305340 () Bool)

(declare-fun res!162666 () Bool)

(assert (=> b!305340 (=> (not res!162666) (not e!191745))))

(assert (=> b!305340 (= res!162666 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150729))))

(declare-fun b!305341 () Bool)

(assert (=> b!305341 false))

(declare-fun Unit!9395 () Unit!9393)

(assert (=> b!305341 (= e!191749 Unit!9395)))

(declare-fun res!162662 () Bool)

(assert (=> start!30536 (=> (not res!162662) (not e!191748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30536 (= res!162662 (validMask!0 mask!3709))))

(assert (=> start!30536 e!191748))

(declare-fun array_inv!5306 (array!15538) Bool)

(assert (=> start!30536 (array_inv!5306 a!3293)))

(assert (=> start!30536 true))

(declare-fun b!305342 () Bool)

(declare-fun res!162661 () Bool)

(assert (=> b!305342 (=> (not res!162661) (not e!191748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15538 (_ BitVec 32)) Bool)

(assert (=> b!305342 (= res!162661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305343 () Bool)

(declare-fun res!162665 () Bool)

(assert (=> b!305343 (=> (not res!162665) (not e!191748))))

(declare-fun arrayContainsKey!0 (array!15538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305343 (= res!162665 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305344 () Bool)

(declare-fun Unit!9396 () Unit!9393)

(assert (=> b!305344 (= e!191746 Unit!9396)))

(declare-fun b!305345 () Bool)

(assert (=> b!305345 false))

(declare-fun lt!150730 () SeekEntryResult!2503)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305345 (= lt!150730 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9397 () Unit!9393)

(assert (=> b!305345 (= e!191749 Unit!9397)))

(declare-fun b!305346 () Bool)

(declare-fun res!162660 () Bool)

(assert (=> b!305346 (=> (not res!162660) (not e!191748))))

(assert (=> b!305346 (= res!162660 (and (= (size!7704 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7704 a!3293))))))

(assert (= (and start!30536 res!162662) b!305346))

(assert (= (and b!305346 res!162660) b!305339))

(assert (= (and b!305339 res!162657) b!305343))

(assert (= (and b!305343 res!162665) b!305335))

(assert (= (and b!305335 res!162659) b!305342))

(assert (= (and b!305342 res!162661) b!305334))

(assert (= (and b!305334 res!162658) b!305337))

(assert (= (and b!305337 res!162663) b!305340))

(assert (= (and b!305340 res!162666) b!305336))

(assert (= (and b!305336 res!162664) b!305338))

(assert (= (and b!305338 c!48940) b!305333))

(assert (= (and b!305338 (not c!48940)) b!305344))

(assert (= (and b!305333 c!48941) b!305341))

(assert (= (and b!305333 (not c!48941)) b!305345))

(declare-fun m!316311 () Bool)

(assert (=> b!305345 m!316311))

(assert (=> b!305345 m!316311))

(declare-fun m!316313 () Bool)

(assert (=> b!305345 m!316313))

(declare-fun m!316315 () Bool)

(assert (=> b!305333 m!316315))

(declare-fun m!316317 () Bool)

(assert (=> b!305340 m!316317))

(declare-fun m!316319 () Bool)

(assert (=> b!305343 m!316319))

(assert (=> b!305336 m!316315))

(declare-fun m!316321 () Bool)

(assert (=> b!305334 m!316321))

(assert (=> b!305334 m!316321))

(declare-fun m!316323 () Bool)

(assert (=> b!305334 m!316323))

(declare-fun m!316325 () Bool)

(assert (=> b!305339 m!316325))

(declare-fun m!316327 () Bool)

(assert (=> b!305337 m!316327))

(declare-fun m!316329 () Bool)

(assert (=> b!305342 m!316329))

(declare-fun m!316331 () Bool)

(assert (=> start!30536 m!316331))

(declare-fun m!316333 () Bool)

(assert (=> start!30536 m!316333))

(declare-fun m!316335 () Bool)

(assert (=> b!305335 m!316335))

(check-sat (not b!305345) (not b!305340) (not b!305343) (not b!305335) (not b!305342) (not b!305339) (not b!305334) (not start!30536))
(check-sat)
