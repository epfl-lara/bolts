; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58342 () Bool)

(assert start!58342)

(declare-fun b!643786 () Bool)

(declare-fun e!368826 () Bool)

(declare-fun e!368827 () Bool)

(assert (=> b!643786 (= e!368826 e!368827)))

(declare-fun res!417105 () Bool)

(assert (=> b!643786 (=> res!417105 e!368827)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!298363 () (_ BitVec 64))

(declare-fun lt!298358 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38395 0))(
  ( (array!38396 (arr!18407 (Array (_ BitVec 32) (_ BitVec 64))) (size!18771 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38395)

(assert (=> b!643786 (= res!417105 (or (not (= (select (arr!18407 a!2986) j!136) lt!298363)) (not (= (select (arr!18407 a!2986) j!136) lt!298358)) (bvsge j!136 index!984)))))

(declare-fun e!368832 () Bool)

(declare-fun b!643787 () Bool)

(declare-fun lt!298359 () array!38395)

(declare-fun arrayContainsKey!0 (array!38395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643787 (= e!368832 (arrayContainsKey!0 lt!298359 (select (arr!18407 a!2986) j!136) index!984))))

(declare-fun b!643788 () Bool)

(declare-fun e!368825 () Bool)

(assert (=> b!643788 (= e!368827 e!368825)))

(declare-fun res!417115 () Bool)

(assert (=> b!643788 (=> (not res!417115) (not e!368825))))

(assert (=> b!643788 (= res!417115 (arrayContainsKey!0 lt!298359 (select (arr!18407 a!2986) j!136) j!136))))

(declare-fun b!643789 () Bool)

(declare-fun e!368833 () Bool)

(declare-fun e!368829 () Bool)

(assert (=> b!643789 (= e!368833 e!368829)))

(declare-fun res!417116 () Bool)

(assert (=> b!643789 (=> (not res!417116) (not e!368829))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!643789 (= res!417116 (= (select (store (arr!18407 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643789 (= lt!298359 (array!38396 (store (arr!18407 a!2986) i!1108 k!1786) (size!18771 a!2986)))))

(declare-fun b!643790 () Bool)

(declare-datatypes ((Unit!21796 0))(
  ( (Unit!21797) )
))
(declare-fun e!368823 () Unit!21796)

(declare-fun Unit!21798 () Unit!21796)

(assert (=> b!643790 (= e!368823 Unit!21798)))

(assert (=> b!643790 false))

(declare-fun res!417121 () Bool)

(declare-fun e!368836 () Bool)

(assert (=> start!58342 (=> (not res!417121) (not e!368836))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58342 (= res!417121 (validMask!0 mask!3053))))

(assert (=> start!58342 e!368836))

(assert (=> start!58342 true))

(declare-fun array_inv!14181 (array!38395) Bool)

(assert (=> start!58342 (array_inv!14181 a!2986)))

(declare-fun b!643791 () Bool)

(declare-fun e!368831 () Bool)

(declare-fun e!368822 () Bool)

(assert (=> b!643791 (= e!368831 (not e!368822))))

(declare-fun res!417110 () Bool)

(assert (=> b!643791 (=> res!417110 e!368822)))

(declare-datatypes ((SeekEntryResult!6854 0))(
  ( (MissingZero!6854 (index!29747 (_ BitVec 32))) (Found!6854 (index!29748 (_ BitVec 32))) (Intermediate!6854 (undefined!7666 Bool) (index!29749 (_ BitVec 32)) (x!58543 (_ BitVec 32))) (Undefined!6854) (MissingVacant!6854 (index!29750 (_ BitVec 32))) )
))
(declare-fun lt!298370 () SeekEntryResult!6854)

(assert (=> b!643791 (= res!417110 (not (= lt!298370 (Found!6854 index!984))))))

(declare-fun lt!298365 () Unit!21796)

(assert (=> b!643791 (= lt!298365 e!368823)))

(declare-fun c!73709 () Bool)

(assert (=> b!643791 (= c!73709 (= lt!298370 Undefined!6854))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38395 (_ BitVec 32)) SeekEntryResult!6854)

(assert (=> b!643791 (= lt!298370 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298363 lt!298359 mask!3053))))

(declare-fun e!368828 () Bool)

(assert (=> b!643791 e!368828))

(declare-fun res!417112 () Bool)

(assert (=> b!643791 (=> (not res!417112) (not e!368828))))

(declare-fun lt!298367 () (_ BitVec 32))

(declare-fun lt!298371 () SeekEntryResult!6854)

(assert (=> b!643791 (= res!417112 (= lt!298371 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298367 vacantSpotIndex!68 lt!298363 lt!298359 mask!3053)))))

(assert (=> b!643791 (= lt!298371 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298367 vacantSpotIndex!68 (select (arr!18407 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643791 (= lt!298363 (select (store (arr!18407 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298357 () Unit!21796)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21796)

(assert (=> b!643791 (= lt!298357 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298367 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643791 (= lt!298367 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643792 () Bool)

(assert (=> b!643792 (= e!368829 e!368831)))

(declare-fun res!417107 () Bool)

(assert (=> b!643792 (=> (not res!417107) (not e!368831))))

(declare-fun lt!298362 () SeekEntryResult!6854)

(assert (=> b!643792 (= res!417107 (and (= lt!298362 (Found!6854 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18407 a!2986) index!984) (select (arr!18407 a!2986) j!136))) (not (= (select (arr!18407 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!643792 (= lt!298362 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18407 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643793 () Bool)

(declare-fun res!417108 () Bool)

(assert (=> b!643793 (=> (not res!417108) (not e!368836))))

(assert (=> b!643793 (= res!417108 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!643794 () Bool)

(declare-fun res!417119 () Bool)

(assert (=> b!643794 (=> (not res!417119) (not e!368833))))

(declare-datatypes ((List!12501 0))(
  ( (Nil!12498) (Cons!12497 (h!13542 (_ BitVec 64)) (t!18737 List!12501)) )
))
(declare-fun arrayNoDuplicates!0 (array!38395 (_ BitVec 32) List!12501) Bool)

(assert (=> b!643794 (= res!417119 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12498))))

(declare-fun b!643795 () Bool)

(assert (=> b!643795 (= e!368836 e!368833)))

(declare-fun res!417106 () Bool)

(assert (=> b!643795 (=> (not res!417106) (not e!368833))))

(declare-fun lt!298366 () SeekEntryResult!6854)

(assert (=> b!643795 (= res!417106 (or (= lt!298366 (MissingZero!6854 i!1108)) (= lt!298366 (MissingVacant!6854 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38395 (_ BitVec 32)) SeekEntryResult!6854)

(assert (=> b!643795 (= lt!298366 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!643796 () Bool)

(assert (=> b!643796 (= e!368825 (arrayContainsKey!0 lt!298359 (select (arr!18407 a!2986) j!136) index!984))))

(declare-fun b!643797 () Bool)

(declare-fun e!368824 () Unit!21796)

(declare-fun Unit!21799 () Unit!21796)

(assert (=> b!643797 (= e!368824 Unit!21799)))

(declare-fun b!643798 () Bool)

(declare-fun Unit!21800 () Unit!21796)

(assert (=> b!643798 (= e!368824 Unit!21800)))

(declare-fun lt!298368 () Unit!21796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38395 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21796)

(assert (=> b!643798 (= lt!298368 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298359 (select (arr!18407 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643798 (arrayContainsKey!0 lt!298359 (select (arr!18407 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298369 () Unit!21796)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38395 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12501) Unit!21796)

(assert (=> b!643798 (= lt!298369 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12498))))

(assert (=> b!643798 (arrayNoDuplicates!0 lt!298359 #b00000000000000000000000000000000 Nil!12498)))

(declare-fun lt!298361 () Unit!21796)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38395 (_ BitVec 32) (_ BitVec 32)) Unit!21796)

(assert (=> b!643798 (= lt!298361 (lemmaNoDuplicateFromThenFromBigger!0 lt!298359 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643798 (arrayNoDuplicates!0 lt!298359 j!136 Nil!12498)))

(declare-fun lt!298360 () Unit!21796)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38395 (_ BitVec 64) (_ BitVec 32) List!12501) Unit!21796)

(assert (=> b!643798 (= lt!298360 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298359 (select (arr!18407 a!2986) j!136) j!136 Nil!12498))))

(assert (=> b!643798 false))

(declare-fun b!643799 () Bool)

(declare-fun Unit!21801 () Unit!21796)

(assert (=> b!643799 (= e!368823 Unit!21801)))

(declare-fun b!643800 () Bool)

(assert (=> b!643800 (= e!368828 (= lt!298362 lt!298371))))

(declare-fun b!643801 () Bool)

(declare-fun res!417104 () Bool)

(assert (=> b!643801 (=> (not res!417104) (not e!368836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643801 (= res!417104 (validKeyInArray!0 (select (arr!18407 a!2986) j!136)))))

(declare-fun b!643802 () Bool)

(declare-fun e!368830 () Bool)

(declare-fun e!368834 () Bool)

(assert (=> b!643802 (= e!368830 e!368834)))

(declare-fun res!417117 () Bool)

(assert (=> b!643802 (=> res!417117 e!368834)))

(assert (=> b!643802 (= res!417117 (bvsge index!984 j!136))))

(declare-fun lt!298364 () Unit!21796)

(assert (=> b!643802 (= lt!298364 e!368824)))

(declare-fun c!73708 () Bool)

(assert (=> b!643802 (= c!73708 (bvslt j!136 index!984))))

(declare-fun b!643803 () Bool)

(assert (=> b!643803 (= e!368834 true)))

(assert (=> b!643803 e!368832))

(declare-fun res!417122 () Bool)

(assert (=> b!643803 (=> (not res!417122) (not e!368832))))

(assert (=> b!643803 (= res!417122 (arrayContainsKey!0 lt!298359 (select (arr!18407 a!2986) j!136) j!136))))

(declare-fun b!643804 () Bool)

(declare-fun res!417113 () Bool)

(assert (=> b!643804 (=> (not res!417113) (not e!368836))))

(assert (=> b!643804 (= res!417113 (validKeyInArray!0 k!1786))))

(declare-fun b!643805 () Bool)

(assert (=> b!643805 (= e!368822 e!368830)))

(declare-fun res!417109 () Bool)

(assert (=> b!643805 (=> res!417109 e!368830)))

(assert (=> b!643805 (= res!417109 (or (not (= (select (arr!18407 a!2986) j!136) lt!298363)) (not (= (select (arr!18407 a!2986) j!136) lt!298358))))))

(assert (=> b!643805 e!368826))

(declare-fun res!417120 () Bool)

(assert (=> b!643805 (=> (not res!417120) (not e!368826))))

(assert (=> b!643805 (= res!417120 (= lt!298358 (select (arr!18407 a!2986) j!136)))))

(assert (=> b!643805 (= lt!298358 (select (store (arr!18407 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!643806 () Bool)

(declare-fun res!417118 () Bool)

(assert (=> b!643806 (=> (not res!417118) (not e!368833))))

(assert (=> b!643806 (= res!417118 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18407 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643807 () Bool)

(declare-fun res!417111 () Bool)

(assert (=> b!643807 (=> (not res!417111) (not e!368836))))

(assert (=> b!643807 (= res!417111 (and (= (size!18771 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18771 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18771 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643808 () Bool)

(declare-fun res!417114 () Bool)

(assert (=> b!643808 (=> (not res!417114) (not e!368833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38395 (_ BitVec 32)) Bool)

(assert (=> b!643808 (= res!417114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!58342 res!417121) b!643807))

(assert (= (and b!643807 res!417111) b!643801))

(assert (= (and b!643801 res!417104) b!643804))

(assert (= (and b!643804 res!417113) b!643793))

(assert (= (and b!643793 res!417108) b!643795))

(assert (= (and b!643795 res!417106) b!643808))

(assert (= (and b!643808 res!417114) b!643794))

(assert (= (and b!643794 res!417119) b!643806))

(assert (= (and b!643806 res!417118) b!643789))

(assert (= (and b!643789 res!417116) b!643792))

(assert (= (and b!643792 res!417107) b!643791))

(assert (= (and b!643791 res!417112) b!643800))

(assert (= (and b!643791 c!73709) b!643790))

(assert (= (and b!643791 (not c!73709)) b!643799))

(assert (= (and b!643791 (not res!417110)) b!643805))

(assert (= (and b!643805 res!417120) b!643786))

(assert (= (and b!643786 (not res!417105)) b!643788))

(assert (= (and b!643788 res!417115) b!643796))

(assert (= (and b!643805 (not res!417109)) b!643802))

(assert (= (and b!643802 c!73708) b!643798))

(assert (= (and b!643802 (not c!73708)) b!643797))

(assert (= (and b!643802 (not res!417117)) b!643803))

(assert (= (and b!643803 res!417122) b!643787))

(declare-fun m!617523 () Bool)

(assert (=> b!643801 m!617523))

(assert (=> b!643801 m!617523))

(declare-fun m!617525 () Bool)

(assert (=> b!643801 m!617525))

(assert (=> b!643803 m!617523))

(assert (=> b!643803 m!617523))

(declare-fun m!617527 () Bool)

(assert (=> b!643803 m!617527))

(assert (=> b!643805 m!617523))

(declare-fun m!617529 () Bool)

(assert (=> b!643805 m!617529))

(declare-fun m!617531 () Bool)

(assert (=> b!643805 m!617531))

(declare-fun m!617533 () Bool)

(assert (=> b!643798 m!617533))

(assert (=> b!643798 m!617523))

(declare-fun m!617535 () Bool)

(assert (=> b!643798 m!617535))

(declare-fun m!617537 () Bool)

(assert (=> b!643798 m!617537))

(declare-fun m!617539 () Bool)

(assert (=> b!643798 m!617539))

(assert (=> b!643798 m!617523))

(declare-fun m!617541 () Bool)

(assert (=> b!643798 m!617541))

(declare-fun m!617543 () Bool)

(assert (=> b!643798 m!617543))

(assert (=> b!643798 m!617523))

(assert (=> b!643798 m!617523))

(declare-fun m!617545 () Bool)

(assert (=> b!643798 m!617545))

(declare-fun m!617547 () Bool)

(assert (=> b!643791 m!617547))

(declare-fun m!617549 () Bool)

(assert (=> b!643791 m!617549))

(assert (=> b!643791 m!617523))

(declare-fun m!617551 () Bool)

(assert (=> b!643791 m!617551))

(assert (=> b!643791 m!617529))

(declare-fun m!617553 () Bool)

(assert (=> b!643791 m!617553))

(declare-fun m!617555 () Bool)

(assert (=> b!643791 m!617555))

(assert (=> b!643791 m!617523))

(declare-fun m!617557 () Bool)

(assert (=> b!643791 m!617557))

(declare-fun m!617559 () Bool)

(assert (=> b!643806 m!617559))

(assert (=> b!643789 m!617529))

(declare-fun m!617561 () Bool)

(assert (=> b!643789 m!617561))

(declare-fun m!617563 () Bool)

(assert (=> b!643794 m!617563))

(declare-fun m!617565 () Bool)

(assert (=> b!643808 m!617565))

(assert (=> b!643787 m!617523))

(assert (=> b!643787 m!617523))

(declare-fun m!617567 () Bool)

(assert (=> b!643787 m!617567))

(assert (=> b!643786 m!617523))

(declare-fun m!617569 () Bool)

(assert (=> start!58342 m!617569))

(declare-fun m!617571 () Bool)

(assert (=> start!58342 m!617571))

(declare-fun m!617573 () Bool)

(assert (=> b!643795 m!617573))

(assert (=> b!643796 m!617523))

(assert (=> b!643796 m!617523))

(assert (=> b!643796 m!617567))

(assert (=> b!643788 m!617523))

(assert (=> b!643788 m!617523))

(assert (=> b!643788 m!617527))

(declare-fun m!617575 () Bool)

(assert (=> b!643793 m!617575))

(declare-fun m!617577 () Bool)

(assert (=> b!643804 m!617577))

(declare-fun m!617579 () Bool)

(assert (=> b!643792 m!617579))

(assert (=> b!643792 m!617523))

(assert (=> b!643792 m!617523))

(declare-fun m!617581 () Bool)

(assert (=> b!643792 m!617581))

(push 1)

