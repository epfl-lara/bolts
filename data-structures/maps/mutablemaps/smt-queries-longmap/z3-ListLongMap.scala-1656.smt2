; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30776 () Bool)

(assert start!30776)

(declare-fun b!308593 () Bool)

(declare-fun e!192919 () Bool)

(declare-fun e!192916 () Bool)

(assert (=> b!308593 (= e!192919 e!192916)))

(declare-fun res!165372 () Bool)

(assert (=> b!308593 (=> (not res!165372) (not e!192916))))

(declare-datatypes ((array!15727 0))(
  ( (array!15728 (arr!7445 (Array (_ BitVec 32) (_ BitVec 64))) (size!7797 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15727)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2596 0))(
  ( (MissingZero!2596 (index!12560 (_ BitVec 32))) (Found!2596 (index!12561 (_ BitVec 32))) (Intermediate!2596 (undefined!3408 Bool) (index!12562 (_ BitVec 32)) (x!30763 (_ BitVec 32))) (Undefined!2596) (MissingVacant!2596 (index!12563 (_ BitVec 32))) )
))
(declare-fun lt!151405 () SeekEntryResult!2596)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15727 (_ BitVec 32)) SeekEntryResult!2596)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308593 (= res!165372 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151405))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308593 (= lt!151405 (Intermediate!2596 false resIndex!52 resX!52))))

(declare-fun b!308595 () Bool)

(declare-fun res!165368 () Bool)

(assert (=> b!308595 (=> (not res!165368) (not e!192919))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308595 (= res!165368 (and (= (size!7797 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7797 a!3293))))))

(declare-fun b!308594 () Bool)

(declare-fun res!165367 () Bool)

(assert (=> b!308594 (=> (not res!165367) (not e!192919))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15727 (_ BitVec 32)) SeekEntryResult!2596)

(assert (=> b!308594 (= res!165367 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2596 i!1240)))))

(declare-fun res!165366 () Bool)

(assert (=> start!30776 (=> (not res!165366) (not e!192919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30776 (= res!165366 (validMask!0 mask!3709))))

(assert (=> start!30776 e!192919))

(declare-fun array_inv!5399 (array!15727) Bool)

(assert (=> start!30776 (array_inv!5399 a!3293)))

(assert (=> start!30776 true))

(declare-fun b!308596 () Bool)

(declare-fun res!165369 () Bool)

(assert (=> b!308596 (=> (not res!165369) (not e!192919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308596 (= res!165369 (validKeyInArray!0 k0!2441))))

(declare-fun b!308597 () Bool)

(declare-fun e!192917 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308597 (= e!192917 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!151406 () SeekEntryResult!2596)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308597 (= lt!151406 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308598 () Bool)

(assert (=> b!308598 (= e!192916 e!192917)))

(declare-fun res!165364 () Bool)

(assert (=> b!308598 (=> (not res!165364) (not e!192917))))

(assert (=> b!308598 (= res!165364 (and (= lt!151406 lt!151405) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7445 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308598 (= lt!151406 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308599 () Bool)

(declare-fun res!165365 () Bool)

(assert (=> b!308599 (=> (not res!165365) (not e!192916))))

(assert (=> b!308599 (= res!165365 (and (= (select (arr!7445 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7797 a!3293))))))

(declare-fun b!308600 () Bool)

(declare-fun res!165370 () Bool)

(assert (=> b!308600 (=> (not res!165370) (not e!192919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15727 (_ BitVec 32)) Bool)

(assert (=> b!308600 (= res!165370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308601 () Bool)

(declare-fun res!165371 () Bool)

(assert (=> b!308601 (=> (not res!165371) (not e!192919))))

(declare-fun arrayContainsKey!0 (array!15727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308601 (= res!165371 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30776 res!165366) b!308595))

(assert (= (and b!308595 res!165368) b!308596))

(assert (= (and b!308596 res!165369) b!308601))

(assert (= (and b!308601 res!165371) b!308594))

(assert (= (and b!308594 res!165367) b!308600))

(assert (= (and b!308600 res!165370) b!308593))

(assert (= (and b!308593 res!165372) b!308599))

(assert (= (and b!308599 res!165365) b!308598))

(assert (= (and b!308598 res!165364) b!308597))

(declare-fun m!318663 () Bool)

(assert (=> b!308598 m!318663))

(declare-fun m!318665 () Bool)

(assert (=> b!308598 m!318665))

(declare-fun m!318667 () Bool)

(assert (=> b!308593 m!318667))

(assert (=> b!308593 m!318667))

(declare-fun m!318669 () Bool)

(assert (=> b!308593 m!318669))

(declare-fun m!318671 () Bool)

(assert (=> start!30776 m!318671))

(declare-fun m!318673 () Bool)

(assert (=> start!30776 m!318673))

(declare-fun m!318675 () Bool)

(assert (=> b!308600 m!318675))

(declare-fun m!318677 () Bool)

(assert (=> b!308597 m!318677))

(assert (=> b!308597 m!318677))

(declare-fun m!318679 () Bool)

(assert (=> b!308597 m!318679))

(declare-fun m!318681 () Bool)

(assert (=> b!308599 m!318681))

(declare-fun m!318683 () Bool)

(assert (=> b!308594 m!318683))

(declare-fun m!318685 () Bool)

(assert (=> b!308596 m!318685))

(declare-fun m!318687 () Bool)

(assert (=> b!308601 m!318687))

(check-sat (not b!308601) (not b!308596) (not start!30776) (not b!308600) (not b!308597) (not b!308593) (not b!308598) (not b!308594))
(check-sat)
