; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30778 () Bool)

(assert start!30778)

(declare-fun b!308620 () Bool)

(declare-fun res!165393 () Bool)

(declare-fun e!192929 () Bool)

(assert (=> b!308620 (=> (not res!165393) (not e!192929))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308620 (= res!165393 (validKeyInArray!0 k!2441))))

(declare-fun b!308621 () Bool)

(declare-fun e!192931 () Bool)

(declare-fun e!192928 () Bool)

(assert (=> b!308621 (= e!192931 e!192928)))

(declare-fun res!165397 () Bool)

(assert (=> b!308621 (=> (not res!165397) (not e!192928))))

(declare-datatypes ((SeekEntryResult!2597 0))(
  ( (MissingZero!2597 (index!12564 (_ BitVec 32))) (Found!2597 (index!12565 (_ BitVec 32))) (Intermediate!2597 (undefined!3409 Bool) (index!12566 (_ BitVec 32)) (x!30764 (_ BitVec 32))) (Undefined!2597) (MissingVacant!2597 (index!12567 (_ BitVec 32))) )
))
(declare-fun lt!151412 () SeekEntryResult!2597)

(declare-datatypes ((array!15729 0))(
  ( (array!15730 (arr!7446 (Array (_ BitVec 32) (_ BitVec 64))) (size!7798 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15729)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!151411 () SeekEntryResult!2597)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308621 (= res!165397 (and (= lt!151412 lt!151411) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7446 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15729 (_ BitVec 32)) SeekEntryResult!2597)

(assert (=> b!308621 (= lt!151412 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308622 () Bool)

(assert (=> b!308622 (= e!192928 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308622 (= lt!151412 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308623 () Bool)

(declare-fun res!165398 () Bool)

(assert (=> b!308623 (=> (not res!165398) (not e!192929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15729 (_ BitVec 32)) Bool)

(assert (=> b!308623 (= res!165398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308624 () Bool)

(assert (=> b!308624 (= e!192929 e!192931)))

(declare-fun res!165394 () Bool)

(assert (=> b!308624 (=> (not res!165394) (not e!192931))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308624 (= res!165394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151411))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308624 (= lt!151411 (Intermediate!2597 false resIndex!52 resX!52))))

(declare-fun b!308625 () Bool)

(declare-fun res!165396 () Bool)

(assert (=> b!308625 (=> (not res!165396) (not e!192929))))

(declare-fun arrayContainsKey!0 (array!15729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308625 (= res!165396 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308626 () Bool)

(declare-fun res!165392 () Bool)

(assert (=> b!308626 (=> (not res!165392) (not e!192929))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15729 (_ BitVec 32)) SeekEntryResult!2597)

(assert (=> b!308626 (= res!165392 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2597 i!1240)))))

(declare-fun b!308627 () Bool)

(declare-fun res!165391 () Bool)

(assert (=> b!308627 (=> (not res!165391) (not e!192931))))

(assert (=> b!308627 (= res!165391 (and (= (select (arr!7446 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7798 a!3293))))))

(declare-fun b!308628 () Bool)

(declare-fun res!165399 () Bool)

(assert (=> b!308628 (=> (not res!165399) (not e!192929))))

(assert (=> b!308628 (= res!165399 (and (= (size!7798 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7798 a!3293))))))

(declare-fun res!165395 () Bool)

(assert (=> start!30778 (=> (not res!165395) (not e!192929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30778 (= res!165395 (validMask!0 mask!3709))))

(assert (=> start!30778 e!192929))

(declare-fun array_inv!5400 (array!15729) Bool)

(assert (=> start!30778 (array_inv!5400 a!3293)))

(assert (=> start!30778 true))

(assert (= (and start!30778 res!165395) b!308628))

(assert (= (and b!308628 res!165399) b!308620))

(assert (= (and b!308620 res!165393) b!308625))

(assert (= (and b!308625 res!165396) b!308626))

(assert (= (and b!308626 res!165392) b!308623))

(assert (= (and b!308623 res!165398) b!308624))

(assert (= (and b!308624 res!165394) b!308627))

(assert (= (and b!308627 res!165391) b!308621))

(assert (= (and b!308621 res!165397) b!308622))

(declare-fun m!318689 () Bool)

(assert (=> b!308623 m!318689))

(declare-fun m!318691 () Bool)

(assert (=> start!30778 m!318691))

(declare-fun m!318693 () Bool)

(assert (=> start!30778 m!318693))

(declare-fun m!318695 () Bool)

(assert (=> b!308621 m!318695))

(declare-fun m!318697 () Bool)

(assert (=> b!308621 m!318697))

(declare-fun m!318699 () Bool)

(assert (=> b!308624 m!318699))

(assert (=> b!308624 m!318699))

(declare-fun m!318701 () Bool)

(assert (=> b!308624 m!318701))

(declare-fun m!318703 () Bool)

(assert (=> b!308626 m!318703))

(declare-fun m!318705 () Bool)

(assert (=> b!308622 m!318705))

(assert (=> b!308622 m!318705))

(declare-fun m!318707 () Bool)

(assert (=> b!308622 m!318707))

(declare-fun m!318709 () Bool)

(assert (=> b!308625 m!318709))

(declare-fun m!318711 () Bool)

(assert (=> b!308627 m!318711))

(declare-fun m!318713 () Bool)

(assert (=> b!308620 m!318713))

(push 1)

(assert (not b!308625))

(assert (not b!308623))

(assert (not b!308620))

(assert (not b!308621))

(assert (not b!308626))

(assert (not b!308624))

(assert (not start!30778))

(assert (not b!308622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

