; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50624 () Bool)

(assert start!50624)

(declare-fun b!552809 () Bool)

(declare-fun res!345376 () Bool)

(declare-fun e!318949 () Bool)

(assert (=> b!552809 (=> (not res!345376) (not e!318949))))

(declare-datatypes ((array!34803 0))(
  ( (array!34804 (arr!16707 (Array (_ BitVec 32) (_ BitVec 64))) (size!17071 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34803)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34803 (_ BitVec 32)) Bool)

(assert (=> b!552809 (= res!345376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345377 () Bool)

(declare-fun e!318952 () Bool)

(assert (=> start!50624 (=> (not res!345377) (not e!318952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50624 (= res!345377 (validMask!0 mask!3119))))

(assert (=> start!50624 e!318952))

(assert (=> start!50624 true))

(declare-fun array_inv!12481 (array!34803) Bool)

(assert (=> start!50624 (array_inv!12481 a!3118)))

(declare-fun b!552810 () Bool)

(declare-fun res!345371 () Bool)

(assert (=> b!552810 (=> (not res!345371) (not e!318949))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5163 0))(
  ( (MissingZero!5163 (index!22879 (_ BitVec 32))) (Found!5163 (index!22880 (_ BitVec 32))) (Intermediate!5163 (undefined!5975 Bool) (index!22881 (_ BitVec 32)) (x!51840 (_ BitVec 32))) (Undefined!5163) (MissingVacant!5163 (index!22882 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34803 (_ BitVec 32)) SeekEntryResult!5163)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552810 (= res!345371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16707 a!3118) j!142) mask!3119) (select (arr!16707 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16707 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16707 a!3118) i!1132 k!1914) j!142) (array!34804 (store (arr!16707 a!3118) i!1132 k!1914) (size!17071 a!3118)) mask!3119)))))

(declare-fun b!552811 () Bool)

(declare-fun res!345374 () Bool)

(assert (=> b!552811 (=> (not res!345374) (not e!318952))))

(assert (=> b!552811 (= res!345374 (and (= (size!17071 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17071 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17071 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552812 () Bool)

(assert (=> b!552812 (= e!318952 e!318949)))

(declare-fun res!345380 () Bool)

(assert (=> b!552812 (=> (not res!345380) (not e!318949))))

(declare-fun lt!251309 () SeekEntryResult!5163)

(assert (=> b!552812 (= res!345380 (or (= lt!251309 (MissingZero!5163 i!1132)) (= lt!251309 (MissingVacant!5163 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34803 (_ BitVec 32)) SeekEntryResult!5163)

(assert (=> b!552812 (= lt!251309 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552813 () Bool)

(declare-fun res!345379 () Bool)

(assert (=> b!552813 (=> (not res!345379) (not e!318952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552813 (= res!345379 (validKeyInArray!0 k!1914))))

(declare-fun b!552814 () Bool)

(declare-fun res!345375 () Bool)

(assert (=> b!552814 (=> (not res!345375) (not e!318949))))

(declare-datatypes ((List!10840 0))(
  ( (Nil!10837) (Cons!10836 (h!11821 (_ BitVec 64)) (t!17076 List!10840)) )
))
(declare-fun arrayNoDuplicates!0 (array!34803 (_ BitVec 32) List!10840) Bool)

(assert (=> b!552814 (= res!345375 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10837))))

(declare-fun b!552815 () Bool)

(declare-fun res!345373 () Bool)

(assert (=> b!552815 (=> (not res!345373) (not e!318952))))

(declare-fun arrayContainsKey!0 (array!34803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552815 (= res!345373 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552816 () Bool)

(declare-fun res!345372 () Bool)

(assert (=> b!552816 (=> (not res!345372) (not e!318952))))

(assert (=> b!552816 (= res!345372 (validKeyInArray!0 (select (arr!16707 a!3118) j!142)))))

(declare-fun b!552817 () Bool)

(assert (=> b!552817 (= e!318949 (not true))))

(declare-fun e!318950 () Bool)

(assert (=> b!552817 e!318950))

(declare-fun res!345378 () Bool)

(assert (=> b!552817 (=> (not res!345378) (not e!318950))))

(assert (=> b!552817 (= res!345378 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17100 0))(
  ( (Unit!17101) )
))
(declare-fun lt!251308 () Unit!17100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17100)

(assert (=> b!552817 (= lt!251308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552818 () Bool)

(assert (=> b!552818 (= e!318950 (= (seekEntryOrOpen!0 (select (arr!16707 a!3118) j!142) a!3118 mask!3119) (Found!5163 j!142)))))

(assert (= (and start!50624 res!345377) b!552811))

(assert (= (and b!552811 res!345374) b!552816))

(assert (= (and b!552816 res!345372) b!552813))

(assert (= (and b!552813 res!345379) b!552815))

(assert (= (and b!552815 res!345373) b!552812))

(assert (= (and b!552812 res!345380) b!552809))

(assert (= (and b!552809 res!345376) b!552814))

(assert (= (and b!552814 res!345375) b!552810))

(assert (= (and b!552810 res!345371) b!552817))

(assert (= (and b!552817 res!345378) b!552818))

(declare-fun m!529843 () Bool)

(assert (=> b!552813 m!529843))

(declare-fun m!529845 () Bool)

(assert (=> start!50624 m!529845))

(declare-fun m!529847 () Bool)

(assert (=> start!50624 m!529847))

(declare-fun m!529849 () Bool)

(assert (=> b!552817 m!529849))

(declare-fun m!529851 () Bool)

(assert (=> b!552817 m!529851))

(declare-fun m!529853 () Bool)

(assert (=> b!552812 m!529853))

(declare-fun m!529855 () Bool)

(assert (=> b!552809 m!529855))

(declare-fun m!529857 () Bool)

(assert (=> b!552818 m!529857))

(assert (=> b!552818 m!529857))

(declare-fun m!529859 () Bool)

(assert (=> b!552818 m!529859))

(assert (=> b!552816 m!529857))

(assert (=> b!552816 m!529857))

(declare-fun m!529861 () Bool)

(assert (=> b!552816 m!529861))

(declare-fun m!529863 () Bool)

(assert (=> b!552815 m!529863))

(assert (=> b!552810 m!529857))

(declare-fun m!529865 () Bool)

(assert (=> b!552810 m!529865))

(assert (=> b!552810 m!529857))

(declare-fun m!529867 () Bool)

(assert (=> b!552810 m!529867))

(declare-fun m!529869 () Bool)

(assert (=> b!552810 m!529869))

(assert (=> b!552810 m!529867))

(declare-fun m!529871 () Bool)

(assert (=> b!552810 m!529871))

(assert (=> b!552810 m!529865))

(assert (=> b!552810 m!529857))

(declare-fun m!529873 () Bool)

(assert (=> b!552810 m!529873))

(declare-fun m!529875 () Bool)

(assert (=> b!552810 m!529875))

(assert (=> b!552810 m!529867))

(assert (=> b!552810 m!529869))

(declare-fun m!529877 () Bool)

(assert (=> b!552814 m!529877))

(push 1)

