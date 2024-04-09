; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59584 () Bool)

(assert start!59584)

(declare-fun b!657485 () Bool)

(declare-fun res!426455 () Bool)

(declare-fun e!377703 () Bool)

(assert (=> b!657485 (=> (not res!426455) (not e!377703))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38698 0))(
  ( (array!38699 (arr!18542 (Array (_ BitVec 32) (_ BitVec 64))) (size!18906 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38698)

(assert (=> b!657485 (= res!426455 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18542 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657486 () Bool)

(declare-fun e!377699 () Bool)

(declare-fun e!377709 () Bool)

(assert (=> b!657486 (= e!377699 (not e!377709))))

(declare-fun res!426461 () Bool)

(assert (=> b!657486 (=> res!426461 e!377709)))

(declare-datatypes ((SeekEntryResult!6989 0))(
  ( (MissingZero!6989 (index!30320 (_ BitVec 32))) (Found!6989 (index!30321 (_ BitVec 32))) (Intermediate!6989 (undefined!7801 Bool) (index!30322 (_ BitVec 32)) (x!59137 (_ BitVec 32))) (Undefined!6989) (MissingVacant!6989 (index!30323 (_ BitVec 32))) )
))
(declare-fun lt!307221 () SeekEntryResult!6989)

(assert (=> b!657486 (= res!426461 (not (= lt!307221 (MissingVacant!6989 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!22734 0))(
  ( (Unit!22735) )
))
(declare-fun lt!307223 () Unit!22734)

(declare-fun e!377706 () Unit!22734)

(assert (=> b!657486 (= lt!307223 e!377706)))

(declare-fun c!75885 () Bool)

(assert (=> b!657486 (= c!75885 (= lt!307221 (Found!6989 index!984)))))

(declare-fun lt!307217 () Unit!22734)

(declare-fun e!377700 () Unit!22734)

(assert (=> b!657486 (= lt!307217 e!377700)))

(declare-fun c!75886 () Bool)

(assert (=> b!657486 (= c!75886 (= lt!307221 Undefined!6989))))

(declare-fun lt!307220 () (_ BitVec 64))

(declare-fun lt!307216 () array!38698)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38698 (_ BitVec 32)) SeekEntryResult!6989)

(assert (=> b!657486 (= lt!307221 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307220 lt!307216 mask!3053))))

(declare-fun e!377701 () Bool)

(assert (=> b!657486 e!377701))

(declare-fun res!426467 () Bool)

(assert (=> b!657486 (=> (not res!426467) (not e!377701))))

(declare-fun lt!307227 () (_ BitVec 32))

(declare-fun lt!307226 () SeekEntryResult!6989)

(assert (=> b!657486 (= res!426467 (= lt!307226 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307227 vacantSpotIndex!68 lt!307220 lt!307216 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!657486 (= lt!307226 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307227 vacantSpotIndex!68 (select (arr!18542 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!657486 (= lt!307220 (select (store (arr!18542 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307225 () Unit!22734)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38698 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22734)

(assert (=> b!657486 (= lt!307225 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307227 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657486 (= lt!307227 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657487 () Bool)

(declare-fun res!426456 () Bool)

(assert (=> b!657487 (= res!426456 (bvsge j!136 index!984))))

(declare-fun e!377707 () Bool)

(assert (=> b!657487 (=> res!426456 e!377707)))

(declare-fun e!377704 () Bool)

(assert (=> b!657487 (= e!377704 e!377707)))

(declare-fun b!657488 () Bool)

(assert (=> b!657488 false))

(declare-fun lt!307209 () Unit!22734)

(declare-datatypes ((List!12636 0))(
  ( (Nil!12633) (Cons!12632 (h!13677 (_ BitVec 64)) (t!18872 List!12636)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38698 (_ BitVec 64) (_ BitVec 32) List!12636) Unit!22734)

(assert (=> b!657488 (= lt!307209 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307216 (select (arr!18542 a!2986) j!136) index!984 Nil!12633))))

(declare-fun arrayNoDuplicates!0 (array!38698 (_ BitVec 32) List!12636) Bool)

(assert (=> b!657488 (arrayNoDuplicates!0 lt!307216 index!984 Nil!12633)))

(declare-fun lt!307222 () Unit!22734)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38698 (_ BitVec 32) (_ BitVec 32)) Unit!22734)

(assert (=> b!657488 (= lt!307222 (lemmaNoDuplicateFromThenFromBigger!0 lt!307216 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657488 (arrayNoDuplicates!0 lt!307216 #b00000000000000000000000000000000 Nil!12633)))

(declare-fun lt!307210 () Unit!22734)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38698 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12636) Unit!22734)

(assert (=> b!657488 (= lt!307210 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12633))))

(declare-fun arrayContainsKey!0 (array!38698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657488 (arrayContainsKey!0 lt!307216 (select (arr!18542 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307224 () Unit!22734)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38698 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22734)

(assert (=> b!657488 (= lt!307224 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307216 (select (arr!18542 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377702 () Bool)

(assert (=> b!657488 e!377702))

(declare-fun res!426466 () Bool)

(assert (=> b!657488 (=> (not res!426466) (not e!377702))))

(assert (=> b!657488 (= res!426466 (arrayContainsKey!0 lt!307216 (select (arr!18542 a!2986) j!136) j!136))))

(declare-fun e!377713 () Unit!22734)

(declare-fun Unit!22736 () Unit!22734)

(assert (=> b!657488 (= e!377713 Unit!22736)))

(declare-fun b!657489 () Bool)

(declare-fun res!426460 () Bool)

(declare-fun e!377712 () Bool)

(assert (=> b!657489 (=> (not res!426460) (not e!377712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657489 (= res!426460 (validKeyInArray!0 (select (arr!18542 a!2986) j!136)))))

(declare-fun b!657490 () Bool)

(declare-fun Unit!22737 () Unit!22734)

(assert (=> b!657490 (= e!377700 Unit!22737)))

(declare-fun b!657491 () Bool)

(assert (=> b!657491 false))

(declare-fun lt!307211 () Unit!22734)

(assert (=> b!657491 (= lt!307211 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307216 (select (arr!18542 a!2986) j!136) j!136 Nil!12633))))

(assert (=> b!657491 (arrayNoDuplicates!0 lt!307216 j!136 Nil!12633)))

(declare-fun lt!307212 () Unit!22734)

(assert (=> b!657491 (= lt!307212 (lemmaNoDuplicateFromThenFromBigger!0 lt!307216 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657491 (arrayNoDuplicates!0 lt!307216 #b00000000000000000000000000000000 Nil!12633)))

(declare-fun lt!307214 () Unit!22734)

(assert (=> b!657491 (= lt!307214 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12633))))

(assert (=> b!657491 (arrayContainsKey!0 lt!307216 (select (arr!18542 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307215 () Unit!22734)

(assert (=> b!657491 (= lt!307215 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307216 (select (arr!18542 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377710 () Unit!22734)

(declare-fun Unit!22738 () Unit!22734)

(assert (=> b!657491 (= e!377710 Unit!22738)))

(declare-fun b!657492 () Bool)

(declare-fun lt!307213 () SeekEntryResult!6989)

(assert (=> b!657492 (= e!377701 (= lt!307213 lt!307226))))

(declare-fun b!657493 () Bool)

(declare-fun res!426453 () Bool)

(assert (=> b!657493 (=> (not res!426453) (not e!377712))))

(assert (=> b!657493 (= res!426453 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657494 () Bool)

(declare-fun res!426464 () Bool)

(assert (=> b!657494 (= res!426464 (arrayContainsKey!0 lt!307216 (select (arr!18542 a!2986) j!136) j!136))))

(declare-fun e!377705 () Bool)

(assert (=> b!657494 (=> (not res!426464) (not e!377705))))

(assert (=> b!657494 (= e!377707 e!377705)))

(declare-fun b!657495 () Bool)

(declare-fun Unit!22739 () Unit!22734)

(assert (=> b!657495 (= e!377706 Unit!22739)))

(declare-fun res!426452 () Bool)

(assert (=> b!657495 (= res!426452 (= (select (store (arr!18542 a!2986) i!1108 k!1786) index!984) (select (arr!18542 a!2986) j!136)))))

(assert (=> b!657495 (=> (not res!426452) (not e!377704))))

(assert (=> b!657495 e!377704))

(declare-fun c!75887 () Bool)

(assert (=> b!657495 (= c!75887 (bvslt j!136 index!984))))

(declare-fun lt!307218 () Unit!22734)

(assert (=> b!657495 (= lt!307218 e!377710)))

(declare-fun c!75884 () Bool)

(assert (=> b!657495 (= c!75884 (bvslt index!984 j!136))))

(declare-fun lt!307219 () Unit!22734)

(assert (=> b!657495 (= lt!307219 e!377713)))

(assert (=> b!657495 false))

(declare-fun b!657496 () Bool)

(declare-fun res!426458 () Bool)

(assert (=> b!657496 (=> (not res!426458) (not e!377703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38698 (_ BitVec 32)) Bool)

(assert (=> b!657496 (= res!426458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657497 () Bool)

(assert (=> b!657497 (= e!377712 e!377703)))

(declare-fun res!426451 () Bool)

(assert (=> b!657497 (=> (not res!426451) (not e!377703))))

(declare-fun lt!307208 () SeekEntryResult!6989)

(assert (=> b!657497 (= res!426451 (or (= lt!307208 (MissingZero!6989 i!1108)) (= lt!307208 (MissingVacant!6989 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38698 (_ BitVec 32)) SeekEntryResult!6989)

(assert (=> b!657497 (= lt!307208 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657499 () Bool)

(assert (=> b!657499 (= e!377705 (arrayContainsKey!0 lt!307216 (select (arr!18542 a!2986) j!136) index!984))))

(declare-fun b!657500 () Bool)

(assert (=> b!657500 (= e!377702 (arrayContainsKey!0 lt!307216 (select (arr!18542 a!2986) j!136) index!984))))

(declare-fun b!657501 () Bool)

(declare-fun res!426462 () Bool)

(assert (=> b!657501 (=> (not res!426462) (not e!377712))))

(assert (=> b!657501 (= res!426462 (validKeyInArray!0 k!1786))))

(declare-fun b!657502 () Bool)

(declare-fun res!426465 () Bool)

(assert (=> b!657502 (=> (not res!426465) (not e!377703))))

(assert (=> b!657502 (= res!426465 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12633))))

(declare-fun b!657503 () Bool)

(declare-fun Unit!22740 () Unit!22734)

(assert (=> b!657503 (= e!377706 Unit!22740)))

(declare-fun b!657504 () Bool)

(declare-fun e!377708 () Bool)

(assert (=> b!657504 (= e!377708 e!377699)))

(declare-fun res!426454 () Bool)

(assert (=> b!657504 (=> (not res!426454) (not e!377699))))

(assert (=> b!657504 (= res!426454 (and (= lt!307213 (Found!6989 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18542 a!2986) index!984) (select (arr!18542 a!2986) j!136))) (not (= (select (arr!18542 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657504 (= lt!307213 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18542 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657505 () Bool)

(assert (=> b!657505 (= e!377709 true)))

(assert (=> b!657505 (= (select (store (arr!18542 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657506 () Bool)

(declare-fun res!426459 () Bool)

(assert (=> b!657506 (=> (not res!426459) (not e!377712))))

(assert (=> b!657506 (= res!426459 (and (= (size!18906 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18906 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18906 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657507 () Bool)

(declare-fun Unit!22741 () Unit!22734)

(assert (=> b!657507 (= e!377710 Unit!22741)))

(declare-fun b!657508 () Bool)

(declare-fun Unit!22742 () Unit!22734)

(assert (=> b!657508 (= e!377713 Unit!22742)))

(declare-fun b!657509 () Bool)

(declare-fun Unit!22743 () Unit!22734)

(assert (=> b!657509 (= e!377700 Unit!22743)))

(assert (=> b!657509 false))

(declare-fun b!657498 () Bool)

(assert (=> b!657498 (= e!377703 e!377708)))

(declare-fun res!426463 () Bool)

(assert (=> b!657498 (=> (not res!426463) (not e!377708))))

(assert (=> b!657498 (= res!426463 (= (select (store (arr!18542 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657498 (= lt!307216 (array!38699 (store (arr!18542 a!2986) i!1108 k!1786) (size!18906 a!2986)))))

(declare-fun res!426457 () Bool)

(assert (=> start!59584 (=> (not res!426457) (not e!377712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59584 (= res!426457 (validMask!0 mask!3053))))

(assert (=> start!59584 e!377712))

(assert (=> start!59584 true))

(declare-fun array_inv!14316 (array!38698) Bool)

(assert (=> start!59584 (array_inv!14316 a!2986)))

(assert (= (and start!59584 res!426457) b!657506))

(assert (= (and b!657506 res!426459) b!657489))

(assert (= (and b!657489 res!426460) b!657501))

(assert (= (and b!657501 res!426462) b!657493))

(assert (= (and b!657493 res!426453) b!657497))

(assert (= (and b!657497 res!426451) b!657496))

(assert (= (and b!657496 res!426458) b!657502))

(assert (= (and b!657502 res!426465) b!657485))

(assert (= (and b!657485 res!426455) b!657498))

(assert (= (and b!657498 res!426463) b!657504))

(assert (= (and b!657504 res!426454) b!657486))

(assert (= (and b!657486 res!426467) b!657492))

(assert (= (and b!657486 c!75886) b!657509))

(assert (= (and b!657486 (not c!75886)) b!657490))

(assert (= (and b!657486 c!75885) b!657495))

(assert (= (and b!657486 (not c!75885)) b!657503))

(assert (= (and b!657495 res!426452) b!657487))

(assert (= (and b!657487 (not res!426456)) b!657494))

(assert (= (and b!657494 res!426464) b!657499))

(assert (= (and b!657495 c!75887) b!657491))

(assert (= (and b!657495 (not c!75887)) b!657507))

(assert (= (and b!657495 c!75884) b!657488))

(assert (= (and b!657495 (not c!75884)) b!657508))

(assert (= (and b!657488 res!426466) b!657500))

(assert (= (and b!657486 (not res!426461)) b!657505))

(declare-fun m!630581 () Bool)

(assert (=> b!657504 m!630581))

(declare-fun m!630583 () Bool)

(assert (=> b!657504 m!630583))

(assert (=> b!657504 m!630583))

(declare-fun m!630585 () Bool)

(assert (=> b!657504 m!630585))

(declare-fun m!630587 () Bool)

(assert (=> b!657495 m!630587))

(declare-fun m!630589 () Bool)

(assert (=> b!657495 m!630589))

(assert (=> b!657495 m!630583))

(declare-fun m!630591 () Bool)

(assert (=> b!657488 m!630591))

(assert (=> b!657488 m!630583))

(declare-fun m!630593 () Bool)

(assert (=> b!657488 m!630593))

(assert (=> b!657488 m!630583))

(declare-fun m!630595 () Bool)

(assert (=> b!657488 m!630595))

(declare-fun m!630597 () Bool)

(assert (=> b!657488 m!630597))

(declare-fun m!630599 () Bool)

(assert (=> b!657488 m!630599))

(assert (=> b!657488 m!630583))

(declare-fun m!630601 () Bool)

(assert (=> b!657488 m!630601))

(declare-fun m!630603 () Bool)

(assert (=> b!657488 m!630603))

(assert (=> b!657488 m!630583))

(assert (=> b!657488 m!630583))

(declare-fun m!630605 () Bool)

(assert (=> b!657488 m!630605))

(assert (=> b!657500 m!630583))

(assert (=> b!657500 m!630583))

(declare-fun m!630607 () Bool)

(assert (=> b!657500 m!630607))

(declare-fun m!630609 () Bool)

(assert (=> b!657502 m!630609))

(assert (=> b!657494 m!630583))

(assert (=> b!657494 m!630583))

(assert (=> b!657494 m!630605))

(assert (=> b!657489 m!630583))

(assert (=> b!657489 m!630583))

(declare-fun m!630611 () Bool)

(assert (=> b!657489 m!630611))

(assert (=> b!657498 m!630587))

(declare-fun m!630613 () Bool)

(assert (=> b!657498 m!630613))

(assert (=> b!657491 m!630591))

(assert (=> b!657491 m!630583))

(declare-fun m!630615 () Bool)

(assert (=> b!657491 m!630615))

(assert (=> b!657491 m!630583))

(declare-fun m!630617 () Bool)

(assert (=> b!657491 m!630617))

(assert (=> b!657491 m!630583))

(assert (=> b!657491 m!630583))

(declare-fun m!630619 () Bool)

(assert (=> b!657491 m!630619))

(declare-fun m!630621 () Bool)

(assert (=> b!657491 m!630621))

(declare-fun m!630623 () Bool)

(assert (=> b!657491 m!630623))

(assert (=> b!657491 m!630603))

(declare-fun m!630625 () Bool)

(assert (=> b!657493 m!630625))

(declare-fun m!630627 () Bool)

(assert (=> b!657497 m!630627))

(declare-fun m!630629 () Bool)

(assert (=> b!657485 m!630629))

(declare-fun m!630631 () Bool)

(assert (=> start!59584 m!630631))

(declare-fun m!630633 () Bool)

(assert (=> start!59584 m!630633))

(assert (=> b!657499 m!630583))

(assert (=> b!657499 m!630583))

(assert (=> b!657499 m!630607))

(declare-fun m!630635 () Bool)

(assert (=> b!657486 m!630635))

(declare-fun m!630637 () Bool)

(assert (=> b!657486 m!630637))

(assert (=> b!657486 m!630583))

(assert (=> b!657486 m!630587))

(assert (=> b!657486 m!630583))

(declare-fun m!630639 () Bool)

(assert (=> b!657486 m!630639))

(declare-fun m!630641 () Bool)

(assert (=> b!657486 m!630641))

(declare-fun m!630643 () Bool)

(assert (=> b!657486 m!630643))

(declare-fun m!630645 () Bool)

(assert (=> b!657486 m!630645))

(declare-fun m!630647 () Bool)

(assert (=> b!657501 m!630647))

(assert (=> b!657505 m!630587))

(assert (=> b!657505 m!630589))

(declare-fun m!630649 () Bool)

(assert (=> b!657496 m!630649))

(push 1)

(assert (not b!657488))

(assert (not b!657504))

(assert (not b!657499))

(assert (not b!657493))

(assert (not b!657491))

(assert (not b!657496))

(assert (not b!657500))

(assert (not b!657502))

(assert (not start!59584))

(assert (not b!657486))

(assert (not b!657501))

(assert (not b!657497))

(assert (not b!657494))

(assert (not b!657489))

(check-sat)

(pop 1)

