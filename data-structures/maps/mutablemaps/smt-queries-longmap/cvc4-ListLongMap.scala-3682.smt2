; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50730 () Bool)

(assert start!50730)

(declare-fun b!554409 () Bool)

(declare-fun res!346977 () Bool)

(declare-fun e!319659 () Bool)

(assert (=> b!554409 (=> (not res!346977) (not e!319659))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34909 0))(
  ( (array!34910 (arr!16760 (Array (_ BitVec 32) (_ BitVec 64))) (size!17124 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34909)

(assert (=> b!554409 (= res!346977 (and (= (size!17124 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17124 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17124 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554410 () Bool)

(declare-fun e!319658 () Bool)

(assert (=> b!554410 (= e!319659 e!319658)))

(declare-fun res!346973 () Bool)

(assert (=> b!554410 (=> (not res!346973) (not e!319658))))

(declare-datatypes ((SeekEntryResult!5216 0))(
  ( (MissingZero!5216 (index!23091 (_ BitVec 32))) (Found!5216 (index!23092 (_ BitVec 32))) (Intermediate!5216 (undefined!6028 Bool) (index!23093 (_ BitVec 32)) (x!52029 (_ BitVec 32))) (Undefined!5216) (MissingVacant!5216 (index!23094 (_ BitVec 32))) )
))
(declare-fun lt!251822 () SeekEntryResult!5216)

(assert (=> b!554410 (= res!346973 (or (= lt!251822 (MissingZero!5216 i!1132)) (= lt!251822 (MissingVacant!5216 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34909 (_ BitVec 32)) SeekEntryResult!5216)

(assert (=> b!554410 (= lt!251822 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554411 () Bool)

(declare-fun res!346975 () Bool)

(assert (=> b!554411 (=> (not res!346975) (not e!319658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34909 (_ BitVec 32)) Bool)

(assert (=> b!554411 (= res!346975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554413 () Bool)

(declare-fun res!346972 () Bool)

(assert (=> b!554413 (=> (not res!346972) (not e!319659))))

(declare-fun arrayContainsKey!0 (array!34909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554413 (= res!346972 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!346976 () Bool)

(assert (=> start!50730 (=> (not res!346976) (not e!319659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50730 (= res!346976 (validMask!0 mask!3119))))

(assert (=> start!50730 e!319659))

(assert (=> start!50730 true))

(declare-fun array_inv!12534 (array!34909) Bool)

(assert (=> start!50730 (array_inv!12534 a!3118)))

(declare-fun b!554412 () Bool)

(declare-fun e!319657 () Bool)

(assert (=> b!554412 (= e!319658 e!319657)))

(declare-fun res!346978 () Bool)

(assert (=> b!554412 (=> (not res!346978) (not e!319657))))

(declare-fun lt!251821 () SeekEntryResult!5216)

(declare-fun lt!251823 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34909 (_ BitVec 32)) SeekEntryResult!5216)

(assert (=> b!554412 (= res!346978 (= lt!251821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251823 (select (store (arr!16760 a!3118) i!1132 k!1914) j!142) (array!34910 (store (arr!16760 a!3118) i!1132 k!1914) (size!17124 a!3118)) mask!3119)))))

(declare-fun lt!251824 () (_ BitVec 32))

(assert (=> b!554412 (= lt!251821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251824 (select (arr!16760 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554412 (= lt!251823 (toIndex!0 (select (store (arr!16760 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554412 (= lt!251824 (toIndex!0 (select (arr!16760 a!3118) j!142) mask!3119))))

(declare-fun b!554414 () Bool)

(declare-fun res!346974 () Bool)

(assert (=> b!554414 (=> (not res!346974) (not e!319659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554414 (= res!346974 (validKeyInArray!0 k!1914))))

(declare-fun b!554415 () Bool)

(declare-fun res!346971 () Bool)

(assert (=> b!554415 (=> (not res!346971) (not e!319658))))

(declare-datatypes ((List!10893 0))(
  ( (Nil!10890) (Cons!10889 (h!11874 (_ BitVec 64)) (t!17129 List!10893)) )
))
(declare-fun arrayNoDuplicates!0 (array!34909 (_ BitVec 32) List!10893) Bool)

(assert (=> b!554415 (= res!346971 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10890))))

(declare-fun b!554416 () Bool)

(assert (=> b!554416 (= e!319657 (not true))))

(declare-fun lt!251820 () SeekEntryResult!5216)

(assert (=> b!554416 (and (= lt!251820 (Found!5216 j!142)) (or (undefined!6028 lt!251821) (not (is-Intermediate!5216 lt!251821)) (= (select (arr!16760 a!3118) (index!23093 lt!251821)) (select (arr!16760 a!3118) j!142)) (not (= (select (arr!16760 a!3118) (index!23093 lt!251821)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251820 (MissingZero!5216 (index!23093 lt!251821)))))))

(assert (=> b!554416 (= lt!251820 (seekEntryOrOpen!0 (select (arr!16760 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554416 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17206 0))(
  ( (Unit!17207) )
))
(declare-fun lt!251825 () Unit!17206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17206)

(assert (=> b!554416 (= lt!251825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554417 () Bool)

(declare-fun res!346979 () Bool)

(assert (=> b!554417 (=> (not res!346979) (not e!319659))))

(assert (=> b!554417 (= res!346979 (validKeyInArray!0 (select (arr!16760 a!3118) j!142)))))

(assert (= (and start!50730 res!346976) b!554409))

(assert (= (and b!554409 res!346977) b!554417))

(assert (= (and b!554417 res!346979) b!554414))

(assert (= (and b!554414 res!346974) b!554413))

(assert (= (and b!554413 res!346972) b!554410))

(assert (= (and b!554410 res!346973) b!554411))

(assert (= (and b!554411 res!346975) b!554415))

(assert (= (and b!554415 res!346971) b!554412))

(assert (= (and b!554412 res!346978) b!554416))

(declare-fun m!531791 () Bool)

(assert (=> b!554410 m!531791))

(declare-fun m!531793 () Bool)

(assert (=> b!554414 m!531793))

(declare-fun m!531795 () Bool)

(assert (=> b!554413 m!531795))

(declare-fun m!531797 () Bool)

(assert (=> b!554412 m!531797))

(declare-fun m!531799 () Bool)

(assert (=> b!554412 m!531799))

(assert (=> b!554412 m!531797))

(assert (=> b!554412 m!531797))

(declare-fun m!531801 () Bool)

(assert (=> b!554412 m!531801))

(declare-fun m!531803 () Bool)

(assert (=> b!554412 m!531803))

(assert (=> b!554412 m!531803))

(declare-fun m!531805 () Bool)

(assert (=> b!554412 m!531805))

(assert (=> b!554412 m!531803))

(declare-fun m!531807 () Bool)

(assert (=> b!554412 m!531807))

(declare-fun m!531809 () Bool)

(assert (=> b!554412 m!531809))

(declare-fun m!531811 () Bool)

(assert (=> start!50730 m!531811))

(declare-fun m!531813 () Bool)

(assert (=> start!50730 m!531813))

(declare-fun m!531815 () Bool)

(assert (=> b!554411 m!531815))

(declare-fun m!531817 () Bool)

(assert (=> b!554415 m!531817))

(declare-fun m!531819 () Bool)

(assert (=> b!554416 m!531819))

(assert (=> b!554416 m!531797))

(declare-fun m!531821 () Bool)

(assert (=> b!554416 m!531821))

(declare-fun m!531823 () Bool)

(assert (=> b!554416 m!531823))

(assert (=> b!554416 m!531797))

(declare-fun m!531825 () Bool)

(assert (=> b!554416 m!531825))

(assert (=> b!554417 m!531797))

(assert (=> b!554417 m!531797))

(declare-fun m!531827 () Bool)

(assert (=> b!554417 m!531827))

(push 1)

