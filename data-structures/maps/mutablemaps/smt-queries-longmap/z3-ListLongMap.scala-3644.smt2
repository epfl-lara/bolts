; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50260 () Bool)

(assert start!50260)

(declare-fun b!549789 () Bool)

(declare-fun res!343083 () Bool)

(declare-fun e!317430 () Bool)

(assert (=> b!549789 (=> (not res!343083) (not e!317430))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549789 (= res!343083 (validKeyInArray!0 k0!1914))))

(declare-fun b!549790 () Bool)

(declare-fun res!343090 () Bool)

(declare-fun e!317431 () Bool)

(assert (=> b!549790 (=> (not res!343090) (not e!317431))))

(declare-datatypes ((array!34667 0))(
  ( (array!34668 (arr!16645 (Array (_ BitVec 32) (_ BitVec 64))) (size!17009 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34667)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34667 (_ BitVec 32)) Bool)

(assert (=> b!549790 (= res!343090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!343088 () Bool)

(assert (=> start!50260 (=> (not res!343088) (not e!317430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50260 (= res!343088 (validMask!0 mask!3119))))

(assert (=> start!50260 e!317430))

(assert (=> start!50260 true))

(declare-fun array_inv!12419 (array!34667) Bool)

(assert (=> start!50260 (array_inv!12419 a!3118)))

(declare-fun b!549791 () Bool)

(declare-fun res!343084 () Bool)

(assert (=> b!549791 (=> (not res!343084) (not e!317430))))

(declare-fun arrayContainsKey!0 (array!34667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549791 (= res!343084 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549792 () Bool)

(assert (=> b!549792 (= e!317431 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549792 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16976 0))(
  ( (Unit!16977) )
))
(declare-fun lt!250348 () Unit!16976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16976)

(assert (=> b!549792 (= lt!250348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549793 () Bool)

(declare-fun res!343091 () Bool)

(assert (=> b!549793 (=> (not res!343091) (not e!317431))))

(declare-datatypes ((List!10778 0))(
  ( (Nil!10775) (Cons!10774 (h!11747 (_ BitVec 64)) (t!17014 List!10778)) )
))
(declare-fun arrayNoDuplicates!0 (array!34667 (_ BitVec 32) List!10778) Bool)

(assert (=> b!549793 (= res!343091 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10775))))

(declare-fun b!549794 () Bool)

(assert (=> b!549794 (= e!317430 e!317431)))

(declare-fun res!343086 () Bool)

(assert (=> b!549794 (=> (not res!343086) (not e!317431))))

(declare-datatypes ((SeekEntryResult!5101 0))(
  ( (MissingZero!5101 (index!22631 (_ BitVec 32))) (Found!5101 (index!22632 (_ BitVec 32))) (Intermediate!5101 (undefined!5913 Bool) (index!22633 (_ BitVec 32)) (x!51586 (_ BitVec 32))) (Undefined!5101) (MissingVacant!5101 (index!22634 (_ BitVec 32))) )
))
(declare-fun lt!250349 () SeekEntryResult!5101)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549794 (= res!343086 (or (= lt!250349 (MissingZero!5101 i!1132)) (= lt!250349 (MissingVacant!5101 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34667 (_ BitVec 32)) SeekEntryResult!5101)

(assert (=> b!549794 (= lt!250349 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549795 () Bool)

(declare-fun res!343085 () Bool)

(assert (=> b!549795 (=> (not res!343085) (not e!317430))))

(assert (=> b!549795 (= res!343085 (validKeyInArray!0 (select (arr!16645 a!3118) j!142)))))

(declare-fun b!549796 () Bool)

(declare-fun res!343089 () Bool)

(assert (=> b!549796 (=> (not res!343089) (not e!317431))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34667 (_ BitVec 32)) SeekEntryResult!5101)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549796 (= res!343089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16645 a!3118) j!142) mask!3119) (select (arr!16645 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16645 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16645 a!3118) i!1132 k0!1914) j!142) (array!34668 (store (arr!16645 a!3118) i!1132 k0!1914) (size!17009 a!3118)) mask!3119)))))

(declare-fun b!549797 () Bool)

(declare-fun res!343087 () Bool)

(assert (=> b!549797 (=> (not res!343087) (not e!317430))))

(assert (=> b!549797 (= res!343087 (and (= (size!17009 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17009 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17009 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50260 res!343088) b!549797))

(assert (= (and b!549797 res!343087) b!549795))

(assert (= (and b!549795 res!343085) b!549789))

(assert (= (and b!549789 res!343083) b!549791))

(assert (= (and b!549791 res!343084) b!549794))

(assert (= (and b!549794 res!343086) b!549790))

(assert (= (and b!549790 res!343090) b!549793))

(assert (= (and b!549793 res!343091) b!549796))

(assert (= (and b!549796 res!343089) b!549792))

(declare-fun m!526811 () Bool)

(assert (=> b!549796 m!526811))

(declare-fun m!526813 () Bool)

(assert (=> b!549796 m!526813))

(assert (=> b!549796 m!526811))

(declare-fun m!526815 () Bool)

(assert (=> b!549796 m!526815))

(declare-fun m!526817 () Bool)

(assert (=> b!549796 m!526817))

(assert (=> b!549796 m!526815))

(declare-fun m!526819 () Bool)

(assert (=> b!549796 m!526819))

(assert (=> b!549796 m!526813))

(assert (=> b!549796 m!526811))

(declare-fun m!526821 () Bool)

(assert (=> b!549796 m!526821))

(declare-fun m!526823 () Bool)

(assert (=> b!549796 m!526823))

(assert (=> b!549796 m!526815))

(assert (=> b!549796 m!526817))

(declare-fun m!526825 () Bool)

(assert (=> b!549794 m!526825))

(declare-fun m!526827 () Bool)

(assert (=> b!549793 m!526827))

(declare-fun m!526829 () Bool)

(assert (=> b!549789 m!526829))

(declare-fun m!526831 () Bool)

(assert (=> b!549790 m!526831))

(assert (=> b!549795 m!526811))

(assert (=> b!549795 m!526811))

(declare-fun m!526833 () Bool)

(assert (=> b!549795 m!526833))

(declare-fun m!526835 () Bool)

(assert (=> start!50260 m!526835))

(declare-fun m!526837 () Bool)

(assert (=> start!50260 m!526837))

(declare-fun m!526839 () Bool)

(assert (=> b!549792 m!526839))

(declare-fun m!526841 () Bool)

(assert (=> b!549792 m!526841))

(declare-fun m!526843 () Bool)

(assert (=> b!549791 m!526843))

(check-sat (not b!549790) (not b!549789) (not b!549793) (not b!549791) (not start!50260) (not b!549796) (not b!549795) (not b!549794) (not b!549792))
(check-sat)
