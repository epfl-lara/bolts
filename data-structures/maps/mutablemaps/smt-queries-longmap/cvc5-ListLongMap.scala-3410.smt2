; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47392 () Bool)

(assert start!47392)

(declare-fun b!520795 () Bool)

(declare-fun e!303885 () Bool)

(assert (=> b!520795 (= e!303885 false)))

(declare-fun b!520796 () Bool)

(declare-fun res!318809 () Bool)

(declare-fun e!303887 () Bool)

(assert (=> b!520796 (=> res!318809 e!303887)))

(declare-datatypes ((SeekEntryResult!4416 0))(
  ( (MissingZero!4416 (index!19867 (_ BitVec 32))) (Found!4416 (index!19868 (_ BitVec 32))) (Intermediate!4416 (undefined!5228 Bool) (index!19869 (_ BitVec 32)) (x!48885 (_ BitVec 32))) (Undefined!4416) (MissingVacant!4416 (index!19870 (_ BitVec 32))) )
))
(declare-fun lt!238636 () SeekEntryResult!4416)

(assert (=> b!520796 (= res!318809 (or (undefined!5228 lt!238636) (not (is-Intermediate!4416 lt!238636))))))

(declare-fun b!520797 () Bool)

(declare-fun res!318815 () Bool)

(declare-fun e!303884 () Bool)

(assert (=> b!520797 (=> (not res!318815) (not e!303884))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33178 0))(
  ( (array!33179 (arr!15942 (Array (_ BitVec 32) (_ BitVec 64))) (size!16306 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33178)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!520797 (= res!318815 (and (= (size!16306 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16306 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16306 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520798 () Bool)

(declare-fun e!303889 () Bool)

(assert (=> b!520798 (= e!303889 (not e!303887))))

(declare-fun res!318811 () Bool)

(assert (=> b!520798 (=> res!318811 e!303887)))

(declare-fun lt!238632 () array!33178)

(declare-fun lt!238633 () (_ BitVec 32))

(declare-fun lt!238637 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33178 (_ BitVec 32)) SeekEntryResult!4416)

(assert (=> b!520798 (= res!318811 (= lt!238636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238633 lt!238637 lt!238632 mask!3524)))))

(declare-fun lt!238635 () (_ BitVec 32))

(assert (=> b!520798 (= lt!238636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238635 (select (arr!15942 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520798 (= lt!238633 (toIndex!0 lt!238637 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!520798 (= lt!238637 (select (store (arr!15942 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520798 (= lt!238635 (toIndex!0 (select (arr!15942 a!3235) j!176) mask!3524))))

(assert (=> b!520798 (= lt!238632 (array!33179 (store (arr!15942 a!3235) i!1204 k!2280) (size!16306 a!3235)))))

(declare-fun e!303888 () Bool)

(assert (=> b!520798 e!303888))

(declare-fun res!318808 () Bool)

(assert (=> b!520798 (=> (not res!318808) (not e!303888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33178 (_ BitVec 32)) Bool)

(assert (=> b!520798 (= res!318808 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16130 0))(
  ( (Unit!16131) )
))
(declare-fun lt!238634 () Unit!16130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16130)

(assert (=> b!520798 (= lt!238634 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520799 () Bool)

(declare-fun res!318817 () Bool)

(assert (=> b!520799 (=> (not res!318817) (not e!303889))))

(declare-datatypes ((List!10153 0))(
  ( (Nil!10150) (Cons!10149 (h!11071 (_ BitVec 64)) (t!16389 List!10153)) )
))
(declare-fun arrayNoDuplicates!0 (array!33178 (_ BitVec 32) List!10153) Bool)

(assert (=> b!520799 (= res!318817 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10150))))

(declare-fun res!318812 () Bool)

(assert (=> start!47392 (=> (not res!318812) (not e!303884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47392 (= res!318812 (validMask!0 mask!3524))))

(assert (=> start!47392 e!303884))

(assert (=> start!47392 true))

(declare-fun array_inv!11716 (array!33178) Bool)

(assert (=> start!47392 (array_inv!11716 a!3235)))

(declare-fun b!520800 () Bool)

(declare-fun res!318814 () Bool)

(assert (=> b!520800 (=> (not res!318814) (not e!303884))))

(declare-fun arrayContainsKey!0 (array!33178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520800 (= res!318814 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520801 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33178 (_ BitVec 32)) SeekEntryResult!4416)

(assert (=> b!520801 (= e!303888 (= (seekEntryOrOpen!0 (select (arr!15942 a!3235) j!176) a!3235 mask!3524) (Found!4416 j!176)))))

(declare-fun b!520802 () Bool)

(assert (=> b!520802 (= e!303887 true)))

(assert (=> b!520802 (and (or (= (select (arr!15942 a!3235) (index!19869 lt!238636)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15942 a!3235) (index!19869 lt!238636)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15942 a!3235) (index!19869 lt!238636)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15942 a!3235) (index!19869 lt!238636)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238640 () Unit!16130)

(declare-fun e!303886 () Unit!16130)

(assert (=> b!520802 (= lt!238640 e!303886)))

(declare-fun c!61295 () Bool)

(assert (=> b!520802 (= c!61295 (= (select (arr!15942 a!3235) (index!19869 lt!238636)) (select (arr!15942 a!3235) j!176)))))

(assert (=> b!520802 (and (bvslt (x!48885 lt!238636) #b01111111111111111111111111111110) (or (= (select (arr!15942 a!3235) (index!19869 lt!238636)) (select (arr!15942 a!3235) j!176)) (= (select (arr!15942 a!3235) (index!19869 lt!238636)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15942 a!3235) (index!19869 lt!238636)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520803 () Bool)

(declare-fun Unit!16132 () Unit!16130)

(assert (=> b!520803 (= e!303886 Unit!16132)))

(declare-fun lt!238638 () Unit!16130)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33178 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16130)

(assert (=> b!520803 (= lt!238638 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238635 #b00000000000000000000000000000000 (index!19869 lt!238636) (x!48885 lt!238636) mask!3524))))

(declare-fun res!318818 () Bool)

(assert (=> b!520803 (= res!318818 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238635 lt!238637 lt!238632 mask!3524) (Intermediate!4416 false (index!19869 lt!238636) (x!48885 lt!238636))))))

(assert (=> b!520803 (=> (not res!318818) (not e!303885))))

(assert (=> b!520803 e!303885))

(declare-fun b!520804 () Bool)

(declare-fun Unit!16133 () Unit!16130)

(assert (=> b!520804 (= e!303886 Unit!16133)))

(declare-fun b!520805 () Bool)

(declare-fun res!318810 () Bool)

(assert (=> b!520805 (=> (not res!318810) (not e!303884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520805 (= res!318810 (validKeyInArray!0 k!2280))))

(declare-fun b!520806 () Bool)

(declare-fun res!318816 () Bool)

(assert (=> b!520806 (=> (not res!318816) (not e!303884))))

(assert (=> b!520806 (= res!318816 (validKeyInArray!0 (select (arr!15942 a!3235) j!176)))))

(declare-fun b!520807 () Bool)

(declare-fun res!318807 () Bool)

(assert (=> b!520807 (=> (not res!318807) (not e!303889))))

(assert (=> b!520807 (= res!318807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520808 () Bool)

(assert (=> b!520808 (= e!303884 e!303889)))

(declare-fun res!318813 () Bool)

(assert (=> b!520808 (=> (not res!318813) (not e!303889))))

(declare-fun lt!238639 () SeekEntryResult!4416)

(assert (=> b!520808 (= res!318813 (or (= lt!238639 (MissingZero!4416 i!1204)) (= lt!238639 (MissingVacant!4416 i!1204))))))

(assert (=> b!520808 (= lt!238639 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!47392 res!318812) b!520797))

(assert (= (and b!520797 res!318815) b!520806))

(assert (= (and b!520806 res!318816) b!520805))

(assert (= (and b!520805 res!318810) b!520800))

(assert (= (and b!520800 res!318814) b!520808))

(assert (= (and b!520808 res!318813) b!520807))

(assert (= (and b!520807 res!318807) b!520799))

(assert (= (and b!520799 res!318817) b!520798))

(assert (= (and b!520798 res!318808) b!520801))

(assert (= (and b!520798 (not res!318811)) b!520796))

(assert (= (and b!520796 (not res!318809)) b!520802))

(assert (= (and b!520802 c!61295) b!520803))

(assert (= (and b!520802 (not c!61295)) b!520804))

(assert (= (and b!520803 res!318818) b!520795))

(declare-fun m!501745 () Bool)

(assert (=> b!520803 m!501745))

(declare-fun m!501747 () Bool)

(assert (=> b!520803 m!501747))

(declare-fun m!501749 () Bool)

(assert (=> start!47392 m!501749))

(declare-fun m!501751 () Bool)

(assert (=> start!47392 m!501751))

(declare-fun m!501753 () Bool)

(assert (=> b!520807 m!501753))

(declare-fun m!501755 () Bool)

(assert (=> b!520800 m!501755))

(declare-fun m!501757 () Bool)

(assert (=> b!520802 m!501757))

(declare-fun m!501759 () Bool)

(assert (=> b!520802 m!501759))

(declare-fun m!501761 () Bool)

(assert (=> b!520805 m!501761))

(assert (=> b!520798 m!501759))

(declare-fun m!501763 () Bool)

(assert (=> b!520798 m!501763))

(declare-fun m!501765 () Bool)

(assert (=> b!520798 m!501765))

(declare-fun m!501767 () Bool)

(assert (=> b!520798 m!501767))

(declare-fun m!501769 () Bool)

(assert (=> b!520798 m!501769))

(assert (=> b!520798 m!501759))

(declare-fun m!501771 () Bool)

(assert (=> b!520798 m!501771))

(assert (=> b!520798 m!501759))

(declare-fun m!501773 () Bool)

(assert (=> b!520798 m!501773))

(declare-fun m!501775 () Bool)

(assert (=> b!520798 m!501775))

(declare-fun m!501777 () Bool)

(assert (=> b!520798 m!501777))

(declare-fun m!501779 () Bool)

(assert (=> b!520808 m!501779))

(assert (=> b!520806 m!501759))

(assert (=> b!520806 m!501759))

(declare-fun m!501781 () Bool)

(assert (=> b!520806 m!501781))

(declare-fun m!501783 () Bool)

(assert (=> b!520799 m!501783))

(assert (=> b!520801 m!501759))

(assert (=> b!520801 m!501759))

(declare-fun m!501785 () Bool)

(assert (=> b!520801 m!501785))

(push 1)

