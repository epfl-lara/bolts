; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30434 () Bool)

(assert start!30434)

(declare-fun b!304417 () Bool)

(declare-fun res!161925 () Bool)

(declare-fun e!191308 () Bool)

(assert (=> b!304417 (=> (not res!161925) (not e!191308))))

(declare-datatypes ((array!15487 0))(
  ( (array!15488 (arr!7328 (Array (_ BitVec 32) (_ BitVec 64))) (size!7680 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15487)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304417 (= res!161925 (and (= (select (arr!7328 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7680 a!3293))))))

(declare-fun b!304418 () Bool)

(declare-fun res!161927 () Bool)

(declare-fun e!191305 () Bool)

(assert (=> b!304418 (=> (not res!161927) (not e!191305))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304418 (= res!161927 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304419 () Bool)

(declare-fun e!191306 () Bool)

(assert (=> b!304419 (= e!191308 e!191306)))

(declare-fun res!161923 () Bool)

(assert (=> b!304419 (=> (not res!161923) (not e!191306))))

(declare-datatypes ((SeekEntryResult!2479 0))(
  ( (MissingZero!2479 (index!12092 (_ BitVec 32))) (Found!2479 (index!12093 (_ BitVec 32))) (Intermediate!2479 (undefined!3291 Bool) (index!12094 (_ BitVec 32)) (x!30316 (_ BitVec 32))) (Undefined!2479) (MissingVacant!2479 (index!12095 (_ BitVec 32))) )
))
(declare-fun lt!150451 () SeekEntryResult!2479)

(declare-fun lt!150452 () SeekEntryResult!2479)

(assert (=> b!304419 (= res!161923 (and (= lt!150452 lt!150451) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7328 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7328 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7328 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15487 (_ BitVec 32)) SeekEntryResult!2479)

(assert (=> b!304419 (= lt!150452 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!304420 () Bool)

(declare-fun res!161928 () Bool)

(assert (=> b!304420 (=> (not res!161928) (not e!191305))))

(assert (=> b!304420 (= res!161928 (and (= (size!7680 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7680 a!3293))))))

(declare-fun b!304421 () Bool)

(assert (=> b!304421 (= e!191305 e!191308)))

(declare-fun res!161920 () Bool)

(assert (=> b!304421 (=> (not res!161920) (not e!191308))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304421 (= res!161920 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150451))))

(assert (=> b!304421 (= lt!150451 (Intermediate!2479 false resIndex!52 resX!52))))

(declare-fun b!304422 () Bool)

(declare-fun res!161921 () Bool)

(assert (=> b!304422 (=> (not res!161921) (not e!191305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304422 (= res!161921 (validKeyInArray!0 k0!2441))))

(declare-fun b!304423 () Bool)

(declare-fun res!161926 () Bool)

(assert (=> b!304423 (=> (not res!161926) (not e!191305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15487 (_ BitVec 32)) Bool)

(assert (=> b!304423 (= res!161926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!161924 () Bool)

(assert (=> start!30434 (=> (not res!161924) (not e!191305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30434 (= res!161924 (validMask!0 mask!3709))))

(assert (=> start!30434 e!191305))

(declare-fun array_inv!5282 (array!15487) Bool)

(assert (=> start!30434 (array_inv!5282 a!3293)))

(assert (=> start!30434 true))

(declare-fun b!304424 () Bool)

(assert (=> b!304424 (= e!191306 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304424 (= lt!150452 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304425 () Bool)

(declare-fun res!161922 () Bool)

(assert (=> b!304425 (=> (not res!161922) (not e!191305))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15487 (_ BitVec 32)) SeekEntryResult!2479)

(assert (=> b!304425 (= res!161922 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2479 i!1240)))))

(assert (= (and start!30434 res!161924) b!304420))

(assert (= (and b!304420 res!161928) b!304422))

(assert (= (and b!304422 res!161921) b!304418))

(assert (= (and b!304418 res!161927) b!304425))

(assert (= (and b!304425 res!161922) b!304423))

(assert (= (and b!304423 res!161926) b!304421))

(assert (= (and b!304421 res!161920) b!304417))

(assert (= (and b!304417 res!161925) b!304419))

(assert (= (and b!304419 res!161923) b!304424))

(declare-fun m!315549 () Bool)

(assert (=> b!304421 m!315549))

(assert (=> b!304421 m!315549))

(declare-fun m!315551 () Bool)

(assert (=> b!304421 m!315551))

(declare-fun m!315553 () Bool)

(assert (=> b!304418 m!315553))

(declare-fun m!315555 () Bool)

(assert (=> b!304419 m!315555))

(declare-fun m!315557 () Bool)

(assert (=> b!304419 m!315557))

(declare-fun m!315559 () Bool)

(assert (=> b!304422 m!315559))

(declare-fun m!315561 () Bool)

(assert (=> start!30434 m!315561))

(declare-fun m!315563 () Bool)

(assert (=> start!30434 m!315563))

(declare-fun m!315565 () Bool)

(assert (=> b!304423 m!315565))

(declare-fun m!315567 () Bool)

(assert (=> b!304424 m!315567))

(assert (=> b!304424 m!315567))

(declare-fun m!315569 () Bool)

(assert (=> b!304424 m!315569))

(declare-fun m!315571 () Bool)

(assert (=> b!304417 m!315571))

(declare-fun m!315573 () Bool)

(assert (=> b!304425 m!315573))

(check-sat (not b!304418) (not b!304419) (not b!304425) (not start!30434) (not b!304423) (not b!304421) (not b!304422) (not b!304424))
(check-sat)
