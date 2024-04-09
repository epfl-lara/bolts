; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30762 () Bool)

(assert start!30762)

(declare-fun b!308404 () Bool)

(declare-fun res!165183 () Bool)

(declare-fun e!192832 () Bool)

(assert (=> b!308404 (=> (not res!165183) (not e!192832))))

(declare-datatypes ((array!15713 0))(
  ( (array!15714 (arr!7438 (Array (_ BitVec 32) (_ BitVec 64))) (size!7790 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15713)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308404 (= res!165183 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308405 () Bool)

(declare-fun res!165180 () Bool)

(assert (=> b!308405 (=> (not res!165180) (not e!192832))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2589 0))(
  ( (MissingZero!2589 (index!12532 (_ BitVec 32))) (Found!2589 (index!12533 (_ BitVec 32))) (Intermediate!2589 (undefined!3401 Bool) (index!12534 (_ BitVec 32)) (x!30740 (_ BitVec 32))) (Undefined!2589) (MissingVacant!2589 (index!12535 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15713 (_ BitVec 32)) SeekEntryResult!2589)

(assert (=> b!308405 (= res!165180 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2589 i!1240)))))

(declare-fun b!308406 () Bool)

(declare-fun res!165175 () Bool)

(assert (=> b!308406 (=> (not res!165175) (not e!192832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308406 (= res!165175 (validKeyInArray!0 k!2441))))

(declare-fun b!308407 () Bool)

(declare-fun res!165177 () Bool)

(assert (=> b!308407 (=> (not res!165177) (not e!192832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15713 (_ BitVec 32)) Bool)

(assert (=> b!308407 (= res!165177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308408 () Bool)

(declare-fun res!165179 () Bool)

(declare-fun e!192834 () Bool)

(assert (=> b!308408 (=> (not res!165179) (not e!192834))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308408 (= res!165179 (and (= (select (arr!7438 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7790 a!3293))))))

(declare-fun b!308409 () Bool)

(declare-fun e!192833 () Bool)

(assert (=> b!308409 (= e!192834 e!192833)))

(declare-fun res!165178 () Bool)

(assert (=> b!308409 (=> (not res!165178) (not e!192833))))

(declare-fun lt!151363 () SeekEntryResult!2589)

(declare-fun lt!151364 () SeekEntryResult!2589)

(assert (=> b!308409 (= res!165178 (and (= lt!151363 lt!151364) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7438 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15713 (_ BitVec 32)) SeekEntryResult!2589)

(assert (=> b!308409 (= lt!151363 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308410 () Bool)

(declare-fun res!165181 () Bool)

(assert (=> b!308410 (=> (not res!165181) (not e!192832))))

(assert (=> b!308410 (= res!165181 (and (= (size!7790 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7790 a!3293))))))

(declare-fun res!165182 () Bool)

(assert (=> start!30762 (=> (not res!165182) (not e!192832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30762 (= res!165182 (validMask!0 mask!3709))))

(assert (=> start!30762 e!192832))

(declare-fun array_inv!5392 (array!15713) Bool)

(assert (=> start!30762 (array_inv!5392 a!3293)))

(assert (=> start!30762 true))

(declare-fun b!308411 () Bool)

(assert (=> b!308411 (= e!192832 e!192834)))

(declare-fun res!165176 () Bool)

(assert (=> b!308411 (=> (not res!165176) (not e!192834))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308411 (= res!165176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151364))))

(assert (=> b!308411 (= lt!151364 (Intermediate!2589 false resIndex!52 resX!52))))

(declare-fun b!308412 () Bool)

(assert (=> b!308412 (= e!192833 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308412 (= lt!151363 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30762 res!165182) b!308410))

(assert (= (and b!308410 res!165181) b!308406))

(assert (= (and b!308406 res!165175) b!308404))

(assert (= (and b!308404 res!165183) b!308405))

(assert (= (and b!308405 res!165180) b!308407))

(assert (= (and b!308407 res!165177) b!308411))

(assert (= (and b!308411 res!165176) b!308408))

(assert (= (and b!308408 res!165179) b!308409))

(assert (= (and b!308409 res!165178) b!308412))

(declare-fun m!318481 () Bool)

(assert (=> start!30762 m!318481))

(declare-fun m!318483 () Bool)

(assert (=> start!30762 m!318483))

(declare-fun m!318485 () Bool)

(assert (=> b!308405 m!318485))

(declare-fun m!318487 () Bool)

(assert (=> b!308412 m!318487))

(assert (=> b!308412 m!318487))

(declare-fun m!318489 () Bool)

(assert (=> b!308412 m!318489))

(declare-fun m!318491 () Bool)

(assert (=> b!308409 m!318491))

(declare-fun m!318493 () Bool)

(assert (=> b!308409 m!318493))

(declare-fun m!318495 () Bool)

(assert (=> b!308406 m!318495))

(declare-fun m!318497 () Bool)

(assert (=> b!308411 m!318497))

(assert (=> b!308411 m!318497))

(declare-fun m!318499 () Bool)

(assert (=> b!308411 m!318499))

(declare-fun m!318501 () Bool)

(assert (=> b!308407 m!318501))

(declare-fun m!318503 () Bool)

(assert (=> b!308404 m!318503))

(declare-fun m!318505 () Bool)

(assert (=> b!308408 m!318505))

(push 1)

