; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58898 () Bool)

(assert start!58898)

(declare-fun b!649462 () Bool)

(declare-fun e!372532 () Bool)

(declare-fun e!372536 () Bool)

(assert (=> b!649462 (= e!372532 e!372536)))

(declare-fun res!421099 () Bool)

(assert (=> b!649462 (=> (not res!421099) (not e!372536))))

(declare-datatypes ((SeekEntryResult!6907 0))(
  ( (MissingZero!6907 (index!29974 (_ BitVec 32))) (Found!6907 (index!29975 (_ BitVec 32))) (Intermediate!6907 (undefined!7719 Bool) (index!29976 (_ BitVec 32)) (x!58785 (_ BitVec 32))) (Undefined!6907) (MissingVacant!6907 (index!29977 (_ BitVec 32))) )
))
(declare-fun lt!301673 () SeekEntryResult!6907)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649462 (= res!421099 (or (= lt!301673 (MissingZero!6907 i!1108)) (= lt!301673 (MissingVacant!6907 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!38516 0))(
  ( (array!38517 (arr!18460 (Array (_ BitVec 32) (_ BitVec 64))) (size!18824 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38516)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38516 (_ BitVec 32)) SeekEntryResult!6907)

(assert (=> b!649462 (= lt!301673 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!649463 () Bool)

(declare-fun e!372540 () Bool)

(declare-fun e!372538 () Bool)

(assert (=> b!649463 (= e!372540 e!372538)))

(declare-fun res!421101 () Bool)

(assert (=> b!649463 (=> (not res!421101) (not e!372538))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301689 () array!38516)

(declare-fun arrayContainsKey!0 (array!38516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649463 (= res!421101 (arrayContainsKey!0 lt!301689 (select (arr!18460 a!2986) j!136) j!136))))

(declare-fun b!649464 () Bool)

(declare-fun e!372535 () Bool)

(declare-fun e!372531 () Bool)

(assert (=> b!649464 (= e!372535 e!372531)))

(declare-fun res!421103 () Bool)

(assert (=> b!649464 (=> res!421103 e!372531)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!649464 (= res!421103 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22114 0))(
  ( (Unit!22115) )
))
(declare-fun lt!301675 () Unit!22114)

(declare-fun e!372542 () Unit!22114)

(assert (=> b!649464 (= lt!301675 e!372542)))

(declare-fun c!74551 () Bool)

(assert (=> b!649464 (= c!74551 (bvslt j!136 index!984))))

(declare-fun b!649465 () Bool)

(declare-fun e!372534 () Bool)

(declare-fun e!372543 () Bool)

(assert (=> b!649465 (= e!372534 e!372543)))

(declare-fun res!421096 () Bool)

(assert (=> b!649465 (=> (not res!421096) (not e!372543))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!301684 () SeekEntryResult!6907)

(assert (=> b!649465 (= res!421096 (and (= lt!301684 (Found!6907 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18460 a!2986) index!984) (select (arr!18460 a!2986) j!136))) (not (= (select (arr!18460 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38516 (_ BitVec 32)) SeekEntryResult!6907)

(assert (=> b!649465 (= lt!301684 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18460 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!649466 () Bool)

(declare-fun e!372541 () Unit!22114)

(declare-fun Unit!22116 () Unit!22114)

(assert (=> b!649466 (= e!372541 Unit!22116)))

(assert (=> b!649466 false))

(declare-fun b!649467 () Bool)

(assert (=> b!649467 (= e!372531 true)))

(declare-datatypes ((List!12554 0))(
  ( (Nil!12551) (Cons!12550 (h!13595 (_ BitVec 64)) (t!18790 List!12554)) )
))
(declare-fun arrayNoDuplicates!0 (array!38516 (_ BitVec 32) List!12554) Bool)

(assert (=> b!649467 (arrayNoDuplicates!0 lt!301689 #b00000000000000000000000000000000 Nil!12551)))

(declare-fun lt!301686 () Unit!22114)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38516 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12554) Unit!22114)

(assert (=> b!649467 (= lt!301686 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12551))))

(assert (=> b!649467 (arrayContainsKey!0 lt!301689 (select (arr!18460 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301685 () Unit!22114)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38516 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22114)

(assert (=> b!649467 (= lt!301685 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301689 (select (arr!18460 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372530 () Bool)

(assert (=> b!649467 e!372530))

(declare-fun res!421111 () Bool)

(assert (=> b!649467 (=> (not res!421111) (not e!372530))))

(assert (=> b!649467 (= res!421111 (arrayContainsKey!0 lt!301689 (select (arr!18460 a!2986) j!136) j!136))))

(declare-fun b!649468 () Bool)

(declare-fun e!372537 () Bool)

(assert (=> b!649468 (= e!372537 e!372535)))

(declare-fun res!421106 () Bool)

(assert (=> b!649468 (=> res!421106 e!372535)))

(declare-fun lt!301676 () (_ BitVec 64))

(declare-fun lt!301683 () (_ BitVec 64))

(assert (=> b!649468 (= res!421106 (or (not (= (select (arr!18460 a!2986) j!136) lt!301683)) (not (= (select (arr!18460 a!2986) j!136) lt!301676))))))

(declare-fun e!372539 () Bool)

(assert (=> b!649468 e!372539))

(declare-fun res!421100 () Bool)

(assert (=> b!649468 (=> (not res!421100) (not e!372539))))

(assert (=> b!649468 (= res!421100 (= lt!301676 (select (arr!18460 a!2986) j!136)))))

(assert (=> b!649468 (= lt!301676 (select (store (arr!18460 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!649470 () Bool)

(declare-fun res!421105 () Bool)

(assert (=> b!649470 (=> (not res!421105) (not e!372532))))

(assert (=> b!649470 (= res!421105 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649471 () Bool)

(declare-fun Unit!22117 () Unit!22114)

(assert (=> b!649471 (= e!372541 Unit!22117)))

(declare-fun b!649472 () Bool)

(assert (=> b!649472 (= e!372536 e!372534)))

(declare-fun res!421094 () Bool)

(assert (=> b!649472 (=> (not res!421094) (not e!372534))))

(assert (=> b!649472 (= res!421094 (= (select (store (arr!18460 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649472 (= lt!301689 (array!38517 (store (arr!18460 a!2986) i!1108 k0!1786) (size!18824 a!2986)))))

(declare-fun b!649473 () Bool)

(declare-fun res!421108 () Bool)

(assert (=> b!649473 (=> (not res!421108) (not e!372536))))

(assert (=> b!649473 (= res!421108 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12551))))

(declare-fun b!649474 () Bool)

(declare-fun res!421102 () Bool)

(assert (=> b!649474 (=> (not res!421102) (not e!372536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38516 (_ BitVec 32)) Bool)

(assert (=> b!649474 (= res!421102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649475 () Bool)

(assert (=> b!649475 (= e!372538 (arrayContainsKey!0 lt!301689 (select (arr!18460 a!2986) j!136) index!984))))

(declare-fun b!649476 () Bool)

(declare-fun res!421104 () Bool)

(assert (=> b!649476 (=> (not res!421104) (not e!372532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649476 (= res!421104 (validKeyInArray!0 k0!1786))))

(declare-fun b!649477 () Bool)

(declare-fun e!372544 () Bool)

(declare-fun lt!301681 () SeekEntryResult!6907)

(assert (=> b!649477 (= e!372544 (= lt!301684 lt!301681))))

(declare-fun b!649478 () Bool)

(declare-fun Unit!22118 () Unit!22114)

(assert (=> b!649478 (= e!372542 Unit!22118)))

(declare-fun lt!301682 () Unit!22114)

(assert (=> b!649478 (= lt!301682 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301689 (select (arr!18460 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!649478 (arrayContainsKey!0 lt!301689 (select (arr!18460 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301678 () Unit!22114)

(assert (=> b!649478 (= lt!301678 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12551))))

(assert (=> b!649478 (arrayNoDuplicates!0 lt!301689 #b00000000000000000000000000000000 Nil!12551)))

(declare-fun lt!301688 () Unit!22114)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38516 (_ BitVec 32) (_ BitVec 32)) Unit!22114)

(assert (=> b!649478 (= lt!301688 (lemmaNoDuplicateFromThenFromBigger!0 lt!301689 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649478 (arrayNoDuplicates!0 lt!301689 j!136 Nil!12551)))

(declare-fun lt!301680 () Unit!22114)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38516 (_ BitVec 64) (_ BitVec 32) List!12554) Unit!22114)

(assert (=> b!649478 (= lt!301680 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301689 (select (arr!18460 a!2986) j!136) j!136 Nil!12551))))

(assert (=> b!649478 false))

(declare-fun b!649479 () Bool)

(assert (=> b!649479 (= e!372530 (arrayContainsKey!0 lt!301689 (select (arr!18460 a!2986) j!136) index!984))))

(declare-fun b!649480 () Bool)

(declare-fun res!421107 () Bool)

(assert (=> b!649480 (=> (not res!421107) (not e!372532))))

(assert (=> b!649480 (= res!421107 (and (= (size!18824 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18824 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18824 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649469 () Bool)

(declare-fun res!421112 () Bool)

(assert (=> b!649469 (=> (not res!421112) (not e!372536))))

(assert (=> b!649469 (= res!421112 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18460 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!421098 () Bool)

(assert (=> start!58898 (=> (not res!421098) (not e!372532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58898 (= res!421098 (validMask!0 mask!3053))))

(assert (=> start!58898 e!372532))

(assert (=> start!58898 true))

(declare-fun array_inv!14234 (array!38516) Bool)

(assert (=> start!58898 (array_inv!14234 a!2986)))

(declare-fun b!649481 () Bool)

(declare-fun Unit!22119 () Unit!22114)

(assert (=> b!649481 (= e!372542 Unit!22119)))

(declare-fun b!649482 () Bool)

(assert (=> b!649482 (= e!372539 e!372540)))

(declare-fun res!421095 () Bool)

(assert (=> b!649482 (=> res!421095 e!372540)))

(assert (=> b!649482 (= res!421095 (or (not (= (select (arr!18460 a!2986) j!136) lt!301683)) (not (= (select (arr!18460 a!2986) j!136) lt!301676)) (bvsge j!136 index!984)))))

(declare-fun b!649483 () Bool)

(declare-fun res!421110 () Bool)

(assert (=> b!649483 (=> (not res!421110) (not e!372532))))

(assert (=> b!649483 (= res!421110 (validKeyInArray!0 (select (arr!18460 a!2986) j!136)))))

(declare-fun b!649484 () Bool)

(assert (=> b!649484 (= e!372543 (not e!372537))))

(declare-fun res!421097 () Bool)

(assert (=> b!649484 (=> res!421097 e!372537)))

(declare-fun lt!301679 () SeekEntryResult!6907)

(assert (=> b!649484 (= res!421097 (not (= lt!301679 (Found!6907 index!984))))))

(declare-fun lt!301687 () Unit!22114)

(assert (=> b!649484 (= lt!301687 e!372541)))

(declare-fun c!74552 () Bool)

(assert (=> b!649484 (= c!74552 (= lt!301679 Undefined!6907))))

(assert (=> b!649484 (= lt!301679 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301683 lt!301689 mask!3053))))

(assert (=> b!649484 e!372544))

(declare-fun res!421109 () Bool)

(assert (=> b!649484 (=> (not res!421109) (not e!372544))))

(declare-fun lt!301677 () (_ BitVec 32))

(assert (=> b!649484 (= res!421109 (= lt!301681 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301677 vacantSpotIndex!68 lt!301683 lt!301689 mask!3053)))))

(assert (=> b!649484 (= lt!301681 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301677 vacantSpotIndex!68 (select (arr!18460 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649484 (= lt!301683 (select (store (arr!18460 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!301674 () Unit!22114)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38516 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22114)

(assert (=> b!649484 (= lt!301674 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301677 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649484 (= lt!301677 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!58898 res!421098) b!649480))

(assert (= (and b!649480 res!421107) b!649483))

(assert (= (and b!649483 res!421110) b!649476))

(assert (= (and b!649476 res!421104) b!649470))

(assert (= (and b!649470 res!421105) b!649462))

(assert (= (and b!649462 res!421099) b!649474))

(assert (= (and b!649474 res!421102) b!649473))

(assert (= (and b!649473 res!421108) b!649469))

(assert (= (and b!649469 res!421112) b!649472))

(assert (= (and b!649472 res!421094) b!649465))

(assert (= (and b!649465 res!421096) b!649484))

(assert (= (and b!649484 res!421109) b!649477))

(assert (= (and b!649484 c!74552) b!649466))

(assert (= (and b!649484 (not c!74552)) b!649471))

(assert (= (and b!649484 (not res!421097)) b!649468))

(assert (= (and b!649468 res!421100) b!649482))

(assert (= (and b!649482 (not res!421095)) b!649463))

(assert (= (and b!649463 res!421101) b!649475))

(assert (= (and b!649468 (not res!421106)) b!649464))

(assert (= (and b!649464 c!74551) b!649478))

(assert (= (and b!649464 (not c!74551)) b!649481))

(assert (= (and b!649464 (not res!421103)) b!649467))

(assert (= (and b!649467 res!421111) b!649479))

(declare-fun m!622771 () Bool)

(assert (=> b!649469 m!622771))

(declare-fun m!622773 () Bool)

(assert (=> b!649470 m!622773))

(declare-fun m!622775 () Bool)

(assert (=> b!649478 m!622775))

(declare-fun m!622777 () Bool)

(assert (=> b!649478 m!622777))

(declare-fun m!622779 () Bool)

(assert (=> b!649478 m!622779))

(assert (=> b!649478 m!622779))

(declare-fun m!622781 () Bool)

(assert (=> b!649478 m!622781))

(declare-fun m!622783 () Bool)

(assert (=> b!649478 m!622783))

(assert (=> b!649478 m!622779))

(declare-fun m!622785 () Bool)

(assert (=> b!649478 m!622785))

(assert (=> b!649478 m!622779))

(declare-fun m!622787 () Bool)

(assert (=> b!649478 m!622787))

(declare-fun m!622789 () Bool)

(assert (=> b!649478 m!622789))

(declare-fun m!622791 () Bool)

(assert (=> b!649472 m!622791))

(declare-fun m!622793 () Bool)

(assert (=> b!649472 m!622793))

(declare-fun m!622795 () Bool)

(assert (=> b!649473 m!622795))

(assert (=> b!649479 m!622779))

(assert (=> b!649479 m!622779))

(declare-fun m!622797 () Bool)

(assert (=> b!649479 m!622797))

(assert (=> b!649463 m!622779))

(assert (=> b!649463 m!622779))

(declare-fun m!622799 () Bool)

(assert (=> b!649463 m!622799))

(declare-fun m!622801 () Bool)

(assert (=> b!649476 m!622801))

(assert (=> b!649483 m!622779))

(assert (=> b!649483 m!622779))

(declare-fun m!622803 () Bool)

(assert (=> b!649483 m!622803))

(declare-fun m!622805 () Bool)

(assert (=> b!649462 m!622805))

(assert (=> b!649468 m!622779))

(assert (=> b!649468 m!622791))

(declare-fun m!622807 () Bool)

(assert (=> b!649468 m!622807))

(declare-fun m!622809 () Bool)

(assert (=> b!649484 m!622809))

(declare-fun m!622811 () Bool)

(assert (=> b!649484 m!622811))

(assert (=> b!649484 m!622779))

(assert (=> b!649484 m!622791))

(assert (=> b!649484 m!622779))

(declare-fun m!622813 () Bool)

(assert (=> b!649484 m!622813))

(declare-fun m!622815 () Bool)

(assert (=> b!649484 m!622815))

(declare-fun m!622817 () Bool)

(assert (=> b!649484 m!622817))

(declare-fun m!622819 () Bool)

(assert (=> b!649484 m!622819))

(declare-fun m!622821 () Bool)

(assert (=> b!649465 m!622821))

(assert (=> b!649465 m!622779))

(assert (=> b!649465 m!622779))

(declare-fun m!622823 () Bool)

(assert (=> b!649465 m!622823))

(assert (=> b!649475 m!622779))

(assert (=> b!649475 m!622779))

(assert (=> b!649475 m!622797))

(declare-fun m!622825 () Bool)

(assert (=> b!649474 m!622825))

(assert (=> b!649467 m!622779))

(assert (=> b!649467 m!622799))

(assert (=> b!649467 m!622779))

(assert (=> b!649467 m!622779))

(declare-fun m!622827 () Bool)

(assert (=> b!649467 m!622827))

(assert (=> b!649467 m!622783))

(assert (=> b!649467 m!622779))

(declare-fun m!622829 () Bool)

(assert (=> b!649467 m!622829))

(assert (=> b!649467 m!622789))

(declare-fun m!622831 () Bool)

(assert (=> start!58898 m!622831))

(declare-fun m!622833 () Bool)

(assert (=> start!58898 m!622833))

(assert (=> b!649482 m!622779))

(check-sat (not start!58898) (not b!649467) (not b!649470) (not b!649476) (not b!649484) (not b!649475) (not b!649474) (not b!649479) (not b!649463) (not b!649462) (not b!649465) (not b!649483) (not b!649478) (not b!649473))
(check-sat)
