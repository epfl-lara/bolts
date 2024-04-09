; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52628 () Bool)

(assert start!52628)

(declare-fun b!573851 () Bool)

(declare-fun res!362971 () Bool)

(declare-fun e!330155 () Bool)

(assert (=> b!573851 (=> (not res!362971) (not e!330155))))

(declare-datatypes ((array!35853 0))(
  ( (array!35854 (arr!17208 (Array (_ BitVec 32) (_ BitVec 64))) (size!17572 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35853)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573851 (= res!362971 (validKeyInArray!0 (select (arr!17208 a!3118) j!142)))))

(declare-fun b!573852 () Bool)

(declare-fun res!362965 () Bool)

(assert (=> b!573852 (=> (not res!362965) (not e!330155))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!573852 (= res!362965 (validKeyInArray!0 k!1914))))

(declare-fun b!573853 () Bool)

(declare-fun res!362966 () Bool)

(declare-fun e!330151 () Bool)

(assert (=> b!573853 (=> (not res!362966) (not e!330151))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35853 (_ BitVec 32)) Bool)

(assert (=> b!573853 (= res!362966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!573854 () Bool)

(declare-fun e!330156 () Bool)

(declare-fun e!330153 () Bool)

(assert (=> b!573854 (= e!330156 e!330153)))

(declare-fun res!362970 () Bool)

(assert (=> b!573854 (=> res!362970 e!330153)))

(declare-datatypes ((SeekEntryResult!5664 0))(
  ( (MissingZero!5664 (index!24883 (_ BitVec 32))) (Found!5664 (index!24884 (_ BitVec 32))) (Intermediate!5664 (undefined!6476 Bool) (index!24885 (_ BitVec 32)) (x!53794 (_ BitVec 32))) (Undefined!5664) (MissingVacant!5664 (index!24886 (_ BitVec 32))) )
))
(declare-fun lt!262112 () SeekEntryResult!5664)

(assert (=> b!573854 (= res!362970 (or (undefined!6476 lt!262112) (not (is-Intermediate!5664 lt!262112))))))

(declare-fun b!573855 () Bool)

(declare-fun e!330150 () Bool)

(declare-fun e!330154 () Bool)

(assert (=> b!573855 (= e!330150 e!330154)))

(declare-fun res!362969 () Bool)

(assert (=> b!573855 (=> (not res!362969) (not e!330154))))

(declare-fun lt!262114 () SeekEntryResult!5664)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35853 (_ BitVec 32)) SeekEntryResult!5664)

(assert (=> b!573855 (= res!362969 (= lt!262114 (seekKeyOrZeroReturnVacant!0 (x!53794 lt!262112) (index!24885 lt!262112) (index!24885 lt!262112) (select (arr!17208 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!573856 () Bool)

(assert (=> b!573856 (= e!330155 e!330151)))

(declare-fun res!362975 () Bool)

(assert (=> b!573856 (=> (not res!362975) (not e!330151))))

(declare-fun lt!262108 () SeekEntryResult!5664)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573856 (= res!362975 (or (= lt!262108 (MissingZero!5664 i!1132)) (= lt!262108 (MissingVacant!5664 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35853 (_ BitVec 32)) SeekEntryResult!5664)

(assert (=> b!573856 (= lt!262108 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!573857 () Bool)

(declare-fun e!330157 () Bool)

(assert (=> b!573857 (= e!330157 (not true))))

(assert (=> b!573857 e!330156))

(declare-fun res!362967 () Bool)

(assert (=> b!573857 (=> (not res!362967) (not e!330156))))

(assert (=> b!573857 (= res!362967 (= lt!262114 (Found!5664 j!142)))))

(assert (=> b!573857 (= lt!262114 (seekEntryOrOpen!0 (select (arr!17208 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!573857 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18030 0))(
  ( (Unit!18031) )
))
(declare-fun lt!262115 () Unit!18030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35853 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18030)

(assert (=> b!573857 (= lt!262115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!573858 () Bool)

(declare-fun res!362968 () Bool)

(assert (=> b!573858 (=> (not res!362968) (not e!330155))))

(declare-fun arrayContainsKey!0 (array!35853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573858 (= res!362968 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573860 () Bool)

(assert (=> b!573860 (= e!330153 e!330150)))

(declare-fun res!362973 () Bool)

(assert (=> b!573860 (=> res!362973 e!330150)))

(declare-fun lt!262107 () (_ BitVec 64))

(assert (=> b!573860 (= res!362973 (or (= lt!262107 (select (arr!17208 a!3118) j!142)) (= lt!262107 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!573860 (= lt!262107 (select (arr!17208 a!3118) (index!24885 lt!262112)))))

(declare-fun b!573861 () Bool)

(assert (=> b!573861 (= e!330151 e!330157)))

(declare-fun res!362974 () Bool)

(assert (=> b!573861 (=> (not res!362974) (not e!330157))))

(declare-fun lt!262113 () (_ BitVec 64))

(declare-fun lt!262110 () array!35853)

(declare-fun lt!262111 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35853 (_ BitVec 32)) SeekEntryResult!5664)

(assert (=> b!573861 (= res!362974 (= lt!262112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262111 lt!262113 lt!262110 mask!3119)))))

(declare-fun lt!262109 () (_ BitVec 32))

(assert (=> b!573861 (= lt!262112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262109 (select (arr!17208 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573861 (= lt!262111 (toIndex!0 lt!262113 mask!3119))))

(assert (=> b!573861 (= lt!262113 (select (store (arr!17208 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!573861 (= lt!262109 (toIndex!0 (select (arr!17208 a!3118) j!142) mask!3119))))

(assert (=> b!573861 (= lt!262110 (array!35854 (store (arr!17208 a!3118) i!1132 k!1914) (size!17572 a!3118)))))

(declare-fun b!573862 () Bool)

(assert (=> b!573862 (= e!330154 (= (seekEntryOrOpen!0 lt!262113 lt!262110 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53794 lt!262112) (index!24885 lt!262112) (index!24885 lt!262112) lt!262113 lt!262110 mask!3119)))))

(declare-fun b!573863 () Bool)

(declare-fun res!362963 () Bool)

(assert (=> b!573863 (=> (not res!362963) (not e!330151))))

(declare-datatypes ((List!11341 0))(
  ( (Nil!11338) (Cons!11337 (h!12370 (_ BitVec 64)) (t!17577 List!11341)) )
))
(declare-fun arrayNoDuplicates!0 (array!35853 (_ BitVec 32) List!11341) Bool)

(assert (=> b!573863 (= res!362963 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11338))))

(declare-fun b!573859 () Bool)

(declare-fun res!362972 () Bool)

(assert (=> b!573859 (=> (not res!362972) (not e!330155))))

(assert (=> b!573859 (= res!362972 (and (= (size!17572 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17572 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17572 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!362964 () Bool)

(assert (=> start!52628 (=> (not res!362964) (not e!330155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52628 (= res!362964 (validMask!0 mask!3119))))

(assert (=> start!52628 e!330155))

(assert (=> start!52628 true))

(declare-fun array_inv!12982 (array!35853) Bool)

(assert (=> start!52628 (array_inv!12982 a!3118)))

(assert (= (and start!52628 res!362964) b!573859))

(assert (= (and b!573859 res!362972) b!573851))

(assert (= (and b!573851 res!362971) b!573852))

(assert (= (and b!573852 res!362965) b!573858))

(assert (= (and b!573858 res!362968) b!573856))

(assert (= (and b!573856 res!362975) b!573853))

(assert (= (and b!573853 res!362966) b!573863))

(assert (= (and b!573863 res!362963) b!573861))

(assert (= (and b!573861 res!362974) b!573857))

(assert (= (and b!573857 res!362967) b!573854))

(assert (= (and b!573854 (not res!362970)) b!573860))

(assert (= (and b!573860 (not res!362973)) b!573855))

(assert (= (and b!573855 res!362969) b!573862))

(declare-fun m!552787 () Bool)

(assert (=> b!573853 m!552787))

(declare-fun m!552789 () Bool)

(assert (=> b!573851 m!552789))

(assert (=> b!573851 m!552789))

(declare-fun m!552791 () Bool)

(assert (=> b!573851 m!552791))

(declare-fun m!552793 () Bool)

(assert (=> b!573862 m!552793))

(declare-fun m!552795 () Bool)

(assert (=> b!573862 m!552795))

(assert (=> b!573860 m!552789))

(declare-fun m!552797 () Bool)

(assert (=> b!573860 m!552797))

(declare-fun m!552799 () Bool)

(assert (=> b!573852 m!552799))

(declare-fun m!552801 () Bool)

(assert (=> b!573856 m!552801))

(assert (=> b!573857 m!552789))

(assert (=> b!573857 m!552789))

(declare-fun m!552803 () Bool)

(assert (=> b!573857 m!552803))

(declare-fun m!552805 () Bool)

(assert (=> b!573857 m!552805))

(declare-fun m!552807 () Bool)

(assert (=> b!573857 m!552807))

(declare-fun m!552809 () Bool)

(assert (=> b!573863 m!552809))

(declare-fun m!552811 () Bool)

(assert (=> b!573858 m!552811))

(assert (=> b!573855 m!552789))

(assert (=> b!573855 m!552789))

(declare-fun m!552813 () Bool)

(assert (=> b!573855 m!552813))

(assert (=> b!573861 m!552789))

(declare-fun m!552815 () Bool)

(assert (=> b!573861 m!552815))

(assert (=> b!573861 m!552789))

(declare-fun m!552817 () Bool)

(assert (=> b!573861 m!552817))

(declare-fun m!552819 () Bool)

(assert (=> b!573861 m!552819))

(declare-fun m!552821 () Bool)

(assert (=> b!573861 m!552821))

(assert (=> b!573861 m!552789))

(declare-fun m!552823 () Bool)

(assert (=> b!573861 m!552823))

(declare-fun m!552825 () Bool)

(assert (=> b!573861 m!552825))

(declare-fun m!552827 () Bool)

(assert (=> start!52628 m!552827))

(declare-fun m!552829 () Bool)

(assert (=> start!52628 m!552829))

(push 1)

