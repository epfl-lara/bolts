; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58040 () Bool)

(assert start!58040)

(declare-fun b!641321 () Bool)

(declare-fun res!415474 () Bool)

(declare-fun e!367209 () Bool)

(assert (=> b!641321 (=> (not res!415474) (not e!367209))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38342 0))(
  ( (array!38343 (arr!18385 (Array (_ BitVec 32) (_ BitVec 64))) (size!18749 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38342)

(assert (=> b!641321 (= res!415474 (and (= (size!18749 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18749 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18749 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!641322 () Bool)

(declare-fun e!367214 () Bool)

(assert (=> b!641322 (= e!367209 e!367214)))

(declare-fun res!415480 () Bool)

(assert (=> b!641322 (=> (not res!415480) (not e!367214))))

(declare-datatypes ((SeekEntryResult!6832 0))(
  ( (MissingZero!6832 (index!29650 (_ BitVec 32))) (Found!6832 (index!29651 (_ BitVec 32))) (Intermediate!6832 (undefined!7644 Bool) (index!29652 (_ BitVec 32)) (x!58438 (_ BitVec 32))) (Undefined!6832) (MissingVacant!6832 (index!29653 (_ BitVec 32))) )
))
(declare-fun lt!296978 () SeekEntryResult!6832)

(assert (=> b!641322 (= res!415480 (or (= lt!296978 (MissingZero!6832 i!1108)) (= lt!296978 (MissingVacant!6832 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38342 (_ BitVec 32)) SeekEntryResult!6832)

(assert (=> b!641322 (= lt!296978 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!641323 () Bool)

(declare-datatypes ((Unit!21686 0))(
  ( (Unit!21687) )
))
(declare-fun e!367215 () Unit!21686)

(declare-fun Unit!21688 () Unit!21686)

(assert (=> b!641323 (= e!367215 Unit!21688)))

(declare-fun b!641324 () Bool)

(declare-fun res!415471 () Bool)

(assert (=> b!641324 (=> (not res!415471) (not e!367214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38342 (_ BitVec 32)) Bool)

(assert (=> b!641324 (= res!415471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!641326 () Bool)

(declare-fun e!367211 () Bool)

(declare-datatypes ((List!12479 0))(
  ( (Nil!12476) (Cons!12475 (h!13520 (_ BitVec 64)) (t!18715 List!12479)) )
))
(declare-fun contains!3133 (List!12479 (_ BitVec 64)) Bool)

(assert (=> b!641326 (= e!367211 (not (contains!3133 Nil!12476 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641327 () Bool)

(declare-fun e!367218 () Bool)

(assert (=> b!641327 (= e!367214 e!367218)))

(declare-fun res!415485 () Bool)

(assert (=> b!641327 (=> (not res!415485) (not e!367218))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!641327 (= res!415485 (= (select (store (arr!18385 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!296979 () array!38342)

(assert (=> b!641327 (= lt!296979 (array!38343 (store (arr!18385 a!2986) i!1108 k0!1786) (size!18749 a!2986)))))

(declare-fun b!641328 () Bool)

(declare-fun res!415472 () Bool)

(assert (=> b!641328 (=> (not res!415472) (not e!367209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!641328 (= res!415472 (validKeyInArray!0 k0!1786))))

(declare-fun b!641329 () Bool)

(declare-fun e!367210 () Bool)

(declare-fun e!367219 () Bool)

(assert (=> b!641329 (= e!367210 e!367219)))

(declare-fun res!415484 () Bool)

(assert (=> b!641329 (=> res!415484 e!367219)))

(declare-fun lt!296975 () (_ BitVec 64))

(declare-fun lt!296969 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!641329 (= res!415484 (or (not (= (select (arr!18385 a!2986) j!136) lt!296969)) (not (= (select (arr!18385 a!2986) j!136) lt!296975)) (bvsge j!136 index!984)))))

(declare-fun e!367216 () Bool)

(assert (=> b!641329 e!367216))

(declare-fun res!415475 () Bool)

(assert (=> b!641329 (=> (not res!415475) (not e!367216))))

(assert (=> b!641329 (= res!415475 (= lt!296975 (select (arr!18385 a!2986) j!136)))))

(assert (=> b!641329 (= lt!296975 (select (store (arr!18385 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!641330 () Bool)

(declare-fun e!367220 () Bool)

(assert (=> b!641330 (= e!367218 e!367220)))

(declare-fun res!415482 () Bool)

(assert (=> b!641330 (=> (not res!415482) (not e!367220))))

(declare-fun lt!296967 () SeekEntryResult!6832)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!641330 (= res!415482 (and (= lt!296967 (Found!6832 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18385 a!2986) index!984) (select (arr!18385 a!2986) j!136))) (not (= (select (arr!18385 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38342 (_ BitVec 32)) SeekEntryResult!6832)

(assert (=> b!641330 (= lt!296967 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641331 () Bool)

(declare-fun res!415477 () Bool)

(declare-fun e!367213 () Bool)

(assert (=> b!641331 (=> res!415477 e!367213)))

(declare-fun noDuplicate!404 (List!12479) Bool)

(assert (=> b!641331 (= res!415477 (not (noDuplicate!404 Nil!12476)))))

(declare-fun b!641332 () Bool)

(declare-fun e!367222 () Bool)

(declare-fun lt!296970 () SeekEntryResult!6832)

(assert (=> b!641332 (= e!367222 (= lt!296967 lt!296970))))

(declare-fun b!641333 () Bool)

(declare-fun e!367221 () Bool)

(assert (=> b!641333 (= e!367216 e!367221)))

(declare-fun res!415476 () Bool)

(assert (=> b!641333 (=> res!415476 e!367221)))

(assert (=> b!641333 (= res!415476 (or (not (= (select (arr!18385 a!2986) j!136) lt!296969)) (not (= (select (arr!18385 a!2986) j!136) lt!296975)) (bvsge j!136 index!984)))))

(declare-fun b!641334 () Bool)

(declare-fun res!415488 () Bool)

(assert (=> b!641334 (=> (not res!415488) (not e!367209))))

(declare-fun arrayContainsKey!0 (array!38342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!641334 (= res!415488 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!641335 () Bool)

(declare-fun res!415478 () Bool)

(assert (=> b!641335 (=> (not res!415478) (not e!367214))))

(assert (=> b!641335 (= res!415478 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18385 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641336 () Bool)

(assert (=> b!641336 (= e!367213 e!367211)))

(declare-fun res!415489 () Bool)

(assert (=> b!641336 (=> (not res!415489) (not e!367211))))

(assert (=> b!641336 (= res!415489 (not (contains!3133 Nil!12476 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641325 () Bool)

(assert (=> b!641325 (= e!367220 (not e!367210))))

(declare-fun res!415483 () Bool)

(assert (=> b!641325 (=> res!415483 e!367210)))

(declare-fun lt!296971 () SeekEntryResult!6832)

(assert (=> b!641325 (= res!415483 (not (= lt!296971 (Found!6832 index!984))))))

(declare-fun lt!296974 () Unit!21686)

(assert (=> b!641325 (= lt!296974 e!367215)))

(declare-fun c!73292 () Bool)

(assert (=> b!641325 (= c!73292 (= lt!296971 Undefined!6832))))

(assert (=> b!641325 (= lt!296971 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296969 lt!296979 mask!3053))))

(assert (=> b!641325 e!367222))

(declare-fun res!415481 () Bool)

(assert (=> b!641325 (=> (not res!415481) (not e!367222))))

(declare-fun lt!296973 () (_ BitVec 32))

(assert (=> b!641325 (= res!415481 (= lt!296970 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 lt!296969 lt!296979 mask!3053)))))

(assert (=> b!641325 (= lt!296970 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!641325 (= lt!296969 (select (store (arr!18385 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296977 () Unit!21686)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38342 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21686)

(assert (=> b!641325 (= lt!296977 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!641325 (= lt!296973 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!415486 () Bool)

(assert (=> start!58040 (=> (not res!415486) (not e!367209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58040 (= res!415486 (validMask!0 mask!3053))))

(assert (=> start!58040 e!367209))

(assert (=> start!58040 true))

(declare-fun array_inv!14159 (array!38342) Bool)

(assert (=> start!58040 (array_inv!14159 a!2986)))

(declare-fun b!641337 () Bool)

(declare-fun Unit!21689 () Unit!21686)

(assert (=> b!641337 (= e!367215 Unit!21689)))

(assert (=> b!641337 false))

(declare-fun b!641338 () Bool)

(declare-fun res!415490 () Bool)

(assert (=> b!641338 (=> (not res!415490) (not e!367214))))

(declare-fun arrayNoDuplicates!0 (array!38342 (_ BitVec 32) List!12479) Bool)

(assert (=> b!641338 (= res!415490 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12476))))

(declare-fun b!641339 () Bool)

(declare-fun res!415479 () Bool)

(assert (=> b!641339 (=> (not res!415479) (not e!367209))))

(assert (=> b!641339 (= res!415479 (validKeyInArray!0 (select (arr!18385 a!2986) j!136)))))

(declare-fun b!641340 () Bool)

(assert (=> b!641340 (= e!367219 e!367213)))

(declare-fun res!415487 () Bool)

(assert (=> b!641340 (=> res!415487 e!367213)))

(assert (=> b!641340 (= res!415487 (or (bvsge (size!18749 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18749 a!2986))))))

(assert (=> b!641340 (arrayNoDuplicates!0 lt!296979 j!136 Nil!12476)))

(declare-fun lt!296976 () Unit!21686)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38342 (_ BitVec 32) (_ BitVec 32)) Unit!21686)

(assert (=> b!641340 (= lt!296976 (lemmaNoDuplicateFromThenFromBigger!0 lt!296979 #b00000000000000000000000000000000 j!136))))

(assert (=> b!641340 (arrayNoDuplicates!0 lt!296979 #b00000000000000000000000000000000 Nil!12476)))

(declare-fun lt!296968 () Unit!21686)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12479) Unit!21686)

(assert (=> b!641340 (= lt!296968 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12476))))

(assert (=> b!641340 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296972 () Unit!21686)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21686)

(assert (=> b!641340 (= lt!296972 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296979 (select (arr!18385 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!641341 () Bool)

(declare-fun e!367217 () Bool)

(assert (=> b!641341 (= e!367217 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) index!984))))

(declare-fun b!641342 () Bool)

(assert (=> b!641342 (= e!367221 e!367217)))

(declare-fun res!415473 () Bool)

(assert (=> b!641342 (=> (not res!415473) (not e!367217))))

(assert (=> b!641342 (= res!415473 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) j!136))))

(assert (= (and start!58040 res!415486) b!641321))

(assert (= (and b!641321 res!415474) b!641339))

(assert (= (and b!641339 res!415479) b!641328))

(assert (= (and b!641328 res!415472) b!641334))

(assert (= (and b!641334 res!415488) b!641322))

(assert (= (and b!641322 res!415480) b!641324))

(assert (= (and b!641324 res!415471) b!641338))

(assert (= (and b!641338 res!415490) b!641335))

(assert (= (and b!641335 res!415478) b!641327))

(assert (= (and b!641327 res!415485) b!641330))

(assert (= (and b!641330 res!415482) b!641325))

(assert (= (and b!641325 res!415481) b!641332))

(assert (= (and b!641325 c!73292) b!641337))

(assert (= (and b!641325 (not c!73292)) b!641323))

(assert (= (and b!641325 (not res!415483)) b!641329))

(assert (= (and b!641329 res!415475) b!641333))

(assert (= (and b!641333 (not res!415476)) b!641342))

(assert (= (and b!641342 res!415473) b!641341))

(assert (= (and b!641329 (not res!415484)) b!641340))

(assert (= (and b!641340 (not res!415487)) b!641331))

(assert (= (and b!641331 (not res!415477)) b!641336))

(assert (= (and b!641336 res!415489) b!641326))

(declare-fun m!615199 () Bool)

(assert (=> b!641328 m!615199))

(declare-fun m!615201 () Bool)

(assert (=> b!641339 m!615201))

(assert (=> b!641339 m!615201))

(declare-fun m!615203 () Bool)

(assert (=> b!641339 m!615203))

(declare-fun m!615205 () Bool)

(assert (=> b!641324 m!615205))

(assert (=> b!641342 m!615201))

(assert (=> b!641342 m!615201))

(declare-fun m!615207 () Bool)

(assert (=> b!641342 m!615207))

(declare-fun m!615209 () Bool)

(assert (=> b!641326 m!615209))

(declare-fun m!615211 () Bool)

(assert (=> b!641336 m!615211))

(declare-fun m!615213 () Bool)

(assert (=> start!58040 m!615213))

(declare-fun m!615215 () Bool)

(assert (=> start!58040 m!615215))

(declare-fun m!615217 () Bool)

(assert (=> b!641322 m!615217))

(assert (=> b!641340 m!615201))

(declare-fun m!615219 () Bool)

(assert (=> b!641340 m!615219))

(assert (=> b!641340 m!615201))

(declare-fun m!615221 () Bool)

(assert (=> b!641340 m!615221))

(declare-fun m!615223 () Bool)

(assert (=> b!641340 m!615223))

(declare-fun m!615225 () Bool)

(assert (=> b!641340 m!615225))

(assert (=> b!641340 m!615201))

(declare-fun m!615227 () Bool)

(assert (=> b!641340 m!615227))

(declare-fun m!615229 () Bool)

(assert (=> b!641340 m!615229))

(assert (=> b!641333 m!615201))

(declare-fun m!615231 () Bool)

(assert (=> b!641327 m!615231))

(declare-fun m!615233 () Bool)

(assert (=> b!641327 m!615233))

(assert (=> b!641341 m!615201))

(assert (=> b!641341 m!615201))

(declare-fun m!615235 () Bool)

(assert (=> b!641341 m!615235))

(declare-fun m!615237 () Bool)

(assert (=> b!641325 m!615237))

(declare-fun m!615239 () Bool)

(assert (=> b!641325 m!615239))

(assert (=> b!641325 m!615201))

(assert (=> b!641325 m!615231))

(declare-fun m!615241 () Bool)

(assert (=> b!641325 m!615241))

(assert (=> b!641325 m!615201))

(declare-fun m!615243 () Bool)

(assert (=> b!641325 m!615243))

(declare-fun m!615245 () Bool)

(assert (=> b!641325 m!615245))

(declare-fun m!615247 () Bool)

(assert (=> b!641325 m!615247))

(assert (=> b!641329 m!615201))

(assert (=> b!641329 m!615231))

(declare-fun m!615249 () Bool)

(assert (=> b!641329 m!615249))

(declare-fun m!615251 () Bool)

(assert (=> b!641331 m!615251))

(declare-fun m!615253 () Bool)

(assert (=> b!641338 m!615253))

(declare-fun m!615255 () Bool)

(assert (=> b!641335 m!615255))

(declare-fun m!615257 () Bool)

(assert (=> b!641330 m!615257))

(assert (=> b!641330 m!615201))

(assert (=> b!641330 m!615201))

(declare-fun m!615259 () Bool)

(assert (=> b!641330 m!615259))

(declare-fun m!615261 () Bool)

(assert (=> b!641334 m!615261))

(check-sat (not b!641339) (not b!641341) (not b!641324) (not b!641328) (not b!641340) (not b!641325) (not b!641330) (not b!641326) (not b!641338) (not start!58040) (not b!641336) (not b!641334) (not b!641342) (not b!641331) (not b!641322))
(check-sat)
(get-model)

(declare-fun d!90501 () Bool)

(declare-fun res!415555 () Bool)

(declare-fun e!367269 () Bool)

(assert (=> d!90501 (=> res!415555 e!367269)))

(get-info :version)

(assert (=> d!90501 (= res!415555 ((_ is Nil!12476) Nil!12476))))

(assert (=> d!90501 (= (noDuplicate!404 Nil!12476) e!367269)))

(declare-fun b!641413 () Bool)

(declare-fun e!367270 () Bool)

(assert (=> b!641413 (= e!367269 e!367270)))

(declare-fun res!415556 () Bool)

(assert (=> b!641413 (=> (not res!415556) (not e!367270))))

(assert (=> b!641413 (= res!415556 (not (contains!3133 (t!18715 Nil!12476) (h!13520 Nil!12476))))))

(declare-fun b!641414 () Bool)

(assert (=> b!641414 (= e!367270 (noDuplicate!404 (t!18715 Nil!12476)))))

(assert (= (and d!90501 (not res!415555)) b!641413))

(assert (= (and b!641413 res!415556) b!641414))

(declare-fun m!615327 () Bool)

(assert (=> b!641413 m!615327))

(declare-fun m!615329 () Bool)

(assert (=> b!641414 m!615329))

(assert (=> b!641331 d!90501))

(declare-fun d!90503 () Bool)

(declare-fun res!415561 () Bool)

(declare-fun e!367275 () Bool)

(assert (=> d!90503 (=> res!415561 e!367275)))

(assert (=> d!90503 (= res!415561 (= (select (arr!18385 lt!296979) j!136) (select (arr!18385 a!2986) j!136)))))

(assert (=> d!90503 (= (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) j!136) e!367275)))

(declare-fun b!641419 () Bool)

(declare-fun e!367276 () Bool)

(assert (=> b!641419 (= e!367275 e!367276)))

(declare-fun res!415562 () Bool)

(assert (=> b!641419 (=> (not res!415562) (not e!367276))))

(assert (=> b!641419 (= res!415562 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18749 lt!296979)))))

(declare-fun b!641420 () Bool)

(assert (=> b!641420 (= e!367276 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90503 (not res!415561)) b!641419))

(assert (= (and b!641419 res!415562) b!641420))

(declare-fun m!615331 () Bool)

(assert (=> d!90503 m!615331))

(assert (=> b!641420 m!615201))

(declare-fun m!615333 () Bool)

(assert (=> b!641420 m!615333))

(assert (=> b!641342 d!90503))

(declare-fun b!641433 () Bool)

(declare-fun e!367284 () SeekEntryResult!6832)

(assert (=> b!641433 (= e!367284 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641434 () Bool)

(declare-fun e!367285 () SeekEntryResult!6832)

(assert (=> b!641434 (= e!367285 (Found!6832 index!984))))

(declare-fun b!641435 () Bool)

(declare-fun e!367283 () SeekEntryResult!6832)

(assert (=> b!641435 (= e!367283 Undefined!6832)))

(declare-fun b!641436 () Bool)

(assert (=> b!641436 (= e!367284 (MissingVacant!6832 vacantSpotIndex!68))))

(declare-fun b!641438 () Bool)

(declare-fun c!73304 () Bool)

(declare-fun lt!297023 () (_ BitVec 64))

(assert (=> b!641438 (= c!73304 (= lt!297023 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641438 (= e!367285 e!367284)))

(declare-fun b!641437 () Bool)

(assert (=> b!641437 (= e!367283 e!367285)))

(declare-fun c!73303 () Bool)

(assert (=> b!641437 (= c!73303 (= lt!297023 (select (arr!18385 a!2986) j!136)))))

(declare-fun lt!297024 () SeekEntryResult!6832)

(declare-fun d!90505 () Bool)

(assert (=> d!90505 (and (or ((_ is Undefined!6832) lt!297024) (not ((_ is Found!6832) lt!297024)) (and (bvsge (index!29651 lt!297024) #b00000000000000000000000000000000) (bvslt (index!29651 lt!297024) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297024) ((_ is Found!6832) lt!297024) (not ((_ is MissingVacant!6832) lt!297024)) (not (= (index!29653 lt!297024) vacantSpotIndex!68)) (and (bvsge (index!29653 lt!297024) #b00000000000000000000000000000000) (bvslt (index!29653 lt!297024) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297024) (ite ((_ is Found!6832) lt!297024) (= (select (arr!18385 a!2986) (index!29651 lt!297024)) (select (arr!18385 a!2986) j!136)) (and ((_ is MissingVacant!6832) lt!297024) (= (index!29653 lt!297024) vacantSpotIndex!68) (= (select (arr!18385 a!2986) (index!29653 lt!297024)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90505 (= lt!297024 e!367283)))

(declare-fun c!73302 () Bool)

(assert (=> d!90505 (= c!73302 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90505 (= lt!297023 (select (arr!18385 a!2986) index!984))))

(assert (=> d!90505 (validMask!0 mask!3053)))

(assert (=> d!90505 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053) lt!297024)))

(assert (= (and d!90505 c!73302) b!641435))

(assert (= (and d!90505 (not c!73302)) b!641437))

(assert (= (and b!641437 c!73303) b!641434))

(assert (= (and b!641437 (not c!73303)) b!641438))

(assert (= (and b!641438 c!73304) b!641436))

(assert (= (and b!641438 (not c!73304)) b!641433))

(assert (=> b!641433 m!615237))

(assert (=> b!641433 m!615237))

(assert (=> b!641433 m!615201))

(declare-fun m!615335 () Bool)

(assert (=> b!641433 m!615335))

(declare-fun m!615337 () Bool)

(assert (=> d!90505 m!615337))

(declare-fun m!615339 () Bool)

(assert (=> d!90505 m!615339))

(assert (=> d!90505 m!615257))

(assert (=> d!90505 m!615213))

(assert (=> b!641330 d!90505))

(declare-fun d!90507 () Bool)

(declare-fun res!415563 () Bool)

(declare-fun e!367286 () Bool)

(assert (=> d!90507 (=> res!415563 e!367286)))

(assert (=> d!90507 (= res!415563 (= (select (arr!18385 lt!296979) index!984) (select (arr!18385 a!2986) j!136)))))

(assert (=> d!90507 (= (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) index!984) e!367286)))

(declare-fun b!641439 () Bool)

(declare-fun e!367287 () Bool)

(assert (=> b!641439 (= e!367286 e!367287)))

(declare-fun res!415564 () Bool)

(assert (=> b!641439 (=> (not res!415564) (not e!367287))))

(assert (=> b!641439 (= res!415564 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18749 lt!296979)))))

(declare-fun b!641440 () Bool)

(assert (=> b!641440 (= e!367287 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90507 (not res!415563)) b!641439))

(assert (= (and b!641439 res!415564) b!641440))

(declare-fun m!615341 () Bool)

(assert (=> d!90507 m!615341))

(assert (=> b!641440 m!615201))

(declare-fun m!615343 () Bool)

(assert (=> b!641440 m!615343))

(assert (=> b!641341 d!90507))

(declare-fun d!90509 () Bool)

(declare-fun res!415565 () Bool)

(declare-fun e!367288 () Bool)

(assert (=> d!90509 (=> res!415565 e!367288)))

(assert (=> d!90509 (= res!415565 (= (select (arr!18385 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90509 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!367288)))

(declare-fun b!641441 () Bool)

(declare-fun e!367289 () Bool)

(assert (=> b!641441 (= e!367288 e!367289)))

(declare-fun res!415566 () Bool)

(assert (=> b!641441 (=> (not res!415566) (not e!367289))))

(assert (=> b!641441 (= res!415566 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18749 a!2986)))))

(declare-fun b!641442 () Bool)

(assert (=> b!641442 (= e!367289 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90509 (not res!415565)) b!641441))

(assert (= (and b!641441 res!415566) b!641442))

(declare-fun m!615345 () Bool)

(assert (=> d!90509 m!615345))

(declare-fun m!615347 () Bool)

(assert (=> b!641442 m!615347))

(assert (=> b!641334 d!90509))

(declare-fun b!641451 () Bool)

(declare-fun e!367298 () Bool)

(declare-fun e!367296 () Bool)

(assert (=> b!641451 (= e!367298 e!367296)))

(declare-fun lt!297033 () (_ BitVec 64))

(assert (=> b!641451 (= lt!297033 (select (arr!18385 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!297031 () Unit!21686)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38342 (_ BitVec 64) (_ BitVec 32)) Unit!21686)

(assert (=> b!641451 (= lt!297031 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!297033 #b00000000000000000000000000000000))))

(assert (=> b!641451 (arrayContainsKey!0 a!2986 lt!297033 #b00000000000000000000000000000000)))

(declare-fun lt!297032 () Unit!21686)

(assert (=> b!641451 (= lt!297032 lt!297031)))

(declare-fun res!415572 () Bool)

(assert (=> b!641451 (= res!415572 (= (seekEntryOrOpen!0 (select (arr!18385 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6832 #b00000000000000000000000000000000)))))

(assert (=> b!641451 (=> (not res!415572) (not e!367296))))

(declare-fun bm!33533 () Bool)

(declare-fun call!33536 () Bool)

(assert (=> bm!33533 (= call!33536 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!641452 () Bool)

(assert (=> b!641452 (= e!367296 call!33536)))

(declare-fun b!641453 () Bool)

(declare-fun e!367297 () Bool)

(assert (=> b!641453 (= e!367297 e!367298)))

(declare-fun c!73307 () Bool)

(assert (=> b!641453 (= c!73307 (validKeyInArray!0 (select (arr!18385 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90511 () Bool)

(declare-fun res!415571 () Bool)

(assert (=> d!90511 (=> res!415571 e!367297)))

(assert (=> d!90511 (= res!415571 (bvsge #b00000000000000000000000000000000 (size!18749 a!2986)))))

(assert (=> d!90511 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!367297)))

(declare-fun b!641454 () Bool)

(assert (=> b!641454 (= e!367298 call!33536)))

(assert (= (and d!90511 (not res!415571)) b!641453))

(assert (= (and b!641453 c!73307) b!641451))

(assert (= (and b!641453 (not c!73307)) b!641454))

(assert (= (and b!641451 res!415572) b!641452))

(assert (= (or b!641452 b!641454) bm!33533))

(assert (=> b!641451 m!615345))

(declare-fun m!615349 () Bool)

(assert (=> b!641451 m!615349))

(declare-fun m!615351 () Bool)

(assert (=> b!641451 m!615351))

(assert (=> b!641451 m!615345))

(declare-fun m!615353 () Bool)

(assert (=> b!641451 m!615353))

(declare-fun m!615355 () Bool)

(assert (=> bm!33533 m!615355))

(assert (=> b!641453 m!615345))

(assert (=> b!641453 m!615345))

(declare-fun m!615357 () Bool)

(assert (=> b!641453 m!615357))

(assert (=> b!641324 d!90511))

(declare-fun d!90513 () Bool)

(assert (=> d!90513 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58040 d!90513))

(declare-fun d!90515 () Bool)

(assert (=> d!90515 (= (array_inv!14159 a!2986) (bvsge (size!18749 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58040 d!90515))

(declare-fun b!641496 () Bool)

(declare-fun e!367332 () SeekEntryResult!6832)

(assert (=> b!641496 (= e!367332 Undefined!6832)))

(declare-fun b!641497 () Bool)

(declare-fun e!367333 () SeekEntryResult!6832)

(declare-fun lt!297040 () SeekEntryResult!6832)

(assert (=> b!641497 (= e!367333 (MissingZero!6832 (index!29652 lt!297040)))))

(declare-fun b!641498 () Bool)

(assert (=> b!641498 (= e!367333 (seekKeyOrZeroReturnVacant!0 (x!58438 lt!297040) (index!29652 lt!297040) (index!29652 lt!297040) k0!1786 a!2986 mask!3053))))

(declare-fun b!641499 () Bool)

(declare-fun e!367331 () SeekEntryResult!6832)

(assert (=> b!641499 (= e!367332 e!367331)))

(declare-fun lt!297041 () (_ BitVec 64))

(assert (=> b!641499 (= lt!297041 (select (arr!18385 a!2986) (index!29652 lt!297040)))))

(declare-fun c!73318 () Bool)

(assert (=> b!641499 (= c!73318 (= lt!297041 k0!1786))))

(declare-fun b!641500 () Bool)

(assert (=> b!641500 (= e!367331 (Found!6832 (index!29652 lt!297040)))))

(declare-fun d!90517 () Bool)

(declare-fun lt!297042 () SeekEntryResult!6832)

(assert (=> d!90517 (and (or ((_ is Undefined!6832) lt!297042) (not ((_ is Found!6832) lt!297042)) (and (bvsge (index!29651 lt!297042) #b00000000000000000000000000000000) (bvslt (index!29651 lt!297042) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297042) ((_ is Found!6832) lt!297042) (not ((_ is MissingZero!6832) lt!297042)) (and (bvsge (index!29650 lt!297042) #b00000000000000000000000000000000) (bvslt (index!29650 lt!297042) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297042) ((_ is Found!6832) lt!297042) ((_ is MissingZero!6832) lt!297042) (not ((_ is MissingVacant!6832) lt!297042)) (and (bvsge (index!29653 lt!297042) #b00000000000000000000000000000000) (bvslt (index!29653 lt!297042) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297042) (ite ((_ is Found!6832) lt!297042) (= (select (arr!18385 a!2986) (index!29651 lt!297042)) k0!1786) (ite ((_ is MissingZero!6832) lt!297042) (= (select (arr!18385 a!2986) (index!29650 lt!297042)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6832) lt!297042) (= (select (arr!18385 a!2986) (index!29653 lt!297042)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90517 (= lt!297042 e!367332)))

(declare-fun c!73319 () Bool)

(assert (=> d!90517 (= c!73319 (and ((_ is Intermediate!6832) lt!297040) (undefined!7644 lt!297040)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38342 (_ BitVec 32)) SeekEntryResult!6832)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90517 (= lt!297040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90517 (validMask!0 mask!3053)))

(assert (=> d!90517 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!297042)))

(declare-fun b!641501 () Bool)

(declare-fun c!73317 () Bool)

(assert (=> b!641501 (= c!73317 (= lt!297041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641501 (= e!367331 e!367333)))

(assert (= (and d!90517 c!73319) b!641496))

(assert (= (and d!90517 (not c!73319)) b!641499))

(assert (= (and b!641499 c!73318) b!641500))

(assert (= (and b!641499 (not c!73318)) b!641501))

(assert (= (and b!641501 c!73317) b!641497))

(assert (= (and b!641501 (not c!73317)) b!641498))

(declare-fun m!615377 () Bool)

(assert (=> b!641498 m!615377))

(declare-fun m!615379 () Bool)

(assert (=> b!641499 m!615379))

(declare-fun m!615381 () Bool)

(assert (=> d!90517 m!615381))

(declare-fun m!615383 () Bool)

(assert (=> d!90517 m!615383))

(declare-fun m!615385 () Bool)

(assert (=> d!90517 m!615385))

(assert (=> d!90517 m!615213))

(assert (=> d!90517 m!615383))

(declare-fun m!615387 () Bool)

(assert (=> d!90517 m!615387))

(declare-fun m!615389 () Bool)

(assert (=> d!90517 m!615389))

(assert (=> b!641322 d!90517))

(declare-fun d!90535 () Bool)

(declare-fun lt!297056 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!248 (List!12479) (InoxSet (_ BitVec 64)))

(assert (=> d!90535 (= lt!297056 (select (content!248 Nil!12476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367344 () Bool)

(assert (=> d!90535 (= lt!297056 e!367344)))

(declare-fun res!415607 () Bool)

(assert (=> d!90535 (=> (not res!415607) (not e!367344))))

(assert (=> d!90535 (= res!415607 ((_ is Cons!12475) Nil!12476))))

(assert (=> d!90535 (= (contains!3133 Nil!12476 #b1000000000000000000000000000000000000000000000000000000000000000) lt!297056)))

(declare-fun b!641514 () Bool)

(declare-fun e!367345 () Bool)

(assert (=> b!641514 (= e!367344 e!367345)))

(declare-fun res!415606 () Bool)

(assert (=> b!641514 (=> res!415606 e!367345)))

(assert (=> b!641514 (= res!415606 (= (h!13520 Nil!12476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641515 () Bool)

(assert (=> b!641515 (= e!367345 (contains!3133 (t!18715 Nil!12476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!90535 res!415607) b!641514))

(assert (= (and b!641514 (not res!415606)) b!641515))

(declare-fun m!615391 () Bool)

(assert (=> d!90535 m!615391))

(declare-fun m!615393 () Bool)

(assert (=> d!90535 m!615393))

(declare-fun m!615395 () Bool)

(assert (=> b!641515 m!615395))

(assert (=> b!641326 d!90535))

(declare-fun b!641532 () Bool)

(declare-fun e!367356 () SeekEntryResult!6832)

(assert (=> b!641532 (= e!367356 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296973 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!296969 lt!296979 mask!3053))))

(declare-fun b!641533 () Bool)

(declare-fun e!367357 () SeekEntryResult!6832)

(assert (=> b!641533 (= e!367357 (Found!6832 lt!296973))))

(declare-fun b!641534 () Bool)

(declare-fun e!367355 () SeekEntryResult!6832)

(assert (=> b!641534 (= e!367355 Undefined!6832)))

(declare-fun b!641535 () Bool)

(assert (=> b!641535 (= e!367356 (MissingVacant!6832 vacantSpotIndex!68))))

(declare-fun b!641537 () Bool)

(declare-fun c!73331 () Bool)

(declare-fun lt!297061 () (_ BitVec 64))

(assert (=> b!641537 (= c!73331 (= lt!297061 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641537 (= e!367357 e!367356)))

(declare-fun b!641536 () Bool)

(assert (=> b!641536 (= e!367355 e!367357)))

(declare-fun c!73330 () Bool)

(assert (=> b!641536 (= c!73330 (= lt!297061 lt!296969))))

(declare-fun lt!297062 () SeekEntryResult!6832)

(declare-fun d!90537 () Bool)

(assert (=> d!90537 (and (or ((_ is Undefined!6832) lt!297062) (not ((_ is Found!6832) lt!297062)) (and (bvsge (index!29651 lt!297062) #b00000000000000000000000000000000) (bvslt (index!29651 lt!297062) (size!18749 lt!296979)))) (or ((_ is Undefined!6832) lt!297062) ((_ is Found!6832) lt!297062) (not ((_ is MissingVacant!6832) lt!297062)) (not (= (index!29653 lt!297062) vacantSpotIndex!68)) (and (bvsge (index!29653 lt!297062) #b00000000000000000000000000000000) (bvslt (index!29653 lt!297062) (size!18749 lt!296979)))) (or ((_ is Undefined!6832) lt!297062) (ite ((_ is Found!6832) lt!297062) (= (select (arr!18385 lt!296979) (index!29651 lt!297062)) lt!296969) (and ((_ is MissingVacant!6832) lt!297062) (= (index!29653 lt!297062) vacantSpotIndex!68) (= (select (arr!18385 lt!296979) (index!29653 lt!297062)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90537 (= lt!297062 e!367355)))

(declare-fun c!73329 () Bool)

(assert (=> d!90537 (= c!73329 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90537 (= lt!297061 (select (arr!18385 lt!296979) lt!296973))))

(assert (=> d!90537 (validMask!0 mask!3053)))

(assert (=> d!90537 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 lt!296969 lt!296979 mask!3053) lt!297062)))

(assert (= (and d!90537 c!73329) b!641534))

(assert (= (and d!90537 (not c!73329)) b!641536))

(assert (= (and b!641536 c!73330) b!641533))

(assert (= (and b!641536 (not c!73330)) b!641537))

(assert (= (and b!641537 c!73331) b!641535))

(assert (= (and b!641537 (not c!73331)) b!641532))

(declare-fun m!615405 () Bool)

(assert (=> b!641532 m!615405))

(assert (=> b!641532 m!615405))

(declare-fun m!615407 () Bool)

(assert (=> b!641532 m!615407))

(declare-fun m!615409 () Bool)

(assert (=> d!90537 m!615409))

(declare-fun m!615411 () Bool)

(assert (=> d!90537 m!615411))

(declare-fun m!615413 () Bool)

(assert (=> d!90537 m!615413))

(assert (=> d!90537 m!615213))

(assert (=> b!641325 d!90537))

(declare-fun d!90541 () Bool)

(declare-fun lt!297065 () (_ BitVec 32))

(assert (=> d!90541 (and (bvsge lt!297065 #b00000000000000000000000000000000) (bvslt lt!297065 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90541 (= lt!297065 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90541 (validMask!0 mask!3053)))

(assert (=> d!90541 (= (nextIndex!0 index!984 x!910 mask!3053) lt!297065)))

(declare-fun bs!19202 () Bool)

(assert (= bs!19202 d!90541))

(declare-fun m!615415 () Bool)

(assert (=> bs!19202 m!615415))

(assert (=> bs!19202 m!615213))

(assert (=> b!641325 d!90541))

(declare-fun e!367359 () SeekEntryResult!6832)

(declare-fun b!641538 () Bool)

(assert (=> b!641538 (= e!367359 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!296969 lt!296979 mask!3053))))

(declare-fun b!641539 () Bool)

(declare-fun e!367360 () SeekEntryResult!6832)

(assert (=> b!641539 (= e!367360 (Found!6832 index!984))))

(declare-fun b!641540 () Bool)

(declare-fun e!367358 () SeekEntryResult!6832)

(assert (=> b!641540 (= e!367358 Undefined!6832)))

(declare-fun b!641541 () Bool)

(assert (=> b!641541 (= e!367359 (MissingVacant!6832 vacantSpotIndex!68))))

(declare-fun b!641543 () Bool)

(declare-fun c!73334 () Bool)

(declare-fun lt!297066 () (_ BitVec 64))

(assert (=> b!641543 (= c!73334 (= lt!297066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641543 (= e!367360 e!367359)))

(declare-fun b!641542 () Bool)

(assert (=> b!641542 (= e!367358 e!367360)))

(declare-fun c!73333 () Bool)

(assert (=> b!641542 (= c!73333 (= lt!297066 lt!296969))))

(declare-fun lt!297067 () SeekEntryResult!6832)

(declare-fun d!90543 () Bool)

(assert (=> d!90543 (and (or ((_ is Undefined!6832) lt!297067) (not ((_ is Found!6832) lt!297067)) (and (bvsge (index!29651 lt!297067) #b00000000000000000000000000000000) (bvslt (index!29651 lt!297067) (size!18749 lt!296979)))) (or ((_ is Undefined!6832) lt!297067) ((_ is Found!6832) lt!297067) (not ((_ is MissingVacant!6832) lt!297067)) (not (= (index!29653 lt!297067) vacantSpotIndex!68)) (and (bvsge (index!29653 lt!297067) #b00000000000000000000000000000000) (bvslt (index!29653 lt!297067) (size!18749 lt!296979)))) (or ((_ is Undefined!6832) lt!297067) (ite ((_ is Found!6832) lt!297067) (= (select (arr!18385 lt!296979) (index!29651 lt!297067)) lt!296969) (and ((_ is MissingVacant!6832) lt!297067) (= (index!29653 lt!297067) vacantSpotIndex!68) (= (select (arr!18385 lt!296979) (index!29653 lt!297067)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90543 (= lt!297067 e!367358)))

(declare-fun c!73332 () Bool)

(assert (=> d!90543 (= c!73332 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90543 (= lt!297066 (select (arr!18385 lt!296979) index!984))))

(assert (=> d!90543 (validMask!0 mask!3053)))

(assert (=> d!90543 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296969 lt!296979 mask!3053) lt!297067)))

(assert (= (and d!90543 c!73332) b!641540))

(assert (= (and d!90543 (not c!73332)) b!641542))

(assert (= (and b!641542 c!73333) b!641539))

(assert (= (and b!641542 (not c!73333)) b!641543))

(assert (= (and b!641543 c!73334) b!641541))

(assert (= (and b!641543 (not c!73334)) b!641538))

(assert (=> b!641538 m!615237))

(assert (=> b!641538 m!615237))

(declare-fun m!615417 () Bool)

(assert (=> b!641538 m!615417))

(declare-fun m!615419 () Bool)

(assert (=> d!90543 m!615419))

(declare-fun m!615421 () Bool)

(assert (=> d!90543 m!615421))

(assert (=> d!90543 m!615341))

(assert (=> d!90543 m!615213))

(assert (=> b!641325 d!90543))

(declare-fun d!90545 () Bool)

(declare-fun e!367387 () Bool)

(assert (=> d!90545 e!367387))

(declare-fun res!415622 () Bool)

(assert (=> d!90545 (=> (not res!415622) (not e!367387))))

(assert (=> d!90545 (= res!415622 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18749 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18749 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18749 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18749 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18749 a!2986))))))

(declare-fun lt!297088 () Unit!21686)

(declare-fun choose!9 (array!38342 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21686)

(assert (=> d!90545 (= lt!297088 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90545 (validMask!0 mask!3053)))

(assert (=> d!90545 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 mask!3053) lt!297088)))

(declare-fun b!641582 () Bool)

(assert (=> b!641582 (= e!367387 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 (select (store (arr!18385 a!2986) i!1108 k0!1786) j!136) (array!38343 (store (arr!18385 a!2986) i!1108 k0!1786) (size!18749 a!2986)) mask!3053)))))

(assert (= (and d!90545 res!415622) b!641582))

(declare-fun m!615453 () Bool)

(assert (=> d!90545 m!615453))

(assert (=> d!90545 m!615213))

(assert (=> b!641582 m!615239))

(assert (=> b!641582 m!615201))

(assert (=> b!641582 m!615243))

(assert (=> b!641582 m!615239))

(declare-fun m!615455 () Bool)

(assert (=> b!641582 m!615455))

(assert (=> b!641582 m!615231))

(assert (=> b!641582 m!615201))

(assert (=> b!641325 d!90545))

(declare-fun b!641583 () Bool)

(declare-fun e!367389 () SeekEntryResult!6832)

(assert (=> b!641583 (= e!367389 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296973 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641584 () Bool)

(declare-fun e!367390 () SeekEntryResult!6832)

(assert (=> b!641584 (= e!367390 (Found!6832 lt!296973))))

(declare-fun b!641585 () Bool)

(declare-fun e!367388 () SeekEntryResult!6832)

(assert (=> b!641585 (= e!367388 Undefined!6832)))

(declare-fun b!641586 () Bool)

(assert (=> b!641586 (= e!367389 (MissingVacant!6832 vacantSpotIndex!68))))

(declare-fun b!641588 () Bool)

(declare-fun c!73349 () Bool)

(declare-fun lt!297089 () (_ BitVec 64))

(assert (=> b!641588 (= c!73349 (= lt!297089 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641588 (= e!367390 e!367389)))

(declare-fun b!641587 () Bool)

(assert (=> b!641587 (= e!367388 e!367390)))

(declare-fun c!73348 () Bool)

(assert (=> b!641587 (= c!73348 (= lt!297089 (select (arr!18385 a!2986) j!136)))))

(declare-fun d!90553 () Bool)

(declare-fun lt!297090 () SeekEntryResult!6832)

(assert (=> d!90553 (and (or ((_ is Undefined!6832) lt!297090) (not ((_ is Found!6832) lt!297090)) (and (bvsge (index!29651 lt!297090) #b00000000000000000000000000000000) (bvslt (index!29651 lt!297090) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297090) ((_ is Found!6832) lt!297090) (not ((_ is MissingVacant!6832) lt!297090)) (not (= (index!29653 lt!297090) vacantSpotIndex!68)) (and (bvsge (index!29653 lt!297090) #b00000000000000000000000000000000) (bvslt (index!29653 lt!297090) (size!18749 a!2986)))) (or ((_ is Undefined!6832) lt!297090) (ite ((_ is Found!6832) lt!297090) (= (select (arr!18385 a!2986) (index!29651 lt!297090)) (select (arr!18385 a!2986) j!136)) (and ((_ is MissingVacant!6832) lt!297090) (= (index!29653 lt!297090) vacantSpotIndex!68) (= (select (arr!18385 a!2986) (index!29653 lt!297090)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90553 (= lt!297090 e!367388)))

(declare-fun c!73347 () Bool)

(assert (=> d!90553 (= c!73347 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90553 (= lt!297089 (select (arr!18385 a!2986) lt!296973))))

(assert (=> d!90553 (validMask!0 mask!3053)))

(assert (=> d!90553 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296973 vacantSpotIndex!68 (select (arr!18385 a!2986) j!136) a!2986 mask!3053) lt!297090)))

(assert (= (and d!90553 c!73347) b!641585))

(assert (= (and d!90553 (not c!73347)) b!641587))

(assert (= (and b!641587 c!73348) b!641584))

(assert (= (and b!641587 (not c!73348)) b!641588))

(assert (= (and b!641588 c!73349) b!641586))

(assert (= (and b!641588 (not c!73349)) b!641583))

(assert (=> b!641583 m!615405))

(assert (=> b!641583 m!615405))

(assert (=> b!641583 m!615201))

(declare-fun m!615457 () Bool)

(assert (=> b!641583 m!615457))

(declare-fun m!615459 () Bool)

(assert (=> d!90553 m!615459))

(declare-fun m!615461 () Bool)

(assert (=> d!90553 m!615461))

(declare-fun m!615463 () Bool)

(assert (=> d!90553 m!615463))

(assert (=> d!90553 m!615213))

(assert (=> b!641325 d!90553))

(declare-fun d!90555 () Bool)

(declare-fun lt!297091 () Bool)

(assert (=> d!90555 (= lt!297091 (select (content!248 Nil!12476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367391 () Bool)

(assert (=> d!90555 (= lt!297091 e!367391)))

(declare-fun res!415624 () Bool)

(assert (=> d!90555 (=> (not res!415624) (not e!367391))))

(assert (=> d!90555 (= res!415624 ((_ is Cons!12475) Nil!12476))))

(assert (=> d!90555 (= (contains!3133 Nil!12476 #b0000000000000000000000000000000000000000000000000000000000000000) lt!297091)))

(declare-fun b!641589 () Bool)

(declare-fun e!367392 () Bool)

(assert (=> b!641589 (= e!367391 e!367392)))

(declare-fun res!415623 () Bool)

(assert (=> b!641589 (=> res!415623 e!367392)))

(assert (=> b!641589 (= res!415623 (= (h!13520 Nil!12476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!641590 () Bool)

(assert (=> b!641590 (= e!367392 (contains!3133 (t!18715 Nil!12476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!90555 res!415624) b!641589))

(assert (= (and b!641589 (not res!415623)) b!641590))

(assert (=> d!90555 m!615391))

(declare-fun m!615465 () Bool)

(assert (=> d!90555 m!615465))

(declare-fun m!615467 () Bool)

(assert (=> b!641590 m!615467))

(assert (=> b!641336 d!90555))

(declare-fun d!90557 () Bool)

(assert (=> d!90557 (= (validKeyInArray!0 (select (arr!18385 a!2986) j!136)) (and (not (= (select (arr!18385 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18385 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!641339 d!90557))

(declare-fun d!90559 () Bool)

(assert (=> d!90559 (arrayNoDuplicates!0 lt!296979 j!136 Nil!12476)))

(declare-fun lt!297097 () Unit!21686)

(declare-fun choose!39 (array!38342 (_ BitVec 32) (_ BitVec 32)) Unit!21686)

(assert (=> d!90559 (= lt!297097 (choose!39 lt!296979 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90559 (bvslt (size!18749 lt!296979) #b01111111111111111111111111111111)))

(assert (=> d!90559 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!296979 #b00000000000000000000000000000000 j!136) lt!297097)))

(declare-fun bs!19203 () Bool)

(assert (= bs!19203 d!90559))

(assert (=> bs!19203 m!615219))

(declare-fun m!615483 () Bool)

(assert (=> bs!19203 m!615483))

(assert (=> b!641340 d!90559))

(declare-fun b!641615 () Bool)

(declare-fun e!367412 () Bool)

(assert (=> b!641615 (= e!367412 (contains!3133 Nil!12476 (select (arr!18385 lt!296979) j!136)))))

(declare-fun b!641616 () Bool)

(declare-fun e!367414 () Bool)

(declare-fun e!367413 () Bool)

(assert (=> b!641616 (= e!367414 e!367413)))

(declare-fun res!415639 () Bool)

(assert (=> b!641616 (=> (not res!415639) (not e!367413))))

(assert (=> b!641616 (= res!415639 (not e!367412))))

(declare-fun res!415641 () Bool)

(assert (=> b!641616 (=> (not res!415641) (not e!367412))))

(assert (=> b!641616 (= res!415641 (validKeyInArray!0 (select (arr!18385 lt!296979) j!136)))))

(declare-fun b!641617 () Bool)

(declare-fun e!367415 () Bool)

(declare-fun call!33548 () Bool)

(assert (=> b!641617 (= e!367415 call!33548)))

(declare-fun d!90563 () Bool)

(declare-fun res!415640 () Bool)

(assert (=> d!90563 (=> res!415640 e!367414)))

(assert (=> d!90563 (= res!415640 (bvsge j!136 (size!18749 lt!296979)))))

(assert (=> d!90563 (= (arrayNoDuplicates!0 lt!296979 j!136 Nil!12476) e!367414)))

(declare-fun b!641618 () Bool)

(assert (=> b!641618 (= e!367413 e!367415)))

(declare-fun c!73355 () Bool)

(assert (=> b!641618 (= c!73355 (validKeyInArray!0 (select (arr!18385 lt!296979) j!136)))))

(declare-fun b!641619 () Bool)

(assert (=> b!641619 (= e!367415 call!33548)))

(declare-fun bm!33545 () Bool)

(assert (=> bm!33545 (= call!33548 (arrayNoDuplicates!0 lt!296979 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73355 (Cons!12475 (select (arr!18385 lt!296979) j!136) Nil!12476) Nil!12476)))))

(assert (= (and d!90563 (not res!415640)) b!641616))

(assert (= (and b!641616 res!415641) b!641615))

(assert (= (and b!641616 res!415639) b!641618))

(assert (= (and b!641618 c!73355) b!641617))

(assert (= (and b!641618 (not c!73355)) b!641619))

(assert (= (or b!641617 b!641619) bm!33545))

(assert (=> b!641615 m!615331))

(assert (=> b!641615 m!615331))

(declare-fun m!615489 () Bool)

(assert (=> b!641615 m!615489))

(assert (=> b!641616 m!615331))

(assert (=> b!641616 m!615331))

(declare-fun m!615491 () Bool)

(assert (=> b!641616 m!615491))

(assert (=> b!641618 m!615331))

(assert (=> b!641618 m!615331))

(assert (=> b!641618 m!615491))

(assert (=> bm!33545 m!615331))

(declare-fun m!615493 () Bool)

(assert (=> bm!33545 m!615493))

(assert (=> b!641340 d!90563))

(declare-fun d!90567 () Bool)

(assert (=> d!90567 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297103 () Unit!21686)

(declare-fun choose!114 (array!38342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21686)

(assert (=> d!90567 (= lt!297103 (choose!114 lt!296979 (select (arr!18385 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90567 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90567 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296979 (select (arr!18385 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!297103)))

(declare-fun bs!19204 () Bool)

(assert (= bs!19204 d!90567))

(assert (=> bs!19204 m!615201))

(assert (=> bs!19204 m!615221))

(assert (=> bs!19204 m!615201))

(declare-fun m!615499 () Bool)

(assert (=> bs!19204 m!615499))

(assert (=> b!641340 d!90567))

(declare-fun d!90571 () Bool)

(declare-fun res!415643 () Bool)

(declare-fun e!367417 () Bool)

(assert (=> d!90571 (=> res!415643 e!367417)))

(assert (=> d!90571 (= res!415643 (= (select (arr!18385 lt!296979) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18385 a!2986) j!136)))))

(assert (=> d!90571 (= (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!367417)))

(declare-fun b!641621 () Bool)

(declare-fun e!367418 () Bool)

(assert (=> b!641621 (= e!367417 e!367418)))

(declare-fun res!415644 () Bool)

(assert (=> b!641621 (=> (not res!415644) (not e!367418))))

(assert (=> b!641621 (= res!415644 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18749 lt!296979)))))

(declare-fun b!641622 () Bool)

(assert (=> b!641622 (= e!367418 (arrayContainsKey!0 lt!296979 (select (arr!18385 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90571 (not res!415643)) b!641621))

(assert (= (and b!641621 res!415644) b!641622))

(declare-fun m!615501 () Bool)

(assert (=> d!90571 m!615501))

(assert (=> b!641622 m!615201))

(declare-fun m!615503 () Bool)

(assert (=> b!641622 m!615503))

(assert (=> b!641340 d!90571))

(declare-fun d!90573 () Bool)

(declare-fun e!367427 () Bool)

(assert (=> d!90573 e!367427))

(declare-fun res!415647 () Bool)

(assert (=> d!90573 (=> (not res!415647) (not e!367427))))

(assert (=> d!90573 (= res!415647 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18749 a!2986))))))

(declare-fun lt!297110 () Unit!21686)

(declare-fun choose!41 (array!38342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12479) Unit!21686)

(assert (=> d!90573 (= lt!297110 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12476))))

(assert (=> d!90573 (bvslt (size!18749 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90573 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12476) lt!297110)))

(declare-fun b!641637 () Bool)

(assert (=> b!641637 (= e!367427 (arrayNoDuplicates!0 (array!38343 (store (arr!18385 a!2986) i!1108 k0!1786) (size!18749 a!2986)) #b00000000000000000000000000000000 Nil!12476))))

(assert (= (and d!90573 res!415647) b!641637))

(declare-fun m!615505 () Bool)

(assert (=> d!90573 m!615505))

(assert (=> b!641637 m!615231))

(declare-fun m!615507 () Bool)

(assert (=> b!641637 m!615507))

(assert (=> b!641340 d!90573))

(declare-fun b!641638 () Bool)

(declare-fun e!367428 () Bool)

(assert (=> b!641638 (= e!367428 (contains!3133 Nil!12476 (select (arr!18385 lt!296979) #b00000000000000000000000000000000)))))

(declare-fun b!641639 () Bool)

(declare-fun e!367430 () Bool)

(declare-fun e!367429 () Bool)

(assert (=> b!641639 (= e!367430 e!367429)))

(declare-fun res!415648 () Bool)

(assert (=> b!641639 (=> (not res!415648) (not e!367429))))

(assert (=> b!641639 (= res!415648 (not e!367428))))

(declare-fun res!415650 () Bool)

(assert (=> b!641639 (=> (not res!415650) (not e!367428))))

(assert (=> b!641639 (= res!415650 (validKeyInArray!0 (select (arr!18385 lt!296979) #b00000000000000000000000000000000)))))

(declare-fun b!641640 () Bool)

(declare-fun e!367431 () Bool)

(declare-fun call!33549 () Bool)

(assert (=> b!641640 (= e!367431 call!33549)))

(declare-fun d!90575 () Bool)

(declare-fun res!415649 () Bool)

(assert (=> d!90575 (=> res!415649 e!367430)))

(assert (=> d!90575 (= res!415649 (bvsge #b00000000000000000000000000000000 (size!18749 lt!296979)))))

(assert (=> d!90575 (= (arrayNoDuplicates!0 lt!296979 #b00000000000000000000000000000000 Nil!12476) e!367430)))

(declare-fun b!641641 () Bool)

(assert (=> b!641641 (= e!367429 e!367431)))

(declare-fun c!73362 () Bool)

(assert (=> b!641641 (= c!73362 (validKeyInArray!0 (select (arr!18385 lt!296979) #b00000000000000000000000000000000)))))

(declare-fun b!641642 () Bool)

(assert (=> b!641642 (= e!367431 call!33549)))

(declare-fun bm!33546 () Bool)

(assert (=> bm!33546 (= call!33549 (arrayNoDuplicates!0 lt!296979 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73362 (Cons!12475 (select (arr!18385 lt!296979) #b00000000000000000000000000000000) Nil!12476) Nil!12476)))))

(assert (= (and d!90575 (not res!415649)) b!641639))

(assert (= (and b!641639 res!415650) b!641638))

(assert (= (and b!641639 res!415648) b!641641))

(assert (= (and b!641641 c!73362) b!641640))

(assert (= (and b!641641 (not c!73362)) b!641642))

(assert (= (or b!641640 b!641642) bm!33546))

(declare-fun m!615509 () Bool)

(assert (=> b!641638 m!615509))

(assert (=> b!641638 m!615509))

(declare-fun m!615511 () Bool)

(assert (=> b!641638 m!615511))

(assert (=> b!641639 m!615509))

(assert (=> b!641639 m!615509))

(declare-fun m!615513 () Bool)

(assert (=> b!641639 m!615513))

(assert (=> b!641641 m!615509))

(assert (=> b!641641 m!615509))

(assert (=> b!641641 m!615513))

(assert (=> bm!33546 m!615509))

(declare-fun m!615515 () Bool)

(assert (=> bm!33546 m!615515))

(assert (=> b!641340 d!90575))

(declare-fun b!641643 () Bool)

(declare-fun e!367432 () Bool)

(assert (=> b!641643 (= e!367432 (contains!3133 Nil!12476 (select (arr!18385 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!641644 () Bool)

(declare-fun e!367434 () Bool)

(declare-fun e!367433 () Bool)

(assert (=> b!641644 (= e!367434 e!367433)))

(declare-fun res!415651 () Bool)

(assert (=> b!641644 (=> (not res!415651) (not e!367433))))

(assert (=> b!641644 (= res!415651 (not e!367432))))

(declare-fun res!415653 () Bool)

(assert (=> b!641644 (=> (not res!415653) (not e!367432))))

(assert (=> b!641644 (= res!415653 (validKeyInArray!0 (select (arr!18385 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!641645 () Bool)

(declare-fun e!367435 () Bool)

(declare-fun call!33550 () Bool)

(assert (=> b!641645 (= e!367435 call!33550)))

(declare-fun d!90577 () Bool)

(declare-fun res!415652 () Bool)

(assert (=> d!90577 (=> res!415652 e!367434)))

(assert (=> d!90577 (= res!415652 (bvsge #b00000000000000000000000000000000 (size!18749 a!2986)))))

(assert (=> d!90577 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12476) e!367434)))

(declare-fun b!641646 () Bool)

(assert (=> b!641646 (= e!367433 e!367435)))

(declare-fun c!73363 () Bool)

(assert (=> b!641646 (= c!73363 (validKeyInArray!0 (select (arr!18385 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!641647 () Bool)

(assert (=> b!641647 (= e!367435 call!33550)))

(declare-fun bm!33547 () Bool)

(assert (=> bm!33547 (= call!33550 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73363 (Cons!12475 (select (arr!18385 a!2986) #b00000000000000000000000000000000) Nil!12476) Nil!12476)))))

(assert (= (and d!90577 (not res!415652)) b!641644))

(assert (= (and b!641644 res!415653) b!641643))

(assert (= (and b!641644 res!415651) b!641646))

(assert (= (and b!641646 c!73363) b!641645))

(assert (= (and b!641646 (not c!73363)) b!641647))

(assert (= (or b!641645 b!641647) bm!33547))

(assert (=> b!641643 m!615345))

(assert (=> b!641643 m!615345))

(declare-fun m!615517 () Bool)

(assert (=> b!641643 m!615517))

(assert (=> b!641644 m!615345))

(assert (=> b!641644 m!615345))

(assert (=> b!641644 m!615357))

(assert (=> b!641646 m!615345))

(assert (=> b!641646 m!615345))

(assert (=> b!641646 m!615357))

(assert (=> bm!33547 m!615345))

(declare-fun m!615519 () Bool)

(assert (=> bm!33547 m!615519))

(assert (=> b!641338 d!90577))

(declare-fun d!90579 () Bool)

(assert (=> d!90579 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!641328 d!90579))

(check-sat (not b!641590) (not b!641641) (not b!641622) (not b!641440) (not bm!33533) (not b!641646) (not b!641618) (not b!641453) (not b!641615) (not d!90553) (not b!641498) (not b!641413) (not b!641414) (not d!90545) (not d!90537) (not bm!33545) (not d!90517) (not d!90505) (not b!641583) (not b!641451) (not b!641616) (not d!90567) (not b!641532) (not d!90535) (not b!641515) (not d!90555) (not b!641442) (not d!90573) (not d!90543) (not b!641420) (not b!641644) (not bm!33547) (not d!90541) (not b!641638) (not d!90559) (not b!641639) (not b!641433) (not b!641637) (not b!641582) (not b!641538) (not b!641643) (not bm!33546))
(check-sat)
