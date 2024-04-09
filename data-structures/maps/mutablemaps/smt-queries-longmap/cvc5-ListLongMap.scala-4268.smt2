; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59364 () Bool)

(assert start!59364)

(declare-fun b!654882 () Bool)

(declare-datatypes ((array!38640 0))(
  ( (array!38641 (arr!18516 (Array (_ BitVec 32) (_ BitVec 64))) (size!18880 (_ BitVec 32))) )
))
(declare-fun lt!305343 () array!38640)

(declare-fun e!376094 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38640)

(declare-fun arrayContainsKey!0 (array!38640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654882 (= e!376094 (arrayContainsKey!0 lt!305343 (select (arr!18516 a!2986) j!136) index!984))))

(declare-fun b!654883 () Bool)

(declare-fun e!376104 () Bool)

(declare-fun e!376095 () Bool)

(assert (=> b!654883 (= e!376104 e!376095)))

(declare-fun res!424909 () Bool)

(assert (=> b!654883 (=> (not res!424909) (not e!376095))))

(declare-datatypes ((SeekEntryResult!6963 0))(
  ( (MissingZero!6963 (index!30210 (_ BitVec 32))) (Found!6963 (index!30211 (_ BitVec 32))) (Intermediate!6963 (undefined!7775 Bool) (index!30212 (_ BitVec 32)) (x!59029 (_ BitVec 32))) (Undefined!6963) (MissingVacant!6963 (index!30213 (_ BitVec 32))) )
))
(declare-fun lt!305355 () SeekEntryResult!6963)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!654883 (= res!424909 (or (= lt!305355 (MissingZero!6963 i!1108)) (= lt!305355 (MissingVacant!6963 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38640 (_ BitVec 32)) SeekEntryResult!6963)

(assert (=> b!654883 (= lt!305355 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!424915 () Bool)

(declare-fun b!654884 () Bool)

(assert (=> b!654884 (= res!424915 (arrayContainsKey!0 lt!305343 (select (arr!18516 a!2986) j!136) j!136))))

(declare-fun e!376102 () Bool)

(assert (=> b!654884 (=> (not res!424915) (not e!376102))))

(declare-fun e!376099 () Bool)

(assert (=> b!654884 (= e!376099 e!376102)))

(declare-fun b!654885 () Bool)

(declare-fun res!424911 () Bool)

(assert (=> b!654885 (=> (not res!424911) (not e!376095))))

(declare-datatypes ((List!12610 0))(
  ( (Nil!12607) (Cons!12606 (h!13651 (_ BitVec 64)) (t!18846 List!12610)) )
))
(declare-fun arrayNoDuplicates!0 (array!38640 (_ BitVec 32) List!12610) Bool)

(assert (=> b!654885 (= res!424911 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12607))))

(declare-fun res!424910 () Bool)

(assert (=> start!59364 (=> (not res!424910) (not e!376104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59364 (= res!424910 (validMask!0 mask!3053))))

(assert (=> start!59364 e!376104))

(assert (=> start!59364 true))

(declare-fun array_inv!14290 (array!38640) Bool)

(assert (=> start!59364 (array_inv!14290 a!2986)))

(declare-fun b!654886 () Bool)

(declare-datatypes ((Unit!22474 0))(
  ( (Unit!22475) )
))
(declare-fun e!376092 () Unit!22474)

(declare-fun Unit!22476 () Unit!22474)

(assert (=> b!654886 (= e!376092 Unit!22476)))

(declare-fun b!654887 () Bool)

(declare-fun res!424919 () Bool)

(assert (=> b!654887 (=> (not res!424919) (not e!376095))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654887 (= res!424919 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18516 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654888 () Bool)

(declare-fun res!424917 () Bool)

(assert (=> b!654888 (=> (not res!424917) (not e!376104))))

(assert (=> b!654888 (= res!424917 (and (= (size!18880 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18880 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18880 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654889 () Bool)

(declare-fun res!424908 () Bool)

(assert (=> b!654889 (=> (not res!424908) (not e!376104))))

(assert (=> b!654889 (= res!424908 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654890 () Bool)

(assert (=> b!654890 (= e!376102 (arrayContainsKey!0 lt!305343 (select (arr!18516 a!2986) j!136) index!984))))

(declare-fun b!654891 () Bool)

(declare-fun e!376097 () Bool)

(declare-fun lt!305348 () SeekEntryResult!6963)

(declare-fun lt!305347 () SeekEntryResult!6963)

(assert (=> b!654891 (= e!376097 (= lt!305348 lt!305347))))

(declare-fun b!654892 () Bool)

(declare-fun res!424906 () Bool)

(assert (=> b!654892 (=> (not res!424906) (not e!376104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654892 (= res!424906 (validKeyInArray!0 (select (arr!18516 a!2986) j!136)))))

(declare-fun b!654893 () Bool)

(declare-fun e!376093 () Bool)

(declare-fun e!376096 () Bool)

(assert (=> b!654893 (= e!376093 e!376096)))

(declare-fun res!424916 () Bool)

(assert (=> b!654893 (=> (not res!424916) (not e!376096))))

(assert (=> b!654893 (= res!424916 (and (= lt!305348 (Found!6963 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18516 a!2986) index!984) (select (arr!18516 a!2986) j!136))) (not (= (select (arr!18516 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38640 (_ BitVec 32)) SeekEntryResult!6963)

(assert (=> b!654893 (= lt!305348 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18516 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654894 () Bool)

(declare-fun res!424904 () Bool)

(assert (=> b!654894 (=> (not res!424904) (not e!376104))))

(assert (=> b!654894 (= res!424904 (validKeyInArray!0 k!1786))))

(declare-fun b!654895 () Bool)

(declare-fun e!376101 () Unit!22474)

(declare-fun Unit!22477 () Unit!22474)

(assert (=> b!654895 (= e!376101 Unit!22477)))

(declare-fun b!654896 () Bool)

(declare-fun res!424918 () Bool)

(assert (=> b!654896 (= res!424918 (bvsge j!136 index!984))))

(assert (=> b!654896 (=> res!424918 e!376099)))

(declare-fun e!376105 () Bool)

(assert (=> b!654896 (= e!376105 e!376099)))

(declare-fun b!654897 () Bool)

(declare-fun e!376103 () Unit!22474)

(declare-fun Unit!22478 () Unit!22474)

(assert (=> b!654897 (= e!376103 Unit!22478)))

(declare-fun b!654898 () Bool)

(assert (=> b!654898 false))

(declare-fun lt!305346 () Unit!22474)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38640 (_ BitVec 64) (_ BitVec 32) List!12610) Unit!22474)

(assert (=> b!654898 (= lt!305346 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305343 (select (arr!18516 a!2986) j!136) index!984 Nil!12607))))

(assert (=> b!654898 (arrayNoDuplicates!0 lt!305343 index!984 Nil!12607)))

(declare-fun lt!305354 () Unit!22474)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38640 (_ BitVec 32) (_ BitVec 32)) Unit!22474)

(assert (=> b!654898 (= lt!305354 (lemmaNoDuplicateFromThenFromBigger!0 lt!305343 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654898 (arrayNoDuplicates!0 lt!305343 #b00000000000000000000000000000000 Nil!12607)))

(declare-fun lt!305360 () Unit!22474)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38640 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12610) Unit!22474)

(assert (=> b!654898 (= lt!305360 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12607))))

(assert (=> b!654898 (arrayContainsKey!0 lt!305343 (select (arr!18516 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305356 () Unit!22474)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38640 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22474)

(assert (=> b!654898 (= lt!305356 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305343 (select (arr!18516 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654898 e!376094))

(declare-fun res!424907 () Bool)

(assert (=> b!654898 (=> (not res!424907) (not e!376094))))

(assert (=> b!654898 (= res!424907 (arrayContainsKey!0 lt!305343 (select (arr!18516 a!2986) j!136) j!136))))

(declare-fun Unit!22479 () Unit!22474)

(assert (=> b!654898 (= e!376092 Unit!22479)))

(declare-fun b!654899 () Bool)

(declare-fun e!376098 () Unit!22474)

(declare-fun Unit!22480 () Unit!22474)

(assert (=> b!654899 (= e!376098 Unit!22480)))

(assert (=> b!654899 false))

(declare-fun b!654900 () Bool)

(assert (=> b!654900 (= e!376095 e!376093)))

(declare-fun res!424905 () Bool)

(assert (=> b!654900 (=> (not res!424905) (not e!376093))))

(assert (=> b!654900 (= res!424905 (= (select (store (arr!18516 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654900 (= lt!305343 (array!38641 (store (arr!18516 a!2986) i!1108 k!1786) (size!18880 a!2986)))))

(declare-fun b!654901 () Bool)

(declare-fun Unit!22481 () Unit!22474)

(assert (=> b!654901 (= e!376101 Unit!22481)))

(declare-fun res!424912 () Bool)

(assert (=> b!654901 (= res!424912 (= (select (store (arr!18516 a!2986) i!1108 k!1786) index!984) (select (arr!18516 a!2986) j!136)))))

(assert (=> b!654901 (=> (not res!424912) (not e!376105))))

(assert (=> b!654901 e!376105))

(declare-fun c!75357 () Bool)

(assert (=> b!654901 (= c!75357 (bvslt j!136 index!984))))

(declare-fun lt!305357 () Unit!22474)

(assert (=> b!654901 (= lt!305357 e!376103)))

(declare-fun c!75356 () Bool)

(assert (=> b!654901 (= c!75356 (bvslt index!984 j!136))))

(declare-fun lt!305349 () Unit!22474)

(assert (=> b!654901 (= lt!305349 e!376092)))

(assert (=> b!654901 false))

(declare-fun b!654902 () Bool)

(declare-fun Unit!22482 () Unit!22474)

(assert (=> b!654902 (= e!376098 Unit!22482)))

(declare-fun b!654903 () Bool)

(assert (=> b!654903 (= e!376096 (not true))))

(declare-fun lt!305358 () Unit!22474)

(assert (=> b!654903 (= lt!305358 e!376101)))

(declare-fun c!75358 () Bool)

(declare-fun lt!305345 () SeekEntryResult!6963)

(assert (=> b!654903 (= c!75358 (= lt!305345 (Found!6963 index!984)))))

(declare-fun lt!305351 () Unit!22474)

(assert (=> b!654903 (= lt!305351 e!376098)))

(declare-fun c!75359 () Bool)

(assert (=> b!654903 (= c!75359 (= lt!305345 Undefined!6963))))

(declare-fun lt!305342 () (_ BitVec 64))

(assert (=> b!654903 (= lt!305345 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305342 lt!305343 mask!3053))))

(assert (=> b!654903 e!376097))

(declare-fun res!424914 () Bool)

(assert (=> b!654903 (=> (not res!424914) (not e!376097))))

(declare-fun lt!305352 () (_ BitVec 32))

(assert (=> b!654903 (= res!424914 (= lt!305347 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305352 vacantSpotIndex!68 lt!305342 lt!305343 mask!3053)))))

(assert (=> b!654903 (= lt!305347 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305352 vacantSpotIndex!68 (select (arr!18516 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654903 (= lt!305342 (select (store (arr!18516 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305359 () Unit!22474)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38640 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22474)

(assert (=> b!654903 (= lt!305359 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305352 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654903 (= lt!305352 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654904 () Bool)

(assert (=> b!654904 false))

(declare-fun lt!305361 () Unit!22474)

(assert (=> b!654904 (= lt!305361 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305343 (select (arr!18516 a!2986) j!136) j!136 Nil!12607))))

(assert (=> b!654904 (arrayNoDuplicates!0 lt!305343 j!136 Nil!12607)))

(declare-fun lt!305353 () Unit!22474)

(assert (=> b!654904 (= lt!305353 (lemmaNoDuplicateFromThenFromBigger!0 lt!305343 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654904 (arrayNoDuplicates!0 lt!305343 #b00000000000000000000000000000000 Nil!12607)))

(declare-fun lt!305350 () Unit!22474)

(assert (=> b!654904 (= lt!305350 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12607))))

(assert (=> b!654904 (arrayContainsKey!0 lt!305343 (select (arr!18516 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305344 () Unit!22474)

(assert (=> b!654904 (= lt!305344 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305343 (select (arr!18516 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22483 () Unit!22474)

(assert (=> b!654904 (= e!376103 Unit!22483)))

(declare-fun b!654905 () Bool)

(declare-fun res!424913 () Bool)

(assert (=> b!654905 (=> (not res!424913) (not e!376095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38640 (_ BitVec 32)) Bool)

(assert (=> b!654905 (= res!424913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!59364 res!424910) b!654888))

(assert (= (and b!654888 res!424917) b!654892))

(assert (= (and b!654892 res!424906) b!654894))

(assert (= (and b!654894 res!424904) b!654889))

(assert (= (and b!654889 res!424908) b!654883))

(assert (= (and b!654883 res!424909) b!654905))

(assert (= (and b!654905 res!424913) b!654885))

(assert (= (and b!654885 res!424911) b!654887))

(assert (= (and b!654887 res!424919) b!654900))

(assert (= (and b!654900 res!424905) b!654893))

(assert (= (and b!654893 res!424916) b!654903))

(assert (= (and b!654903 res!424914) b!654891))

(assert (= (and b!654903 c!75359) b!654899))

(assert (= (and b!654903 (not c!75359)) b!654902))

(assert (= (and b!654903 c!75358) b!654901))

(assert (= (and b!654903 (not c!75358)) b!654895))

(assert (= (and b!654901 res!424912) b!654896))

(assert (= (and b!654896 (not res!424918)) b!654884))

(assert (= (and b!654884 res!424915) b!654890))

(assert (= (and b!654901 c!75357) b!654904))

(assert (= (and b!654901 (not c!75357)) b!654897))

(assert (= (and b!654901 c!75356) b!654898))

(assert (= (and b!654901 (not c!75356)) b!654886))

(assert (= (and b!654898 res!424907) b!654882))

(declare-fun m!628041 () Bool)

(assert (=> b!654903 m!628041))

(declare-fun m!628043 () Bool)

(assert (=> b!654903 m!628043))

(declare-fun m!628045 () Bool)

(assert (=> b!654903 m!628045))

(declare-fun m!628047 () Bool)

(assert (=> b!654903 m!628047))

(declare-fun m!628049 () Bool)

(assert (=> b!654903 m!628049))

(assert (=> b!654903 m!628047))

(declare-fun m!628051 () Bool)

(assert (=> b!654903 m!628051))

(declare-fun m!628053 () Bool)

(assert (=> b!654903 m!628053))

(declare-fun m!628055 () Bool)

(assert (=> b!654903 m!628055))

(assert (=> b!654892 m!628047))

(assert (=> b!654892 m!628047))

(declare-fun m!628057 () Bool)

(assert (=> b!654892 m!628057))

(declare-fun m!628059 () Bool)

(assert (=> start!59364 m!628059))

(declare-fun m!628061 () Bool)

(assert (=> start!59364 m!628061))

(declare-fun m!628063 () Bool)

(assert (=> b!654904 m!628063))

(assert (=> b!654904 m!628047))

(declare-fun m!628065 () Bool)

(assert (=> b!654904 m!628065))

(assert (=> b!654904 m!628047))

(declare-fun m!628067 () Bool)

(assert (=> b!654904 m!628067))

(assert (=> b!654904 m!628047))

(declare-fun m!628069 () Bool)

(assert (=> b!654904 m!628069))

(assert (=> b!654904 m!628047))

(declare-fun m!628071 () Bool)

(assert (=> b!654904 m!628071))

(declare-fun m!628073 () Bool)

(assert (=> b!654904 m!628073))

(declare-fun m!628075 () Bool)

(assert (=> b!654904 m!628075))

(declare-fun m!628077 () Bool)

(assert (=> b!654894 m!628077))

(assert (=> b!654901 m!628049))

(declare-fun m!628079 () Bool)

(assert (=> b!654901 m!628079))

(assert (=> b!654901 m!628047))

(declare-fun m!628081 () Bool)

(assert (=> b!654885 m!628081))

(declare-fun m!628083 () Bool)

(assert (=> b!654898 m!628083))

(assert (=> b!654898 m!628067))

(declare-fun m!628085 () Bool)

(assert (=> b!654898 m!628085))

(assert (=> b!654898 m!628047))

(declare-fun m!628087 () Bool)

(assert (=> b!654898 m!628087))

(assert (=> b!654898 m!628075))

(assert (=> b!654898 m!628047))

(declare-fun m!628089 () Bool)

(assert (=> b!654898 m!628089))

(assert (=> b!654898 m!628047))

(declare-fun m!628091 () Bool)

(assert (=> b!654898 m!628091))

(assert (=> b!654898 m!628047))

(assert (=> b!654898 m!628047))

(declare-fun m!628093 () Bool)

(assert (=> b!654898 m!628093))

(assert (=> b!654900 m!628049))

(declare-fun m!628095 () Bool)

(assert (=> b!654900 m!628095))

(assert (=> b!654890 m!628047))

(assert (=> b!654890 m!628047))

(declare-fun m!628097 () Bool)

(assert (=> b!654890 m!628097))

(declare-fun m!628099 () Bool)

(assert (=> b!654883 m!628099))

(declare-fun m!628101 () Bool)

(assert (=> b!654889 m!628101))

(declare-fun m!628103 () Bool)

(assert (=> b!654893 m!628103))

(assert (=> b!654893 m!628047))

(assert (=> b!654893 m!628047))

(declare-fun m!628105 () Bool)

(assert (=> b!654893 m!628105))

(declare-fun m!628107 () Bool)

(assert (=> b!654887 m!628107))

(assert (=> b!654882 m!628047))

(assert (=> b!654882 m!628047))

(assert (=> b!654882 m!628097))

(declare-fun m!628109 () Bool)

(assert (=> b!654905 m!628109))

(assert (=> b!654884 m!628047))

(assert (=> b!654884 m!628047))

(assert (=> b!654884 m!628087))

(push 1)

