; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30666 () Bool)

(assert start!30666)

(declare-fun b!307569 () Bool)

(declare-fun res!164490 () Bool)

(declare-fun e!192500 () Bool)

(assert (=> b!307569 (=> (not res!164490) (not e!192500))))

(declare-datatypes ((array!15668 0))(
  ( (array!15669 (arr!7417 (Array (_ BitVec 32) (_ BitVec 64))) (size!7769 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15668)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307569 (= res!164490 (and (= (size!7769 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7769 a!3293))))))

(declare-fun b!307570 () Bool)

(declare-fun res!164488 () Bool)

(assert (=> b!307570 (=> (not res!164488) (not e!192500))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2568 0))(
  ( (MissingZero!2568 (index!12448 (_ BitVec 32))) (Found!2568 (index!12449 (_ BitVec 32))) (Intermediate!2568 (undefined!3380 Bool) (index!12450 (_ BitVec 32)) (x!30654 (_ BitVec 32))) (Undefined!2568) (MissingVacant!2568 (index!12451 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15668 (_ BitVec 32)) SeekEntryResult!2568)

(assert (=> b!307570 (= res!164488 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2568 i!1240)))))

(declare-fun res!164486 () Bool)

(assert (=> start!30666 (=> (not res!164486) (not e!192500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30666 (= res!164486 (validMask!0 mask!3709))))

(assert (=> start!30666 e!192500))

(declare-fun array_inv!5371 (array!15668) Bool)

(assert (=> start!30666 (array_inv!5371 a!3293)))

(assert (=> start!30666 true))

(declare-fun b!307571 () Bool)

(declare-fun e!192501 () Bool)

(assert (=> b!307571 (= e!192500 e!192501)))

(declare-fun res!164487 () Bool)

(assert (=> b!307571 (=> (not res!164487) (not e!192501))))

(declare-fun lt!151132 () SeekEntryResult!2568)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15668 (_ BitVec 32)) SeekEntryResult!2568)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307571 (= res!164487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151132))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307571 (= lt!151132 (Intermediate!2568 false resIndex!52 resX!52))))

(declare-fun b!307572 () Bool)

(declare-fun res!164484 () Bool)

(assert (=> b!307572 (=> (not res!164484) (not e!192501))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307572 (= res!164484 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7417 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307573 () Bool)

(declare-fun res!164485 () Bool)

(assert (=> b!307573 (=> (not res!164485) (not e!192500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307573 (= res!164485 (validKeyInArray!0 k!2441))))

(declare-fun b!307574 () Bool)

(declare-fun res!164482 () Bool)

(assert (=> b!307574 (=> (not res!164482) (not e!192500))))

(declare-fun arrayContainsKey!0 (array!15668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307574 (= res!164482 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307575 () Bool)

(assert (=> b!307575 (= e!192501 false)))

(declare-fun lt!151133 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307575 (= lt!151133 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307576 () Bool)

(declare-fun res!164489 () Bool)

(assert (=> b!307576 (=> (not res!164489) (not e!192501))))

(assert (=> b!307576 (= res!164489 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151132))))

(declare-fun b!307577 () Bool)

(declare-fun res!164483 () Bool)

(assert (=> b!307577 (=> (not res!164483) (not e!192501))))

(assert (=> b!307577 (= res!164483 (and (= (select (arr!7417 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7769 a!3293))))))

(declare-fun b!307578 () Bool)

(declare-fun res!164481 () Bool)

(assert (=> b!307578 (=> (not res!164481) (not e!192500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15668 (_ BitVec 32)) Bool)

(assert (=> b!307578 (= res!164481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30666 res!164486) b!307569))

(assert (= (and b!307569 res!164490) b!307573))

(assert (= (and b!307573 res!164485) b!307574))

(assert (= (and b!307574 res!164482) b!307570))

(assert (= (and b!307570 res!164488) b!307578))

(assert (= (and b!307578 res!164481) b!307571))

(assert (= (and b!307571 res!164487) b!307577))

(assert (= (and b!307577 res!164483) b!307576))

(assert (= (and b!307576 res!164489) b!307572))

(assert (= (and b!307572 res!164484) b!307575))

(declare-fun m!317857 () Bool)

(assert (=> b!307575 m!317857))

(declare-fun m!317859 () Bool)

(assert (=> b!307574 m!317859))

(declare-fun m!317861 () Bool)

(assert (=> b!307570 m!317861))

(declare-fun m!317863 () Bool)

(assert (=> b!307572 m!317863))

(declare-fun m!317865 () Bool)

(assert (=> b!307576 m!317865))

(declare-fun m!317867 () Bool)

(assert (=> start!30666 m!317867))

(declare-fun m!317869 () Bool)

(assert (=> start!30666 m!317869))

(declare-fun m!317871 () Bool)

(assert (=> b!307571 m!317871))

(assert (=> b!307571 m!317871))

(declare-fun m!317873 () Bool)

(assert (=> b!307571 m!317873))

(declare-fun m!317875 () Bool)

(assert (=> b!307573 m!317875))

(declare-fun m!317877 () Bool)

(assert (=> b!307577 m!317877))

(declare-fun m!317879 () Bool)

(assert (=> b!307578 m!317879))

(push 1)

