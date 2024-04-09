; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56018 () Bool)

(assert start!56018)

(declare-fun b!615486 () Bool)

(declare-fun e!352910 () Bool)

(declare-datatypes ((SeekEntryResult!6415 0))(
  ( (MissingZero!6415 (index!27943 (_ BitVec 32))) (Found!6415 (index!27944 (_ BitVec 32))) (Intermediate!6415 (undefined!7227 Bool) (index!27945 (_ BitVec 32)) (x!56768 (_ BitVec 32))) (Undefined!6415) (MissingVacant!6415 (index!27946 (_ BitVec 32))) )
))
(declare-fun lt!282870 () SeekEntryResult!6415)

(declare-fun lt!282859 () SeekEntryResult!6415)

(assert (=> b!615486 (= e!352910 (= lt!282870 lt!282859))))

(declare-fun b!615487 () Bool)

(declare-datatypes ((Unit!19970 0))(
  ( (Unit!19971) )
))
(declare-fun e!352905 () Unit!19970)

(declare-fun Unit!19972 () Unit!19970)

(assert (=> b!615487 (= e!352905 Unit!19972)))

(declare-fun b!615488 () Bool)

(declare-fun res!396561 () Bool)

(declare-fun e!352904 () Bool)

(assert (=> b!615488 (=> (not res!396561) (not e!352904))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37451 0))(
  ( (array!37452 (arr!17968 (Array (_ BitVec 32) (_ BitVec 64))) (size!18332 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37451)

(assert (=> b!615488 (= res!396561 (and (= (size!18332 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18332 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18332 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615489 () Bool)

(declare-fun res!396550 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!615489 (= res!396550 (bvsge j!136 index!984))))

(declare-fun e!352912 () Bool)

(assert (=> b!615489 (=> res!396550 e!352912)))

(declare-fun e!352909 () Bool)

(assert (=> b!615489 (= e!352909 e!352912)))

(declare-fun b!615490 () Bool)

(declare-fun e!352900 () Unit!19970)

(declare-fun Unit!19973 () Unit!19970)

(assert (=> b!615490 (= e!352900 Unit!19973)))

(declare-fun res!396554 () Bool)

(declare-fun lt!282876 () array!37451)

(declare-fun b!615492 () Bool)

(declare-fun arrayContainsKey!0 (array!37451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615492 (= res!396554 (arrayContainsKey!0 lt!282876 (select (arr!17968 a!2986) j!136) j!136))))

(declare-fun e!352906 () Bool)

(assert (=> b!615492 (=> (not res!396554) (not e!352906))))

(assert (=> b!615492 (= e!352912 e!352906)))

(declare-fun b!615493 () Bool)

(declare-fun e!352901 () Bool)

(assert (=> b!615493 (= e!352901 (arrayContainsKey!0 lt!282876 (select (arr!17968 a!2986) j!136) index!984))))

(declare-fun b!615494 () Bool)

(assert (=> b!615494 (= e!352906 (arrayContainsKey!0 lt!282876 (select (arr!17968 a!2986) j!136) index!984))))

(declare-fun b!615495 () Bool)

(declare-fun res!396558 () Bool)

(assert (=> b!615495 (=> (not res!396558) (not e!352904))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615495 (= res!396558 (validKeyInArray!0 (select (arr!17968 a!2986) j!136)))))

(declare-fun b!615496 () Bool)

(assert (=> b!615496 false))

(declare-fun lt!282862 () Unit!19970)

(declare-datatypes ((List!12062 0))(
  ( (Nil!12059) (Cons!12058 (h!13103 (_ BitVec 64)) (t!18298 List!12062)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37451 (_ BitVec 64) (_ BitVec 32) List!12062) Unit!19970)

(assert (=> b!615496 (= lt!282862 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282876 (select (arr!17968 a!2986) j!136) index!984 Nil!12059))))

(declare-fun arrayNoDuplicates!0 (array!37451 (_ BitVec 32) List!12062) Bool)

(assert (=> b!615496 (arrayNoDuplicates!0 lt!282876 index!984 Nil!12059)))

(declare-fun lt!282868 () Unit!19970)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37451 (_ BitVec 32) (_ BitVec 32)) Unit!19970)

(assert (=> b!615496 (= lt!282868 (lemmaNoDuplicateFromThenFromBigger!0 lt!282876 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615496 (arrayNoDuplicates!0 lt!282876 #b00000000000000000000000000000000 Nil!12059)))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!282865 () Unit!19970)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37451 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12062) Unit!19970)

(assert (=> b!615496 (= lt!282865 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12059))))

(assert (=> b!615496 (arrayContainsKey!0 lt!282876 (select (arr!17968 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282861 () Unit!19970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37451 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19970)

(assert (=> b!615496 (= lt!282861 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282876 (select (arr!17968 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615496 e!352901))

(declare-fun res!396556 () Bool)

(assert (=> b!615496 (=> (not res!396556) (not e!352901))))

(assert (=> b!615496 (= res!396556 (arrayContainsKey!0 lt!282876 (select (arr!17968 a!2986) j!136) j!136))))

(declare-fun Unit!19974 () Unit!19970)

(assert (=> b!615496 (= e!352905 Unit!19974)))

(declare-fun b!615497 () Bool)

(declare-fun e!352908 () Unit!19970)

(declare-fun Unit!19975 () Unit!19970)

(assert (=> b!615497 (= e!352908 Unit!19975)))

(declare-fun res!396560 () Bool)

(assert (=> b!615497 (= res!396560 (= (select (store (arr!17968 a!2986) i!1108 k0!1786) index!984) (select (arr!17968 a!2986) j!136)))))

(assert (=> b!615497 (=> (not res!396560) (not e!352909))))

(assert (=> b!615497 e!352909))

(declare-fun c!69838 () Bool)

(assert (=> b!615497 (= c!69838 (bvslt j!136 index!984))))

(declare-fun lt!282866 () Unit!19970)

(declare-fun e!352903 () Unit!19970)

(assert (=> b!615497 (= lt!282866 e!352903)))

(declare-fun c!69837 () Bool)

(assert (=> b!615497 (= c!69837 (bvslt index!984 j!136))))

(declare-fun lt!282873 () Unit!19970)

(assert (=> b!615497 (= lt!282873 e!352905)))

(assert (=> b!615497 false))

(declare-fun b!615498 () Bool)

(declare-fun Unit!19976 () Unit!19970)

(assert (=> b!615498 (= e!352903 Unit!19976)))

(declare-fun b!615499 () Bool)

(declare-fun res!396555 () Bool)

(declare-fun e!352899 () Bool)

(assert (=> b!615499 (=> (not res!396555) (not e!352899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37451 (_ BitVec 32)) Bool)

(assert (=> b!615499 (= res!396555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!396553 () Bool)

(assert (=> start!56018 (=> (not res!396553) (not e!352904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56018 (= res!396553 (validMask!0 mask!3053))))

(assert (=> start!56018 e!352904))

(assert (=> start!56018 true))

(declare-fun array_inv!13742 (array!37451) Bool)

(assert (=> start!56018 (array_inv!13742 a!2986)))

(declare-fun b!615491 () Bool)

(declare-fun res!396557 () Bool)

(assert (=> b!615491 (=> (not res!396557) (not e!352904))))

(assert (=> b!615491 (= res!396557 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615500 () Bool)

(declare-fun res!396549 () Bool)

(assert (=> b!615500 (=> (not res!396549) (not e!352904))))

(assert (=> b!615500 (= res!396549 (validKeyInArray!0 k0!1786))))

(declare-fun b!615501 () Bool)

(declare-fun e!352911 () Bool)

(assert (=> b!615501 (= e!352911 (not true))))

(declare-fun lt!282858 () Unit!19970)

(assert (=> b!615501 (= lt!282858 e!352908)))

(declare-fun c!69836 () Bool)

(declare-fun lt!282864 () SeekEntryResult!6415)

(assert (=> b!615501 (= c!69836 (= lt!282864 (Found!6415 index!984)))))

(declare-fun lt!282863 () Unit!19970)

(assert (=> b!615501 (= lt!282863 e!352900)))

(declare-fun c!69839 () Bool)

(assert (=> b!615501 (= c!69839 (= lt!282864 Undefined!6415))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!282871 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37451 (_ BitVec 32)) SeekEntryResult!6415)

(assert (=> b!615501 (= lt!282864 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282871 lt!282876 mask!3053))))

(assert (=> b!615501 e!352910))

(declare-fun res!396562 () Bool)

(assert (=> b!615501 (=> (not res!396562) (not e!352910))))

(declare-fun lt!282874 () (_ BitVec 32))

(assert (=> b!615501 (= res!396562 (= lt!282859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282874 vacantSpotIndex!68 lt!282871 lt!282876 mask!3053)))))

(assert (=> b!615501 (= lt!282859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282874 vacantSpotIndex!68 (select (arr!17968 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615501 (= lt!282871 (select (store (arr!17968 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!282872 () Unit!19970)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19970)

(assert (=> b!615501 (= lt!282872 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282874 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615501 (= lt!282874 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615502 () Bool)

(declare-fun Unit!19977 () Unit!19970)

(assert (=> b!615502 (= e!352908 Unit!19977)))

(declare-fun b!615503 () Bool)

(assert (=> b!615503 false))

(declare-fun lt!282867 () Unit!19970)

(assert (=> b!615503 (= lt!282867 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282876 (select (arr!17968 a!2986) j!136) j!136 Nil!12059))))

(assert (=> b!615503 (arrayNoDuplicates!0 lt!282876 j!136 Nil!12059)))

(declare-fun lt!282857 () Unit!19970)

(assert (=> b!615503 (= lt!282857 (lemmaNoDuplicateFromThenFromBigger!0 lt!282876 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615503 (arrayNoDuplicates!0 lt!282876 #b00000000000000000000000000000000 Nil!12059)))

(declare-fun lt!282860 () Unit!19970)

(assert (=> b!615503 (= lt!282860 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12059))))

(assert (=> b!615503 (arrayContainsKey!0 lt!282876 (select (arr!17968 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282875 () Unit!19970)

(assert (=> b!615503 (= lt!282875 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282876 (select (arr!17968 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19978 () Unit!19970)

(assert (=> b!615503 (= e!352903 Unit!19978)))

(declare-fun b!615504 () Bool)

(assert (=> b!615504 (= e!352904 e!352899)))

(declare-fun res!396563 () Bool)

(assert (=> b!615504 (=> (not res!396563) (not e!352899))))

(declare-fun lt!282869 () SeekEntryResult!6415)

(assert (=> b!615504 (= res!396563 (or (= lt!282869 (MissingZero!6415 i!1108)) (= lt!282869 (MissingVacant!6415 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37451 (_ BitVec 32)) SeekEntryResult!6415)

(assert (=> b!615504 (= lt!282869 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!615505 () Bool)

(declare-fun res!396559 () Bool)

(assert (=> b!615505 (=> (not res!396559) (not e!352899))))

(assert (=> b!615505 (= res!396559 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17968 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615506 () Bool)

(declare-fun e!352902 () Bool)

(assert (=> b!615506 (= e!352899 e!352902)))

(declare-fun res!396552 () Bool)

(assert (=> b!615506 (=> (not res!396552) (not e!352902))))

(assert (=> b!615506 (= res!396552 (= (select (store (arr!17968 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615506 (= lt!282876 (array!37452 (store (arr!17968 a!2986) i!1108 k0!1786) (size!18332 a!2986)))))

(declare-fun b!615507 () Bool)

(declare-fun Unit!19979 () Unit!19970)

(assert (=> b!615507 (= e!352900 Unit!19979)))

(assert (=> b!615507 false))

(declare-fun b!615508 () Bool)

(assert (=> b!615508 (= e!352902 e!352911)))

(declare-fun res!396551 () Bool)

(assert (=> b!615508 (=> (not res!396551) (not e!352911))))

(assert (=> b!615508 (= res!396551 (and (= lt!282870 (Found!6415 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17968 a!2986) index!984) (select (arr!17968 a!2986) j!136))) (not (= (select (arr!17968 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!615508 (= lt!282870 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17968 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615509 () Bool)

(declare-fun res!396548 () Bool)

(assert (=> b!615509 (=> (not res!396548) (not e!352899))))

(assert (=> b!615509 (= res!396548 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12059))))

(assert (= (and start!56018 res!396553) b!615488))

(assert (= (and b!615488 res!396561) b!615495))

(assert (= (and b!615495 res!396558) b!615500))

(assert (= (and b!615500 res!396549) b!615491))

(assert (= (and b!615491 res!396557) b!615504))

(assert (= (and b!615504 res!396563) b!615499))

(assert (= (and b!615499 res!396555) b!615509))

(assert (= (and b!615509 res!396548) b!615505))

(assert (= (and b!615505 res!396559) b!615506))

(assert (= (and b!615506 res!396552) b!615508))

(assert (= (and b!615508 res!396551) b!615501))

(assert (= (and b!615501 res!396562) b!615486))

(assert (= (and b!615501 c!69839) b!615507))

(assert (= (and b!615501 (not c!69839)) b!615490))

(assert (= (and b!615501 c!69836) b!615497))

(assert (= (and b!615501 (not c!69836)) b!615502))

(assert (= (and b!615497 res!396560) b!615489))

(assert (= (and b!615489 (not res!396550)) b!615492))

(assert (= (and b!615492 res!396554) b!615494))

(assert (= (and b!615497 c!69838) b!615503))

(assert (= (and b!615497 (not c!69838)) b!615498))

(assert (= (and b!615497 c!69837) b!615496))

(assert (= (and b!615497 (not c!69837)) b!615487))

(assert (= (and b!615496 res!396556) b!615493))

(declare-fun m!591733 () Bool)

(assert (=> b!615503 m!591733))

(declare-fun m!591735 () Bool)

(assert (=> b!615503 m!591735))

(assert (=> b!615503 m!591735))

(declare-fun m!591737 () Bool)

(assert (=> b!615503 m!591737))

(declare-fun m!591739 () Bool)

(assert (=> b!615503 m!591739))

(assert (=> b!615503 m!591735))

(declare-fun m!591741 () Bool)

(assert (=> b!615503 m!591741))

(declare-fun m!591743 () Bool)

(assert (=> b!615503 m!591743))

(assert (=> b!615503 m!591735))

(declare-fun m!591745 () Bool)

(assert (=> b!615503 m!591745))

(declare-fun m!591747 () Bool)

(assert (=> b!615503 m!591747))

(declare-fun m!591749 () Bool)

(assert (=> b!615491 m!591749))

(declare-fun m!591751 () Bool)

(assert (=> b!615501 m!591751))

(declare-fun m!591753 () Bool)

(assert (=> b!615501 m!591753))

(declare-fun m!591755 () Bool)

(assert (=> b!615501 m!591755))

(declare-fun m!591757 () Bool)

(assert (=> b!615501 m!591757))

(declare-fun m!591759 () Bool)

(assert (=> b!615501 m!591759))

(declare-fun m!591761 () Bool)

(assert (=> b!615501 m!591761))

(assert (=> b!615501 m!591735))

(declare-fun m!591763 () Bool)

(assert (=> b!615501 m!591763))

(assert (=> b!615501 m!591735))

(declare-fun m!591765 () Bool)

(assert (=> start!56018 m!591765))

(declare-fun m!591767 () Bool)

(assert (=> start!56018 m!591767))

(declare-fun m!591769 () Bool)

(assert (=> b!615500 m!591769))

(declare-fun m!591771 () Bool)

(assert (=> b!615505 m!591771))

(declare-fun m!591773 () Bool)

(assert (=> b!615508 m!591773))

(assert (=> b!615508 m!591735))

(assert (=> b!615508 m!591735))

(declare-fun m!591775 () Bool)

(assert (=> b!615508 m!591775))

(assert (=> b!615495 m!591735))

(assert (=> b!615495 m!591735))

(declare-fun m!591777 () Bool)

(assert (=> b!615495 m!591777))

(assert (=> b!615496 m!591733))

(assert (=> b!615496 m!591735))

(assert (=> b!615496 m!591735))

(declare-fun m!591779 () Bool)

(assert (=> b!615496 m!591779))

(declare-fun m!591781 () Bool)

(assert (=> b!615496 m!591781))

(assert (=> b!615496 m!591735))

(declare-fun m!591783 () Bool)

(assert (=> b!615496 m!591783))

(assert (=> b!615496 m!591735))

(declare-fun m!591785 () Bool)

(assert (=> b!615496 m!591785))

(assert (=> b!615496 m!591747))

(declare-fun m!591787 () Bool)

(assert (=> b!615496 m!591787))

(assert (=> b!615496 m!591735))

(declare-fun m!591789 () Bool)

(assert (=> b!615496 m!591789))

(declare-fun m!591791 () Bool)

(assert (=> b!615499 m!591791))

(assert (=> b!615493 m!591735))

(assert (=> b!615493 m!591735))

(declare-fun m!591793 () Bool)

(assert (=> b!615493 m!591793))

(assert (=> b!615492 m!591735))

(assert (=> b!615492 m!591735))

(assert (=> b!615492 m!591783))

(assert (=> b!615494 m!591735))

(assert (=> b!615494 m!591735))

(assert (=> b!615494 m!591793))

(assert (=> b!615506 m!591755))

(declare-fun m!591795 () Bool)

(assert (=> b!615506 m!591795))

(declare-fun m!591797 () Bool)

(assert (=> b!615509 m!591797))

(assert (=> b!615497 m!591755))

(declare-fun m!591799 () Bool)

(assert (=> b!615497 m!591799))

(assert (=> b!615497 m!591735))

(declare-fun m!591801 () Bool)

(assert (=> b!615504 m!591801))

(check-sat (not b!615499) (not b!615496) (not start!56018) (not b!615501) (not b!615503) (not b!615500) (not b!615494) (not b!615493) (not b!615509) (not b!615491) (not b!615495) (not b!615508) (not b!615504) (not b!615492))
(check-sat)
