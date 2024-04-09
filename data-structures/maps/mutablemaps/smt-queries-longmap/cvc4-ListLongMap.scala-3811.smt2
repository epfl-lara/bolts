; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52308 () Bool)

(assert start!52308)

(declare-fun b!570394 () Bool)

(declare-fun res!360333 () Bool)

(declare-fun e!328059 () Bool)

(assert (=> b!570394 (=> (not res!360333) (not e!328059))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35722 0))(
  ( (array!35723 (arr!17147 (Array (_ BitVec 32) (_ BitVec 64))) (size!17511 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35722)

(assert (=> b!570394 (= res!360333 (and (= (size!17511 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17511 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17511 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570395 () Bool)

(declare-fun res!360325 () Bool)

(assert (=> b!570395 (=> (not res!360325) (not e!328059))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570395 (= res!360325 (validKeyInArray!0 k!1914))))

(declare-fun b!570396 () Bool)

(declare-fun e!328061 () Bool)

(declare-fun e!328058 () Bool)

(assert (=> b!570396 (= e!328061 e!328058)))

(declare-fun res!360326 () Bool)

(assert (=> b!570396 (=> (not res!360326) (not e!328058))))

(declare-datatypes ((SeekEntryResult!5603 0))(
  ( (MissingZero!5603 (index!24639 (_ BitVec 32))) (Found!5603 (index!24640 (_ BitVec 32))) (Intermediate!5603 (undefined!6415 Bool) (index!24641 (_ BitVec 32)) (x!53538 (_ BitVec 32))) (Undefined!5603) (MissingVacant!5603 (index!24642 (_ BitVec 32))) )
))
(declare-fun lt!260081 () SeekEntryResult!5603)

(declare-fun lt!260080 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35722 (_ BitVec 32)) SeekEntryResult!5603)

(assert (=> b!570396 (= res!360326 (= lt!260081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260080 (select (store (arr!17147 a!3118) i!1132 k!1914) j!142) (array!35723 (store (arr!17147 a!3118) i!1132 k!1914) (size!17511 a!3118)) mask!3119)))))

(declare-fun lt!260079 () (_ BitVec 32))

(assert (=> b!570396 (= lt!260081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260079 (select (arr!17147 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570396 (= lt!260080 (toIndex!0 (select (store (arr!17147 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570396 (= lt!260079 (toIndex!0 (select (arr!17147 a!3118) j!142) mask!3119))))

(declare-fun b!570397 () Bool)

(assert (=> b!570397 (= e!328058 (not true))))

(declare-fun e!328063 () Bool)

(assert (=> b!570397 e!328063))

(declare-fun res!360334 () Bool)

(assert (=> b!570397 (=> (not res!360334) (not e!328063))))

(declare-fun lt!260077 () SeekEntryResult!5603)

(assert (=> b!570397 (= res!360334 (= lt!260077 (Found!5603 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35722 (_ BitVec 32)) SeekEntryResult!5603)

(assert (=> b!570397 (= lt!260077 (seekEntryOrOpen!0 (select (arr!17147 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35722 (_ BitVec 32)) Bool)

(assert (=> b!570397 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17908 0))(
  ( (Unit!17909) )
))
(declare-fun lt!260078 () Unit!17908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35722 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17908)

(assert (=> b!570397 (= lt!260078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570398 () Bool)

(declare-fun res!360330 () Bool)

(assert (=> b!570398 (=> (not res!360330) (not e!328059))))

(assert (=> b!570398 (= res!360330 (validKeyInArray!0 (select (arr!17147 a!3118) j!142)))))

(declare-fun b!570399 () Bool)

(assert (=> b!570399 (= e!328059 e!328061)))

(declare-fun res!360332 () Bool)

(assert (=> b!570399 (=> (not res!360332) (not e!328061))))

(declare-fun lt!260076 () SeekEntryResult!5603)

(assert (=> b!570399 (= res!360332 (or (= lt!260076 (MissingZero!5603 i!1132)) (= lt!260076 (MissingVacant!5603 i!1132))))))

(assert (=> b!570399 (= lt!260076 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570400 () Bool)

(declare-fun e!328062 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35722 (_ BitVec 32)) SeekEntryResult!5603)

(assert (=> b!570400 (= e!328062 (= lt!260077 (seekKeyOrZeroReturnVacant!0 (x!53538 lt!260081) (index!24641 lt!260081) (index!24641 lt!260081) (select (arr!17147 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570401 () Bool)

(declare-fun res!360327 () Bool)

(assert (=> b!570401 (=> (not res!360327) (not e!328061))))

(declare-datatypes ((List!11280 0))(
  ( (Nil!11277) (Cons!11276 (h!12300 (_ BitVec 64)) (t!17516 List!11280)) )
))
(declare-fun arrayNoDuplicates!0 (array!35722 (_ BitVec 32) List!11280) Bool)

(assert (=> b!570401 (= res!360327 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11277))))

(declare-fun b!570402 () Bool)

(assert (=> b!570402 (= e!328063 e!328062)))

(declare-fun res!360331 () Bool)

(assert (=> b!570402 (=> res!360331 e!328062)))

(assert (=> b!570402 (= res!360331 (or (undefined!6415 lt!260081) (not (is-Intermediate!5603 lt!260081)) (= (select (arr!17147 a!3118) (index!24641 lt!260081)) (select (arr!17147 a!3118) j!142)) (= (select (arr!17147 a!3118) (index!24641 lt!260081)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!360335 () Bool)

(assert (=> start!52308 (=> (not res!360335) (not e!328059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52308 (= res!360335 (validMask!0 mask!3119))))

(assert (=> start!52308 e!328059))

(assert (=> start!52308 true))

(declare-fun array_inv!12921 (array!35722) Bool)

(assert (=> start!52308 (array_inv!12921 a!3118)))

(declare-fun b!570403 () Bool)

(declare-fun res!360328 () Bool)

(assert (=> b!570403 (=> (not res!360328) (not e!328061))))

(assert (=> b!570403 (= res!360328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570404 () Bool)

(declare-fun res!360329 () Bool)

(assert (=> b!570404 (=> (not res!360329) (not e!328059))))

(declare-fun arrayContainsKey!0 (array!35722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570404 (= res!360329 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52308 res!360335) b!570394))

(assert (= (and b!570394 res!360333) b!570398))

(assert (= (and b!570398 res!360330) b!570395))

(assert (= (and b!570395 res!360325) b!570404))

(assert (= (and b!570404 res!360329) b!570399))

(assert (= (and b!570399 res!360332) b!570403))

(assert (= (and b!570403 res!360328) b!570401))

(assert (= (and b!570401 res!360327) b!570396))

(assert (= (and b!570396 res!360326) b!570397))

(assert (= (and b!570397 res!360334) b!570402))

(assert (= (and b!570402 (not res!360331)) b!570400))

(declare-fun m!549291 () Bool)

(assert (=> b!570401 m!549291))

(declare-fun m!549293 () Bool)

(assert (=> start!52308 m!549293))

(declare-fun m!549295 () Bool)

(assert (=> start!52308 m!549295))

(declare-fun m!549297 () Bool)

(assert (=> b!570395 m!549297))

(declare-fun m!549299 () Bool)

(assert (=> b!570396 m!549299))

(declare-fun m!549301 () Bool)

(assert (=> b!570396 m!549301))

(assert (=> b!570396 m!549299))

(declare-fun m!549303 () Bool)

(assert (=> b!570396 m!549303))

(assert (=> b!570396 m!549299))

(declare-fun m!549305 () Bool)

(assert (=> b!570396 m!549305))

(declare-fun m!549307 () Bool)

(assert (=> b!570396 m!549307))

(assert (=> b!570396 m!549303))

(declare-fun m!549309 () Bool)

(assert (=> b!570396 m!549309))

(assert (=> b!570396 m!549303))

(declare-fun m!549311 () Bool)

(assert (=> b!570396 m!549311))

(assert (=> b!570400 m!549299))

(assert (=> b!570400 m!549299))

(declare-fun m!549313 () Bool)

(assert (=> b!570400 m!549313))

(declare-fun m!549315 () Bool)

(assert (=> b!570402 m!549315))

(assert (=> b!570402 m!549299))

(declare-fun m!549317 () Bool)

(assert (=> b!570399 m!549317))

(declare-fun m!549319 () Bool)

(assert (=> b!570404 m!549319))

(assert (=> b!570397 m!549299))

(assert (=> b!570397 m!549299))

(declare-fun m!549321 () Bool)

(assert (=> b!570397 m!549321))

(declare-fun m!549323 () Bool)

(assert (=> b!570397 m!549323))

(declare-fun m!549325 () Bool)

(assert (=> b!570397 m!549325))

(declare-fun m!549327 () Bool)

(assert (=> b!570403 m!549327))

(assert (=> b!570398 m!549299))

(assert (=> b!570398 m!549299))

(declare-fun m!549329 () Bool)

(assert (=> b!570398 m!549329))

(push 1)

