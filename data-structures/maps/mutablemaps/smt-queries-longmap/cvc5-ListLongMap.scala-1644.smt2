; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30648 () Bool)

(assert start!30648)

(declare-fun b!307324 () Bool)

(declare-fun e!192419 () Bool)

(declare-fun e!192421 () Bool)

(assert (=> b!307324 (= e!192419 e!192421)))

(declare-fun res!164244 () Bool)

(assert (=> b!307324 (=> (not res!164244) (not e!192421))))

(declare-datatypes ((array!15650 0))(
  ( (array!15651 (arr!7408 (Array (_ BitVec 32) (_ BitVec 64))) (size!7760 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15650)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2559 0))(
  ( (MissingZero!2559 (index!12412 (_ BitVec 32))) (Found!2559 (index!12413 (_ BitVec 32))) (Intermediate!2559 (undefined!3371 Bool) (index!12414 (_ BitVec 32)) (x!30621 (_ BitVec 32))) (Undefined!2559) (MissingVacant!2559 (index!12415 (_ BitVec 32))) )
))
(declare-fun lt!151103 () SeekEntryResult!2559)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15650 (_ BitVec 32)) SeekEntryResult!2559)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307324 (= res!164244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151103))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307324 (= lt!151103 (Intermediate!2559 false resIndex!52 resX!52))))

(declare-fun b!307325 () Bool)

(declare-fun res!164236 () Bool)

(assert (=> b!307325 (=> (not res!164236) (not e!192421))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307325 (= res!164236 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151103))))

(declare-fun b!307326 () Bool)

(declare-fun res!164237 () Bool)

(assert (=> b!307326 (=> (not res!164237) (not e!192419))))

(declare-fun arrayContainsKey!0 (array!15650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307326 (= res!164237 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307327 () Bool)

(assert (=> b!307327 (= e!192421 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7408 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!307328 () Bool)

(declare-fun res!164239 () Bool)

(assert (=> b!307328 (=> (not res!164239) (not e!192419))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307328 (= res!164239 (and (= (size!7760 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7760 a!3293))))))

(declare-fun b!307329 () Bool)

(declare-fun res!164240 () Bool)

(assert (=> b!307329 (=> (not res!164240) (not e!192419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307329 (= res!164240 (validKeyInArray!0 k!2441))))

(declare-fun b!307330 () Bool)

(declare-fun res!164241 () Bool)

(assert (=> b!307330 (=> (not res!164241) (not e!192419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15650 (_ BitVec 32)) Bool)

(assert (=> b!307330 (= res!164241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307331 () Bool)

(declare-fun res!164242 () Bool)

(assert (=> b!307331 (=> (not res!164242) (not e!192421))))

(assert (=> b!307331 (= res!164242 (and (= (select (arr!7408 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7760 a!3293))))))

(declare-fun res!164243 () Bool)

(assert (=> start!30648 (=> (not res!164243) (not e!192419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30648 (= res!164243 (validMask!0 mask!3709))))

(assert (=> start!30648 e!192419))

(declare-fun array_inv!5362 (array!15650) Bool)

(assert (=> start!30648 (array_inv!5362 a!3293)))

(assert (=> start!30648 true))

(declare-fun b!307332 () Bool)

(declare-fun res!164238 () Bool)

(assert (=> b!307332 (=> (not res!164238) (not e!192419))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15650 (_ BitVec 32)) SeekEntryResult!2559)

(assert (=> b!307332 (= res!164238 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2559 i!1240)))))

(assert (= (and start!30648 res!164243) b!307328))

(assert (= (and b!307328 res!164239) b!307329))

(assert (= (and b!307329 res!164240) b!307326))

(assert (= (and b!307326 res!164237) b!307332))

(assert (= (and b!307332 res!164238) b!307330))

(assert (= (and b!307330 res!164241) b!307324))

(assert (= (and b!307324 res!164244) b!307331))

(assert (= (and b!307331 res!164242) b!307325))

(assert (= (and b!307325 res!164236) b!307327))

(declare-fun m!317659 () Bool)

(assert (=> b!307325 m!317659))

(declare-fun m!317661 () Bool)

(assert (=> b!307332 m!317661))

(declare-fun m!317663 () Bool)

(assert (=> b!307327 m!317663))

(declare-fun m!317665 () Bool)

(assert (=> b!307326 m!317665))

(declare-fun m!317667 () Bool)

(assert (=> b!307330 m!317667))

(declare-fun m!317669 () Bool)

(assert (=> b!307324 m!317669))

(assert (=> b!307324 m!317669))

(declare-fun m!317671 () Bool)

(assert (=> b!307324 m!317671))

(declare-fun m!317673 () Bool)

(assert (=> start!30648 m!317673))

(declare-fun m!317675 () Bool)

(assert (=> start!30648 m!317675))

(declare-fun m!317677 () Bool)

(assert (=> b!307329 m!317677))

(declare-fun m!317679 () Bool)

(assert (=> b!307331 m!317679))

(push 1)

(assert (not b!307325))

