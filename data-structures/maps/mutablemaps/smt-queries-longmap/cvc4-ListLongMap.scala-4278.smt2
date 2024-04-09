; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59596 () Bool)

(assert start!59596)

(declare-fun b!657935 () Bool)

(declare-fun e!377972 () Bool)

(declare-fun e!377974 () Bool)

(assert (=> b!657935 (= e!377972 e!377974)))

(declare-fun res!426759 () Bool)

(assert (=> b!657935 (=> (not res!426759) (not e!377974))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38710 0))(
  ( (array!38711 (arr!18548 (Array (_ BitVec 32) (_ BitVec 64))) (size!18912 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38710)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657935 (= res!426759 (= (select (store (arr!18548 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!307587 () array!38710)

(assert (=> b!657935 (= lt!307587 (array!38711 (store (arr!18548 a!2986) i!1108 k!1786) (size!18912 a!2986)))))

(declare-fun b!657936 () Bool)

(declare-fun e!377976 () Bool)

(declare-datatypes ((SeekEntryResult!6995 0))(
  ( (MissingZero!6995 (index!30344 (_ BitVec 32))) (Found!6995 (index!30345 (_ BitVec 32))) (Intermediate!6995 (undefined!7807 Bool) (index!30346 (_ BitVec 32)) (x!59159 (_ BitVec 32))) (Undefined!6995) (MissingVacant!6995 (index!30347 (_ BitVec 32))) )
))
(declare-fun lt!307574 () SeekEntryResult!6995)

(declare-fun lt!307580 () SeekEntryResult!6995)

(assert (=> b!657936 (= e!377976 (= lt!307574 lt!307580))))

(declare-fun b!657937 () Bool)

(declare-fun res!426767 () Bool)

(assert (=> b!657937 (=> (not res!426767) (not e!377972))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38710 (_ BitVec 32)) Bool)

(assert (=> b!657937 (= res!426767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657938 () Bool)

(declare-fun e!377971 () Bool)

(assert (=> b!657938 (= e!377971 true)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!657938 (= (select (store (arr!18548 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657939 () Bool)

(declare-fun e!377978 () Bool)

(assert (=> b!657939 (= e!377978 e!377972)))

(declare-fun res!426761 () Bool)

(assert (=> b!657939 (=> (not res!426761) (not e!377972))))

(declare-fun lt!307568 () SeekEntryResult!6995)

(assert (=> b!657939 (= res!426761 (or (= lt!307568 (MissingZero!6995 i!1108)) (= lt!307568 (MissingVacant!6995 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38710 (_ BitVec 32)) SeekEntryResult!6995)

(assert (=> b!657939 (= lt!307568 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657940 () Bool)

(declare-fun res!426769 () Bool)

(assert (=> b!657940 (=> (not res!426769) (not e!377972))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!657940 (= res!426769 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18548 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657941 () Bool)

(declare-fun e!377979 () Bool)

(assert (=> b!657941 (= e!377974 e!377979)))

(declare-fun res!426765 () Bool)

(assert (=> b!657941 (=> (not res!426765) (not e!377979))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!657941 (= res!426765 (and (= lt!307574 (Found!6995 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18548 a!2986) index!984) (select (arr!18548 a!2986) j!136))) (not (= (select (arr!18548 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38710 (_ BitVec 32)) SeekEntryResult!6995)

(assert (=> b!657941 (= lt!307574 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18548 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657942 () Bool)

(declare-fun res!426770 () Bool)

(assert (=> b!657942 (=> (not res!426770) (not e!377978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657942 (= res!426770 (validKeyInArray!0 (select (arr!18548 a!2986) j!136)))))

(declare-fun res!426773 () Bool)

(assert (=> start!59596 (=> (not res!426773) (not e!377978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59596 (= res!426773 (validMask!0 mask!3053))))

(assert (=> start!59596 e!377978))

(assert (=> start!59596 true))

(declare-fun array_inv!14322 (array!38710) Bool)

(assert (=> start!59596 (array_inv!14322 a!2986)))

(declare-fun b!657943 () Bool)

(assert (=> b!657943 false))

(declare-datatypes ((Unit!22794 0))(
  ( (Unit!22795) )
))
(declare-fun lt!307581 () Unit!22794)

(declare-datatypes ((List!12642 0))(
  ( (Nil!12639) (Cons!12638 (h!13683 (_ BitVec 64)) (t!18878 List!12642)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38710 (_ BitVec 64) (_ BitVec 32) List!12642) Unit!22794)

(assert (=> b!657943 (= lt!307581 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307587 (select (arr!18548 a!2986) j!136) j!136 Nil!12639))))

(declare-fun arrayNoDuplicates!0 (array!38710 (_ BitVec 32) List!12642) Bool)

(assert (=> b!657943 (arrayNoDuplicates!0 lt!307587 j!136 Nil!12639)))

(declare-fun lt!307573 () Unit!22794)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38710 (_ BitVec 32) (_ BitVec 32)) Unit!22794)

(assert (=> b!657943 (= lt!307573 (lemmaNoDuplicateFromThenFromBigger!0 lt!307587 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657943 (arrayNoDuplicates!0 lt!307587 #b00000000000000000000000000000000 Nil!12639)))

(declare-fun lt!307578 () Unit!22794)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38710 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12642) Unit!22794)

(assert (=> b!657943 (= lt!307578 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12639))))

(declare-fun arrayContainsKey!0 (array!38710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657943 (arrayContainsKey!0 lt!307587 (select (arr!18548 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307572 () Unit!22794)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38710 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22794)

(assert (=> b!657943 (= lt!307572 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307587 (select (arr!18548 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377982 () Unit!22794)

(declare-fun Unit!22796 () Unit!22794)

(assert (=> b!657943 (= e!377982 Unit!22796)))

(declare-fun b!657944 () Bool)

(declare-fun res!426772 () Bool)

(assert (=> b!657944 (=> (not res!426772) (not e!377978))))

(assert (=> b!657944 (= res!426772 (validKeyInArray!0 k!1786))))

(declare-fun b!657945 () Bool)

(declare-fun e!377969 () Unit!22794)

(declare-fun Unit!22797 () Unit!22794)

(assert (=> b!657945 (= e!377969 Unit!22797)))

(assert (=> b!657945 false))

(declare-fun b!657946 () Bool)

(declare-fun Unit!22798 () Unit!22794)

(assert (=> b!657946 (= e!377969 Unit!22798)))

(declare-fun b!657947 () Bool)

(assert (=> b!657947 false))

(declare-fun lt!307577 () Unit!22794)

(assert (=> b!657947 (= lt!307577 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307587 (select (arr!18548 a!2986) j!136) index!984 Nil!12639))))

(assert (=> b!657947 (arrayNoDuplicates!0 lt!307587 index!984 Nil!12639)))

(declare-fun lt!307582 () Unit!22794)

(assert (=> b!657947 (= lt!307582 (lemmaNoDuplicateFromThenFromBigger!0 lt!307587 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657947 (arrayNoDuplicates!0 lt!307587 #b00000000000000000000000000000000 Nil!12639)))

(declare-fun lt!307584 () Unit!22794)

(assert (=> b!657947 (= lt!307584 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12639))))

(assert (=> b!657947 (arrayContainsKey!0 lt!307587 (select (arr!18548 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307585 () Unit!22794)

(assert (=> b!657947 (= lt!307585 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307587 (select (arr!18548 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377980 () Bool)

(assert (=> b!657947 e!377980))

(declare-fun res!426763 () Bool)

(assert (=> b!657947 (=> (not res!426763) (not e!377980))))

(assert (=> b!657947 (= res!426763 (arrayContainsKey!0 lt!307587 (select (arr!18548 a!2986) j!136) j!136))))

(declare-fun e!377973 () Unit!22794)

(declare-fun Unit!22799 () Unit!22794)

(assert (=> b!657947 (= e!377973 Unit!22799)))

(declare-fun b!657948 () Bool)

(declare-fun e!377981 () Bool)

(assert (=> b!657948 (= e!377981 (arrayContainsKey!0 lt!307587 (select (arr!18548 a!2986) j!136) index!984))))

(declare-fun b!657949 () Bool)

(declare-fun e!377970 () Unit!22794)

(declare-fun Unit!22800 () Unit!22794)

(assert (=> b!657949 (= e!377970 Unit!22800)))

(declare-fun b!657950 () Bool)

(declare-fun res!426762 () Bool)

(assert (=> b!657950 (= res!426762 (bvsge j!136 index!984))))

(declare-fun e!377977 () Bool)

(assert (=> b!657950 (=> res!426762 e!377977)))

(declare-fun e!377975 () Bool)

(assert (=> b!657950 (= e!377975 e!377977)))

(declare-fun b!657951 () Bool)

(declare-fun Unit!22801 () Unit!22794)

(assert (=> b!657951 (= e!377982 Unit!22801)))

(declare-fun b!657952 () Bool)

(declare-fun res!426768 () Bool)

(assert (=> b!657952 (=> (not res!426768) (not e!377978))))

(assert (=> b!657952 (= res!426768 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657953 () Bool)

(declare-fun Unit!22802 () Unit!22794)

(assert (=> b!657953 (= e!377970 Unit!22802)))

(declare-fun res!426760 () Bool)

(assert (=> b!657953 (= res!426760 (= (select (store (arr!18548 a!2986) i!1108 k!1786) index!984) (select (arr!18548 a!2986) j!136)))))

(assert (=> b!657953 (=> (not res!426760) (not e!377975))))

(assert (=> b!657953 e!377975))

(declare-fun c!75957 () Bool)

(assert (=> b!657953 (= c!75957 (bvslt j!136 index!984))))

(declare-fun lt!307576 () Unit!22794)

(assert (=> b!657953 (= lt!307576 e!377982)))

(declare-fun c!75959 () Bool)

(assert (=> b!657953 (= c!75959 (bvslt index!984 j!136))))

(declare-fun lt!307570 () Unit!22794)

(assert (=> b!657953 (= lt!307570 e!377973)))

(assert (=> b!657953 false))

(declare-fun b!657954 () Bool)

(declare-fun res!426758 () Bool)

(assert (=> b!657954 (=> (not res!426758) (not e!377972))))

(assert (=> b!657954 (= res!426758 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12639))))

(declare-fun b!657955 () Bool)

(declare-fun res!426764 () Bool)

(assert (=> b!657955 (=> (not res!426764) (not e!377978))))

(assert (=> b!657955 (= res!426764 (and (= (size!18912 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18912 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18912 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657956 () Bool)

(declare-fun Unit!22803 () Unit!22794)

(assert (=> b!657956 (= e!377973 Unit!22803)))

(declare-fun b!657957 () Bool)

(assert (=> b!657957 (= e!377980 (arrayContainsKey!0 lt!307587 (select (arr!18548 a!2986) j!136) index!984))))

(declare-fun res!426771 () Bool)

(declare-fun b!657958 () Bool)

(assert (=> b!657958 (= res!426771 (arrayContainsKey!0 lt!307587 (select (arr!18548 a!2986) j!136) j!136))))

(assert (=> b!657958 (=> (not res!426771) (not e!377981))))

(assert (=> b!657958 (= e!377977 e!377981)))

(declare-fun b!657959 () Bool)

(assert (=> b!657959 (= e!377979 (not e!377971))))

(declare-fun res!426757 () Bool)

(assert (=> b!657959 (=> res!426757 e!377971)))

(declare-fun lt!307569 () SeekEntryResult!6995)

(assert (=> b!657959 (= res!426757 (not (= lt!307569 (MissingVacant!6995 vacantSpotIndex!68))))))

(declare-fun lt!307579 () Unit!22794)

(assert (=> b!657959 (= lt!307579 e!377970)))

(declare-fun c!75956 () Bool)

(assert (=> b!657959 (= c!75956 (= lt!307569 (Found!6995 index!984)))))

(declare-fun lt!307571 () Unit!22794)

(assert (=> b!657959 (= lt!307571 e!377969)))

(declare-fun c!75958 () Bool)

(assert (=> b!657959 (= c!75958 (= lt!307569 Undefined!6995))))

(declare-fun lt!307586 () (_ BitVec 64))

(assert (=> b!657959 (= lt!307569 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307586 lt!307587 mask!3053))))

(assert (=> b!657959 e!377976))

(declare-fun res!426766 () Bool)

(assert (=> b!657959 (=> (not res!426766) (not e!377976))))

(declare-fun lt!307575 () (_ BitVec 32))

(assert (=> b!657959 (= res!426766 (= lt!307580 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307575 vacantSpotIndex!68 lt!307586 lt!307587 mask!3053)))))

(assert (=> b!657959 (= lt!307580 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307575 vacantSpotIndex!68 (select (arr!18548 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657959 (= lt!307586 (select (store (arr!18548 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307583 () Unit!22794)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38710 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22794)

(assert (=> b!657959 (= lt!307583 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307575 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657959 (= lt!307575 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!59596 res!426773) b!657955))

(assert (= (and b!657955 res!426764) b!657942))

(assert (= (and b!657942 res!426770) b!657944))

(assert (= (and b!657944 res!426772) b!657952))

(assert (= (and b!657952 res!426768) b!657939))

(assert (= (and b!657939 res!426761) b!657937))

(assert (= (and b!657937 res!426767) b!657954))

(assert (= (and b!657954 res!426758) b!657940))

(assert (= (and b!657940 res!426769) b!657935))

(assert (= (and b!657935 res!426759) b!657941))

(assert (= (and b!657941 res!426765) b!657959))

(assert (= (and b!657959 res!426766) b!657936))

(assert (= (and b!657959 c!75958) b!657945))

(assert (= (and b!657959 (not c!75958)) b!657946))

(assert (= (and b!657959 c!75956) b!657953))

(assert (= (and b!657959 (not c!75956)) b!657949))

(assert (= (and b!657953 res!426760) b!657950))

(assert (= (and b!657950 (not res!426762)) b!657958))

(assert (= (and b!657958 res!426771) b!657948))

(assert (= (and b!657953 c!75957) b!657943))

(assert (= (and b!657953 (not c!75957)) b!657951))

(assert (= (and b!657953 c!75959) b!657947))

(assert (= (and b!657953 (not c!75959)) b!657956))

(assert (= (and b!657947 res!426763) b!657957))

(assert (= (and b!657959 (not res!426757)) b!657938))

(declare-fun m!631001 () Bool)

(assert (=> b!657943 m!631001))

(declare-fun m!631003 () Bool)

(assert (=> b!657943 m!631003))

(assert (=> b!657943 m!631003))

(declare-fun m!631005 () Bool)

(assert (=> b!657943 m!631005))

(assert (=> b!657943 m!631003))

(declare-fun m!631007 () Bool)

(assert (=> b!657943 m!631007))

(declare-fun m!631009 () Bool)

(assert (=> b!657943 m!631009))

(assert (=> b!657943 m!631003))

(declare-fun m!631011 () Bool)

(assert (=> b!657943 m!631011))

(declare-fun m!631013 () Bool)

(assert (=> b!657943 m!631013))

(declare-fun m!631015 () Bool)

(assert (=> b!657943 m!631015))

(assert (=> b!657942 m!631003))

(assert (=> b!657942 m!631003))

(declare-fun m!631017 () Bool)

(assert (=> b!657942 m!631017))

(declare-fun m!631019 () Bool)

(assert (=> b!657938 m!631019))

(declare-fun m!631021 () Bool)

(assert (=> b!657938 m!631021))

(assert (=> b!657947 m!631003))

(declare-fun m!631023 () Bool)

(assert (=> b!657947 m!631023))

(assert (=> b!657947 m!631003))

(assert (=> b!657947 m!631003))

(declare-fun m!631025 () Bool)

(assert (=> b!657947 m!631025))

(assert (=> b!657947 m!631003))

(declare-fun m!631027 () Bool)

(assert (=> b!657947 m!631027))

(declare-fun m!631029 () Bool)

(assert (=> b!657947 m!631029))

(declare-fun m!631031 () Bool)

(assert (=> b!657947 m!631031))

(assert (=> b!657947 m!631003))

(declare-fun m!631033 () Bool)

(assert (=> b!657947 m!631033))

(assert (=> b!657947 m!631013))

(assert (=> b!657947 m!631015))

(assert (=> b!657953 m!631019))

(assert (=> b!657953 m!631021))

(assert (=> b!657953 m!631003))

(assert (=> b!657957 m!631003))

(assert (=> b!657957 m!631003))

(declare-fun m!631035 () Bool)

(assert (=> b!657957 m!631035))

(assert (=> b!657948 m!631003))

(assert (=> b!657948 m!631003))

(assert (=> b!657948 m!631035))

(assert (=> b!657958 m!631003))

(assert (=> b!657958 m!631003))

(assert (=> b!657958 m!631027))

(declare-fun m!631037 () Bool)

(assert (=> b!657941 m!631037))

(assert (=> b!657941 m!631003))

(assert (=> b!657941 m!631003))

(declare-fun m!631039 () Bool)

(assert (=> b!657941 m!631039))

(declare-fun m!631041 () Bool)

(assert (=> b!657939 m!631041))

(declare-fun m!631043 () Bool)

(assert (=> start!59596 m!631043))

(declare-fun m!631045 () Bool)

(assert (=> start!59596 m!631045))

(declare-fun m!631047 () Bool)

(assert (=> b!657944 m!631047))

(declare-fun m!631049 () Bool)

(assert (=> b!657954 m!631049))

(declare-fun m!631051 () Bool)

(assert (=> b!657952 m!631051))

(declare-fun m!631053 () Bool)

(assert (=> b!657937 m!631053))

(declare-fun m!631055 () Bool)

(assert (=> b!657959 m!631055))

(declare-fun m!631057 () Bool)

(assert (=> b!657959 m!631057))

(assert (=> b!657959 m!631003))

(declare-fun m!631059 () Bool)

(assert (=> b!657959 m!631059))

(assert (=> b!657959 m!631003))

(assert (=> b!657959 m!631019))

(declare-fun m!631061 () Bool)

(assert (=> b!657959 m!631061))

(declare-fun m!631063 () Bool)

(assert (=> b!657959 m!631063))

(declare-fun m!631065 () Bool)

(assert (=> b!657959 m!631065))

(declare-fun m!631067 () Bool)

(assert (=> b!657940 m!631067))

(assert (=> b!657935 m!631019))

(declare-fun m!631069 () Bool)

(assert (=> b!657935 m!631069))

(push 1)

(assert (not b!657941))

(assert (not b!657944))

(assert (not b!657939))

(assert (not b!657952))

(assert (not b!657959))

(assert (not b!657958))

(assert (not b!657937))

(assert (not b!657957))

(assert (not b!657947))

(assert (not b!657954))

(assert (not b!657942))

(assert (not b!657943))

(assert (not b!657948))

(assert (not start!59596))

(check-sat)

(pop 1)

