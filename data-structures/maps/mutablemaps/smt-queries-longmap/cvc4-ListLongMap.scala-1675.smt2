; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30946 () Bool)

(assert start!30946)

(declare-fun b!310464 () Bool)

(declare-fun e!193824 () Bool)

(declare-fun e!193822 () Bool)

(assert (=> b!310464 (= e!193824 e!193822)))

(declare-fun res!167085 () Bool)

(assert (=> b!310464 (=> (not res!167085) (not e!193822))))

(declare-datatypes ((SeekEntryResult!2654 0))(
  ( (MissingZero!2654 (index!12792 (_ BitVec 32))) (Found!2654 (index!12793 (_ BitVec 32))) (Intermediate!2654 (undefined!3466 Bool) (index!12794 (_ BitVec 32)) (x!30982 (_ BitVec 32))) (Undefined!2654) (MissingVacant!2654 (index!12795 (_ BitVec 32))) )
))
(declare-fun lt!152009 () SeekEntryResult!2654)

(declare-datatypes ((array!15846 0))(
  ( (array!15847 (arr!7503 (Array (_ BitVec 32) (_ BitVec 64))) (size!7855 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15846)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15846 (_ BitVec 32)) SeekEntryResult!2654)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310464 (= res!167085 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152009))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310464 (= lt!152009 (Intermediate!2654 false resIndex!52 resX!52))))

(declare-fun b!310465 () Bool)

(declare-fun e!193823 () Bool)

(assert (=> b!310465 (= e!193823 (not true))))

(declare-fun e!193821 () Bool)

(assert (=> b!310465 e!193821))

(declare-fun res!167079 () Bool)

(assert (=> b!310465 (=> (not res!167079) (not e!193821))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152007 () (_ BitVec 32))

(declare-fun lt!152006 () SeekEntryResult!2654)

(assert (=> b!310465 (= res!167079 (= lt!152006 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152007 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310465 (= lt!152007 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310466 () Bool)

(declare-fun res!167077 () Bool)

(assert (=> b!310466 (=> (not res!167077) (not e!193824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310466 (= res!167077 (validKeyInArray!0 k!2441))))

(declare-fun b!310467 () Bool)

(assert (=> b!310467 (= e!193822 e!193823)))

(declare-fun res!167082 () Bool)

(assert (=> b!310467 (=> (not res!167082) (not e!193823))))

(assert (=> b!310467 (= res!167082 (and (= lt!152006 lt!152009) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7503 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310467 (= lt!152006 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310468 () Bool)

(declare-fun res!167084 () Bool)

(assert (=> b!310468 (=> (not res!167084) (not e!193824))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310468 (= res!167084 (and (= (size!7855 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7855 a!3293))))))

(declare-fun b!310470 () Bool)

(declare-fun res!167081 () Bool)

(assert (=> b!310470 (=> (not res!167081) (not e!193824))))

(declare-fun arrayContainsKey!0 (array!15846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310470 (= res!167081 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310471 () Bool)

(declare-fun lt!152008 () array!15846)

(assert (=> b!310471 (= e!193821 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152008 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152007 k!2441 lt!152008 mask!3709)))))

(assert (=> b!310471 (= lt!152008 (array!15847 (store (arr!7503 a!3293) i!1240 k!2441) (size!7855 a!3293)))))

(declare-fun b!310472 () Bool)

(declare-fun res!167080 () Bool)

(assert (=> b!310472 (=> (not res!167080) (not e!193824))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15846 (_ BitVec 32)) SeekEntryResult!2654)

(assert (=> b!310472 (= res!167080 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2654 i!1240)))))

(declare-fun b!310473 () Bool)

(declare-fun res!167083 () Bool)

(assert (=> b!310473 (=> (not res!167083) (not e!193824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15846 (_ BitVec 32)) Bool)

(assert (=> b!310473 (= res!167083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310469 () Bool)

(declare-fun res!167076 () Bool)

(assert (=> b!310469 (=> (not res!167076) (not e!193822))))

(assert (=> b!310469 (= res!167076 (and (= (select (arr!7503 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7855 a!3293))))))

(declare-fun res!167078 () Bool)

(assert (=> start!30946 (=> (not res!167078) (not e!193824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30946 (= res!167078 (validMask!0 mask!3709))))

(assert (=> start!30946 e!193824))

(declare-fun array_inv!5457 (array!15846) Bool)

(assert (=> start!30946 (array_inv!5457 a!3293)))

(assert (=> start!30946 true))

(assert (= (and start!30946 res!167078) b!310468))

(assert (= (and b!310468 res!167084) b!310466))

(assert (= (and b!310466 res!167077) b!310470))

(assert (= (and b!310470 res!167081) b!310472))

(assert (= (and b!310472 res!167080) b!310473))

(assert (= (and b!310473 res!167083) b!310464))

(assert (= (and b!310464 res!167085) b!310469))

(assert (= (and b!310469 res!167076) b!310467))

(assert (= (and b!310467 res!167082) b!310465))

(assert (= (and b!310465 res!167079) b!310471))

(declare-fun m!320429 () Bool)

(assert (=> b!310473 m!320429))

(declare-fun m!320431 () Bool)

(assert (=> start!30946 m!320431))

(declare-fun m!320433 () Bool)

(assert (=> start!30946 m!320433))

(declare-fun m!320435 () Bool)

(assert (=> b!310471 m!320435))

(declare-fun m!320437 () Bool)

(assert (=> b!310471 m!320437))

(declare-fun m!320439 () Bool)

(assert (=> b!310471 m!320439))

(declare-fun m!320441 () Bool)

(assert (=> b!310467 m!320441))

(declare-fun m!320443 () Bool)

(assert (=> b!310467 m!320443))

(declare-fun m!320445 () Bool)

(assert (=> b!310466 m!320445))

(declare-fun m!320447 () Bool)

(assert (=> b!310472 m!320447))

(declare-fun m!320449 () Bool)

(assert (=> b!310469 m!320449))

(declare-fun m!320451 () Bool)

(assert (=> b!310470 m!320451))

(declare-fun m!320453 () Bool)

(assert (=> b!310465 m!320453))

(declare-fun m!320455 () Bool)

(assert (=> b!310465 m!320455))

(declare-fun m!320457 () Bool)

(assert (=> b!310464 m!320457))

(assert (=> b!310464 m!320457))

(declare-fun m!320459 () Bool)

(assert (=> b!310464 m!320459))

(push 1)

(assert (not b!310471))

(assert (not b!310467))

