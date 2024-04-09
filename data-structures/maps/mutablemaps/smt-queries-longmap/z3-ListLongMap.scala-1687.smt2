; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31016 () Bool)

(assert start!31016)

(declare-fun b!311514 () Bool)

(declare-fun e!194348 () Bool)

(assert (=> b!311514 (= e!194348 (not true))))

(declare-fun e!194350 () Bool)

(assert (=> b!311514 e!194350))

(declare-fun res!168126 () Bool)

(assert (=> b!311514 (=> (not res!168126) (not e!194350))))

(declare-datatypes ((array!15916 0))(
  ( (array!15917 (arr!7538 (Array (_ BitVec 32) (_ BitVec 64))) (size!7890 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15916)

(declare-datatypes ((SeekEntryResult!2689 0))(
  ( (MissingZero!2689 (index!12932 (_ BitVec 32))) (Found!2689 (index!12933 (_ BitVec 32))) (Intermediate!2689 (undefined!3501 Bool) (index!12934 (_ BitVec 32)) (x!31113 (_ BitVec 32))) (Undefined!2689) (MissingVacant!2689 (index!12935 (_ BitVec 32))) )
))
(declare-fun lt!152428 () SeekEntryResult!2689)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152429 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15916 (_ BitVec 32)) SeekEntryResult!2689)

(assert (=> b!311514 (= res!168126 (= lt!152428 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152429 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311514 (= lt!152429 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311515 () Bool)

(declare-fun res!168134 () Bool)

(declare-fun e!194347 () Bool)

(assert (=> b!311515 (=> (not res!168134) (not e!194347))))

(declare-fun arrayContainsKey!0 (array!15916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311515 (= res!168134 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311516 () Bool)

(declare-fun e!194349 () Bool)

(assert (=> b!311516 (= e!194347 e!194349)))

(declare-fun res!168133 () Bool)

(assert (=> b!311516 (=> (not res!168133) (not e!194349))))

(declare-fun lt!152426 () SeekEntryResult!2689)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311516 (= res!168133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152426))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311516 (= lt!152426 (Intermediate!2689 false resIndex!52 resX!52))))

(declare-fun b!311517 () Bool)

(declare-fun res!168130 () Bool)

(assert (=> b!311517 (=> (not res!168130) (not e!194347))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15916 (_ BitVec 32)) SeekEntryResult!2689)

(assert (=> b!311517 (= res!168130 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2689 i!1240)))))

(declare-fun res!168128 () Bool)

(assert (=> start!31016 (=> (not res!168128) (not e!194347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31016 (= res!168128 (validMask!0 mask!3709))))

(assert (=> start!31016 e!194347))

(declare-fun array_inv!5492 (array!15916) Bool)

(assert (=> start!31016 (array_inv!5492 a!3293)))

(assert (=> start!31016 true))

(declare-fun b!311518 () Bool)

(declare-fun lt!152427 () array!15916)

(assert (=> b!311518 (= e!194350 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152427 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152429 k0!2441 lt!152427 mask!3709)))))

(assert (=> b!311518 (= lt!152427 (array!15917 (store (arr!7538 a!3293) i!1240 k0!2441) (size!7890 a!3293)))))

(declare-fun b!311519 () Bool)

(declare-fun res!168131 () Bool)

(assert (=> b!311519 (=> (not res!168131) (not e!194347))))

(assert (=> b!311519 (= res!168131 (and (= (size!7890 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7890 a!3293))))))

(declare-fun b!311520 () Bool)

(declare-fun res!168129 () Bool)

(assert (=> b!311520 (=> (not res!168129) (not e!194349))))

(assert (=> b!311520 (= res!168129 (and (= (select (arr!7538 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7890 a!3293))))))

(declare-fun b!311521 () Bool)

(assert (=> b!311521 (= e!194349 e!194348)))

(declare-fun res!168135 () Bool)

(assert (=> b!311521 (=> (not res!168135) (not e!194348))))

(assert (=> b!311521 (= res!168135 (and (= lt!152428 lt!152426) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7538 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311521 (= lt!152428 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311522 () Bool)

(declare-fun res!168127 () Bool)

(assert (=> b!311522 (=> (not res!168127) (not e!194347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15916 (_ BitVec 32)) Bool)

(assert (=> b!311522 (= res!168127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311523 () Bool)

(declare-fun res!168132 () Bool)

(assert (=> b!311523 (=> (not res!168132) (not e!194347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311523 (= res!168132 (validKeyInArray!0 k0!2441))))

(assert (= (and start!31016 res!168128) b!311519))

(assert (= (and b!311519 res!168131) b!311523))

(assert (= (and b!311523 res!168132) b!311515))

(assert (= (and b!311515 res!168134) b!311517))

(assert (= (and b!311517 res!168130) b!311522))

(assert (= (and b!311522 res!168127) b!311516))

(assert (= (and b!311516 res!168133) b!311520))

(assert (= (and b!311520 res!168129) b!311521))

(assert (= (and b!311521 res!168135) b!311514))

(assert (= (and b!311514 res!168126) b!311518))

(declare-fun m!321549 () Bool)

(assert (=> b!311517 m!321549))

(declare-fun m!321551 () Bool)

(assert (=> b!311518 m!321551))

(declare-fun m!321553 () Bool)

(assert (=> b!311518 m!321553))

(declare-fun m!321555 () Bool)

(assert (=> b!311518 m!321555))

(declare-fun m!321557 () Bool)

(assert (=> b!311516 m!321557))

(assert (=> b!311516 m!321557))

(declare-fun m!321559 () Bool)

(assert (=> b!311516 m!321559))

(declare-fun m!321561 () Bool)

(assert (=> b!311514 m!321561))

(declare-fun m!321563 () Bool)

(assert (=> b!311514 m!321563))

(declare-fun m!321565 () Bool)

(assert (=> b!311515 m!321565))

(declare-fun m!321567 () Bool)

(assert (=> b!311521 m!321567))

(declare-fun m!321569 () Bool)

(assert (=> b!311521 m!321569))

(declare-fun m!321571 () Bool)

(assert (=> start!31016 m!321571))

(declare-fun m!321573 () Bool)

(assert (=> start!31016 m!321573))

(declare-fun m!321575 () Bool)

(assert (=> b!311523 m!321575))

(declare-fun m!321577 () Bool)

(assert (=> b!311522 m!321577))

(declare-fun m!321579 () Bool)

(assert (=> b!311520 m!321579))

(check-sat (not b!311516) (not b!311521) (not b!311514) (not b!311515) (not b!311518) (not start!31016) (not b!311522) (not b!311523) (not b!311517))
(check-sat)
