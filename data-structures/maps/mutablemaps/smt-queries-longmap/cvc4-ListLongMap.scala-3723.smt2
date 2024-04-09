; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51354 () Bool)

(assert start!51354)

(declare-fun b!560048 () Bool)

(declare-fun res!351351 () Bool)

(declare-fun e!322681 () Bool)

(assert (=> b!560048 (=> (not res!351351) (not e!322681))))

(declare-datatypes ((array!35173 0))(
  ( (array!35174 (arr!16883 (Array (_ BitVec 32) (_ BitVec 64))) (size!17247 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35173)

(declare-datatypes ((List!11016 0))(
  ( (Nil!11013) (Cons!11012 (h!12015 (_ BitVec 64)) (t!17252 List!11016)) )
))
(declare-fun arrayNoDuplicates!0 (array!35173 (_ BitVec 32) List!11016) Bool)

(assert (=> b!560048 (= res!351351 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11013))))

(declare-fun b!560049 () Bool)

(declare-fun res!351352 () Bool)

(declare-fun e!322684 () Bool)

(assert (=> b!560049 (=> (not res!351352) (not e!322684))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560049 (= res!351352 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560050 () Bool)

(assert (=> b!560050 (= e!322684 e!322681)))

(declare-fun res!351357 () Bool)

(assert (=> b!560050 (=> (not res!351357) (not e!322681))))

(declare-datatypes ((SeekEntryResult!5339 0))(
  ( (MissingZero!5339 (index!23583 (_ BitVec 32))) (Found!5339 (index!23584 (_ BitVec 32))) (Intermediate!5339 (undefined!6151 Bool) (index!23585 (_ BitVec 32)) (x!52525 (_ BitVec 32))) (Undefined!5339) (MissingVacant!5339 (index!23586 (_ BitVec 32))) )
))
(declare-fun lt!254648 () SeekEntryResult!5339)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560050 (= res!351357 (or (= lt!254648 (MissingZero!5339 i!1132)) (= lt!254648 (MissingVacant!5339 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35173 (_ BitVec 32)) SeekEntryResult!5339)

(assert (=> b!560050 (= lt!254648 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560051 () Bool)

(declare-fun res!351362 () Bool)

(assert (=> b!560051 (=> (not res!351362) (not e!322684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560051 (= res!351362 (validKeyInArray!0 k!1914))))

(declare-fun e!322679 () Bool)

(declare-fun lt!254644 () SeekEntryResult!5339)

(declare-fun b!560052 () Bool)

(declare-fun lt!254650 () array!35173)

(declare-fun lt!254647 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35173 (_ BitVec 32)) SeekEntryResult!5339)

(assert (=> b!560052 (= e!322679 (= (seekEntryOrOpen!0 lt!254647 lt!254650 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52525 lt!254644) (index!23585 lt!254644) (index!23585 lt!254644) lt!254647 lt!254650 mask!3119)))))

(declare-fun b!560053 () Bool)

(declare-fun res!351354 () Bool)

(assert (=> b!560053 (=> (not res!351354) (not e!322684))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560053 (= res!351354 (and (= (size!17247 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17247 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17247 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560054 () Bool)

(declare-fun e!322678 () Bool)

(assert (=> b!560054 (= e!322678 (not true))))

(declare-fun e!322680 () Bool)

(assert (=> b!560054 e!322680))

(declare-fun res!351360 () Bool)

(assert (=> b!560054 (=> (not res!351360) (not e!322680))))

(declare-fun lt!254643 () SeekEntryResult!5339)

(assert (=> b!560054 (= res!351360 (= lt!254643 (Found!5339 j!142)))))

(assert (=> b!560054 (= lt!254643 (seekEntryOrOpen!0 (select (arr!16883 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35173 (_ BitVec 32)) Bool)

(assert (=> b!560054 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17452 0))(
  ( (Unit!17453) )
))
(declare-fun lt!254645 () Unit!17452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17452)

(assert (=> b!560054 (= lt!254645 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560055 () Bool)

(declare-fun res!351353 () Bool)

(assert (=> b!560055 (=> (not res!351353) (not e!322684))))

(assert (=> b!560055 (= res!351353 (validKeyInArray!0 (select (arr!16883 a!3118) j!142)))))

(declare-fun res!351358 () Bool)

(assert (=> start!51354 (=> (not res!351358) (not e!322684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51354 (= res!351358 (validMask!0 mask!3119))))

(assert (=> start!51354 e!322684))

(assert (=> start!51354 true))

(declare-fun array_inv!12657 (array!35173) Bool)

(assert (=> start!51354 (array_inv!12657 a!3118)))

(declare-fun b!560056 () Bool)

(declare-fun e!322677 () Bool)

(declare-fun e!322682 () Bool)

(assert (=> b!560056 (= e!322677 e!322682)))

(declare-fun res!351361 () Bool)

(assert (=> b!560056 (=> res!351361 e!322682)))

(declare-fun lt!254646 () (_ BitVec 64))

(assert (=> b!560056 (= res!351361 (or (= lt!254646 (select (arr!16883 a!3118) j!142)) (= lt!254646 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560056 (= lt!254646 (select (arr!16883 a!3118) (index!23585 lt!254644)))))

(declare-fun b!560057 () Bool)

(declare-fun res!351350 () Bool)

(assert (=> b!560057 (=> (not res!351350) (not e!322681))))

(assert (=> b!560057 (= res!351350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560058 () Bool)

(assert (=> b!560058 (= e!322682 e!322679)))

(declare-fun res!351356 () Bool)

(assert (=> b!560058 (=> (not res!351356) (not e!322679))))

(assert (=> b!560058 (= res!351356 (= lt!254643 (seekKeyOrZeroReturnVacant!0 (x!52525 lt!254644) (index!23585 lt!254644) (index!23585 lt!254644) (select (arr!16883 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560059 () Bool)

(assert (=> b!560059 (= e!322680 e!322677)))

(declare-fun res!351355 () Bool)

(assert (=> b!560059 (=> res!351355 e!322677)))

(assert (=> b!560059 (= res!351355 (or (undefined!6151 lt!254644) (not (is-Intermediate!5339 lt!254644))))))

(declare-fun b!560060 () Bool)

(assert (=> b!560060 (= e!322681 e!322678)))

(declare-fun res!351359 () Bool)

(assert (=> b!560060 (=> (not res!351359) (not e!322678))))

(declare-fun lt!254649 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35173 (_ BitVec 32)) SeekEntryResult!5339)

(assert (=> b!560060 (= res!351359 (= lt!254644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254649 lt!254647 lt!254650 mask!3119)))))

(declare-fun lt!254651 () (_ BitVec 32))

(assert (=> b!560060 (= lt!254644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254651 (select (arr!16883 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560060 (= lt!254649 (toIndex!0 lt!254647 mask!3119))))

(assert (=> b!560060 (= lt!254647 (select (store (arr!16883 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560060 (= lt!254651 (toIndex!0 (select (arr!16883 a!3118) j!142) mask!3119))))

(assert (=> b!560060 (= lt!254650 (array!35174 (store (arr!16883 a!3118) i!1132 k!1914) (size!17247 a!3118)))))

(assert (= (and start!51354 res!351358) b!560053))

(assert (= (and b!560053 res!351354) b!560055))

(assert (= (and b!560055 res!351353) b!560051))

(assert (= (and b!560051 res!351362) b!560049))

(assert (= (and b!560049 res!351352) b!560050))

(assert (= (and b!560050 res!351357) b!560057))

(assert (= (and b!560057 res!351350) b!560048))

(assert (= (and b!560048 res!351351) b!560060))

(assert (= (and b!560060 res!351359) b!560054))

(assert (= (and b!560054 res!351360) b!560059))

(assert (= (and b!560059 (not res!351355)) b!560056))

(assert (= (and b!560056 (not res!351361)) b!560058))

(assert (= (and b!560058 res!351356) b!560052))

(declare-fun m!537827 () Bool)

(assert (=> b!560055 m!537827))

(assert (=> b!560055 m!537827))

(declare-fun m!537829 () Bool)

(assert (=> b!560055 m!537829))

(assert (=> b!560060 m!537827))

(declare-fun m!537831 () Bool)

(assert (=> b!560060 m!537831))

(declare-fun m!537833 () Bool)

(assert (=> b!560060 m!537833))

(assert (=> b!560060 m!537827))

(declare-fun m!537835 () Bool)

(assert (=> b!560060 m!537835))

(declare-fun m!537837 () Bool)

(assert (=> b!560060 m!537837))

(declare-fun m!537839 () Bool)

(assert (=> b!560060 m!537839))

(assert (=> b!560060 m!537827))

(declare-fun m!537841 () Bool)

(assert (=> b!560060 m!537841))

(assert (=> b!560058 m!537827))

(assert (=> b!560058 m!537827))

(declare-fun m!537843 () Bool)

(assert (=> b!560058 m!537843))

(declare-fun m!537845 () Bool)

(assert (=> start!51354 m!537845))

(declare-fun m!537847 () Bool)

(assert (=> start!51354 m!537847))

(declare-fun m!537849 () Bool)

(assert (=> b!560057 m!537849))

(declare-fun m!537851 () Bool)

(assert (=> b!560049 m!537851))

(declare-fun m!537853 () Bool)

(assert (=> b!560051 m!537853))

(assert (=> b!560054 m!537827))

(assert (=> b!560054 m!537827))

(declare-fun m!537855 () Bool)

(assert (=> b!560054 m!537855))

(declare-fun m!537857 () Bool)

(assert (=> b!560054 m!537857))

(declare-fun m!537859 () Bool)

(assert (=> b!560054 m!537859))

(declare-fun m!537861 () Bool)

(assert (=> b!560050 m!537861))

(declare-fun m!537863 () Bool)

(assert (=> b!560048 m!537863))

(declare-fun m!537865 () Bool)

(assert (=> b!560052 m!537865))

(declare-fun m!537867 () Bool)

(assert (=> b!560052 m!537867))

(assert (=> b!560056 m!537827))

(declare-fun m!537869 () Bool)

(assert (=> b!560056 m!537869))

(push 1)

