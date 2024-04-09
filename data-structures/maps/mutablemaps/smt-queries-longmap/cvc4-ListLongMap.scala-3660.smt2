; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50598 () Bool)

(assert start!50598)

(declare-fun res!344975 () Bool)

(declare-fun e!318768 () Bool)

(assert (=> start!50598 (=> (not res!344975) (not e!318768))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50598 (= res!344975 (validMask!0 mask!3119))))

(assert (=> start!50598 e!318768))

(assert (=> start!50598 true))

(declare-datatypes ((array!34777 0))(
  ( (array!34778 (arr!16694 (Array (_ BitVec 32) (_ BitVec 64))) (size!17058 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34777)

(declare-fun array_inv!12468 (array!34777) Bool)

(assert (=> start!50598 (array_inv!12468 a!3118)))

(declare-fun b!552410 () Bool)

(declare-fun res!344972 () Bool)

(assert (=> b!552410 (=> (not res!344972) (not e!318768))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552410 (= res!344972 (validKeyInArray!0 (select (arr!16694 a!3118) j!142)))))

(declare-fun b!552411 () Bool)

(declare-fun res!344974 () Bool)

(declare-fun e!318766 () Bool)

(assert (=> b!552411 (=> (not res!344974) (not e!318766))))

(declare-datatypes ((List!10827 0))(
  ( (Nil!10824) (Cons!10823 (h!11808 (_ BitVec 64)) (t!17063 List!10827)) )
))
(declare-fun arrayNoDuplicates!0 (array!34777 (_ BitVec 32) List!10827) Bool)

(assert (=> b!552411 (= res!344974 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10824))))

(declare-fun b!552412 () Bool)

(assert (=> b!552412 (= e!318768 e!318766)))

(declare-fun res!344973 () Bool)

(assert (=> b!552412 (=> (not res!344973) (not e!318766))))

(declare-datatypes ((SeekEntryResult!5150 0))(
  ( (MissingZero!5150 (index!22827 (_ BitVec 32))) (Found!5150 (index!22828 (_ BitVec 32))) (Intermediate!5150 (undefined!5962 Bool) (index!22829 (_ BitVec 32)) (x!51787 (_ BitVec 32))) (Undefined!5150) (MissingVacant!5150 (index!22830 (_ BitVec 32))) )
))
(declare-fun lt!251185 () SeekEntryResult!5150)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552412 (= res!344973 (or (= lt!251185 (MissingZero!5150 i!1132)) (= lt!251185 (MissingVacant!5150 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34777 (_ BitVec 32)) SeekEntryResult!5150)

(assert (=> b!552412 (= lt!251185 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552413 () Bool)

(declare-fun res!344980 () Bool)

(assert (=> b!552413 (=> (not res!344980) (not e!318766))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34777 (_ BitVec 32)) SeekEntryResult!5150)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552413 (= res!344980 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16694 a!3118) j!142) mask!3119) (select (arr!16694 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16694 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16694 a!3118) i!1132 k!1914) j!142) (array!34778 (store (arr!16694 a!3118) i!1132 k!1914) (size!17058 a!3118)) mask!3119)))))

(declare-fun e!318769 () Bool)

(declare-fun b!552414 () Bool)

(assert (=> b!552414 (= e!318769 (= (seekEntryOrOpen!0 (select (arr!16694 a!3118) j!142) a!3118 mask!3119) (Found!5150 j!142)))))

(declare-fun b!552415 () Bool)

(declare-fun res!344977 () Bool)

(assert (=> b!552415 (=> (not res!344977) (not e!318766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34777 (_ BitVec 32)) Bool)

(assert (=> b!552415 (= res!344977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552416 () Bool)

(declare-fun res!344978 () Bool)

(assert (=> b!552416 (=> (not res!344978) (not e!318768))))

(declare-fun arrayContainsKey!0 (array!34777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552416 (= res!344978 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552417 () Bool)

(declare-fun res!344976 () Bool)

(assert (=> b!552417 (=> (not res!344976) (not e!318768))))

(assert (=> b!552417 (= res!344976 (validKeyInArray!0 k!1914))))

(declare-fun b!552418 () Bool)

(declare-fun res!344979 () Bool)

(assert (=> b!552418 (=> (not res!344979) (not e!318768))))

(assert (=> b!552418 (= res!344979 (and (= (size!17058 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17058 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17058 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552419 () Bool)

(assert (=> b!552419 (= e!318766 (not true))))

(assert (=> b!552419 e!318769))

(declare-fun res!344981 () Bool)

(assert (=> b!552419 (=> (not res!344981) (not e!318769))))

(assert (=> b!552419 (= res!344981 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17074 0))(
  ( (Unit!17075) )
))
(declare-fun lt!251186 () Unit!17074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17074)

(assert (=> b!552419 (= lt!251186 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50598 res!344975) b!552418))

(assert (= (and b!552418 res!344979) b!552410))

(assert (= (and b!552410 res!344972) b!552417))

(assert (= (and b!552417 res!344976) b!552416))

(assert (= (and b!552416 res!344978) b!552412))

(assert (= (and b!552412 res!344973) b!552415))

(assert (= (and b!552415 res!344977) b!552411))

(assert (= (and b!552411 res!344974) b!552413))

(assert (= (and b!552413 res!344980) b!552419))

(assert (= (and b!552419 res!344981) b!552414))

(declare-fun m!529369 () Bool)

(assert (=> b!552415 m!529369))

(declare-fun m!529371 () Bool)

(assert (=> b!552419 m!529371))

(declare-fun m!529373 () Bool)

(assert (=> b!552419 m!529373))

(declare-fun m!529375 () Bool)

(assert (=> start!50598 m!529375))

(declare-fun m!529377 () Bool)

(assert (=> start!50598 m!529377))

(declare-fun m!529379 () Bool)

(assert (=> b!552413 m!529379))

(declare-fun m!529381 () Bool)

(assert (=> b!552413 m!529381))

(assert (=> b!552413 m!529379))

(declare-fun m!529383 () Bool)

(assert (=> b!552413 m!529383))

(declare-fun m!529385 () Bool)

(assert (=> b!552413 m!529385))

(assert (=> b!552413 m!529383))

(declare-fun m!529387 () Bool)

(assert (=> b!552413 m!529387))

(assert (=> b!552413 m!529381))

(assert (=> b!552413 m!529379))

(declare-fun m!529389 () Bool)

(assert (=> b!552413 m!529389))

(declare-fun m!529391 () Bool)

(assert (=> b!552413 m!529391))

(assert (=> b!552413 m!529383))

(assert (=> b!552413 m!529385))

(declare-fun m!529393 () Bool)

(assert (=> b!552417 m!529393))

(declare-fun m!529395 () Bool)

(assert (=> b!552416 m!529395))

(assert (=> b!552414 m!529379))

(assert (=> b!552414 m!529379))

(declare-fun m!529397 () Bool)

(assert (=> b!552414 m!529397))

(declare-fun m!529399 () Bool)

(assert (=> b!552412 m!529399))

(assert (=> b!552410 m!529379))

(assert (=> b!552410 m!529379))

(declare-fun m!529401 () Bool)

(assert (=> b!552410 m!529401))

(declare-fun m!529403 () Bool)

(assert (=> b!552411 m!529403))

(push 1)

