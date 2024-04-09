; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30774 () Bool)

(assert start!30774)

(declare-fun b!308566 () Bool)

(declare-fun res!165338 () Bool)

(declare-fun e!192904 () Bool)

(assert (=> b!308566 (=> (not res!165338) (not e!192904))))

(declare-datatypes ((array!15725 0))(
  ( (array!15726 (arr!7444 (Array (_ BitVec 32) (_ BitVec 64))) (size!7796 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15725)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308566 (= res!165338 (and (= (size!7796 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7796 a!3293))))))

(declare-fun res!165337 () Bool)

(assert (=> start!30774 (=> (not res!165337) (not e!192904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30774 (= res!165337 (validMask!0 mask!3709))))

(assert (=> start!30774 e!192904))

(declare-fun array_inv!5398 (array!15725) Bool)

(assert (=> start!30774 (array_inv!5398 a!3293)))

(assert (=> start!30774 true))

(declare-fun b!308567 () Bool)

(declare-fun e!192907 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308567 (= e!192907 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-datatypes ((SeekEntryResult!2595 0))(
  ( (MissingZero!2595 (index!12556 (_ BitVec 32))) (Found!2595 (index!12557 (_ BitVec 32))) (Intermediate!2595 (undefined!3407 Bool) (index!12558 (_ BitVec 32)) (x!30762 (_ BitVec 32))) (Undefined!2595) (MissingVacant!2595 (index!12559 (_ BitVec 32))) )
))
(declare-fun lt!151400 () SeekEntryResult!2595)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15725 (_ BitVec 32)) SeekEntryResult!2595)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308567 (= lt!151400 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308568 () Bool)

(declare-fun res!165341 () Bool)

(assert (=> b!308568 (=> (not res!165341) (not e!192904))))

(declare-fun arrayContainsKey!0 (array!15725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308568 (= res!165341 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308569 () Bool)

(declare-fun res!165345 () Bool)

(assert (=> b!308569 (=> (not res!165345) (not e!192904))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15725 (_ BitVec 32)) SeekEntryResult!2595)

(assert (=> b!308569 (= res!165345 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2595 i!1240)))))

(declare-fun b!308570 () Bool)

(declare-fun res!165344 () Bool)

(assert (=> b!308570 (=> (not res!165344) (not e!192904))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308570 (= res!165344 (validKeyInArray!0 k!2441))))

(declare-fun b!308571 () Bool)

(declare-fun e!192905 () Bool)

(assert (=> b!308571 (= e!192904 e!192905)))

(declare-fun res!165339 () Bool)

(assert (=> b!308571 (=> (not res!165339) (not e!192905))))

(declare-fun lt!151399 () SeekEntryResult!2595)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308571 (= res!165339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151399))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308571 (= lt!151399 (Intermediate!2595 false resIndex!52 resX!52))))

(declare-fun b!308572 () Bool)

(assert (=> b!308572 (= e!192905 e!192907)))

(declare-fun res!165340 () Bool)

(assert (=> b!308572 (=> (not res!165340) (not e!192907))))

(assert (=> b!308572 (= res!165340 (and (= lt!151400 lt!151399) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7444 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308572 (= lt!151400 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308573 () Bool)

(declare-fun res!165343 () Bool)

(assert (=> b!308573 (=> (not res!165343) (not e!192905))))

(assert (=> b!308573 (= res!165343 (and (= (select (arr!7444 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7796 a!3293))))))

(declare-fun b!308574 () Bool)

(declare-fun res!165342 () Bool)

(assert (=> b!308574 (=> (not res!165342) (not e!192904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15725 (_ BitVec 32)) Bool)

(assert (=> b!308574 (= res!165342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30774 res!165337) b!308566))

(assert (= (and b!308566 res!165338) b!308570))

(assert (= (and b!308570 res!165344) b!308568))

(assert (= (and b!308568 res!165341) b!308569))

(assert (= (and b!308569 res!165345) b!308574))

(assert (= (and b!308574 res!165342) b!308571))

(assert (= (and b!308571 res!165339) b!308573))

(assert (= (and b!308573 res!165343) b!308572))

(assert (= (and b!308572 res!165340) b!308567))

(declare-fun m!318637 () Bool)

(assert (=> b!308571 m!318637))

(assert (=> b!308571 m!318637))

(declare-fun m!318639 () Bool)

(assert (=> b!308571 m!318639))

(declare-fun m!318641 () Bool)

(assert (=> b!308573 m!318641))

(declare-fun m!318643 () Bool)

(assert (=> start!30774 m!318643))

(declare-fun m!318645 () Bool)

(assert (=> start!30774 m!318645))

(declare-fun m!318647 () Bool)

(assert (=> b!308570 m!318647))

(declare-fun m!318649 () Bool)

(assert (=> b!308572 m!318649))

(declare-fun m!318651 () Bool)

(assert (=> b!308572 m!318651))

(declare-fun m!318653 () Bool)

(assert (=> b!308574 m!318653))

(declare-fun m!318655 () Bool)

(assert (=> b!308568 m!318655))

(declare-fun m!318657 () Bool)

(assert (=> b!308569 m!318657))

(declare-fun m!318659 () Bool)

(assert (=> b!308567 m!318659))

(assert (=> b!308567 m!318659))

(declare-fun m!318661 () Bool)

(assert (=> b!308567 m!318661))

(push 1)

(assert (not b!308567))

(assert (not b!308568))

(assert (not b!308569))

(assert (not b!308572))

(assert (not start!30774))

(assert (not b!308570))

(assert (not b!308574))

(assert (not b!308571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

