; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30676 () Bool)

(assert start!30676)

(declare-fun b!307719 () Bool)

(declare-fun res!164632 () Bool)

(declare-fun e!192545 () Bool)

(assert (=> b!307719 (=> (not res!164632) (not e!192545))))

(declare-datatypes ((array!15678 0))(
  ( (array!15679 (arr!7422 (Array (_ BitVec 32) (_ BitVec 64))) (size!7774 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15678)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!307719 (= res!164632 (and (= (size!7774 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7774 a!3293))))))

(declare-fun res!164631 () Bool)

(assert (=> start!30676 (=> (not res!164631) (not e!192545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30676 (= res!164631 (validMask!0 mask!3709))))

(assert (=> start!30676 e!192545))

(declare-fun array_inv!5376 (array!15678) Bool)

(assert (=> start!30676 (array_inv!5376 a!3293)))

(assert (=> start!30676 true))

(declare-fun b!307720 () Bool)

(declare-fun res!164634 () Bool)

(declare-fun e!192547 () Bool)

(assert (=> b!307720 (=> (not res!164634) (not e!192547))))

(declare-datatypes ((SeekEntryResult!2573 0))(
  ( (MissingZero!2573 (index!12468 (_ BitVec 32))) (Found!2573 (index!12469 (_ BitVec 32))) (Intermediate!2573 (undefined!3385 Bool) (index!12470 (_ BitVec 32)) (x!30667 (_ BitVec 32))) (Undefined!2573) (MissingVacant!2573 (index!12471 (_ BitVec 32))) )
))
(declare-fun lt!151162 () SeekEntryResult!2573)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15678 (_ BitVec 32)) SeekEntryResult!2573)

(assert (=> b!307720 (= res!164634 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151162))))

(declare-fun b!307721 () Bool)

(declare-fun res!164636 () Bool)

(assert (=> b!307721 (=> (not res!164636) (not e!192545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15678 (_ BitVec 32)) Bool)

(assert (=> b!307721 (= res!164636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307722 () Bool)

(declare-fun res!164639 () Bool)

(assert (=> b!307722 (=> (not res!164639) (not e!192545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307722 (= res!164639 (validKeyInArray!0 k!2441))))

(declare-fun b!307723 () Bool)

(declare-fun res!164635 () Bool)

(assert (=> b!307723 (=> (not res!164635) (not e!192547))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307723 (= res!164635 (and (= (select (arr!7422 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7774 a!3293))))))

(declare-fun b!307724 () Bool)

(assert (=> b!307724 (= e!192545 e!192547)))

(declare-fun res!164633 () Bool)

(assert (=> b!307724 (=> (not res!164633) (not e!192547))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307724 (= res!164633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151162))))

(assert (=> b!307724 (= lt!151162 (Intermediate!2573 false resIndex!52 resX!52))))

(declare-fun b!307725 () Bool)

(declare-fun res!164638 () Bool)

(assert (=> b!307725 (=> (not res!164638) (not e!192545))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15678 (_ BitVec 32)) SeekEntryResult!2573)

(assert (=> b!307725 (= res!164638 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2573 i!1240)))))

(declare-fun b!307726 () Bool)

(assert (=> b!307726 (= e!192547 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!151163 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307726 (= lt!151163 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307727 () Bool)

(declare-fun res!164637 () Bool)

(assert (=> b!307727 (=> (not res!164637) (not e!192547))))

(assert (=> b!307727 (= res!164637 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7422 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307728 () Bool)

(declare-fun res!164640 () Bool)

(assert (=> b!307728 (=> (not res!164640) (not e!192545))))

(declare-fun arrayContainsKey!0 (array!15678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307728 (= res!164640 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30676 res!164631) b!307719))

(assert (= (and b!307719 res!164632) b!307722))

(assert (= (and b!307722 res!164639) b!307728))

(assert (= (and b!307728 res!164640) b!307725))

(assert (= (and b!307725 res!164638) b!307721))

(assert (= (and b!307721 res!164636) b!307724))

(assert (= (and b!307724 res!164633) b!307723))

(assert (= (and b!307723 res!164635) b!307720))

(assert (= (and b!307720 res!164634) b!307727))

(assert (= (and b!307727 res!164637) b!307726))

(declare-fun m!317977 () Bool)

(assert (=> b!307722 m!317977))

(declare-fun m!317979 () Bool)

(assert (=> b!307720 m!317979))

(declare-fun m!317981 () Bool)

(assert (=> b!307723 m!317981))

(declare-fun m!317983 () Bool)

(assert (=> b!307728 m!317983))

(declare-fun m!317985 () Bool)

(assert (=> start!30676 m!317985))

(declare-fun m!317987 () Bool)

(assert (=> start!30676 m!317987))

(declare-fun m!317989 () Bool)

(assert (=> b!307727 m!317989))

(declare-fun m!317991 () Bool)

(assert (=> b!307721 m!317991))

(declare-fun m!317993 () Bool)

(assert (=> b!307725 m!317993))

(declare-fun m!317995 () Bool)

(assert (=> b!307724 m!317995))

(assert (=> b!307724 m!317995))

(declare-fun m!317997 () Bool)

(assert (=> b!307724 m!317997))

(declare-fun m!317999 () Bool)

(assert (=> b!307726 m!317999))

(push 1)

(assert (not b!307724))

(assert (not b!307726))

(assert (not b!307720))

(assert (not b!307721))

(assert (not start!30676))

