; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50594 () Bool)

(assert start!50594)

(declare-fun b!552350 () Bool)

(declare-fun res!344916 () Bool)

(declare-fun e!318745 () Bool)

(assert (=> b!552350 (=> (not res!344916) (not e!318745))))

(declare-datatypes ((array!34773 0))(
  ( (array!34774 (arr!16692 (Array (_ BitVec 32) (_ BitVec 64))) (size!17056 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34773)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552350 (= res!344916 (validKeyInArray!0 (select (arr!16692 a!3118) j!142)))))

(declare-fun b!552351 () Bool)

(declare-fun res!344917 () Bool)

(declare-fun e!318742 () Bool)

(assert (=> b!552351 (=> (not res!344917) (not e!318742))))

(declare-datatypes ((List!10825 0))(
  ( (Nil!10822) (Cons!10821 (h!11806 (_ BitVec 64)) (t!17061 List!10825)) )
))
(declare-fun arrayNoDuplicates!0 (array!34773 (_ BitVec 32) List!10825) Bool)

(assert (=> b!552351 (= res!344917 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10822))))

(declare-fun b!552352 () Bool)

(assert (=> b!552352 (= e!318742 (not true))))

(declare-fun e!318743 () Bool)

(assert (=> b!552352 e!318743))

(declare-fun res!344918 () Bool)

(assert (=> b!552352 (=> (not res!344918) (not e!318743))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34773 (_ BitVec 32)) Bool)

(assert (=> b!552352 (= res!344918 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17070 0))(
  ( (Unit!17071) )
))
(declare-fun lt!251173 () Unit!17070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17070)

(assert (=> b!552352 (= lt!251173 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552353 () Bool)

(declare-fun res!344914 () Bool)

(assert (=> b!552353 (=> (not res!344914) (not e!318745))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552353 (= res!344914 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!344913 () Bool)

(assert (=> start!50594 (=> (not res!344913) (not e!318745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50594 (= res!344913 (validMask!0 mask!3119))))

(assert (=> start!50594 e!318745))

(assert (=> start!50594 true))

(declare-fun array_inv!12466 (array!34773) Bool)

(assert (=> start!50594 (array_inv!12466 a!3118)))

(declare-fun b!552354 () Bool)

(declare-fun res!344921 () Bool)

(assert (=> b!552354 (=> (not res!344921) (not e!318745))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552354 (= res!344921 (and (= (size!17056 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17056 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17056 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552355 () Bool)

(declare-fun res!344920 () Bool)

(assert (=> b!552355 (=> (not res!344920) (not e!318742))))

(assert (=> b!552355 (= res!344920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552356 () Bool)

(declare-fun res!344915 () Bool)

(assert (=> b!552356 (=> (not res!344915) (not e!318745))))

(assert (=> b!552356 (= res!344915 (validKeyInArray!0 k!1914))))

(declare-fun b!552357 () Bool)

(declare-fun res!344912 () Bool)

(assert (=> b!552357 (=> (not res!344912) (not e!318742))))

(declare-datatypes ((SeekEntryResult!5148 0))(
  ( (MissingZero!5148 (index!22819 (_ BitVec 32))) (Found!5148 (index!22820 (_ BitVec 32))) (Intermediate!5148 (undefined!5960 Bool) (index!22821 (_ BitVec 32)) (x!51785 (_ BitVec 32))) (Undefined!5148) (MissingVacant!5148 (index!22822 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34773 (_ BitVec 32)) SeekEntryResult!5148)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552357 (= res!344912 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16692 a!3118) j!142) mask!3119) (select (arr!16692 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16692 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16692 a!3118) i!1132 k!1914) j!142) (array!34774 (store (arr!16692 a!3118) i!1132 k!1914) (size!17056 a!3118)) mask!3119)))))

(declare-fun b!552358 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34773 (_ BitVec 32)) SeekEntryResult!5148)

(assert (=> b!552358 (= e!318743 (= (seekEntryOrOpen!0 (select (arr!16692 a!3118) j!142) a!3118 mask!3119) (Found!5148 j!142)))))

(declare-fun b!552359 () Bool)

(assert (=> b!552359 (= e!318745 e!318742)))

(declare-fun res!344919 () Bool)

(assert (=> b!552359 (=> (not res!344919) (not e!318742))))

(declare-fun lt!251174 () SeekEntryResult!5148)

(assert (=> b!552359 (= res!344919 (or (= lt!251174 (MissingZero!5148 i!1132)) (= lt!251174 (MissingVacant!5148 i!1132))))))

(assert (=> b!552359 (= lt!251174 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50594 res!344913) b!552354))

(assert (= (and b!552354 res!344921) b!552350))

(assert (= (and b!552350 res!344916) b!552356))

(assert (= (and b!552356 res!344915) b!552353))

(assert (= (and b!552353 res!344914) b!552359))

(assert (= (and b!552359 res!344919) b!552355))

(assert (= (and b!552355 res!344920) b!552351))

(assert (= (and b!552351 res!344917) b!552357))

(assert (= (and b!552357 res!344912) b!552352))

(assert (= (and b!552352 res!344918) b!552358))

(declare-fun m!529297 () Bool)

(assert (=> start!50594 m!529297))

(declare-fun m!529299 () Bool)

(assert (=> start!50594 m!529299))

(declare-fun m!529301 () Bool)

(assert (=> b!552356 m!529301))

(declare-fun m!529303 () Bool)

(assert (=> b!552355 m!529303))

(declare-fun m!529305 () Bool)

(assert (=> b!552351 m!529305))

(declare-fun m!529307 () Bool)

(assert (=> b!552357 m!529307))

(declare-fun m!529309 () Bool)

(assert (=> b!552357 m!529309))

(assert (=> b!552357 m!529307))

(declare-fun m!529311 () Bool)

(assert (=> b!552357 m!529311))

(declare-fun m!529313 () Bool)

(assert (=> b!552357 m!529313))

(assert (=> b!552357 m!529311))

(declare-fun m!529315 () Bool)

(assert (=> b!552357 m!529315))

(assert (=> b!552357 m!529309))

(assert (=> b!552357 m!529307))

(declare-fun m!529317 () Bool)

(assert (=> b!552357 m!529317))

(declare-fun m!529319 () Bool)

(assert (=> b!552357 m!529319))

(assert (=> b!552357 m!529311))

(assert (=> b!552357 m!529313))

(assert (=> b!552350 m!529307))

(assert (=> b!552350 m!529307))

(declare-fun m!529321 () Bool)

(assert (=> b!552350 m!529321))

(declare-fun m!529323 () Bool)

(assert (=> b!552359 m!529323))

(declare-fun m!529325 () Bool)

(assert (=> b!552353 m!529325))

(declare-fun m!529327 () Bool)

(assert (=> b!552352 m!529327))

(declare-fun m!529329 () Bool)

(assert (=> b!552352 m!529329))

(assert (=> b!552358 m!529307))

(assert (=> b!552358 m!529307))

(declare-fun m!529331 () Bool)

(assert (=> b!552358 m!529331))

(push 1)

