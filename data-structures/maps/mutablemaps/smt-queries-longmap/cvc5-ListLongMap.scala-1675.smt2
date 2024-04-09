; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30942 () Bool)

(assert start!30942)

(declare-fun b!310404 () Bool)

(declare-fun res!167016 () Bool)

(declare-fun e!193792 () Bool)

(assert (=> b!310404 (=> (not res!167016) (not e!193792))))

(declare-datatypes ((array!15842 0))(
  ( (array!15843 (arr!7501 (Array (_ BitVec 32) (_ BitVec 64))) (size!7853 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15842)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310404 (= res!167016 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310405 () Bool)

(declare-fun res!167024 () Bool)

(declare-fun e!193791 () Bool)

(assert (=> b!310405 (=> (not res!167024) (not e!193791))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310405 (= res!167024 (and (= (select (arr!7501 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7853 a!3293))))))

(declare-fun res!167021 () Bool)

(assert (=> start!30942 (=> (not res!167021) (not e!193792))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30942 (= res!167021 (validMask!0 mask!3709))))

(assert (=> start!30942 e!193792))

(declare-fun array_inv!5455 (array!15842) Bool)

(assert (=> start!30942 (array_inv!5455 a!3293)))

(assert (=> start!30942 true))

(declare-fun b!310406 () Bool)

(declare-fun res!167023 () Bool)

(assert (=> b!310406 (=> (not res!167023) (not e!193792))))

(declare-datatypes ((SeekEntryResult!2652 0))(
  ( (MissingZero!2652 (index!12784 (_ BitVec 32))) (Found!2652 (index!12785 (_ BitVec 32))) (Intermediate!2652 (undefined!3464 Bool) (index!12786 (_ BitVec 32)) (x!30980 (_ BitVec 32))) (Undefined!2652) (MissingVacant!2652 (index!12787 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15842 (_ BitVec 32)) SeekEntryResult!2652)

(assert (=> b!310406 (= res!167023 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2652 i!1240)))))

(declare-fun b!310407 () Bool)

(declare-fun e!193793 () Bool)

(assert (=> b!310407 (= e!193791 e!193793)))

(declare-fun res!167019 () Bool)

(assert (=> b!310407 (=> (not res!167019) (not e!193793))))

(declare-fun lt!151982 () SeekEntryResult!2652)

(declare-fun lt!151984 () SeekEntryResult!2652)

(assert (=> b!310407 (= res!167019 (and (= lt!151984 lt!151982) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7501 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15842 (_ BitVec 32)) SeekEntryResult!2652)

(assert (=> b!310407 (= lt!151984 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310408 () Bool)

(declare-fun res!167020 () Bool)

(assert (=> b!310408 (=> (not res!167020) (not e!193792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15842 (_ BitVec 32)) Bool)

(assert (=> b!310408 (= res!167020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310409 () Bool)

(declare-fun res!167018 () Bool)

(assert (=> b!310409 (=> (not res!167018) (not e!193792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310409 (= res!167018 (validKeyInArray!0 k!2441))))

(declare-fun b!310410 () Bool)

(assert (=> b!310410 (= e!193793 (not true))))

(declare-fun e!193794 () Bool)

(assert (=> b!310410 e!193794))

(declare-fun res!167022 () Bool)

(assert (=> b!310410 (=> (not res!167022) (not e!193794))))

(declare-fun lt!151985 () (_ BitVec 32))

(assert (=> b!310410 (= res!167022 (= lt!151984 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151985 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310410 (= lt!151985 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310411 () Bool)

(declare-fun res!167025 () Bool)

(assert (=> b!310411 (=> (not res!167025) (not e!193792))))

(assert (=> b!310411 (= res!167025 (and (= (size!7853 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7853 a!3293))))))

(declare-fun lt!151983 () array!15842)

(declare-fun b!310412 () Bool)

(assert (=> b!310412 (= e!193794 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151983 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151985 k!2441 lt!151983 mask!3709)))))

(assert (=> b!310412 (= lt!151983 (array!15843 (store (arr!7501 a!3293) i!1240 k!2441) (size!7853 a!3293)))))

(declare-fun b!310413 () Bool)

(assert (=> b!310413 (= e!193792 e!193791)))

(declare-fun res!167017 () Bool)

(assert (=> b!310413 (=> (not res!167017) (not e!193791))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310413 (= res!167017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151982))))

(assert (=> b!310413 (= lt!151982 (Intermediate!2652 false resIndex!52 resX!52))))

(assert (= (and start!30942 res!167021) b!310411))

(assert (= (and b!310411 res!167025) b!310409))

(assert (= (and b!310409 res!167018) b!310404))

(assert (= (and b!310404 res!167016) b!310406))

(assert (= (and b!310406 res!167023) b!310408))

(assert (= (and b!310408 res!167020) b!310413))

(assert (= (and b!310413 res!167017) b!310405))

(assert (= (and b!310405 res!167024) b!310407))

(assert (= (and b!310407 res!167019) b!310410))

(assert (= (and b!310410 res!167022) b!310412))

(declare-fun m!320365 () Bool)

(assert (=> b!310412 m!320365))

(declare-fun m!320367 () Bool)

(assert (=> b!310412 m!320367))

(declare-fun m!320369 () Bool)

(assert (=> b!310412 m!320369))

(declare-fun m!320371 () Bool)

(assert (=> b!310410 m!320371))

(declare-fun m!320373 () Bool)

(assert (=> b!310410 m!320373))

(declare-fun m!320375 () Bool)

(assert (=> b!310413 m!320375))

(assert (=> b!310413 m!320375))

(declare-fun m!320377 () Bool)

(assert (=> b!310413 m!320377))

(declare-fun m!320379 () Bool)

(assert (=> start!30942 m!320379))

(declare-fun m!320381 () Bool)

(assert (=> start!30942 m!320381))

(declare-fun m!320383 () Bool)

(assert (=> b!310404 m!320383))

(declare-fun m!320385 () Bool)

(assert (=> b!310406 m!320385))

(declare-fun m!320387 () Bool)

(assert (=> b!310405 m!320387))

(declare-fun m!320389 () Bool)

(assert (=> b!310409 m!320389))

(declare-fun m!320391 () Bool)

(assert (=> b!310407 m!320391))

(declare-fun m!320393 () Bool)

(assert (=> b!310407 m!320393))

(declare-fun m!320395 () Bool)

(assert (=> b!310408 m!320395))

(push 1)

