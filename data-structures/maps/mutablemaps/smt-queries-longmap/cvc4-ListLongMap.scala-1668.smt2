; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30904 () Bool)

(assert start!30904)

(declare-fun res!166455 () Bool)

(declare-fun e!193510 () Bool)

(assert (=> start!30904 (=> (not res!166455) (not e!193510))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30904 (= res!166455 (validMask!0 mask!3709))))

(assert (=> start!30904 e!193510))

(declare-datatypes ((array!15804 0))(
  ( (array!15805 (arr!7482 (Array (_ BitVec 32) (_ BitVec 64))) (size!7834 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15804)

(declare-fun array_inv!5436 (array!15804) Bool)

(assert (=> start!30904 (array_inv!5436 a!3293)))

(assert (=> start!30904 true))

(declare-fun b!309835 () Bool)

(declare-fun res!166449 () Bool)

(assert (=> b!309835 (=> (not res!166449) (not e!193510))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2633 0))(
  ( (MissingZero!2633 (index!12708 (_ BitVec 32))) (Found!2633 (index!12709 (_ BitVec 32))) (Intermediate!2633 (undefined!3445 Bool) (index!12710 (_ BitVec 32)) (x!30905 (_ BitVec 32))) (Undefined!2633) (MissingVacant!2633 (index!12711 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15804 (_ BitVec 32)) SeekEntryResult!2633)

(assert (=> b!309835 (= res!166449 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2633 i!1240)))))

(declare-fun b!309836 () Bool)

(declare-fun e!193507 () Bool)

(assert (=> b!309836 (= e!193510 e!193507)))

(declare-fun res!166454 () Bool)

(assert (=> b!309836 (=> (not res!166454) (not e!193507))))

(declare-fun lt!151756 () SeekEntryResult!2633)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15804 (_ BitVec 32)) SeekEntryResult!2633)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309836 (= res!166454 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151756))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309836 (= lt!151756 (Intermediate!2633 false resIndex!52 resX!52))))

(declare-fun b!309837 () Bool)

(declare-fun e!193509 () Bool)

(assert (=> b!309837 (= e!193509 (not true))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!151757 () SeekEntryResult!2633)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309837 (= lt!151757 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309838 () Bool)

(declare-fun res!166452 () Bool)

(assert (=> b!309838 (=> (not res!166452) (not e!193510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15804 (_ BitVec 32)) Bool)

(assert (=> b!309838 (= res!166452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309839 () Bool)

(declare-fun res!166451 () Bool)

(assert (=> b!309839 (=> (not res!166451) (not e!193510))))

(assert (=> b!309839 (= res!166451 (and (= (size!7834 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7834 a!3293))))))

(declare-fun b!309840 () Bool)

(declare-fun res!166447 () Bool)

(assert (=> b!309840 (=> (not res!166447) (not e!193510))))

(declare-fun arrayContainsKey!0 (array!15804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309840 (= res!166447 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309841 () Bool)

(assert (=> b!309841 (= e!193507 e!193509)))

(declare-fun res!166453 () Bool)

(assert (=> b!309841 (=> (not res!166453) (not e!193509))))

(assert (=> b!309841 (= res!166453 (and (= lt!151757 lt!151756) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7482 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309841 (= lt!151757 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309842 () Bool)

(declare-fun res!166450 () Bool)

(assert (=> b!309842 (=> (not res!166450) (not e!193510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309842 (= res!166450 (validKeyInArray!0 k!2441))))

(declare-fun b!309843 () Bool)

(declare-fun res!166448 () Bool)

(assert (=> b!309843 (=> (not res!166448) (not e!193507))))

(assert (=> b!309843 (= res!166448 (and (= (select (arr!7482 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7834 a!3293))))))

(assert (= (and start!30904 res!166455) b!309839))

(assert (= (and b!309839 res!166451) b!309842))

(assert (= (and b!309842 res!166450) b!309840))

(assert (= (and b!309840 res!166447) b!309835))

(assert (= (and b!309835 res!166449) b!309838))

(assert (= (and b!309838 res!166452) b!309836))

(assert (= (and b!309836 res!166454) b!309843))

(assert (= (and b!309843 res!166448) b!309841))

(assert (= (and b!309841 res!166453) b!309837))

(declare-fun m!319763 () Bool)

(assert (=> b!309836 m!319763))

(assert (=> b!309836 m!319763))

(declare-fun m!319765 () Bool)

(assert (=> b!309836 m!319765))

(declare-fun m!319767 () Bool)

(assert (=> b!309843 m!319767))

(declare-fun m!319769 () Bool)

(assert (=> b!309835 m!319769))

(declare-fun m!319771 () Bool)

(assert (=> start!30904 m!319771))

(declare-fun m!319773 () Bool)

(assert (=> start!30904 m!319773))

(declare-fun m!319775 () Bool)

(assert (=> b!309840 m!319775))

(declare-fun m!319777 () Bool)

(assert (=> b!309842 m!319777))

(declare-fun m!319779 () Bool)

(assert (=> b!309841 m!319779))

(declare-fun m!319781 () Bool)

(assert (=> b!309841 m!319781))

(declare-fun m!319783 () Bool)

(assert (=> b!309838 m!319783))

(declare-fun m!319785 () Bool)

(assert (=> b!309837 m!319785))

(assert (=> b!309837 m!319785))

(declare-fun m!319787 () Bool)

(assert (=> b!309837 m!319787))

(push 1)

(assert (not b!309836))

(assert (not b!309835))

(assert (not b!309838))

(assert (not b!309840))

(assert (not start!30904))

