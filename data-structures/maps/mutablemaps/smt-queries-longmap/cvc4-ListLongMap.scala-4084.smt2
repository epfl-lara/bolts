; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56014 () Bool)

(assert start!56014)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!352827 () Bool)

(declare-fun b!615342 () Bool)

(declare-datatypes ((array!37447 0))(
  ( (array!37448 (arr!17966 (Array (_ BitVec 32) (_ BitVec 64))) (size!18330 (_ BitVec 32))) )
))
(declare-fun lt!282746 () array!37447)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37447)

(declare-fun arrayContainsKey!0 (array!37447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615342 (= e!352827 (arrayContainsKey!0 lt!282746 (select (arr!17966 a!2986) j!136) index!984))))

(declare-fun b!615343 () Bool)

(declare-fun res!396461 () Bool)

(declare-fun e!352818 () Bool)

(assert (=> b!615343 (=> (not res!396461) (not e!352818))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!615343 (= res!396461 (and (= (size!18330 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18330 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18330 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615344 () Bool)

(declare-fun res!396458 () Bool)

(declare-fun e!352822 () Bool)

(assert (=> b!615344 (=> (not res!396458) (not e!352822))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615344 (= res!396458 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17966 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615345 () Bool)

(declare-datatypes ((Unit!19950 0))(
  ( (Unit!19951) )
))
(declare-fun e!352824 () Unit!19950)

(declare-fun Unit!19952 () Unit!19950)

(assert (=> b!615345 (= e!352824 Unit!19952)))

(declare-fun res!396465 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!615345 (= res!396465 (= (select (store (arr!17966 a!2986) i!1108 k!1786) index!984) (select (arr!17966 a!2986) j!136)))))

(declare-fun e!352816 () Bool)

(assert (=> b!615345 (=> (not res!396465) (not e!352816))))

(assert (=> b!615345 e!352816))

(declare-fun c!69814 () Bool)

(assert (=> b!615345 (= c!69814 (bvslt j!136 index!984))))

(declare-fun lt!282752 () Unit!19950)

(declare-fun e!352825 () Unit!19950)

(assert (=> b!615345 (= lt!282752 e!352825)))

(declare-fun c!69813 () Bool)

(assert (=> b!615345 (= c!69813 (bvslt index!984 j!136))))

(declare-fun lt!282750 () Unit!19950)

(declare-fun e!352819 () Unit!19950)

(assert (=> b!615345 (= lt!282750 e!352819)))

(assert (=> b!615345 false))

(declare-fun b!615346 () Bool)

(declare-fun e!352821 () Bool)

(declare-datatypes ((SeekEntryResult!6413 0))(
  ( (MissingZero!6413 (index!27935 (_ BitVec 32))) (Found!6413 (index!27936 (_ BitVec 32))) (Intermediate!6413 (undefined!7225 Bool) (index!27937 (_ BitVec 32)) (x!56758 (_ BitVec 32))) (Undefined!6413) (MissingVacant!6413 (index!27938 (_ BitVec 32))) )
))
(declare-fun lt!282745 () SeekEntryResult!6413)

(declare-fun lt!282742 () SeekEntryResult!6413)

(assert (=> b!615346 (= e!352821 (= lt!282745 lt!282742))))

(declare-fun b!615347 () Bool)

(declare-fun e!352828 () Bool)

(declare-fun e!352817 () Bool)

(assert (=> b!615347 (= e!352828 e!352817)))

(declare-fun res!396453 () Bool)

(assert (=> b!615347 (=> (not res!396453) (not e!352817))))

(assert (=> b!615347 (= res!396453 (and (= lt!282745 (Found!6413 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17966 a!2986) index!984) (select (arr!17966 a!2986) j!136))) (not (= (select (arr!17966 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37447 (_ BitVec 32)) SeekEntryResult!6413)

(assert (=> b!615347 (= lt!282745 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17966 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!396463 () Bool)

(assert (=> start!56014 (=> (not res!396463) (not e!352818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56014 (= res!396463 (validMask!0 mask!3053))))

(assert (=> start!56014 e!352818))

(assert (=> start!56014 true))

(declare-fun array_inv!13740 (array!37447) Bool)

(assert (=> start!56014 (array_inv!13740 a!2986)))

(declare-fun b!615348 () Bool)

(assert (=> b!615348 (= e!352822 e!352828)))

(declare-fun res!396464 () Bool)

(assert (=> b!615348 (=> (not res!396464) (not e!352828))))

(assert (=> b!615348 (= res!396464 (= (select (store (arr!17966 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615348 (= lt!282746 (array!37448 (store (arr!17966 a!2986) i!1108 k!1786) (size!18330 a!2986)))))

(declare-fun b!615349 () Bool)

(declare-fun res!396454 () Bool)

(assert (=> b!615349 (=> (not res!396454) (not e!352818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615349 (= res!396454 (validKeyInArray!0 (select (arr!17966 a!2986) j!136)))))

(declare-fun b!615350 () Bool)

(declare-fun res!396460 () Bool)

(assert (=> b!615350 (= res!396460 (bvsge j!136 index!984))))

(declare-fun e!352820 () Bool)

(assert (=> b!615350 (=> res!396460 e!352820)))

(assert (=> b!615350 (= e!352816 e!352820)))

(declare-fun b!615351 () Bool)

(declare-fun Unit!19953 () Unit!19950)

(assert (=> b!615351 (= e!352825 Unit!19953)))

(declare-fun b!615352 () Bool)

(declare-fun res!396457 () Bool)

(assert (=> b!615352 (=> (not res!396457) (not e!352818))))

(assert (=> b!615352 (= res!396457 (validKeyInArray!0 k!1786))))

(declare-fun b!615353 () Bool)

(declare-fun res!396466 () Bool)

(assert (=> b!615353 (=> (not res!396466) (not e!352818))))

(assert (=> b!615353 (= res!396466 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615354 () Bool)

(assert (=> b!615354 (= e!352818 e!352822)))

(declare-fun res!396456 () Bool)

(assert (=> b!615354 (=> (not res!396456) (not e!352822))))

(declare-fun lt!282738 () SeekEntryResult!6413)

(assert (=> b!615354 (= res!396456 (or (= lt!282738 (MissingZero!6413 i!1108)) (= lt!282738 (MissingVacant!6413 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37447 (_ BitVec 32)) SeekEntryResult!6413)

(assert (=> b!615354 (= lt!282738 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615355 () Bool)

(declare-fun res!396467 () Bool)

(assert (=> b!615355 (=> (not res!396467) (not e!352822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37447 (_ BitVec 32)) Bool)

(assert (=> b!615355 (= res!396467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615356 () Bool)

(declare-fun Unit!19954 () Unit!19950)

(assert (=> b!615356 (= e!352819 Unit!19954)))

(declare-fun b!615357 () Bool)

(declare-fun e!352826 () Unit!19950)

(declare-fun Unit!19955 () Unit!19950)

(assert (=> b!615357 (= e!352826 Unit!19955)))

(assert (=> b!615357 false))

(declare-fun b!615358 () Bool)

(declare-fun Unit!19956 () Unit!19950)

(assert (=> b!615358 (= e!352826 Unit!19956)))

(declare-fun b!615359 () Bool)

(assert (=> b!615359 (= e!352817 (not true))))

(declare-fun lt!282739 () Unit!19950)

(assert (=> b!615359 (= lt!282739 e!352824)))

(declare-fun c!69812 () Bool)

(declare-fun lt!282748 () SeekEntryResult!6413)

(assert (=> b!615359 (= c!69812 (= lt!282748 (Found!6413 index!984)))))

(declare-fun lt!282744 () Unit!19950)

(assert (=> b!615359 (= lt!282744 e!352826)))

(declare-fun c!69815 () Bool)

(assert (=> b!615359 (= c!69815 (= lt!282748 Undefined!6413))))

(declare-fun lt!282747 () (_ BitVec 64))

(assert (=> b!615359 (= lt!282748 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282747 lt!282746 mask!3053))))

(assert (=> b!615359 e!352821))

(declare-fun res!396455 () Bool)

(assert (=> b!615359 (=> (not res!396455) (not e!352821))))

(declare-fun lt!282740 () (_ BitVec 32))

(assert (=> b!615359 (= res!396455 (= lt!282742 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282740 vacantSpotIndex!68 lt!282747 lt!282746 mask!3053)))))

(assert (=> b!615359 (= lt!282742 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282740 vacantSpotIndex!68 (select (arr!17966 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615359 (= lt!282747 (select (store (arr!17966 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282754 () Unit!19950)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37447 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19950)

(assert (=> b!615359 (= lt!282754 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282740 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615359 (= lt!282740 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615360 () Bool)

(declare-fun res!396462 () Bool)

(assert (=> b!615360 (=> (not res!396462) (not e!352822))))

(declare-datatypes ((List!12060 0))(
  ( (Nil!12057) (Cons!12056 (h!13101 (_ BitVec 64)) (t!18296 List!12060)) )
))
(declare-fun arrayNoDuplicates!0 (array!37447 (_ BitVec 32) List!12060) Bool)

(assert (=> b!615360 (= res!396462 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12057))))

(declare-fun b!615361 () Bool)

(declare-fun e!352823 () Bool)

(assert (=> b!615361 (= e!352823 (arrayContainsKey!0 lt!282746 (select (arr!17966 a!2986) j!136) index!984))))

(declare-fun b!615362 () Bool)

(assert (=> b!615362 false))

(declare-fun lt!282741 () Unit!19950)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37447 (_ BitVec 64) (_ BitVec 32) List!12060) Unit!19950)

(assert (=> b!615362 (= lt!282741 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282746 (select (arr!17966 a!2986) j!136) j!136 Nil!12057))))

(assert (=> b!615362 (arrayNoDuplicates!0 lt!282746 j!136 Nil!12057)))

(declare-fun lt!282751 () Unit!19950)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37447 (_ BitVec 32) (_ BitVec 32)) Unit!19950)

(assert (=> b!615362 (= lt!282751 (lemmaNoDuplicateFromThenFromBigger!0 lt!282746 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615362 (arrayNoDuplicates!0 lt!282746 #b00000000000000000000000000000000 Nil!12057)))

(declare-fun lt!282753 () Unit!19950)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37447 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12060) Unit!19950)

(assert (=> b!615362 (= lt!282753 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12057))))

(assert (=> b!615362 (arrayContainsKey!0 lt!282746 (select (arr!17966 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282756 () Unit!19950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37447 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19950)

(assert (=> b!615362 (= lt!282756 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282746 (select (arr!17966 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19957 () Unit!19950)

(assert (=> b!615362 (= e!352825 Unit!19957)))

(declare-fun b!615363 () Bool)

(declare-fun res!396459 () Bool)

(assert (=> b!615363 (= res!396459 (arrayContainsKey!0 lt!282746 (select (arr!17966 a!2986) j!136) j!136))))

(assert (=> b!615363 (=> (not res!396459) (not e!352827))))

(assert (=> b!615363 (= e!352820 e!352827)))

(declare-fun b!615364 () Bool)

(declare-fun Unit!19958 () Unit!19950)

(assert (=> b!615364 (= e!352824 Unit!19958)))

(declare-fun b!615365 () Bool)

(assert (=> b!615365 false))

(declare-fun lt!282743 () Unit!19950)

(assert (=> b!615365 (= lt!282743 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282746 (select (arr!17966 a!2986) j!136) index!984 Nil!12057))))

(assert (=> b!615365 (arrayNoDuplicates!0 lt!282746 index!984 Nil!12057)))

(declare-fun lt!282755 () Unit!19950)

(assert (=> b!615365 (= lt!282755 (lemmaNoDuplicateFromThenFromBigger!0 lt!282746 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615365 (arrayNoDuplicates!0 lt!282746 #b00000000000000000000000000000000 Nil!12057)))

(declare-fun lt!282737 () Unit!19950)

(assert (=> b!615365 (= lt!282737 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12057))))

(assert (=> b!615365 (arrayContainsKey!0 lt!282746 (select (arr!17966 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282749 () Unit!19950)

(assert (=> b!615365 (= lt!282749 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282746 (select (arr!17966 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615365 e!352823))

(declare-fun res!396452 () Bool)

(assert (=> b!615365 (=> (not res!396452) (not e!352823))))

(assert (=> b!615365 (= res!396452 (arrayContainsKey!0 lt!282746 (select (arr!17966 a!2986) j!136) j!136))))

(declare-fun Unit!19959 () Unit!19950)

(assert (=> b!615365 (= e!352819 Unit!19959)))

(assert (= (and start!56014 res!396463) b!615343))

(assert (= (and b!615343 res!396461) b!615349))

(assert (= (and b!615349 res!396454) b!615352))

(assert (= (and b!615352 res!396457) b!615353))

(assert (= (and b!615353 res!396466) b!615354))

(assert (= (and b!615354 res!396456) b!615355))

(assert (= (and b!615355 res!396467) b!615360))

(assert (= (and b!615360 res!396462) b!615344))

(assert (= (and b!615344 res!396458) b!615348))

(assert (= (and b!615348 res!396464) b!615347))

(assert (= (and b!615347 res!396453) b!615359))

(assert (= (and b!615359 res!396455) b!615346))

(assert (= (and b!615359 c!69815) b!615357))

(assert (= (and b!615359 (not c!69815)) b!615358))

(assert (= (and b!615359 c!69812) b!615345))

(assert (= (and b!615359 (not c!69812)) b!615364))

(assert (= (and b!615345 res!396465) b!615350))

(assert (= (and b!615350 (not res!396460)) b!615363))

(assert (= (and b!615363 res!396459) b!615342))

(assert (= (and b!615345 c!69814) b!615362))

(assert (= (and b!615345 (not c!69814)) b!615351))

(assert (= (and b!615345 c!69813) b!615365))

(assert (= (and b!615345 (not c!69813)) b!615356))

(assert (= (and b!615365 res!396452) b!615361))

(declare-fun m!591593 () Bool)

(assert (=> b!615363 m!591593))

(assert (=> b!615363 m!591593))

(declare-fun m!591595 () Bool)

(assert (=> b!615363 m!591595))

(declare-fun m!591597 () Bool)

(assert (=> b!615345 m!591597))

(declare-fun m!591599 () Bool)

(assert (=> b!615345 m!591599))

(assert (=> b!615345 m!591593))

(assert (=> b!615342 m!591593))

(assert (=> b!615342 m!591593))

(declare-fun m!591601 () Bool)

(assert (=> b!615342 m!591601))

(declare-fun m!591603 () Bool)

(assert (=> start!56014 m!591603))

(declare-fun m!591605 () Bool)

(assert (=> start!56014 m!591605))

(declare-fun m!591607 () Bool)

(assert (=> b!615360 m!591607))

(declare-fun m!591609 () Bool)

(assert (=> b!615353 m!591609))

(declare-fun m!591611 () Bool)

(assert (=> b!615347 m!591611))

(assert (=> b!615347 m!591593))

(assert (=> b!615347 m!591593))

(declare-fun m!591613 () Bool)

(assert (=> b!615347 m!591613))

(declare-fun m!591615 () Bool)

(assert (=> b!615355 m!591615))

(declare-fun m!591617 () Bool)

(assert (=> b!615352 m!591617))

(declare-fun m!591619 () Bool)

(assert (=> b!615354 m!591619))

(assert (=> b!615348 m!591597))

(declare-fun m!591621 () Bool)

(assert (=> b!615348 m!591621))

(assert (=> b!615362 m!591593))

(declare-fun m!591623 () Bool)

(assert (=> b!615362 m!591623))

(assert (=> b!615362 m!591593))

(declare-fun m!591625 () Bool)

(assert (=> b!615362 m!591625))

(assert (=> b!615362 m!591593))

(declare-fun m!591627 () Bool)

(assert (=> b!615362 m!591627))

(declare-fun m!591629 () Bool)

(assert (=> b!615362 m!591629))

(declare-fun m!591631 () Bool)

(assert (=> b!615362 m!591631))

(declare-fun m!591633 () Bool)

(assert (=> b!615362 m!591633))

(declare-fun m!591635 () Bool)

(assert (=> b!615362 m!591635))

(assert (=> b!615362 m!591593))

(assert (=> b!615361 m!591593))

(assert (=> b!615361 m!591593))

(assert (=> b!615361 m!591601))

(declare-fun m!591637 () Bool)

(assert (=> b!615359 m!591637))

(declare-fun m!591639 () Bool)

(assert (=> b!615359 m!591639))

(assert (=> b!615359 m!591593))

(assert (=> b!615359 m!591597))

(declare-fun m!591641 () Bool)

(assert (=> b!615359 m!591641))

(assert (=> b!615359 m!591593))

(declare-fun m!591643 () Bool)

(assert (=> b!615359 m!591643))

(declare-fun m!591645 () Bool)

(assert (=> b!615359 m!591645))

(declare-fun m!591647 () Bool)

(assert (=> b!615359 m!591647))

(assert (=> b!615365 m!591593))

(assert (=> b!615365 m!591593))

(assert (=> b!615365 m!591595))

(assert (=> b!615365 m!591593))

(declare-fun m!591649 () Bool)

(assert (=> b!615365 m!591649))

(declare-fun m!591651 () Bool)

(assert (=> b!615365 m!591651))

(assert (=> b!615365 m!591593))

(declare-fun m!591653 () Bool)

(assert (=> b!615365 m!591653))

(assert (=> b!615365 m!591631))

(assert (=> b!615365 m!591633))

(assert (=> b!615365 m!591593))

(declare-fun m!591655 () Bool)

(assert (=> b!615365 m!591655))

(declare-fun m!591657 () Bool)

(assert (=> b!615365 m!591657))

(declare-fun m!591659 () Bool)

(assert (=> b!615344 m!591659))

(assert (=> b!615349 m!591593))

(assert (=> b!615349 m!591593))

(declare-fun m!591661 () Bool)

(assert (=> b!615349 m!591661))

(push 1)

