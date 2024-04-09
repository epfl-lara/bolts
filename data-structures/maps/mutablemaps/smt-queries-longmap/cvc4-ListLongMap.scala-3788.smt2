; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51924 () Bool)

(assert start!51924)

(declare-fun res!357926 () Bool)

(declare-fun e!326389 () Bool)

(assert (=> start!51924 (=> (not res!357926) (not e!326389))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51924 (= res!357926 (validMask!0 mask!3119))))

(assert (=> start!51924 e!326389))

(assert (=> start!51924 true))

(declare-datatypes ((array!35572 0))(
  ( (array!35573 (arr!17078 (Array (_ BitVec 32) (_ BitVec 64))) (size!17442 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35572)

(declare-fun array_inv!12852 (array!35572) Bool)

(assert (=> start!51924 (array_inv!12852 a!3118)))

(declare-fun b!567188 () Bool)

(declare-fun res!357927 () Bool)

(declare-fun e!326391 () Bool)

(assert (=> b!567188 (=> (not res!357927) (not e!326391))))

(declare-datatypes ((List!11211 0))(
  ( (Nil!11208) (Cons!11207 (h!12219 (_ BitVec 64)) (t!17447 List!11211)) )
))
(declare-fun arrayNoDuplicates!0 (array!35572 (_ BitVec 32) List!11211) Bool)

(assert (=> b!567188 (= res!357927 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11208))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!326390 () Bool)

(declare-fun b!567189 () Bool)

(declare-datatypes ((SeekEntryResult!5534 0))(
  ( (MissingZero!5534 (index!24363 (_ BitVec 32))) (Found!5534 (index!24364 (_ BitVec 32))) (Intermediate!5534 (undefined!6346 Bool) (index!24365 (_ BitVec 32)) (x!53258 (_ BitVec 32))) (Undefined!5534) (MissingVacant!5534 (index!24366 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35572 (_ BitVec 32)) SeekEntryResult!5534)

(assert (=> b!567189 (= e!326390 (= (seekEntryOrOpen!0 (select (arr!17078 a!3118) j!142) a!3118 mask!3119) (Found!5534 j!142)))))

(declare-fun b!567190 () Bool)

(declare-fun res!357931 () Bool)

(assert (=> b!567190 (=> (not res!357931) (not e!326389))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567190 (= res!357931 (and (= (size!17442 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17442 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17442 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567191 () Bool)

(declare-fun res!357923 () Bool)

(assert (=> b!567191 (=> (not res!357923) (not e!326389))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567191 (= res!357923 (validKeyInArray!0 k!1914))))

(declare-fun b!567192 () Bool)

(assert (=> b!567192 (= e!326391 (not true))))

(assert (=> b!567192 e!326390))

(declare-fun res!357924 () Bool)

(assert (=> b!567192 (=> (not res!357924) (not e!326390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35572 (_ BitVec 32)) Bool)

(assert (=> b!567192 (= res!357924 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17770 0))(
  ( (Unit!17771) )
))
(declare-fun lt!258466 () Unit!17770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17770)

(assert (=> b!567192 (= lt!258466 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567193 () Bool)

(declare-fun res!357928 () Bool)

(assert (=> b!567193 (=> (not res!357928) (not e!326391))))

(assert (=> b!567193 (= res!357928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567194 () Bool)

(declare-fun res!357930 () Bool)

(assert (=> b!567194 (=> (not res!357930) (not e!326391))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35572 (_ BitVec 32)) SeekEntryResult!5534)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567194 (= res!357930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17078 a!3118) j!142) mask!3119) (select (arr!17078 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17078 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17078 a!3118) i!1132 k!1914) j!142) (array!35573 (store (arr!17078 a!3118) i!1132 k!1914) (size!17442 a!3118)) mask!3119)))))

(declare-fun b!567195 () Bool)

(declare-fun res!357932 () Bool)

(assert (=> b!567195 (=> (not res!357932) (not e!326389))))

(declare-fun arrayContainsKey!0 (array!35572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567195 (= res!357932 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567196 () Bool)

(assert (=> b!567196 (= e!326389 e!326391)))

(declare-fun res!357929 () Bool)

(assert (=> b!567196 (=> (not res!357929) (not e!326391))))

(declare-fun lt!258467 () SeekEntryResult!5534)

(assert (=> b!567196 (= res!357929 (or (= lt!258467 (MissingZero!5534 i!1132)) (= lt!258467 (MissingVacant!5534 i!1132))))))

(assert (=> b!567196 (= lt!258467 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567197 () Bool)

(declare-fun res!357925 () Bool)

(assert (=> b!567197 (=> (not res!357925) (not e!326389))))

(assert (=> b!567197 (= res!357925 (validKeyInArray!0 (select (arr!17078 a!3118) j!142)))))

(assert (= (and start!51924 res!357926) b!567190))

(assert (= (and b!567190 res!357931) b!567197))

(assert (= (and b!567197 res!357925) b!567191))

(assert (= (and b!567191 res!357923) b!567195))

(assert (= (and b!567195 res!357932) b!567196))

(assert (= (and b!567196 res!357929) b!567193))

(assert (= (and b!567193 res!357928) b!567188))

(assert (= (and b!567188 res!357927) b!567194))

(assert (= (and b!567194 res!357930) b!567192))

(assert (= (and b!567192 res!357924) b!567189))

(declare-fun m!545803 () Bool)

(assert (=> b!567197 m!545803))

(assert (=> b!567197 m!545803))

(declare-fun m!545805 () Bool)

(assert (=> b!567197 m!545805))

(declare-fun m!545807 () Bool)

(assert (=> start!51924 m!545807))

(declare-fun m!545809 () Bool)

(assert (=> start!51924 m!545809))

(assert (=> b!567194 m!545803))

(declare-fun m!545811 () Bool)

(assert (=> b!567194 m!545811))

(assert (=> b!567194 m!545803))

(declare-fun m!545813 () Bool)

(assert (=> b!567194 m!545813))

(declare-fun m!545815 () Bool)

(assert (=> b!567194 m!545815))

(assert (=> b!567194 m!545813))

(declare-fun m!545817 () Bool)

(assert (=> b!567194 m!545817))

(assert (=> b!567194 m!545811))

(assert (=> b!567194 m!545803))

(declare-fun m!545819 () Bool)

(assert (=> b!567194 m!545819))

(declare-fun m!545821 () Bool)

(assert (=> b!567194 m!545821))

(assert (=> b!567194 m!545813))

(assert (=> b!567194 m!545815))

(declare-fun m!545823 () Bool)

(assert (=> b!567191 m!545823))

(declare-fun m!545825 () Bool)

(assert (=> b!567193 m!545825))

(declare-fun m!545827 () Bool)

(assert (=> b!567192 m!545827))

(declare-fun m!545829 () Bool)

(assert (=> b!567192 m!545829))

(declare-fun m!545831 () Bool)

(assert (=> b!567195 m!545831))

(assert (=> b!567189 m!545803))

(assert (=> b!567189 m!545803))

(declare-fun m!545833 () Bool)

(assert (=> b!567189 m!545833))

(declare-fun m!545835 () Bool)

(assert (=> b!567196 m!545835))

(declare-fun m!545837 () Bool)

(assert (=> b!567188 m!545837))

(push 1)

