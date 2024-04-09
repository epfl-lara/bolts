; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51530 () Bool)

(assert start!51530)

(declare-fun b!563330 () Bool)

(declare-fun e!324620 () Bool)

(assert (=> b!563330 (= e!324620 (not true))))

(declare-fun e!324621 () Bool)

(assert (=> b!563330 e!324621))

(declare-fun res!354635 () Bool)

(assert (=> b!563330 (=> (not res!354635) (not e!324621))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35349 0))(
  ( (array!35350 (arr!16971 (Array (_ BitVec 32) (_ BitVec 64))) (size!17335 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35349)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35349 (_ BitVec 32)) Bool)

(assert (=> b!563330 (= res!354635 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17628 0))(
  ( (Unit!17629) )
))
(declare-fun lt!257212 () Unit!17628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17628)

(assert (=> b!563330 (= lt!257212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563331 () Bool)

(declare-fun res!354633 () Bool)

(assert (=> b!563331 (=> (not res!354633) (not e!324620))))

(declare-datatypes ((List!11104 0))(
  ( (Nil!11101) (Cons!11100 (h!12103 (_ BitVec 64)) (t!17340 List!11104)) )
))
(declare-fun arrayNoDuplicates!0 (array!35349 (_ BitVec 32) List!11104) Bool)

(assert (=> b!563331 (= res!354633 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11101))))

(declare-fun b!563332 () Bool)

(declare-fun res!354636 () Bool)

(assert (=> b!563332 (=> (not res!354636) (not e!324620))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5427 0))(
  ( (MissingZero!5427 (index!23935 (_ BitVec 32))) (Found!5427 (index!23936 (_ BitVec 32))) (Intermediate!5427 (undefined!6239 Bool) (index!23937 (_ BitVec 32)) (x!52853 (_ BitVec 32))) (Undefined!5427) (MissingVacant!5427 (index!23938 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35349 (_ BitVec 32)) SeekEntryResult!5427)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563332 (= res!354636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16971 a!3118) j!142) mask!3119) (select (arr!16971 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16971 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16971 a!3118) i!1132 k!1914) j!142) (array!35350 (store (arr!16971 a!3118) i!1132 k!1914) (size!17335 a!3118)) mask!3119)))))

(declare-fun b!563333 () Bool)

(declare-fun res!354638 () Bool)

(declare-fun e!324622 () Bool)

(assert (=> b!563333 (=> (not res!354638) (not e!324622))))

(declare-fun arrayContainsKey!0 (array!35349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563333 (= res!354638 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563334 () Bool)

(declare-fun res!354640 () Bool)

(assert (=> b!563334 (=> (not res!354640) (not e!324622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563334 (= res!354640 (validKeyInArray!0 k!1914))))

(declare-fun b!563335 () Bool)

(declare-fun res!354641 () Bool)

(assert (=> b!563335 (=> (not res!354641) (not e!324622))))

(assert (=> b!563335 (= res!354641 (validKeyInArray!0 (select (arr!16971 a!3118) j!142)))))

(declare-fun res!354634 () Bool)

(assert (=> start!51530 (=> (not res!354634) (not e!324622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51530 (= res!354634 (validMask!0 mask!3119))))

(assert (=> start!51530 e!324622))

(assert (=> start!51530 true))

(declare-fun array_inv!12745 (array!35349) Bool)

(assert (=> start!51530 (array_inv!12745 a!3118)))

(declare-fun b!563336 () Bool)

(assert (=> b!563336 (= e!324622 e!324620)))

(declare-fun res!354639 () Bool)

(assert (=> b!563336 (=> (not res!354639) (not e!324620))))

(declare-fun lt!257213 () SeekEntryResult!5427)

(assert (=> b!563336 (= res!354639 (or (= lt!257213 (MissingZero!5427 i!1132)) (= lt!257213 (MissingVacant!5427 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35349 (_ BitVec 32)) SeekEntryResult!5427)

(assert (=> b!563336 (= lt!257213 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563337 () Bool)

(declare-fun res!354632 () Bool)

(assert (=> b!563337 (=> (not res!354632) (not e!324620))))

(assert (=> b!563337 (= res!354632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563338 () Bool)

(declare-fun res!354637 () Bool)

(assert (=> b!563338 (=> (not res!354637) (not e!324622))))

(assert (=> b!563338 (= res!354637 (and (= (size!17335 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17335 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17335 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563339 () Bool)

(assert (=> b!563339 (= e!324621 (= (seekEntryOrOpen!0 (select (arr!16971 a!3118) j!142) a!3118 mask!3119) (Found!5427 j!142)))))

(assert (= (and start!51530 res!354634) b!563338))

(assert (= (and b!563338 res!354637) b!563335))

(assert (= (and b!563335 res!354641) b!563334))

(assert (= (and b!563334 res!354640) b!563333))

(assert (= (and b!563333 res!354638) b!563336))

(assert (= (and b!563336 res!354639) b!563337))

(assert (= (and b!563337 res!354632) b!563331))

(assert (= (and b!563331 res!354633) b!563332))

(assert (= (and b!563332 res!354636) b!563330))

(assert (= (and b!563330 res!354635) b!563339))

(declare-fun m!541729 () Bool)

(assert (=> b!563337 m!541729))

(declare-fun m!541731 () Bool)

(assert (=> b!563339 m!541731))

(assert (=> b!563339 m!541731))

(declare-fun m!541733 () Bool)

(assert (=> b!563339 m!541733))

(declare-fun m!541735 () Bool)

(assert (=> start!51530 m!541735))

(declare-fun m!541737 () Bool)

(assert (=> start!51530 m!541737))

(declare-fun m!541739 () Bool)

(assert (=> b!563336 m!541739))

(declare-fun m!541741 () Bool)

(assert (=> b!563330 m!541741))

(declare-fun m!541743 () Bool)

(assert (=> b!563330 m!541743))

(declare-fun m!541745 () Bool)

(assert (=> b!563333 m!541745))

(declare-fun m!541747 () Bool)

(assert (=> b!563331 m!541747))

(declare-fun m!541749 () Bool)

(assert (=> b!563334 m!541749))

(assert (=> b!563332 m!541731))

(declare-fun m!541751 () Bool)

(assert (=> b!563332 m!541751))

(assert (=> b!563332 m!541731))

(declare-fun m!541753 () Bool)

(assert (=> b!563332 m!541753))

(declare-fun m!541755 () Bool)

(assert (=> b!563332 m!541755))

(assert (=> b!563332 m!541753))

(declare-fun m!541757 () Bool)

(assert (=> b!563332 m!541757))

(assert (=> b!563332 m!541751))

(assert (=> b!563332 m!541731))

(declare-fun m!541759 () Bool)

(assert (=> b!563332 m!541759))

(declare-fun m!541761 () Bool)

(assert (=> b!563332 m!541761))

(assert (=> b!563332 m!541753))

(assert (=> b!563332 m!541755))

(assert (=> b!563335 m!541731))

(assert (=> b!563335 m!541731))

(declare-fun m!541763 () Bool)

(assert (=> b!563335 m!541763))

(push 1)

