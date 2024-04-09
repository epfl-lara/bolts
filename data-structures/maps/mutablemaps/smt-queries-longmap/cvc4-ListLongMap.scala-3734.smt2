; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51420 () Bool)

(assert start!51420)

(declare-fun b!561336 () Bool)

(declare-fun res!352645 () Bool)

(declare-fun e!323472 () Bool)

(assert (=> b!561336 (=> (not res!352645) (not e!323472))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35239 0))(
  ( (array!35240 (arr!16916 (Array (_ BitVec 32) (_ BitVec 64))) (size!17280 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35239)

(assert (=> b!561336 (= res!352645 (and (= (size!17280 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17280 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17280 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561337 () Bool)

(declare-fun lt!255536 () (_ BitVec 64))

(declare-fun e!323474 () Bool)

(declare-fun lt!255534 () array!35239)

(declare-datatypes ((SeekEntryResult!5372 0))(
  ( (MissingZero!5372 (index!23715 (_ BitVec 32))) (Found!5372 (index!23716 (_ BitVec 32))) (Intermediate!5372 (undefined!6184 Bool) (index!23717 (_ BitVec 32)) (x!52646 (_ BitVec 32))) (Undefined!5372) (MissingVacant!5372 (index!23718 (_ BitVec 32))) )
))
(declare-fun lt!255541 () SeekEntryResult!5372)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35239 (_ BitVec 32)) SeekEntryResult!5372)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35239 (_ BitVec 32)) SeekEntryResult!5372)

(assert (=> b!561337 (= e!323474 (= (seekEntryOrOpen!0 lt!255536 lt!255534 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52646 lt!255541) (index!23717 lt!255541) (index!23717 lt!255541) lt!255536 lt!255534 mask!3119)))))

(declare-fun b!561338 () Bool)

(declare-fun e!323470 () Bool)

(declare-fun e!323473 () Bool)

(assert (=> b!561338 (= e!323470 e!323473)))

(declare-fun res!352637 () Bool)

(assert (=> b!561338 (=> (not res!352637) (not e!323473))))

(declare-fun lt!255542 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35239 (_ BitVec 32)) SeekEntryResult!5372)

(assert (=> b!561338 (= res!352637 (= lt!255541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255542 lt!255536 lt!255534 mask!3119)))))

(declare-fun lt!255537 () (_ BitVec 32))

(assert (=> b!561338 (= lt!255541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255537 (select (arr!16916 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561338 (= lt!255542 (toIndex!0 lt!255536 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!561338 (= lt!255536 (select (store (arr!16916 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561338 (= lt!255537 (toIndex!0 (select (arr!16916 a!3118) j!142) mask!3119))))

(assert (=> b!561338 (= lt!255534 (array!35240 (store (arr!16916 a!3118) i!1132 k!1914) (size!17280 a!3118)))))

(declare-fun b!561339 () Bool)

(declare-fun res!352641 () Bool)

(assert (=> b!561339 (=> (not res!352641) (not e!323472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561339 (= res!352641 (validKeyInArray!0 k!1914))))

(declare-fun b!561340 () Bool)

(assert (=> b!561340 (= e!323472 e!323470)))

(declare-fun res!352648 () Bool)

(assert (=> b!561340 (=> (not res!352648) (not e!323470))))

(declare-fun lt!255535 () SeekEntryResult!5372)

(assert (=> b!561340 (= res!352648 (or (= lt!255535 (MissingZero!5372 i!1132)) (= lt!255535 (MissingVacant!5372 i!1132))))))

(assert (=> b!561340 (= lt!255535 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561341 () Bool)

(declare-fun res!352644 () Bool)

(assert (=> b!561341 (=> (not res!352644) (not e!323472))))

(assert (=> b!561341 (= res!352644 (validKeyInArray!0 (select (arr!16916 a!3118) j!142)))))

(declare-fun b!561342 () Bool)

(assert (=> b!561342 (= e!323473 (not true))))

(declare-fun e!323476 () Bool)

(assert (=> b!561342 e!323476))

(declare-fun res!352647 () Bool)

(assert (=> b!561342 (=> (not res!352647) (not e!323476))))

(declare-fun lt!255538 () SeekEntryResult!5372)

(assert (=> b!561342 (= res!352647 (= lt!255538 (Found!5372 j!142)))))

(assert (=> b!561342 (= lt!255538 (seekEntryOrOpen!0 (select (arr!16916 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35239 (_ BitVec 32)) Bool)

(assert (=> b!561342 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17518 0))(
  ( (Unit!17519) )
))
(declare-fun lt!255539 () Unit!17518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17518)

(assert (=> b!561342 (= lt!255539 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561343 () Bool)

(declare-fun e!323469 () Bool)

(assert (=> b!561343 (= e!323476 e!323469)))

(declare-fun res!352642 () Bool)

(assert (=> b!561343 (=> res!352642 e!323469)))

(assert (=> b!561343 (= res!352642 (or (undefined!6184 lt!255541) (not (is-Intermediate!5372 lt!255541))))))

(declare-fun b!561344 () Bool)

(declare-fun res!352640 () Bool)

(assert (=> b!561344 (=> (not res!352640) (not e!323470))))

(assert (=> b!561344 (= res!352640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561345 () Bool)

(declare-fun e!323475 () Bool)

(assert (=> b!561345 (= e!323475 e!323474)))

(declare-fun res!352638 () Bool)

(assert (=> b!561345 (=> (not res!352638) (not e!323474))))

(assert (=> b!561345 (= res!352638 (= lt!255538 (seekKeyOrZeroReturnVacant!0 (x!52646 lt!255541) (index!23717 lt!255541) (index!23717 lt!255541) (select (arr!16916 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!352646 () Bool)

(assert (=> start!51420 (=> (not res!352646) (not e!323472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51420 (= res!352646 (validMask!0 mask!3119))))

(assert (=> start!51420 e!323472))

(assert (=> start!51420 true))

(declare-fun array_inv!12690 (array!35239) Bool)

(assert (=> start!51420 (array_inv!12690 a!3118)))

(declare-fun b!561335 () Bool)

(declare-fun res!352639 () Bool)

(assert (=> b!561335 (=> (not res!352639) (not e!323470))))

(declare-datatypes ((List!11049 0))(
  ( (Nil!11046) (Cons!11045 (h!12048 (_ BitVec 64)) (t!17285 List!11049)) )
))
(declare-fun arrayNoDuplicates!0 (array!35239 (_ BitVec 32) List!11049) Bool)

(assert (=> b!561335 (= res!352639 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11046))))

(declare-fun b!561346 () Bool)

(declare-fun res!352649 () Bool)

(assert (=> b!561346 (=> (not res!352649) (not e!323472))))

(declare-fun arrayContainsKey!0 (array!35239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561346 (= res!352649 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561347 () Bool)

(assert (=> b!561347 (= e!323469 e!323475)))

(declare-fun res!352643 () Bool)

(assert (=> b!561347 (=> res!352643 e!323475)))

(declare-fun lt!255540 () (_ BitVec 64))

(assert (=> b!561347 (= res!352643 (or (= lt!255540 (select (arr!16916 a!3118) j!142)) (= lt!255540 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561347 (= lt!255540 (select (arr!16916 a!3118) (index!23717 lt!255541)))))

(assert (= (and start!51420 res!352646) b!561336))

(assert (= (and b!561336 res!352645) b!561341))

(assert (= (and b!561341 res!352644) b!561339))

(assert (= (and b!561339 res!352641) b!561346))

(assert (= (and b!561346 res!352649) b!561340))

(assert (= (and b!561340 res!352648) b!561344))

(assert (= (and b!561344 res!352640) b!561335))

(assert (= (and b!561335 res!352639) b!561338))

(assert (= (and b!561338 res!352637) b!561342))

(assert (= (and b!561342 res!352647) b!561343))

(assert (= (and b!561343 (not res!352642)) b!561347))

(assert (= (and b!561347 (not res!352643)) b!561345))

(assert (= (and b!561345 res!352638) b!561337))

(declare-fun m!539279 () Bool)

(assert (=> b!561341 m!539279))

(assert (=> b!561341 m!539279))

(declare-fun m!539281 () Bool)

(assert (=> b!561341 m!539281))

(declare-fun m!539283 () Bool)

(assert (=> b!561340 m!539283))

(declare-fun m!539285 () Bool)

(assert (=> start!51420 m!539285))

(declare-fun m!539287 () Bool)

(assert (=> start!51420 m!539287))

(declare-fun m!539289 () Bool)

(assert (=> b!561344 m!539289))

(declare-fun m!539291 () Bool)

(assert (=> b!561335 m!539291))

(assert (=> b!561338 m!539279))

(declare-fun m!539293 () Bool)

(assert (=> b!561338 m!539293))

(assert (=> b!561338 m!539279))

(declare-fun m!539295 () Bool)

(assert (=> b!561338 m!539295))

(declare-fun m!539297 () Bool)

(assert (=> b!561338 m!539297))

(declare-fun m!539299 () Bool)

(assert (=> b!561338 m!539299))

(assert (=> b!561338 m!539279))

(declare-fun m!539301 () Bool)

(assert (=> b!561338 m!539301))

(declare-fun m!539303 () Bool)

(assert (=> b!561338 m!539303))

(assert (=> b!561345 m!539279))

(assert (=> b!561345 m!539279))

(declare-fun m!539305 () Bool)

(assert (=> b!561345 m!539305))

(declare-fun m!539307 () Bool)

(assert (=> b!561346 m!539307))

(declare-fun m!539309 () Bool)

(assert (=> b!561339 m!539309))

(declare-fun m!539311 () Bool)

(assert (=> b!561337 m!539311))

(declare-fun m!539313 () Bool)

(assert (=> b!561337 m!539313))

(assert (=> b!561347 m!539279))

(declare-fun m!539315 () Bool)

(assert (=> b!561347 m!539315))

(assert (=> b!561342 m!539279))

(assert (=> b!561342 m!539279))

(declare-fun m!539317 () Bool)

(assert (=> b!561342 m!539317))

(declare-fun m!539319 () Bool)

(assert (=> b!561342 m!539319))

(declare-fun m!539321 () Bool)

(assert (=> b!561342 m!539321))

(push 1)

