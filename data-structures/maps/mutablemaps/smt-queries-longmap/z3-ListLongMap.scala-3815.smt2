; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52330 () Bool)

(assert start!52330)

(declare-fun b!570757 () Bool)

(declare-fun res!360689 () Bool)

(declare-fun e!328261 () Bool)

(assert (=> b!570757 (=> (not res!360689) (not e!328261))))

(declare-datatypes ((array!35744 0))(
  ( (array!35745 (arr!17158 (Array (_ BitVec 32) (_ BitVec 64))) (size!17522 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35744)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570757 (= res!360689 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570758 () Bool)

(declare-fun res!360693 () Bool)

(declare-fun e!328256 () Bool)

(assert (=> b!570758 (=> (not res!360693) (not e!328256))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35744 (_ BitVec 32)) Bool)

(assert (=> b!570758 (= res!360693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570759 () Bool)

(declare-fun res!360688 () Bool)

(assert (=> b!570759 (=> (not res!360688) (not e!328261))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570759 (= res!360688 (and (= (size!17522 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17522 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17522 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570760 () Bool)

(declare-datatypes ((SeekEntryResult!5614 0))(
  ( (MissingZero!5614 (index!24683 (_ BitVec 32))) (Found!5614 (index!24684 (_ BitVec 32))) (Intermediate!5614 (undefined!6426 Bool) (index!24685 (_ BitVec 32)) (x!53581 (_ BitVec 32))) (Undefined!5614) (MissingVacant!5614 (index!24686 (_ BitVec 32))) )
))
(declare-fun lt!260278 () SeekEntryResult!5614)

(declare-fun e!328260 () Bool)

(declare-fun lt!260276 () SeekEntryResult!5614)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35744 (_ BitVec 32)) SeekEntryResult!5614)

(assert (=> b!570760 (= e!328260 (= lt!260276 (seekKeyOrZeroReturnVacant!0 (x!53581 lt!260278) (index!24685 lt!260278) (index!24685 lt!260278) (select (arr!17158 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570761 () Bool)

(declare-fun e!328257 () Bool)

(assert (=> b!570761 (= e!328257 e!328260)))

(declare-fun res!360698 () Bool)

(assert (=> b!570761 (=> res!360698 e!328260)))

(get-info :version)

(assert (=> b!570761 (= res!360698 (or (undefined!6426 lt!260278) (not ((_ is Intermediate!5614) lt!260278)) (= (select (arr!17158 a!3118) (index!24685 lt!260278)) (select (arr!17158 a!3118) j!142)) (= (select (arr!17158 a!3118) (index!24685 lt!260278)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570762 () Bool)

(declare-fun res!360696 () Bool)

(assert (=> b!570762 (=> (not res!360696) (not e!328261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570762 (= res!360696 (validKeyInArray!0 (select (arr!17158 a!3118) j!142)))))

(declare-fun b!570763 () Bool)

(declare-fun res!360695 () Bool)

(assert (=> b!570763 (=> (not res!360695) (not e!328261))))

(assert (=> b!570763 (= res!360695 (validKeyInArray!0 k0!1914))))

(declare-fun b!570764 () Bool)

(declare-fun res!360694 () Bool)

(assert (=> b!570764 (=> (not res!360694) (not e!328256))))

(declare-datatypes ((List!11291 0))(
  ( (Nil!11288) (Cons!11287 (h!12311 (_ BitVec 64)) (t!17527 List!11291)) )
))
(declare-fun arrayNoDuplicates!0 (array!35744 (_ BitVec 32) List!11291) Bool)

(assert (=> b!570764 (= res!360694 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11288))))

(declare-fun b!570765 () Bool)

(assert (=> b!570765 (= e!328261 e!328256)))

(declare-fun res!360697 () Bool)

(assert (=> b!570765 (=> (not res!360697) (not e!328256))))

(declare-fun lt!260279 () SeekEntryResult!5614)

(assert (=> b!570765 (= res!360697 (or (= lt!260279 (MissingZero!5614 i!1132)) (= lt!260279 (MissingVacant!5614 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35744 (_ BitVec 32)) SeekEntryResult!5614)

(assert (=> b!570765 (= lt!260279 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!360691 () Bool)

(assert (=> start!52330 (=> (not res!360691) (not e!328261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52330 (= res!360691 (validMask!0 mask!3119))))

(assert (=> start!52330 e!328261))

(assert (=> start!52330 true))

(declare-fun array_inv!12932 (array!35744) Bool)

(assert (=> start!52330 (array_inv!12932 a!3118)))

(declare-fun b!570766 () Bool)

(declare-fun e!328259 () Bool)

(assert (=> b!570766 (= e!328256 e!328259)))

(declare-fun res!360690 () Bool)

(assert (=> b!570766 (=> (not res!360690) (not e!328259))))

(declare-fun lt!260274 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35744 (_ BitVec 32)) SeekEntryResult!5614)

(assert (=> b!570766 (= res!360690 (= lt!260278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260274 (select (store (arr!17158 a!3118) i!1132 k0!1914) j!142) (array!35745 (store (arr!17158 a!3118) i!1132 k0!1914) (size!17522 a!3118)) mask!3119)))))

(declare-fun lt!260277 () (_ BitVec 32))

(assert (=> b!570766 (= lt!260278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260277 (select (arr!17158 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570766 (= lt!260274 (toIndex!0 (select (store (arr!17158 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!570766 (= lt!260277 (toIndex!0 (select (arr!17158 a!3118) j!142) mask!3119))))

(declare-fun b!570767 () Bool)

(assert (=> b!570767 (= e!328259 (not true))))

(assert (=> b!570767 e!328257))

(declare-fun res!360692 () Bool)

(assert (=> b!570767 (=> (not res!360692) (not e!328257))))

(assert (=> b!570767 (= res!360692 (= lt!260276 (Found!5614 j!142)))))

(assert (=> b!570767 (= lt!260276 (seekEntryOrOpen!0 (select (arr!17158 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570767 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17930 0))(
  ( (Unit!17931) )
))
(declare-fun lt!260275 () Unit!17930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35744 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17930)

(assert (=> b!570767 (= lt!260275 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52330 res!360691) b!570759))

(assert (= (and b!570759 res!360688) b!570762))

(assert (= (and b!570762 res!360696) b!570763))

(assert (= (and b!570763 res!360695) b!570757))

(assert (= (and b!570757 res!360689) b!570765))

(assert (= (and b!570765 res!360697) b!570758))

(assert (= (and b!570758 res!360693) b!570764))

(assert (= (and b!570764 res!360694) b!570766))

(assert (= (and b!570766 res!360690) b!570767))

(assert (= (and b!570767 res!360692) b!570761))

(assert (= (and b!570761 (not res!360698)) b!570760))

(declare-fun m!549731 () Bool)

(assert (=> b!570760 m!549731))

(assert (=> b!570760 m!549731))

(declare-fun m!549733 () Bool)

(assert (=> b!570760 m!549733))

(declare-fun m!549735 () Bool)

(assert (=> b!570758 m!549735))

(declare-fun m!549737 () Bool)

(assert (=> start!52330 m!549737))

(declare-fun m!549739 () Bool)

(assert (=> start!52330 m!549739))

(declare-fun m!549741 () Bool)

(assert (=> b!570764 m!549741))

(assert (=> b!570762 m!549731))

(assert (=> b!570762 m!549731))

(declare-fun m!549743 () Bool)

(assert (=> b!570762 m!549743))

(declare-fun m!549745 () Bool)

(assert (=> b!570761 m!549745))

(assert (=> b!570761 m!549731))

(declare-fun m!549747 () Bool)

(assert (=> b!570763 m!549747))

(declare-fun m!549749 () Bool)

(assert (=> b!570757 m!549749))

(declare-fun m!549751 () Bool)

(assert (=> b!570765 m!549751))

(assert (=> b!570767 m!549731))

(assert (=> b!570767 m!549731))

(declare-fun m!549753 () Bool)

(assert (=> b!570767 m!549753))

(declare-fun m!549755 () Bool)

(assert (=> b!570767 m!549755))

(declare-fun m!549757 () Bool)

(assert (=> b!570767 m!549757))

(assert (=> b!570766 m!549731))

(declare-fun m!549759 () Bool)

(assert (=> b!570766 m!549759))

(assert (=> b!570766 m!549731))

(declare-fun m!549761 () Bool)

(assert (=> b!570766 m!549761))

(declare-fun m!549763 () Bool)

(assert (=> b!570766 m!549763))

(declare-fun m!549765 () Bool)

(assert (=> b!570766 m!549765))

(assert (=> b!570766 m!549763))

(declare-fun m!549767 () Bool)

(assert (=> b!570766 m!549767))

(assert (=> b!570766 m!549763))

(declare-fun m!549769 () Bool)

(assert (=> b!570766 m!549769))

(assert (=> b!570766 m!549731))

(check-sat (not b!570766) (not b!570762) (not start!52330) (not b!570760) (not b!570757) (not b!570767) (not b!570765) (not b!570758) (not b!570764) (not b!570763))
(check-sat)
