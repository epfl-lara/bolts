; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30894 () Bool)

(assert start!30894)

(declare-fun b!309700 () Bool)

(declare-fun e!193447 () Bool)

(declare-fun e!193448 () Bool)

(assert (=> b!309700 (= e!193447 e!193448)))

(declare-fun res!166320 () Bool)

(assert (=> b!309700 (=> (not res!166320) (not e!193448))))

(declare-datatypes ((SeekEntryResult!2628 0))(
  ( (MissingZero!2628 (index!12688 (_ BitVec 32))) (Found!2628 (index!12689 (_ BitVec 32))) (Intermediate!2628 (undefined!3440 Bool) (index!12690 (_ BitVec 32)) (x!30892 (_ BitVec 32))) (Undefined!2628) (MissingVacant!2628 (index!12691 (_ BitVec 32))) )
))
(declare-fun lt!151720 () SeekEntryResult!2628)

(declare-datatypes ((array!15794 0))(
  ( (array!15795 (arr!7477 (Array (_ BitVec 32) (_ BitVec 64))) (size!7829 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15794)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15794 (_ BitVec 32)) SeekEntryResult!2628)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309700 (= res!166320 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151720))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309700 (= lt!151720 (Intermediate!2628 false resIndex!52 resX!52))))

(declare-fun e!193449 () Bool)

(declare-fun b!309701 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!151719 () (_ BitVec 32))

(assert (=> b!309701 (= e!193449 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt lt!151719 #b00000000000000000000000000000000) (bvsge lt!151719 (bvadd #b00000000000000000000000000000001 mask!3709)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000)))))))

(declare-fun lt!151721 () SeekEntryResult!2628)

(assert (=> b!309701 (= lt!151721 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151719 k!2441 a!3293 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309701 (= lt!151719 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309702 () Bool)

(declare-fun res!166315 () Bool)

(assert (=> b!309702 (=> (not res!166315) (not e!193447))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15794 (_ BitVec 32)) SeekEntryResult!2628)

(assert (=> b!309702 (= res!166315 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2628 i!1240)))))

(declare-fun res!166316 () Bool)

(assert (=> start!30894 (=> (not res!166316) (not e!193447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30894 (= res!166316 (validMask!0 mask!3709))))

(assert (=> start!30894 e!193447))

(declare-fun array_inv!5431 (array!15794) Bool)

(assert (=> start!30894 (array_inv!5431 a!3293)))

(assert (=> start!30894 true))

(declare-fun b!309703 () Bool)

(assert (=> b!309703 (= e!193448 e!193449)))

(declare-fun res!166313 () Bool)

(assert (=> b!309703 (=> (not res!166313) (not e!193449))))

(assert (=> b!309703 (= res!166313 (and (= lt!151721 lt!151720) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7477 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309703 (= lt!151721 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309704 () Bool)

(declare-fun res!166319 () Bool)

(assert (=> b!309704 (=> (not res!166319) (not e!193448))))

(assert (=> b!309704 (= res!166319 (and (= (select (arr!7477 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7829 a!3293))))))

(declare-fun b!309705 () Bool)

(declare-fun res!166317 () Bool)

(assert (=> b!309705 (=> (not res!166317) (not e!193447))))

(declare-fun arrayContainsKey!0 (array!15794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309705 (= res!166317 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309706 () Bool)

(declare-fun res!166312 () Bool)

(assert (=> b!309706 (=> (not res!166312) (not e!193447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309706 (= res!166312 (validKeyInArray!0 k!2441))))

(declare-fun b!309707 () Bool)

(declare-fun res!166314 () Bool)

(assert (=> b!309707 (=> (not res!166314) (not e!193447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15794 (_ BitVec 32)) Bool)

(assert (=> b!309707 (= res!166314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309708 () Bool)

(declare-fun res!166318 () Bool)

(assert (=> b!309708 (=> (not res!166318) (not e!193447))))

(assert (=> b!309708 (= res!166318 (and (= (size!7829 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7829 a!3293))))))

(assert (= (and start!30894 res!166316) b!309708))

(assert (= (and b!309708 res!166318) b!309706))

(assert (= (and b!309706 res!166312) b!309705))

(assert (= (and b!309705 res!166317) b!309702))

(assert (= (and b!309702 res!166315) b!309707))

(assert (= (and b!309707 res!166314) b!309700))

(assert (= (and b!309700 res!166320) b!309704))

(assert (= (and b!309704 res!166319) b!309703))

(assert (= (and b!309703 res!166313) b!309701))

(declare-fun m!319633 () Bool)

(assert (=> b!309707 m!319633))

(declare-fun m!319635 () Bool)

(assert (=> b!309705 m!319635))

(declare-fun m!319637 () Bool)

(assert (=> b!309704 m!319637))

(declare-fun m!319639 () Bool)

(assert (=> b!309701 m!319639))

(declare-fun m!319641 () Bool)

(assert (=> b!309701 m!319641))

(declare-fun m!319643 () Bool)

(assert (=> b!309706 m!319643))

(declare-fun m!319645 () Bool)

(assert (=> start!30894 m!319645))

(declare-fun m!319647 () Bool)

(assert (=> start!30894 m!319647))

(declare-fun m!319649 () Bool)

(assert (=> b!309700 m!319649))

(assert (=> b!309700 m!319649))

(declare-fun m!319651 () Bool)

(assert (=> b!309700 m!319651))

(declare-fun m!319653 () Bool)

(assert (=> b!309703 m!319653))

(declare-fun m!319655 () Bool)

(assert (=> b!309703 m!319655))

(declare-fun m!319657 () Bool)

(assert (=> b!309702 m!319657))

(push 1)

(assert (not b!309702))

(assert (not b!309707))

(assert (not b!309703))

(assert (not b!309705))

(assert (not b!309700))

(assert (not b!309706))

(assert (not b!309701))

(assert (not start!30894))

(check-sat)

