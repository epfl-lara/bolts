; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55128 () Bool)

(assert start!55128)

(declare-fun b!603106 () Bool)

(declare-fun res!387413 () Bool)

(declare-fun e!345019 () Bool)

(assert (=> b!603106 (=> (not res!387413) (not e!345019))))

(declare-datatypes ((array!37164 0))(
  ( (array!37165 (arr!17835 (Array (_ BitVec 32) (_ BitVec 64))) (size!18199 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37164)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603106 (= res!387413 (validKeyInArray!0 (select (arr!17835 a!2986) j!136)))))

(declare-fun b!603107 () Bool)

(declare-fun e!345005 () Bool)

(declare-datatypes ((SeekEntryResult!6282 0))(
  ( (MissingZero!6282 (index!27390 (_ BitVec 32))) (Found!6282 (index!27391 (_ BitVec 32))) (Intermediate!6282 (undefined!7094 Bool) (index!27392 (_ BitVec 32)) (x!56220 (_ BitVec 32))) (Undefined!6282) (MissingVacant!6282 (index!27393 (_ BitVec 32))) )
))
(declare-fun lt!274870 () SeekEntryResult!6282)

(declare-fun lt!274874 () SeekEntryResult!6282)

(assert (=> b!603107 (= e!345005 (= lt!274870 lt!274874))))

(declare-fun b!603108 () Bool)

(declare-fun res!387400 () Bool)

(declare-fun e!345006 () Bool)

(assert (=> b!603108 (=> (not res!387400) (not e!345006))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37164 (_ BitVec 32)) Bool)

(assert (=> b!603108 (= res!387400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!387399 () Bool)

(assert (=> start!55128 (=> (not res!387399) (not e!345019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55128 (= res!387399 (validMask!0 mask!3053))))

(assert (=> start!55128 e!345019))

(assert (=> start!55128 true))

(declare-fun array_inv!13609 (array!37164) Bool)

(assert (=> start!55128 (array_inv!13609 a!2986)))

(declare-fun b!603109 () Bool)

(declare-fun e!345010 () Bool)

(declare-fun e!345007 () Bool)

(assert (=> b!603109 (= e!345010 e!345007)))

(declare-fun res!387409 () Bool)

(assert (=> b!603109 (=> (not res!387409) (not e!345007))))

(declare-fun lt!274873 () array!37164)

(declare-fun arrayContainsKey!0 (array!37164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603109 (= res!387409 (arrayContainsKey!0 lt!274873 (select (arr!17835 a!2986) j!136) j!136))))

(declare-fun b!603110 () Bool)

(declare-fun e!345014 () Bool)

(declare-fun e!345016 () Bool)

(assert (=> b!603110 (= e!345014 e!345016)))

(declare-fun res!387403 () Bool)

(assert (=> b!603110 (=> res!387403 e!345016)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!603110 (= res!387403 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19120 0))(
  ( (Unit!19121) )
))
(declare-fun lt!274868 () Unit!19120)

(declare-fun e!345008 () Unit!19120)

(assert (=> b!603110 (= lt!274868 e!345008)))

(declare-fun c!68222 () Bool)

(assert (=> b!603110 (= c!68222 (bvslt j!136 index!984))))

(declare-fun b!603111 () Bool)

(declare-fun res!387398 () Bool)

(assert (=> b!603111 (=> (not res!387398) (not e!345019))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!603111 (= res!387398 (validKeyInArray!0 k!1786))))

(declare-fun b!603112 () Bool)

(declare-fun Unit!19122 () Unit!19120)

(assert (=> b!603112 (= e!345008 Unit!19122)))

(declare-fun b!603113 () Bool)

(declare-fun res!387410 () Bool)

(assert (=> b!603113 (=> (not res!387410) (not e!345019))))

(assert (=> b!603113 (= res!387410 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603114 () Bool)

(assert (=> b!603114 (= e!345016 true)))

(declare-fun e!345009 () Bool)

(assert (=> b!603114 e!345009))

(declare-fun res!387406 () Bool)

(assert (=> b!603114 (=> (not res!387406) (not e!345009))))

(assert (=> b!603114 (= res!387406 (arrayContainsKey!0 lt!274873 (select (arr!17835 a!2986) j!136) j!136))))

(declare-fun b!603115 () Bool)

(declare-fun e!345011 () Bool)

(declare-fun e!345015 () Bool)

(assert (=> b!603115 (= e!345011 (not e!345015))))

(declare-fun res!387411 () Bool)

(assert (=> b!603115 (=> res!387411 e!345015)))

(declare-fun lt!274879 () SeekEntryResult!6282)

(assert (=> b!603115 (= res!387411 (not (= lt!274879 (Found!6282 index!984))))))

(declare-fun lt!274878 () Unit!19120)

(declare-fun e!345018 () Unit!19120)

(assert (=> b!603115 (= lt!274878 e!345018)))

(declare-fun c!68221 () Bool)

(assert (=> b!603115 (= c!68221 (= lt!274879 Undefined!6282))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!274867 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37164 (_ BitVec 32)) SeekEntryResult!6282)

(assert (=> b!603115 (= lt!274879 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274867 lt!274873 mask!3053))))

(assert (=> b!603115 e!345005))

(declare-fun res!387401 () Bool)

(assert (=> b!603115 (=> (not res!387401) (not e!345005))))

(declare-fun lt!274875 () (_ BitVec 32))

(assert (=> b!603115 (= res!387401 (= lt!274874 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274875 vacantSpotIndex!68 lt!274867 lt!274873 mask!3053)))))

(assert (=> b!603115 (= lt!274874 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274875 vacantSpotIndex!68 (select (arr!17835 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603115 (= lt!274867 (select (store (arr!17835 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274880 () Unit!19120)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37164 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19120)

(assert (=> b!603115 (= lt!274880 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274875 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603115 (= lt!274875 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603116 () Bool)

(assert (=> b!603116 (= e!345007 (arrayContainsKey!0 lt!274873 (select (arr!17835 a!2986) j!136) index!984))))

(declare-fun b!603117 () Bool)

(assert (=> b!603117 (= e!345009 (arrayContainsKey!0 lt!274873 (select (arr!17835 a!2986) j!136) index!984))))

(declare-fun b!603118 () Bool)

(declare-fun Unit!19123 () Unit!19120)

(assert (=> b!603118 (= e!345018 Unit!19123)))

(assert (=> b!603118 false))

(declare-fun b!603119 () Bool)

(declare-fun Unit!19124 () Unit!19120)

(assert (=> b!603119 (= e!345018 Unit!19124)))

(declare-fun b!603120 () Bool)

(declare-fun res!387404 () Bool)

(assert (=> b!603120 (=> (not res!387404) (not e!345006))))

(declare-datatypes ((List!11929 0))(
  ( (Nil!11926) (Cons!11925 (h!12970 (_ BitVec 64)) (t!18165 List!11929)) )
))
(declare-fun arrayNoDuplicates!0 (array!37164 (_ BitVec 32) List!11929) Bool)

(assert (=> b!603120 (= res!387404 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11926))))

(declare-fun b!603121 () Bool)

(assert (=> b!603121 (= e!345019 e!345006)))

(declare-fun res!387407 () Bool)

(assert (=> b!603121 (=> (not res!387407) (not e!345006))))

(declare-fun lt!274876 () SeekEntryResult!6282)

(assert (=> b!603121 (= res!387407 (or (= lt!274876 (MissingZero!6282 i!1108)) (= lt!274876 (MissingVacant!6282 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37164 (_ BitVec 32)) SeekEntryResult!6282)

(assert (=> b!603121 (= lt!274876 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603122 () Bool)

(declare-fun e!345012 () Bool)

(assert (=> b!603122 (= e!345006 e!345012)))

(declare-fun res!387408 () Bool)

(assert (=> b!603122 (=> (not res!387408) (not e!345012))))

(assert (=> b!603122 (= res!387408 (= (select (store (arr!17835 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603122 (= lt!274873 (array!37165 (store (arr!17835 a!2986) i!1108 k!1786) (size!18199 a!2986)))))

(declare-fun b!603123 () Bool)

(declare-fun e!345017 () Bool)

(assert (=> b!603123 (= e!345017 e!345010)))

(declare-fun res!387402 () Bool)

(assert (=> b!603123 (=> res!387402 e!345010)))

(declare-fun lt!274871 () (_ BitVec 64))

(assert (=> b!603123 (= res!387402 (or (not (= (select (arr!17835 a!2986) j!136) lt!274867)) (not (= (select (arr!17835 a!2986) j!136) lt!274871)) (bvsge j!136 index!984)))))

(declare-fun b!603124 () Bool)

(declare-fun Unit!19125 () Unit!19120)

(assert (=> b!603124 (= e!345008 Unit!19125)))

(declare-fun lt!274869 () Unit!19120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37164 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19120)

(assert (=> b!603124 (= lt!274869 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274873 (select (arr!17835 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603124 (arrayContainsKey!0 lt!274873 (select (arr!17835 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274872 () Unit!19120)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37164 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11929) Unit!19120)

(assert (=> b!603124 (= lt!274872 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11926))))

(assert (=> b!603124 (arrayNoDuplicates!0 lt!274873 #b00000000000000000000000000000000 Nil!11926)))

(declare-fun lt!274881 () Unit!19120)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37164 (_ BitVec 32) (_ BitVec 32)) Unit!19120)

(assert (=> b!603124 (= lt!274881 (lemmaNoDuplicateFromThenFromBigger!0 lt!274873 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603124 (arrayNoDuplicates!0 lt!274873 j!136 Nil!11926)))

(declare-fun lt!274877 () Unit!19120)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37164 (_ BitVec 64) (_ BitVec 32) List!11929) Unit!19120)

(assert (=> b!603124 (= lt!274877 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274873 (select (arr!17835 a!2986) j!136) j!136 Nil!11926))))

(assert (=> b!603124 false))

(declare-fun b!603125 () Bool)

(assert (=> b!603125 (= e!345012 e!345011)))

(declare-fun res!387405 () Bool)

(assert (=> b!603125 (=> (not res!387405) (not e!345011))))

(assert (=> b!603125 (= res!387405 (and (= lt!274870 (Found!6282 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17835 a!2986) index!984) (select (arr!17835 a!2986) j!136))) (not (= (select (arr!17835 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!603125 (= lt!274870 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17835 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603126 () Bool)

(declare-fun res!387416 () Bool)

(assert (=> b!603126 (=> (not res!387416) (not e!345019))))

(assert (=> b!603126 (= res!387416 (and (= (size!18199 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18199 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18199 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603127 () Bool)

(assert (=> b!603127 (= e!345015 e!345014)))

(declare-fun res!387412 () Bool)

(assert (=> b!603127 (=> res!387412 e!345014)))

(assert (=> b!603127 (= res!387412 (or (not (= (select (arr!17835 a!2986) j!136) lt!274867)) (not (= (select (arr!17835 a!2986) j!136) lt!274871))))))

(assert (=> b!603127 e!345017))

(declare-fun res!387414 () Bool)

(assert (=> b!603127 (=> (not res!387414) (not e!345017))))

(assert (=> b!603127 (= res!387414 (= lt!274871 (select (arr!17835 a!2986) j!136)))))

(assert (=> b!603127 (= lt!274871 (select (store (arr!17835 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603128 () Bool)

(declare-fun res!387415 () Bool)

(assert (=> b!603128 (=> (not res!387415) (not e!345006))))

(assert (=> b!603128 (= res!387415 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17835 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!55128 res!387399) b!603126))

(assert (= (and b!603126 res!387416) b!603106))

(assert (= (and b!603106 res!387413) b!603111))

(assert (= (and b!603111 res!387398) b!603113))

(assert (= (and b!603113 res!387410) b!603121))

(assert (= (and b!603121 res!387407) b!603108))

(assert (= (and b!603108 res!387400) b!603120))

(assert (= (and b!603120 res!387404) b!603128))

(assert (= (and b!603128 res!387415) b!603122))

(assert (= (and b!603122 res!387408) b!603125))

(assert (= (and b!603125 res!387405) b!603115))

(assert (= (and b!603115 res!387401) b!603107))

(assert (= (and b!603115 c!68221) b!603118))

(assert (= (and b!603115 (not c!68221)) b!603119))

(assert (= (and b!603115 (not res!387411)) b!603127))

(assert (= (and b!603127 res!387414) b!603123))

(assert (= (and b!603123 (not res!387402)) b!603109))

(assert (= (and b!603109 res!387409) b!603116))

(assert (= (and b!603127 (not res!387412)) b!603110))

(assert (= (and b!603110 c!68222) b!603124))

(assert (= (and b!603110 (not c!68222)) b!603112))

(assert (= (and b!603110 (not res!387403)) b!603114))

(assert (= (and b!603114 res!387406) b!603117))

(declare-fun m!580191 () Bool)

(assert (=> b!603127 m!580191))

(declare-fun m!580193 () Bool)

(assert (=> b!603127 m!580193))

(declare-fun m!580195 () Bool)

(assert (=> b!603127 m!580195))

(declare-fun m!580197 () Bool)

(assert (=> b!603125 m!580197))

(assert (=> b!603125 m!580191))

(assert (=> b!603125 m!580191))

(declare-fun m!580199 () Bool)

(assert (=> b!603125 m!580199))

(declare-fun m!580201 () Bool)

(assert (=> b!603108 m!580201))

(declare-fun m!580203 () Bool)

(assert (=> b!603115 m!580203))

(assert (=> b!603115 m!580191))

(declare-fun m!580205 () Bool)

(assert (=> b!603115 m!580205))

(declare-fun m!580207 () Bool)

(assert (=> b!603115 m!580207))

(declare-fun m!580209 () Bool)

(assert (=> b!603115 m!580209))

(assert (=> b!603115 m!580193))

(assert (=> b!603115 m!580191))

(declare-fun m!580211 () Bool)

(assert (=> b!603115 m!580211))

(declare-fun m!580213 () Bool)

(assert (=> b!603115 m!580213))

(assert (=> b!603116 m!580191))

(assert (=> b!603116 m!580191))

(declare-fun m!580215 () Bool)

(assert (=> b!603116 m!580215))

(declare-fun m!580217 () Bool)

(assert (=> b!603128 m!580217))

(assert (=> b!603106 m!580191))

(assert (=> b!603106 m!580191))

(declare-fun m!580219 () Bool)

(assert (=> b!603106 m!580219))

(assert (=> b!603123 m!580191))

(assert (=> b!603124 m!580191))

(declare-fun m!580221 () Bool)

(assert (=> b!603124 m!580221))

(declare-fun m!580223 () Bool)

(assert (=> b!603124 m!580223))

(assert (=> b!603124 m!580191))

(declare-fun m!580225 () Bool)

(assert (=> b!603124 m!580225))

(declare-fun m!580227 () Bool)

(assert (=> b!603124 m!580227))

(declare-fun m!580229 () Bool)

(assert (=> b!603124 m!580229))

(declare-fun m!580231 () Bool)

(assert (=> b!603124 m!580231))

(assert (=> b!603124 m!580191))

(declare-fun m!580233 () Bool)

(assert (=> b!603124 m!580233))

(assert (=> b!603124 m!580191))

(declare-fun m!580235 () Bool)

(assert (=> start!55128 m!580235))

(declare-fun m!580237 () Bool)

(assert (=> start!55128 m!580237))

(assert (=> b!603117 m!580191))

(assert (=> b!603117 m!580191))

(assert (=> b!603117 m!580215))

(declare-fun m!580239 () Bool)

(assert (=> b!603111 m!580239))

(assert (=> b!603114 m!580191))

(assert (=> b!603114 m!580191))

(declare-fun m!580241 () Bool)

(assert (=> b!603114 m!580241))

(assert (=> b!603109 m!580191))

(assert (=> b!603109 m!580191))

(assert (=> b!603109 m!580241))

(assert (=> b!603122 m!580193))

(declare-fun m!580243 () Bool)

(assert (=> b!603122 m!580243))

(declare-fun m!580245 () Bool)

(assert (=> b!603113 m!580245))

(declare-fun m!580247 () Bool)

(assert (=> b!603120 m!580247))

(declare-fun m!580249 () Bool)

(assert (=> b!603121 m!580249))

(push 1)

