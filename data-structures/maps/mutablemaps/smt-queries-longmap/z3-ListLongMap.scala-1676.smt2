; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30950 () Bool)

(assert start!30950)

(declare-fun b!310524 () Bool)

(declare-fun res!167144 () Bool)

(declare-fun e!193853 () Bool)

(assert (=> b!310524 (=> (not res!167144) (not e!193853))))

(declare-datatypes ((array!15850 0))(
  ( (array!15851 (arr!7505 (Array (_ BitVec 32) (_ BitVec 64))) (size!7857 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15850)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15850 (_ BitVec 32)) Bool)

(assert (=> b!310524 (= res!167144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310525 () Bool)

(declare-fun res!167136 () Bool)

(assert (=> b!310525 (=> (not res!167136) (not e!193853))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2656 0))(
  ( (MissingZero!2656 (index!12800 (_ BitVec 32))) (Found!2656 (index!12801 (_ BitVec 32))) (Intermediate!2656 (undefined!3468 Bool) (index!12802 (_ BitVec 32)) (x!30992 (_ BitVec 32))) (Undefined!2656) (MissingVacant!2656 (index!12803 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15850 (_ BitVec 32)) SeekEntryResult!2656)

(assert (=> b!310525 (= res!167136 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2656 i!1240)))))

(declare-fun b!310526 () Bool)

(declare-fun res!167142 () Bool)

(assert (=> b!310526 (=> (not res!167142) (not e!193853))))

(assert (=> b!310526 (= res!167142 (and (= (size!7857 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7857 a!3293))))))

(declare-fun b!310527 () Bool)

(declare-fun res!167141 () Bool)

(assert (=> b!310527 (=> (not res!167141) (not e!193853))))

(declare-fun arrayContainsKey!0 (array!15850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310527 (= res!167141 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310529 () Bool)

(declare-fun e!193855 () Bool)

(assert (=> b!310529 (= e!193855 (not true))))

(declare-fun e!193852 () Bool)

(assert (=> b!310529 e!193852))

(declare-fun res!167143 () Bool)

(assert (=> b!310529 (=> (not res!167143) (not e!193852))))

(declare-fun lt!152031 () SeekEntryResult!2656)

(declare-fun lt!152033 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15850 (_ BitVec 32)) SeekEntryResult!2656)

(assert (=> b!310529 (= res!167143 (= lt!152031 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152033 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310529 (= lt!152033 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310530 () Bool)

(declare-fun res!167139 () Bool)

(assert (=> b!310530 (=> (not res!167139) (not e!193853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310530 (= res!167139 (validKeyInArray!0 k0!2441))))

(declare-fun b!310531 () Bool)

(declare-fun e!193851 () Bool)

(assert (=> b!310531 (= e!193853 e!193851)))

(declare-fun res!167137 () Bool)

(assert (=> b!310531 (=> (not res!167137) (not e!193851))))

(declare-fun lt!152032 () SeekEntryResult!2656)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310531 (= res!167137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152032))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310531 (= lt!152032 (Intermediate!2656 false resIndex!52 resX!52))))

(declare-fun b!310532 () Bool)

(declare-fun res!167140 () Bool)

(assert (=> b!310532 (=> (not res!167140) (not e!193851))))

(assert (=> b!310532 (= res!167140 (and (= (select (arr!7505 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7857 a!3293))))))

(declare-fun b!310533 () Bool)

(declare-fun lt!152030 () array!15850)

(assert (=> b!310533 (= e!193852 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152030 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152033 k0!2441 lt!152030 mask!3709)))))

(assert (=> b!310533 (= lt!152030 (array!15851 (store (arr!7505 a!3293) i!1240 k0!2441) (size!7857 a!3293)))))

(declare-fun b!310528 () Bool)

(assert (=> b!310528 (= e!193851 e!193855)))

(declare-fun res!167145 () Bool)

(assert (=> b!310528 (=> (not res!167145) (not e!193855))))

(assert (=> b!310528 (= res!167145 (and (= lt!152031 lt!152032) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7505 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310528 (= lt!152031 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!167138 () Bool)

(assert (=> start!30950 (=> (not res!167138) (not e!193853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30950 (= res!167138 (validMask!0 mask!3709))))

(assert (=> start!30950 e!193853))

(declare-fun array_inv!5459 (array!15850) Bool)

(assert (=> start!30950 (array_inv!5459 a!3293)))

(assert (=> start!30950 true))

(assert (= (and start!30950 res!167138) b!310526))

(assert (= (and b!310526 res!167142) b!310530))

(assert (= (and b!310530 res!167139) b!310527))

(assert (= (and b!310527 res!167141) b!310525))

(assert (= (and b!310525 res!167136) b!310524))

(assert (= (and b!310524 res!167144) b!310531))

(assert (= (and b!310531 res!167137) b!310532))

(assert (= (and b!310532 res!167140) b!310528))

(assert (= (and b!310528 res!167145) b!310529))

(assert (= (and b!310529 res!167143) b!310533))

(declare-fun m!320493 () Bool)

(assert (=> start!30950 m!320493))

(declare-fun m!320495 () Bool)

(assert (=> start!30950 m!320495))

(declare-fun m!320497 () Bool)

(assert (=> b!310528 m!320497))

(declare-fun m!320499 () Bool)

(assert (=> b!310528 m!320499))

(declare-fun m!320501 () Bool)

(assert (=> b!310525 m!320501))

(declare-fun m!320503 () Bool)

(assert (=> b!310529 m!320503))

(declare-fun m!320505 () Bool)

(assert (=> b!310529 m!320505))

(declare-fun m!320507 () Bool)

(assert (=> b!310532 m!320507))

(declare-fun m!320509 () Bool)

(assert (=> b!310524 m!320509))

(declare-fun m!320511 () Bool)

(assert (=> b!310530 m!320511))

(declare-fun m!320513 () Bool)

(assert (=> b!310527 m!320513))

(declare-fun m!320515 () Bool)

(assert (=> b!310533 m!320515))

(declare-fun m!320517 () Bool)

(assert (=> b!310533 m!320517))

(declare-fun m!320519 () Bool)

(assert (=> b!310533 m!320519))

(declare-fun m!320521 () Bool)

(assert (=> b!310531 m!320521))

(assert (=> b!310531 m!320521))

(declare-fun m!320523 () Bool)

(assert (=> b!310531 m!320523))

(check-sat (not b!310529) (not b!310527) (not b!310528) (not b!310533) (not b!310530) (not b!310524) (not b!310531) (not b!310525) (not start!30950))
(check-sat)
