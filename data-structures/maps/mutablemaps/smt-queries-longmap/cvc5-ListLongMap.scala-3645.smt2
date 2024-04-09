; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50264 () Bool)

(assert start!50264)

(declare-fun b!549843 () Bool)

(declare-fun res!343140 () Bool)

(declare-fun e!317447 () Bool)

(assert (=> b!549843 (=> (not res!343140) (not e!317447))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34671 0))(
  ( (array!34672 (arr!16647 (Array (_ BitVec 32) (_ BitVec 64))) (size!17011 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34671)

(declare-datatypes ((SeekEntryResult!5103 0))(
  ( (MissingZero!5103 (index!22639 (_ BitVec 32))) (Found!5103 (index!22640 (_ BitVec 32))) (Intermediate!5103 (undefined!5915 Bool) (index!22641 (_ BitVec 32)) (x!51596 (_ BitVec 32))) (Undefined!5103) (MissingVacant!5103 (index!22642 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34671 (_ BitVec 32)) SeekEntryResult!5103)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549843 (= res!343140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16647 a!3118) j!142) mask!3119) (select (arr!16647 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16647 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16647 a!3118) i!1132 k!1914) j!142) (array!34672 (store (arr!16647 a!3118) i!1132 k!1914) (size!17011 a!3118)) mask!3119)))))

(declare-fun b!549844 () Bool)

(declare-fun res!343139 () Bool)

(assert (=> b!549844 (=> (not res!343139) (not e!317447))))

(declare-datatypes ((List!10780 0))(
  ( (Nil!10777) (Cons!10776 (h!11749 (_ BitVec 64)) (t!17016 List!10780)) )
))
(declare-fun arrayNoDuplicates!0 (array!34671 (_ BitVec 32) List!10780) Bool)

(assert (=> b!549844 (= res!343139 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10777))))

(declare-fun b!549845 () Bool)

(declare-fun res!343138 () Bool)

(declare-fun e!317449 () Bool)

(assert (=> b!549845 (=> (not res!343138) (not e!317449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549845 (= res!343138 (validKeyInArray!0 k!1914))))

(declare-fun b!549846 () Bool)

(declare-fun res!343145 () Bool)

(assert (=> b!549846 (=> (not res!343145) (not e!317447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34671 (_ BitVec 32)) Bool)

(assert (=> b!549846 (= res!343145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549847 () Bool)

(declare-fun res!343144 () Bool)

(assert (=> b!549847 (=> (not res!343144) (not e!317449))))

(assert (=> b!549847 (= res!343144 (and (= (size!17011 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17011 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17011 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549848 () Bool)

(assert (=> b!549848 (= e!317447 (not true))))

(assert (=> b!549848 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16980 0))(
  ( (Unit!16981) )
))
(declare-fun lt!250361 () Unit!16980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16980)

(assert (=> b!549848 (= lt!250361 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549849 () Bool)

(declare-fun res!343137 () Bool)

(assert (=> b!549849 (=> (not res!343137) (not e!317449))))

(assert (=> b!549849 (= res!343137 (validKeyInArray!0 (select (arr!16647 a!3118) j!142)))))

(declare-fun res!343143 () Bool)

(assert (=> start!50264 (=> (not res!343143) (not e!317449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50264 (= res!343143 (validMask!0 mask!3119))))

(assert (=> start!50264 e!317449))

(assert (=> start!50264 true))

(declare-fun array_inv!12421 (array!34671) Bool)

(assert (=> start!50264 (array_inv!12421 a!3118)))

(declare-fun b!549850 () Bool)

(declare-fun res!343141 () Bool)

(assert (=> b!549850 (=> (not res!343141) (not e!317449))))

(declare-fun arrayContainsKey!0 (array!34671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549850 (= res!343141 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549851 () Bool)

(assert (=> b!549851 (= e!317449 e!317447)))

(declare-fun res!343142 () Bool)

(assert (=> b!549851 (=> (not res!343142) (not e!317447))))

(declare-fun lt!250360 () SeekEntryResult!5103)

(assert (=> b!549851 (= res!343142 (or (= lt!250360 (MissingZero!5103 i!1132)) (= lt!250360 (MissingVacant!5103 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34671 (_ BitVec 32)) SeekEntryResult!5103)

(assert (=> b!549851 (= lt!250360 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50264 res!343143) b!549847))

(assert (= (and b!549847 res!343144) b!549849))

(assert (= (and b!549849 res!343137) b!549845))

(assert (= (and b!549845 res!343138) b!549850))

(assert (= (and b!549850 res!343141) b!549851))

(assert (= (and b!549851 res!343142) b!549846))

(assert (= (and b!549846 res!343145) b!549844))

(assert (= (and b!549844 res!343139) b!549843))

(assert (= (and b!549843 res!343140) b!549848))

(declare-fun m!526879 () Bool)

(assert (=> b!549851 m!526879))

(declare-fun m!526881 () Bool)

(assert (=> b!549844 m!526881))

(declare-fun m!526883 () Bool)

(assert (=> b!549849 m!526883))

(assert (=> b!549849 m!526883))

(declare-fun m!526885 () Bool)

(assert (=> b!549849 m!526885))

(declare-fun m!526887 () Bool)

(assert (=> b!549845 m!526887))

(declare-fun m!526889 () Bool)

(assert (=> b!549850 m!526889))

(declare-fun m!526891 () Bool)

(assert (=> b!549846 m!526891))

(declare-fun m!526893 () Bool)

(assert (=> b!549848 m!526893))

(declare-fun m!526895 () Bool)

(assert (=> b!549848 m!526895))

(assert (=> b!549843 m!526883))

(declare-fun m!526897 () Bool)

(assert (=> b!549843 m!526897))

(assert (=> b!549843 m!526883))

(declare-fun m!526899 () Bool)

(assert (=> b!549843 m!526899))

(declare-fun m!526901 () Bool)

(assert (=> b!549843 m!526901))

(assert (=> b!549843 m!526899))

(declare-fun m!526903 () Bool)

(assert (=> b!549843 m!526903))

(assert (=> b!549843 m!526897))

(assert (=> b!549843 m!526883))

(declare-fun m!526905 () Bool)

(assert (=> b!549843 m!526905))

(declare-fun m!526907 () Bool)

(assert (=> b!549843 m!526907))

(assert (=> b!549843 m!526899))

(assert (=> b!549843 m!526901))

(declare-fun m!526909 () Bool)

(assert (=> start!50264 m!526909))

(declare-fun m!526911 () Bool)

(assert (=> start!50264 m!526911))

(push 1)

