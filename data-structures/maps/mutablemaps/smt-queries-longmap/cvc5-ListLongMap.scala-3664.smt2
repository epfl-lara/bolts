; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50618 () Bool)

(assert start!50618)

(declare-fun b!552719 () Bool)

(declare-fun res!345287 () Bool)

(declare-fun e!318916 () Bool)

(assert (=> b!552719 (=> (not res!345287) (not e!318916))))

(declare-datatypes ((array!34797 0))(
  ( (array!34798 (arr!16704 (Array (_ BitVec 32) (_ BitVec 64))) (size!17068 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34797)

(declare-datatypes ((List!10837 0))(
  ( (Nil!10834) (Cons!10833 (h!11818 (_ BitVec 64)) (t!17073 List!10837)) )
))
(declare-fun arrayNoDuplicates!0 (array!34797 (_ BitVec 32) List!10837) Bool)

(assert (=> b!552719 (= res!345287 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10834))))

(declare-fun b!552720 () Bool)

(declare-fun res!345288 () Bool)

(assert (=> b!552720 (=> (not res!345288) (not e!318916))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34797 (_ BitVec 32)) Bool)

(assert (=> b!552720 (= res!345288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552721 () Bool)

(declare-fun res!345289 () Bool)

(declare-fun e!318915 () Bool)

(assert (=> b!552721 (=> (not res!345289) (not e!318915))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552721 (= res!345289 (validKeyInArray!0 (select (arr!16704 a!3118) j!142)))))

(declare-fun res!345284 () Bool)

(assert (=> start!50618 (=> (not res!345284) (not e!318915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50618 (= res!345284 (validMask!0 mask!3119))))

(assert (=> start!50618 e!318915))

(assert (=> start!50618 true))

(declare-fun array_inv!12478 (array!34797) Bool)

(assert (=> start!50618 (array_inv!12478 a!3118)))

(declare-fun b!552722 () Bool)

(declare-fun res!345286 () Bool)

(assert (=> b!552722 (=> (not res!345286) (not e!318916))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5160 0))(
  ( (MissingZero!5160 (index!22867 (_ BitVec 32))) (Found!5160 (index!22868 (_ BitVec 32))) (Intermediate!5160 (undefined!5972 Bool) (index!22869 (_ BitVec 32)) (x!51829 (_ BitVec 32))) (Undefined!5160) (MissingVacant!5160 (index!22870 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34797 (_ BitVec 32)) SeekEntryResult!5160)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552722 (= res!345286 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16704 a!3118) j!142) mask!3119) (select (arr!16704 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16704 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16704 a!3118) i!1132 k!1914) j!142) (array!34798 (store (arr!16704 a!3118) i!1132 k!1914) (size!17068 a!3118)) mask!3119)))))

(declare-fun b!552723 () Bool)

(declare-fun res!345281 () Bool)

(assert (=> b!552723 (=> (not res!345281) (not e!318915))))

(assert (=> b!552723 (= res!345281 (validKeyInArray!0 k!1914))))

(declare-fun b!552724 () Bool)

(declare-fun res!345282 () Bool)

(assert (=> b!552724 (=> (not res!345282) (not e!318915))))

(declare-fun arrayContainsKey!0 (array!34797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552724 (= res!345282 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552725 () Bool)

(declare-fun res!345283 () Bool)

(assert (=> b!552725 (=> (not res!345283) (not e!318915))))

(assert (=> b!552725 (= res!345283 (and (= (size!17068 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17068 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17068 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552726 () Bool)

(assert (=> b!552726 (= e!318915 e!318916)))

(declare-fun res!345285 () Bool)

(assert (=> b!552726 (=> (not res!345285) (not e!318916))))

(declare-fun lt!251291 () SeekEntryResult!5160)

(assert (=> b!552726 (= res!345285 (or (= lt!251291 (MissingZero!5160 i!1132)) (= lt!251291 (MissingVacant!5160 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34797 (_ BitVec 32)) SeekEntryResult!5160)

(assert (=> b!552726 (= lt!251291 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552727 () Bool)

(assert (=> b!552727 (= e!318916 (not true))))

(declare-fun e!318914 () Bool)

(assert (=> b!552727 e!318914))

(declare-fun res!345290 () Bool)

(assert (=> b!552727 (=> (not res!345290) (not e!318914))))

(assert (=> b!552727 (= res!345290 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17094 0))(
  ( (Unit!17095) )
))
(declare-fun lt!251290 () Unit!17094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17094)

(assert (=> b!552727 (= lt!251290 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552728 () Bool)

(assert (=> b!552728 (= e!318914 (= (seekEntryOrOpen!0 (select (arr!16704 a!3118) j!142) a!3118 mask!3119) (Found!5160 j!142)))))

(assert (= (and start!50618 res!345284) b!552725))

(assert (= (and b!552725 res!345283) b!552721))

(assert (= (and b!552721 res!345289) b!552723))

(assert (= (and b!552723 res!345281) b!552724))

(assert (= (and b!552724 res!345282) b!552726))

(assert (= (and b!552726 res!345285) b!552720))

(assert (= (and b!552720 res!345288) b!552719))

(assert (= (and b!552719 res!345287) b!552722))

(assert (= (and b!552722 res!345286) b!552727))

(assert (= (and b!552727 res!345290) b!552728))

(declare-fun m!529735 () Bool)

(assert (=> start!50618 m!529735))

(declare-fun m!529737 () Bool)

(assert (=> start!50618 m!529737))

(declare-fun m!529739 () Bool)

(assert (=> b!552719 m!529739))

(declare-fun m!529741 () Bool)

(assert (=> b!552724 m!529741))

(declare-fun m!529743 () Bool)

(assert (=> b!552728 m!529743))

(assert (=> b!552728 m!529743))

(declare-fun m!529745 () Bool)

(assert (=> b!552728 m!529745))

(declare-fun m!529747 () Bool)

(assert (=> b!552720 m!529747))

(assert (=> b!552722 m!529743))

(declare-fun m!529749 () Bool)

(assert (=> b!552722 m!529749))

(assert (=> b!552722 m!529743))

(declare-fun m!529751 () Bool)

(assert (=> b!552722 m!529751))

(declare-fun m!529753 () Bool)

(assert (=> b!552722 m!529753))

(assert (=> b!552722 m!529751))

(declare-fun m!529755 () Bool)

(assert (=> b!552722 m!529755))

(assert (=> b!552722 m!529749))

(assert (=> b!552722 m!529743))

(declare-fun m!529757 () Bool)

(assert (=> b!552722 m!529757))

(declare-fun m!529759 () Bool)

(assert (=> b!552722 m!529759))

(assert (=> b!552722 m!529751))

(assert (=> b!552722 m!529753))

(declare-fun m!529761 () Bool)

(assert (=> b!552723 m!529761))

(declare-fun m!529763 () Bool)

(assert (=> b!552727 m!529763))

(declare-fun m!529765 () Bool)

(assert (=> b!552727 m!529765))

(declare-fun m!529767 () Bool)

(assert (=> b!552726 m!529767))

(assert (=> b!552721 m!529743))

(assert (=> b!552721 m!529743))

(declare-fun m!529769 () Bool)

(assert (=> b!552721 m!529769))

(push 1)

