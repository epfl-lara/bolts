; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30760 () Bool)

(assert start!30760)

(declare-fun res!165151 () Bool)

(declare-fun e!192821 () Bool)

(assert (=> start!30760 (=> (not res!165151) (not e!192821))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30760 (= res!165151 (validMask!0 mask!3709))))

(assert (=> start!30760 e!192821))

(declare-datatypes ((array!15711 0))(
  ( (array!15712 (arr!7437 (Array (_ BitVec 32) (_ BitVec 64))) (size!7789 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15711)

(declare-fun array_inv!5391 (array!15711) Bool)

(assert (=> start!30760 (array_inv!5391 a!3293)))

(assert (=> start!30760 true))

(declare-fun b!308377 () Bool)

(declare-fun res!165150 () Bool)

(declare-fun e!192823 () Bool)

(assert (=> b!308377 (=> (not res!165150) (not e!192823))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308377 (= res!165150 (and (= (select (arr!7437 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7789 a!3293))))))

(declare-fun b!308378 () Bool)

(declare-fun res!165156 () Bool)

(assert (=> b!308378 (=> (not res!165156) (not e!192821))))

(assert (=> b!308378 (= res!165156 (and (= (size!7789 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7789 a!3293))))))

(declare-fun b!308379 () Bool)

(declare-fun res!165153 () Bool)

(assert (=> b!308379 (=> (not res!165153) (not e!192821))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308379 (= res!165153 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308380 () Bool)

(declare-fun res!165149 () Bool)

(assert (=> b!308380 (=> (not res!165149) (not e!192821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15711 (_ BitVec 32)) Bool)

(assert (=> b!308380 (= res!165149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308381 () Bool)

(declare-fun res!165148 () Bool)

(assert (=> b!308381 (=> (not res!165148) (not e!192821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308381 (= res!165148 (validKeyInArray!0 k!2441))))

(declare-fun b!308382 () Bool)

(assert (=> b!308382 (= e!192821 e!192823)))

(declare-fun res!165152 () Bool)

(assert (=> b!308382 (=> (not res!165152) (not e!192823))))

(declare-datatypes ((SeekEntryResult!2588 0))(
  ( (MissingZero!2588 (index!12528 (_ BitVec 32))) (Found!2588 (index!12529 (_ BitVec 32))) (Intermediate!2588 (undefined!3400 Bool) (index!12530 (_ BitVec 32)) (x!30731 (_ BitVec 32))) (Undefined!2588) (MissingVacant!2588 (index!12531 (_ BitVec 32))) )
))
(declare-fun lt!151357 () SeekEntryResult!2588)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15711 (_ BitVec 32)) SeekEntryResult!2588)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308382 (= res!165152 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151357))))

(assert (=> b!308382 (= lt!151357 (Intermediate!2588 false resIndex!52 resX!52))))

(declare-fun b!308383 () Bool)

(declare-fun res!165154 () Bool)

(assert (=> b!308383 (=> (not res!165154) (not e!192821))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15711 (_ BitVec 32)) SeekEntryResult!2588)

(assert (=> b!308383 (= res!165154 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2588 i!1240)))))

(declare-fun b!308384 () Bool)

(declare-fun e!192820 () Bool)

(assert (=> b!308384 (= e!192820 (not true))))

(declare-fun lt!151358 () SeekEntryResult!2588)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308384 (= lt!151358 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308385 () Bool)

(assert (=> b!308385 (= e!192823 e!192820)))

(declare-fun res!165155 () Bool)

(assert (=> b!308385 (=> (not res!165155) (not e!192820))))

(assert (=> b!308385 (= res!165155 (and (= lt!151358 lt!151357) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7437 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308385 (= lt!151358 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30760 res!165151) b!308378))

(assert (= (and b!308378 res!165156) b!308381))

(assert (= (and b!308381 res!165148) b!308379))

(assert (= (and b!308379 res!165153) b!308383))

(assert (= (and b!308383 res!165154) b!308380))

(assert (= (and b!308380 res!165149) b!308382))

(assert (= (and b!308382 res!165152) b!308377))

(assert (= (and b!308377 res!165150) b!308385))

(assert (= (and b!308385 res!165155) b!308384))

(declare-fun m!318455 () Bool)

(assert (=> b!308381 m!318455))

(declare-fun m!318457 () Bool)

(assert (=> b!308380 m!318457))

(declare-fun m!318459 () Bool)

(assert (=> start!30760 m!318459))

(declare-fun m!318461 () Bool)

(assert (=> start!30760 m!318461))

(declare-fun m!318463 () Bool)

(assert (=> b!308385 m!318463))

(declare-fun m!318465 () Bool)

(assert (=> b!308385 m!318465))

(declare-fun m!318467 () Bool)

(assert (=> b!308377 m!318467))

(declare-fun m!318469 () Bool)

(assert (=> b!308379 m!318469))

(declare-fun m!318471 () Bool)

(assert (=> b!308382 m!318471))

(assert (=> b!308382 m!318471))

(declare-fun m!318473 () Bool)

(assert (=> b!308382 m!318473))

(declare-fun m!318475 () Bool)

(assert (=> b!308384 m!318475))

(assert (=> b!308384 m!318475))

(declare-fun m!318477 () Bool)

(assert (=> b!308384 m!318477))

(declare-fun m!318479 () Bool)

(assert (=> b!308383 m!318479))

(push 1)

(assert (not b!308383))

(assert (not b!308384))

(assert (not b!308380))

(assert (not b!308385))

