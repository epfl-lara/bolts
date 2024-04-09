; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51930 () Bool)

(assert start!51930)

(declare-fun e!326427 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!567278 () Bool)

(declare-datatypes ((array!35578 0))(
  ( (array!35579 (arr!17081 (Array (_ BitVec 32) (_ BitVec 64))) (size!17445 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35578)

(declare-datatypes ((SeekEntryResult!5537 0))(
  ( (MissingZero!5537 (index!24375 (_ BitVec 32))) (Found!5537 (index!24376 (_ BitVec 32))) (Intermediate!5537 (undefined!6349 Bool) (index!24377 (_ BitVec 32)) (x!53269 (_ BitVec 32))) (Undefined!5537) (MissingVacant!5537 (index!24378 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35578 (_ BitVec 32)) SeekEntryResult!5537)

(assert (=> b!567278 (= e!326427 (= (seekEntryOrOpen!0 (select (arr!17081 a!3118) j!142) a!3118 mask!3119) (Found!5537 j!142)))))

(declare-fun b!567279 () Bool)

(declare-fun res!358017 () Bool)

(declare-fun e!326425 () Bool)

(assert (=> b!567279 (=> (not res!358017) (not e!326425))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567279 (= res!358017 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567280 () Bool)

(declare-fun res!358022 () Bool)

(assert (=> b!567280 (=> (not res!358022) (not e!326425))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567280 (= res!358022 (and (= (size!17445 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17445 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17445 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567281 () Bool)

(declare-fun res!358013 () Bool)

(assert (=> b!567281 (=> (not res!358013) (not e!326425))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567281 (= res!358013 (validKeyInArray!0 k!1914))))

(declare-fun b!567282 () Bool)

(declare-fun res!358019 () Bool)

(declare-fun e!326428 () Bool)

(assert (=> b!567282 (=> (not res!358019) (not e!326428))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35578 (_ BitVec 32)) SeekEntryResult!5537)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567282 (= res!358019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17081 a!3118) j!142) mask!3119) (select (arr!17081 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17081 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17081 a!3118) i!1132 k!1914) j!142) (array!35579 (store (arr!17081 a!3118) i!1132 k!1914) (size!17445 a!3118)) mask!3119)))))

(declare-fun b!567284 () Bool)

(declare-fun res!358014 () Bool)

(assert (=> b!567284 (=> (not res!358014) (not e!326428))))

(declare-datatypes ((List!11214 0))(
  ( (Nil!11211) (Cons!11210 (h!12222 (_ BitVec 64)) (t!17450 List!11214)) )
))
(declare-fun arrayNoDuplicates!0 (array!35578 (_ BitVec 32) List!11214) Bool)

(assert (=> b!567284 (= res!358014 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11211))))

(declare-fun b!567285 () Bool)

(assert (=> b!567285 (= e!326425 e!326428)))

(declare-fun res!358018 () Bool)

(assert (=> b!567285 (=> (not res!358018) (not e!326428))))

(declare-fun lt!258485 () SeekEntryResult!5537)

(assert (=> b!567285 (= res!358018 (or (= lt!258485 (MissingZero!5537 i!1132)) (= lt!258485 (MissingVacant!5537 i!1132))))))

(assert (=> b!567285 (= lt!258485 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567286 () Bool)

(declare-fun res!358020 () Bool)

(assert (=> b!567286 (=> (not res!358020) (not e!326428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35578 (_ BitVec 32)) Bool)

(assert (=> b!567286 (= res!358020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567287 () Bool)

(assert (=> b!567287 (= e!326428 (not true))))

(assert (=> b!567287 e!326427))

(declare-fun res!358015 () Bool)

(assert (=> b!567287 (=> (not res!358015) (not e!326427))))

(assert (=> b!567287 (= res!358015 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17776 0))(
  ( (Unit!17777) )
))
(declare-fun lt!258484 () Unit!17776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17776)

(assert (=> b!567287 (= lt!258484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!358021 () Bool)

(assert (=> start!51930 (=> (not res!358021) (not e!326425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51930 (= res!358021 (validMask!0 mask!3119))))

(assert (=> start!51930 e!326425))

(assert (=> start!51930 true))

(declare-fun array_inv!12855 (array!35578) Bool)

(assert (=> start!51930 (array_inv!12855 a!3118)))

(declare-fun b!567283 () Bool)

(declare-fun res!358016 () Bool)

(assert (=> b!567283 (=> (not res!358016) (not e!326425))))

(assert (=> b!567283 (= res!358016 (validKeyInArray!0 (select (arr!17081 a!3118) j!142)))))

(assert (= (and start!51930 res!358021) b!567280))

(assert (= (and b!567280 res!358022) b!567283))

(assert (= (and b!567283 res!358016) b!567281))

(assert (= (and b!567281 res!358013) b!567279))

(assert (= (and b!567279 res!358017) b!567285))

(assert (= (and b!567285 res!358018) b!567286))

(assert (= (and b!567286 res!358020) b!567284))

(assert (= (and b!567284 res!358014) b!567282))

(assert (= (and b!567282 res!358019) b!567287))

(assert (= (and b!567287 res!358015) b!567278))

(declare-fun m!545911 () Bool)

(assert (=> start!51930 m!545911))

(declare-fun m!545913 () Bool)

(assert (=> start!51930 m!545913))

(declare-fun m!545915 () Bool)

(assert (=> b!567283 m!545915))

(assert (=> b!567283 m!545915))

(declare-fun m!545917 () Bool)

(assert (=> b!567283 m!545917))

(declare-fun m!545919 () Bool)

(assert (=> b!567285 m!545919))

(declare-fun m!545921 () Bool)

(assert (=> b!567279 m!545921))

(assert (=> b!567282 m!545915))

(declare-fun m!545923 () Bool)

(assert (=> b!567282 m!545923))

(assert (=> b!567282 m!545915))

(declare-fun m!545925 () Bool)

(assert (=> b!567282 m!545925))

(declare-fun m!545927 () Bool)

(assert (=> b!567282 m!545927))

(assert (=> b!567282 m!545925))

(declare-fun m!545929 () Bool)

(assert (=> b!567282 m!545929))

(assert (=> b!567282 m!545923))

(assert (=> b!567282 m!545915))

(declare-fun m!545931 () Bool)

(assert (=> b!567282 m!545931))

(declare-fun m!545933 () Bool)

(assert (=> b!567282 m!545933))

(assert (=> b!567282 m!545925))

(assert (=> b!567282 m!545927))

(assert (=> b!567278 m!545915))

(assert (=> b!567278 m!545915))

(declare-fun m!545935 () Bool)

(assert (=> b!567278 m!545935))

(declare-fun m!545937 () Bool)

(assert (=> b!567287 m!545937))

(declare-fun m!545939 () Bool)

(assert (=> b!567287 m!545939))

(declare-fun m!545941 () Bool)

(assert (=> b!567281 m!545941))

(declare-fun m!545943 () Bool)

(assert (=> b!567286 m!545943))

(declare-fun m!545945 () Bool)

(assert (=> b!567284 m!545945))

(push 1)

