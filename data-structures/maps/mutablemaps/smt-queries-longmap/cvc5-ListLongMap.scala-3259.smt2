; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45436 () Bool)

(assert start!45436)

(declare-fun b!499353 () Bool)

(declare-fun res!301461 () Bool)

(declare-fun e!292625 () Bool)

(assert (=> b!499353 (=> (not res!301461) (not e!292625))))

(declare-datatypes ((array!32221 0))(
  ( (array!32222 (arr!15489 (Array (_ BitVec 32) (_ BitVec 64))) (size!15853 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32221)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499353 (= res!301461 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499354 () Bool)

(declare-fun res!301452 () Bool)

(assert (=> b!499354 (=> (not res!301452) (not e!292625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499354 (= res!301452 (validKeyInArray!0 k!2280))))

(declare-fun b!499355 () Bool)

(declare-fun e!292622 () Bool)

(assert (=> b!499355 (= e!292625 e!292622)))

(declare-fun res!301455 () Bool)

(assert (=> b!499355 (=> (not res!301455) (not e!292622))))

(declare-datatypes ((SeekEntryResult!3963 0))(
  ( (MissingZero!3963 (index!18034 (_ BitVec 32))) (Found!3963 (index!18035 (_ BitVec 32))) (Intermediate!3963 (undefined!4775 Bool) (index!18036 (_ BitVec 32)) (x!47107 (_ BitVec 32))) (Undefined!3963) (MissingVacant!3963 (index!18037 (_ BitVec 32))) )
))
(declare-fun lt!226488 () SeekEntryResult!3963)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499355 (= res!301455 (or (= lt!226488 (MissingZero!3963 i!1204)) (= lt!226488 (MissingVacant!3963 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32221 (_ BitVec 32)) SeekEntryResult!3963)

(assert (=> b!499355 (= lt!226488 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499356 () Bool)

(declare-fun e!292621 () Bool)

(assert (=> b!499356 (= e!292622 (not e!292621))))

(declare-fun res!301459 () Bool)

(assert (=> b!499356 (=> res!301459 e!292621)))

(declare-fun lt!226490 () (_ BitVec 64))

(declare-fun lt!226482 () SeekEntryResult!3963)

(declare-fun lt!226483 () array!32221)

(declare-fun lt!226481 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32221 (_ BitVec 32)) SeekEntryResult!3963)

(assert (=> b!499356 (= res!301459 (= lt!226482 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226481 lt!226490 lt!226483 mask!3524)))))

(declare-fun lt!226484 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499356 (= lt!226482 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226484 (select (arr!15489 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499356 (= lt!226481 (toIndex!0 lt!226490 mask!3524))))

(assert (=> b!499356 (= lt!226490 (select (store (arr!15489 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499356 (= lt!226484 (toIndex!0 (select (arr!15489 a!3235) j!176) mask!3524))))

(assert (=> b!499356 (= lt!226483 (array!32222 (store (arr!15489 a!3235) i!1204 k!2280) (size!15853 a!3235)))))

(declare-fun e!292623 () Bool)

(assert (=> b!499356 e!292623))

(declare-fun res!301453 () Bool)

(assert (=> b!499356 (=> (not res!301453) (not e!292623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32221 (_ BitVec 32)) Bool)

(assert (=> b!499356 (= res!301453 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14942 0))(
  ( (Unit!14943) )
))
(declare-fun lt!226485 () Unit!14942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14942)

(assert (=> b!499356 (= lt!226485 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!301456 () Bool)

(assert (=> start!45436 (=> (not res!301456) (not e!292625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45436 (= res!301456 (validMask!0 mask!3524))))

(assert (=> start!45436 e!292625))

(assert (=> start!45436 true))

(declare-fun array_inv!11263 (array!32221) Bool)

(assert (=> start!45436 (array_inv!11263 a!3235)))

(declare-fun b!499357 () Bool)

(declare-fun e!292626 () Bool)

(assert (=> b!499357 (= e!292626 false)))

(declare-fun b!499358 () Bool)

(declare-fun res!301462 () Bool)

(assert (=> b!499358 (=> res!301462 e!292621)))

(assert (=> b!499358 (= res!301462 (or (undefined!4775 lt!226482) (not (is-Intermediate!3963 lt!226482))))))

(declare-fun b!499359 () Bool)

(declare-fun e!292627 () Bool)

(assert (=> b!499359 (= e!292621 e!292627)))

(declare-fun res!301451 () Bool)

(assert (=> b!499359 (=> res!301451 e!292627)))

(assert (=> b!499359 (= res!301451 (or (bvsgt #b00000000000000000000000000000000 (x!47107 lt!226482)) (bvsgt (x!47107 lt!226482) #b01111111111111111111111111111110) (bvslt lt!226484 #b00000000000000000000000000000000) (bvsge lt!226484 (size!15853 a!3235)) (bvslt (index!18036 lt!226482) #b00000000000000000000000000000000) (bvsge (index!18036 lt!226482) (size!15853 a!3235)) (not (= lt!226482 (Intermediate!3963 false (index!18036 lt!226482) (x!47107 lt!226482))))))))

(assert (=> b!499359 (and (or (= (select (arr!15489 a!3235) (index!18036 lt!226482)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15489 a!3235) (index!18036 lt!226482)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15489 a!3235) (index!18036 lt!226482)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15489 a!3235) (index!18036 lt!226482)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226486 () Unit!14942)

(declare-fun e!292620 () Unit!14942)

(assert (=> b!499359 (= lt!226486 e!292620)))

(declare-fun c!59228 () Bool)

(assert (=> b!499359 (= c!59228 (= (select (arr!15489 a!3235) (index!18036 lt!226482)) (select (arr!15489 a!3235) j!176)))))

(assert (=> b!499359 (and (bvslt (x!47107 lt!226482) #b01111111111111111111111111111110) (or (= (select (arr!15489 a!3235) (index!18036 lt!226482)) (select (arr!15489 a!3235) j!176)) (= (select (arr!15489 a!3235) (index!18036 lt!226482)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15489 a!3235) (index!18036 lt!226482)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499360 () Bool)

(declare-fun res!301458 () Bool)

(assert (=> b!499360 (=> (not res!301458) (not e!292625))))

(assert (=> b!499360 (= res!301458 (validKeyInArray!0 (select (arr!15489 a!3235) j!176)))))

(declare-fun b!499361 () Bool)

(assert (=> b!499361 (= e!292623 (= (seekEntryOrOpen!0 (select (arr!15489 a!3235) j!176) a!3235 mask!3524) (Found!3963 j!176)))))

(declare-fun b!499362 () Bool)

(declare-fun res!301454 () Bool)

(assert (=> b!499362 (=> (not res!301454) (not e!292622))))

(declare-datatypes ((List!9700 0))(
  ( (Nil!9697) (Cons!9696 (h!10570 (_ BitVec 64)) (t!15936 List!9700)) )
))
(declare-fun arrayNoDuplicates!0 (array!32221 (_ BitVec 32) List!9700) Bool)

(assert (=> b!499362 (= res!301454 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9697))))

(declare-fun b!499363 () Bool)

(declare-fun res!301463 () Bool)

(assert (=> b!499363 (=> (not res!301463) (not e!292625))))

(assert (=> b!499363 (= res!301463 (and (= (size!15853 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15853 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15853 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499364 () Bool)

(declare-fun Unit!14944 () Unit!14942)

(assert (=> b!499364 (= e!292620 Unit!14944)))

(declare-fun b!499365 () Bool)

(declare-fun Unit!14945 () Unit!14942)

(assert (=> b!499365 (= e!292620 Unit!14945)))

(declare-fun lt!226487 () Unit!14942)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32221 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14942)

(assert (=> b!499365 (= lt!226487 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226484 #b00000000000000000000000000000000 (index!18036 lt!226482) (x!47107 lt!226482) mask!3524))))

(declare-fun res!301457 () Bool)

(assert (=> b!499365 (= res!301457 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226484 lt!226490 lt!226483 mask!3524) (Intermediate!3963 false (index!18036 lt!226482) (x!47107 lt!226482))))))

(assert (=> b!499365 (=> (not res!301457) (not e!292626))))

(assert (=> b!499365 e!292626))

(declare-fun b!499366 () Bool)

(assert (=> b!499366 (= e!292627 true)))

(declare-fun lt!226489 () SeekEntryResult!3963)

(assert (=> b!499366 (= lt!226489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226484 lt!226490 lt!226483 mask!3524))))

(declare-fun b!499367 () Bool)

(declare-fun res!301460 () Bool)

(assert (=> b!499367 (=> (not res!301460) (not e!292622))))

(assert (=> b!499367 (= res!301460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45436 res!301456) b!499363))

(assert (= (and b!499363 res!301463) b!499360))

(assert (= (and b!499360 res!301458) b!499354))

(assert (= (and b!499354 res!301452) b!499353))

(assert (= (and b!499353 res!301461) b!499355))

(assert (= (and b!499355 res!301455) b!499367))

(assert (= (and b!499367 res!301460) b!499362))

(assert (= (and b!499362 res!301454) b!499356))

(assert (= (and b!499356 res!301453) b!499361))

(assert (= (and b!499356 (not res!301459)) b!499358))

(assert (= (and b!499358 (not res!301462)) b!499359))

(assert (= (and b!499359 c!59228) b!499365))

(assert (= (and b!499359 (not c!59228)) b!499364))

(assert (= (and b!499365 res!301457) b!499357))

(assert (= (and b!499359 (not res!301451)) b!499366))

(declare-fun m!480583 () Bool)

(assert (=> b!499360 m!480583))

(assert (=> b!499360 m!480583))

(declare-fun m!480585 () Bool)

(assert (=> b!499360 m!480585))

(declare-fun m!480587 () Bool)

(assert (=> b!499353 m!480587))

(declare-fun m!480589 () Bool)

(assert (=> b!499367 m!480589))

(declare-fun m!480591 () Bool)

(assert (=> start!45436 m!480591))

(declare-fun m!480593 () Bool)

(assert (=> start!45436 m!480593))

(assert (=> b!499356 m!480583))

(declare-fun m!480595 () Bool)

(assert (=> b!499356 m!480595))

(declare-fun m!480597 () Bool)

(assert (=> b!499356 m!480597))

(declare-fun m!480599 () Bool)

(assert (=> b!499356 m!480599))

(declare-fun m!480601 () Bool)

(assert (=> b!499356 m!480601))

(assert (=> b!499356 m!480583))

(declare-fun m!480603 () Bool)

(assert (=> b!499356 m!480603))

(assert (=> b!499356 m!480583))

(declare-fun m!480605 () Bool)

(assert (=> b!499356 m!480605))

(declare-fun m!480607 () Bool)

(assert (=> b!499356 m!480607))

(declare-fun m!480609 () Bool)

(assert (=> b!499356 m!480609))

(declare-fun m!480611 () Bool)

(assert (=> b!499365 m!480611))

(declare-fun m!480613 () Bool)

(assert (=> b!499365 m!480613))

(assert (=> b!499366 m!480613))

(assert (=> b!499361 m!480583))

(assert (=> b!499361 m!480583))

(declare-fun m!480615 () Bool)

(assert (=> b!499361 m!480615))

(declare-fun m!480617 () Bool)

(assert (=> b!499362 m!480617))

(declare-fun m!480619 () Bool)

(assert (=> b!499355 m!480619))

(declare-fun m!480621 () Bool)

(assert (=> b!499354 m!480621))

(declare-fun m!480623 () Bool)

(assert (=> b!499359 m!480623))

(assert (=> b!499359 m!480583))

(push 1)

