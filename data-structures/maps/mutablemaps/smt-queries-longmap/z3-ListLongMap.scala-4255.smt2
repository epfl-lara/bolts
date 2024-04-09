; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59018 () Bool)

(assert start!59018)

(declare-fun b!651037 () Bool)

(declare-fun e!373570 () Bool)

(declare-fun e!373571 () Bool)

(assert (=> b!651037 (= e!373570 e!373571)))

(declare-fun res!422246 () Bool)

(assert (=> b!651037 (=> res!422246 e!373571)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!651037 (= res!422246 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22222 0))(
  ( (Unit!22223) )
))
(declare-fun lt!302749 () Unit!22222)

(declare-fun e!373581 () Unit!22222)

(assert (=> b!651037 (= lt!302749 e!373581)))

(declare-fun c!74765 () Bool)

(assert (=> b!651037 (= c!74765 (bvslt j!136 index!984))))

(declare-fun b!651038 () Bool)

(declare-fun e!373573 () Bool)

(declare-datatypes ((SeekEntryResult!6925 0))(
  ( (MissingZero!6925 (index!30049 (_ BitVec 32))) (Found!6925 (index!30050 (_ BitVec 32))) (Intermediate!6925 (undefined!7737 Bool) (index!30051 (_ BitVec 32)) (x!58860 (_ BitVec 32))) (Undefined!6925) (MissingVacant!6925 (index!30052 (_ BitVec 32))) )
))
(declare-fun lt!302759 () SeekEntryResult!6925)

(declare-fun lt!302755 () SeekEntryResult!6925)

(assert (=> b!651038 (= e!373573 (= lt!302759 lt!302755))))

(declare-fun b!651039 () Bool)

(declare-fun res!422261 () Bool)

(declare-fun e!373576 () Bool)

(assert (=> b!651039 (=> (not res!422261) (not e!373576))))

(declare-datatypes ((array!38555 0))(
  ( (array!38556 (arr!18478 (Array (_ BitVec 32) (_ BitVec 64))) (size!18842 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38555)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651039 (= res!422261 (validKeyInArray!0 (select (arr!18478 a!2986) j!136)))))

(declare-fun b!651040 () Bool)

(declare-fun res!422260 () Bool)

(declare-fun e!373578 () Bool)

(assert (=> b!651040 (=> (not res!422260) (not e!373578))))

(declare-datatypes ((List!12572 0))(
  ( (Nil!12569) (Cons!12568 (h!13613 (_ BitVec 64)) (t!18808 List!12572)) )
))
(declare-fun arrayNoDuplicates!0 (array!38555 (_ BitVec 32) List!12572) Bool)

(assert (=> b!651040 (= res!422260 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12569))))

(declare-fun e!373572 () Bool)

(declare-fun b!651041 () Bool)

(declare-fun lt!302757 () array!38555)

(declare-fun arrayContainsKey!0 (array!38555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651041 (= e!373572 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) index!984))))

(declare-fun b!651042 () Bool)

(declare-fun e!373582 () Unit!22222)

(declare-fun Unit!22224 () Unit!22222)

(assert (=> b!651042 (= e!373582 Unit!22224)))

(assert (=> b!651042 false))

(declare-fun b!651043 () Bool)

(declare-fun res!422254 () Bool)

(assert (=> b!651043 (=> (not res!422254) (not e!373576))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!651043 (= res!422254 (and (= (size!18842 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18842 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18842 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!422245 () Bool)

(assert (=> start!59018 (=> (not res!422245) (not e!373576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59018 (= res!422245 (validMask!0 mask!3053))))

(assert (=> start!59018 e!373576))

(assert (=> start!59018 true))

(declare-fun array_inv!14252 (array!38555) Bool)

(assert (=> start!59018 (array_inv!14252 a!2986)))

(declare-fun b!651044 () Bool)

(declare-fun Unit!22225 () Unit!22222)

(assert (=> b!651044 (= e!373581 Unit!22225)))

(declare-fun lt!302752 () Unit!22222)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22222)

(assert (=> b!651044 (= lt!302752 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302757 (select (arr!18478 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651044 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!302748 () Unit!22222)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12572) Unit!22222)

(assert (=> b!651044 (= lt!302748 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12569))))

(assert (=> b!651044 (arrayNoDuplicates!0 lt!302757 #b00000000000000000000000000000000 Nil!12569)))

(declare-fun lt!302751 () Unit!22222)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38555 (_ BitVec 32) (_ BitVec 32)) Unit!22222)

(assert (=> b!651044 (= lt!302751 (lemmaNoDuplicateFromThenFromBigger!0 lt!302757 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651044 (arrayNoDuplicates!0 lt!302757 j!136 Nil!12569)))

(declare-fun lt!302754 () Unit!22222)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38555 (_ BitVec 64) (_ BitVec 32) List!12572) Unit!22222)

(assert (=> b!651044 (= lt!302754 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136 Nil!12569))))

(assert (=> b!651044 false))

(declare-fun b!651045 () Bool)

(declare-fun e!373575 () Bool)

(declare-fun e!373580 () Bool)

(assert (=> b!651045 (= e!373575 e!373580)))

(declare-fun res!422244 () Bool)

(assert (=> b!651045 (=> res!422244 e!373580)))

(declare-fun lt!302758 () (_ BitVec 64))

(declare-fun lt!302753 () (_ BitVec 64))

(assert (=> b!651045 (= res!422244 (or (not (= (select (arr!18478 a!2986) j!136) lt!302758)) (not (= (select (arr!18478 a!2986) j!136) lt!302753)) (bvsge j!136 index!984)))))

(declare-fun b!651046 () Bool)

(declare-fun e!373569 () Bool)

(assert (=> b!651046 (= e!373569 e!373570)))

(declare-fun res!422250 () Bool)

(assert (=> b!651046 (=> res!422250 e!373570)))

(assert (=> b!651046 (= res!422250 (or (not (= (select (arr!18478 a!2986) j!136) lt!302758)) (not (= (select (arr!18478 a!2986) j!136) lt!302753))))))

(assert (=> b!651046 e!373575))

(declare-fun res!422249 () Bool)

(assert (=> b!651046 (=> (not res!422249) (not e!373575))))

(assert (=> b!651046 (= res!422249 (= lt!302753 (select (arr!18478 a!2986) j!136)))))

(assert (=> b!651046 (= lt!302753 (select (store (arr!18478 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!651047 () Bool)

(declare-fun e!373579 () Bool)

(assert (=> b!651047 (= e!373579 (not e!373569))))

(declare-fun res!422247 () Bool)

(assert (=> b!651047 (=> res!422247 e!373569)))

(declare-fun lt!302747 () SeekEntryResult!6925)

(assert (=> b!651047 (= res!422247 (not (= lt!302747 (Found!6925 index!984))))))

(declare-fun lt!302756 () Unit!22222)

(assert (=> b!651047 (= lt!302756 e!373582)))

(declare-fun c!74764 () Bool)

(assert (=> b!651047 (= c!74764 (= lt!302747 Undefined!6925))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38555 (_ BitVec 32)) SeekEntryResult!6925)

(assert (=> b!651047 (= lt!302747 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302758 lt!302757 mask!3053))))

(assert (=> b!651047 e!373573))

(declare-fun res!422253 () Bool)

(assert (=> b!651047 (=> (not res!422253) (not e!373573))))

(declare-fun lt!302745 () (_ BitVec 32))

(assert (=> b!651047 (= res!422253 (= lt!302755 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 lt!302758 lt!302757 mask!3053)))))

(assert (=> b!651047 (= lt!302755 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651047 (= lt!302758 (select (store (arr!18478 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!302744 () Unit!22222)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22222)

(assert (=> b!651047 (= lt!302744 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651047 (= lt!302745 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651048 () Bool)

(assert (=> b!651048 (= e!373580 e!373572)))

(declare-fun res!422251 () Bool)

(assert (=> b!651048 (=> (not res!422251) (not e!373572))))

(assert (=> b!651048 (= res!422251 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136))))

(declare-fun b!651049 () Bool)

(declare-fun res!422248 () Bool)

(assert (=> b!651049 (=> (not res!422248) (not e!373578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38555 (_ BitVec 32)) Bool)

(assert (=> b!651049 (= res!422248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!373577 () Bool)

(declare-fun b!651050 () Bool)

(assert (=> b!651050 (= e!373577 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) index!984))))

(declare-fun b!651051 () Bool)

(declare-fun e!373568 () Bool)

(assert (=> b!651051 (= e!373568 e!373579)))

(declare-fun res!422252 () Bool)

(assert (=> b!651051 (=> (not res!422252) (not e!373579))))

(assert (=> b!651051 (= res!422252 (and (= lt!302759 (Found!6925 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18478 a!2986) index!984) (select (arr!18478 a!2986) j!136))) (not (= (select (arr!18478 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!651051 (= lt!302759 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651052 () Bool)

(declare-fun Unit!22226 () Unit!22222)

(assert (=> b!651052 (= e!373582 Unit!22226)))

(declare-fun b!651053 () Bool)

(declare-fun res!422258 () Bool)

(assert (=> b!651053 (=> (not res!422258) (not e!373578))))

(assert (=> b!651053 (= res!422258 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18478 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651054 () Bool)

(assert (=> b!651054 (= e!373571 (bvslt (size!18842 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!651054 (arrayNoDuplicates!0 lt!302757 index!984 Nil!12569)))

(declare-fun lt!302760 () Unit!22222)

(assert (=> b!651054 (= lt!302760 (lemmaNoDuplicateFromThenFromBigger!0 lt!302757 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651054 (arrayNoDuplicates!0 lt!302757 #b00000000000000000000000000000000 Nil!12569)))

(declare-fun lt!302750 () Unit!22222)

(assert (=> b!651054 (= lt!302750 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12569))))

(assert (=> b!651054 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302743 () Unit!22222)

(assert (=> b!651054 (= lt!302743 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651054 e!373577))

(declare-fun res!422259 () Bool)

(assert (=> b!651054 (=> (not res!422259) (not e!373577))))

(assert (=> b!651054 (= res!422259 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136))))

(declare-fun b!651055 () Bool)

(assert (=> b!651055 (= e!373578 e!373568)))

(declare-fun res!422257 () Bool)

(assert (=> b!651055 (=> (not res!422257) (not e!373568))))

(assert (=> b!651055 (= res!422257 (= (select (store (arr!18478 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651055 (= lt!302757 (array!38556 (store (arr!18478 a!2986) i!1108 k0!1786) (size!18842 a!2986)))))

(declare-fun b!651056 () Bool)

(declare-fun Unit!22227 () Unit!22222)

(assert (=> b!651056 (= e!373581 Unit!22227)))

(declare-fun b!651057 () Bool)

(declare-fun res!422243 () Bool)

(assert (=> b!651057 (=> (not res!422243) (not e!373576))))

(assert (=> b!651057 (= res!422243 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651058 () Bool)

(assert (=> b!651058 (= e!373576 e!373578)))

(declare-fun res!422256 () Bool)

(assert (=> b!651058 (=> (not res!422256) (not e!373578))))

(declare-fun lt!302746 () SeekEntryResult!6925)

(assert (=> b!651058 (= res!422256 (or (= lt!302746 (MissingZero!6925 i!1108)) (= lt!302746 (MissingVacant!6925 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38555 (_ BitVec 32)) SeekEntryResult!6925)

(assert (=> b!651058 (= lt!302746 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!651059 () Bool)

(declare-fun res!422255 () Bool)

(assert (=> b!651059 (=> (not res!422255) (not e!373576))))

(assert (=> b!651059 (= res!422255 (validKeyInArray!0 k0!1786))))

(assert (= (and start!59018 res!422245) b!651043))

(assert (= (and b!651043 res!422254) b!651039))

(assert (= (and b!651039 res!422261) b!651059))

(assert (= (and b!651059 res!422255) b!651057))

(assert (= (and b!651057 res!422243) b!651058))

(assert (= (and b!651058 res!422256) b!651049))

(assert (= (and b!651049 res!422248) b!651040))

(assert (= (and b!651040 res!422260) b!651053))

(assert (= (and b!651053 res!422258) b!651055))

(assert (= (and b!651055 res!422257) b!651051))

(assert (= (and b!651051 res!422252) b!651047))

(assert (= (and b!651047 res!422253) b!651038))

(assert (= (and b!651047 c!74764) b!651042))

(assert (= (and b!651047 (not c!74764)) b!651052))

(assert (= (and b!651047 (not res!422247)) b!651046))

(assert (= (and b!651046 res!422249) b!651045))

(assert (= (and b!651045 (not res!422244)) b!651048))

(assert (= (and b!651048 res!422251) b!651041))

(assert (= (and b!651046 (not res!422250)) b!651037))

(assert (= (and b!651037 c!74765) b!651044))

(assert (= (and b!651037 (not c!74765)) b!651056))

(assert (= (and b!651037 (not res!422246)) b!651054))

(assert (= (and b!651054 res!422259) b!651050))

(declare-fun m!624257 () Bool)

(assert (=> b!651051 m!624257))

(declare-fun m!624259 () Bool)

(assert (=> b!651051 m!624259))

(assert (=> b!651051 m!624259))

(declare-fun m!624261 () Bool)

(assert (=> b!651051 m!624261))

(assert (=> b!651044 m!624259))

(declare-fun m!624263 () Bool)

(assert (=> b!651044 m!624263))

(assert (=> b!651044 m!624259))

(declare-fun m!624265 () Bool)

(assert (=> b!651044 m!624265))

(assert (=> b!651044 m!624259))

(declare-fun m!624267 () Bool)

(assert (=> b!651044 m!624267))

(declare-fun m!624269 () Bool)

(assert (=> b!651044 m!624269))

(declare-fun m!624271 () Bool)

(assert (=> b!651044 m!624271))

(assert (=> b!651044 m!624259))

(declare-fun m!624273 () Bool)

(assert (=> b!651044 m!624273))

(declare-fun m!624275 () Bool)

(assert (=> b!651044 m!624275))

(assert (=> b!651046 m!624259))

(declare-fun m!624277 () Bool)

(assert (=> b!651046 m!624277))

(declare-fun m!624279 () Bool)

(assert (=> b!651046 m!624279))

(declare-fun m!624281 () Bool)

(assert (=> b!651053 m!624281))

(declare-fun m!624283 () Bool)

(assert (=> start!59018 m!624283))

(declare-fun m!624285 () Bool)

(assert (=> start!59018 m!624285))

(declare-fun m!624287 () Bool)

(assert (=> b!651049 m!624287))

(assert (=> b!651055 m!624277))

(declare-fun m!624289 () Bool)

(assert (=> b!651055 m!624289))

(assert (=> b!651054 m!624259))

(declare-fun m!624291 () Bool)

(assert (=> b!651054 m!624291))

(assert (=> b!651054 m!624259))

(assert (=> b!651054 m!624259))

(declare-fun m!624293 () Bool)

(assert (=> b!651054 m!624293))

(assert (=> b!651054 m!624263))

(declare-fun m!624295 () Bool)

(assert (=> b!651054 m!624295))

(declare-fun m!624297 () Bool)

(assert (=> b!651054 m!624297))

(assert (=> b!651054 m!624259))

(declare-fun m!624299 () Bool)

(assert (=> b!651054 m!624299))

(assert (=> b!651054 m!624271))

(declare-fun m!624301 () Bool)

(assert (=> b!651058 m!624301))

(assert (=> b!651041 m!624259))

(assert (=> b!651041 m!624259))

(declare-fun m!624303 () Bool)

(assert (=> b!651041 m!624303))

(assert (=> b!651039 m!624259))

(assert (=> b!651039 m!624259))

(declare-fun m!624305 () Bool)

(assert (=> b!651039 m!624305))

(assert (=> b!651048 m!624259))

(assert (=> b!651048 m!624259))

(assert (=> b!651048 m!624291))

(declare-fun m!624307 () Bool)

(assert (=> b!651057 m!624307))

(declare-fun m!624309 () Bool)

(assert (=> b!651047 m!624309))

(declare-fun m!624311 () Bool)

(assert (=> b!651047 m!624311))

(assert (=> b!651047 m!624259))

(assert (=> b!651047 m!624277))

(declare-fun m!624313 () Bool)

(assert (=> b!651047 m!624313))

(declare-fun m!624315 () Bool)

(assert (=> b!651047 m!624315))

(declare-fun m!624317 () Bool)

(assert (=> b!651047 m!624317))

(assert (=> b!651047 m!624259))

(declare-fun m!624319 () Bool)

(assert (=> b!651047 m!624319))

(declare-fun m!624321 () Bool)

(assert (=> b!651059 m!624321))

(declare-fun m!624323 () Bool)

(assert (=> b!651040 m!624323))

(assert (=> b!651045 m!624259))

(assert (=> b!651050 m!624259))

(assert (=> b!651050 m!624259))

(assert (=> b!651050 m!624303))

(check-sat (not b!651039) (not b!651050) (not b!651051) (not b!651048) (not b!651040) (not b!651044) (not start!59018) (not b!651059) (not b!651054) (not b!651041) (not b!651058) (not b!651047) (not b!651057) (not b!651049))
(check-sat)
(get-model)

(declare-fun d!91925 () Bool)

(assert (=> d!91925 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59018 d!91925))

(declare-fun d!91927 () Bool)

(assert (=> d!91927 (= (array_inv!14252 a!2986) (bvsge (size!18842 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59018 d!91927))

(declare-fun b!651141 () Bool)

(declare-fun e!373636 () SeekEntryResult!6925)

(assert (=> b!651141 (= e!373636 (Found!6925 index!984))))

(declare-fun b!651142 () Bool)

(declare-fun c!74780 () Bool)

(declare-fun lt!302820 () (_ BitVec 64))

(assert (=> b!651142 (= c!74780 (= lt!302820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373635 () SeekEntryResult!6925)

(assert (=> b!651142 (= e!373636 e!373635)))

(declare-fun d!91929 () Bool)

(declare-fun lt!302819 () SeekEntryResult!6925)

(get-info :version)

(assert (=> d!91929 (and (or ((_ is Undefined!6925) lt!302819) (not ((_ is Found!6925) lt!302819)) (and (bvsge (index!30050 lt!302819) #b00000000000000000000000000000000) (bvslt (index!30050 lt!302819) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302819) ((_ is Found!6925) lt!302819) (not ((_ is MissingVacant!6925) lt!302819)) (not (= (index!30052 lt!302819) vacantSpotIndex!68)) (and (bvsge (index!30052 lt!302819) #b00000000000000000000000000000000) (bvslt (index!30052 lt!302819) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302819) (ite ((_ is Found!6925) lt!302819) (= (select (arr!18478 a!2986) (index!30050 lt!302819)) (select (arr!18478 a!2986) j!136)) (and ((_ is MissingVacant!6925) lt!302819) (= (index!30052 lt!302819) vacantSpotIndex!68) (= (select (arr!18478 a!2986) (index!30052 lt!302819)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!373634 () SeekEntryResult!6925)

(assert (=> d!91929 (= lt!302819 e!373634)))

(declare-fun c!74779 () Bool)

(assert (=> d!91929 (= c!74779 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91929 (= lt!302820 (select (arr!18478 a!2986) index!984))))

(assert (=> d!91929 (validMask!0 mask!3053)))

(assert (=> d!91929 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053) lt!302819)))

(declare-fun b!651143 () Bool)

(assert (=> b!651143 (= e!373634 Undefined!6925)))

(declare-fun b!651144 () Bool)

(assert (=> b!651144 (= e!373635 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651145 () Bool)

(assert (=> b!651145 (= e!373635 (MissingVacant!6925 vacantSpotIndex!68))))

(declare-fun b!651146 () Bool)

(assert (=> b!651146 (= e!373634 e!373636)))

(declare-fun c!74778 () Bool)

(assert (=> b!651146 (= c!74778 (= lt!302820 (select (arr!18478 a!2986) j!136)))))

(assert (= (and d!91929 c!74779) b!651143))

(assert (= (and d!91929 (not c!74779)) b!651146))

(assert (= (and b!651146 c!74778) b!651141))

(assert (= (and b!651146 (not c!74778)) b!651142))

(assert (= (and b!651142 c!74780) b!651145))

(assert (= (and b!651142 (not c!74780)) b!651144))

(declare-fun m!624393 () Bool)

(assert (=> d!91929 m!624393))

(declare-fun m!624395 () Bool)

(assert (=> d!91929 m!624395))

(assert (=> d!91929 m!624257))

(assert (=> d!91929 m!624283))

(assert (=> b!651144 m!624309))

(assert (=> b!651144 m!624309))

(assert (=> b!651144 m!624259))

(declare-fun m!624397 () Bool)

(assert (=> b!651144 m!624397))

(assert (=> b!651051 d!91929))

(declare-fun b!651157 () Bool)

(declare-fun e!373647 () Bool)

(declare-fun call!33752 () Bool)

(assert (=> b!651157 (= e!373647 call!33752)))

(declare-fun d!91931 () Bool)

(declare-fun res!422325 () Bool)

(declare-fun e!373645 () Bool)

(assert (=> d!91931 (=> res!422325 e!373645)))

(assert (=> d!91931 (= res!422325 (bvsge #b00000000000000000000000000000000 (size!18842 a!2986)))))

(assert (=> d!91931 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12569) e!373645)))

(declare-fun b!651158 () Bool)

(declare-fun e!373646 () Bool)

(declare-fun contains!3179 (List!12572 (_ BitVec 64)) Bool)

(assert (=> b!651158 (= e!373646 (contains!3179 Nil!12569 (select (arr!18478 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!651159 () Bool)

(declare-fun e!373648 () Bool)

(assert (=> b!651159 (= e!373648 e!373647)))

(declare-fun c!74783 () Bool)

(assert (=> b!651159 (= c!74783 (validKeyInArray!0 (select (arr!18478 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33749 () Bool)

(assert (=> bm!33749 (= call!33752 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74783 (Cons!12568 (select (arr!18478 a!2986) #b00000000000000000000000000000000) Nil!12569) Nil!12569)))))

(declare-fun b!651160 () Bool)

(assert (=> b!651160 (= e!373645 e!373648)))

(declare-fun res!422326 () Bool)

(assert (=> b!651160 (=> (not res!422326) (not e!373648))))

(assert (=> b!651160 (= res!422326 (not e!373646))))

(declare-fun res!422327 () Bool)

(assert (=> b!651160 (=> (not res!422327) (not e!373646))))

(assert (=> b!651160 (= res!422327 (validKeyInArray!0 (select (arr!18478 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!651161 () Bool)

(assert (=> b!651161 (= e!373647 call!33752)))

(assert (= (and d!91931 (not res!422325)) b!651160))

(assert (= (and b!651160 res!422327) b!651158))

(assert (= (and b!651160 res!422326) b!651159))

(assert (= (and b!651159 c!74783) b!651161))

(assert (= (and b!651159 (not c!74783)) b!651157))

(assert (= (or b!651161 b!651157) bm!33749))

(declare-fun m!624399 () Bool)

(assert (=> b!651158 m!624399))

(assert (=> b!651158 m!624399))

(declare-fun m!624401 () Bool)

(assert (=> b!651158 m!624401))

(assert (=> b!651159 m!624399))

(assert (=> b!651159 m!624399))

(declare-fun m!624403 () Bool)

(assert (=> b!651159 m!624403))

(assert (=> bm!33749 m!624399))

(declare-fun m!624405 () Bool)

(assert (=> bm!33749 m!624405))

(assert (=> b!651160 m!624399))

(assert (=> b!651160 m!624399))

(assert (=> b!651160 m!624403))

(assert (=> b!651040 d!91931))

(declare-fun d!91935 () Bool)

(declare-fun res!422332 () Bool)

(declare-fun e!373653 () Bool)

(assert (=> d!91935 (=> res!422332 e!373653)))

(assert (=> d!91935 (= res!422332 (= (select (arr!18478 lt!302757) index!984) (select (arr!18478 a!2986) j!136)))))

(assert (=> d!91935 (= (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) index!984) e!373653)))

(declare-fun b!651166 () Bool)

(declare-fun e!373654 () Bool)

(assert (=> b!651166 (= e!373653 e!373654)))

(declare-fun res!422333 () Bool)

(assert (=> b!651166 (=> (not res!422333) (not e!373654))))

(assert (=> b!651166 (= res!422333 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18842 lt!302757)))))

(declare-fun b!651167 () Bool)

(assert (=> b!651167 (= e!373654 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91935 (not res!422332)) b!651166))

(assert (= (and b!651166 res!422333) b!651167))

(declare-fun m!624407 () Bool)

(assert (=> d!91935 m!624407))

(assert (=> b!651167 m!624259))

(declare-fun m!624409 () Bool)

(assert (=> b!651167 m!624409))

(assert (=> b!651041 d!91935))

(declare-fun d!91939 () Bool)

(assert (=> d!91939 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302823 () Unit!22222)

(declare-fun choose!114 (array!38555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22222)

(assert (=> d!91939 (= lt!302823 (choose!114 lt!302757 (select (arr!18478 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91939 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91939 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302757 (select (arr!18478 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!302823)))

(declare-fun bs!19415 () Bool)

(assert (= bs!19415 d!91939))

(assert (=> bs!19415 m!624259))

(assert (=> bs!19415 m!624267))

(assert (=> bs!19415 m!624259))

(declare-fun m!624411 () Bool)

(assert (=> bs!19415 m!624411))

(assert (=> b!651044 d!91939))

(declare-fun d!91943 () Bool)

(assert (=> d!91943 (arrayNoDuplicates!0 lt!302757 j!136 Nil!12569)))

(declare-fun lt!302826 () Unit!22222)

(declare-fun choose!39 (array!38555 (_ BitVec 32) (_ BitVec 32)) Unit!22222)

(assert (=> d!91943 (= lt!302826 (choose!39 lt!302757 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91943 (bvslt (size!18842 lt!302757) #b01111111111111111111111111111111)))

(assert (=> d!91943 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!302757 #b00000000000000000000000000000000 j!136) lt!302826)))

(declare-fun bs!19416 () Bool)

(assert (= bs!19416 d!91943))

(assert (=> bs!19416 m!624275))

(declare-fun m!624413 () Bool)

(assert (=> bs!19416 m!624413))

(assert (=> b!651044 d!91943))

(declare-fun b!651168 () Bool)

(declare-fun e!373657 () Bool)

(declare-fun call!33753 () Bool)

(assert (=> b!651168 (= e!373657 call!33753)))

(declare-fun d!91947 () Bool)

(declare-fun res!422334 () Bool)

(declare-fun e!373655 () Bool)

(assert (=> d!91947 (=> res!422334 e!373655)))

(assert (=> d!91947 (= res!422334 (bvsge j!136 (size!18842 lt!302757)))))

(assert (=> d!91947 (= (arrayNoDuplicates!0 lt!302757 j!136 Nil!12569) e!373655)))

(declare-fun b!651169 () Bool)

(declare-fun e!373656 () Bool)

(assert (=> b!651169 (= e!373656 (contains!3179 Nil!12569 (select (arr!18478 lt!302757) j!136)))))

(declare-fun b!651170 () Bool)

(declare-fun e!373658 () Bool)

(assert (=> b!651170 (= e!373658 e!373657)))

(declare-fun c!74784 () Bool)

(assert (=> b!651170 (= c!74784 (validKeyInArray!0 (select (arr!18478 lt!302757) j!136)))))

(declare-fun bm!33750 () Bool)

(assert (=> bm!33750 (= call!33753 (arrayNoDuplicates!0 lt!302757 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74784 (Cons!12568 (select (arr!18478 lt!302757) j!136) Nil!12569) Nil!12569)))))

(declare-fun b!651171 () Bool)

(assert (=> b!651171 (= e!373655 e!373658)))

(declare-fun res!422335 () Bool)

(assert (=> b!651171 (=> (not res!422335) (not e!373658))))

(assert (=> b!651171 (= res!422335 (not e!373656))))

(declare-fun res!422336 () Bool)

(assert (=> b!651171 (=> (not res!422336) (not e!373656))))

(assert (=> b!651171 (= res!422336 (validKeyInArray!0 (select (arr!18478 lt!302757) j!136)))))

(declare-fun b!651172 () Bool)

(assert (=> b!651172 (= e!373657 call!33753)))

(assert (= (and d!91947 (not res!422334)) b!651171))

(assert (= (and b!651171 res!422336) b!651169))

(assert (= (and b!651171 res!422335) b!651170))

(assert (= (and b!651170 c!74784) b!651172))

(assert (= (and b!651170 (not c!74784)) b!651168))

(assert (= (or b!651172 b!651168) bm!33750))

(declare-fun m!624415 () Bool)

(assert (=> b!651169 m!624415))

(assert (=> b!651169 m!624415))

(declare-fun m!624417 () Bool)

(assert (=> b!651169 m!624417))

(assert (=> b!651170 m!624415))

(assert (=> b!651170 m!624415))

(declare-fun m!624419 () Bool)

(assert (=> b!651170 m!624419))

(assert (=> bm!33750 m!624415))

(declare-fun m!624421 () Bool)

(assert (=> bm!33750 m!624421))

(assert (=> b!651171 m!624415))

(assert (=> b!651171 m!624415))

(assert (=> b!651171 m!624419))

(assert (=> b!651044 d!91947))

(declare-fun b!651173 () Bool)

(declare-fun e!373661 () Bool)

(declare-fun call!33754 () Bool)

(assert (=> b!651173 (= e!373661 call!33754)))

(declare-fun d!91949 () Bool)

(declare-fun res!422337 () Bool)

(declare-fun e!373659 () Bool)

(assert (=> d!91949 (=> res!422337 e!373659)))

(assert (=> d!91949 (= res!422337 (bvsge #b00000000000000000000000000000000 (size!18842 lt!302757)))))

(assert (=> d!91949 (= (arrayNoDuplicates!0 lt!302757 #b00000000000000000000000000000000 Nil!12569) e!373659)))

(declare-fun b!651174 () Bool)

(declare-fun e!373660 () Bool)

(assert (=> b!651174 (= e!373660 (contains!3179 Nil!12569 (select (arr!18478 lt!302757) #b00000000000000000000000000000000)))))

(declare-fun b!651175 () Bool)

(declare-fun e!373662 () Bool)

(assert (=> b!651175 (= e!373662 e!373661)))

(declare-fun c!74785 () Bool)

(assert (=> b!651175 (= c!74785 (validKeyInArray!0 (select (arr!18478 lt!302757) #b00000000000000000000000000000000)))))

(declare-fun bm!33751 () Bool)

(assert (=> bm!33751 (= call!33754 (arrayNoDuplicates!0 lt!302757 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74785 (Cons!12568 (select (arr!18478 lt!302757) #b00000000000000000000000000000000) Nil!12569) Nil!12569)))))

(declare-fun b!651176 () Bool)

(assert (=> b!651176 (= e!373659 e!373662)))

(declare-fun res!422338 () Bool)

(assert (=> b!651176 (=> (not res!422338) (not e!373662))))

(assert (=> b!651176 (= res!422338 (not e!373660))))

(declare-fun res!422339 () Bool)

(assert (=> b!651176 (=> (not res!422339) (not e!373660))))

(assert (=> b!651176 (= res!422339 (validKeyInArray!0 (select (arr!18478 lt!302757) #b00000000000000000000000000000000)))))

(declare-fun b!651177 () Bool)

(assert (=> b!651177 (= e!373661 call!33754)))

(assert (= (and d!91949 (not res!422337)) b!651176))

(assert (= (and b!651176 res!422339) b!651174))

(assert (= (and b!651176 res!422338) b!651175))

(assert (= (and b!651175 c!74785) b!651177))

(assert (= (and b!651175 (not c!74785)) b!651173))

(assert (= (or b!651177 b!651173) bm!33751))

(declare-fun m!624423 () Bool)

(assert (=> b!651174 m!624423))

(assert (=> b!651174 m!624423))

(declare-fun m!624425 () Bool)

(assert (=> b!651174 m!624425))

(assert (=> b!651175 m!624423))

(assert (=> b!651175 m!624423))

(declare-fun m!624427 () Bool)

(assert (=> b!651175 m!624427))

(assert (=> bm!33751 m!624423))

(declare-fun m!624429 () Bool)

(assert (=> bm!33751 m!624429))

(assert (=> b!651176 m!624423))

(assert (=> b!651176 m!624423))

(assert (=> b!651176 m!624427))

(assert (=> b!651044 d!91949))

(declare-fun d!91951 () Bool)

(declare-fun res!422340 () Bool)

(declare-fun e!373663 () Bool)

(assert (=> d!91951 (=> res!422340 e!373663)))

(assert (=> d!91951 (= res!422340 (= (select (arr!18478 lt!302757) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18478 a!2986) j!136)))))

(assert (=> d!91951 (= (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!373663)))

(declare-fun b!651178 () Bool)

(declare-fun e!373664 () Bool)

(assert (=> b!651178 (= e!373663 e!373664)))

(declare-fun res!422341 () Bool)

(assert (=> b!651178 (=> (not res!422341) (not e!373664))))

(assert (=> b!651178 (= res!422341 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18842 lt!302757)))))

(declare-fun b!651179 () Bool)

(assert (=> b!651179 (= e!373664 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91951 (not res!422340)) b!651178))

(assert (= (and b!651178 res!422341) b!651179))

(declare-fun m!624431 () Bool)

(assert (=> d!91951 m!624431))

(assert (=> b!651179 m!624259))

(declare-fun m!624433 () Bool)

(assert (=> b!651179 m!624433))

(assert (=> b!651044 d!91951))

(declare-fun d!91953 () Bool)

(assert (=> d!91953 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18842 lt!302757)) (not (= (select (arr!18478 lt!302757) j!136) (select (arr!18478 a!2986) j!136))))))

(declare-fun lt!302829 () Unit!22222)

(declare-fun choose!21 (array!38555 (_ BitVec 64) (_ BitVec 32) List!12572) Unit!22222)

(assert (=> d!91953 (= lt!302829 (choose!21 lt!302757 (select (arr!18478 a!2986) j!136) j!136 Nil!12569))))

(assert (=> d!91953 (bvslt (size!18842 lt!302757) #b01111111111111111111111111111111)))

(assert (=> d!91953 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136 Nil!12569) lt!302829)))

(declare-fun bs!19417 () Bool)

(assert (= bs!19417 d!91953))

(assert (=> bs!19417 m!624415))

(assert (=> bs!19417 m!624259))

(declare-fun m!624435 () Bool)

(assert (=> bs!19417 m!624435))

(assert (=> b!651044 d!91953))

(declare-fun d!91955 () Bool)

(declare-fun e!373673 () Bool)

(assert (=> d!91955 e!373673))

(declare-fun res!422344 () Bool)

(assert (=> d!91955 (=> (not res!422344) (not e!373673))))

(assert (=> d!91955 (= res!422344 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18842 a!2986))))))

(declare-fun lt!302838 () Unit!22222)

(declare-fun choose!41 (array!38555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12572) Unit!22222)

(assert (=> d!91955 (= lt!302838 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12569))))

(assert (=> d!91955 (bvslt (size!18842 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91955 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12569) lt!302838)))

(declare-fun b!651194 () Bool)

(assert (=> b!651194 (= e!373673 (arrayNoDuplicates!0 (array!38556 (store (arr!18478 a!2986) i!1108 k0!1786) (size!18842 a!2986)) #b00000000000000000000000000000000 Nil!12569))))

(assert (= (and d!91955 res!422344) b!651194))

(declare-fun m!624437 () Bool)

(assert (=> d!91955 m!624437))

(assert (=> b!651194 m!624277))

(declare-fun m!624439 () Bool)

(assert (=> b!651194 m!624439))

(assert (=> b!651044 d!91955))

(declare-fun d!91957 () Bool)

(assert (=> d!91957 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302839 () Unit!22222)

(assert (=> d!91957 (= lt!302839 (choose!114 lt!302757 (select (arr!18478 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91957 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91957 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!302839)))

(declare-fun bs!19418 () Bool)

(assert (= bs!19418 d!91957))

(assert (=> bs!19418 m!624259))

(assert (=> bs!19418 m!624299))

(assert (=> bs!19418 m!624259))

(declare-fun m!624441 () Bool)

(assert (=> bs!19418 m!624441))

(assert (=> b!651054 d!91957))

(declare-fun b!651195 () Bool)

(declare-fun e!373676 () Bool)

(declare-fun call!33755 () Bool)

(assert (=> b!651195 (= e!373676 call!33755)))

(declare-fun d!91959 () Bool)

(declare-fun res!422345 () Bool)

(declare-fun e!373674 () Bool)

(assert (=> d!91959 (=> res!422345 e!373674)))

(assert (=> d!91959 (= res!422345 (bvsge index!984 (size!18842 lt!302757)))))

(assert (=> d!91959 (= (arrayNoDuplicates!0 lt!302757 index!984 Nil!12569) e!373674)))

(declare-fun b!651196 () Bool)

(declare-fun e!373675 () Bool)

(assert (=> b!651196 (= e!373675 (contains!3179 Nil!12569 (select (arr!18478 lt!302757) index!984)))))

(declare-fun b!651197 () Bool)

(declare-fun e!373677 () Bool)

(assert (=> b!651197 (= e!373677 e!373676)))

(declare-fun c!74792 () Bool)

(assert (=> b!651197 (= c!74792 (validKeyInArray!0 (select (arr!18478 lt!302757) index!984)))))

(declare-fun bm!33752 () Bool)

(assert (=> bm!33752 (= call!33755 (arrayNoDuplicates!0 lt!302757 (bvadd index!984 #b00000000000000000000000000000001) (ite c!74792 (Cons!12568 (select (arr!18478 lt!302757) index!984) Nil!12569) Nil!12569)))))

(declare-fun b!651198 () Bool)

(assert (=> b!651198 (= e!373674 e!373677)))

(declare-fun res!422346 () Bool)

(assert (=> b!651198 (=> (not res!422346) (not e!373677))))

(assert (=> b!651198 (= res!422346 (not e!373675))))

(declare-fun res!422347 () Bool)

(assert (=> b!651198 (=> (not res!422347) (not e!373675))))

(assert (=> b!651198 (= res!422347 (validKeyInArray!0 (select (arr!18478 lt!302757) index!984)))))

(declare-fun b!651199 () Bool)

(assert (=> b!651199 (= e!373676 call!33755)))

(assert (= (and d!91959 (not res!422345)) b!651198))

(assert (= (and b!651198 res!422347) b!651196))

(assert (= (and b!651198 res!422346) b!651197))

(assert (= (and b!651197 c!74792) b!651199))

(assert (= (and b!651197 (not c!74792)) b!651195))

(assert (= (or b!651199 b!651195) bm!33752))

(assert (=> b!651196 m!624407))

(assert (=> b!651196 m!624407))

(declare-fun m!624443 () Bool)

(assert (=> b!651196 m!624443))

(assert (=> b!651197 m!624407))

(assert (=> b!651197 m!624407))

(declare-fun m!624445 () Bool)

(assert (=> b!651197 m!624445))

(assert (=> bm!33752 m!624407))

(declare-fun m!624447 () Bool)

(assert (=> bm!33752 m!624447))

(assert (=> b!651198 m!624407))

(assert (=> b!651198 m!624407))

(assert (=> b!651198 m!624445))

(assert (=> b!651054 d!91959))

(assert (=> b!651054 d!91949))

(declare-fun d!91961 () Bool)

(assert (=> d!91961 (arrayNoDuplicates!0 lt!302757 index!984 Nil!12569)))

(declare-fun lt!302840 () Unit!22222)

(assert (=> d!91961 (= lt!302840 (choose!39 lt!302757 #b00000000000000000000000000000000 index!984))))

(assert (=> d!91961 (bvslt (size!18842 lt!302757) #b01111111111111111111111111111111)))

(assert (=> d!91961 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!302757 #b00000000000000000000000000000000 index!984) lt!302840)))

(declare-fun bs!19419 () Bool)

(assert (= bs!19419 d!91961))

(assert (=> bs!19419 m!624297))

(declare-fun m!624449 () Bool)

(assert (=> bs!19419 m!624449))

(assert (=> b!651054 d!91961))

(declare-fun d!91963 () Bool)

(declare-fun res!422348 () Bool)

(declare-fun e!373678 () Bool)

(assert (=> d!91963 (=> res!422348 e!373678)))

(assert (=> d!91963 (= res!422348 (= (select (arr!18478 lt!302757) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18478 a!2986) j!136)))))

(assert (=> d!91963 (= (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!373678)))

(declare-fun b!651200 () Bool)

(declare-fun e!373679 () Bool)

(assert (=> b!651200 (= e!373678 e!373679)))

(declare-fun res!422349 () Bool)

(assert (=> b!651200 (=> (not res!422349) (not e!373679))))

(assert (=> b!651200 (= res!422349 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18842 lt!302757)))))

(declare-fun b!651201 () Bool)

(assert (=> b!651201 (= e!373679 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91963 (not res!422348)) b!651200))

(assert (= (and b!651200 res!422349) b!651201))

(declare-fun m!624451 () Bool)

(assert (=> d!91963 m!624451))

(assert (=> b!651201 m!624259))

(declare-fun m!624453 () Bool)

(assert (=> b!651201 m!624453))

(assert (=> b!651054 d!91963))

(declare-fun d!91965 () Bool)

(declare-fun res!422350 () Bool)

(declare-fun e!373680 () Bool)

(assert (=> d!91965 (=> res!422350 e!373680)))

(assert (=> d!91965 (= res!422350 (= (select (arr!18478 lt!302757) j!136) (select (arr!18478 a!2986) j!136)))))

(assert (=> d!91965 (= (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) j!136) e!373680)))

(declare-fun b!651202 () Bool)

(declare-fun e!373681 () Bool)

(assert (=> b!651202 (= e!373680 e!373681)))

(declare-fun res!422351 () Bool)

(assert (=> b!651202 (=> (not res!422351) (not e!373681))))

(assert (=> b!651202 (= res!422351 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18842 lt!302757)))))

(declare-fun b!651203 () Bool)

(assert (=> b!651203 (= e!373681 (arrayContainsKey!0 lt!302757 (select (arr!18478 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91965 (not res!422350)) b!651202))

(assert (= (and b!651202 res!422351) b!651203))

(assert (=> d!91965 m!624415))

(assert (=> b!651203 m!624259))

(declare-fun m!624455 () Bool)

(assert (=> b!651203 m!624455))

(assert (=> b!651054 d!91965))

(assert (=> b!651054 d!91955))

(declare-fun b!651212 () Bool)

(declare-fun e!373687 () SeekEntryResult!6925)

(assert (=> b!651212 (= e!373687 (Found!6925 index!984))))

(declare-fun b!651213 () Bool)

(declare-fun c!74798 () Bool)

(declare-fun lt!302849 () (_ BitVec 64))

(assert (=> b!651213 (= c!74798 (= lt!302849 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373686 () SeekEntryResult!6925)

(assert (=> b!651213 (= e!373687 e!373686)))

(declare-fun d!91967 () Bool)

(declare-fun lt!302848 () SeekEntryResult!6925)

(assert (=> d!91967 (and (or ((_ is Undefined!6925) lt!302848) (not ((_ is Found!6925) lt!302848)) (and (bvsge (index!30050 lt!302848) #b00000000000000000000000000000000) (bvslt (index!30050 lt!302848) (size!18842 lt!302757)))) (or ((_ is Undefined!6925) lt!302848) ((_ is Found!6925) lt!302848) (not ((_ is MissingVacant!6925) lt!302848)) (not (= (index!30052 lt!302848) vacantSpotIndex!68)) (and (bvsge (index!30052 lt!302848) #b00000000000000000000000000000000) (bvslt (index!30052 lt!302848) (size!18842 lt!302757)))) (or ((_ is Undefined!6925) lt!302848) (ite ((_ is Found!6925) lt!302848) (= (select (arr!18478 lt!302757) (index!30050 lt!302848)) lt!302758) (and ((_ is MissingVacant!6925) lt!302848) (= (index!30052 lt!302848) vacantSpotIndex!68) (= (select (arr!18478 lt!302757) (index!30052 lt!302848)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!373685 () SeekEntryResult!6925)

(assert (=> d!91967 (= lt!302848 e!373685)))

(declare-fun c!74797 () Bool)

(assert (=> d!91967 (= c!74797 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91967 (= lt!302849 (select (arr!18478 lt!302757) index!984))))

(assert (=> d!91967 (validMask!0 mask!3053)))

(assert (=> d!91967 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302758 lt!302757 mask!3053) lt!302848)))

(declare-fun b!651214 () Bool)

(assert (=> b!651214 (= e!373685 Undefined!6925)))

(declare-fun b!651215 () Bool)

(assert (=> b!651215 (= e!373686 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!302758 lt!302757 mask!3053))))

(declare-fun b!651216 () Bool)

(assert (=> b!651216 (= e!373686 (MissingVacant!6925 vacantSpotIndex!68))))

(declare-fun b!651217 () Bool)

(assert (=> b!651217 (= e!373685 e!373687)))

(declare-fun c!74796 () Bool)

(assert (=> b!651217 (= c!74796 (= lt!302849 lt!302758))))

(assert (= (and d!91967 c!74797) b!651214))

(assert (= (and d!91967 (not c!74797)) b!651217))

(assert (= (and b!651217 c!74796) b!651212))

(assert (= (and b!651217 (not c!74796)) b!651213))

(assert (= (and b!651213 c!74798) b!651216))

(assert (= (and b!651213 (not c!74798)) b!651215))

(declare-fun m!624465 () Bool)

(assert (=> d!91967 m!624465))

(declare-fun m!624467 () Bool)

(assert (=> d!91967 m!624467))

(assert (=> d!91967 m!624407))

(assert (=> d!91967 m!624283))

(assert (=> b!651215 m!624309))

(assert (=> b!651215 m!624309))

(declare-fun m!624475 () Bool)

(assert (=> b!651215 m!624475))

(assert (=> b!651047 d!91967))

(declare-fun d!91971 () Bool)

(declare-fun lt!302852 () (_ BitVec 32))

(assert (=> d!91971 (and (bvsge lt!302852 #b00000000000000000000000000000000) (bvslt lt!302852 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91971 (= lt!302852 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91971 (validMask!0 mask!3053)))

(assert (=> d!91971 (= (nextIndex!0 index!984 x!910 mask!3053) lt!302852)))

(declare-fun bs!19420 () Bool)

(assert (= bs!19420 d!91971))

(declare-fun m!624477 () Bool)

(assert (=> bs!19420 m!624477))

(assert (=> bs!19420 m!624283))

(assert (=> b!651047 d!91971))

(declare-fun b!651240 () Bool)

(declare-fun e!373705 () SeekEntryResult!6925)

(assert (=> b!651240 (= e!373705 (Found!6925 lt!302745))))

(declare-fun b!651241 () Bool)

(declare-fun c!74810 () Bool)

(declare-fun lt!302856 () (_ BitVec 64))

(assert (=> b!651241 (= c!74810 (= lt!302856 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373704 () SeekEntryResult!6925)

(assert (=> b!651241 (= e!373705 e!373704)))

(declare-fun lt!302855 () SeekEntryResult!6925)

(declare-fun d!91973 () Bool)

(assert (=> d!91973 (and (or ((_ is Undefined!6925) lt!302855) (not ((_ is Found!6925) lt!302855)) (and (bvsge (index!30050 lt!302855) #b00000000000000000000000000000000) (bvslt (index!30050 lt!302855) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302855) ((_ is Found!6925) lt!302855) (not ((_ is MissingVacant!6925) lt!302855)) (not (= (index!30052 lt!302855) vacantSpotIndex!68)) (and (bvsge (index!30052 lt!302855) #b00000000000000000000000000000000) (bvslt (index!30052 lt!302855) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302855) (ite ((_ is Found!6925) lt!302855) (= (select (arr!18478 a!2986) (index!30050 lt!302855)) (select (arr!18478 a!2986) j!136)) (and ((_ is MissingVacant!6925) lt!302855) (= (index!30052 lt!302855) vacantSpotIndex!68) (= (select (arr!18478 a!2986) (index!30052 lt!302855)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!373703 () SeekEntryResult!6925)

(assert (=> d!91973 (= lt!302855 e!373703)))

(declare-fun c!74809 () Bool)

(assert (=> d!91973 (= c!74809 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91973 (= lt!302856 (select (arr!18478 a!2986) lt!302745))))

(assert (=> d!91973 (validMask!0 mask!3053)))

(assert (=> d!91973 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053) lt!302855)))

(declare-fun b!651242 () Bool)

(assert (=> b!651242 (= e!373703 Undefined!6925)))

(declare-fun b!651243 () Bool)

(assert (=> b!651243 (= e!373704 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!302745 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651244 () Bool)

(assert (=> b!651244 (= e!373704 (MissingVacant!6925 vacantSpotIndex!68))))

(declare-fun b!651245 () Bool)

(assert (=> b!651245 (= e!373703 e!373705)))

(declare-fun c!74808 () Bool)

(assert (=> b!651245 (= c!74808 (= lt!302856 (select (arr!18478 a!2986) j!136)))))

(assert (= (and d!91973 c!74809) b!651242))

(assert (= (and d!91973 (not c!74809)) b!651245))

(assert (= (and b!651245 c!74808) b!651240))

(assert (= (and b!651245 (not c!74808)) b!651241))

(assert (= (and b!651241 c!74810) b!651244))

(assert (= (and b!651241 (not c!74810)) b!651243))

(declare-fun m!624491 () Bool)

(assert (=> d!91973 m!624491))

(declare-fun m!624493 () Bool)

(assert (=> d!91973 m!624493))

(declare-fun m!624495 () Bool)

(assert (=> d!91973 m!624495))

(assert (=> d!91973 m!624283))

(declare-fun m!624497 () Bool)

(assert (=> b!651243 m!624497))

(assert (=> b!651243 m!624497))

(assert (=> b!651243 m!624259))

(declare-fun m!624499 () Bool)

(assert (=> b!651243 m!624499))

(assert (=> b!651047 d!91973))

(declare-fun b!651252 () Bool)

(declare-fun e!373711 () SeekEntryResult!6925)

(assert (=> b!651252 (= e!373711 (Found!6925 lt!302745))))

(declare-fun b!651253 () Bool)

(declare-fun c!74816 () Bool)

(declare-fun lt!302860 () (_ BitVec 64))

(assert (=> b!651253 (= c!74816 (= lt!302860 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373710 () SeekEntryResult!6925)

(assert (=> b!651253 (= e!373711 e!373710)))

(declare-fun d!91979 () Bool)

(declare-fun lt!302859 () SeekEntryResult!6925)

(assert (=> d!91979 (and (or ((_ is Undefined!6925) lt!302859) (not ((_ is Found!6925) lt!302859)) (and (bvsge (index!30050 lt!302859) #b00000000000000000000000000000000) (bvslt (index!30050 lt!302859) (size!18842 lt!302757)))) (or ((_ is Undefined!6925) lt!302859) ((_ is Found!6925) lt!302859) (not ((_ is MissingVacant!6925) lt!302859)) (not (= (index!30052 lt!302859) vacantSpotIndex!68)) (and (bvsge (index!30052 lt!302859) #b00000000000000000000000000000000) (bvslt (index!30052 lt!302859) (size!18842 lt!302757)))) (or ((_ is Undefined!6925) lt!302859) (ite ((_ is Found!6925) lt!302859) (= (select (arr!18478 lt!302757) (index!30050 lt!302859)) lt!302758) (and ((_ is MissingVacant!6925) lt!302859) (= (index!30052 lt!302859) vacantSpotIndex!68) (= (select (arr!18478 lt!302757) (index!30052 lt!302859)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!373709 () SeekEntryResult!6925)

(assert (=> d!91979 (= lt!302859 e!373709)))

(declare-fun c!74815 () Bool)

(assert (=> d!91979 (= c!74815 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91979 (= lt!302860 (select (arr!18478 lt!302757) lt!302745))))

(assert (=> d!91979 (validMask!0 mask!3053)))

(assert (=> d!91979 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 lt!302758 lt!302757 mask!3053) lt!302859)))

(declare-fun b!651254 () Bool)

(assert (=> b!651254 (= e!373709 Undefined!6925)))

(declare-fun b!651255 () Bool)

(assert (=> b!651255 (= e!373710 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!302745 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!302758 lt!302757 mask!3053))))

(declare-fun b!651256 () Bool)

(assert (=> b!651256 (= e!373710 (MissingVacant!6925 vacantSpotIndex!68))))

(declare-fun b!651257 () Bool)

(assert (=> b!651257 (= e!373709 e!373711)))

(declare-fun c!74814 () Bool)

(assert (=> b!651257 (= c!74814 (= lt!302860 lt!302758))))

(assert (= (and d!91979 c!74815) b!651254))

(assert (= (and d!91979 (not c!74815)) b!651257))

(assert (= (and b!651257 c!74814) b!651252))

(assert (= (and b!651257 (not c!74814)) b!651253))

(assert (= (and b!651253 c!74816) b!651256))

(assert (= (and b!651253 (not c!74816)) b!651255))

(declare-fun m!624511 () Bool)

(assert (=> d!91979 m!624511))

(declare-fun m!624513 () Bool)

(assert (=> d!91979 m!624513))

(declare-fun m!624515 () Bool)

(assert (=> d!91979 m!624515))

(assert (=> d!91979 m!624283))

(assert (=> b!651255 m!624497))

(assert (=> b!651255 m!624497))

(declare-fun m!624517 () Bool)

(assert (=> b!651255 m!624517))

(assert (=> b!651047 d!91979))

(declare-fun d!91983 () Bool)

(declare-fun e!373737 () Bool)

(assert (=> d!91983 e!373737))

(declare-fun res!422375 () Bool)

(assert (=> d!91983 (=> (not res!422375) (not e!373737))))

(assert (=> d!91983 (= res!422375 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18842 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18842 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18842 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18842 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18842 a!2986))))))

(declare-fun lt!302880 () Unit!22222)

(declare-fun choose!9 (array!38555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22222)

(assert (=> d!91983 (= lt!302880 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91983 (validMask!0 mask!3053)))

(assert (=> d!91983 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 mask!3053) lt!302880)))

(declare-fun b!651291 () Bool)

(assert (=> b!651291 (= e!373737 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 (select (arr!18478 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302745 vacantSpotIndex!68 (select (store (arr!18478 a!2986) i!1108 k0!1786) j!136) (array!38556 (store (arr!18478 a!2986) i!1108 k0!1786) (size!18842 a!2986)) mask!3053)))))

(assert (= (and d!91983 res!422375) b!651291))

(declare-fun m!624543 () Bool)

(assert (=> d!91983 m!624543))

(assert (=> d!91983 m!624283))

(assert (=> b!651291 m!624277))

(assert (=> b!651291 m!624259))

(assert (=> b!651291 m!624319))

(assert (=> b!651291 m!624311))

(declare-fun m!624545 () Bool)

(assert (=> b!651291 m!624545))

(assert (=> b!651291 m!624259))

(assert (=> b!651291 m!624311))

(assert (=> b!651047 d!91983))

(declare-fun b!651381 () Bool)

(declare-fun c!74853 () Bool)

(declare-fun lt!302912 () (_ BitVec 64))

(assert (=> b!651381 (= c!74853 (= lt!302912 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!373801 () SeekEntryResult!6925)

(declare-fun e!373802 () SeekEntryResult!6925)

(assert (=> b!651381 (= e!373801 e!373802)))

(declare-fun d!91993 () Bool)

(declare-fun lt!302911 () SeekEntryResult!6925)

(assert (=> d!91993 (and (or ((_ is Undefined!6925) lt!302911) (not ((_ is Found!6925) lt!302911)) (and (bvsge (index!30050 lt!302911) #b00000000000000000000000000000000) (bvslt (index!30050 lt!302911) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302911) ((_ is Found!6925) lt!302911) (not ((_ is MissingZero!6925) lt!302911)) (and (bvsge (index!30049 lt!302911) #b00000000000000000000000000000000) (bvslt (index!30049 lt!302911) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302911) ((_ is Found!6925) lt!302911) ((_ is MissingZero!6925) lt!302911) (not ((_ is MissingVacant!6925) lt!302911)) (and (bvsge (index!30052 lt!302911) #b00000000000000000000000000000000) (bvslt (index!30052 lt!302911) (size!18842 a!2986)))) (or ((_ is Undefined!6925) lt!302911) (ite ((_ is Found!6925) lt!302911) (= (select (arr!18478 a!2986) (index!30050 lt!302911)) k0!1786) (ite ((_ is MissingZero!6925) lt!302911) (= (select (arr!18478 a!2986) (index!30049 lt!302911)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6925) lt!302911) (= (select (arr!18478 a!2986) (index!30052 lt!302911)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!373803 () SeekEntryResult!6925)

(assert (=> d!91993 (= lt!302911 e!373803)))

(declare-fun c!74851 () Bool)

(declare-fun lt!302910 () SeekEntryResult!6925)

(assert (=> d!91993 (= c!74851 (and ((_ is Intermediate!6925) lt!302910) (undefined!7737 lt!302910)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38555 (_ BitVec 32)) SeekEntryResult!6925)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91993 (= lt!302910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91993 (validMask!0 mask!3053)))

(assert (=> d!91993 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!302911)))

(declare-fun b!651382 () Bool)

(assert (=> b!651382 (= e!373802 (seekKeyOrZeroReturnVacant!0 (x!58860 lt!302910) (index!30051 lt!302910) (index!30051 lt!302910) k0!1786 a!2986 mask!3053))))

(declare-fun b!651383 () Bool)

(assert (=> b!651383 (= e!373803 Undefined!6925)))

(declare-fun b!651384 () Bool)

(assert (=> b!651384 (= e!373803 e!373801)))

(assert (=> b!651384 (= lt!302912 (select (arr!18478 a!2986) (index!30051 lt!302910)))))

(declare-fun c!74852 () Bool)

(assert (=> b!651384 (= c!74852 (= lt!302912 k0!1786))))

(declare-fun b!651385 () Bool)

(assert (=> b!651385 (= e!373802 (MissingZero!6925 (index!30051 lt!302910)))))

(declare-fun b!651386 () Bool)

(assert (=> b!651386 (= e!373801 (Found!6925 (index!30051 lt!302910)))))

(assert (= (and d!91993 c!74851) b!651383))

(assert (= (and d!91993 (not c!74851)) b!651384))

(assert (= (and b!651384 c!74852) b!651386))

(assert (= (and b!651384 (not c!74852)) b!651381))

(assert (= (and b!651381 c!74853) b!651385))

(assert (= (and b!651381 (not c!74853)) b!651382))

(declare-fun m!624625 () Bool)

(assert (=> d!91993 m!624625))

(declare-fun m!624627 () Bool)

(assert (=> d!91993 m!624627))

(declare-fun m!624629 () Bool)

(assert (=> d!91993 m!624629))

(assert (=> d!91993 m!624283))

(declare-fun m!624631 () Bool)

(assert (=> d!91993 m!624631))

(assert (=> d!91993 m!624631))

(declare-fun m!624633 () Bool)

(assert (=> d!91993 m!624633))

(declare-fun m!624635 () Bool)

(assert (=> b!651382 m!624635))

(declare-fun m!624637 () Bool)

(assert (=> b!651384 m!624637))

(assert (=> b!651058 d!91993))

(declare-fun d!92027 () Bool)

(declare-fun res!422415 () Bool)

(declare-fun e!373806 () Bool)

(assert (=> d!92027 (=> res!422415 e!373806)))

(assert (=> d!92027 (= res!422415 (= (select (arr!18478 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!92027 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!373806)))

(declare-fun b!651389 () Bool)

(declare-fun e!373807 () Bool)

(assert (=> b!651389 (= e!373806 e!373807)))

(declare-fun res!422416 () Bool)

(assert (=> b!651389 (=> (not res!422416) (not e!373807))))

(assert (=> b!651389 (= res!422416 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18842 a!2986)))))

(declare-fun b!651390 () Bool)

(assert (=> b!651390 (= e!373807 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92027 (not res!422415)) b!651389))

(assert (= (and b!651389 res!422416) b!651390))

(assert (=> d!92027 m!624399))

(declare-fun m!624643 () Bool)

(assert (=> b!651390 m!624643))

(assert (=> b!651057 d!92027))

(declare-fun d!92031 () Bool)

(assert (=> d!92031 (= (validKeyInArray!0 (select (arr!18478 a!2986) j!136)) (and (not (= (select (arr!18478 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18478 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!651039 d!92031))

(assert (=> b!651050 d!91935))

(declare-fun d!92033 () Bool)

(assert (=> d!92033 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!651059 d!92033))

(assert (=> b!651048 d!91965))

(declare-fun b!651414 () Bool)

(declare-fun e!373824 () Bool)

(declare-fun e!373823 () Bool)

(assert (=> b!651414 (= e!373824 e!373823)))

(declare-fun lt!302931 () (_ BitVec 64))

(assert (=> b!651414 (= lt!302931 (select (arr!18478 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!302930 () Unit!22222)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38555 (_ BitVec 64) (_ BitVec 32)) Unit!22222)

(assert (=> b!651414 (= lt!302930 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!302931 #b00000000000000000000000000000000))))

(assert (=> b!651414 (arrayContainsKey!0 a!2986 lt!302931 #b00000000000000000000000000000000)))

(declare-fun lt!302929 () Unit!22222)

(assert (=> b!651414 (= lt!302929 lt!302930)))

(declare-fun res!422425 () Bool)

(assert (=> b!651414 (= res!422425 (= (seekEntryOrOpen!0 (select (arr!18478 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6925 #b00000000000000000000000000000000)))))

(assert (=> b!651414 (=> (not res!422425) (not e!373823))))

(declare-fun b!651415 () Bool)

(declare-fun call!33771 () Bool)

(assert (=> b!651415 (= e!373823 call!33771)))

(declare-fun d!92035 () Bool)

(declare-fun res!422424 () Bool)

(declare-fun e!373825 () Bool)

(assert (=> d!92035 (=> res!422424 e!373825)))

(assert (=> d!92035 (= res!422424 (bvsge #b00000000000000000000000000000000 (size!18842 a!2986)))))

(assert (=> d!92035 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!373825)))

(declare-fun b!651416 () Bool)

(assert (=> b!651416 (= e!373824 call!33771)))

(declare-fun bm!33768 () Bool)

(assert (=> bm!33768 (= call!33771 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!651417 () Bool)

(assert (=> b!651417 (= e!373825 e!373824)))

(declare-fun c!74862 () Bool)

(assert (=> b!651417 (= c!74862 (validKeyInArray!0 (select (arr!18478 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!92035 (not res!422424)) b!651417))

(assert (= (and b!651417 c!74862) b!651414))

(assert (= (and b!651417 (not c!74862)) b!651416))

(assert (= (and b!651414 res!422425) b!651415))

(assert (= (or b!651415 b!651416) bm!33768))

(assert (=> b!651414 m!624399))

(declare-fun m!624669 () Bool)

(assert (=> b!651414 m!624669))

(declare-fun m!624671 () Bool)

(assert (=> b!651414 m!624671))

(assert (=> b!651414 m!624399))

(declare-fun m!624673 () Bool)

(assert (=> b!651414 m!624673))

(declare-fun m!624675 () Bool)

(assert (=> bm!33768 m!624675))

(assert (=> b!651417 m!624399))

(assert (=> b!651417 m!624399))

(assert (=> b!651417 m!624403))

(assert (=> b!651049 d!92035))

(check-sat (not b!651159) (not bm!33752) (not b!651171) (not b!651196) (not d!91979) (not b!651144) (not b!651390) (not d!91993) (not b!651203) (not b!651243) (not b!651167) (not b!651194) (not bm!33751) (not bm!33750) (not b!651169) (not b!651175) (not b!651291) (not b!651417) (not d!91957) (not d!91971) (not b!651198) (not b!651414) (not b!651174) (not bm!33768) (not b!651382) (not d!91961) (not b!651170) (not b!651179) (not d!91943) (not b!651255) (not b!651176) (not b!651158) (not bm!33749) (not b!651160) (not d!91929) (not d!91973) (not d!91983) (not d!91953) (not b!651201) (not d!91939) (not d!91955) (not b!651197) (not b!651215) (not d!91967))
(check-sat)
