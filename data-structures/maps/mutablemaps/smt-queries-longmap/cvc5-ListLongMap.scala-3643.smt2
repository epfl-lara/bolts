; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50252 () Bool)

(assert start!50252)

(declare-fun b!549681 () Bool)

(declare-fun e!317394 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!549681 (= e!317394 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34659 0))(
  ( (array!34660 (arr!16641 (Array (_ BitVec 32) (_ BitVec 64))) (size!17005 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34659)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34659 (_ BitVec 32)) Bool)

(assert (=> b!549681 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16968 0))(
  ( (Unit!16969) )
))
(declare-fun lt!250324 () Unit!16968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16968)

(assert (=> b!549681 (= lt!250324 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549682 () Bool)

(declare-fun res!342981 () Bool)

(declare-fun e!317395 () Bool)

(assert (=> b!549682 (=> (not res!342981) (not e!317395))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549682 (= res!342981 (and (= (size!17005 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17005 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17005 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!342975 () Bool)

(assert (=> start!50252 (=> (not res!342975) (not e!317395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50252 (= res!342975 (validMask!0 mask!3119))))

(assert (=> start!50252 e!317395))

(assert (=> start!50252 true))

(declare-fun array_inv!12415 (array!34659) Bool)

(assert (=> start!50252 (array_inv!12415 a!3118)))

(declare-fun b!549683 () Bool)

(declare-fun res!342980 () Bool)

(assert (=> b!549683 (=> (not res!342980) (not e!317395))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549683 (= res!342980 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549684 () Bool)

(declare-fun res!342982 () Bool)

(assert (=> b!549684 (=> (not res!342982) (not e!317394))))

(declare-datatypes ((List!10774 0))(
  ( (Nil!10771) (Cons!10770 (h!11743 (_ BitVec 64)) (t!17010 List!10774)) )
))
(declare-fun arrayNoDuplicates!0 (array!34659 (_ BitVec 32) List!10774) Bool)

(assert (=> b!549684 (= res!342982 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10771))))

(declare-fun b!549685 () Bool)

(declare-fun res!342977 () Bool)

(assert (=> b!549685 (=> (not res!342977) (not e!317395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549685 (= res!342977 (validKeyInArray!0 k!1914))))

(declare-fun b!549686 () Bool)

(assert (=> b!549686 (= e!317395 e!317394)))

(declare-fun res!342983 () Bool)

(assert (=> b!549686 (=> (not res!342983) (not e!317394))))

(declare-datatypes ((SeekEntryResult!5097 0))(
  ( (MissingZero!5097 (index!22615 (_ BitVec 32))) (Found!5097 (index!22616 (_ BitVec 32))) (Intermediate!5097 (undefined!5909 Bool) (index!22617 (_ BitVec 32)) (x!51574 (_ BitVec 32))) (Undefined!5097) (MissingVacant!5097 (index!22618 (_ BitVec 32))) )
))
(declare-fun lt!250325 () SeekEntryResult!5097)

(assert (=> b!549686 (= res!342983 (or (= lt!250325 (MissingZero!5097 i!1132)) (= lt!250325 (MissingVacant!5097 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34659 (_ BitVec 32)) SeekEntryResult!5097)

(assert (=> b!549686 (= lt!250325 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549687 () Bool)

(declare-fun res!342978 () Bool)

(assert (=> b!549687 (=> (not res!342978) (not e!317395))))

(assert (=> b!549687 (= res!342978 (validKeyInArray!0 (select (arr!16641 a!3118) j!142)))))

(declare-fun b!549688 () Bool)

(declare-fun res!342979 () Bool)

(assert (=> b!549688 (=> (not res!342979) (not e!317394))))

(assert (=> b!549688 (= res!342979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549689 () Bool)

(declare-fun res!342976 () Bool)

(assert (=> b!549689 (=> (not res!342976) (not e!317394))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34659 (_ BitVec 32)) SeekEntryResult!5097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549689 (= res!342976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16641 a!3118) j!142) mask!3119) (select (arr!16641 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16641 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16641 a!3118) i!1132 k!1914) j!142) (array!34660 (store (arr!16641 a!3118) i!1132 k!1914) (size!17005 a!3118)) mask!3119)))))

(assert (= (and start!50252 res!342975) b!549682))

(assert (= (and b!549682 res!342981) b!549687))

(assert (= (and b!549687 res!342978) b!549685))

(assert (= (and b!549685 res!342977) b!549683))

(assert (= (and b!549683 res!342980) b!549686))

(assert (= (and b!549686 res!342983) b!549688))

(assert (= (and b!549688 res!342979) b!549684))

(assert (= (and b!549684 res!342982) b!549689))

(assert (= (and b!549689 res!342976) b!549681))

(declare-fun m!526675 () Bool)

(assert (=> b!549685 m!526675))

(declare-fun m!526677 () Bool)

(assert (=> b!549687 m!526677))

(assert (=> b!549687 m!526677))

(declare-fun m!526679 () Bool)

(assert (=> b!549687 m!526679))

(declare-fun m!526681 () Bool)

(assert (=> b!549681 m!526681))

(declare-fun m!526683 () Bool)

(assert (=> b!549681 m!526683))

(declare-fun m!526685 () Bool)

(assert (=> b!549686 m!526685))

(assert (=> b!549689 m!526677))

(declare-fun m!526687 () Bool)

(assert (=> b!549689 m!526687))

(assert (=> b!549689 m!526677))

(declare-fun m!526689 () Bool)

(assert (=> b!549689 m!526689))

(declare-fun m!526691 () Bool)

(assert (=> b!549689 m!526691))

(assert (=> b!549689 m!526689))

(declare-fun m!526693 () Bool)

(assert (=> b!549689 m!526693))

(assert (=> b!549689 m!526687))

(assert (=> b!549689 m!526677))

(declare-fun m!526695 () Bool)

(assert (=> b!549689 m!526695))

(declare-fun m!526697 () Bool)

(assert (=> b!549689 m!526697))

(assert (=> b!549689 m!526689))

(assert (=> b!549689 m!526691))

(declare-fun m!526699 () Bool)

(assert (=> b!549688 m!526699))

(declare-fun m!526701 () Bool)

(assert (=> start!50252 m!526701))

(declare-fun m!526703 () Bool)

(assert (=> start!50252 m!526703))

(declare-fun m!526705 () Bool)

(assert (=> b!549683 m!526705))

(declare-fun m!526707 () Bool)

(assert (=> b!549684 m!526707))

(push 1)

