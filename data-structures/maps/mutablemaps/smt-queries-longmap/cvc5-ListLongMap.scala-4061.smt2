; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55602 () Bool)

(assert start!55602)

(declare-fun b!609006 () Bool)

(declare-fun e!348792 () Bool)

(declare-fun e!348801 () Bool)

(assert (=> b!609006 (= e!348792 (not e!348801))))

(declare-fun res!391741 () Bool)

(assert (=> b!609006 (=> res!391741 e!348801)))

(declare-datatypes ((SeekEntryResult!6342 0))(
  ( (MissingZero!6342 (index!27642 (_ BitVec 32))) (Found!6342 (index!27643 (_ BitVec 32))) (Intermediate!6342 (undefined!7154 Bool) (index!27644 (_ BitVec 32)) (x!56476 (_ BitVec 32))) (Undefined!6342) (MissingVacant!6342 (index!27645 (_ BitVec 32))) )
))
(declare-fun lt!278405 () SeekEntryResult!6342)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!609006 (= res!391741 (not (= lt!278405 (Found!6342 index!984))))))

(declare-datatypes ((Unit!19480 0))(
  ( (Unit!19481) )
))
(declare-fun lt!278406 () Unit!19480)

(declare-fun e!348796 () Unit!19480)

(assert (=> b!609006 (= lt!278406 e!348796)))

(declare-fun c!69002 () Bool)

(assert (=> b!609006 (= c!69002 (= lt!278405 Undefined!6342))))

(declare-fun lt!278404 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37296 0))(
  ( (array!37297 (arr!17895 (Array (_ BitVec 32) (_ BitVec 64))) (size!18259 (_ BitVec 32))) )
))
(declare-fun lt!278402 () array!37296)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37296 (_ BitVec 32)) SeekEntryResult!6342)

(assert (=> b!609006 (= lt!278405 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278404 lt!278402 mask!3053))))

(declare-fun e!348791 () Bool)

(assert (=> b!609006 e!348791))

(declare-fun res!391742 () Bool)

(assert (=> b!609006 (=> (not res!391742) (not e!348791))))

(declare-fun lt!278397 () SeekEntryResult!6342)

(declare-fun lt!278410 () (_ BitVec 32))

(assert (=> b!609006 (= res!391742 (= lt!278397 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278410 vacantSpotIndex!68 lt!278404 lt!278402 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37296)

(assert (=> b!609006 (= lt!278397 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278410 vacantSpotIndex!68 (select (arr!17895 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!609006 (= lt!278404 (select (store (arr!17895 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278407 () Unit!19480)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37296 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19480)

(assert (=> b!609006 (= lt!278407 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278410 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609006 (= lt!278410 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609007 () Bool)

(declare-fun e!348799 () Bool)

(declare-fun e!348789 () Bool)

(assert (=> b!609007 (= e!348799 e!348789)))

(declare-fun res!391751 () Bool)

(assert (=> b!609007 (=> res!391751 e!348789)))

(assert (=> b!609007 (= res!391751 (bvsge index!984 j!136))))

(declare-fun lt!278403 () Unit!19480)

(declare-fun e!348790 () Unit!19480)

(assert (=> b!609007 (= lt!278403 e!348790)))

(declare-fun c!69001 () Bool)

(assert (=> b!609007 (= c!69001 (bvslt j!136 index!984))))

(declare-fun b!609008 () Bool)

(declare-fun e!348795 () Bool)

(declare-fun e!348788 () Bool)

(assert (=> b!609008 (= e!348795 e!348788)))

(declare-fun res!391744 () Bool)

(assert (=> b!609008 (=> (not res!391744) (not e!348788))))

(assert (=> b!609008 (= res!391744 (= (select (store (arr!17895 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609008 (= lt!278402 (array!37297 (store (arr!17895 a!2986) i!1108 k!1786) (size!18259 a!2986)))))

(declare-fun b!609009 () Bool)

(assert (=> b!609009 (= e!348801 e!348799)))

(declare-fun res!391753 () Bool)

(assert (=> b!609009 (=> res!391753 e!348799)))

(declare-fun lt!278411 () (_ BitVec 64))

(assert (=> b!609009 (= res!391753 (or (not (= (select (arr!17895 a!2986) j!136) lt!278404)) (not (= (select (arr!17895 a!2986) j!136) lt!278411))))))

(declare-fun e!348787 () Bool)

(assert (=> b!609009 e!348787))

(declare-fun res!391759 () Bool)

(assert (=> b!609009 (=> (not res!391759) (not e!348787))))

(assert (=> b!609009 (= res!391759 (= lt!278411 (select (arr!17895 a!2986) j!136)))))

(assert (=> b!609009 (= lt!278411 (select (store (arr!17895 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609010 () Bool)

(declare-fun lt!278399 () SeekEntryResult!6342)

(assert (=> b!609010 (= e!348791 (= lt!278399 lt!278397))))

(declare-fun b!609011 () Bool)

(declare-fun e!348802 () Bool)

(declare-fun arrayContainsKey!0 (array!37296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609011 (= e!348802 (arrayContainsKey!0 lt!278402 (select (arr!17895 a!2986) j!136) index!984))))

(declare-fun b!609012 () Bool)

(declare-fun e!348797 () Bool)

(assert (=> b!609012 (= e!348789 e!348797)))

(declare-fun res!391749 () Bool)

(assert (=> b!609012 (=> res!391749 e!348797)))

(assert (=> b!609012 (= res!391749 (or (bvsge (size!18259 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18259 a!2986))))))

(assert (=> b!609012 (arrayContainsKey!0 lt!278402 (select (arr!17895 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278400 () Unit!19480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37296 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19480)

(assert (=> b!609012 (= lt!278400 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278402 (select (arr!17895 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348794 () Bool)

(assert (=> b!609012 e!348794))

(declare-fun res!391760 () Bool)

(assert (=> b!609012 (=> (not res!391760) (not e!348794))))

(assert (=> b!609012 (= res!391760 (arrayContainsKey!0 lt!278402 (select (arr!17895 a!2986) j!136) j!136))))

(declare-fun b!609013 () Bool)

(declare-fun res!391739 () Bool)

(assert (=> b!609013 (=> res!391739 e!348797)))

(declare-datatypes ((List!11989 0))(
  ( (Nil!11986) (Cons!11985 (h!13030 (_ BitVec 64)) (t!18225 List!11989)) )
))
(declare-fun contains!3035 (List!11989 (_ BitVec 64)) Bool)

(assert (=> b!609013 (= res!391739 (contains!3035 Nil!11986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609014 () Bool)

(assert (=> b!609014 (= e!348797 true)))

(declare-fun lt!278412 () Bool)

(assert (=> b!609014 (= lt!278412 (contains!3035 Nil!11986 k!1786))))

(declare-fun b!609015 () Bool)

(declare-fun e!348793 () Bool)

(assert (=> b!609015 (= e!348793 e!348795)))

(declare-fun res!391738 () Bool)

(assert (=> b!609015 (=> (not res!391738) (not e!348795))))

(declare-fun lt!278396 () SeekEntryResult!6342)

(assert (=> b!609015 (= res!391738 (or (= lt!278396 (MissingZero!6342 i!1108)) (= lt!278396 (MissingVacant!6342 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37296 (_ BitVec 32)) SeekEntryResult!6342)

(assert (=> b!609015 (= lt!278396 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609017 () Bool)

(assert (=> b!609017 (= e!348788 e!348792)))

(declare-fun res!391758 () Bool)

(assert (=> b!609017 (=> (not res!391758) (not e!348792))))

(assert (=> b!609017 (= res!391758 (and (= lt!278399 (Found!6342 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17895 a!2986) index!984) (select (arr!17895 a!2986) j!136))) (not (= (select (arr!17895 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609017 (= lt!278399 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17895 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609018 () Bool)

(declare-fun res!391756 () Bool)

(assert (=> b!609018 (=> (not res!391756) (not e!348795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37296 (_ BitVec 32)) Bool)

(assert (=> b!609018 (= res!391756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609019 () Bool)

(declare-fun res!391754 () Bool)

(assert (=> b!609019 (=> res!391754 e!348797)))

(declare-fun noDuplicate!337 (List!11989) Bool)

(assert (=> b!609019 (= res!391754 (not (noDuplicate!337 Nil!11986)))))

(declare-fun b!609020 () Bool)

(declare-fun res!391743 () Bool)

(assert (=> b!609020 (=> (not res!391743) (not e!348793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609020 (= res!391743 (validKeyInArray!0 k!1786))))

(declare-fun b!609021 () Bool)

(declare-fun res!391740 () Bool)

(assert (=> b!609021 (=> (not res!391740) (not e!348793))))

(assert (=> b!609021 (= res!391740 (validKeyInArray!0 (select (arr!17895 a!2986) j!136)))))

(declare-fun b!609022 () Bool)

(declare-fun e!348798 () Bool)

(assert (=> b!609022 (= e!348798 e!348802)))

(declare-fun res!391755 () Bool)

(assert (=> b!609022 (=> (not res!391755) (not e!348802))))

(assert (=> b!609022 (= res!391755 (arrayContainsKey!0 lt!278402 (select (arr!17895 a!2986) j!136) j!136))))

(declare-fun b!609023 () Bool)

(declare-fun Unit!19482 () Unit!19480)

(assert (=> b!609023 (= e!348796 Unit!19482)))

(assert (=> b!609023 false))

(declare-fun b!609024 () Bool)

(declare-fun res!391747 () Bool)

(assert (=> b!609024 (=> (not res!391747) (not e!348795))))

(declare-fun arrayNoDuplicates!0 (array!37296 (_ BitVec 32) List!11989) Bool)

(assert (=> b!609024 (= res!391747 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11986))))

(declare-fun b!609025 () Bool)

(assert (=> b!609025 (= e!348794 (arrayContainsKey!0 lt!278402 (select (arr!17895 a!2986) j!136) index!984))))

(declare-fun b!609026 () Bool)

(declare-fun Unit!19483 () Unit!19480)

(assert (=> b!609026 (= e!348790 Unit!19483)))

(declare-fun lt!278401 () Unit!19480)

(assert (=> b!609026 (= lt!278401 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278402 (select (arr!17895 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609026 (arrayContainsKey!0 lt!278402 (select (arr!17895 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278408 () Unit!19480)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37296 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11989) Unit!19480)

(assert (=> b!609026 (= lt!278408 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11986))))

(assert (=> b!609026 (arrayNoDuplicates!0 lt!278402 #b00000000000000000000000000000000 Nil!11986)))

(declare-fun lt!278409 () Unit!19480)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37296 (_ BitVec 32) (_ BitVec 32)) Unit!19480)

(assert (=> b!609026 (= lt!278409 (lemmaNoDuplicateFromThenFromBigger!0 lt!278402 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609026 (arrayNoDuplicates!0 lt!278402 j!136 Nil!11986)))

(declare-fun lt!278398 () Unit!19480)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37296 (_ BitVec 64) (_ BitVec 32) List!11989) Unit!19480)

(assert (=> b!609026 (= lt!278398 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278402 (select (arr!17895 a!2986) j!136) j!136 Nil!11986))))

(assert (=> b!609026 false))

(declare-fun b!609027 () Bool)

(assert (=> b!609027 (= e!348787 e!348798)))

(declare-fun res!391750 () Bool)

(assert (=> b!609027 (=> res!391750 e!348798)))

(assert (=> b!609027 (= res!391750 (or (not (= (select (arr!17895 a!2986) j!136) lt!278404)) (not (= (select (arr!17895 a!2986) j!136) lt!278411)) (bvsge j!136 index!984)))))

(declare-fun b!609028 () Bool)

(declare-fun res!391746 () Bool)

(assert (=> b!609028 (=> (not res!391746) (not e!348795))))

(assert (=> b!609028 (= res!391746 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17895 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!391748 () Bool)

(assert (=> start!55602 (=> (not res!391748) (not e!348793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55602 (= res!391748 (validMask!0 mask!3053))))

(assert (=> start!55602 e!348793))

(assert (=> start!55602 true))

(declare-fun array_inv!13669 (array!37296) Bool)

(assert (=> start!55602 (array_inv!13669 a!2986)))

(declare-fun b!609016 () Bool)

(declare-fun res!391757 () Bool)

(assert (=> b!609016 (=> (not res!391757) (not e!348793))))

(assert (=> b!609016 (= res!391757 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609029 () Bool)

(declare-fun Unit!19484 () Unit!19480)

(assert (=> b!609029 (= e!348790 Unit!19484)))

(declare-fun b!609030 () Bool)

(declare-fun res!391745 () Bool)

(assert (=> b!609030 (=> res!391745 e!348797)))

(assert (=> b!609030 (= res!391745 (contains!3035 Nil!11986 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609031 () Bool)

(declare-fun Unit!19485 () Unit!19480)

(assert (=> b!609031 (= e!348796 Unit!19485)))

(declare-fun b!609032 () Bool)

(declare-fun res!391752 () Bool)

(assert (=> b!609032 (=> (not res!391752) (not e!348793))))

(assert (=> b!609032 (= res!391752 (and (= (size!18259 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18259 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18259 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55602 res!391748) b!609032))

(assert (= (and b!609032 res!391752) b!609021))

(assert (= (and b!609021 res!391740) b!609020))

(assert (= (and b!609020 res!391743) b!609016))

(assert (= (and b!609016 res!391757) b!609015))

(assert (= (and b!609015 res!391738) b!609018))

(assert (= (and b!609018 res!391756) b!609024))

(assert (= (and b!609024 res!391747) b!609028))

(assert (= (and b!609028 res!391746) b!609008))

(assert (= (and b!609008 res!391744) b!609017))

(assert (= (and b!609017 res!391758) b!609006))

(assert (= (and b!609006 res!391742) b!609010))

(assert (= (and b!609006 c!69002) b!609023))

(assert (= (and b!609006 (not c!69002)) b!609031))

(assert (= (and b!609006 (not res!391741)) b!609009))

(assert (= (and b!609009 res!391759) b!609027))

(assert (= (and b!609027 (not res!391750)) b!609022))

(assert (= (and b!609022 res!391755) b!609011))

(assert (= (and b!609009 (not res!391753)) b!609007))

(assert (= (and b!609007 c!69001) b!609026))

(assert (= (and b!609007 (not c!69001)) b!609029))

(assert (= (and b!609007 (not res!391751)) b!609012))

(assert (= (and b!609012 res!391760) b!609025))

(assert (= (and b!609012 (not res!391749)) b!609019))

(assert (= (and b!609019 (not res!391754)) b!609013))

(assert (= (and b!609013 (not res!391739)) b!609030))

(assert (= (and b!609030 (not res!391745)) b!609014))

(declare-fun m!585597 () Bool)

(assert (=> b!609014 m!585597))

(declare-fun m!585599 () Bool)

(assert (=> b!609013 m!585599))

(declare-fun m!585601 () Bool)

(assert (=> b!609008 m!585601))

(declare-fun m!585603 () Bool)

(assert (=> b!609008 m!585603))

(declare-fun m!585605 () Bool)

(assert (=> b!609016 m!585605))

(declare-fun m!585607 () Bool)

(assert (=> b!609027 m!585607))

(assert (=> b!609011 m!585607))

(assert (=> b!609011 m!585607))

(declare-fun m!585609 () Bool)

(assert (=> b!609011 m!585609))

(declare-fun m!585611 () Bool)

(assert (=> b!609019 m!585611))

(assert (=> b!609021 m!585607))

(assert (=> b!609021 m!585607))

(declare-fun m!585613 () Bool)

(assert (=> b!609021 m!585613))

(declare-fun m!585615 () Bool)

(assert (=> b!609030 m!585615))

(declare-fun m!585617 () Bool)

(assert (=> b!609024 m!585617))

(declare-fun m!585619 () Bool)

(assert (=> b!609028 m!585619))

(declare-fun m!585621 () Bool)

(assert (=> b!609006 m!585621))

(assert (=> b!609006 m!585607))

(assert (=> b!609006 m!585601))

(declare-fun m!585623 () Bool)

(assert (=> b!609006 m!585623))

(declare-fun m!585625 () Bool)

(assert (=> b!609006 m!585625))

(declare-fun m!585627 () Bool)

(assert (=> b!609006 m!585627))

(assert (=> b!609006 m!585607))

(declare-fun m!585629 () Bool)

(assert (=> b!609006 m!585629))

(declare-fun m!585631 () Bool)

(assert (=> b!609006 m!585631))

(declare-fun m!585633 () Bool)

(assert (=> b!609018 m!585633))

(assert (=> b!609026 m!585607))

(declare-fun m!585635 () Bool)

(assert (=> b!609026 m!585635))

(assert (=> b!609026 m!585607))

(declare-fun m!585637 () Bool)

(assert (=> b!609026 m!585637))

(assert (=> b!609026 m!585607))

(declare-fun m!585639 () Bool)

(assert (=> b!609026 m!585639))

(assert (=> b!609026 m!585607))

(declare-fun m!585641 () Bool)

(assert (=> b!609026 m!585641))

(declare-fun m!585643 () Bool)

(assert (=> b!609026 m!585643))

(declare-fun m!585645 () Bool)

(assert (=> b!609026 m!585645))

(declare-fun m!585647 () Bool)

(assert (=> b!609026 m!585647))

(assert (=> b!609012 m!585607))

(assert (=> b!609012 m!585607))

(declare-fun m!585649 () Bool)

(assert (=> b!609012 m!585649))

(assert (=> b!609012 m!585607))

(declare-fun m!585651 () Bool)

(assert (=> b!609012 m!585651))

(assert (=> b!609012 m!585607))

(declare-fun m!585653 () Bool)

(assert (=> b!609012 m!585653))

(declare-fun m!585655 () Bool)

(assert (=> b!609015 m!585655))

(declare-fun m!585657 () Bool)

(assert (=> start!55602 m!585657))

(declare-fun m!585659 () Bool)

(assert (=> start!55602 m!585659))

(assert (=> b!609025 m!585607))

(assert (=> b!609025 m!585607))

(assert (=> b!609025 m!585609))

(declare-fun m!585661 () Bool)

(assert (=> b!609017 m!585661))

(assert (=> b!609017 m!585607))

(assert (=> b!609017 m!585607))

(declare-fun m!585663 () Bool)

(assert (=> b!609017 m!585663))

(assert (=> b!609009 m!585607))

(assert (=> b!609009 m!585601))

(declare-fun m!585665 () Bool)

(assert (=> b!609009 m!585665))

(declare-fun m!585667 () Bool)

(assert (=> b!609020 m!585667))

(assert (=> b!609022 m!585607))

(assert (=> b!609022 m!585607))

(assert (=> b!609022 m!585653))

(push 1)

