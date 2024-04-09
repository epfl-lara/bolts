; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30764 () Bool)

(assert start!30764)

(declare-fun b!308431 () Bool)

(declare-fun res!165203 () Bool)

(declare-fun e!192847 () Bool)

(assert (=> b!308431 (=> (not res!165203) (not e!192847))))

(declare-datatypes ((array!15715 0))(
  ( (array!15716 (arr!7439 (Array (_ BitVec 32) (_ BitVec 64))) (size!7791 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15715)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15715 (_ BitVec 32)) Bool)

(assert (=> b!308431 (= res!165203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308432 () Bool)

(declare-fun res!165209 () Bool)

(assert (=> b!308432 (=> (not res!165209) (not e!192847))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308432 (= res!165209 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308433 () Bool)

(declare-fun e!192846 () Bool)

(assert (=> b!308433 (= e!192847 e!192846)))

(declare-fun res!165210 () Bool)

(assert (=> b!308433 (=> (not res!165210) (not e!192846))))

(declare-datatypes ((SeekEntryResult!2590 0))(
  ( (MissingZero!2590 (index!12536 (_ BitVec 32))) (Found!2590 (index!12537 (_ BitVec 32))) (Intermediate!2590 (undefined!3402 Bool) (index!12538 (_ BitVec 32)) (x!30741 (_ BitVec 32))) (Undefined!2590) (MissingVacant!2590 (index!12539 (_ BitVec 32))) )
))
(declare-fun lt!151369 () SeekEntryResult!2590)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15715 (_ BitVec 32)) SeekEntryResult!2590)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308433 (= res!165210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151369))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308433 (= lt!151369 (Intermediate!2590 false resIndex!52 resX!52))))

(declare-fun b!308434 () Bool)

(declare-fun e!192845 () Bool)

(assert (=> b!308434 (= e!192845 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun lt!151370 () SeekEntryResult!2590)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308434 (= lt!151370 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308435 () Bool)

(declare-fun res!165202 () Bool)

(assert (=> b!308435 (=> (not res!165202) (not e!192847))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15715 (_ BitVec 32)) SeekEntryResult!2590)

(assert (=> b!308435 (= res!165202 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2590 i!1240)))))

(declare-fun b!308437 () Bool)

(declare-fun res!165204 () Bool)

(assert (=> b!308437 (=> (not res!165204) (not e!192846))))

(assert (=> b!308437 (= res!165204 (and (= (select (arr!7439 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7791 a!3293))))))

(declare-fun b!308438 () Bool)

(assert (=> b!308438 (= e!192846 e!192845)))

(declare-fun res!165205 () Bool)

(assert (=> b!308438 (=> (not res!165205) (not e!192845))))

(assert (=> b!308438 (= res!165205 (and (= lt!151370 lt!151369) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7439 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308438 (= lt!151370 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308439 () Bool)

(declare-fun res!165208 () Bool)

(assert (=> b!308439 (=> (not res!165208) (not e!192847))))

(assert (=> b!308439 (= res!165208 (and (= (size!7791 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7791 a!3293))))))

(declare-fun res!165206 () Bool)

(assert (=> start!30764 (=> (not res!165206) (not e!192847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30764 (= res!165206 (validMask!0 mask!3709))))

(assert (=> start!30764 e!192847))

(declare-fun array_inv!5393 (array!15715) Bool)

(assert (=> start!30764 (array_inv!5393 a!3293)))

(assert (=> start!30764 true))

(declare-fun b!308436 () Bool)

(declare-fun res!165207 () Bool)

(assert (=> b!308436 (=> (not res!165207) (not e!192847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308436 (= res!165207 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30764 res!165206) b!308439))

(assert (= (and b!308439 res!165208) b!308436))

(assert (= (and b!308436 res!165207) b!308432))

(assert (= (and b!308432 res!165209) b!308435))

(assert (= (and b!308435 res!165202) b!308431))

(assert (= (and b!308431 res!165203) b!308433))

(assert (= (and b!308433 res!165210) b!308437))

(assert (= (and b!308437 res!165204) b!308438))

(assert (= (and b!308438 res!165205) b!308434))

(declare-fun m!318507 () Bool)

(assert (=> b!308436 m!318507))

(declare-fun m!318509 () Bool)

(assert (=> b!308431 m!318509))

(declare-fun m!318511 () Bool)

(assert (=> b!308432 m!318511))

(declare-fun m!318513 () Bool)

(assert (=> start!30764 m!318513))

(declare-fun m!318515 () Bool)

(assert (=> start!30764 m!318515))

(declare-fun m!318517 () Bool)

(assert (=> b!308435 m!318517))

(declare-fun m!318519 () Bool)

(assert (=> b!308433 m!318519))

(assert (=> b!308433 m!318519))

(declare-fun m!318521 () Bool)

(assert (=> b!308433 m!318521))

(declare-fun m!318523 () Bool)

(assert (=> b!308437 m!318523))

(declare-fun m!318525 () Bool)

(assert (=> b!308438 m!318525))

(declare-fun m!318527 () Bool)

(assert (=> b!308438 m!318527))

(declare-fun m!318529 () Bool)

(assert (=> b!308434 m!318529))

(assert (=> b!308434 m!318529))

(declare-fun m!318531 () Bool)

(assert (=> b!308434 m!318531))

(check-sat (not b!308435) (not b!308433) (not start!30764) (not b!308432) (not b!308436) (not b!308431) (not b!308434) (not b!308438))
(check-sat)
