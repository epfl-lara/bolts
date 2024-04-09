; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47924 () Bool)

(assert start!47924)

(declare-fun b!527614 () Bool)

(declare-datatypes ((Unit!16654 0))(
  ( (Unit!16655) )
))
(declare-fun e!307483 () Unit!16654)

(declare-fun Unit!16656 () Unit!16654)

(assert (=> b!527614 (= e!307483 Unit!16656)))

(declare-fun b!527615 () Bool)

(declare-fun res!324038 () Bool)

(declare-fun e!307485 () Bool)

(assert (=> b!527615 (=> (not res!324038) (not e!307485))))

(declare-datatypes ((array!33452 0))(
  ( (array!33453 (arr!16073 (Array (_ BitVec 32) (_ BitVec 64))) (size!16437 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33452)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527615 (= res!324038 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527616 () Bool)

(declare-fun res!324043 () Bool)

(assert (=> b!527616 (=> (not res!324043) (not e!307485))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!527616 (= res!324043 (and (= (size!16437 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16437 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16437 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527617 () Bool)

(declare-fun e!307487 () Bool)

(assert (=> b!527617 (= e!307485 e!307487)))

(declare-fun res!324046 () Bool)

(assert (=> b!527617 (=> (not res!324046) (not e!307487))))

(declare-datatypes ((SeekEntryResult!4547 0))(
  ( (MissingZero!4547 (index!20406 (_ BitVec 32))) (Found!4547 (index!20407 (_ BitVec 32))) (Intermediate!4547 (undefined!5359 Bool) (index!20408 (_ BitVec 32)) (x!49399 (_ BitVec 32))) (Undefined!4547) (MissingVacant!4547 (index!20409 (_ BitVec 32))) )
))
(declare-fun lt!242976 () SeekEntryResult!4547)

(assert (=> b!527617 (= res!324046 (or (= lt!242976 (MissingZero!4547 i!1204)) (= lt!242976 (MissingVacant!4547 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33452 (_ BitVec 32)) SeekEntryResult!4547)

(assert (=> b!527617 (= lt!242976 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527619 () Bool)

(declare-fun e!307488 () Bool)

(assert (=> b!527619 (= e!307488 false)))

(declare-fun b!527620 () Bool)

(declare-fun res!324047 () Bool)

(assert (=> b!527620 (=> (not res!324047) (not e!307487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33452 (_ BitVec 32)) Bool)

(assert (=> b!527620 (= res!324047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527621 () Bool)

(declare-fun res!324044 () Bool)

(assert (=> b!527621 (=> (not res!324044) (not e!307485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527621 (= res!324044 (validKeyInArray!0 (select (arr!16073 a!3235) j!176)))))

(declare-fun b!527622 () Bool)

(declare-fun e!307489 () Bool)

(assert (=> b!527622 (= e!307489 true)))

(declare-fun lt!242972 () SeekEntryResult!4547)

(assert (=> b!527622 (= (index!20408 lt!242972) i!1204)))

(declare-fun lt!242973 () (_ BitVec 32))

(declare-fun lt!242977 () Unit!16654)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16654)

(assert (=> b!527622 (= lt!242977 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242973 #b00000000000000000000000000000000 (index!20408 lt!242972) (x!49399 lt!242972) mask!3524))))

(assert (=> b!527622 (and (or (= (select (arr!16073 a!3235) (index!20408 lt!242972)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16073 a!3235) (index!20408 lt!242972)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16073 a!3235) (index!20408 lt!242972)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16073 a!3235) (index!20408 lt!242972)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242978 () Unit!16654)

(assert (=> b!527622 (= lt!242978 e!307483)))

(declare-fun c!62096 () Bool)

(assert (=> b!527622 (= c!62096 (= (select (arr!16073 a!3235) (index!20408 lt!242972)) (select (arr!16073 a!3235) j!176)))))

(assert (=> b!527622 (and (bvslt (x!49399 lt!242972) #b01111111111111111111111111111110) (or (= (select (arr!16073 a!3235) (index!20408 lt!242972)) (select (arr!16073 a!3235) j!176)) (= (select (arr!16073 a!3235) (index!20408 lt!242972)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16073 a!3235) (index!20408 lt!242972)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527623 () Bool)

(assert (=> b!527623 (= e!307487 (not e!307489))))

(declare-fun res!324045 () Bool)

(assert (=> b!527623 (=> res!324045 e!307489)))

(declare-fun lt!242970 () array!33452)

(declare-fun lt!242975 () (_ BitVec 64))

(declare-fun lt!242971 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33452 (_ BitVec 32)) SeekEntryResult!4547)

(assert (=> b!527623 (= res!324045 (= lt!242972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242971 lt!242975 lt!242970 mask!3524)))))

(assert (=> b!527623 (= lt!242972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242973 (select (arr!16073 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527623 (= lt!242971 (toIndex!0 lt!242975 mask!3524))))

(assert (=> b!527623 (= lt!242975 (select (store (arr!16073 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527623 (= lt!242973 (toIndex!0 (select (arr!16073 a!3235) j!176) mask!3524))))

(assert (=> b!527623 (= lt!242970 (array!33453 (store (arr!16073 a!3235) i!1204 k!2280) (size!16437 a!3235)))))

(declare-fun e!307484 () Bool)

(assert (=> b!527623 e!307484))

(declare-fun res!324039 () Bool)

(assert (=> b!527623 (=> (not res!324039) (not e!307484))))

(assert (=> b!527623 (= res!324039 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242974 () Unit!16654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16654)

(assert (=> b!527623 (= lt!242974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527624 () Bool)

(declare-fun res!324036 () Bool)

(assert (=> b!527624 (=> res!324036 e!307489)))

(assert (=> b!527624 (= res!324036 (or (undefined!5359 lt!242972) (not (is-Intermediate!4547 lt!242972))))))

(declare-fun b!527625 () Bool)

(declare-fun res!324037 () Bool)

(assert (=> b!527625 (=> (not res!324037) (not e!307487))))

(declare-datatypes ((List!10284 0))(
  ( (Nil!10281) (Cons!10280 (h!11214 (_ BitVec 64)) (t!16520 List!10284)) )
))
(declare-fun arrayNoDuplicates!0 (array!33452 (_ BitVec 32) List!10284) Bool)

(assert (=> b!527625 (= res!324037 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10281))))

(declare-fun res!324040 () Bool)

(assert (=> start!47924 (=> (not res!324040) (not e!307485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47924 (= res!324040 (validMask!0 mask!3524))))

(assert (=> start!47924 e!307485))

(assert (=> start!47924 true))

(declare-fun array_inv!11847 (array!33452) Bool)

(assert (=> start!47924 (array_inv!11847 a!3235)))

(declare-fun b!527618 () Bool)

(declare-fun res!324041 () Bool)

(assert (=> b!527618 (=> (not res!324041) (not e!307485))))

(assert (=> b!527618 (= res!324041 (validKeyInArray!0 k!2280))))

(declare-fun b!527626 () Bool)

(assert (=> b!527626 (= e!307484 (= (seekEntryOrOpen!0 (select (arr!16073 a!3235) j!176) a!3235 mask!3524) (Found!4547 j!176)))))

(declare-fun b!527627 () Bool)

(declare-fun Unit!16657 () Unit!16654)

(assert (=> b!527627 (= e!307483 Unit!16657)))

(declare-fun lt!242969 () Unit!16654)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16654)

(assert (=> b!527627 (= lt!242969 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242973 #b00000000000000000000000000000000 (index!20408 lt!242972) (x!49399 lt!242972) mask!3524))))

(declare-fun res!324042 () Bool)

(assert (=> b!527627 (= res!324042 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242973 lt!242975 lt!242970 mask!3524) (Intermediate!4547 false (index!20408 lt!242972) (x!49399 lt!242972))))))

(assert (=> b!527627 (=> (not res!324042) (not e!307488))))

(assert (=> b!527627 e!307488))

(assert (= (and start!47924 res!324040) b!527616))

(assert (= (and b!527616 res!324043) b!527621))

(assert (= (and b!527621 res!324044) b!527618))

(assert (= (and b!527618 res!324041) b!527615))

(assert (= (and b!527615 res!324038) b!527617))

(assert (= (and b!527617 res!324046) b!527620))

(assert (= (and b!527620 res!324047) b!527625))

(assert (= (and b!527625 res!324037) b!527623))

(assert (= (and b!527623 res!324039) b!527626))

(assert (= (and b!527623 (not res!324045)) b!527624))

(assert (= (and b!527624 (not res!324036)) b!527622))

(assert (= (and b!527622 c!62096) b!527627))

(assert (= (and b!527622 (not c!62096)) b!527614))

(assert (= (and b!527627 res!324042) b!527619))

(declare-fun m!508319 () Bool)

(assert (=> b!527620 m!508319))

(declare-fun m!508321 () Bool)

(assert (=> b!527621 m!508321))

(assert (=> b!527621 m!508321))

(declare-fun m!508323 () Bool)

(assert (=> b!527621 m!508323))

(declare-fun m!508325 () Bool)

(assert (=> b!527617 m!508325))

(declare-fun m!508327 () Bool)

(assert (=> b!527627 m!508327))

(declare-fun m!508329 () Bool)

(assert (=> b!527627 m!508329))

(declare-fun m!508331 () Bool)

(assert (=> start!47924 m!508331))

(declare-fun m!508333 () Bool)

(assert (=> start!47924 m!508333))

(declare-fun m!508335 () Bool)

(assert (=> b!527625 m!508335))

(declare-fun m!508337 () Bool)

(assert (=> b!527623 m!508337))

(declare-fun m!508339 () Bool)

(assert (=> b!527623 m!508339))

(declare-fun m!508341 () Bool)

(assert (=> b!527623 m!508341))

(declare-fun m!508343 () Bool)

(assert (=> b!527623 m!508343))

(declare-fun m!508345 () Bool)

(assert (=> b!527623 m!508345))

(assert (=> b!527623 m!508321))

(declare-fun m!508347 () Bool)

(assert (=> b!527623 m!508347))

(assert (=> b!527623 m!508321))

(declare-fun m!508349 () Bool)

(assert (=> b!527623 m!508349))

(assert (=> b!527623 m!508321))

(declare-fun m!508351 () Bool)

(assert (=> b!527623 m!508351))

(declare-fun m!508353 () Bool)

(assert (=> b!527618 m!508353))

(assert (=> b!527626 m!508321))

(assert (=> b!527626 m!508321))

(declare-fun m!508355 () Bool)

(assert (=> b!527626 m!508355))

(declare-fun m!508357 () Bool)

(assert (=> b!527622 m!508357))

(declare-fun m!508359 () Bool)

(assert (=> b!527622 m!508359))

(assert (=> b!527622 m!508321))

(declare-fun m!508361 () Bool)

(assert (=> b!527615 m!508361))

(push 1)

