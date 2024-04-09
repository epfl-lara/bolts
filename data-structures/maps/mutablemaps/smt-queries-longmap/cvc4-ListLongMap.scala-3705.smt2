; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50868 () Bool)

(assert start!50868)

(declare-fun b!556334 () Bool)

(declare-fun res!348905 () Bool)

(declare-fun e!320506 () Bool)

(assert (=> b!556334 (=> (not res!348905) (not e!320506))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556334 (= res!348905 (validKeyInArray!0 k!1914))))

(declare-fun b!556335 () Bool)

(declare-fun e!320503 () Bool)

(assert (=> b!556335 (= e!320503 (not true))))

(declare-fun e!320505 () Bool)

(assert (=> b!556335 e!320505))

(declare-fun res!348902 () Bool)

(assert (=> b!556335 (=> (not res!348902) (not e!320505))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35047 0))(
  ( (array!35048 (arr!16829 (Array (_ BitVec 32) (_ BitVec 64))) (size!17193 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35047)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35047 (_ BitVec 32)) Bool)

(assert (=> b!556335 (= res!348902 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17344 0))(
  ( (Unit!17345) )
))
(declare-fun lt!252868 () Unit!17344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17344)

(assert (=> b!556335 (= lt!252868 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556336 () Bool)

(declare-fun res!348899 () Bool)

(assert (=> b!556336 (=> (not res!348899) (not e!320503))))

(assert (=> b!556336 (= res!348899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556337 () Bool)

(declare-fun res!348901 () Bool)

(assert (=> b!556337 (=> (not res!348901) (not e!320506))))

(assert (=> b!556337 (= res!348901 (validKeyInArray!0 (select (arr!16829 a!3118) j!142)))))

(declare-fun res!348903 () Bool)

(assert (=> start!50868 (=> (not res!348903) (not e!320506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50868 (= res!348903 (validMask!0 mask!3119))))

(assert (=> start!50868 e!320506))

(assert (=> start!50868 true))

(declare-fun array_inv!12603 (array!35047) Bool)

(assert (=> start!50868 (array_inv!12603 a!3118)))

(declare-fun b!556338 () Bool)

(declare-datatypes ((SeekEntryResult!5285 0))(
  ( (MissingZero!5285 (index!23367 (_ BitVec 32))) (Found!5285 (index!23368 (_ BitVec 32))) (Intermediate!5285 (undefined!6097 Bool) (index!23369 (_ BitVec 32)) (x!52282 (_ BitVec 32))) (Undefined!5285) (MissingVacant!5285 (index!23370 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35047 (_ BitVec 32)) SeekEntryResult!5285)

(assert (=> b!556338 (= e!320505 (= (seekEntryOrOpen!0 (select (arr!16829 a!3118) j!142) a!3118 mask!3119) (Found!5285 j!142)))))

(declare-fun b!556339 () Bool)

(assert (=> b!556339 (= e!320506 e!320503)))

(declare-fun res!348904 () Bool)

(assert (=> b!556339 (=> (not res!348904) (not e!320503))))

(declare-fun lt!252869 () SeekEntryResult!5285)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556339 (= res!348904 (or (= lt!252869 (MissingZero!5285 i!1132)) (= lt!252869 (MissingVacant!5285 i!1132))))))

(assert (=> b!556339 (= lt!252869 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556340 () Bool)

(declare-fun res!348898 () Bool)

(assert (=> b!556340 (=> (not res!348898) (not e!320506))))

(assert (=> b!556340 (= res!348898 (and (= (size!17193 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17193 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17193 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556341 () Bool)

(declare-fun res!348897 () Bool)

(assert (=> b!556341 (=> (not res!348897) (not e!320503))))

(declare-datatypes ((List!10962 0))(
  ( (Nil!10959) (Cons!10958 (h!11943 (_ BitVec 64)) (t!17198 List!10962)) )
))
(declare-fun arrayNoDuplicates!0 (array!35047 (_ BitVec 32) List!10962) Bool)

(assert (=> b!556341 (= res!348897 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10959))))

(declare-fun b!556342 () Bool)

(declare-fun res!348896 () Bool)

(assert (=> b!556342 (=> (not res!348896) (not e!320506))))

(declare-fun arrayContainsKey!0 (array!35047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556342 (= res!348896 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556343 () Bool)

(declare-fun res!348900 () Bool)

(assert (=> b!556343 (=> (not res!348900) (not e!320503))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35047 (_ BitVec 32)) SeekEntryResult!5285)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556343 (= res!348900 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16829 a!3118) j!142) mask!3119) (select (arr!16829 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16829 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16829 a!3118) i!1132 k!1914) j!142) (array!35048 (store (arr!16829 a!3118) i!1132 k!1914) (size!17193 a!3118)) mask!3119)))))

(assert (= (and start!50868 res!348903) b!556340))

(assert (= (and b!556340 res!348898) b!556337))

(assert (= (and b!556337 res!348901) b!556334))

(assert (= (and b!556334 res!348905) b!556342))

(assert (= (and b!556342 res!348896) b!556339))

(assert (= (and b!556339 res!348904) b!556336))

(assert (= (and b!556336 res!348899) b!556341))

(assert (= (and b!556341 res!348897) b!556343))

(assert (= (and b!556343 res!348900) b!556335))

(assert (= (and b!556335 res!348902) b!556338))

(declare-fun m!534385 () Bool)

(assert (=> start!50868 m!534385))

(declare-fun m!534387 () Bool)

(assert (=> start!50868 m!534387))

(declare-fun m!534389 () Bool)

(assert (=> b!556335 m!534389))

(declare-fun m!534391 () Bool)

(assert (=> b!556335 m!534391))

(declare-fun m!534393 () Bool)

(assert (=> b!556339 m!534393))

(declare-fun m!534395 () Bool)

(assert (=> b!556342 m!534395))

(declare-fun m!534397 () Bool)

(assert (=> b!556337 m!534397))

(assert (=> b!556337 m!534397))

(declare-fun m!534399 () Bool)

(assert (=> b!556337 m!534399))

(declare-fun m!534401 () Bool)

(assert (=> b!556336 m!534401))

(declare-fun m!534403 () Bool)

(assert (=> b!556334 m!534403))

(assert (=> b!556338 m!534397))

(assert (=> b!556338 m!534397))

(declare-fun m!534405 () Bool)

(assert (=> b!556338 m!534405))

(declare-fun m!534407 () Bool)

(assert (=> b!556341 m!534407))

(assert (=> b!556343 m!534397))

(declare-fun m!534409 () Bool)

(assert (=> b!556343 m!534409))

(assert (=> b!556343 m!534397))

(declare-fun m!534411 () Bool)

(assert (=> b!556343 m!534411))

(declare-fun m!534413 () Bool)

(assert (=> b!556343 m!534413))

(assert (=> b!556343 m!534411))

(declare-fun m!534415 () Bool)

(assert (=> b!556343 m!534415))

(assert (=> b!556343 m!534409))

(assert (=> b!556343 m!534397))

(declare-fun m!534417 () Bool)

(assert (=> b!556343 m!534417))

(declare-fun m!534419 () Bool)

(assert (=> b!556343 m!534419))

(assert (=> b!556343 m!534411))

(assert (=> b!556343 m!534413))

(push 1)

