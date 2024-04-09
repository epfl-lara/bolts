; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50690 () Bool)

(assert start!50690)

(declare-fun b!553808 () Bool)

(declare-fun e!319393 () Bool)

(declare-fun e!319391 () Bool)

(assert (=> b!553808 (= e!319393 e!319391)))

(declare-fun res!346375 () Bool)

(assert (=> b!553808 (=> (not res!346375) (not e!319391))))

(declare-datatypes ((SeekEntryResult!5196 0))(
  ( (MissingZero!5196 (index!23011 (_ BitVec 32))) (Found!5196 (index!23012 (_ BitVec 32))) (Intermediate!5196 (undefined!6008 Bool) (index!23013 (_ BitVec 32)) (x!51961 (_ BitVec 32))) (Undefined!5196) (MissingVacant!5196 (index!23014 (_ BitVec 32))) )
))
(declare-fun lt!251614 () SeekEntryResult!5196)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553808 (= res!346375 (or (= lt!251614 (MissingZero!5196 i!1132)) (= lt!251614 (MissingVacant!5196 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34869 0))(
  ( (array!34870 (arr!16740 (Array (_ BitVec 32) (_ BitVec 64))) (size!17104 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34869)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34869 (_ BitVec 32)) SeekEntryResult!5196)

(assert (=> b!553808 (= lt!251614 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553809 () Bool)

(declare-fun res!346372 () Bool)

(assert (=> b!553809 (=> (not res!346372) (not e!319393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553809 (= res!346372 (validKeyInArray!0 k!1914))))

(declare-fun b!553810 () Bool)

(declare-fun res!346376 () Bool)

(assert (=> b!553810 (=> (not res!346376) (not e!319393))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!553810 (= res!346376 (validKeyInArray!0 (select (arr!16740 a!3118) j!142)))))

(declare-fun res!346374 () Bool)

(assert (=> start!50690 (=> (not res!346374) (not e!319393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50690 (= res!346374 (validMask!0 mask!3119))))

(assert (=> start!50690 e!319393))

(assert (=> start!50690 true))

(declare-fun array_inv!12514 (array!34869) Bool)

(assert (=> start!50690 (array_inv!12514 a!3118)))

(declare-fun b!553811 () Bool)

(declare-fun res!346373 () Bool)

(assert (=> b!553811 (=> (not res!346373) (not e!319393))))

(assert (=> b!553811 (= res!346373 (and (= (size!17104 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17104 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17104 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553812 () Bool)

(declare-fun res!346370 () Bool)

(assert (=> b!553812 (=> (not res!346370) (not e!319391))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34869 (_ BitVec 32)) SeekEntryResult!5196)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553812 (= res!346370 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16740 a!3118) j!142) mask!3119) (select (arr!16740 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16740 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16740 a!3118) i!1132 k!1914) j!142) (array!34870 (store (arr!16740 a!3118) i!1132 k!1914) (size!17104 a!3118)) mask!3119)))))

(declare-fun b!553813 () Bool)

(declare-fun res!346378 () Bool)

(assert (=> b!553813 (=> (not res!346378) (not e!319391))))

(declare-datatypes ((List!10873 0))(
  ( (Nil!10870) (Cons!10869 (h!11854 (_ BitVec 64)) (t!17109 List!10873)) )
))
(declare-fun arrayNoDuplicates!0 (array!34869 (_ BitVec 32) List!10873) Bool)

(assert (=> b!553813 (= res!346378 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10870))))

(declare-fun b!553814 () Bool)

(declare-fun res!346377 () Bool)

(assert (=> b!553814 (=> (not res!346377) (not e!319393))))

(declare-fun arrayContainsKey!0 (array!34869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553814 (= res!346377 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553815 () Bool)

(assert (=> b!553815 (= e!319391 (not true))))

(declare-fun e!319390 () Bool)

(assert (=> b!553815 e!319390))

(declare-fun res!346379 () Bool)

(assert (=> b!553815 (=> (not res!346379) (not e!319390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34869 (_ BitVec 32)) Bool)

(assert (=> b!553815 (= res!346379 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17166 0))(
  ( (Unit!17167) )
))
(declare-fun lt!251615 () Unit!17166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34869 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17166)

(assert (=> b!553815 (= lt!251615 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553816 () Bool)

(assert (=> b!553816 (= e!319390 (= (seekEntryOrOpen!0 (select (arr!16740 a!3118) j!142) a!3118 mask!3119) (Found!5196 j!142)))))

(declare-fun b!553817 () Bool)

(declare-fun res!346371 () Bool)

(assert (=> b!553817 (=> (not res!346371) (not e!319391))))

(assert (=> b!553817 (= res!346371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50690 res!346374) b!553811))

(assert (= (and b!553811 res!346373) b!553810))

(assert (= (and b!553810 res!346376) b!553809))

(assert (= (and b!553809 res!346372) b!553814))

(assert (= (and b!553814 res!346377) b!553808))

(assert (= (and b!553808 res!346375) b!553817))

(assert (= (and b!553817 res!346371) b!553813))

(assert (= (and b!553813 res!346378) b!553812))

(assert (= (and b!553812 res!346370) b!553815))

(assert (= (and b!553815 res!346379) b!553816))

(declare-fun m!531049 () Bool)

(assert (=> b!553817 m!531049))

(declare-fun m!531051 () Bool)

(assert (=> b!553815 m!531051))

(declare-fun m!531053 () Bool)

(assert (=> b!553815 m!531053))

(declare-fun m!531055 () Bool)

(assert (=> b!553808 m!531055))

(declare-fun m!531057 () Bool)

(assert (=> b!553813 m!531057))

(declare-fun m!531059 () Bool)

(assert (=> b!553810 m!531059))

(assert (=> b!553810 m!531059))

(declare-fun m!531061 () Bool)

(assert (=> b!553810 m!531061))

(declare-fun m!531063 () Bool)

(assert (=> start!50690 m!531063))

(declare-fun m!531065 () Bool)

(assert (=> start!50690 m!531065))

(declare-fun m!531067 () Bool)

(assert (=> b!553809 m!531067))

(assert (=> b!553816 m!531059))

(assert (=> b!553816 m!531059))

(declare-fun m!531069 () Bool)

(assert (=> b!553816 m!531069))

(declare-fun m!531071 () Bool)

(assert (=> b!553814 m!531071))

(assert (=> b!553812 m!531059))

(declare-fun m!531073 () Bool)

(assert (=> b!553812 m!531073))

(assert (=> b!553812 m!531059))

(declare-fun m!531075 () Bool)

(assert (=> b!553812 m!531075))

(declare-fun m!531077 () Bool)

(assert (=> b!553812 m!531077))

(assert (=> b!553812 m!531075))

(declare-fun m!531079 () Bool)

(assert (=> b!553812 m!531079))

(assert (=> b!553812 m!531073))

(assert (=> b!553812 m!531059))

(declare-fun m!531081 () Bool)

(assert (=> b!553812 m!531081))

(declare-fun m!531083 () Bool)

(assert (=> b!553812 m!531083))

(assert (=> b!553812 m!531075))

(assert (=> b!553812 m!531077))

(push 1)

