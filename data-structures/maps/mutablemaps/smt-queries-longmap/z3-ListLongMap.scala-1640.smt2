; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30626 () Bool)

(assert start!30626)

(declare-fun b!307045 () Bool)

(declare-fun res!163963 () Bool)

(declare-fun e!192338 () Bool)

(assert (=> b!307045 (=> (not res!163963) (not e!192338))))

(declare-datatypes ((array!15628 0))(
  ( (array!15629 (arr!7397 (Array (_ BitVec 32) (_ BitVec 64))) (size!7749 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15628)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307045 (= res!163963 (and (= (size!7749 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7749 a!3293))))))

(declare-fun b!307046 () Bool)

(declare-fun res!163965 () Bool)

(declare-fun e!192340 () Bool)

(assert (=> b!307046 (=> (not res!163965) (not e!192340))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2548 0))(
  ( (MissingZero!2548 (index!12368 (_ BitVec 32))) (Found!2548 (index!12369 (_ BitVec 32))) (Intermediate!2548 (undefined!3360 Bool) (index!12370 (_ BitVec 32)) (x!30578 (_ BitVec 32))) (Undefined!2548) (MissingVacant!2548 (index!12371 (_ BitVec 32))) )
))
(declare-fun lt!151070 () SeekEntryResult!2548)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15628 (_ BitVec 32)) SeekEntryResult!2548)

(assert (=> b!307046 (= res!163965 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151070))))

(declare-fun b!307047 () Bool)

(declare-fun res!163961 () Bool)

(assert (=> b!307047 (=> (not res!163961) (not e!192338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15628 (_ BitVec 32)) Bool)

(assert (=> b!307047 (= res!163961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307048 () Bool)

(declare-fun res!163964 () Bool)

(assert (=> b!307048 (=> (not res!163964) (not e!192338))))

(declare-fun arrayContainsKey!0 (array!15628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307048 (= res!163964 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307049 () Bool)

(declare-fun res!163958 () Bool)

(assert (=> b!307049 (=> (not res!163958) (not e!192338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307049 (= res!163958 (validKeyInArray!0 k0!2441))))

(declare-fun b!307050 () Bool)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307050 (= e!192340 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7397 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!307051 () Bool)

(declare-fun res!163957 () Bool)

(assert (=> b!307051 (=> (not res!163957) (not e!192338))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15628 (_ BitVec 32)) SeekEntryResult!2548)

(assert (=> b!307051 (= res!163957 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2548 i!1240)))))

(declare-fun res!163959 () Bool)

(assert (=> start!30626 (=> (not res!163959) (not e!192338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30626 (= res!163959 (validMask!0 mask!3709))))

(assert (=> start!30626 e!192338))

(declare-fun array_inv!5351 (array!15628) Bool)

(assert (=> start!30626 (array_inv!5351 a!3293)))

(assert (=> start!30626 true))

(declare-fun b!307052 () Bool)

(assert (=> b!307052 (= e!192338 e!192340)))

(declare-fun res!163962 () Bool)

(assert (=> b!307052 (=> (not res!163962) (not e!192340))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307052 (= res!163962 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151070))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307052 (= lt!151070 (Intermediate!2548 false resIndex!52 resX!52))))

(declare-fun b!307053 () Bool)

(declare-fun res!163960 () Bool)

(assert (=> b!307053 (=> (not res!163960) (not e!192340))))

(assert (=> b!307053 (= res!163960 (and (= (select (arr!7397 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7749 a!3293))))))

(assert (= (and start!30626 res!163959) b!307045))

(assert (= (and b!307045 res!163963) b!307049))

(assert (= (and b!307049 res!163958) b!307048))

(assert (= (and b!307048 res!163964) b!307051))

(assert (= (and b!307051 res!163957) b!307047))

(assert (= (and b!307047 res!163961) b!307052))

(assert (= (and b!307052 res!163962) b!307053))

(assert (= (and b!307053 res!163960) b!307046))

(assert (= (and b!307046 res!163965) b!307050))

(declare-fun m!317429 () Bool)

(assert (=> start!30626 m!317429))

(declare-fun m!317431 () Bool)

(assert (=> start!30626 m!317431))

(declare-fun m!317433 () Bool)

(assert (=> b!307048 m!317433))

(declare-fun m!317435 () Bool)

(assert (=> b!307046 m!317435))

(declare-fun m!317437 () Bool)

(assert (=> b!307047 m!317437))

(declare-fun m!317439 () Bool)

(assert (=> b!307052 m!317439))

(assert (=> b!307052 m!317439))

(declare-fun m!317441 () Bool)

(assert (=> b!307052 m!317441))

(declare-fun m!317443 () Bool)

(assert (=> b!307051 m!317443))

(declare-fun m!317445 () Bool)

(assert (=> b!307053 m!317445))

(declare-fun m!317447 () Bool)

(assert (=> b!307049 m!317447))

(declare-fun m!317449 () Bool)

(assert (=> b!307050 m!317449))

(check-sat (not b!307049) (not start!30626) (not b!307046) (not b!307052) (not b!307051) (not b!307048) (not b!307047))
(check-sat)
