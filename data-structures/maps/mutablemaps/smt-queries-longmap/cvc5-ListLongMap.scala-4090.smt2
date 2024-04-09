; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56046 () Bool)

(assert start!56046)

(declare-fun b!616514 () Bool)

(declare-datatypes ((Unit!20110 0))(
  ( (Unit!20111) )
))
(declare-fun e!353510 () Unit!20110)

(declare-fun Unit!20112 () Unit!20110)

(assert (=> b!616514 (= e!353510 Unit!20112)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!397250 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37479 0))(
  ( (array!37480 (arr!17982 (Array (_ BitVec 32) (_ BitVec 64))) (size!18346 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37479)

(assert (=> b!616514 (= res!397250 (= (select (store (arr!17982 a!2986) i!1108 k!1786) index!984) (select (arr!17982 a!2986) j!136)))))

(declare-fun e!353507 () Bool)

(assert (=> b!616514 (=> (not res!397250) (not e!353507))))

(assert (=> b!616514 e!353507))

(declare-fun c!70006 () Bool)

(assert (=> b!616514 (= c!70006 (bvslt j!136 index!984))))

(declare-fun lt!283706 () Unit!20110)

(declare-fun e!353521 () Unit!20110)

(assert (=> b!616514 (= lt!283706 e!353521)))

(declare-fun c!70005 () Bool)

(assert (=> b!616514 (= c!70005 (bvslt index!984 j!136))))

(declare-fun lt!283712 () Unit!20110)

(declare-fun e!353509 () Unit!20110)

(assert (=> b!616514 (= lt!283712 e!353509)))

(assert (=> b!616514 false))

(declare-fun b!616515 () Bool)

(declare-fun Unit!20113 () Unit!20110)

(assert (=> b!616515 (= e!353510 Unit!20113)))

(declare-fun b!616516 () Bool)

(declare-fun Unit!20114 () Unit!20110)

(assert (=> b!616516 (= e!353509 Unit!20114)))

(declare-fun b!616517 () Bool)

(declare-fun e!353508 () Bool)

(assert (=> b!616517 (= e!353508 true)))

(assert (=> b!616517 (= (select (store (arr!17982 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616518 () Bool)

(assert (=> b!616518 false))

(declare-fun lt!283704 () Unit!20110)

(declare-fun lt!283700 () array!37479)

(declare-datatypes ((List!12076 0))(
  ( (Nil!12073) (Cons!12072 (h!13117 (_ BitVec 64)) (t!18312 List!12076)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37479 (_ BitVec 64) (_ BitVec 32) List!12076) Unit!20110)

(assert (=> b!616518 (= lt!283704 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283700 (select (arr!17982 a!2986) j!136) j!136 Nil!12073))))

(declare-fun arrayNoDuplicates!0 (array!37479 (_ BitVec 32) List!12076) Bool)

(assert (=> b!616518 (arrayNoDuplicates!0 lt!283700 j!136 Nil!12073)))

(declare-fun lt!283714 () Unit!20110)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37479 (_ BitVec 32) (_ BitVec 32)) Unit!20110)

(assert (=> b!616518 (= lt!283714 (lemmaNoDuplicateFromThenFromBigger!0 lt!283700 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616518 (arrayNoDuplicates!0 lt!283700 #b00000000000000000000000000000000 Nil!12073)))

(declare-fun lt!283707 () Unit!20110)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12076) Unit!20110)

(assert (=> b!616518 (= lt!283707 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12073))))

(declare-fun arrayContainsKey!0 (array!37479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616518 (arrayContainsKey!0 lt!283700 (select (arr!17982 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283711 () Unit!20110)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20110)

(assert (=> b!616518 (= lt!283711 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283700 (select (arr!17982 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20115 () Unit!20110)

(assert (=> b!616518 (= e!353521 Unit!20115)))

(declare-fun res!397249 () Bool)

(declare-fun e!353520 () Bool)

(assert (=> start!56046 (=> (not res!397249) (not e!353520))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56046 (= res!397249 (validMask!0 mask!3053))))

(assert (=> start!56046 e!353520))

(assert (=> start!56046 true))

(declare-fun array_inv!13756 (array!37479) Bool)

(assert (=> start!56046 (array_inv!13756 a!2986)))

(declare-fun b!616519 () Bool)

(declare-fun e!353515 () Bool)

(assert (=> b!616519 (= e!353520 e!353515)))

(declare-fun res!397243 () Bool)

(assert (=> b!616519 (=> (not res!397243) (not e!353515))))

(declare-datatypes ((SeekEntryResult!6429 0))(
  ( (MissingZero!6429 (index!27999 (_ BitVec 32))) (Found!6429 (index!28000 (_ BitVec 32))) (Intermediate!6429 (undefined!7241 Bool) (index!28001 (_ BitVec 32)) (x!56822 (_ BitVec 32))) (Undefined!6429) (MissingVacant!6429 (index!28002 (_ BitVec 32))) )
))
(declare-fun lt!283698 () SeekEntryResult!6429)

(assert (=> b!616519 (= res!397243 (or (= lt!283698 (MissingZero!6429 i!1108)) (= lt!283698 (MissingVacant!6429 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37479 (_ BitVec 32)) SeekEntryResult!6429)

(assert (=> b!616519 (= lt!283698 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616520 () Bool)

(assert (=> b!616520 false))

(declare-fun lt!283710 () Unit!20110)

(assert (=> b!616520 (= lt!283710 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283700 (select (arr!17982 a!2986) j!136) index!984 Nil!12073))))

(assert (=> b!616520 (arrayNoDuplicates!0 lt!283700 index!984 Nil!12073)))

(declare-fun lt!283705 () Unit!20110)

(assert (=> b!616520 (= lt!283705 (lemmaNoDuplicateFromThenFromBigger!0 lt!283700 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616520 (arrayNoDuplicates!0 lt!283700 #b00000000000000000000000000000000 Nil!12073)))

(declare-fun lt!283703 () Unit!20110)

(assert (=> b!616520 (= lt!283703 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12073))))

(assert (=> b!616520 (arrayContainsKey!0 lt!283700 (select (arr!17982 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283697 () Unit!20110)

(assert (=> b!616520 (= lt!283697 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283700 (select (arr!17982 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353516 () Bool)

(assert (=> b!616520 e!353516))

(declare-fun res!397246 () Bool)

(assert (=> b!616520 (=> (not res!397246) (not e!353516))))

(assert (=> b!616520 (= res!397246 (arrayContainsKey!0 lt!283700 (select (arr!17982 a!2986) j!136) j!136))))

(declare-fun Unit!20116 () Unit!20110)

(assert (=> b!616520 (= e!353509 Unit!20116)))

(declare-fun res!397240 () Bool)

(declare-fun b!616521 () Bool)

(assert (=> b!616521 (= res!397240 (arrayContainsKey!0 lt!283700 (select (arr!17982 a!2986) j!136) j!136))))

(declare-fun e!353512 () Bool)

(assert (=> b!616521 (=> (not res!397240) (not e!353512))))

(declare-fun e!353517 () Bool)

(assert (=> b!616521 (= e!353517 e!353512)))

(declare-fun b!616522 () Bool)

(assert (=> b!616522 (= e!353516 (arrayContainsKey!0 lt!283700 (select (arr!17982 a!2986) j!136) index!984))))

(declare-fun b!616523 () Bool)

(declare-fun res!397253 () Bool)

(assert (=> b!616523 (=> (not res!397253) (not e!353520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616523 (= res!397253 (validKeyInArray!0 (select (arr!17982 a!2986) j!136)))))

(declare-fun b!616524 () Bool)

(declare-fun e!353511 () Unit!20110)

(declare-fun Unit!20117 () Unit!20110)

(assert (=> b!616524 (= e!353511 Unit!20117)))

(declare-fun b!616525 () Bool)

(declare-fun res!397251 () Bool)

(assert (=> b!616525 (=> (not res!397251) (not e!353515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37479 (_ BitVec 32)) Bool)

(assert (=> b!616525 (= res!397251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616526 () Bool)

(declare-fun res!397244 () Bool)

(assert (=> b!616526 (= res!397244 (bvsge j!136 index!984))))

(assert (=> b!616526 (=> res!397244 e!353517)))

(assert (=> b!616526 (= e!353507 e!353517)))

(declare-fun b!616527 () Bool)

(declare-fun Unit!20118 () Unit!20110)

(assert (=> b!616527 (= e!353521 Unit!20118)))

(declare-fun b!616528 () Bool)

(declare-fun res!397254 () Bool)

(assert (=> b!616528 (=> (not res!397254) (not e!353520))))

(assert (=> b!616528 (= res!397254 (and (= (size!18346 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18346 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18346 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616529 () Bool)

(declare-fun res!397256 () Bool)

(assert (=> b!616529 (=> (not res!397256) (not e!353515))))

(assert (=> b!616529 (= res!397256 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12073))))

(declare-fun b!616530 () Bool)

(declare-fun Unit!20119 () Unit!20110)

(assert (=> b!616530 (= e!353511 Unit!20119)))

(assert (=> b!616530 false))

(declare-fun b!616531 () Bool)

(declare-fun e!353519 () Bool)

(assert (=> b!616531 (= e!353515 e!353519)))

(declare-fun res!397248 () Bool)

(assert (=> b!616531 (=> (not res!397248) (not e!353519))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!616531 (= res!397248 (= (select (store (arr!17982 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616531 (= lt!283700 (array!37480 (store (arr!17982 a!2986) i!1108 k!1786) (size!18346 a!2986)))))

(declare-fun b!616532 () Bool)

(declare-fun res!397255 () Bool)

(assert (=> b!616532 (=> (not res!397255) (not e!353520))))

(assert (=> b!616532 (= res!397255 (validKeyInArray!0 k!1786))))

(declare-fun b!616533 () Bool)

(declare-fun e!353513 () Bool)

(declare-fun lt!283702 () SeekEntryResult!6429)

(declare-fun lt!283709 () SeekEntryResult!6429)

(assert (=> b!616533 (= e!353513 (= lt!283702 lt!283709))))

(declare-fun b!616534 () Bool)

(declare-fun res!397245 () Bool)

(assert (=> b!616534 (=> (not res!397245) (not e!353515))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616534 (= res!397245 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17982 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616535 () Bool)

(assert (=> b!616535 (= e!353512 (arrayContainsKey!0 lt!283700 (select (arr!17982 a!2986) j!136) index!984))))

(declare-fun b!616536 () Bool)

(declare-fun e!353518 () Bool)

(assert (=> b!616536 (= e!353519 e!353518)))

(declare-fun res!397247 () Bool)

(assert (=> b!616536 (=> (not res!397247) (not e!353518))))

(assert (=> b!616536 (= res!397247 (and (= lt!283702 (Found!6429 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17982 a!2986) index!984) (select (arr!17982 a!2986) j!136))) (not (= (select (arr!17982 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37479 (_ BitVec 32)) SeekEntryResult!6429)

(assert (=> b!616536 (= lt!283702 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17982 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616537 () Bool)

(assert (=> b!616537 (= e!353518 (not e!353508))))

(declare-fun res!397241 () Bool)

(assert (=> b!616537 (=> res!397241 e!353508)))

(declare-fun lt!283699 () SeekEntryResult!6429)

(assert (=> b!616537 (= res!397241 (not (= lt!283699 (MissingVacant!6429 vacantSpotIndex!68))))))

(declare-fun lt!283713 () Unit!20110)

(assert (=> b!616537 (= lt!283713 e!353510)))

(declare-fun c!70007 () Bool)

(assert (=> b!616537 (= c!70007 (= lt!283699 (Found!6429 index!984)))))

(declare-fun lt!283701 () Unit!20110)

(assert (=> b!616537 (= lt!283701 e!353511)))

(declare-fun c!70004 () Bool)

(assert (=> b!616537 (= c!70004 (= lt!283699 Undefined!6429))))

(declare-fun lt!283708 () (_ BitVec 64))

(assert (=> b!616537 (= lt!283699 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283708 lt!283700 mask!3053))))

(assert (=> b!616537 e!353513))

(declare-fun res!397252 () Bool)

(assert (=> b!616537 (=> (not res!397252) (not e!353513))))

(declare-fun lt!283716 () (_ BitVec 32))

(assert (=> b!616537 (= res!397252 (= lt!283709 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283716 vacantSpotIndex!68 lt!283708 lt!283700 mask!3053)))))

(assert (=> b!616537 (= lt!283709 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283716 vacantSpotIndex!68 (select (arr!17982 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616537 (= lt!283708 (select (store (arr!17982 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283715 () Unit!20110)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37479 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20110)

(assert (=> b!616537 (= lt!283715 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283716 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616537 (= lt!283716 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616538 () Bool)

(declare-fun res!397242 () Bool)

(assert (=> b!616538 (=> (not res!397242) (not e!353520))))

(assert (=> b!616538 (= res!397242 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56046 res!397249) b!616528))

(assert (= (and b!616528 res!397254) b!616523))

(assert (= (and b!616523 res!397253) b!616532))

(assert (= (and b!616532 res!397255) b!616538))

(assert (= (and b!616538 res!397242) b!616519))

(assert (= (and b!616519 res!397243) b!616525))

(assert (= (and b!616525 res!397251) b!616529))

(assert (= (and b!616529 res!397256) b!616534))

(assert (= (and b!616534 res!397245) b!616531))

(assert (= (and b!616531 res!397248) b!616536))

(assert (= (and b!616536 res!397247) b!616537))

(assert (= (and b!616537 res!397252) b!616533))

(assert (= (and b!616537 c!70004) b!616530))

(assert (= (and b!616537 (not c!70004)) b!616524))

(assert (= (and b!616537 c!70007) b!616514))

(assert (= (and b!616537 (not c!70007)) b!616515))

(assert (= (and b!616514 res!397250) b!616526))

(assert (= (and b!616526 (not res!397244)) b!616521))

(assert (= (and b!616521 res!397240) b!616535))

(assert (= (and b!616514 c!70006) b!616518))

(assert (= (and b!616514 (not c!70006)) b!616527))

(assert (= (and b!616514 c!70005) b!616520))

(assert (= (and b!616514 (not c!70005)) b!616516))

(assert (= (and b!616520 res!397246) b!616522))

(assert (= (and b!616537 (not res!397241)) b!616517))

(declare-fun m!592719 () Bool)

(assert (=> b!616518 m!592719))

(declare-fun m!592721 () Bool)

(assert (=> b!616518 m!592721))

(declare-fun m!592723 () Bool)

(assert (=> b!616518 m!592723))

(assert (=> b!616518 m!592719))

(assert (=> b!616518 m!592719))

(declare-fun m!592725 () Bool)

(assert (=> b!616518 m!592725))

(declare-fun m!592727 () Bool)

(assert (=> b!616518 m!592727))

(declare-fun m!592729 () Bool)

(assert (=> b!616518 m!592729))

(assert (=> b!616518 m!592719))

(declare-fun m!592731 () Bool)

(assert (=> b!616518 m!592731))

(declare-fun m!592733 () Bool)

(assert (=> b!616518 m!592733))

(declare-fun m!592735 () Bool)

(assert (=> b!616532 m!592735))

(declare-fun m!592737 () Bool)

(assert (=> b!616536 m!592737))

(assert (=> b!616536 m!592719))

(assert (=> b!616536 m!592719))

(declare-fun m!592739 () Bool)

(assert (=> b!616536 m!592739))

(assert (=> b!616535 m!592719))

(assert (=> b!616535 m!592719))

(declare-fun m!592741 () Bool)

(assert (=> b!616535 m!592741))

(declare-fun m!592743 () Bool)

(assert (=> b!616531 m!592743))

(declare-fun m!592745 () Bool)

(assert (=> b!616531 m!592745))

(declare-fun m!592747 () Bool)

(assert (=> b!616529 m!592747))

(declare-fun m!592749 () Bool)

(assert (=> b!616519 m!592749))

(declare-fun m!592751 () Bool)

(assert (=> b!616525 m!592751))

(declare-fun m!592753 () Bool)

(assert (=> b!616534 m!592753))

(declare-fun m!592755 () Bool)

(assert (=> start!56046 m!592755))

(declare-fun m!592757 () Bool)

(assert (=> start!56046 m!592757))

(assert (=> b!616517 m!592743))

(declare-fun m!592759 () Bool)

(assert (=> b!616517 m!592759))

(assert (=> b!616521 m!592719))

(assert (=> b!616521 m!592719))

(declare-fun m!592761 () Bool)

(assert (=> b!616521 m!592761))

(assert (=> b!616520 m!592719))

(declare-fun m!592763 () Bool)

(assert (=> b!616520 m!592763))

(assert (=> b!616520 m!592719))

(assert (=> b!616520 m!592727))

(declare-fun m!592765 () Bool)

(assert (=> b!616520 m!592765))

(assert (=> b!616520 m!592719))

(declare-fun m!592767 () Bool)

(assert (=> b!616520 m!592767))

(assert (=> b!616520 m!592719))

(assert (=> b!616520 m!592761))

(assert (=> b!616520 m!592733))

(assert (=> b!616520 m!592719))

(declare-fun m!592769 () Bool)

(assert (=> b!616520 m!592769))

(declare-fun m!592771 () Bool)

(assert (=> b!616520 m!592771))

(assert (=> b!616523 m!592719))

(assert (=> b!616523 m!592719))

(declare-fun m!592773 () Bool)

(assert (=> b!616523 m!592773))

(declare-fun m!592775 () Bool)

(assert (=> b!616537 m!592775))

(declare-fun m!592777 () Bool)

(assert (=> b!616537 m!592777))

(assert (=> b!616537 m!592719))

(assert (=> b!616537 m!592743))

(declare-fun m!592779 () Bool)

(assert (=> b!616537 m!592779))

(declare-fun m!592781 () Bool)

(assert (=> b!616537 m!592781))

(declare-fun m!592783 () Bool)

(assert (=> b!616537 m!592783))

(assert (=> b!616537 m!592719))

(declare-fun m!592785 () Bool)

(assert (=> b!616537 m!592785))

(declare-fun m!592787 () Bool)

(assert (=> b!616538 m!592787))

(assert (=> b!616514 m!592743))

(assert (=> b!616514 m!592759))

(assert (=> b!616514 m!592719))

(assert (=> b!616522 m!592719))

(assert (=> b!616522 m!592719))

(assert (=> b!616522 m!592741))

(push 1)

