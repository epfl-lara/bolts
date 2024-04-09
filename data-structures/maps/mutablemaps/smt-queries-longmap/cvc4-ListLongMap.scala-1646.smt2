; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30664 () Bool)

(assert start!30664)

(declare-fun b!307540 () Bool)

(declare-fun res!164460 () Bool)

(declare-fun e!192491 () Bool)

(assert (=> b!307540 (=> (not res!164460) (not e!192491))))

(declare-datatypes ((array!15666 0))(
  ( (array!15667 (arr!7416 (Array (_ BitVec 32) (_ BitVec 64))) (size!7768 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15666)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307540 (= res!164460 (and (= (size!7768 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7768 a!3293))))))

(declare-fun b!307541 () Bool)

(declare-fun res!164453 () Bool)

(declare-fun e!192493 () Bool)

(assert (=> b!307541 (=> (not res!164453) (not e!192493))))

(declare-datatypes ((SeekEntryResult!2567 0))(
  ( (MissingZero!2567 (index!12444 (_ BitVec 32))) (Found!2567 (index!12445 (_ BitVec 32))) (Intermediate!2567 (undefined!3379 Bool) (index!12446 (_ BitVec 32)) (x!30645 (_ BitVec 32))) (Undefined!2567) (MissingVacant!2567 (index!12447 (_ BitVec 32))) )
))
(declare-fun lt!151127 () SeekEntryResult!2567)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15666 (_ BitVec 32)) SeekEntryResult!2567)

(assert (=> b!307541 (= res!164453 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151127))))

(declare-fun b!307542 () Bool)

(declare-fun res!164454 () Bool)

(assert (=> b!307542 (=> (not res!164454) (not e!192491))))

(declare-fun arrayContainsKey!0 (array!15666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307542 (= res!164454 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307543 () Bool)

(assert (=> b!307543 (= e!192491 e!192493)))

(declare-fun res!164457 () Bool)

(assert (=> b!307543 (=> (not res!164457) (not e!192493))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307543 (= res!164457 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151127))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307543 (= lt!151127 (Intermediate!2567 false resIndex!52 resX!52))))

(declare-fun b!307544 () Bool)

(declare-fun res!164459 () Bool)

(assert (=> b!307544 (=> (not res!164459) (not e!192493))))

(assert (=> b!307544 (= res!164459 (and (= (select (arr!7416 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7768 a!3293))))))

(declare-fun res!164458 () Bool)

(assert (=> start!30664 (=> (not res!164458) (not e!192491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30664 (= res!164458 (validMask!0 mask!3709))))

(assert (=> start!30664 e!192491))

(declare-fun array_inv!5370 (array!15666) Bool)

(assert (=> start!30664 (array_inv!5370 a!3293)))

(assert (=> start!30664 true))

(declare-fun b!307545 () Bool)

(declare-fun res!164455 () Bool)

(assert (=> b!307545 (=> (not res!164455) (not e!192491))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15666 (_ BitVec 32)) SeekEntryResult!2567)

(assert (=> b!307545 (= res!164455 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2567 i!1240)))))

(declare-fun b!307546 () Bool)

(assert (=> b!307546 (= e!192493 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7416 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!307547 () Bool)

(declare-fun res!164452 () Bool)

(assert (=> b!307547 (=> (not res!164452) (not e!192491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307547 (= res!164452 (validKeyInArray!0 k!2441))))

(declare-fun b!307548 () Bool)

(declare-fun res!164456 () Bool)

(assert (=> b!307548 (=> (not res!164456) (not e!192491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15666 (_ BitVec 32)) Bool)

(assert (=> b!307548 (= res!164456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30664 res!164458) b!307540))

(assert (= (and b!307540 res!164460) b!307547))

(assert (= (and b!307547 res!164452) b!307542))

(assert (= (and b!307542 res!164454) b!307545))

(assert (= (and b!307545 res!164455) b!307548))

(assert (= (and b!307548 res!164456) b!307543))

(assert (= (and b!307543 res!164457) b!307544))

(assert (= (and b!307544 res!164459) b!307541))

(assert (= (and b!307541 res!164453) b!307546))

(declare-fun m!317835 () Bool)

(assert (=> b!307542 m!317835))

(declare-fun m!317837 () Bool)

(assert (=> b!307543 m!317837))

(assert (=> b!307543 m!317837))

(declare-fun m!317839 () Bool)

(assert (=> b!307543 m!317839))

(declare-fun m!317841 () Bool)

(assert (=> start!30664 m!317841))

(declare-fun m!317843 () Bool)

(assert (=> start!30664 m!317843))

(declare-fun m!317845 () Bool)

(assert (=> b!307548 m!317845))

(declare-fun m!317847 () Bool)

(assert (=> b!307544 m!317847))

(declare-fun m!317849 () Bool)

(assert (=> b!307546 m!317849))

(declare-fun m!317851 () Bool)

(assert (=> b!307545 m!317851))

(declare-fun m!317853 () Bool)

(assert (=> b!307541 m!317853))

(declare-fun m!317855 () Bool)

(assert (=> b!307547 m!317855))

(push 1)

(assert (not b!307547))

(assert (not b!307543))

(assert (not b!307542))

(assert (not b!307545))

