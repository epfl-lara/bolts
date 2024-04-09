; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55150 () Bool)

(assert start!55150)

(declare-fun b!603865 () Bool)

(declare-fun e!345507 () Bool)

(declare-fun e!345501 () Bool)

(assert (=> b!603865 (= e!345507 e!345501)))

(declare-fun res!388027 () Bool)

(assert (=> b!603865 (=> res!388027 e!345501)))

(declare-fun lt!275365 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37186 0))(
  ( (array!37187 (arr!17846 (Array (_ BitVec 32) (_ BitVec 64))) (size!18210 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37186)

(declare-fun lt!275374 () (_ BitVec 64))

(assert (=> b!603865 (= res!388027 (or (not (= (select (arr!17846 a!2986) j!136) lt!275374)) (not (= (select (arr!17846 a!2986) j!136) lt!275365))))))

(declare-fun e!345514 () Bool)

(assert (=> b!603865 e!345514))

(declare-fun res!388038 () Bool)

(assert (=> b!603865 (=> (not res!388038) (not e!345514))))

(assert (=> b!603865 (= res!388038 (= lt!275365 (select (arr!17846 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!603865 (= lt!275365 (select (store (arr!17846 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603866 () Bool)

(declare-fun e!345511 () Bool)

(declare-fun e!345505 () Bool)

(assert (=> b!603866 (= e!345511 e!345505)))

(declare-fun res!388043 () Bool)

(assert (=> b!603866 (=> (not res!388043) (not e!345505))))

(declare-datatypes ((SeekEntryResult!6293 0))(
  ( (MissingZero!6293 (index!27434 (_ BitVec 32))) (Found!6293 (index!27435 (_ BitVec 32))) (Intermediate!6293 (undefined!7105 Bool) (index!27436 (_ BitVec 32)) (x!56255 (_ BitVec 32))) (Undefined!6293) (MissingVacant!6293 (index!27437 (_ BitVec 32))) )
))
(declare-fun lt!275363 () SeekEntryResult!6293)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!603866 (= res!388043 (and (= lt!275363 (Found!6293 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17846 a!2986) index!984) (select (arr!17846 a!2986) j!136))) (not (= (select (arr!17846 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37186 (_ BitVec 32)) SeekEntryResult!6293)

(assert (=> b!603866 (= lt!275363 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17846 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603867 () Bool)

(declare-datatypes ((Unit!19186 0))(
  ( (Unit!19187) )
))
(declare-fun e!345509 () Unit!19186)

(declare-fun Unit!19188 () Unit!19186)

(assert (=> b!603867 (= e!345509 Unit!19188)))

(assert (=> b!603867 false))

(declare-fun b!603868 () Bool)

(declare-fun res!388033 () Bool)

(declare-fun e!345508 () Bool)

(assert (=> b!603868 (=> (not res!388033) (not e!345508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603868 (= res!388033 (validKeyInArray!0 k!1786))))

(declare-fun b!603869 () Bool)

(declare-fun res!388026 () Bool)

(declare-fun e!345504 () Bool)

(assert (=> b!603869 (=> (not res!388026) (not e!345504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37186 (_ BitVec 32)) Bool)

(assert (=> b!603869 (= res!388026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603870 () Bool)

(declare-fun res!388039 () Bool)

(assert (=> b!603870 (=> (not res!388039) (not e!345508))))

(assert (=> b!603870 (= res!388039 (validKeyInArray!0 (select (arr!17846 a!2986) j!136)))))

(declare-fun b!603871 () Bool)

(declare-fun res!388028 () Bool)

(assert (=> b!603871 (=> (not res!388028) (not e!345508))))

(declare-fun arrayContainsKey!0 (array!37186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603871 (= res!388028 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603872 () Bool)

(declare-fun res!388037 () Bool)

(assert (=> b!603872 (=> (not res!388037) (not e!345504))))

(assert (=> b!603872 (= res!388037 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17846 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603873 () Bool)

(assert (=> b!603873 (= e!345505 (not e!345507))))

(declare-fun res!388041 () Bool)

(assert (=> b!603873 (=> res!388041 e!345507)))

(declare-fun lt!275372 () SeekEntryResult!6293)

(assert (=> b!603873 (= res!388041 (not (= lt!275372 (Found!6293 index!984))))))

(declare-fun lt!275376 () Unit!19186)

(assert (=> b!603873 (= lt!275376 e!345509)))

(declare-fun c!68288 () Bool)

(assert (=> b!603873 (= c!68288 (= lt!275372 Undefined!6293))))

(declare-fun lt!275375 () array!37186)

(assert (=> b!603873 (= lt!275372 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275374 lt!275375 mask!3053))))

(declare-fun e!345503 () Bool)

(assert (=> b!603873 e!345503))

(declare-fun res!388025 () Bool)

(assert (=> b!603873 (=> (not res!388025) (not e!345503))))

(declare-fun lt!275366 () SeekEntryResult!6293)

(declare-fun lt!275370 () (_ BitVec 32))

(assert (=> b!603873 (= res!388025 (= lt!275366 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275370 vacantSpotIndex!68 lt!275374 lt!275375 mask!3053)))))

(assert (=> b!603873 (= lt!275366 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275370 vacantSpotIndex!68 (select (arr!17846 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603873 (= lt!275374 (select (store (arr!17846 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275373 () Unit!19186)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37186 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19186)

(assert (=> b!603873 (= lt!275373 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275370 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603873 (= lt!275370 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603874 () Bool)

(assert (=> b!603874 (= e!345508 e!345504)))

(declare-fun res!388030 () Bool)

(assert (=> b!603874 (=> (not res!388030) (not e!345504))))

(declare-fun lt!275371 () SeekEntryResult!6293)

(assert (=> b!603874 (= res!388030 (or (= lt!275371 (MissingZero!6293 i!1108)) (= lt!275371 (MissingVacant!6293 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37186 (_ BitVec 32)) SeekEntryResult!6293)

(assert (=> b!603874 (= lt!275371 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603875 () Bool)

(declare-fun e!345512 () Bool)

(assert (=> b!603875 (= e!345514 e!345512)))

(declare-fun res!388034 () Bool)

(assert (=> b!603875 (=> res!388034 e!345512)))

(assert (=> b!603875 (= res!388034 (or (not (= (select (arr!17846 a!2986) j!136) lt!275374)) (not (= (select (arr!17846 a!2986) j!136) lt!275365)) (bvsge j!136 index!984)))))

(declare-fun b!603876 () Bool)

(declare-fun e!345500 () Bool)

(assert (=> b!603876 (= e!345512 e!345500)))

(declare-fun res!388035 () Bool)

(assert (=> b!603876 (=> (not res!388035) (not e!345500))))

(assert (=> b!603876 (= res!388035 (arrayContainsKey!0 lt!275375 (select (arr!17846 a!2986) j!136) j!136))))

(declare-fun b!603877 () Bool)

(declare-fun e!345513 () Unit!19186)

(declare-fun Unit!19189 () Unit!19186)

(assert (=> b!603877 (= e!345513 Unit!19189)))

(declare-fun lt!275362 () Unit!19186)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37186 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19186)

(assert (=> b!603877 (= lt!275362 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275375 (select (arr!17846 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603877 (arrayContainsKey!0 lt!275375 (select (arr!17846 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275367 () Unit!19186)

(declare-datatypes ((List!11940 0))(
  ( (Nil!11937) (Cons!11936 (h!12981 (_ BitVec 64)) (t!18176 List!11940)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37186 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11940) Unit!19186)

(assert (=> b!603877 (= lt!275367 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11937))))

(declare-fun arrayNoDuplicates!0 (array!37186 (_ BitVec 32) List!11940) Bool)

(assert (=> b!603877 (arrayNoDuplicates!0 lt!275375 #b00000000000000000000000000000000 Nil!11937)))

(declare-fun lt!275369 () Unit!19186)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37186 (_ BitVec 32) (_ BitVec 32)) Unit!19186)

(assert (=> b!603877 (= lt!275369 (lemmaNoDuplicateFromThenFromBigger!0 lt!275375 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603877 (arrayNoDuplicates!0 lt!275375 j!136 Nil!11937)))

(declare-fun lt!275368 () Unit!19186)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37186 (_ BitVec 64) (_ BitVec 32) List!11940) Unit!19186)

(assert (=> b!603877 (= lt!275368 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275375 (select (arr!17846 a!2986) j!136) j!136 Nil!11937))))

(assert (=> b!603877 false))

(declare-fun b!603878 () Bool)

(assert (=> b!603878 (= e!345500 (arrayContainsKey!0 lt!275375 (select (arr!17846 a!2986) j!136) index!984))))

(declare-fun e!345506 () Bool)

(declare-fun b!603879 () Bool)

(assert (=> b!603879 (= e!345506 (arrayContainsKey!0 lt!275375 (select (arr!17846 a!2986) j!136) index!984))))

(declare-fun res!388031 () Bool)

(assert (=> start!55150 (=> (not res!388031) (not e!345508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55150 (= res!388031 (validMask!0 mask!3053))))

(assert (=> start!55150 e!345508))

(assert (=> start!55150 true))

(declare-fun array_inv!13620 (array!37186) Bool)

(assert (=> start!55150 (array_inv!13620 a!2986)))

(declare-fun b!603880 () Bool)

(assert (=> b!603880 (= e!345504 e!345511)))

(declare-fun res!388042 () Bool)

(assert (=> b!603880 (=> (not res!388042) (not e!345511))))

(assert (=> b!603880 (= res!388042 (= (select (store (arr!17846 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603880 (= lt!275375 (array!37187 (store (arr!17846 a!2986) i!1108 k!1786) (size!18210 a!2986)))))

(declare-fun b!603881 () Bool)

(declare-fun e!345502 () Bool)

(assert (=> b!603881 (= e!345501 e!345502)))

(declare-fun res!388029 () Bool)

(assert (=> b!603881 (=> res!388029 e!345502)))

(assert (=> b!603881 (= res!388029 (bvsge index!984 j!136))))

(declare-fun lt!275364 () Unit!19186)

(assert (=> b!603881 (= lt!275364 e!345513)))

(declare-fun c!68287 () Bool)

(assert (=> b!603881 (= c!68287 (bvslt j!136 index!984))))

(declare-fun b!603882 () Bool)

(assert (=> b!603882 (= e!345503 (= lt!275363 lt!275366))))

(declare-fun b!603883 () Bool)

(assert (=> b!603883 (= e!345502 true)))

(assert (=> b!603883 e!345506))

(declare-fun res!388040 () Bool)

(assert (=> b!603883 (=> (not res!388040) (not e!345506))))

(assert (=> b!603883 (= res!388040 (arrayContainsKey!0 lt!275375 (select (arr!17846 a!2986) j!136) j!136))))

(declare-fun b!603884 () Bool)

(declare-fun Unit!19190 () Unit!19186)

(assert (=> b!603884 (= e!345513 Unit!19190)))

(declare-fun b!603885 () Bool)

(declare-fun Unit!19191 () Unit!19186)

(assert (=> b!603885 (= e!345509 Unit!19191)))

(declare-fun b!603886 () Bool)

(declare-fun res!388036 () Bool)

(assert (=> b!603886 (=> (not res!388036) (not e!345504))))

(assert (=> b!603886 (= res!388036 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11937))))

(declare-fun b!603887 () Bool)

(declare-fun res!388032 () Bool)

(assert (=> b!603887 (=> (not res!388032) (not e!345508))))

(assert (=> b!603887 (= res!388032 (and (= (size!18210 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18210 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18210 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55150 res!388031) b!603887))

(assert (= (and b!603887 res!388032) b!603870))

(assert (= (and b!603870 res!388039) b!603868))

(assert (= (and b!603868 res!388033) b!603871))

(assert (= (and b!603871 res!388028) b!603874))

(assert (= (and b!603874 res!388030) b!603869))

(assert (= (and b!603869 res!388026) b!603886))

(assert (= (and b!603886 res!388036) b!603872))

(assert (= (and b!603872 res!388037) b!603880))

(assert (= (and b!603880 res!388042) b!603866))

(assert (= (and b!603866 res!388043) b!603873))

(assert (= (and b!603873 res!388025) b!603882))

(assert (= (and b!603873 c!68288) b!603867))

(assert (= (and b!603873 (not c!68288)) b!603885))

(assert (= (and b!603873 (not res!388041)) b!603865))

(assert (= (and b!603865 res!388038) b!603875))

(assert (= (and b!603875 (not res!388034)) b!603876))

(assert (= (and b!603876 res!388035) b!603878))

(assert (= (and b!603865 (not res!388027)) b!603881))

(assert (= (and b!603881 c!68287) b!603877))

(assert (= (and b!603881 (not c!68287)) b!603884))

(assert (= (and b!603881 (not res!388029)) b!603883))

(assert (= (and b!603883 res!388040) b!603879))

(declare-fun m!580851 () Bool)

(assert (=> b!603868 m!580851))

(declare-fun m!580853 () Bool)

(assert (=> b!603879 m!580853))

(assert (=> b!603879 m!580853))

(declare-fun m!580855 () Bool)

(assert (=> b!603879 m!580855))

(assert (=> b!603875 m!580853))

(assert (=> b!603876 m!580853))

(assert (=> b!603876 m!580853))

(declare-fun m!580857 () Bool)

(assert (=> b!603876 m!580857))

(assert (=> b!603883 m!580853))

(assert (=> b!603883 m!580853))

(assert (=> b!603883 m!580857))

(declare-fun m!580859 () Bool)

(assert (=> b!603874 m!580859))

(declare-fun m!580861 () Bool)

(assert (=> b!603886 m!580861))

(declare-fun m!580863 () Bool)

(assert (=> b!603877 m!580863))

(assert (=> b!603877 m!580853))

(assert (=> b!603877 m!580853))

(declare-fun m!580865 () Bool)

(assert (=> b!603877 m!580865))

(assert (=> b!603877 m!580853))

(declare-fun m!580867 () Bool)

(assert (=> b!603877 m!580867))

(declare-fun m!580869 () Bool)

(assert (=> b!603877 m!580869))

(assert (=> b!603877 m!580853))

(declare-fun m!580871 () Bool)

(assert (=> b!603877 m!580871))

(declare-fun m!580873 () Bool)

(assert (=> b!603877 m!580873))

(declare-fun m!580875 () Bool)

(assert (=> b!603877 m!580875))

(assert (=> b!603870 m!580853))

(assert (=> b!603870 m!580853))

(declare-fun m!580877 () Bool)

(assert (=> b!603870 m!580877))

(declare-fun m!580879 () Bool)

(assert (=> b!603873 m!580879))

(declare-fun m!580881 () Bool)

(assert (=> b!603873 m!580881))

(declare-fun m!580883 () Bool)

(assert (=> b!603873 m!580883))

(assert (=> b!603873 m!580853))

(declare-fun m!580885 () Bool)

(assert (=> b!603873 m!580885))

(declare-fun m!580887 () Bool)

(assert (=> b!603873 m!580887))

(assert (=> b!603873 m!580853))

(declare-fun m!580889 () Bool)

(assert (=> b!603873 m!580889))

(declare-fun m!580891 () Bool)

(assert (=> b!603873 m!580891))

(declare-fun m!580893 () Bool)

(assert (=> start!55150 m!580893))

(declare-fun m!580895 () Bool)

(assert (=> start!55150 m!580895))

(declare-fun m!580897 () Bool)

(assert (=> b!603872 m!580897))

(assert (=> b!603865 m!580853))

(assert (=> b!603865 m!580885))

(declare-fun m!580899 () Bool)

(assert (=> b!603865 m!580899))

(declare-fun m!580901 () Bool)

(assert (=> b!603869 m!580901))

(declare-fun m!580903 () Bool)

(assert (=> b!603871 m!580903))

(assert (=> b!603880 m!580885))

(declare-fun m!580905 () Bool)

(assert (=> b!603880 m!580905))

(declare-fun m!580907 () Bool)

(assert (=> b!603866 m!580907))

(assert (=> b!603866 m!580853))

(assert (=> b!603866 m!580853))

(declare-fun m!580909 () Bool)

(assert (=> b!603866 m!580909))

(assert (=> b!603878 m!580853))

(assert (=> b!603878 m!580853))

(assert (=> b!603878 m!580855))

(push 1)

