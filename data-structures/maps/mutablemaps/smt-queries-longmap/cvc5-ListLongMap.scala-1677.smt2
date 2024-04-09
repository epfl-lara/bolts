; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30954 () Bool)

(assert start!30954)

(declare-fun b!310585 () Bool)

(declare-fun res!167200 () Bool)

(declare-fun e!193884 () Bool)

(assert (=> b!310585 (=> (not res!167200) (not e!193884))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310585 (= res!167200 (validKeyInArray!0 k!2441))))

(declare-fun b!310586 () Bool)

(declare-fun e!193885 () Bool)

(assert (=> b!310586 (= e!193885 (not true))))

(declare-fun e!193883 () Bool)

(assert (=> b!310586 e!193883))

(declare-fun res!167196 () Bool)

(assert (=> b!310586 (=> (not res!167196) (not e!193883))))

(declare-datatypes ((array!15854 0))(
  ( (array!15855 (arr!7507 (Array (_ BitVec 32) (_ BitVec 64))) (size!7859 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15854)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152055 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2658 0))(
  ( (MissingZero!2658 (index!12808 (_ BitVec 32))) (Found!2658 (index!12809 (_ BitVec 32))) (Intermediate!2658 (undefined!3470 Bool) (index!12810 (_ BitVec 32)) (x!31002 (_ BitVec 32))) (Undefined!2658) (MissingVacant!2658 (index!12811 (_ BitVec 32))) )
))
(declare-fun lt!152057 () SeekEntryResult!2658)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15854 (_ BitVec 32)) SeekEntryResult!2658)

(assert (=> b!310586 (= res!167196 (= lt!152057 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152055 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310586 (= lt!152055 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310587 () Bool)

(declare-fun res!167202 () Bool)

(assert (=> b!310587 (=> (not res!167202) (not e!193884))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310587 (= res!167202 (and (= (size!7859 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7859 a!3293))))))

(declare-fun b!310588 () Bool)

(declare-fun res!167201 () Bool)

(assert (=> b!310588 (=> (not res!167201) (not e!193884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15854 (_ BitVec 32)) Bool)

(assert (=> b!310588 (= res!167201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310589 () Bool)

(declare-fun res!167199 () Bool)

(assert (=> b!310589 (=> (not res!167199) (not e!193884))))

(declare-fun arrayContainsKey!0 (array!15854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310589 (= res!167199 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun lt!152054 () array!15854)

(declare-fun b!310590 () Bool)

(assert (=> b!310590 (= e!193883 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152054 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152055 k!2441 lt!152054 mask!3709)))))

(assert (=> b!310590 (= lt!152054 (array!15855 (store (arr!7507 a!3293) i!1240 k!2441) (size!7859 a!3293)))))

(declare-fun b!310591 () Bool)

(declare-fun e!193881 () Bool)

(assert (=> b!310591 (= e!193881 e!193885)))

(declare-fun res!167204 () Bool)

(assert (=> b!310591 (=> (not res!167204) (not e!193885))))

(declare-fun lt!152056 () SeekEntryResult!2658)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310591 (= res!167204 (and (= lt!152057 lt!152056) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7507 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310591 (= lt!152057 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310592 () Bool)

(declare-fun res!167198 () Bool)

(assert (=> b!310592 (=> (not res!167198) (not e!193884))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15854 (_ BitVec 32)) SeekEntryResult!2658)

(assert (=> b!310592 (= res!167198 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2658 i!1240)))))

(declare-fun b!310593 () Bool)

(assert (=> b!310593 (= e!193884 e!193881)))

(declare-fun res!167203 () Bool)

(assert (=> b!310593 (=> (not res!167203) (not e!193881))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310593 (= res!167203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152056))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310593 (= lt!152056 (Intermediate!2658 false resIndex!52 resX!52))))

(declare-fun res!167197 () Bool)

(assert (=> start!30954 (=> (not res!167197) (not e!193884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30954 (= res!167197 (validMask!0 mask!3709))))

(assert (=> start!30954 e!193884))

(declare-fun array_inv!5461 (array!15854) Bool)

(assert (=> start!30954 (array_inv!5461 a!3293)))

(assert (=> start!30954 true))

(declare-fun b!310584 () Bool)

(declare-fun res!167205 () Bool)

(assert (=> b!310584 (=> (not res!167205) (not e!193881))))

(assert (=> b!310584 (= res!167205 (and (= (select (arr!7507 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7859 a!3293))))))

(assert (= (and start!30954 res!167197) b!310587))

(assert (= (and b!310587 res!167202) b!310585))

(assert (= (and b!310585 res!167200) b!310589))

(assert (= (and b!310589 res!167199) b!310592))

(assert (= (and b!310592 res!167198) b!310588))

(assert (= (and b!310588 res!167201) b!310593))

(assert (= (and b!310593 res!167203) b!310584))

(assert (= (and b!310584 res!167205) b!310591))

(assert (= (and b!310591 res!167204) b!310586))

(assert (= (and b!310586 res!167196) b!310590))

(declare-fun m!320557 () Bool)

(assert (=> b!310585 m!320557))

(declare-fun m!320559 () Bool)

(assert (=> start!30954 m!320559))

(declare-fun m!320561 () Bool)

(assert (=> start!30954 m!320561))

(declare-fun m!320563 () Bool)

(assert (=> b!310584 m!320563))

(declare-fun m!320565 () Bool)

(assert (=> b!310592 m!320565))

(declare-fun m!320567 () Bool)

(assert (=> b!310588 m!320567))

(declare-fun m!320569 () Bool)

(assert (=> b!310589 m!320569))

(declare-fun m!320571 () Bool)

(assert (=> b!310593 m!320571))

(assert (=> b!310593 m!320571))

(declare-fun m!320573 () Bool)

(assert (=> b!310593 m!320573))

(declare-fun m!320575 () Bool)

(assert (=> b!310590 m!320575))

(declare-fun m!320577 () Bool)

(assert (=> b!310590 m!320577))

(declare-fun m!320579 () Bool)

(assert (=> b!310590 m!320579))

(declare-fun m!320581 () Bool)

(assert (=> b!310586 m!320581))

(declare-fun m!320583 () Bool)

(assert (=> b!310586 m!320583))

(declare-fun m!320585 () Bool)

(assert (=> b!310591 m!320585))

(declare-fun m!320587 () Bool)

(assert (=> b!310591 m!320587))

(push 1)

