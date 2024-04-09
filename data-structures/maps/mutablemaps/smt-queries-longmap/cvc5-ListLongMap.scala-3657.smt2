; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50516 () Bool)

(assert start!50516)

(declare-fun b!551789 () Bool)

(declare-fun res!344534 () Bool)

(declare-fun e!318440 () Bool)

(assert (=> b!551789 (=> (not res!344534) (not e!318440))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34752 0))(
  ( (array!34753 (arr!16683 (Array (_ BitVec 32) (_ BitVec 64))) (size!17047 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34752)

(assert (=> b!551789 (= res!344534 (and (= (size!17047 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17047 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17047 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551790 () Bool)

(declare-fun res!344540 () Bool)

(declare-fun e!318441 () Bool)

(assert (=> b!551790 (=> (not res!344540) (not e!318441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34752 (_ BitVec 32)) Bool)

(assert (=> b!551790 (= res!344540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!318439 () Bool)

(declare-fun b!551791 () Bool)

(declare-datatypes ((SeekEntryResult!5139 0))(
  ( (MissingZero!5139 (index!22783 (_ BitVec 32))) (Found!5139 (index!22784 (_ BitVec 32))) (Intermediate!5139 (undefined!5951 Bool) (index!22785 (_ BitVec 32)) (x!51746 (_ BitVec 32))) (Undefined!5139) (MissingVacant!5139 (index!22786 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34752 (_ BitVec 32)) SeekEntryResult!5139)

(assert (=> b!551791 (= e!318439 (= (seekEntryOrOpen!0 (select (arr!16683 a!3118) j!142) a!3118 mask!3119) (Found!5139 j!142)))))

(declare-fun b!551792 () Bool)

(declare-fun res!344541 () Bool)

(assert (=> b!551792 (=> (not res!344541) (not e!318441))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34752 (_ BitVec 32)) SeekEntryResult!5139)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551792 (= res!344541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16683 a!3118) j!142) mask!3119) (select (arr!16683 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16683 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16683 a!3118) i!1132 k!1914) j!142) (array!34753 (store (arr!16683 a!3118) i!1132 k!1914) (size!17047 a!3118)) mask!3119)))))

(declare-fun res!344537 () Bool)

(assert (=> start!50516 (=> (not res!344537) (not e!318440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50516 (= res!344537 (validMask!0 mask!3119))))

(assert (=> start!50516 e!318440))

(assert (=> start!50516 true))

(declare-fun array_inv!12457 (array!34752) Bool)

(assert (=> start!50516 (array_inv!12457 a!3118)))

(declare-fun b!551793 () Bool)

(declare-fun res!344536 () Bool)

(assert (=> b!551793 (=> (not res!344536) (not e!318440))))

(declare-fun arrayContainsKey!0 (array!34752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551793 (= res!344536 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551794 () Bool)

(declare-fun res!344539 () Bool)

(assert (=> b!551794 (=> (not res!344539) (not e!318441))))

(declare-datatypes ((List!10816 0))(
  ( (Nil!10813) (Cons!10812 (h!11794 (_ BitVec 64)) (t!17052 List!10816)) )
))
(declare-fun arrayNoDuplicates!0 (array!34752 (_ BitVec 32) List!10816) Bool)

(assert (=> b!551794 (= res!344539 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10813))))

(declare-fun b!551795 () Bool)

(assert (=> b!551795 (= e!318441 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!551795 e!318439))

(declare-fun res!344543 () Bool)

(assert (=> b!551795 (=> (not res!344543) (not e!318439))))

(assert (=> b!551795 (= res!344543 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17052 0))(
  ( (Unit!17053) )
))
(declare-fun lt!250972 () Unit!17052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34752 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17052)

(assert (=> b!551795 (= lt!250972 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551796 () Bool)

(declare-fun res!344535 () Bool)

(assert (=> b!551796 (=> (not res!344535) (not e!318440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551796 (= res!344535 (validKeyInArray!0 k!1914))))

(declare-fun b!551797 () Bool)

(declare-fun res!344542 () Bool)

(assert (=> b!551797 (=> (not res!344542) (not e!318440))))

(assert (=> b!551797 (= res!344542 (validKeyInArray!0 (select (arr!16683 a!3118) j!142)))))

(declare-fun b!551798 () Bool)

(assert (=> b!551798 (= e!318440 e!318441)))

(declare-fun res!344538 () Bool)

(assert (=> b!551798 (=> (not res!344538) (not e!318441))))

(declare-fun lt!250973 () SeekEntryResult!5139)

(assert (=> b!551798 (= res!344538 (or (= lt!250973 (MissingZero!5139 i!1132)) (= lt!250973 (MissingVacant!5139 i!1132))))))

(assert (=> b!551798 (= lt!250973 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50516 res!344537) b!551789))

(assert (= (and b!551789 res!344534) b!551797))

(assert (= (and b!551797 res!344542) b!551796))

(assert (= (and b!551796 res!344535) b!551793))

(assert (= (and b!551793 res!344536) b!551798))

(assert (= (and b!551798 res!344538) b!551790))

(assert (= (and b!551790 res!344540) b!551794))

(assert (= (and b!551794 res!344539) b!551792))

(assert (= (and b!551792 res!344541) b!551795))

(assert (= (and b!551795 res!344543) b!551791))

(declare-fun m!528769 () Bool)

(assert (=> b!551790 m!528769))

(declare-fun m!528771 () Bool)

(assert (=> b!551794 m!528771))

(declare-fun m!528773 () Bool)

(assert (=> b!551798 m!528773))

(declare-fun m!528775 () Bool)

(assert (=> b!551791 m!528775))

(assert (=> b!551791 m!528775))

(declare-fun m!528777 () Bool)

(assert (=> b!551791 m!528777))

(declare-fun m!528779 () Bool)

(assert (=> b!551795 m!528779))

(declare-fun m!528781 () Bool)

(assert (=> b!551795 m!528781))

(declare-fun m!528783 () Bool)

(assert (=> start!50516 m!528783))

(declare-fun m!528785 () Bool)

(assert (=> start!50516 m!528785))

(assert (=> b!551797 m!528775))

(assert (=> b!551797 m!528775))

(declare-fun m!528787 () Bool)

(assert (=> b!551797 m!528787))

(declare-fun m!528789 () Bool)

(assert (=> b!551793 m!528789))

(declare-fun m!528791 () Bool)

(assert (=> b!551796 m!528791))

(assert (=> b!551792 m!528775))

(declare-fun m!528793 () Bool)

(assert (=> b!551792 m!528793))

(assert (=> b!551792 m!528775))

(declare-fun m!528795 () Bool)

(assert (=> b!551792 m!528795))

(declare-fun m!528797 () Bool)

(assert (=> b!551792 m!528797))

(assert (=> b!551792 m!528795))

(declare-fun m!528799 () Bool)

(assert (=> b!551792 m!528799))

(assert (=> b!551792 m!528793))

(assert (=> b!551792 m!528775))

(declare-fun m!528801 () Bool)

(assert (=> b!551792 m!528801))

(declare-fun m!528803 () Bool)

(assert (=> b!551792 m!528803))

(assert (=> b!551792 m!528795))

(assert (=> b!551792 m!528797))

(push 1)

