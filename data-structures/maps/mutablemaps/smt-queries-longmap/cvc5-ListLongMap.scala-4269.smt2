; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59370 () Bool)

(assert start!59370)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!655098 () Bool)

(declare-datatypes ((array!38646 0))(
  ( (array!38647 (arr!18519 (Array (_ BitVec 32) (_ BitVec 64))) (size!18883 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38646)

(declare-fun res!425050 () Bool)

(declare-fun lt!305532 () array!38646)

(declare-fun arrayContainsKey!0 (array!38646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655098 (= res!425050 (arrayContainsKey!0 lt!305532 (select (arr!18519 a!2986) j!136) j!136))))

(declare-fun e!376231 () Bool)

(assert (=> b!655098 (=> (not res!425050) (not e!376231))))

(declare-fun e!376224 () Bool)

(assert (=> b!655098 (= e!376224 e!376231)))

(declare-fun b!655099 () Bool)

(declare-fun e!376230 () Bool)

(declare-datatypes ((SeekEntryResult!6966 0))(
  ( (MissingZero!6966 (index!30222 (_ BitVec 32))) (Found!6966 (index!30223 (_ BitVec 32))) (Intermediate!6966 (undefined!7778 Bool) (index!30224 (_ BitVec 32)) (x!59040 (_ BitVec 32))) (Undefined!6966) (MissingVacant!6966 (index!30225 (_ BitVec 32))) )
))
(declare-fun lt!305522 () SeekEntryResult!6966)

(declare-fun lt!305534 () SeekEntryResult!6966)

(assert (=> b!655099 (= e!376230 (= lt!305522 lt!305534))))

(declare-fun b!655100 () Bool)

(declare-fun res!425057 () Bool)

(declare-fun e!376219 () Bool)

(assert (=> b!655100 (=> (not res!425057) (not e!376219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655100 (= res!425057 (validKeyInArray!0 (select (arr!18519 a!2986) j!136)))))

(declare-fun b!655101 () Bool)

(declare-fun e!376229 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!655101 (= e!376229 (arrayContainsKey!0 lt!305532 (select (arr!18519 a!2986) j!136) index!984))))

(declare-fun b!655102 () Bool)

(declare-fun res!425053 () Bool)

(declare-fun e!376221 () Bool)

(assert (=> b!655102 (=> (not res!425053) (not e!376221))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38646 (_ BitVec 32)) Bool)

(assert (=> b!655102 (= res!425053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655103 () Bool)

(declare-fun res!425059 () Bool)

(assert (=> b!655103 (=> (not res!425059) (not e!376221))))

(declare-datatypes ((List!12613 0))(
  ( (Nil!12610) (Cons!12609 (h!13654 (_ BitVec 64)) (t!18849 List!12613)) )
))
(declare-fun arrayNoDuplicates!0 (array!38646 (_ BitVec 32) List!12613) Bool)

(assert (=> b!655103 (= res!425059 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12610))))

(declare-fun res!425055 () Bool)

(assert (=> start!59370 (=> (not res!425055) (not e!376219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59370 (= res!425055 (validMask!0 mask!3053))))

(assert (=> start!59370 e!376219))

(assert (=> start!59370 true))

(declare-fun array_inv!14293 (array!38646) Bool)

(assert (=> start!59370 (array_inv!14293 a!2986)))

(declare-fun b!655104 () Bool)

(declare-fun res!425061 () Bool)

(assert (=> b!655104 (=> (not res!425061) (not e!376221))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!655104 (= res!425061 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18519 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655105 () Bool)

(declare-fun res!425056 () Bool)

(assert (=> b!655105 (= res!425056 (bvsge j!136 index!984))))

(assert (=> b!655105 (=> res!425056 e!376224)))

(declare-fun e!376223 () Bool)

(assert (=> b!655105 (= e!376223 e!376224)))

(declare-fun b!655106 () Bool)

(declare-datatypes ((Unit!22504 0))(
  ( (Unit!22505) )
))
(declare-fun e!376220 () Unit!22504)

(declare-fun Unit!22506 () Unit!22504)

(assert (=> b!655106 (= e!376220 Unit!22506)))

(declare-fun b!655107 () Bool)

(declare-fun res!425062 () Bool)

(assert (=> b!655107 (=> (not res!425062) (not e!376219))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!655107 (= res!425062 (and (= (size!18883 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18883 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18883 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655108 () Bool)

(declare-fun res!425060 () Bool)

(assert (=> b!655108 (=> (not res!425060) (not e!376219))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!655108 (= res!425060 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655109 () Bool)

(declare-fun e!376228 () Unit!22504)

(declare-fun Unit!22507 () Unit!22504)

(assert (=> b!655109 (= e!376228 Unit!22507)))

(declare-fun b!655110 () Bool)

(declare-fun Unit!22508 () Unit!22504)

(assert (=> b!655110 (= e!376220 Unit!22508)))

(assert (=> b!655110 false))

(declare-fun b!655111 () Bool)

(declare-fun e!376227 () Unit!22504)

(declare-fun Unit!22509 () Unit!22504)

(assert (=> b!655111 (= e!376227 Unit!22509)))

(declare-fun b!655112 () Bool)

(declare-fun res!425052 () Bool)

(assert (=> b!655112 (=> (not res!425052) (not e!376219))))

(assert (=> b!655112 (= res!425052 (validKeyInArray!0 k!1786))))

(declare-fun b!655113 () Bool)

(declare-fun e!376222 () Bool)

(assert (=> b!655113 (= e!376222 (not true))))

(declare-fun lt!305539 () Unit!22504)

(declare-fun e!376226 () Unit!22504)

(assert (=> b!655113 (= lt!305539 e!376226)))

(declare-fun c!75394 () Bool)

(declare-fun lt!305528 () SeekEntryResult!6966)

(assert (=> b!655113 (= c!75394 (= lt!305528 (Found!6966 index!984)))))

(declare-fun lt!305540 () Unit!22504)

(assert (=> b!655113 (= lt!305540 e!376220)))

(declare-fun c!75392 () Bool)

(assert (=> b!655113 (= c!75392 (= lt!305528 Undefined!6966))))

(declare-fun lt!305527 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38646 (_ BitVec 32)) SeekEntryResult!6966)

(assert (=> b!655113 (= lt!305528 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305527 lt!305532 mask!3053))))

(assert (=> b!655113 e!376230))

(declare-fun res!425049 () Bool)

(assert (=> b!655113 (=> (not res!425049) (not e!376230))))

(declare-fun lt!305541 () (_ BitVec 32))

(assert (=> b!655113 (= res!425049 (= lt!305534 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305541 vacantSpotIndex!68 lt!305527 lt!305532 mask!3053)))))

(assert (=> b!655113 (= lt!305534 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305541 vacantSpotIndex!68 (select (arr!18519 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655113 (= lt!305527 (select (store (arr!18519 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305529 () Unit!22504)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38646 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22504)

(assert (=> b!655113 (= lt!305529 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305541 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655113 (= lt!305541 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655114 () Bool)

(declare-fun e!376218 () Bool)

(assert (=> b!655114 (= e!376218 e!376222)))

(declare-fun res!425063 () Bool)

(assert (=> b!655114 (=> (not res!425063) (not e!376222))))

(assert (=> b!655114 (= res!425063 (and (= lt!305522 (Found!6966 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18519 a!2986) index!984) (select (arr!18519 a!2986) j!136))) (not (= (select (arr!18519 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655114 (= lt!305522 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18519 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655115 () Bool)

(assert (=> b!655115 (= e!376231 (arrayContainsKey!0 lt!305532 (select (arr!18519 a!2986) j!136) index!984))))

(declare-fun b!655116 () Bool)

(assert (=> b!655116 (= e!376219 e!376221)))

(declare-fun res!425048 () Bool)

(assert (=> b!655116 (=> (not res!425048) (not e!376221))))

(declare-fun lt!305536 () SeekEntryResult!6966)

(assert (=> b!655116 (= res!425048 (or (= lt!305536 (MissingZero!6966 i!1108)) (= lt!305536 (MissingVacant!6966 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38646 (_ BitVec 32)) SeekEntryResult!6966)

(assert (=> b!655116 (= lt!305536 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655117 () Bool)

(assert (=> b!655117 (= e!376221 e!376218)))

(declare-fun res!425051 () Bool)

(assert (=> b!655117 (=> (not res!425051) (not e!376218))))

(assert (=> b!655117 (= res!425051 (= (select (store (arr!18519 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655117 (= lt!305532 (array!38647 (store (arr!18519 a!2986) i!1108 k!1786) (size!18883 a!2986)))))

(declare-fun b!655118 () Bool)

(assert (=> b!655118 false))

(declare-fun lt!305531 () Unit!22504)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38646 (_ BitVec 64) (_ BitVec 32) List!12613) Unit!22504)

(assert (=> b!655118 (= lt!305531 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305532 (select (arr!18519 a!2986) j!136) index!984 Nil!12610))))

(assert (=> b!655118 (arrayNoDuplicates!0 lt!305532 index!984 Nil!12610)))

(declare-fun lt!305538 () Unit!22504)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38646 (_ BitVec 32) (_ BitVec 32)) Unit!22504)

(assert (=> b!655118 (= lt!305538 (lemmaNoDuplicateFromThenFromBigger!0 lt!305532 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655118 (arrayNoDuplicates!0 lt!305532 #b00000000000000000000000000000000 Nil!12610)))

(declare-fun lt!305526 () Unit!22504)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38646 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12613) Unit!22504)

(assert (=> b!655118 (= lt!305526 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12610))))

(assert (=> b!655118 (arrayContainsKey!0 lt!305532 (select (arr!18519 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305524 () Unit!22504)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38646 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22504)

(assert (=> b!655118 (= lt!305524 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305532 (select (arr!18519 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655118 e!376229))

(declare-fun res!425054 () Bool)

(assert (=> b!655118 (=> (not res!425054) (not e!376229))))

(assert (=> b!655118 (= res!425054 (arrayContainsKey!0 lt!305532 (select (arr!18519 a!2986) j!136) j!136))))

(declare-fun Unit!22510 () Unit!22504)

(assert (=> b!655118 (= e!376227 Unit!22510)))

(declare-fun b!655119 () Bool)

(declare-fun Unit!22511 () Unit!22504)

(assert (=> b!655119 (= e!376226 Unit!22511)))

(declare-fun res!425058 () Bool)

(assert (=> b!655119 (= res!425058 (= (select (store (arr!18519 a!2986) i!1108 k!1786) index!984) (select (arr!18519 a!2986) j!136)))))

(assert (=> b!655119 (=> (not res!425058) (not e!376223))))

(assert (=> b!655119 e!376223))

(declare-fun c!75395 () Bool)

(assert (=> b!655119 (= c!75395 (bvslt j!136 index!984))))

(declare-fun lt!305530 () Unit!22504)

(assert (=> b!655119 (= lt!305530 e!376228)))

(declare-fun c!75393 () Bool)

(assert (=> b!655119 (= c!75393 (bvslt index!984 j!136))))

(declare-fun lt!305525 () Unit!22504)

(assert (=> b!655119 (= lt!305525 e!376227)))

(assert (=> b!655119 false))

(declare-fun b!655120 () Bool)

(declare-fun Unit!22512 () Unit!22504)

(assert (=> b!655120 (= e!376226 Unit!22512)))

(declare-fun b!655121 () Bool)

(assert (=> b!655121 false))

(declare-fun lt!305535 () Unit!22504)

(assert (=> b!655121 (= lt!305535 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305532 (select (arr!18519 a!2986) j!136) j!136 Nil!12610))))

(assert (=> b!655121 (arrayNoDuplicates!0 lt!305532 j!136 Nil!12610)))

(declare-fun lt!305523 () Unit!22504)

(assert (=> b!655121 (= lt!305523 (lemmaNoDuplicateFromThenFromBigger!0 lt!305532 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655121 (arrayNoDuplicates!0 lt!305532 #b00000000000000000000000000000000 Nil!12610)))

(declare-fun lt!305533 () Unit!22504)

(assert (=> b!655121 (= lt!305533 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12610))))

(assert (=> b!655121 (arrayContainsKey!0 lt!305532 (select (arr!18519 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305537 () Unit!22504)

(assert (=> b!655121 (= lt!305537 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305532 (select (arr!18519 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22513 () Unit!22504)

(assert (=> b!655121 (= e!376228 Unit!22513)))

(assert (= (and start!59370 res!425055) b!655107))

(assert (= (and b!655107 res!425062) b!655100))

(assert (= (and b!655100 res!425057) b!655112))

(assert (= (and b!655112 res!425052) b!655108))

(assert (= (and b!655108 res!425060) b!655116))

(assert (= (and b!655116 res!425048) b!655102))

(assert (= (and b!655102 res!425053) b!655103))

(assert (= (and b!655103 res!425059) b!655104))

(assert (= (and b!655104 res!425061) b!655117))

(assert (= (and b!655117 res!425051) b!655114))

(assert (= (and b!655114 res!425063) b!655113))

(assert (= (and b!655113 res!425049) b!655099))

(assert (= (and b!655113 c!75392) b!655110))

(assert (= (and b!655113 (not c!75392)) b!655106))

(assert (= (and b!655113 c!75394) b!655119))

(assert (= (and b!655113 (not c!75394)) b!655120))

(assert (= (and b!655119 res!425058) b!655105))

(assert (= (and b!655105 (not res!425056)) b!655098))

(assert (= (and b!655098 res!425050) b!655115))

(assert (= (and b!655119 c!75395) b!655121))

(assert (= (and b!655119 (not c!75395)) b!655109))

(assert (= (and b!655119 c!75393) b!655118))

(assert (= (and b!655119 (not c!75393)) b!655111))

(assert (= (and b!655118 res!425054) b!655101))

(declare-fun m!628251 () Bool)

(assert (=> b!655098 m!628251))

(assert (=> b!655098 m!628251))

(declare-fun m!628253 () Bool)

(assert (=> b!655098 m!628253))

(declare-fun m!628255 () Bool)

(assert (=> b!655114 m!628255))

(assert (=> b!655114 m!628251))

(assert (=> b!655114 m!628251))

(declare-fun m!628257 () Bool)

(assert (=> b!655114 m!628257))

(declare-fun m!628259 () Bool)

(assert (=> b!655116 m!628259))

(assert (=> b!655100 m!628251))

(assert (=> b!655100 m!628251))

(declare-fun m!628261 () Bool)

(assert (=> b!655100 m!628261))

(declare-fun m!628263 () Bool)

(assert (=> b!655118 m!628263))

(assert (=> b!655118 m!628251))

(declare-fun m!628265 () Bool)

(assert (=> b!655118 m!628265))

(declare-fun m!628267 () Bool)

(assert (=> b!655118 m!628267))

(declare-fun m!628269 () Bool)

(assert (=> b!655118 m!628269))

(assert (=> b!655118 m!628251))

(declare-fun m!628271 () Bool)

(assert (=> b!655118 m!628271))

(assert (=> b!655118 m!628251))

(assert (=> b!655118 m!628253))

(declare-fun m!628273 () Bool)

(assert (=> b!655118 m!628273))

(assert (=> b!655118 m!628251))

(declare-fun m!628275 () Bool)

(assert (=> b!655118 m!628275))

(assert (=> b!655118 m!628251))

(declare-fun m!628277 () Bool)

(assert (=> b!655119 m!628277))

(declare-fun m!628279 () Bool)

(assert (=> b!655119 m!628279))

(assert (=> b!655119 m!628251))

(declare-fun m!628281 () Bool)

(assert (=> b!655112 m!628281))

(declare-fun m!628283 () Bool)

(assert (=> start!59370 m!628283))

(declare-fun m!628285 () Bool)

(assert (=> start!59370 m!628285))

(declare-fun m!628287 () Bool)

(assert (=> b!655103 m!628287))

(assert (=> b!655115 m!628251))

(assert (=> b!655115 m!628251))

(declare-fun m!628289 () Bool)

(assert (=> b!655115 m!628289))

(declare-fun m!628291 () Bool)

(assert (=> b!655108 m!628291))

(assert (=> b!655121 m!628251))

(assert (=> b!655121 m!628251))

(declare-fun m!628293 () Bool)

(assert (=> b!655121 m!628293))

(declare-fun m!628295 () Bool)

(assert (=> b!655121 m!628295))

(assert (=> b!655121 m!628251))

(declare-fun m!628297 () Bool)

(assert (=> b!655121 m!628297))

(assert (=> b!655121 m!628251))

(declare-fun m!628299 () Bool)

(assert (=> b!655121 m!628299))

(declare-fun m!628301 () Bool)

(assert (=> b!655121 m!628301))

(assert (=> b!655121 m!628269))

(assert (=> b!655121 m!628273))

(assert (=> b!655101 m!628251))

(assert (=> b!655101 m!628251))

(assert (=> b!655101 m!628289))

(declare-fun m!628303 () Bool)

(assert (=> b!655104 m!628303))

(assert (=> b!655117 m!628277))

(declare-fun m!628305 () Bool)

(assert (=> b!655117 m!628305))

(declare-fun m!628307 () Bool)

(assert (=> b!655113 m!628307))

(declare-fun m!628309 () Bool)

(assert (=> b!655113 m!628309))

(declare-fun m!628311 () Bool)

(assert (=> b!655113 m!628311))

(assert (=> b!655113 m!628251))

(assert (=> b!655113 m!628277))

(assert (=> b!655113 m!628251))

(declare-fun m!628313 () Bool)

(assert (=> b!655113 m!628313))

(declare-fun m!628315 () Bool)

(assert (=> b!655113 m!628315))

(declare-fun m!628317 () Bool)

(assert (=> b!655113 m!628317))

(declare-fun m!628319 () Bool)

(assert (=> b!655102 m!628319))

(push 1)

