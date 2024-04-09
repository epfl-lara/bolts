; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50622 () Bool)

(assert start!50622)

(declare-fun b!552779 () Bool)

(declare-fun e!318940 () Bool)

(declare-fun e!318938 () Bool)

(assert (=> b!552779 (= e!318940 e!318938)))

(declare-fun res!345342 () Bool)

(assert (=> b!552779 (=> (not res!345342) (not e!318938))))

(declare-datatypes ((SeekEntryResult!5162 0))(
  ( (MissingZero!5162 (index!22875 (_ BitVec 32))) (Found!5162 (index!22876 (_ BitVec 32))) (Intermediate!5162 (undefined!5974 Bool) (index!22877 (_ BitVec 32)) (x!51831 (_ BitVec 32))) (Undefined!5162) (MissingVacant!5162 (index!22878 (_ BitVec 32))) )
))
(declare-fun lt!251303 () SeekEntryResult!5162)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552779 (= res!345342 (or (= lt!251303 (MissingZero!5162 i!1132)) (= lt!251303 (MissingVacant!5162 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34801 0))(
  ( (array!34802 (arr!16706 (Array (_ BitVec 32) (_ BitVec 64))) (size!17070 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34801)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34801 (_ BitVec 32)) SeekEntryResult!5162)

(assert (=> b!552779 (= lt!251303 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552780 () Bool)

(declare-fun res!345347 () Bool)

(assert (=> b!552780 (=> (not res!345347) (not e!318940))))

(declare-fun arrayContainsKey!0 (array!34801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552780 (= res!345347 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552781 () Bool)

(declare-fun res!345343 () Bool)

(assert (=> b!552781 (=> (not res!345343) (not e!318940))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!552781 (= res!345343 (and (= (size!17070 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17070 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17070 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552782 () Bool)

(declare-fun res!345345 () Bool)

(assert (=> b!552782 (=> (not res!345345) (not e!318938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34801 (_ BitVec 32)) Bool)

(assert (=> b!552782 (= res!345345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552783 () Bool)

(assert (=> b!552783 (= e!318938 (not true))))

(declare-fun e!318937 () Bool)

(assert (=> b!552783 e!318937))

(declare-fun res!345344 () Bool)

(assert (=> b!552783 (=> (not res!345344) (not e!318937))))

(assert (=> b!552783 (= res!345344 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17098 0))(
  ( (Unit!17099) )
))
(declare-fun lt!251302 () Unit!17098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17098)

(assert (=> b!552783 (= lt!251302 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552784 () Bool)

(assert (=> b!552784 (= e!318937 (= (seekEntryOrOpen!0 (select (arr!16706 a!3118) j!142) a!3118 mask!3119) (Found!5162 j!142)))))

(declare-fun b!552785 () Bool)

(declare-fun res!345348 () Bool)

(assert (=> b!552785 (=> (not res!345348) (not e!318940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552785 (= res!345348 (validKeyInArray!0 (select (arr!16706 a!3118) j!142)))))

(declare-fun res!345346 () Bool)

(assert (=> start!50622 (=> (not res!345346) (not e!318940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50622 (= res!345346 (validMask!0 mask!3119))))

(assert (=> start!50622 e!318940))

(assert (=> start!50622 true))

(declare-fun array_inv!12480 (array!34801) Bool)

(assert (=> start!50622 (array_inv!12480 a!3118)))

(declare-fun b!552786 () Bool)

(declare-fun res!345341 () Bool)

(assert (=> b!552786 (=> (not res!345341) (not e!318938))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34801 (_ BitVec 32)) SeekEntryResult!5162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552786 (= res!345341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16706 a!3118) j!142) mask!3119) (select (arr!16706 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16706 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16706 a!3118) i!1132 k!1914) j!142) (array!34802 (store (arr!16706 a!3118) i!1132 k!1914) (size!17070 a!3118)) mask!3119)))))

(declare-fun b!552787 () Bool)

(declare-fun res!345350 () Bool)

(assert (=> b!552787 (=> (not res!345350) (not e!318940))))

(assert (=> b!552787 (= res!345350 (validKeyInArray!0 k!1914))))

(declare-fun b!552788 () Bool)

(declare-fun res!345349 () Bool)

(assert (=> b!552788 (=> (not res!345349) (not e!318938))))

(declare-datatypes ((List!10839 0))(
  ( (Nil!10836) (Cons!10835 (h!11820 (_ BitVec 64)) (t!17075 List!10839)) )
))
(declare-fun arrayNoDuplicates!0 (array!34801 (_ BitVec 32) List!10839) Bool)

(assert (=> b!552788 (= res!345349 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10836))))

(assert (= (and start!50622 res!345346) b!552781))

(assert (= (and b!552781 res!345343) b!552785))

(assert (= (and b!552785 res!345348) b!552787))

(assert (= (and b!552787 res!345350) b!552780))

(assert (= (and b!552780 res!345347) b!552779))

(assert (= (and b!552779 res!345342) b!552782))

(assert (= (and b!552782 res!345345) b!552788))

(assert (= (and b!552788 res!345349) b!552786))

(assert (= (and b!552786 res!345341) b!552783))

(assert (= (and b!552783 res!345344) b!552784))

(declare-fun m!529807 () Bool)

(assert (=> b!552788 m!529807))

(declare-fun m!529809 () Bool)

(assert (=> b!552784 m!529809))

(assert (=> b!552784 m!529809))

(declare-fun m!529811 () Bool)

(assert (=> b!552784 m!529811))

(declare-fun m!529813 () Bool)

(assert (=> start!50622 m!529813))

(declare-fun m!529815 () Bool)

(assert (=> start!50622 m!529815))

(declare-fun m!529817 () Bool)

(assert (=> b!552779 m!529817))

(declare-fun m!529819 () Bool)

(assert (=> b!552780 m!529819))

(assert (=> b!552785 m!529809))

(assert (=> b!552785 m!529809))

(declare-fun m!529821 () Bool)

(assert (=> b!552785 m!529821))

(declare-fun m!529823 () Bool)

(assert (=> b!552783 m!529823))

(declare-fun m!529825 () Bool)

(assert (=> b!552783 m!529825))

(assert (=> b!552786 m!529809))

(declare-fun m!529827 () Bool)

(assert (=> b!552786 m!529827))

(assert (=> b!552786 m!529809))

(declare-fun m!529829 () Bool)

(assert (=> b!552786 m!529829))

(declare-fun m!529831 () Bool)

(assert (=> b!552786 m!529831))

(assert (=> b!552786 m!529829))

(declare-fun m!529833 () Bool)

(assert (=> b!552786 m!529833))

(assert (=> b!552786 m!529827))

(assert (=> b!552786 m!529809))

(declare-fun m!529835 () Bool)

(assert (=> b!552786 m!529835))

(declare-fun m!529837 () Bool)

(assert (=> b!552786 m!529837))

(assert (=> b!552786 m!529829))

(assert (=> b!552786 m!529831))

(declare-fun m!529839 () Bool)

(assert (=> b!552782 m!529839))

(declare-fun m!529841 () Bool)

(assert (=> b!552787 m!529841))

(push 1)

