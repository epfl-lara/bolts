; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56204 () Bool)

(assert start!56204)

(declare-fun b!622335 () Bool)

(declare-fun res!401168 () Bool)

(declare-fun e!356962 () Bool)

(assert (=> b!622335 (=> (not res!401168) (not e!356962))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37637 0))(
  ( (array!37638 (arr!18061 (Array (_ BitVec 32) (_ BitVec 64))) (size!18425 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37637)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!622335 (= res!401168 (and (= (size!18425 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18425 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18425 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622336 () Bool)

(assert (=> b!622336 false))

(declare-datatypes ((Unit!20900 0))(
  ( (Unit!20901) )
))
(declare-fun lt!288451 () Unit!20900)

(declare-fun lt!288453 () array!37637)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((List!12155 0))(
  ( (Nil!12152) (Cons!12151 (h!13196 (_ BitVec 64)) (t!18391 List!12155)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37637 (_ BitVec 64) (_ BitVec 32) List!12155) Unit!20900)

(assert (=> b!622336 (= lt!288451 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288453 (select (arr!18061 a!2986) j!136) index!984 Nil!12152))))

(declare-fun arrayNoDuplicates!0 (array!37637 (_ BitVec 32) List!12155) Bool)

(assert (=> b!622336 (arrayNoDuplicates!0 lt!288453 index!984 Nil!12152)))

(declare-fun lt!288441 () Unit!20900)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37637 (_ BitVec 32) (_ BitVec 32)) Unit!20900)

(assert (=> b!622336 (= lt!288441 (lemmaNoDuplicateFromThenFromBigger!0 lt!288453 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622336 (arrayNoDuplicates!0 lt!288453 #b00000000000000000000000000000000 Nil!12152)))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!288440 () Unit!20900)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37637 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12155) Unit!20900)

(assert (=> b!622336 (= lt!288440 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12152))))

(declare-fun arrayContainsKey!0 (array!37637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622336 (arrayContainsKey!0 lt!288453 (select (arr!18061 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288452 () Unit!20900)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37637 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20900)

(assert (=> b!622336 (= lt!288452 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288453 (select (arr!18061 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356971 () Bool)

(assert (=> b!622336 e!356971))

(declare-fun res!401167 () Bool)

(assert (=> b!622336 (=> (not res!401167) (not e!356971))))

(assert (=> b!622336 (= res!401167 (arrayContainsKey!0 lt!288453 (select (arr!18061 a!2986) j!136) j!136))))

(declare-fun e!356967 () Unit!20900)

(declare-fun Unit!20902 () Unit!20900)

(assert (=> b!622336 (= e!356967 Unit!20902)))

(declare-fun b!622337 () Bool)

(declare-fun e!356960 () Bool)

(assert (=> b!622337 (= e!356960 (not true))))

(declare-fun lt!288442 () Unit!20900)

(declare-fun e!356968 () Unit!20900)

(assert (=> b!622337 (= lt!288442 e!356968)))

(declare-fun c!70955 () Bool)

(declare-datatypes ((SeekEntryResult!6508 0))(
  ( (MissingZero!6508 (index!28315 (_ BitVec 32))) (Found!6508 (index!28316 (_ BitVec 32))) (Intermediate!6508 (undefined!7320 Bool) (index!28317 (_ BitVec 32)) (x!57109 (_ BitVec 32))) (Undefined!6508) (MissingVacant!6508 (index!28318 (_ BitVec 32))) )
))
(declare-fun lt!288437 () SeekEntryResult!6508)

(assert (=> b!622337 (= c!70955 (= lt!288437 (Found!6508 index!984)))))

(declare-fun lt!288438 () Unit!20900)

(declare-fun e!356958 () Unit!20900)

(assert (=> b!622337 (= lt!288438 e!356958)))

(declare-fun c!70954 () Bool)

(assert (=> b!622337 (= c!70954 (= lt!288437 Undefined!6508))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!288447 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37637 (_ BitVec 32)) SeekEntryResult!6508)

(assert (=> b!622337 (= lt!288437 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288447 lt!288453 mask!3053))))

(declare-fun e!356966 () Bool)

(assert (=> b!622337 e!356966))

(declare-fun res!401179 () Bool)

(assert (=> b!622337 (=> (not res!401179) (not e!356966))))

(declare-fun lt!288445 () SeekEntryResult!6508)

(declare-fun lt!288444 () (_ BitVec 32))

(assert (=> b!622337 (= res!401179 (= lt!288445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288444 vacantSpotIndex!68 lt!288447 lt!288453 mask!3053)))))

(assert (=> b!622337 (= lt!288445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288444 vacantSpotIndex!68 (select (arr!18061 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622337 (= lt!288447 (select (store (arr!18061 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!288448 () Unit!20900)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37637 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20900)

(assert (=> b!622337 (= lt!288448 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288444 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622337 (= lt!288444 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622338 () Bool)

(declare-fun res!401172 () Bool)

(assert (=> b!622338 (= res!401172 (bvsge j!136 index!984))))

(declare-fun e!356964 () Bool)

(assert (=> b!622338 (=> res!401172 e!356964)))

(declare-fun e!356961 () Bool)

(assert (=> b!622338 (= e!356961 e!356964)))

(declare-fun b!622339 () Bool)

(declare-fun Unit!20903 () Unit!20900)

(assert (=> b!622339 (= e!356968 Unit!20903)))

(declare-fun b!622340 () Bool)

(declare-fun Unit!20904 () Unit!20900)

(assert (=> b!622340 (= e!356968 Unit!20904)))

(declare-fun res!401169 () Bool)

(assert (=> b!622340 (= res!401169 (= (select (store (arr!18061 a!2986) i!1108 k0!1786) index!984) (select (arr!18061 a!2986) j!136)))))

(assert (=> b!622340 (=> (not res!401169) (not e!356961))))

(assert (=> b!622340 e!356961))

(declare-fun c!70952 () Bool)

(assert (=> b!622340 (= c!70952 (bvslt j!136 index!984))))

(declare-fun lt!288439 () Unit!20900)

(declare-fun e!356965 () Unit!20900)

(assert (=> b!622340 (= lt!288439 e!356965)))

(declare-fun c!70953 () Bool)

(assert (=> b!622340 (= c!70953 (bvslt index!984 j!136))))

(declare-fun lt!288450 () Unit!20900)

(assert (=> b!622340 (= lt!288450 e!356967)))

(assert (=> b!622340 false))

(declare-fun res!401165 () Bool)

(assert (=> start!56204 (=> (not res!401165) (not e!356962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56204 (= res!401165 (validMask!0 mask!3053))))

(assert (=> start!56204 e!356962))

(assert (=> start!56204 true))

(declare-fun array_inv!13835 (array!37637) Bool)

(assert (=> start!56204 (array_inv!13835 a!2986)))

(declare-fun b!622341 () Bool)

(assert (=> b!622341 (= e!356971 (arrayContainsKey!0 lt!288453 (select (arr!18061 a!2986) j!136) index!984))))

(declare-fun b!622342 () Bool)

(declare-fun res!401173 () Bool)

(declare-fun e!356963 () Bool)

(assert (=> b!622342 (=> (not res!401173) (not e!356963))))

(assert (=> b!622342 (= res!401173 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12152))))

(declare-fun b!622343 () Bool)

(declare-fun e!356970 () Bool)

(assert (=> b!622343 (= e!356963 e!356970)))

(declare-fun res!401180 () Bool)

(assert (=> b!622343 (=> (not res!401180) (not e!356970))))

(assert (=> b!622343 (= res!401180 (= (select (store (arr!18061 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622343 (= lt!288453 (array!37638 (store (arr!18061 a!2986) i!1108 k0!1786) (size!18425 a!2986)))))

(declare-fun b!622344 () Bool)

(declare-fun e!356959 () Bool)

(assert (=> b!622344 (= e!356959 (arrayContainsKey!0 lt!288453 (select (arr!18061 a!2986) j!136) index!984))))

(declare-fun res!401177 () Bool)

(declare-fun b!622345 () Bool)

(assert (=> b!622345 (= res!401177 (arrayContainsKey!0 lt!288453 (select (arr!18061 a!2986) j!136) j!136))))

(assert (=> b!622345 (=> (not res!401177) (not e!356959))))

(assert (=> b!622345 (= e!356964 e!356959)))

(declare-fun b!622346 () Bool)

(assert (=> b!622346 (= e!356962 e!356963)))

(declare-fun res!401175 () Bool)

(assert (=> b!622346 (=> (not res!401175) (not e!356963))))

(declare-fun lt!288454 () SeekEntryResult!6508)

(assert (=> b!622346 (= res!401175 (or (= lt!288454 (MissingZero!6508 i!1108)) (= lt!288454 (MissingVacant!6508 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37637 (_ BitVec 32)) SeekEntryResult!6508)

(assert (=> b!622346 (= lt!288454 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!622347 () Bool)

(declare-fun Unit!20905 () Unit!20900)

(assert (=> b!622347 (= e!356958 Unit!20905)))

(assert (=> b!622347 false))

(declare-fun b!622348 () Bool)

(declare-fun res!401178 () Bool)

(assert (=> b!622348 (=> (not res!401178) (not e!356962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622348 (= res!401178 (validKeyInArray!0 (select (arr!18061 a!2986) j!136)))))

(declare-fun b!622349 () Bool)

(declare-fun res!401166 () Bool)

(assert (=> b!622349 (=> (not res!401166) (not e!356962))))

(assert (=> b!622349 (= res!401166 (validKeyInArray!0 k0!1786))))

(declare-fun b!622350 () Bool)

(declare-fun Unit!20906 () Unit!20900)

(assert (=> b!622350 (= e!356965 Unit!20906)))

(declare-fun b!622351 () Bool)

(declare-fun lt!288443 () SeekEntryResult!6508)

(assert (=> b!622351 (= e!356966 (= lt!288443 lt!288445))))

(declare-fun b!622352 () Bool)

(declare-fun res!401170 () Bool)

(assert (=> b!622352 (=> (not res!401170) (not e!356963))))

(assert (=> b!622352 (= res!401170 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18061 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622353 () Bool)

(declare-fun Unit!20907 () Unit!20900)

(assert (=> b!622353 (= e!356967 Unit!20907)))

(declare-fun b!622354 () Bool)

(declare-fun res!401171 () Bool)

(assert (=> b!622354 (=> (not res!401171) (not e!356962))))

(assert (=> b!622354 (= res!401171 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622355 () Bool)

(assert (=> b!622355 (= e!356970 e!356960)))

(declare-fun res!401176 () Bool)

(assert (=> b!622355 (=> (not res!401176) (not e!356960))))

(assert (=> b!622355 (= res!401176 (and (= lt!288443 (Found!6508 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18061 a!2986) index!984) (select (arr!18061 a!2986) j!136))) (not (= (select (arr!18061 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622355 (= lt!288443 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18061 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622356 () Bool)

(assert (=> b!622356 false))

(declare-fun lt!288456 () Unit!20900)

(assert (=> b!622356 (= lt!288456 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288453 (select (arr!18061 a!2986) j!136) j!136 Nil!12152))))

(assert (=> b!622356 (arrayNoDuplicates!0 lt!288453 j!136 Nil!12152)))

(declare-fun lt!288446 () Unit!20900)

(assert (=> b!622356 (= lt!288446 (lemmaNoDuplicateFromThenFromBigger!0 lt!288453 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622356 (arrayNoDuplicates!0 lt!288453 #b00000000000000000000000000000000 Nil!12152)))

(declare-fun lt!288455 () Unit!20900)

(assert (=> b!622356 (= lt!288455 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12152))))

(assert (=> b!622356 (arrayContainsKey!0 lt!288453 (select (arr!18061 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288449 () Unit!20900)

(assert (=> b!622356 (= lt!288449 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288453 (select (arr!18061 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20908 () Unit!20900)

(assert (=> b!622356 (= e!356965 Unit!20908)))

(declare-fun b!622357 () Bool)

(declare-fun res!401174 () Bool)

(assert (=> b!622357 (=> (not res!401174) (not e!356963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37637 (_ BitVec 32)) Bool)

(assert (=> b!622357 (= res!401174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622358 () Bool)

(declare-fun Unit!20909 () Unit!20900)

(assert (=> b!622358 (= e!356958 Unit!20909)))

(assert (= (and start!56204 res!401165) b!622335))

(assert (= (and b!622335 res!401168) b!622348))

(assert (= (and b!622348 res!401178) b!622349))

(assert (= (and b!622349 res!401166) b!622354))

(assert (= (and b!622354 res!401171) b!622346))

(assert (= (and b!622346 res!401175) b!622357))

(assert (= (and b!622357 res!401174) b!622342))

(assert (= (and b!622342 res!401173) b!622352))

(assert (= (and b!622352 res!401170) b!622343))

(assert (= (and b!622343 res!401180) b!622355))

(assert (= (and b!622355 res!401176) b!622337))

(assert (= (and b!622337 res!401179) b!622351))

(assert (= (and b!622337 c!70954) b!622347))

(assert (= (and b!622337 (not c!70954)) b!622358))

(assert (= (and b!622337 c!70955) b!622340))

(assert (= (and b!622337 (not c!70955)) b!622339))

(assert (= (and b!622340 res!401169) b!622338))

(assert (= (and b!622338 (not res!401172)) b!622345))

(assert (= (and b!622345 res!401177) b!622344))

(assert (= (and b!622340 c!70952) b!622356))

(assert (= (and b!622340 (not c!70952)) b!622350))

(assert (= (and b!622340 c!70953) b!622336))

(assert (= (and b!622340 (not c!70953)) b!622353))

(assert (= (and b!622336 res!401167) b!622341))

(declare-fun m!598249 () Bool)

(assert (=> b!622355 m!598249))

(declare-fun m!598251 () Bool)

(assert (=> b!622355 m!598251))

(assert (=> b!622355 m!598251))

(declare-fun m!598253 () Bool)

(assert (=> b!622355 m!598253))

(assert (=> b!622345 m!598251))

(assert (=> b!622345 m!598251))

(declare-fun m!598255 () Bool)

(assert (=> b!622345 m!598255))

(declare-fun m!598257 () Bool)

(assert (=> b!622336 m!598257))

(assert (=> b!622336 m!598251))

(assert (=> b!622336 m!598255))

(assert (=> b!622336 m!598251))

(declare-fun m!598259 () Bool)

(assert (=> b!622336 m!598259))

(declare-fun m!598261 () Bool)

(assert (=> b!622336 m!598261))

(declare-fun m!598263 () Bool)

(assert (=> b!622336 m!598263))

(assert (=> b!622336 m!598251))

(declare-fun m!598265 () Bool)

(assert (=> b!622336 m!598265))

(declare-fun m!598267 () Bool)

(assert (=> b!622336 m!598267))

(assert (=> b!622336 m!598251))

(assert (=> b!622336 m!598251))

(declare-fun m!598269 () Bool)

(assert (=> b!622336 m!598269))

(declare-fun m!598271 () Bool)

(assert (=> b!622343 m!598271))

(declare-fun m!598273 () Bool)

(assert (=> b!622343 m!598273))

(assert (=> b!622348 m!598251))

(assert (=> b!622348 m!598251))

(declare-fun m!598275 () Bool)

(assert (=> b!622348 m!598275))

(assert (=> b!622340 m!598271))

(declare-fun m!598277 () Bool)

(assert (=> b!622340 m!598277))

(assert (=> b!622340 m!598251))

(declare-fun m!598279 () Bool)

(assert (=> b!622352 m!598279))

(declare-fun m!598281 () Bool)

(assert (=> b!622356 m!598281))

(assert (=> b!622356 m!598251))

(declare-fun m!598283 () Bool)

(assert (=> b!622356 m!598283))

(assert (=> b!622356 m!598251))

(declare-fun m!598285 () Bool)

(assert (=> b!622356 m!598285))

(declare-fun m!598287 () Bool)

(assert (=> b!622356 m!598287))

(assert (=> b!622356 m!598261))

(assert (=> b!622356 m!598267))

(assert (=> b!622356 m!598251))

(declare-fun m!598289 () Bool)

(assert (=> b!622356 m!598289))

(assert (=> b!622356 m!598251))

(declare-fun m!598291 () Bool)

(assert (=> b!622354 m!598291))

(declare-fun m!598293 () Bool)

(assert (=> b!622349 m!598293))

(declare-fun m!598295 () Bool)

(assert (=> b!622337 m!598295))

(declare-fun m!598297 () Bool)

(assert (=> b!622337 m!598297))

(assert (=> b!622337 m!598251))

(assert (=> b!622337 m!598271))

(assert (=> b!622337 m!598251))

(declare-fun m!598299 () Bool)

(assert (=> b!622337 m!598299))

(declare-fun m!598301 () Bool)

(assert (=> b!622337 m!598301))

(declare-fun m!598303 () Bool)

(assert (=> b!622337 m!598303))

(declare-fun m!598305 () Bool)

(assert (=> b!622337 m!598305))

(declare-fun m!598307 () Bool)

(assert (=> b!622346 m!598307))

(declare-fun m!598309 () Bool)

(assert (=> start!56204 m!598309))

(declare-fun m!598311 () Bool)

(assert (=> start!56204 m!598311))

(declare-fun m!598313 () Bool)

(assert (=> b!622357 m!598313))

(assert (=> b!622344 m!598251))

(assert (=> b!622344 m!598251))

(declare-fun m!598315 () Bool)

(assert (=> b!622344 m!598315))

(assert (=> b!622341 m!598251))

(assert (=> b!622341 m!598251))

(assert (=> b!622341 m!598315))

(declare-fun m!598317 () Bool)

(assert (=> b!622342 m!598317))

(check-sat (not b!622354) (not b!622357) (not b!622356) (not b!622346) (not b!622337) (not b!622344) (not b!622341) (not b!622355) (not b!622345) (not b!622342) (not b!622349) (not b!622336) (not b!622348) (not start!56204))
(check-sat)
