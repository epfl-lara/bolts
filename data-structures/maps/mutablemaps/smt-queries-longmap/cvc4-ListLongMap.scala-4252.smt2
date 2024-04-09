; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59002 () Bool)

(assert start!59002)

(declare-fun res!421790 () Bool)

(declare-fun e!373209 () Bool)

(assert (=> start!59002 (=> (not res!421790) (not e!373209))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59002 (= res!421790 (validMask!0 mask!3053))))

(assert (=> start!59002 e!373209))

(assert (=> start!59002 true))

(declare-datatypes ((array!38539 0))(
  ( (array!38540 (arr!18470 (Array (_ BitVec 32) (_ BitVec 64))) (size!18834 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38539)

(declare-fun array_inv!14244 (array!38539) Bool)

(assert (=> start!59002 (array_inv!14244 a!2986)))

(declare-fun b!650485 () Bool)

(declare-datatypes ((Unit!22174 0))(
  ( (Unit!22175) )
))
(declare-fun e!373211 () Unit!22174)

(declare-fun Unit!22176 () Unit!22174)

(assert (=> b!650485 (= e!373211 Unit!22176)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!302338 () Unit!22174)

(declare-fun lt!302342 () array!38539)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38539 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22174)

(assert (=> b!650485 (= lt!302338 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302342 (select (arr!18470 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650485 (arrayContainsKey!0 lt!302342 (select (arr!18470 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!302335 () Unit!22174)

(declare-datatypes ((List!12564 0))(
  ( (Nil!12561) (Cons!12560 (h!13605 (_ BitVec 64)) (t!18800 List!12564)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38539 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12564) Unit!22174)

(assert (=> b!650485 (= lt!302335 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12561))))

(declare-fun arrayNoDuplicates!0 (array!38539 (_ BitVec 32) List!12564) Bool)

(assert (=> b!650485 (arrayNoDuplicates!0 lt!302342 #b00000000000000000000000000000000 Nil!12561)))

(declare-fun lt!302336 () Unit!22174)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38539 (_ BitVec 32) (_ BitVec 32)) Unit!22174)

(assert (=> b!650485 (= lt!302336 (lemmaNoDuplicateFromThenFromBigger!0 lt!302342 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650485 (arrayNoDuplicates!0 lt!302342 j!136 Nil!12561)))

(declare-fun lt!302339 () Unit!22174)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38539 (_ BitVec 64) (_ BitVec 32) List!12564) Unit!22174)

(assert (=> b!650485 (= lt!302339 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302342 (select (arr!18470 a!2986) j!136) j!136 Nil!12561))))

(assert (=> b!650485 false))

(declare-fun b!650486 () Bool)

(declare-fun e!373220 () Bool)

(assert (=> b!650486 (= e!373220 (or (bvsge (size!18834 a!2986) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!18834 a!2986))))))

(assert (=> b!650486 (arrayNoDuplicates!0 lt!302342 #b00000000000000000000000000000000 Nil!12561)))

(declare-fun lt!302330 () Unit!22174)

(assert (=> b!650486 (= lt!302330 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12561))))

(assert (=> b!650486 (arrayContainsKey!0 lt!302342 (select (arr!18470 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302345 () Unit!22174)

(assert (=> b!650486 (= lt!302345 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302342 (select (arr!18470 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!373218 () Bool)

(assert (=> b!650486 e!373218))

(declare-fun res!421794 () Bool)

(assert (=> b!650486 (=> (not res!421794) (not e!373218))))

(assert (=> b!650486 (= res!421794 (arrayContainsKey!0 lt!302342 (select (arr!18470 a!2986) j!136) j!136))))

(declare-fun b!650487 () Bool)

(declare-fun e!373215 () Bool)

(declare-fun e!373214 () Bool)

(assert (=> b!650487 (= e!373215 e!373214)))

(declare-fun res!421804 () Bool)

(assert (=> b!650487 (=> (not res!421804) (not e!373214))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!650487 (= res!421804 (= (select (store (arr!18470 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650487 (= lt!302342 (array!38540 (store (arr!18470 a!2986) i!1108 k!1786) (size!18834 a!2986)))))

(declare-fun b!650488 () Bool)

(declare-fun e!373213 () Bool)

(declare-fun e!373208 () Bool)

(assert (=> b!650488 (= e!373213 e!373208)))

(declare-fun res!421795 () Bool)

(assert (=> b!650488 (=> (not res!421795) (not e!373208))))

(assert (=> b!650488 (= res!421795 (arrayContainsKey!0 lt!302342 (select (arr!18470 a!2986) j!136) j!136))))

(declare-fun b!650489 () Bool)

(declare-fun e!373219 () Unit!22174)

(declare-fun Unit!22177 () Unit!22174)

(assert (=> b!650489 (= e!373219 Unit!22177)))

(assert (=> b!650489 false))

(declare-fun b!650490 () Bool)

(declare-fun res!421799 () Bool)

(assert (=> b!650490 (=> (not res!421799) (not e!373209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650490 (= res!421799 (validKeyInArray!0 k!1786))))

(declare-fun b!650491 () Bool)

(declare-fun e!373222 () Bool)

(declare-fun e!373212 () Bool)

(assert (=> b!650491 (= e!373222 (not e!373212))))

(declare-fun res!421797 () Bool)

(assert (=> b!650491 (=> res!421797 e!373212)))

(declare-datatypes ((SeekEntryResult!6917 0))(
  ( (MissingZero!6917 (index!30017 (_ BitVec 32))) (Found!6917 (index!30018 (_ BitVec 32))) (Intermediate!6917 (undefined!7729 Bool) (index!30019 (_ BitVec 32)) (x!58828 (_ BitVec 32))) (Undefined!6917) (MissingVacant!6917 (index!30020 (_ BitVec 32))) )
))
(declare-fun lt!302332 () SeekEntryResult!6917)

(assert (=> b!650491 (= res!421797 (not (= lt!302332 (Found!6917 index!984))))))

(declare-fun lt!302344 () Unit!22174)

(assert (=> b!650491 (= lt!302344 e!373219)))

(declare-fun c!74716 () Bool)

(assert (=> b!650491 (= c!74716 (= lt!302332 Undefined!6917))))

(declare-fun lt!302334 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38539 (_ BitVec 32)) SeekEntryResult!6917)

(assert (=> b!650491 (= lt!302332 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302334 lt!302342 mask!3053))))

(declare-fun e!373210 () Bool)

(assert (=> b!650491 e!373210))

(declare-fun res!421801 () Bool)

(assert (=> b!650491 (=> (not res!421801) (not e!373210))))

(declare-fun lt!302331 () SeekEntryResult!6917)

(declare-fun lt!302340 () (_ BitVec 32))

(assert (=> b!650491 (= res!421801 (= lt!302331 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302340 vacantSpotIndex!68 lt!302334 lt!302342 mask!3053)))))

(assert (=> b!650491 (= lt!302331 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302340 vacantSpotIndex!68 (select (arr!18470 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650491 (= lt!302334 (select (store (arr!18470 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302343 () Unit!22174)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22174)

(assert (=> b!650491 (= lt!302343 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302340 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650491 (= lt!302340 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650492 () Bool)

(declare-fun res!421803 () Bool)

(assert (=> b!650492 (=> (not res!421803) (not e!373215))))

(assert (=> b!650492 (= res!421803 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18470 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650493 () Bool)

(declare-fun e!373217 () Bool)

(assert (=> b!650493 (= e!373212 e!373217)))

(declare-fun res!421802 () Bool)

(assert (=> b!650493 (=> res!421802 e!373217)))

(declare-fun lt!302333 () (_ BitVec 64))

(assert (=> b!650493 (= res!421802 (or (not (= (select (arr!18470 a!2986) j!136) lt!302334)) (not (= (select (arr!18470 a!2986) j!136) lt!302333))))))

(declare-fun e!373216 () Bool)

(assert (=> b!650493 e!373216))

(declare-fun res!421798 () Bool)

(assert (=> b!650493 (=> (not res!421798) (not e!373216))))

(assert (=> b!650493 (= res!421798 (= lt!302333 (select (arr!18470 a!2986) j!136)))))

(assert (=> b!650493 (= lt!302333 (select (store (arr!18470 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650494 () Bool)

(declare-fun Unit!22178 () Unit!22174)

(assert (=> b!650494 (= e!373211 Unit!22178)))

(declare-fun b!650495 () Bool)

(assert (=> b!650495 (= e!373209 e!373215)))

(declare-fun res!421788 () Bool)

(assert (=> b!650495 (=> (not res!421788) (not e!373215))))

(declare-fun lt!302341 () SeekEntryResult!6917)

(assert (=> b!650495 (= res!421788 (or (= lt!302341 (MissingZero!6917 i!1108)) (= lt!302341 (MissingVacant!6917 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38539 (_ BitVec 32)) SeekEntryResult!6917)

(assert (=> b!650495 (= lt!302341 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650496 () Bool)

(declare-fun res!421789 () Bool)

(assert (=> b!650496 (=> (not res!421789) (not e!373215))))

(assert (=> b!650496 (= res!421789 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12561))))

(declare-fun b!650497 () Bool)

(declare-fun res!421793 () Bool)

(assert (=> b!650497 (=> (not res!421793) (not e!373209))))

(assert (=> b!650497 (= res!421793 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650498 () Bool)

(declare-fun lt!302346 () SeekEntryResult!6917)

(assert (=> b!650498 (= e!373210 (= lt!302346 lt!302331))))

(declare-fun b!650499 () Bool)

(declare-fun Unit!22179 () Unit!22174)

(assert (=> b!650499 (= e!373219 Unit!22179)))

(declare-fun b!650500 () Bool)

(assert (=> b!650500 (= e!373217 e!373220)))

(declare-fun res!421787 () Bool)

(assert (=> b!650500 (=> res!421787 e!373220)))

(assert (=> b!650500 (= res!421787 (bvsge index!984 j!136))))

(declare-fun lt!302337 () Unit!22174)

(assert (=> b!650500 (= lt!302337 e!373211)))

(declare-fun c!74717 () Bool)

(assert (=> b!650500 (= c!74717 (bvslt j!136 index!984))))

(declare-fun b!650501 () Bool)

(assert (=> b!650501 (= e!373218 (arrayContainsKey!0 lt!302342 (select (arr!18470 a!2986) j!136) index!984))))

(declare-fun b!650502 () Bool)

(assert (=> b!650502 (= e!373208 (arrayContainsKey!0 lt!302342 (select (arr!18470 a!2986) j!136) index!984))))

(declare-fun b!650503 () Bool)

(declare-fun res!421805 () Bool)

(assert (=> b!650503 (=> (not res!421805) (not e!373209))))

(assert (=> b!650503 (= res!421805 (validKeyInArray!0 (select (arr!18470 a!2986) j!136)))))

(declare-fun b!650504 () Bool)

(assert (=> b!650504 (= e!373214 e!373222)))

(declare-fun res!421796 () Bool)

(assert (=> b!650504 (=> (not res!421796) (not e!373222))))

(assert (=> b!650504 (= res!421796 (and (= lt!302346 (Found!6917 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18470 a!2986) index!984) (select (arr!18470 a!2986) j!136))) (not (= (select (arr!18470 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650504 (= lt!302346 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18470 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650505 () Bool)

(assert (=> b!650505 (= e!373216 e!373213)))

(declare-fun res!421792 () Bool)

(assert (=> b!650505 (=> res!421792 e!373213)))

(assert (=> b!650505 (= res!421792 (or (not (= (select (arr!18470 a!2986) j!136) lt!302334)) (not (= (select (arr!18470 a!2986) j!136) lt!302333)) (bvsge j!136 index!984)))))

(declare-fun b!650506 () Bool)

(declare-fun res!421791 () Bool)

(assert (=> b!650506 (=> (not res!421791) (not e!373215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38539 (_ BitVec 32)) Bool)

(assert (=> b!650506 (= res!421791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650507 () Bool)

(declare-fun res!421800 () Bool)

(assert (=> b!650507 (=> (not res!421800) (not e!373209))))

(assert (=> b!650507 (= res!421800 (and (= (size!18834 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18834 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18834 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!59002 res!421790) b!650507))

(assert (= (and b!650507 res!421800) b!650503))

(assert (= (and b!650503 res!421805) b!650490))

(assert (= (and b!650490 res!421799) b!650497))

(assert (= (and b!650497 res!421793) b!650495))

(assert (= (and b!650495 res!421788) b!650506))

(assert (= (and b!650506 res!421791) b!650496))

(assert (= (and b!650496 res!421789) b!650492))

(assert (= (and b!650492 res!421803) b!650487))

(assert (= (and b!650487 res!421804) b!650504))

(assert (= (and b!650504 res!421796) b!650491))

(assert (= (and b!650491 res!421801) b!650498))

(assert (= (and b!650491 c!74716) b!650489))

(assert (= (and b!650491 (not c!74716)) b!650499))

(assert (= (and b!650491 (not res!421797)) b!650493))

(assert (= (and b!650493 res!421798) b!650505))

(assert (= (and b!650505 (not res!421792)) b!650488))

(assert (= (and b!650488 res!421795) b!650502))

(assert (= (and b!650493 (not res!421802)) b!650500))

(assert (= (and b!650500 c!74717) b!650485))

(assert (= (and b!650500 (not c!74717)) b!650494))

(assert (= (and b!650500 (not res!421787)) b!650486))

(assert (= (and b!650486 res!421794) b!650501))

(declare-fun m!623741 () Bool)

(assert (=> b!650502 m!623741))

(assert (=> b!650502 m!623741))

(declare-fun m!623743 () Bool)

(assert (=> b!650502 m!623743))

(declare-fun m!623745 () Bool)

(assert (=> b!650497 m!623745))

(assert (=> b!650501 m!623741))

(assert (=> b!650501 m!623741))

(assert (=> b!650501 m!623743))

(assert (=> b!650486 m!623741))

(declare-fun m!623747 () Bool)

(assert (=> b!650486 m!623747))

(declare-fun m!623749 () Bool)

(assert (=> b!650486 m!623749))

(assert (=> b!650486 m!623741))

(assert (=> b!650486 m!623741))

(declare-fun m!623751 () Bool)

(assert (=> b!650486 m!623751))

(assert (=> b!650486 m!623741))

(declare-fun m!623753 () Bool)

(assert (=> b!650486 m!623753))

(declare-fun m!623755 () Bool)

(assert (=> b!650486 m!623755))

(declare-fun m!623757 () Bool)

(assert (=> start!59002 m!623757))

(declare-fun m!623759 () Bool)

(assert (=> start!59002 m!623759))

(declare-fun m!623761 () Bool)

(assert (=> b!650506 m!623761))

(assert (=> b!650503 m!623741))

(assert (=> b!650503 m!623741))

(declare-fun m!623763 () Bool)

(assert (=> b!650503 m!623763))

(declare-fun m!623765 () Bool)

(assert (=> b!650495 m!623765))

(assert (=> b!650485 m!623749))

(assert (=> b!650485 m!623741))

(declare-fun m!623767 () Bool)

(assert (=> b!650485 m!623767))

(assert (=> b!650485 m!623741))

(declare-fun m!623769 () Bool)

(assert (=> b!650485 m!623769))

(assert (=> b!650485 m!623741))

(declare-fun m!623771 () Bool)

(assert (=> b!650485 m!623771))

(declare-fun m!623773 () Bool)

(assert (=> b!650485 m!623773))

(assert (=> b!650485 m!623741))

(declare-fun m!623775 () Bool)

(assert (=> b!650485 m!623775))

(assert (=> b!650485 m!623755))

(declare-fun m!623777 () Bool)

(assert (=> b!650492 m!623777))

(declare-fun m!623779 () Bool)

(assert (=> b!650491 m!623779))

(declare-fun m!623781 () Bool)

(assert (=> b!650491 m!623781))

(assert (=> b!650491 m!623741))

(declare-fun m!623783 () Bool)

(assert (=> b!650491 m!623783))

(assert (=> b!650491 m!623741))

(declare-fun m!623785 () Bool)

(assert (=> b!650491 m!623785))

(declare-fun m!623787 () Bool)

(assert (=> b!650491 m!623787))

(declare-fun m!623789 () Bool)

(assert (=> b!650491 m!623789))

(declare-fun m!623791 () Bool)

(assert (=> b!650491 m!623791))

(assert (=> b!650493 m!623741))

(assert (=> b!650493 m!623783))

(declare-fun m!623793 () Bool)

(assert (=> b!650493 m!623793))

(assert (=> b!650487 m!623783))

(declare-fun m!623795 () Bool)

(assert (=> b!650487 m!623795))

(assert (=> b!650505 m!623741))

(declare-fun m!623797 () Bool)

(assert (=> b!650496 m!623797))

(declare-fun m!623799 () Bool)

(assert (=> b!650504 m!623799))

(assert (=> b!650504 m!623741))

(assert (=> b!650504 m!623741))

(declare-fun m!623801 () Bool)

(assert (=> b!650504 m!623801))

(declare-fun m!623803 () Bool)

(assert (=> b!650490 m!623803))

(assert (=> b!650488 m!623741))

(assert (=> b!650488 m!623741))

(assert (=> b!650488 m!623747))

(push 1)

