; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52074 () Bool)

(assert start!52074)

(declare-fun b!568238 () Bool)

(declare-fun res!358592 () Bool)

(declare-fun e!326969 () Bool)

(assert (=> b!568238 (=> (not res!358592) (not e!326969))))

(declare-datatypes ((array!35608 0))(
  ( (array!35609 (arr!17093 (Array (_ BitVec 32) (_ BitVec 64))) (size!17457 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35608)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35608 (_ BitVec 32)) Bool)

(assert (=> b!568238 (= res!358592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568239 () Bool)

(declare-fun res!358589 () Bool)

(declare-fun e!326971 () Bool)

(assert (=> b!568239 (=> (not res!358589) (not e!326971))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568239 (= res!358589 (and (= (size!17457 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17457 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17457 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568240 () Bool)

(declare-fun res!358594 () Bool)

(assert (=> b!568240 (=> (not res!358594) (not e!326969))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5549 0))(
  ( (MissingZero!5549 (index!24423 (_ BitVec 32))) (Found!5549 (index!24424 (_ BitVec 32))) (Intermediate!5549 (undefined!6361 Bool) (index!24425 (_ BitVec 32)) (x!53325 (_ BitVec 32))) (Undefined!5549) (MissingVacant!5549 (index!24426 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35608 (_ BitVec 32)) SeekEntryResult!5549)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568240 (= res!358594 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17093 a!3118) j!142) mask!3119) (select (arr!17093 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17093 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17093 a!3118) i!1132 k!1914) j!142) (array!35609 (store (arr!17093 a!3118) i!1132 k!1914) (size!17457 a!3118)) mask!3119)))))

(declare-fun b!568241 () Bool)

(declare-fun res!358597 () Bool)

(assert (=> b!568241 (=> (not res!358597) (not e!326971))))

(declare-fun arrayContainsKey!0 (array!35608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568241 (= res!358597 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568242 () Bool)

(assert (=> b!568242 (= e!326971 e!326969)))

(declare-fun res!358596 () Bool)

(assert (=> b!568242 (=> (not res!358596) (not e!326969))))

(declare-fun lt!258904 () SeekEntryResult!5549)

(assert (=> b!568242 (= res!358596 (or (= lt!258904 (MissingZero!5549 i!1132)) (= lt!258904 (MissingVacant!5549 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35608 (_ BitVec 32)) SeekEntryResult!5549)

(assert (=> b!568242 (= lt!258904 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568243 () Bool)

(declare-fun res!358590 () Bool)

(assert (=> b!568243 (=> (not res!358590) (not e!326971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568243 (= res!358590 (validKeyInArray!0 k!1914))))

(declare-fun res!358595 () Bool)

(assert (=> start!52074 (=> (not res!358595) (not e!326971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52074 (= res!358595 (validMask!0 mask!3119))))

(assert (=> start!52074 e!326971))

(assert (=> start!52074 true))

(declare-fun array_inv!12867 (array!35608) Bool)

(assert (=> start!52074 (array_inv!12867 a!3118)))

(declare-fun b!568244 () Bool)

(assert (=> b!568244 (= e!326969 (not true))))

(declare-fun e!326968 () Bool)

(assert (=> b!568244 e!326968))

(declare-fun res!358598 () Bool)

(assert (=> b!568244 (=> (not res!358598) (not e!326968))))

(assert (=> b!568244 (= res!358598 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17800 0))(
  ( (Unit!17801) )
))
(declare-fun lt!258905 () Unit!17800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17800)

(assert (=> b!568244 (= lt!258905 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568245 () Bool)

(declare-fun res!358593 () Bool)

(assert (=> b!568245 (=> (not res!358593) (not e!326971))))

(assert (=> b!568245 (= res!358593 (validKeyInArray!0 (select (arr!17093 a!3118) j!142)))))

(declare-fun b!568246 () Bool)

(assert (=> b!568246 (= e!326968 (= (seekEntryOrOpen!0 (select (arr!17093 a!3118) j!142) a!3118 mask!3119) (Found!5549 j!142)))))

(declare-fun b!568247 () Bool)

(declare-fun res!358591 () Bool)

(assert (=> b!568247 (=> (not res!358591) (not e!326969))))

(declare-datatypes ((List!11226 0))(
  ( (Nil!11223) (Cons!11222 (h!12240 (_ BitVec 64)) (t!17462 List!11226)) )
))
(declare-fun arrayNoDuplicates!0 (array!35608 (_ BitVec 32) List!11226) Bool)

(assert (=> b!568247 (= res!358591 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11223))))

(assert (= (and start!52074 res!358595) b!568239))

(assert (= (and b!568239 res!358589) b!568245))

(assert (= (and b!568245 res!358593) b!568243))

(assert (= (and b!568243 res!358590) b!568241))

(assert (= (and b!568241 res!358597) b!568242))

(assert (= (and b!568242 res!358596) b!568238))

(assert (= (and b!568238 res!358592) b!568247))

(assert (= (and b!568247 res!358591) b!568240))

(assert (= (and b!568240 res!358594) b!568244))

(assert (= (and b!568244 res!358598) b!568246))

(declare-fun m!546805 () Bool)

(assert (=> b!568245 m!546805))

(assert (=> b!568245 m!546805))

(declare-fun m!546807 () Bool)

(assert (=> b!568245 m!546807))

(declare-fun m!546809 () Bool)

(assert (=> b!568242 m!546809))

(declare-fun m!546811 () Bool)

(assert (=> b!568243 m!546811))

(declare-fun m!546813 () Bool)

(assert (=> start!52074 m!546813))

(declare-fun m!546815 () Bool)

(assert (=> start!52074 m!546815))

(declare-fun m!546817 () Bool)

(assert (=> b!568247 m!546817))

(declare-fun m!546819 () Bool)

(assert (=> b!568241 m!546819))

(assert (=> b!568240 m!546805))

(declare-fun m!546821 () Bool)

(assert (=> b!568240 m!546821))

(assert (=> b!568240 m!546805))

(declare-fun m!546823 () Bool)

(assert (=> b!568240 m!546823))

(declare-fun m!546825 () Bool)

(assert (=> b!568240 m!546825))

(assert (=> b!568240 m!546823))

(declare-fun m!546827 () Bool)

(assert (=> b!568240 m!546827))

(assert (=> b!568240 m!546821))

(assert (=> b!568240 m!546805))

(declare-fun m!546829 () Bool)

(assert (=> b!568240 m!546829))

(declare-fun m!546831 () Bool)

(assert (=> b!568240 m!546831))

(assert (=> b!568240 m!546823))

(assert (=> b!568240 m!546825))

(declare-fun m!546833 () Bool)

(assert (=> b!568238 m!546833))

(assert (=> b!568246 m!546805))

(assert (=> b!568246 m!546805))

(declare-fun m!546835 () Bool)

(assert (=> b!568246 m!546835))

(declare-fun m!546837 () Bool)

(assert (=> b!568244 m!546837))

(declare-fun m!546839 () Bool)

(assert (=> b!568244 m!546839))

(push 1)

