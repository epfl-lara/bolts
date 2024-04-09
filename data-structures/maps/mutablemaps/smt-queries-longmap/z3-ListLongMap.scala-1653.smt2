; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30758 () Bool)

(assert start!30758)

(declare-fun b!308350 () Bool)

(declare-fun res!165124 () Bool)

(declare-fun e!192808 () Bool)

(assert (=> b!308350 (=> (not res!165124) (not e!192808))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308350 (= res!165124 (validKeyInArray!0 k0!2441))))

(declare-fun b!308351 () Bool)

(declare-fun res!165121 () Bool)

(assert (=> b!308351 (=> (not res!165121) (not e!192808))))

(declare-datatypes ((array!15709 0))(
  ( (array!15710 (arr!7436 (Array (_ BitVec 32) (_ BitVec 64))) (size!7788 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15709)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15709 (_ BitVec 32)) Bool)

(assert (=> b!308351 (= res!165121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308352 () Bool)

(declare-fun e!192810 () Bool)

(declare-fun e!192811 () Bool)

(assert (=> b!308352 (= e!192810 e!192811)))

(declare-fun res!165126 () Bool)

(assert (=> b!308352 (=> (not res!165126) (not e!192811))))

(declare-datatypes ((SeekEntryResult!2587 0))(
  ( (MissingZero!2587 (index!12524 (_ BitVec 32))) (Found!2587 (index!12525 (_ BitVec 32))) (Intermediate!2587 (undefined!3399 Bool) (index!12526 (_ BitVec 32)) (x!30730 (_ BitVec 32))) (Undefined!2587) (MissingVacant!2587 (index!12527 (_ BitVec 32))) )
))
(declare-fun lt!151352 () SeekEntryResult!2587)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!151351 () SeekEntryResult!2587)

(assert (=> b!308352 (= res!165126 (and (= lt!151351 lt!151352) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7436 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15709 (_ BitVec 32)) SeekEntryResult!2587)

(assert (=> b!308352 (= lt!151351 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308353 () Bool)

(declare-fun res!165127 () Bool)

(assert (=> b!308353 (=> (not res!165127) (not e!192810))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308353 (= res!165127 (and (= (select (arr!7436 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7788 a!3293))))))

(declare-fun b!308354 () Bool)

(declare-fun res!165125 () Bool)

(assert (=> b!308354 (=> (not res!165125) (not e!192808))))

(assert (=> b!308354 (= res!165125 (and (= (size!7788 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7788 a!3293))))))

(declare-fun b!308355 () Bool)

(declare-fun res!165123 () Bool)

(assert (=> b!308355 (=> (not res!165123) (not e!192808))))

(declare-fun arrayContainsKey!0 (array!15709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308355 (= res!165123 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308357 () Bool)

(assert (=> b!308357 (= e!192811 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308357 (= lt!151351 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308358 () Bool)

(declare-fun res!165122 () Bool)

(assert (=> b!308358 (=> (not res!165122) (not e!192808))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15709 (_ BitVec 32)) SeekEntryResult!2587)

(assert (=> b!308358 (= res!165122 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2587 i!1240)))))

(declare-fun res!165129 () Bool)

(assert (=> start!30758 (=> (not res!165129) (not e!192808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30758 (= res!165129 (validMask!0 mask!3709))))

(assert (=> start!30758 e!192808))

(declare-fun array_inv!5390 (array!15709) Bool)

(assert (=> start!30758 (array_inv!5390 a!3293)))

(assert (=> start!30758 true))

(declare-fun b!308356 () Bool)

(assert (=> b!308356 (= e!192808 e!192810)))

(declare-fun res!165128 () Bool)

(assert (=> b!308356 (=> (not res!165128) (not e!192810))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308356 (= res!165128 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151352))))

(assert (=> b!308356 (= lt!151352 (Intermediate!2587 false resIndex!52 resX!52))))

(assert (= (and start!30758 res!165129) b!308354))

(assert (= (and b!308354 res!165125) b!308350))

(assert (= (and b!308350 res!165124) b!308355))

(assert (= (and b!308355 res!165123) b!308358))

(assert (= (and b!308358 res!165122) b!308351))

(assert (= (and b!308351 res!165121) b!308356))

(assert (= (and b!308356 res!165128) b!308353))

(assert (= (and b!308353 res!165127) b!308352))

(assert (= (and b!308352 res!165126) b!308357))

(declare-fun m!318429 () Bool)

(assert (=> b!308352 m!318429))

(declare-fun m!318431 () Bool)

(assert (=> b!308352 m!318431))

(declare-fun m!318433 () Bool)

(assert (=> b!308355 m!318433))

(declare-fun m!318435 () Bool)

(assert (=> b!308350 m!318435))

(declare-fun m!318437 () Bool)

(assert (=> b!308356 m!318437))

(assert (=> b!308356 m!318437))

(declare-fun m!318439 () Bool)

(assert (=> b!308356 m!318439))

(declare-fun m!318441 () Bool)

(assert (=> start!30758 m!318441))

(declare-fun m!318443 () Bool)

(assert (=> start!30758 m!318443))

(declare-fun m!318445 () Bool)

(assert (=> b!308357 m!318445))

(assert (=> b!308357 m!318445))

(declare-fun m!318447 () Bool)

(assert (=> b!308357 m!318447))

(declare-fun m!318449 () Bool)

(assert (=> b!308358 m!318449))

(declare-fun m!318451 () Bool)

(assert (=> b!308353 m!318451))

(declare-fun m!318453 () Bool)

(assert (=> b!308351 m!318453))

(check-sat (not start!30758) (not b!308351) (not b!308357) (not b!308358) (not b!308355) (not b!308352) (not b!308350) (not b!308356))
(check-sat)
