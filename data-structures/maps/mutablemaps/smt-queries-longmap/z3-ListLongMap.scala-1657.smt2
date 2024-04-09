; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30782 () Bool)

(assert start!30782)

(declare-fun b!308674 () Bool)

(declare-fun e!192952 () Bool)

(declare-fun e!192954 () Bool)

(assert (=> b!308674 (= e!192952 e!192954)))

(declare-fun res!165446 () Bool)

(assert (=> b!308674 (=> (not res!165446) (not e!192954))))

(declare-datatypes ((array!15733 0))(
  ( (array!15734 (arr!7448 (Array (_ BitVec 32) (_ BitVec 64))) (size!7800 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15733)

(declare-datatypes ((SeekEntryResult!2599 0))(
  ( (MissingZero!2599 (index!12572 (_ BitVec 32))) (Found!2599 (index!12573 (_ BitVec 32))) (Intermediate!2599 (undefined!3411 Bool) (index!12574 (_ BitVec 32)) (x!30774 (_ BitVec 32))) (Undefined!2599) (MissingVacant!2599 (index!12575 (_ BitVec 32))) )
))
(declare-fun lt!151423 () SeekEntryResult!2599)

(declare-fun lt!151424 () SeekEntryResult!2599)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308674 (= res!165446 (and (= lt!151424 lt!151423) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7448 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15733 (_ BitVec 32)) SeekEntryResult!2599)

(assert (=> b!308674 (= lt!151424 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308675 () Bool)

(declare-fun res!165449 () Bool)

(declare-fun e!192953 () Bool)

(assert (=> b!308675 (=> (not res!165449) (not e!192953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308675 (= res!165449 (validKeyInArray!0 k0!2441))))

(declare-fun b!308676 () Bool)

(declare-fun res!165448 () Bool)

(assert (=> b!308676 (=> (not res!165448) (not e!192953))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308676 (= res!165448 (and (= (size!7800 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7800 a!3293))))))

(declare-fun b!308677 () Bool)

(assert (=> b!308677 (= e!192954 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308677 (= lt!151424 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308678 () Bool)

(declare-fun res!165445 () Bool)

(assert (=> b!308678 (=> (not res!165445) (not e!192953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15733 (_ BitVec 32)) Bool)

(assert (=> b!308678 (= res!165445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308679 () Bool)

(declare-fun res!165450 () Bool)

(assert (=> b!308679 (=> (not res!165450) (not e!192953))))

(declare-fun arrayContainsKey!0 (array!15733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308679 (= res!165450 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308680 () Bool)

(declare-fun res!165453 () Bool)

(assert (=> b!308680 (=> (not res!165453) (not e!192952))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308680 (= res!165453 (and (= (select (arr!7448 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7800 a!3293))))))

(declare-fun b!308681 () Bool)

(declare-fun res!165452 () Bool)

(assert (=> b!308681 (=> (not res!165452) (not e!192953))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15733 (_ BitVec 32)) SeekEntryResult!2599)

(assert (=> b!308681 (= res!165452 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2599 i!1240)))))

(declare-fun res!165451 () Bool)

(assert (=> start!30782 (=> (not res!165451) (not e!192953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30782 (= res!165451 (validMask!0 mask!3709))))

(assert (=> start!30782 e!192953))

(declare-fun array_inv!5402 (array!15733) Bool)

(assert (=> start!30782 (array_inv!5402 a!3293)))

(assert (=> start!30782 true))

(declare-fun b!308682 () Bool)

(assert (=> b!308682 (= e!192953 e!192952)))

(declare-fun res!165447 () Bool)

(assert (=> b!308682 (=> (not res!165447) (not e!192952))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308682 (= res!165447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151423))))

(assert (=> b!308682 (= lt!151423 (Intermediate!2599 false resIndex!52 resX!52))))

(assert (= (and start!30782 res!165451) b!308676))

(assert (= (and b!308676 res!165448) b!308675))

(assert (= (and b!308675 res!165449) b!308679))

(assert (= (and b!308679 res!165450) b!308681))

(assert (= (and b!308681 res!165452) b!308678))

(assert (= (and b!308678 res!165445) b!308682))

(assert (= (and b!308682 res!165447) b!308680))

(assert (= (and b!308680 res!165453) b!308674))

(assert (= (and b!308674 res!165446) b!308677))

(declare-fun m!318741 () Bool)

(assert (=> b!308681 m!318741))

(declare-fun m!318743 () Bool)

(assert (=> b!308682 m!318743))

(assert (=> b!308682 m!318743))

(declare-fun m!318745 () Bool)

(assert (=> b!308682 m!318745))

(declare-fun m!318747 () Bool)

(assert (=> b!308678 m!318747))

(declare-fun m!318749 () Bool)

(assert (=> b!308675 m!318749))

(declare-fun m!318751 () Bool)

(assert (=> b!308679 m!318751))

(declare-fun m!318753 () Bool)

(assert (=> start!30782 m!318753))

(declare-fun m!318755 () Bool)

(assert (=> start!30782 m!318755))

(declare-fun m!318757 () Bool)

(assert (=> b!308680 m!318757))

(declare-fun m!318759 () Bool)

(assert (=> b!308674 m!318759))

(declare-fun m!318761 () Bool)

(assert (=> b!308674 m!318761))

(declare-fun m!318763 () Bool)

(assert (=> b!308677 m!318763))

(assert (=> b!308677 m!318763))

(declare-fun m!318765 () Bool)

(assert (=> b!308677 m!318765))

(check-sat (not b!308681) (not b!308679) (not b!308677) (not start!30782) (not b!308675) (not b!308674) (not b!308682) (not b!308678))
(check-sat)
