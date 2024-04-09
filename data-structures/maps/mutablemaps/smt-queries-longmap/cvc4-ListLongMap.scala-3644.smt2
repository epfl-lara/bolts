; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50262 () Bool)

(assert start!50262)

(declare-fun b!549816 () Bool)

(declare-fun res!343118 () Bool)

(declare-fun e!317438 () Bool)

(assert (=> b!549816 (=> (not res!343118) (not e!317438))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549816 (= res!343118 (validKeyInArray!0 k!1914))))

(declare-fun b!549817 () Bool)

(declare-fun e!317439 () Bool)

(assert (=> b!549817 (= e!317439 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34669 0))(
  ( (array!34670 (arr!16646 (Array (_ BitVec 32) (_ BitVec 64))) (size!17010 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34669)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34669 (_ BitVec 32)) Bool)

(assert (=> b!549817 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16978 0))(
  ( (Unit!16979) )
))
(declare-fun lt!250355 () Unit!16978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16978)

(assert (=> b!549817 (= lt!250355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549818 () Bool)

(declare-fun res!343117 () Bool)

(assert (=> b!549818 (=> (not res!343117) (not e!317439))))

(assert (=> b!549818 (= res!343117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549819 () Bool)

(declare-fun res!343110 () Bool)

(assert (=> b!549819 (=> (not res!343110) (not e!317439))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5102 0))(
  ( (MissingZero!5102 (index!22635 (_ BitVec 32))) (Found!5102 (index!22636 (_ BitVec 32))) (Intermediate!5102 (undefined!5914 Bool) (index!22637 (_ BitVec 32)) (x!51587 (_ BitVec 32))) (Undefined!5102) (MissingVacant!5102 (index!22638 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34669 (_ BitVec 32)) SeekEntryResult!5102)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549819 (= res!343110 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16646 a!3118) j!142) mask!3119) (select (arr!16646 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16646 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16646 a!3118) i!1132 k!1914) j!142) (array!34670 (store (arr!16646 a!3118) i!1132 k!1914) (size!17010 a!3118)) mask!3119)))))

(declare-fun b!549820 () Bool)

(declare-fun res!343115 () Bool)

(assert (=> b!549820 (=> (not res!343115) (not e!317439))))

(declare-datatypes ((List!10779 0))(
  ( (Nil!10776) (Cons!10775 (h!11748 (_ BitVec 64)) (t!17015 List!10779)) )
))
(declare-fun arrayNoDuplicates!0 (array!34669 (_ BitVec 32) List!10779) Bool)

(assert (=> b!549820 (= res!343115 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10776))))

(declare-fun b!549821 () Bool)

(assert (=> b!549821 (= e!317438 e!317439)))

(declare-fun res!343113 () Bool)

(assert (=> b!549821 (=> (not res!343113) (not e!317439))))

(declare-fun lt!250354 () SeekEntryResult!5102)

(assert (=> b!549821 (= res!343113 (or (= lt!250354 (MissingZero!5102 i!1132)) (= lt!250354 (MissingVacant!5102 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34669 (_ BitVec 32)) SeekEntryResult!5102)

(assert (=> b!549821 (= lt!250354 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549822 () Bool)

(declare-fun res!343114 () Bool)

(assert (=> b!549822 (=> (not res!343114) (not e!317438))))

(declare-fun arrayContainsKey!0 (array!34669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549822 (= res!343114 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549823 () Bool)

(declare-fun res!343111 () Bool)

(assert (=> b!549823 (=> (not res!343111) (not e!317438))))

(assert (=> b!549823 (= res!343111 (validKeyInArray!0 (select (arr!16646 a!3118) j!142)))))

(declare-fun b!549824 () Bool)

(declare-fun res!343112 () Bool)

(assert (=> b!549824 (=> (not res!343112) (not e!317438))))

(assert (=> b!549824 (= res!343112 (and (= (size!17010 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17010 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17010 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!343116 () Bool)

(assert (=> start!50262 (=> (not res!343116) (not e!317438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50262 (= res!343116 (validMask!0 mask!3119))))

(assert (=> start!50262 e!317438))

(assert (=> start!50262 true))

(declare-fun array_inv!12420 (array!34669) Bool)

(assert (=> start!50262 (array_inv!12420 a!3118)))

(assert (= (and start!50262 res!343116) b!549824))

(assert (= (and b!549824 res!343112) b!549823))

(assert (= (and b!549823 res!343111) b!549816))

(assert (= (and b!549816 res!343118) b!549822))

(assert (= (and b!549822 res!343114) b!549821))

(assert (= (and b!549821 res!343113) b!549818))

(assert (= (and b!549818 res!343117) b!549820))

(assert (= (and b!549820 res!343115) b!549819))

(assert (= (and b!549819 res!343110) b!549817))

(declare-fun m!526845 () Bool)

(assert (=> b!549817 m!526845))

(declare-fun m!526847 () Bool)

(assert (=> b!549817 m!526847))

(declare-fun m!526849 () Bool)

(assert (=> start!50262 m!526849))

(declare-fun m!526851 () Bool)

(assert (=> start!50262 m!526851))

(declare-fun m!526853 () Bool)

(assert (=> b!549816 m!526853))

(declare-fun m!526855 () Bool)

(assert (=> b!549818 m!526855))

(declare-fun m!526857 () Bool)

(assert (=> b!549819 m!526857))

(declare-fun m!526859 () Bool)

(assert (=> b!549819 m!526859))

(assert (=> b!549819 m!526857))

(declare-fun m!526861 () Bool)

(assert (=> b!549819 m!526861))

(declare-fun m!526863 () Bool)

(assert (=> b!549819 m!526863))

(assert (=> b!549819 m!526861))

(declare-fun m!526865 () Bool)

(assert (=> b!549819 m!526865))

(assert (=> b!549819 m!526859))

(assert (=> b!549819 m!526857))

(declare-fun m!526867 () Bool)

(assert (=> b!549819 m!526867))

(declare-fun m!526869 () Bool)

(assert (=> b!549819 m!526869))

(assert (=> b!549819 m!526861))

(assert (=> b!549819 m!526863))

(assert (=> b!549823 m!526857))

(assert (=> b!549823 m!526857))

(declare-fun m!526871 () Bool)

(assert (=> b!549823 m!526871))

(declare-fun m!526873 () Bool)

(assert (=> b!549820 m!526873))

(declare-fun m!526875 () Bool)

(assert (=> b!549821 m!526875))

(declare-fun m!526877 () Bool)

(assert (=> b!549822 m!526877))

(push 1)

(assert (not b!549816))

(assert (not b!549822))

