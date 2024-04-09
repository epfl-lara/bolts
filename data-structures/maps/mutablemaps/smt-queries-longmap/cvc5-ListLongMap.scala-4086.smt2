; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56022 () Bool)

(assert start!56022)

(declare-fun res!396645 () Bool)

(declare-fun e!352994 () Bool)

(assert (=> start!56022 (=> (not res!396645) (not e!352994))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56022 (= res!396645 (validMask!0 mask!3053))))

(assert (=> start!56022 e!352994))

(assert (=> start!56022 true))

(declare-datatypes ((array!37455 0))(
  ( (array!37456 (arr!17970 (Array (_ BitVec 32) (_ BitVec 64))) (size!18334 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37455)

(declare-fun array_inv!13744 (array!37455) Bool)

(assert (=> start!56022 (array_inv!13744 a!2986)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!282992 () array!37455)

(declare-fun res!396652 () Bool)

(declare-fun b!615630 () Bool)

(declare-fun arrayContainsKey!0 (array!37455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615630 (= res!396652 (arrayContainsKey!0 lt!282992 (select (arr!17970 a!2986) j!136) j!136))))

(declare-fun e!352990 () Bool)

(assert (=> b!615630 (=> (not res!396652) (not e!352990))))

(declare-fun e!352984 () Bool)

(assert (=> b!615630 (= e!352984 e!352990)))

(declare-fun b!615631 () Bool)

(declare-fun e!352989 () Bool)

(declare-datatypes ((SeekEntryResult!6417 0))(
  ( (MissingZero!6417 (index!27951 (_ BitVec 32))) (Found!6417 (index!27952 (_ BitVec 32))) (Intermediate!6417 (undefined!7229 Bool) (index!27953 (_ BitVec 32)) (x!56778 (_ BitVec 32))) (Undefined!6417) (MissingVacant!6417 (index!27954 (_ BitVec 32))) )
))
(declare-fun lt!282984 () SeekEntryResult!6417)

(declare-fun lt!282987 () SeekEntryResult!6417)

(assert (=> b!615631 (= e!352989 (= lt!282984 lt!282987))))

(declare-fun b!615632 () Bool)

(declare-fun e!352993 () Bool)

(declare-fun e!352996 () Bool)

(assert (=> b!615632 (= e!352993 e!352996)))

(declare-fun res!396648 () Bool)

(assert (=> b!615632 (=> (not res!396648) (not e!352996))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!615632 (= res!396648 (= (select (store (arr!17970 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615632 (= lt!282992 (array!37456 (store (arr!17970 a!2986) i!1108 k!1786) (size!18334 a!2986)))))

(declare-fun b!615633 () Bool)

(declare-fun e!352988 () Bool)

(assert (=> b!615633 (= e!352996 e!352988)))

(declare-fun res!396646 () Bool)

(assert (=> b!615633 (=> (not res!396646) (not e!352988))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!615633 (= res!396646 (and (= lt!282984 (Found!6417 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17970 a!2986) index!984) (select (arr!17970 a!2986) j!136))) (not (= (select (arr!17970 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37455 (_ BitVec 32)) SeekEntryResult!6417)

(assert (=> b!615633 (= lt!282984 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17970 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615634 () Bool)

(declare-fun res!396654 () Bool)

(assert (=> b!615634 (=> (not res!396654) (not e!352994))))

(assert (=> b!615634 (= res!396654 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615635 () Bool)

(declare-datatypes ((Unit!19990 0))(
  ( (Unit!19991) )
))
(declare-fun e!352991 () Unit!19990)

(declare-fun Unit!19992 () Unit!19990)

(assert (=> b!615635 (= e!352991 Unit!19992)))

(declare-fun b!615636 () Bool)

(declare-fun res!396655 () Bool)

(assert (=> b!615636 (= res!396655 (bvsge j!136 index!984))))

(assert (=> b!615636 (=> res!396655 e!352984)))

(declare-fun e!352995 () Bool)

(assert (=> b!615636 (= e!352995 e!352984)))

(declare-fun b!615637 () Bool)

(assert (=> b!615637 false))

(declare-fun lt!282980 () Unit!19990)

(declare-datatypes ((List!12064 0))(
  ( (Nil!12061) (Cons!12060 (h!13105 (_ BitVec 64)) (t!18300 List!12064)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37455 (_ BitVec 64) (_ BitVec 32) List!12064) Unit!19990)

(assert (=> b!615637 (= lt!282980 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282992 (select (arr!17970 a!2986) j!136) j!136 Nil!12061))))

(declare-fun arrayNoDuplicates!0 (array!37455 (_ BitVec 32) List!12064) Bool)

(assert (=> b!615637 (arrayNoDuplicates!0 lt!282992 j!136 Nil!12061)))

(declare-fun lt!282991 () Unit!19990)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37455 (_ BitVec 32) (_ BitVec 32)) Unit!19990)

(assert (=> b!615637 (= lt!282991 (lemmaNoDuplicateFromThenFromBigger!0 lt!282992 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615637 (arrayNoDuplicates!0 lt!282992 #b00000000000000000000000000000000 Nil!12061)))

(declare-fun lt!282986 () Unit!19990)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37455 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12064) Unit!19990)

(assert (=> b!615637 (= lt!282986 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12061))))

(assert (=> b!615637 (arrayContainsKey!0 lt!282992 (select (arr!17970 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282993 () Unit!19990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37455 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19990)

(assert (=> b!615637 (= lt!282993 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282992 (select (arr!17970 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!352987 () Unit!19990)

(declare-fun Unit!19993 () Unit!19990)

(assert (=> b!615637 (= e!352987 Unit!19993)))

(declare-fun b!615638 () Bool)

(assert (=> b!615638 (= e!352994 e!352993)))

(declare-fun res!396644 () Bool)

(assert (=> b!615638 (=> (not res!396644) (not e!352993))))

(declare-fun lt!282978 () SeekEntryResult!6417)

(assert (=> b!615638 (= res!396644 (or (= lt!282978 (MissingZero!6417 i!1108)) (= lt!282978 (MissingVacant!6417 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37455 (_ BitVec 32)) SeekEntryResult!6417)

(assert (=> b!615638 (= lt!282978 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615639 () Bool)

(declare-fun res!396657 () Bool)

(assert (=> b!615639 (=> (not res!396657) (not e!352993))))

(assert (=> b!615639 (= res!396657 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17970 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615640 () Bool)

(declare-fun Unit!19994 () Unit!19990)

(assert (=> b!615640 (= e!352991 Unit!19994)))

(assert (=> b!615640 false))

(declare-fun b!615641 () Bool)

(declare-fun res!396647 () Bool)

(assert (=> b!615641 (=> (not res!396647) (not e!352994))))

(assert (=> b!615641 (= res!396647 (and (= (size!18334 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18334 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18334 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615642 () Bool)

(assert (=> b!615642 false))

(declare-fun lt!282990 () Unit!19990)

(assert (=> b!615642 (= lt!282990 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282992 (select (arr!17970 a!2986) j!136) index!984 Nil!12061))))

(assert (=> b!615642 (arrayNoDuplicates!0 lt!282992 index!984 Nil!12061)))

(declare-fun lt!282988 () Unit!19990)

(assert (=> b!615642 (= lt!282988 (lemmaNoDuplicateFromThenFromBigger!0 lt!282992 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615642 (arrayNoDuplicates!0 lt!282992 #b00000000000000000000000000000000 Nil!12061)))

(declare-fun lt!282989 () Unit!19990)

(assert (=> b!615642 (= lt!282989 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12061))))

(assert (=> b!615642 (arrayContainsKey!0 lt!282992 (select (arr!17970 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282994 () Unit!19990)

(assert (=> b!615642 (= lt!282994 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282992 (select (arr!17970 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!352983 () Bool)

(assert (=> b!615642 e!352983))

(declare-fun res!396653 () Bool)

(assert (=> b!615642 (=> (not res!396653) (not e!352983))))

(assert (=> b!615642 (= res!396653 (arrayContainsKey!0 lt!282992 (select (arr!17970 a!2986) j!136) j!136))))

(declare-fun e!352986 () Unit!19990)

(declare-fun Unit!19995 () Unit!19990)

(assert (=> b!615642 (= e!352986 Unit!19995)))

(declare-fun b!615643 () Bool)

(declare-fun e!352992 () Unit!19990)

(declare-fun Unit!19996 () Unit!19990)

(assert (=> b!615643 (= e!352992 Unit!19996)))

(declare-fun b!615644 () Bool)

(declare-fun Unit!19997 () Unit!19990)

(assert (=> b!615644 (= e!352987 Unit!19997)))

(declare-fun b!615645 () Bool)

(declare-fun Unit!19998 () Unit!19990)

(assert (=> b!615645 (= e!352992 Unit!19998)))

(declare-fun res!396659 () Bool)

(assert (=> b!615645 (= res!396659 (= (select (store (arr!17970 a!2986) i!1108 k!1786) index!984) (select (arr!17970 a!2986) j!136)))))

(assert (=> b!615645 (=> (not res!396659) (not e!352995))))

(assert (=> b!615645 e!352995))

(declare-fun c!69860 () Bool)

(assert (=> b!615645 (= c!69860 (bvslt j!136 index!984))))

(declare-fun lt!282995 () Unit!19990)

(assert (=> b!615645 (= lt!282995 e!352987)))

(declare-fun c!69862 () Bool)

(assert (=> b!615645 (= c!69862 (bvslt index!984 j!136))))

(declare-fun lt!282996 () Unit!19990)

(assert (=> b!615645 (= lt!282996 e!352986)))

(assert (=> b!615645 false))

(declare-fun b!615646 () Bool)

(declare-fun res!396651 () Bool)

(assert (=> b!615646 (=> (not res!396651) (not e!352994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615646 (= res!396651 (validKeyInArray!0 (select (arr!17970 a!2986) j!136)))))

(declare-fun b!615647 () Bool)

(assert (=> b!615647 (= e!352990 (arrayContainsKey!0 lt!282992 (select (arr!17970 a!2986) j!136) index!984))))

(declare-fun b!615648 () Bool)

(assert (=> b!615648 (= e!352983 (arrayContainsKey!0 lt!282992 (select (arr!17970 a!2986) j!136) index!984))))

(declare-fun b!615649 () Bool)

(declare-fun res!396649 () Bool)

(assert (=> b!615649 (=> (not res!396649) (not e!352994))))

(assert (=> b!615649 (= res!396649 (validKeyInArray!0 k!1786))))

(declare-fun b!615650 () Bool)

(declare-fun res!396650 () Bool)

(assert (=> b!615650 (=> (not res!396650) (not e!352993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37455 (_ BitVec 32)) Bool)

(assert (=> b!615650 (= res!396650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615651 () Bool)

(assert (=> b!615651 (= e!352988 (not true))))

(declare-fun lt!282985 () Unit!19990)

(assert (=> b!615651 (= lt!282985 e!352992)))

(declare-fun c!69861 () Bool)

(declare-fun lt!282982 () SeekEntryResult!6417)

(assert (=> b!615651 (= c!69861 (= lt!282982 (Found!6417 index!984)))))

(declare-fun lt!282981 () Unit!19990)

(assert (=> b!615651 (= lt!282981 e!352991)))

(declare-fun c!69863 () Bool)

(assert (=> b!615651 (= c!69863 (= lt!282982 Undefined!6417))))

(declare-fun lt!282983 () (_ BitVec 64))

(assert (=> b!615651 (= lt!282982 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282983 lt!282992 mask!3053))))

(assert (=> b!615651 e!352989))

(declare-fun res!396656 () Bool)

(assert (=> b!615651 (=> (not res!396656) (not e!352989))))

(declare-fun lt!282979 () (_ BitVec 32))

(assert (=> b!615651 (= res!396656 (= lt!282987 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282979 vacantSpotIndex!68 lt!282983 lt!282992 mask!3053)))))

(assert (=> b!615651 (= lt!282987 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282979 vacantSpotIndex!68 (select (arr!17970 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615651 (= lt!282983 (select (store (arr!17970 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282977 () Unit!19990)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37455 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19990)

(assert (=> b!615651 (= lt!282977 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282979 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615651 (= lt!282979 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615652 () Bool)

(declare-fun Unit!19999 () Unit!19990)

(assert (=> b!615652 (= e!352986 Unit!19999)))

(declare-fun b!615653 () Bool)

(declare-fun res!396658 () Bool)

(assert (=> b!615653 (=> (not res!396658) (not e!352993))))

(assert (=> b!615653 (= res!396658 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12061))))

(assert (= (and start!56022 res!396645) b!615641))

(assert (= (and b!615641 res!396647) b!615646))

(assert (= (and b!615646 res!396651) b!615649))

(assert (= (and b!615649 res!396649) b!615634))

(assert (= (and b!615634 res!396654) b!615638))

(assert (= (and b!615638 res!396644) b!615650))

(assert (= (and b!615650 res!396650) b!615653))

(assert (= (and b!615653 res!396658) b!615639))

(assert (= (and b!615639 res!396657) b!615632))

(assert (= (and b!615632 res!396648) b!615633))

(assert (= (and b!615633 res!396646) b!615651))

(assert (= (and b!615651 res!396656) b!615631))

(assert (= (and b!615651 c!69863) b!615640))

(assert (= (and b!615651 (not c!69863)) b!615635))

(assert (= (and b!615651 c!69861) b!615645))

(assert (= (and b!615651 (not c!69861)) b!615643))

(assert (= (and b!615645 res!396659) b!615636))

(assert (= (and b!615636 (not res!396655)) b!615630))

(assert (= (and b!615630 res!396652) b!615647))

(assert (= (and b!615645 c!69860) b!615637))

(assert (= (and b!615645 (not c!69860)) b!615644))

(assert (= (and b!615645 c!69862) b!615642))

(assert (= (and b!615645 (not c!69862)) b!615652))

(assert (= (and b!615642 res!396653) b!615648))

(declare-fun m!591873 () Bool)

(assert (=> b!615647 m!591873))

(assert (=> b!615647 m!591873))

(declare-fun m!591875 () Bool)

(assert (=> b!615647 m!591875))

(assert (=> b!615637 m!591873))

(declare-fun m!591877 () Bool)

(assert (=> b!615637 m!591877))

(declare-fun m!591879 () Bool)

(assert (=> b!615637 m!591879))

(assert (=> b!615637 m!591873))

(declare-fun m!591881 () Bool)

(assert (=> b!615637 m!591881))

(declare-fun m!591883 () Bool)

(assert (=> b!615637 m!591883))

(assert (=> b!615637 m!591873))

(declare-fun m!591885 () Bool)

(assert (=> b!615637 m!591885))

(assert (=> b!615637 m!591873))

(declare-fun m!591887 () Bool)

(assert (=> b!615637 m!591887))

(declare-fun m!591889 () Bool)

(assert (=> b!615637 m!591889))

(declare-fun m!591891 () Bool)

(assert (=> start!56022 m!591891))

(declare-fun m!591893 () Bool)

(assert (=> start!56022 m!591893))

(declare-fun m!591895 () Bool)

(assert (=> b!615650 m!591895))

(declare-fun m!591897 () Bool)

(assert (=> b!615645 m!591897))

(declare-fun m!591899 () Bool)

(assert (=> b!615645 m!591899))

(assert (=> b!615645 m!591873))

(declare-fun m!591901 () Bool)

(assert (=> b!615651 m!591901))

(declare-fun m!591903 () Bool)

(assert (=> b!615651 m!591903))

(assert (=> b!615651 m!591873))

(declare-fun m!591905 () Bool)

(assert (=> b!615651 m!591905))

(assert (=> b!615651 m!591873))

(declare-fun m!591907 () Bool)

(assert (=> b!615651 m!591907))

(declare-fun m!591909 () Bool)

(assert (=> b!615651 m!591909))

(declare-fun m!591911 () Bool)

(assert (=> b!615651 m!591911))

(assert (=> b!615651 m!591897))

(declare-fun m!591913 () Bool)

(assert (=> b!615639 m!591913))

(declare-fun m!591915 () Bool)

(assert (=> b!615634 m!591915))

(declare-fun m!591917 () Bool)

(assert (=> b!615653 m!591917))

(declare-fun m!591919 () Bool)

(assert (=> b!615638 m!591919))

(assert (=> b!615648 m!591873))

(assert (=> b!615648 m!591873))

(assert (=> b!615648 m!591875))

(assert (=> b!615642 m!591873))

(assert (=> b!615642 m!591873))

(declare-fun m!591921 () Bool)

(assert (=> b!615642 m!591921))

(declare-fun m!591923 () Bool)

(assert (=> b!615642 m!591923))

(assert (=> b!615642 m!591889))

(declare-fun m!591925 () Bool)

(assert (=> b!615642 m!591925))

(assert (=> b!615642 m!591873))

(declare-fun m!591927 () Bool)

(assert (=> b!615642 m!591927))

(assert (=> b!615642 m!591883))

(assert (=> b!615642 m!591873))

(declare-fun m!591929 () Bool)

(assert (=> b!615642 m!591929))

(assert (=> b!615642 m!591873))

(declare-fun m!591931 () Bool)

(assert (=> b!615642 m!591931))

(declare-fun m!591933 () Bool)

(assert (=> b!615649 m!591933))

(assert (=> b!615632 m!591897))

(declare-fun m!591935 () Bool)

(assert (=> b!615632 m!591935))

(assert (=> b!615646 m!591873))

(assert (=> b!615646 m!591873))

(declare-fun m!591937 () Bool)

(assert (=> b!615646 m!591937))

(declare-fun m!591939 () Bool)

(assert (=> b!615633 m!591939))

(assert (=> b!615633 m!591873))

(assert (=> b!615633 m!591873))

(declare-fun m!591941 () Bool)

(assert (=> b!615633 m!591941))

(assert (=> b!615630 m!591873))

(assert (=> b!615630 m!591873))

(assert (=> b!615630 m!591921))

(push 1)

