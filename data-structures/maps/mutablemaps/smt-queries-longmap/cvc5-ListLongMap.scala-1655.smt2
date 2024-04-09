; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30768 () Bool)

(assert start!30768)

(declare-fun b!308485 () Bool)

(declare-fun res!165259 () Bool)

(declare-fun e!192869 () Bool)

(assert (=> b!308485 (=> (not res!165259) (not e!192869))))

(declare-datatypes ((array!15719 0))(
  ( (array!15720 (arr!7441 (Array (_ BitVec 32) (_ BitVec 64))) (size!7793 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15719)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2592 0))(
  ( (MissingZero!2592 (index!12544 (_ BitVec 32))) (Found!2592 (index!12545 (_ BitVec 32))) (Intermediate!2592 (undefined!3404 Bool) (index!12546 (_ BitVec 32)) (x!30751 (_ BitVec 32))) (Undefined!2592) (MissingVacant!2592 (index!12547 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15719 (_ BitVec 32)) SeekEntryResult!2592)

(assert (=> b!308485 (= res!165259 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2592 i!1240)))))

(declare-fun b!308486 () Bool)

(declare-fun e!192871 () Bool)

(declare-fun e!192868 () Bool)

(assert (=> b!308486 (= e!192871 e!192868)))

(declare-fun res!165260 () Bool)

(assert (=> b!308486 (=> (not res!165260) (not e!192868))))

(declare-fun lt!151381 () SeekEntryResult!2592)

(declare-fun lt!151382 () SeekEntryResult!2592)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308486 (= res!165260 (and (= lt!151381 lt!151382) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7441 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15719 (_ BitVec 32)) SeekEntryResult!2592)

(assert (=> b!308486 (= lt!151381 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308487 () Bool)

(declare-fun res!165261 () Bool)

(assert (=> b!308487 (=> (not res!165261) (not e!192869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15719 (_ BitVec 32)) Bool)

(assert (=> b!308487 (= res!165261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308488 () Bool)

(assert (=> b!308488 (= e!192868 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308488 (= lt!151381 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308489 () Bool)

(declare-fun res!165257 () Bool)

(assert (=> b!308489 (=> (not res!165257) (not e!192869))))

(assert (=> b!308489 (= res!165257 (and (= (size!7793 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7793 a!3293))))))

(declare-fun b!308490 () Bool)

(declare-fun res!165263 () Bool)

(assert (=> b!308490 (=> (not res!165263) (not e!192871))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308490 (= res!165263 (and (= (select (arr!7441 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7793 a!3293))))))

(declare-fun res!165258 () Bool)

(assert (=> start!30768 (=> (not res!165258) (not e!192869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30768 (= res!165258 (validMask!0 mask!3709))))

(assert (=> start!30768 e!192869))

(declare-fun array_inv!5395 (array!15719) Bool)

(assert (=> start!30768 (array_inv!5395 a!3293)))

(assert (=> start!30768 true))

(declare-fun b!308491 () Bool)

(declare-fun res!165264 () Bool)

(assert (=> b!308491 (=> (not res!165264) (not e!192869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308491 (= res!165264 (validKeyInArray!0 k!2441))))

(declare-fun b!308492 () Bool)

(declare-fun res!165262 () Bool)

(assert (=> b!308492 (=> (not res!165262) (not e!192869))))

(declare-fun arrayContainsKey!0 (array!15719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308492 (= res!165262 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308493 () Bool)

(assert (=> b!308493 (= e!192869 e!192871)))

(declare-fun res!165256 () Bool)

(assert (=> b!308493 (=> (not res!165256) (not e!192871))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308493 (= res!165256 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151382))))

(assert (=> b!308493 (= lt!151382 (Intermediate!2592 false resIndex!52 resX!52))))

(assert (= (and start!30768 res!165258) b!308489))

(assert (= (and b!308489 res!165257) b!308491))

(assert (= (and b!308491 res!165264) b!308492))

(assert (= (and b!308492 res!165262) b!308485))

(assert (= (and b!308485 res!165259) b!308487))

(assert (= (and b!308487 res!165261) b!308493))

(assert (= (and b!308493 res!165256) b!308490))

(assert (= (and b!308490 res!165263) b!308486))

(assert (= (and b!308486 res!165260) b!308488))

(declare-fun m!318559 () Bool)

(assert (=> start!30768 m!318559))

(declare-fun m!318561 () Bool)

(assert (=> start!30768 m!318561))

(declare-fun m!318563 () Bool)

(assert (=> b!308488 m!318563))

(assert (=> b!308488 m!318563))

(declare-fun m!318565 () Bool)

(assert (=> b!308488 m!318565))

(declare-fun m!318567 () Bool)

(assert (=> b!308486 m!318567))

(declare-fun m!318569 () Bool)

(assert (=> b!308486 m!318569))

(declare-fun m!318571 () Bool)

(assert (=> b!308485 m!318571))

(declare-fun m!318573 () Bool)

(assert (=> b!308492 m!318573))

(declare-fun m!318575 () Bool)

(assert (=> b!308490 m!318575))

(declare-fun m!318577 () Bool)

(assert (=> b!308491 m!318577))

(declare-fun m!318579 () Bool)

(assert (=> b!308487 m!318579))

(declare-fun m!318581 () Bool)

(assert (=> b!308493 m!318581))

(assert (=> b!308493 m!318581))

(declare-fun m!318583 () Bool)

(assert (=> b!308493 m!318583))

(push 1)

