; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55560 () Bool)

(assert start!55560)

(declare-fun b!607305 () Bool)

(declare-fun res!390295 () Bool)

(declare-fun e!347781 () Bool)

(assert (=> b!607305 (=> res!390295 e!347781)))

(declare-datatypes ((List!11968 0))(
  ( (Nil!11965) (Cons!11964 (h!13009 (_ BitVec 64)) (t!18204 List!11968)) )
))
(declare-fun noDuplicate!316 (List!11968) Bool)

(assert (=> b!607305 (= res!390295 (not (noDuplicate!316 Nil!11965)))))

(declare-fun b!607306 () Bool)

(declare-fun e!347794 () Bool)

(declare-fun e!347786 () Bool)

(assert (=> b!607306 (= e!347794 e!347786)))

(declare-fun res!390305 () Bool)

(assert (=> b!607306 (=> res!390305 e!347786)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!607306 (= res!390305 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19354 0))(
  ( (Unit!19355) )
))
(declare-fun lt!277340 () Unit!19354)

(declare-fun e!347783 () Unit!19354)

(assert (=> b!607306 (= lt!277340 e!347783)))

(declare-fun c!68875 () Bool)

(assert (=> b!607306 (= c!68875 (bvslt j!136 index!984))))

(declare-fun b!607307 () Bool)

(declare-fun e!347780 () Bool)

(declare-fun e!347791 () Bool)

(assert (=> b!607307 (= e!347780 e!347791)))

(declare-fun res!390301 () Bool)

(assert (=> b!607307 (=> res!390301 e!347791)))

(declare-fun lt!277337 () (_ BitVec 64))

(declare-fun lt!277328 () (_ BitVec 64))

(declare-datatypes ((array!37254 0))(
  ( (array!37255 (arr!17874 (Array (_ BitVec 32) (_ BitVec 64))) (size!18238 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37254)

(assert (=> b!607307 (= res!390301 (or (not (= (select (arr!17874 a!2986) j!136) lt!277328)) (not (= (select (arr!17874 a!2986) j!136) lt!277337)) (bvsge j!136 index!984)))))

(declare-fun b!607308 () Bool)

(declare-fun res!390300 () Bool)

(declare-fun e!347789 () Bool)

(assert (=> b!607308 (=> (not res!390300) (not e!347789))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607308 (= res!390300 (validKeyInArray!0 k!1786))))

(declare-fun e!347787 () Bool)

(declare-fun lt!277330 () array!37254)

(declare-fun b!607309 () Bool)

(declare-fun arrayContainsKey!0 (array!37254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607309 (= e!347787 (arrayContainsKey!0 lt!277330 (select (arr!17874 a!2986) j!136) index!984))))

(declare-fun b!607310 () Bool)

(declare-fun e!347790 () Unit!19354)

(declare-fun Unit!19356 () Unit!19354)

(assert (=> b!607310 (= e!347790 Unit!19356)))

(declare-fun b!607311 () Bool)

(declare-fun e!347779 () Bool)

(declare-datatypes ((SeekEntryResult!6321 0))(
  ( (MissingZero!6321 (index!27558 (_ BitVec 32))) (Found!6321 (index!27559 (_ BitVec 32))) (Intermediate!6321 (undefined!7133 Bool) (index!27560 (_ BitVec 32)) (x!56399 (_ BitVec 32))) (Undefined!6321) (MissingVacant!6321 (index!27561 (_ BitVec 32))) )
))
(declare-fun lt!277339 () SeekEntryResult!6321)

(declare-fun lt!277334 () SeekEntryResult!6321)

(assert (=> b!607311 (= e!347779 (= lt!277339 lt!277334))))

(declare-fun b!607312 () Bool)

(assert (=> b!607312 (= e!347781 true)))

(declare-fun lt!277329 () Bool)

(declare-fun contains!3014 (List!11968 (_ BitVec 64)) Bool)

(assert (=> b!607312 (= lt!277329 (contains!3014 Nil!11965 k!1786))))

(declare-fun b!607313 () Bool)

(assert (=> b!607313 (= e!347786 e!347781)))

(declare-fun res!390297 () Bool)

(assert (=> b!607313 (=> res!390297 e!347781)))

(assert (=> b!607313 (= res!390297 (or (bvsge (size!18238 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18238 a!2986))))))

(assert (=> b!607313 (arrayContainsKey!0 lt!277330 (select (arr!17874 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277335 () Unit!19354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37254 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19354)

(assert (=> b!607313 (= lt!277335 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277330 (select (arr!17874 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!347784 () Bool)

(assert (=> b!607313 e!347784))

(declare-fun res!390291 () Bool)

(assert (=> b!607313 (=> (not res!390291) (not e!347784))))

(assert (=> b!607313 (= res!390291 (arrayContainsKey!0 lt!277330 (select (arr!17874 a!2986) j!136) j!136))))

(declare-fun b!607314 () Bool)

(declare-fun res!390292 () Bool)

(assert (=> b!607314 (=> res!390292 e!347781)))

(assert (=> b!607314 (= res!390292 (contains!3014 Nil!11965 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607315 () Bool)

(declare-fun res!390298 () Bool)

(declare-fun e!347788 () Bool)

(assert (=> b!607315 (=> (not res!390298) (not e!347788))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!607315 (= res!390298 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17874 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607316 () Bool)

(declare-fun res!390302 () Bool)

(assert (=> b!607316 (=> res!390302 e!347781)))

(assert (=> b!607316 (= res!390302 (contains!3014 Nil!11965 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607318 () Bool)

(declare-fun e!347793 () Bool)

(declare-fun e!347792 () Bool)

(assert (=> b!607318 (= e!347793 (not e!347792))))

(declare-fun res!390296 () Bool)

(assert (=> b!607318 (=> res!390296 e!347792)))

(declare-fun lt!277325 () SeekEntryResult!6321)

(assert (=> b!607318 (= res!390296 (not (= lt!277325 (Found!6321 index!984))))))

(declare-fun lt!277327 () Unit!19354)

(assert (=> b!607318 (= lt!277327 e!347790)))

(declare-fun c!68876 () Bool)

(assert (=> b!607318 (= c!68876 (= lt!277325 Undefined!6321))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37254 (_ BitVec 32)) SeekEntryResult!6321)

(assert (=> b!607318 (= lt!277325 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277328 lt!277330 mask!3053))))

(assert (=> b!607318 e!347779))

(declare-fun res!390289 () Bool)

(assert (=> b!607318 (=> (not res!390289) (not e!347779))))

(declare-fun lt!277326 () (_ BitVec 32))

(assert (=> b!607318 (= res!390289 (= lt!277334 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277326 vacantSpotIndex!68 lt!277328 lt!277330 mask!3053)))))

(assert (=> b!607318 (= lt!277334 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277326 vacantSpotIndex!68 (select (arr!17874 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!607318 (= lt!277328 (select (store (arr!17874 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277331 () Unit!19354)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37254 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19354)

(assert (=> b!607318 (= lt!277331 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277326 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607318 (= lt!277326 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607319 () Bool)

(assert (=> b!607319 (= e!347792 e!347794)))

(declare-fun res!390310 () Bool)

(assert (=> b!607319 (=> res!390310 e!347794)))

(assert (=> b!607319 (= res!390310 (or (not (= (select (arr!17874 a!2986) j!136) lt!277328)) (not (= (select (arr!17874 a!2986) j!136) lt!277337))))))

(assert (=> b!607319 e!347780))

(declare-fun res!390293 () Bool)

(assert (=> b!607319 (=> (not res!390293) (not e!347780))))

(assert (=> b!607319 (= res!390293 (= lt!277337 (select (arr!17874 a!2986) j!136)))))

(assert (=> b!607319 (= lt!277337 (select (store (arr!17874 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607320 () Bool)

(assert (=> b!607320 (= e!347789 e!347788)))

(declare-fun res!390299 () Bool)

(assert (=> b!607320 (=> (not res!390299) (not e!347788))))

(declare-fun lt!277332 () SeekEntryResult!6321)

(assert (=> b!607320 (= res!390299 (or (= lt!277332 (MissingZero!6321 i!1108)) (= lt!277332 (MissingVacant!6321 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37254 (_ BitVec 32)) SeekEntryResult!6321)

(assert (=> b!607320 (= lt!277332 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607321 () Bool)

(declare-fun Unit!19357 () Unit!19354)

(assert (=> b!607321 (= e!347783 Unit!19357)))

(declare-fun lt!277336 () Unit!19354)

(assert (=> b!607321 (= lt!277336 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277330 (select (arr!17874 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607321 (arrayContainsKey!0 lt!277330 (select (arr!17874 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277341 () Unit!19354)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37254 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11968) Unit!19354)

(assert (=> b!607321 (= lt!277341 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11965))))

(declare-fun arrayNoDuplicates!0 (array!37254 (_ BitVec 32) List!11968) Bool)

(assert (=> b!607321 (arrayNoDuplicates!0 lt!277330 #b00000000000000000000000000000000 Nil!11965)))

(declare-fun lt!277333 () Unit!19354)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37254 (_ BitVec 32) (_ BitVec 32)) Unit!19354)

(assert (=> b!607321 (= lt!277333 (lemmaNoDuplicateFromThenFromBigger!0 lt!277330 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607321 (arrayNoDuplicates!0 lt!277330 j!136 Nil!11965)))

(declare-fun lt!277338 () Unit!19354)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37254 (_ BitVec 64) (_ BitVec 32) List!11968) Unit!19354)

(assert (=> b!607321 (= lt!277338 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277330 (select (arr!17874 a!2986) j!136) j!136 Nil!11965))))

(assert (=> b!607321 false))

(declare-fun b!607322 () Bool)

(declare-fun Unit!19358 () Unit!19354)

(assert (=> b!607322 (= e!347790 Unit!19358)))

(assert (=> b!607322 false))

(declare-fun b!607323 () Bool)

(assert (=> b!607323 (= e!347784 (arrayContainsKey!0 lt!277330 (select (arr!17874 a!2986) j!136) index!984))))

(declare-fun b!607324 () Bool)

(declare-fun e!347782 () Bool)

(assert (=> b!607324 (= e!347788 e!347782)))

(declare-fun res!390309 () Bool)

(assert (=> b!607324 (=> (not res!390309) (not e!347782))))

(assert (=> b!607324 (= res!390309 (= (select (store (arr!17874 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607324 (= lt!277330 (array!37255 (store (arr!17874 a!2986) i!1108 k!1786) (size!18238 a!2986)))))

(declare-fun b!607325 () Bool)

(declare-fun res!390290 () Bool)

(assert (=> b!607325 (=> (not res!390290) (not e!347788))))

(assert (=> b!607325 (= res!390290 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11965))))

(declare-fun b!607326 () Bool)

(declare-fun res!390308 () Bool)

(assert (=> b!607326 (=> (not res!390308) (not e!347789))))

(assert (=> b!607326 (= res!390308 (and (= (size!18238 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18238 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18238 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607327 () Bool)

(assert (=> b!607327 (= e!347782 e!347793)))

(declare-fun res!390307 () Bool)

(assert (=> b!607327 (=> (not res!390307) (not e!347793))))

(assert (=> b!607327 (= res!390307 (and (= lt!277339 (Found!6321 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17874 a!2986) index!984) (select (arr!17874 a!2986) j!136))) (not (= (select (arr!17874 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607327 (= lt!277339 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17874 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607317 () Bool)

(declare-fun res!390311 () Bool)

(assert (=> b!607317 (=> (not res!390311) (not e!347788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37254 (_ BitVec 32)) Bool)

(assert (=> b!607317 (= res!390311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!390294 () Bool)

(assert (=> start!55560 (=> (not res!390294) (not e!347789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55560 (= res!390294 (validMask!0 mask!3053))))

(assert (=> start!55560 e!347789))

(assert (=> start!55560 true))

(declare-fun array_inv!13648 (array!37254) Bool)

(assert (=> start!55560 (array_inv!13648 a!2986)))

(declare-fun b!607328 () Bool)

(assert (=> b!607328 (= e!347791 e!347787)))

(declare-fun res!390304 () Bool)

(assert (=> b!607328 (=> (not res!390304) (not e!347787))))

(assert (=> b!607328 (= res!390304 (arrayContainsKey!0 lt!277330 (select (arr!17874 a!2986) j!136) j!136))))

(declare-fun b!607329 () Bool)

(declare-fun res!390306 () Bool)

(assert (=> b!607329 (=> (not res!390306) (not e!347789))))

(assert (=> b!607329 (= res!390306 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607330 () Bool)

(declare-fun Unit!19359 () Unit!19354)

(assert (=> b!607330 (= e!347783 Unit!19359)))

(declare-fun b!607331 () Bool)

(declare-fun res!390303 () Bool)

(assert (=> b!607331 (=> (not res!390303) (not e!347789))))

(assert (=> b!607331 (= res!390303 (validKeyInArray!0 (select (arr!17874 a!2986) j!136)))))

(assert (= (and start!55560 res!390294) b!607326))

(assert (= (and b!607326 res!390308) b!607331))

(assert (= (and b!607331 res!390303) b!607308))

(assert (= (and b!607308 res!390300) b!607329))

(assert (= (and b!607329 res!390306) b!607320))

(assert (= (and b!607320 res!390299) b!607317))

(assert (= (and b!607317 res!390311) b!607325))

(assert (= (and b!607325 res!390290) b!607315))

(assert (= (and b!607315 res!390298) b!607324))

(assert (= (and b!607324 res!390309) b!607327))

(assert (= (and b!607327 res!390307) b!607318))

(assert (= (and b!607318 res!390289) b!607311))

(assert (= (and b!607318 c!68876) b!607322))

(assert (= (and b!607318 (not c!68876)) b!607310))

(assert (= (and b!607318 (not res!390296)) b!607319))

(assert (= (and b!607319 res!390293) b!607307))

(assert (= (and b!607307 (not res!390301)) b!607328))

(assert (= (and b!607328 res!390304) b!607309))

(assert (= (and b!607319 (not res!390310)) b!607306))

(assert (= (and b!607306 c!68875) b!607321))

(assert (= (and b!607306 (not c!68875)) b!607330))

(assert (= (and b!607306 (not res!390305)) b!607313))

(assert (= (and b!607313 res!390291) b!607323))

(assert (= (and b!607313 (not res!390297)) b!607305))

(assert (= (and b!607305 (not res!390295)) b!607314))

(assert (= (and b!607314 (not res!390292)) b!607316))

(assert (= (and b!607316 (not res!390302)) b!607312))

(declare-fun m!584085 () Bool)

(assert (=> b!607327 m!584085))

(declare-fun m!584087 () Bool)

(assert (=> b!607327 m!584087))

(assert (=> b!607327 m!584087))

(declare-fun m!584089 () Bool)

(assert (=> b!607327 m!584089))

(assert (=> b!607319 m!584087))

(declare-fun m!584091 () Bool)

(assert (=> b!607319 m!584091))

(declare-fun m!584093 () Bool)

(assert (=> b!607319 m!584093))

(declare-fun m!584095 () Bool)

(assert (=> b!607315 m!584095))

(declare-fun m!584097 () Bool)

(assert (=> b!607314 m!584097))

(declare-fun m!584099 () Bool)

(assert (=> b!607318 m!584099))

(declare-fun m!584101 () Bool)

(assert (=> b!607318 m!584101))

(assert (=> b!607318 m!584087))

(assert (=> b!607318 m!584091))

(declare-fun m!584103 () Bool)

(assert (=> b!607318 m!584103))

(assert (=> b!607318 m!584087))

(declare-fun m!584105 () Bool)

(assert (=> b!607318 m!584105))

(declare-fun m!584107 () Bool)

(assert (=> b!607318 m!584107))

(declare-fun m!584109 () Bool)

(assert (=> b!607318 m!584109))

(assert (=> b!607331 m!584087))

(assert (=> b!607331 m!584087))

(declare-fun m!584111 () Bool)

(assert (=> b!607331 m!584111))

(declare-fun m!584113 () Bool)

(assert (=> b!607329 m!584113))

(declare-fun m!584115 () Bool)

(assert (=> b!607305 m!584115))

(assert (=> b!607324 m!584091))

(declare-fun m!584117 () Bool)

(assert (=> b!607324 m!584117))

(declare-fun m!584119 () Bool)

(assert (=> b!607308 m!584119))

(assert (=> b!607309 m!584087))

(assert (=> b!607309 m!584087))

(declare-fun m!584121 () Bool)

(assert (=> b!607309 m!584121))

(declare-fun m!584123 () Bool)

(assert (=> start!55560 m!584123))

(declare-fun m!584125 () Bool)

(assert (=> start!55560 m!584125))

(declare-fun m!584127 () Bool)

(assert (=> b!607316 m!584127))

(assert (=> b!607323 m!584087))

(assert (=> b!607323 m!584087))

(assert (=> b!607323 m!584121))

(assert (=> b!607313 m!584087))

(assert (=> b!607313 m!584087))

(declare-fun m!584129 () Bool)

(assert (=> b!607313 m!584129))

(assert (=> b!607313 m!584087))

(declare-fun m!584131 () Bool)

(assert (=> b!607313 m!584131))

(assert (=> b!607313 m!584087))

(declare-fun m!584133 () Bool)

(assert (=> b!607313 m!584133))

(assert (=> b!607321 m!584087))

(declare-fun m!584135 () Bool)

(assert (=> b!607321 m!584135))

(assert (=> b!607321 m!584087))

(assert (=> b!607321 m!584087))

(declare-fun m!584137 () Bool)

(assert (=> b!607321 m!584137))

(assert (=> b!607321 m!584087))

(declare-fun m!584139 () Bool)

(assert (=> b!607321 m!584139))

(declare-fun m!584141 () Bool)

(assert (=> b!607321 m!584141))

(declare-fun m!584143 () Bool)

(assert (=> b!607321 m!584143))

(declare-fun m!584145 () Bool)

(assert (=> b!607321 m!584145))

(declare-fun m!584147 () Bool)

(assert (=> b!607321 m!584147))

(declare-fun m!584149 () Bool)

(assert (=> b!607312 m!584149))

(declare-fun m!584151 () Bool)

(assert (=> b!607320 m!584151))

(assert (=> b!607307 m!584087))

(assert (=> b!607328 m!584087))

(assert (=> b!607328 m!584087))

(assert (=> b!607328 m!584133))

(declare-fun m!584153 () Bool)

(assert (=> b!607325 m!584153))

(declare-fun m!584155 () Bool)

(assert (=> b!607317 m!584155))

(push 1)

