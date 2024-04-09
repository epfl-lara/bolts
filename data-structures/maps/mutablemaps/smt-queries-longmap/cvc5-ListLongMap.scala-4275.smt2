; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59574 () Bool)

(assert start!59574)

(declare-fun b!657110 () Bool)

(declare-fun e!377479 () Bool)

(declare-fun e!377477 () Bool)

(assert (=> b!657110 (= e!377479 e!377477)))

(declare-fun res!426206 () Bool)

(assert (=> b!657110 (=> (not res!426206) (not e!377477))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38688 0))(
  ( (array!38689 (arr!18537 (Array (_ BitVec 32) (_ BitVec 64))) (size!18901 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38688)

(assert (=> b!657110 (= res!426206 (= (select (store (arr!18537 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!306910 () array!38688)

(assert (=> b!657110 (= lt!306910 (array!38689 (store (arr!18537 a!2986) i!1108 k!1786) (size!18901 a!2986)))))

(declare-fun b!657111 () Bool)

(declare-datatypes ((Unit!22684 0))(
  ( (Unit!22685) )
))
(declare-fun e!377483 () Unit!22684)

(declare-fun Unit!22686 () Unit!22684)

(assert (=> b!657111 (= e!377483 Unit!22686)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!426203 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!657111 (= res!426203 (= (select (store (arr!18537 a!2986) i!1108 k!1786) index!984) (select (arr!18537 a!2986) j!136)))))

(declare-fun e!377481 () Bool)

(assert (=> b!657111 (=> (not res!426203) (not e!377481))))

(assert (=> b!657111 e!377481))

(declare-fun c!75826 () Bool)

(assert (=> b!657111 (= c!75826 (bvslt j!136 index!984))))

(declare-fun lt!306917 () Unit!22684)

(declare-fun e!377486 () Unit!22684)

(assert (=> b!657111 (= lt!306917 e!377486)))

(declare-fun c!75827 () Bool)

(assert (=> b!657111 (= c!75827 (bvslt index!984 j!136))))

(declare-fun lt!306922 () Unit!22684)

(declare-fun e!377485 () Unit!22684)

(assert (=> b!657111 (= lt!306922 e!377485)))

(assert (=> b!657111 false))

(declare-fun b!657112 () Bool)

(declare-fun res!426209 () Bool)

(assert (=> b!657112 (=> (not res!426209) (not e!377479))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!657112 (= res!426209 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18537 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657113 () Bool)

(declare-fun res!426205 () Bool)

(declare-fun e!377482 () Bool)

(assert (=> b!657113 (=> (not res!426205) (not e!377482))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657113 (= res!426205 (validKeyInArray!0 k!1786))))

(declare-fun b!657114 () Bool)

(declare-fun res!426211 () Bool)

(assert (=> b!657114 (=> (not res!426211) (not e!377482))))

(assert (=> b!657114 (= res!426211 (validKeyInArray!0 (select (arr!18537 a!2986) j!136)))))

(declare-fun b!657115 () Bool)

(declare-fun e!377487 () Bool)

(assert (=> b!657115 (= e!377487 true)))

(assert (=> b!657115 (= (select (store (arr!18537 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun e!377476 () Bool)

(declare-fun b!657116 () Bool)

(declare-fun arrayContainsKey!0 (array!38688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657116 (= e!377476 (arrayContainsKey!0 lt!306910 (select (arr!18537 a!2986) j!136) index!984))))

(declare-fun res!426197 () Bool)

(assert (=> start!59574 (=> (not res!426197) (not e!377482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59574 (= res!426197 (validMask!0 mask!3053))))

(assert (=> start!59574 e!377482))

(assert (=> start!59574 true))

(declare-fun array_inv!14311 (array!38688) Bool)

(assert (=> start!59574 (array_inv!14311 a!2986)))

(declare-fun b!657117 () Bool)

(declare-fun Unit!22687 () Unit!22684)

(assert (=> b!657117 (= e!377485 Unit!22687)))

(declare-fun b!657118 () Bool)

(declare-fun Unit!22688 () Unit!22684)

(assert (=> b!657118 (= e!377486 Unit!22688)))

(declare-fun b!657119 () Bool)

(declare-fun e!377480 () Unit!22684)

(declare-fun Unit!22689 () Unit!22684)

(assert (=> b!657119 (= e!377480 Unit!22689)))

(declare-fun b!657120 () Bool)

(declare-fun res!426208 () Bool)

(assert (=> b!657120 (=> (not res!426208) (not e!377479))))

(declare-datatypes ((List!12631 0))(
  ( (Nil!12628) (Cons!12627 (h!13672 (_ BitVec 64)) (t!18867 List!12631)) )
))
(declare-fun arrayNoDuplicates!0 (array!38688 (_ BitVec 32) List!12631) Bool)

(assert (=> b!657120 (= res!426208 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12628))))

(declare-fun b!657121 () Bool)

(declare-fun e!377478 () Bool)

(assert (=> b!657121 (= e!377478 (arrayContainsKey!0 lt!306910 (select (arr!18537 a!2986) j!136) index!984))))

(declare-fun b!657122 () Bool)

(assert (=> b!657122 (= e!377482 e!377479)))

(declare-fun res!426212 () Bool)

(assert (=> b!657122 (=> (not res!426212) (not e!377479))))

(declare-datatypes ((SeekEntryResult!6984 0))(
  ( (MissingZero!6984 (index!30300 (_ BitVec 32))) (Found!6984 (index!30301 (_ BitVec 32))) (Intermediate!6984 (undefined!7796 Bool) (index!30302 (_ BitVec 32)) (x!59124 (_ BitVec 32))) (Undefined!6984) (MissingVacant!6984 (index!30303 (_ BitVec 32))) )
))
(declare-fun lt!306925 () SeekEntryResult!6984)

(assert (=> b!657122 (= res!426212 (or (= lt!306925 (MissingZero!6984 i!1108)) (= lt!306925 (MissingVacant!6984 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38688 (_ BitVec 32)) SeekEntryResult!6984)

(assert (=> b!657122 (= lt!306925 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657123 () Bool)

(declare-fun res!426196 () Bool)

(assert (=> b!657123 (=> (not res!426196) (not e!377482))))

(assert (=> b!657123 (= res!426196 (and (= (size!18901 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18901 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18901 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657124 () Bool)

(assert (=> b!657124 false))

(declare-fun lt!306916 () Unit!22684)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38688 (_ BitVec 64) (_ BitVec 32) List!12631) Unit!22684)

(assert (=> b!657124 (= lt!306916 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306910 (select (arr!18537 a!2986) j!136) index!984 Nil!12628))))

(assert (=> b!657124 (arrayNoDuplicates!0 lt!306910 index!984 Nil!12628)))

(declare-fun lt!306921 () Unit!22684)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38688 (_ BitVec 32) (_ BitVec 32)) Unit!22684)

(assert (=> b!657124 (= lt!306921 (lemmaNoDuplicateFromThenFromBigger!0 lt!306910 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657124 (arrayNoDuplicates!0 lt!306910 #b00000000000000000000000000000000 Nil!12628)))

(declare-fun lt!306918 () Unit!22684)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38688 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12631) Unit!22684)

(assert (=> b!657124 (= lt!306918 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12628))))

(assert (=> b!657124 (arrayContainsKey!0 lt!306910 (select (arr!18537 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306911 () Unit!22684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38688 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22684)

(assert (=> b!657124 (= lt!306911 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306910 (select (arr!18537 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!657124 e!377476))

(declare-fun res!426210 () Bool)

(assert (=> b!657124 (=> (not res!426210) (not e!377476))))

(assert (=> b!657124 (= res!426210 (arrayContainsKey!0 lt!306910 (select (arr!18537 a!2986) j!136) j!136))))

(declare-fun Unit!22690 () Unit!22684)

(assert (=> b!657124 (= e!377485 Unit!22690)))

(declare-fun b!657125 () Bool)

(declare-fun Unit!22691 () Unit!22684)

(assert (=> b!657125 (= e!377480 Unit!22691)))

(assert (=> b!657125 false))

(declare-fun b!657126 () Bool)

(declare-fun Unit!22692 () Unit!22684)

(assert (=> b!657126 (= e!377483 Unit!22692)))

(declare-fun b!657127 () Bool)

(declare-fun e!377475 () Bool)

(assert (=> b!657127 (= e!377477 e!377475)))

(declare-fun res!426202 () Bool)

(assert (=> b!657127 (=> (not res!426202) (not e!377475))))

(declare-fun lt!306913 () SeekEntryResult!6984)

(assert (=> b!657127 (= res!426202 (and (= lt!306913 (Found!6984 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18537 a!2986) index!984) (select (arr!18537 a!2986) j!136))) (not (= (select (arr!18537 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38688 (_ BitVec 32)) SeekEntryResult!6984)

(assert (=> b!657127 (= lt!306913 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18537 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!426207 () Bool)

(declare-fun b!657128 () Bool)

(assert (=> b!657128 (= res!426207 (arrayContainsKey!0 lt!306910 (select (arr!18537 a!2986) j!136) j!136))))

(assert (=> b!657128 (=> (not res!426207) (not e!377478))))

(declare-fun e!377474 () Bool)

(assert (=> b!657128 (= e!377474 e!377478)))

(declare-fun b!657129 () Bool)

(declare-fun res!426198 () Bool)

(assert (=> b!657129 (=> (not res!426198) (not e!377482))))

(assert (=> b!657129 (= res!426198 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657130 () Bool)

(assert (=> b!657130 (= e!377475 (not e!377487))))

(declare-fun res!426204 () Bool)

(assert (=> b!657130 (=> res!426204 e!377487)))

(declare-fun lt!306919 () SeekEntryResult!6984)

(assert (=> b!657130 (= res!426204 (not (= lt!306919 (MissingVacant!6984 vacantSpotIndex!68))))))

(declare-fun lt!306927 () Unit!22684)

(assert (=> b!657130 (= lt!306927 e!377483)))

(declare-fun c!75824 () Bool)

(assert (=> b!657130 (= c!75824 (= lt!306919 (Found!6984 index!984)))))

(declare-fun lt!306926 () Unit!22684)

(assert (=> b!657130 (= lt!306926 e!377480)))

(declare-fun c!75825 () Bool)

(assert (=> b!657130 (= c!75825 (= lt!306919 Undefined!6984))))

(declare-fun lt!306908 () (_ BitVec 64))

(assert (=> b!657130 (= lt!306919 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306908 lt!306910 mask!3053))))

(declare-fun e!377488 () Bool)

(assert (=> b!657130 e!377488))

(declare-fun res!426199 () Bool)

(assert (=> b!657130 (=> (not res!426199) (not e!377488))))

(declare-fun lt!306915 () (_ BitVec 32))

(declare-fun lt!306912 () SeekEntryResult!6984)

(assert (=> b!657130 (= res!426199 (= lt!306912 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306915 vacantSpotIndex!68 lt!306908 lt!306910 mask!3053)))))

(assert (=> b!657130 (= lt!306912 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306915 vacantSpotIndex!68 (select (arr!18537 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657130 (= lt!306908 (select (store (arr!18537 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306923 () Unit!22684)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38688 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22684)

(assert (=> b!657130 (= lt!306923 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306915 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657130 (= lt!306915 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657131 () Bool)

(declare-fun res!426200 () Bool)

(assert (=> b!657131 (=> (not res!426200) (not e!377479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38688 (_ BitVec 32)) Bool)

(assert (=> b!657131 (= res!426200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657132 () Bool)

(assert (=> b!657132 false))

(declare-fun lt!306920 () Unit!22684)

(assert (=> b!657132 (= lt!306920 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306910 (select (arr!18537 a!2986) j!136) j!136 Nil!12628))))

(assert (=> b!657132 (arrayNoDuplicates!0 lt!306910 j!136 Nil!12628)))

(declare-fun lt!306924 () Unit!22684)

(assert (=> b!657132 (= lt!306924 (lemmaNoDuplicateFromThenFromBigger!0 lt!306910 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657132 (arrayNoDuplicates!0 lt!306910 #b00000000000000000000000000000000 Nil!12628)))

(declare-fun lt!306909 () Unit!22684)

(assert (=> b!657132 (= lt!306909 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12628))))

(assert (=> b!657132 (arrayContainsKey!0 lt!306910 (select (arr!18537 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306914 () Unit!22684)

(assert (=> b!657132 (= lt!306914 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306910 (select (arr!18537 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22693 () Unit!22684)

(assert (=> b!657132 (= e!377486 Unit!22693)))

(declare-fun b!657133 () Bool)

(assert (=> b!657133 (= e!377488 (= lt!306913 lt!306912))))

(declare-fun b!657134 () Bool)

(declare-fun res!426201 () Bool)

(assert (=> b!657134 (= res!426201 (bvsge j!136 index!984))))

(assert (=> b!657134 (=> res!426201 e!377474)))

(assert (=> b!657134 (= e!377481 e!377474)))

(assert (= (and start!59574 res!426197) b!657123))

(assert (= (and b!657123 res!426196) b!657114))

(assert (= (and b!657114 res!426211) b!657113))

(assert (= (and b!657113 res!426205) b!657129))

(assert (= (and b!657129 res!426198) b!657122))

(assert (= (and b!657122 res!426212) b!657131))

(assert (= (and b!657131 res!426200) b!657120))

(assert (= (and b!657120 res!426208) b!657112))

(assert (= (and b!657112 res!426209) b!657110))

(assert (= (and b!657110 res!426206) b!657127))

(assert (= (and b!657127 res!426202) b!657130))

(assert (= (and b!657130 res!426199) b!657133))

(assert (= (and b!657130 c!75825) b!657125))

(assert (= (and b!657130 (not c!75825)) b!657119))

(assert (= (and b!657130 c!75824) b!657111))

(assert (= (and b!657130 (not c!75824)) b!657126))

(assert (= (and b!657111 res!426203) b!657134))

(assert (= (and b!657134 (not res!426201)) b!657128))

(assert (= (and b!657128 res!426207) b!657121))

(assert (= (and b!657111 c!75826) b!657132))

(assert (= (and b!657111 (not c!75826)) b!657118))

(assert (= (and b!657111 c!75827) b!657124))

(assert (= (and b!657111 (not c!75827)) b!657117))

(assert (= (and b!657124 res!426210) b!657116))

(assert (= (and b!657130 (not res!426204)) b!657115))

(declare-fun m!630231 () Bool)

(assert (=> b!657130 m!630231))

(declare-fun m!630233 () Bool)

(assert (=> b!657130 m!630233))

(declare-fun m!630235 () Bool)

(assert (=> b!657130 m!630235))

(assert (=> b!657130 m!630231))

(declare-fun m!630237 () Bool)

(assert (=> b!657130 m!630237))

(declare-fun m!630239 () Bool)

(assert (=> b!657130 m!630239))

(declare-fun m!630241 () Bool)

(assert (=> b!657130 m!630241))

(declare-fun m!630243 () Bool)

(assert (=> b!657130 m!630243))

(declare-fun m!630245 () Bool)

(assert (=> b!657130 m!630245))

(assert (=> b!657132 m!630231))

(declare-fun m!630247 () Bool)

(assert (=> b!657132 m!630247))

(assert (=> b!657132 m!630231))

(declare-fun m!630249 () Bool)

(assert (=> b!657132 m!630249))

(assert (=> b!657132 m!630231))

(declare-fun m!630251 () Bool)

(assert (=> b!657132 m!630251))

(declare-fun m!630253 () Bool)

(assert (=> b!657132 m!630253))

(declare-fun m!630255 () Bool)

(assert (=> b!657132 m!630255))

(assert (=> b!657132 m!630231))

(declare-fun m!630257 () Bool)

(assert (=> b!657132 m!630257))

(declare-fun m!630259 () Bool)

(assert (=> b!657132 m!630259))

(declare-fun m!630261 () Bool)

(assert (=> b!657131 m!630261))

(assert (=> b!657128 m!630231))

(assert (=> b!657128 m!630231))

(declare-fun m!630263 () Bool)

(assert (=> b!657128 m!630263))

(declare-fun m!630265 () Bool)

(assert (=> b!657112 m!630265))

(declare-fun m!630267 () Bool)

(assert (=> b!657120 m!630267))

(assert (=> b!657121 m!630231))

(assert (=> b!657121 m!630231))

(declare-fun m!630269 () Bool)

(assert (=> b!657121 m!630269))

(declare-fun m!630271 () Bool)

(assert (=> b!657127 m!630271))

(assert (=> b!657127 m!630231))

(assert (=> b!657127 m!630231))

(declare-fun m!630273 () Bool)

(assert (=> b!657127 m!630273))

(assert (=> b!657110 m!630245))

(declare-fun m!630275 () Bool)

(assert (=> b!657110 m!630275))

(assert (=> b!657111 m!630245))

(declare-fun m!630277 () Bool)

(assert (=> b!657111 m!630277))

(assert (=> b!657111 m!630231))

(declare-fun m!630279 () Bool)

(assert (=> b!657129 m!630279))

(assert (=> b!657114 m!630231))

(assert (=> b!657114 m!630231))

(declare-fun m!630281 () Bool)

(assert (=> b!657114 m!630281))

(assert (=> b!657124 m!630247))

(declare-fun m!630283 () Bool)

(assert (=> b!657124 m!630283))

(assert (=> b!657124 m!630231))

(declare-fun m!630285 () Bool)

(assert (=> b!657124 m!630285))

(assert (=> b!657124 m!630231))

(declare-fun m!630287 () Bool)

(assert (=> b!657124 m!630287))

(assert (=> b!657124 m!630255))

(assert (=> b!657124 m!630231))

(declare-fun m!630289 () Bool)

(assert (=> b!657124 m!630289))

(declare-fun m!630291 () Bool)

(assert (=> b!657124 m!630291))

(assert (=> b!657124 m!630231))

(assert (=> b!657124 m!630263))

(assert (=> b!657124 m!630231))

(declare-fun m!630293 () Bool)

(assert (=> b!657113 m!630293))

(declare-fun m!630295 () Bool)

(assert (=> start!59574 m!630295))

(declare-fun m!630297 () Bool)

(assert (=> start!59574 m!630297))

(assert (=> b!657116 m!630231))

(assert (=> b!657116 m!630231))

(assert (=> b!657116 m!630269))

(assert (=> b!657115 m!630245))

(assert (=> b!657115 m!630277))

(declare-fun m!630299 () Bool)

(assert (=> b!657122 m!630299))

(push 1)

