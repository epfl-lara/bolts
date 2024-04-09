; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56094 () Bool)

(assert start!56094)

(declare-fun b!618314 () Bool)

(declare-datatypes ((Unit!20350 0))(
  ( (Unit!20351) )
))
(declare-fun e!354600 () Unit!20350)

(declare-fun Unit!20352 () Unit!20350)

(assert (=> b!618314 (= e!354600 Unit!20352)))

(declare-fun b!618315 () Bool)

(declare-fun e!354592 () Bool)

(declare-fun e!354597 () Bool)

(assert (=> b!618315 (= e!354592 (not e!354597))))

(declare-fun res!398474 () Bool)

(assert (=> b!618315 (=> res!398474 e!354597)))

(declare-datatypes ((SeekEntryResult!6453 0))(
  ( (MissingZero!6453 (index!28095 (_ BitVec 32))) (Found!6453 (index!28096 (_ BitVec 32))) (Intermediate!6453 (undefined!7265 Bool) (index!28097 (_ BitVec 32)) (x!56910 (_ BitVec 32))) (Undefined!6453) (MissingVacant!6453 (index!28098 (_ BitVec 32))) )
))
(declare-fun lt!285149 () SeekEntryResult!6453)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618315 (= res!398474 (not (= lt!285149 (MissingVacant!6453 vacantSpotIndex!68))))))

(declare-fun lt!285142 () Unit!20350)

(declare-fun e!354590 () Unit!20350)

(assert (=> b!618315 (= lt!285142 e!354590)))

(declare-fun c!70293 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618315 (= c!70293 (= lt!285149 (Found!6453 index!984)))))

(declare-fun lt!285151 () Unit!20350)

(declare-fun e!354591 () Unit!20350)

(assert (=> b!618315 (= lt!285151 e!354591)))

(declare-fun c!70294 () Bool)

(assert (=> b!618315 (= c!70294 (= lt!285149 Undefined!6453))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37527 0))(
  ( (array!37528 (arr!18006 (Array (_ BitVec 32) (_ BitVec 64))) (size!18370 (_ BitVec 32))) )
))
(declare-fun lt!285147 () array!37527)

(declare-fun lt!285155 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37527 (_ BitVec 32)) SeekEntryResult!6453)

(assert (=> b!618315 (= lt!285149 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285155 lt!285147 mask!3053))))

(declare-fun e!354594 () Bool)

(assert (=> b!618315 e!354594))

(declare-fun res!398469 () Bool)

(assert (=> b!618315 (=> (not res!398469) (not e!354594))))

(declare-fun lt!285150 () (_ BitVec 32))

(declare-fun lt!285137 () SeekEntryResult!6453)

(assert (=> b!618315 (= res!398469 (= lt!285137 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285150 vacantSpotIndex!68 lt!285155 lt!285147 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37527)

(assert (=> b!618315 (= lt!285137 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285150 vacantSpotIndex!68 (select (arr!18006 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!618315 (= lt!285155 (select (store (arr!18006 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285153 () Unit!20350)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37527 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20350)

(assert (=> b!618315 (= lt!285153 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285150 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618315 (= lt!285150 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!398472 () Bool)

(declare-fun e!354593 () Bool)

(assert (=> start!56094 (=> (not res!398472) (not e!354593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56094 (= res!398472 (validMask!0 mask!3053))))

(assert (=> start!56094 e!354593))

(assert (=> start!56094 true))

(declare-fun array_inv!13780 (array!37527) Bool)

(assert (=> start!56094 (array_inv!13780 a!2986)))

(declare-fun b!618316 () Bool)

(assert (=> b!618316 false))

(declare-fun lt!285152 () Unit!20350)

(declare-datatypes ((List!12100 0))(
  ( (Nil!12097) (Cons!12096 (h!13141 (_ BitVec 64)) (t!18336 List!12100)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37527 (_ BitVec 64) (_ BitVec 32) List!12100) Unit!20350)

(assert (=> b!618316 (= lt!285152 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285147 (select (arr!18006 a!2986) j!136) j!136 Nil!12097))))

(declare-fun arrayNoDuplicates!0 (array!37527 (_ BitVec 32) List!12100) Bool)

(assert (=> b!618316 (arrayNoDuplicates!0 lt!285147 j!136 Nil!12097)))

(declare-fun lt!285156 () Unit!20350)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37527 (_ BitVec 32) (_ BitVec 32)) Unit!20350)

(assert (=> b!618316 (= lt!285156 (lemmaNoDuplicateFromThenFromBigger!0 lt!285147 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618316 (arrayNoDuplicates!0 lt!285147 #b00000000000000000000000000000000 Nil!12097)))

(declare-fun lt!285144 () Unit!20350)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37527 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12100) Unit!20350)

(assert (=> b!618316 (= lt!285144 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12097))))

(declare-fun arrayContainsKey!0 (array!37527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618316 (arrayContainsKey!0 lt!285147 (select (arr!18006 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285148 () Unit!20350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37527 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20350)

(assert (=> b!618316 (= lt!285148 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285147 (select (arr!18006 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20353 () Unit!20350)

(assert (=> b!618316 (= e!354600 Unit!20353)))

(declare-fun b!618317 () Bool)

(declare-fun Unit!20354 () Unit!20350)

(assert (=> b!618317 (= e!354590 Unit!20354)))

(declare-fun b!618318 () Bool)

(assert (=> b!618318 false))

(declare-fun lt!285140 () Unit!20350)

(assert (=> b!618318 (= lt!285140 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285147 (select (arr!18006 a!2986) j!136) index!984 Nil!12097))))

(assert (=> b!618318 (arrayNoDuplicates!0 lt!285147 index!984 Nil!12097)))

(declare-fun lt!285139 () Unit!20350)

(assert (=> b!618318 (= lt!285139 (lemmaNoDuplicateFromThenFromBigger!0 lt!285147 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618318 (arrayNoDuplicates!0 lt!285147 #b00000000000000000000000000000000 Nil!12097)))

(declare-fun lt!285141 () Unit!20350)

(assert (=> b!618318 (= lt!285141 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12097))))

(assert (=> b!618318 (arrayContainsKey!0 lt!285147 (select (arr!18006 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285138 () Unit!20350)

(assert (=> b!618318 (= lt!285138 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285147 (select (arr!18006 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354599 () Bool)

(assert (=> b!618318 e!354599))

(declare-fun res!398466 () Bool)

(assert (=> b!618318 (=> (not res!398466) (not e!354599))))

(assert (=> b!618318 (= res!398466 (arrayContainsKey!0 lt!285147 (select (arr!18006 a!2986) j!136) j!136))))

(declare-fun e!354601 () Unit!20350)

(declare-fun Unit!20355 () Unit!20350)

(assert (=> b!618318 (= e!354601 Unit!20355)))

(declare-fun b!618319 () Bool)

(declare-fun Unit!20356 () Unit!20350)

(assert (=> b!618319 (= e!354601 Unit!20356)))

(declare-fun b!618320 () Bool)

(declare-fun Unit!20357 () Unit!20350)

(assert (=> b!618320 (= e!354591 Unit!20357)))

(assert (=> b!618320 false))

(declare-fun b!618321 () Bool)

(declare-fun e!354587 () Bool)

(declare-fun e!354596 () Bool)

(assert (=> b!618321 (= e!354587 e!354596)))

(declare-fun res!398475 () Bool)

(assert (=> b!618321 (=> (not res!398475) (not e!354596))))

(assert (=> b!618321 (= res!398475 (= (select (store (arr!18006 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618321 (= lt!285147 (array!37528 (store (arr!18006 a!2986) i!1108 k!1786) (size!18370 a!2986)))))

(declare-fun b!618322 () Bool)

(declare-fun Unit!20358 () Unit!20350)

(assert (=> b!618322 (= e!354591 Unit!20358)))

(declare-fun b!618323 () Bool)

(declare-fun res!398480 () Bool)

(assert (=> b!618323 (= res!398480 (arrayContainsKey!0 lt!285147 (select (arr!18006 a!2986) j!136) j!136))))

(declare-fun e!354598 () Bool)

(assert (=> b!618323 (=> (not res!398480) (not e!354598))))

(declare-fun e!354589 () Bool)

(assert (=> b!618323 (= e!354589 e!354598)))

(declare-fun b!618324 () Bool)

(assert (=> b!618324 (= e!354597 true)))

(assert (=> b!618324 (= (select (store (arr!18006 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618325 () Bool)

(declare-fun res!398471 () Bool)

(assert (=> b!618325 (=> (not res!398471) (not e!354587))))

(assert (=> b!618325 (= res!398471 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12097))))

(declare-fun b!618326 () Bool)

(declare-fun res!398473 () Bool)

(assert (=> b!618326 (=> (not res!398473) (not e!354587))))

(assert (=> b!618326 (= res!398473 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18006 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618327 () Bool)

(declare-fun res!398477 () Bool)

(assert (=> b!618327 (=> (not res!398477) (not e!354593))))

(assert (=> b!618327 (= res!398477 (and (= (size!18370 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18370 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18370 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618328 () Bool)

(declare-fun res!398479 () Bool)

(assert (=> b!618328 (=> (not res!398479) (not e!354587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37527 (_ BitVec 32)) Bool)

(assert (=> b!618328 (= res!398479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618329 () Bool)

(assert (=> b!618329 (= e!354593 e!354587)))

(declare-fun res!398476 () Bool)

(assert (=> b!618329 (=> (not res!398476) (not e!354587))))

(declare-fun lt!285143 () SeekEntryResult!6453)

(assert (=> b!618329 (= res!398476 (or (= lt!285143 (MissingZero!6453 i!1108)) (= lt!285143 (MissingVacant!6453 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37527 (_ BitVec 32)) SeekEntryResult!6453)

(assert (=> b!618329 (= lt!285143 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618330 () Bool)

(assert (=> b!618330 (= e!354596 e!354592)))

(declare-fun res!398468 () Bool)

(assert (=> b!618330 (=> (not res!398468) (not e!354592))))

(declare-fun lt!285154 () SeekEntryResult!6453)

(assert (=> b!618330 (= res!398468 (and (= lt!285154 (Found!6453 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18006 a!2986) index!984) (select (arr!18006 a!2986) j!136))) (not (= (select (arr!18006 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!618330 (= lt!285154 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18006 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618331 () Bool)

(declare-fun res!398464 () Bool)

(assert (=> b!618331 (=> (not res!398464) (not e!354593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618331 (= res!398464 (validKeyInArray!0 k!1786))))

(declare-fun b!618332 () Bool)

(declare-fun res!398470 () Bool)

(assert (=> b!618332 (=> (not res!398470) (not e!354593))))

(assert (=> b!618332 (= res!398470 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618333 () Bool)

(declare-fun Unit!20359 () Unit!20350)

(assert (=> b!618333 (= e!354590 Unit!20359)))

(declare-fun res!398478 () Bool)

(assert (=> b!618333 (= res!398478 (= (select (store (arr!18006 a!2986) i!1108 k!1786) index!984) (select (arr!18006 a!2986) j!136)))))

(declare-fun e!354595 () Bool)

(assert (=> b!618333 (=> (not res!398478) (not e!354595))))

(assert (=> b!618333 e!354595))

(declare-fun c!70295 () Bool)

(assert (=> b!618333 (= c!70295 (bvslt j!136 index!984))))

(declare-fun lt!285145 () Unit!20350)

(assert (=> b!618333 (= lt!285145 e!354600)))

(declare-fun c!70292 () Bool)

(assert (=> b!618333 (= c!70292 (bvslt index!984 j!136))))

(declare-fun lt!285146 () Unit!20350)

(assert (=> b!618333 (= lt!285146 e!354601)))

(assert (=> b!618333 false))

(declare-fun b!618334 () Bool)

(assert (=> b!618334 (= e!354598 (arrayContainsKey!0 lt!285147 (select (arr!18006 a!2986) j!136) index!984))))

(declare-fun b!618335 () Bool)

(declare-fun res!398465 () Bool)

(assert (=> b!618335 (=> (not res!398465) (not e!354593))))

(assert (=> b!618335 (= res!398465 (validKeyInArray!0 (select (arr!18006 a!2986) j!136)))))

(declare-fun b!618336 () Bool)

(declare-fun res!398467 () Bool)

(assert (=> b!618336 (= res!398467 (bvsge j!136 index!984))))

(assert (=> b!618336 (=> res!398467 e!354589)))

(assert (=> b!618336 (= e!354595 e!354589)))

(declare-fun b!618337 () Bool)

(assert (=> b!618337 (= e!354594 (= lt!285154 lt!285137))))

(declare-fun b!618338 () Bool)

(assert (=> b!618338 (= e!354599 (arrayContainsKey!0 lt!285147 (select (arr!18006 a!2986) j!136) index!984))))

(assert (= (and start!56094 res!398472) b!618327))

(assert (= (and b!618327 res!398477) b!618335))

(assert (= (and b!618335 res!398465) b!618331))

(assert (= (and b!618331 res!398464) b!618332))

(assert (= (and b!618332 res!398470) b!618329))

(assert (= (and b!618329 res!398476) b!618328))

(assert (= (and b!618328 res!398479) b!618325))

(assert (= (and b!618325 res!398471) b!618326))

(assert (= (and b!618326 res!398473) b!618321))

(assert (= (and b!618321 res!398475) b!618330))

(assert (= (and b!618330 res!398468) b!618315))

(assert (= (and b!618315 res!398469) b!618337))

(assert (= (and b!618315 c!70294) b!618320))

(assert (= (and b!618315 (not c!70294)) b!618322))

(assert (= (and b!618315 c!70293) b!618333))

(assert (= (and b!618315 (not c!70293)) b!618317))

(assert (= (and b!618333 res!398478) b!618336))

(assert (= (and b!618336 (not res!398467)) b!618323))

(assert (= (and b!618323 res!398480) b!618334))

(assert (= (and b!618333 c!70295) b!618316))

(assert (= (and b!618333 (not c!70295)) b!618314))

(assert (= (and b!618333 c!70292) b!618318))

(assert (= (and b!618333 (not c!70292)) b!618319))

(assert (= (and b!618318 res!398466) b!618338))

(assert (= (and b!618315 (not res!398474)) b!618324))

(declare-fun m!594399 () Bool)

(assert (=> b!618325 m!594399))

(declare-fun m!594401 () Bool)

(assert (=> b!618323 m!594401))

(assert (=> b!618323 m!594401))

(declare-fun m!594403 () Bool)

(assert (=> b!618323 m!594403))

(assert (=> b!618318 m!594401))

(assert (=> b!618318 m!594403))

(declare-fun m!594405 () Bool)

(assert (=> b!618318 m!594405))

(assert (=> b!618318 m!594401))

(declare-fun m!594407 () Bool)

(assert (=> b!618318 m!594407))

(declare-fun m!594409 () Bool)

(assert (=> b!618318 m!594409))

(assert (=> b!618318 m!594401))

(declare-fun m!594411 () Bool)

(assert (=> b!618318 m!594411))

(assert (=> b!618318 m!594401))

(declare-fun m!594413 () Bool)

(assert (=> b!618318 m!594413))

(assert (=> b!618318 m!594401))

(declare-fun m!594415 () Bool)

(assert (=> b!618318 m!594415))

(declare-fun m!594417 () Bool)

(assert (=> b!618318 m!594417))

(declare-fun m!594419 () Bool)

(assert (=> start!56094 m!594419))

(declare-fun m!594421 () Bool)

(assert (=> start!56094 m!594421))

(declare-fun m!594423 () Bool)

(assert (=> b!618328 m!594423))

(declare-fun m!594425 () Bool)

(assert (=> b!618315 m!594425))

(declare-fun m!594427 () Bool)

(assert (=> b!618315 m!594427))

(assert (=> b!618315 m!594401))

(declare-fun m!594429 () Bool)

(assert (=> b!618315 m!594429))

(declare-fun m!594431 () Bool)

(assert (=> b!618315 m!594431))

(declare-fun m!594433 () Bool)

(assert (=> b!618315 m!594433))

(assert (=> b!618315 m!594401))

(declare-fun m!594435 () Bool)

(assert (=> b!618315 m!594435))

(declare-fun m!594437 () Bool)

(assert (=> b!618315 m!594437))

(assert (=> b!618324 m!594429))

(declare-fun m!594439 () Bool)

(assert (=> b!618324 m!594439))

(declare-fun m!594441 () Bool)

(assert (=> b!618316 m!594441))

(assert (=> b!618316 m!594401))

(declare-fun m!594443 () Bool)

(assert (=> b!618316 m!594443))

(assert (=> b!618316 m!594401))

(declare-fun m!594445 () Bool)

(assert (=> b!618316 m!594445))

(assert (=> b!618316 m!594401))

(declare-fun m!594447 () Bool)

(assert (=> b!618316 m!594447))

(assert (=> b!618316 m!594417))

(assert (=> b!618316 m!594401))

(declare-fun m!594449 () Bool)

(assert (=> b!618316 m!594449))

(assert (=> b!618316 m!594405))

(assert (=> b!618333 m!594429))

(assert (=> b!618333 m!594439))

(assert (=> b!618333 m!594401))

(declare-fun m!594451 () Bool)

(assert (=> b!618332 m!594451))

(declare-fun m!594453 () Bool)

(assert (=> b!618329 m!594453))

(declare-fun m!594455 () Bool)

(assert (=> b!618326 m!594455))

(assert (=> b!618321 m!594429))

(declare-fun m!594457 () Bool)

(assert (=> b!618321 m!594457))

(assert (=> b!618334 m!594401))

(assert (=> b!618334 m!594401))

(declare-fun m!594459 () Bool)

(assert (=> b!618334 m!594459))

(assert (=> b!618338 m!594401))

(assert (=> b!618338 m!594401))

(assert (=> b!618338 m!594459))

(assert (=> b!618335 m!594401))

(assert (=> b!618335 m!594401))

(declare-fun m!594461 () Bool)

(assert (=> b!618335 m!594461))

(declare-fun m!594463 () Bool)

(assert (=> b!618330 m!594463))

(assert (=> b!618330 m!594401))

(assert (=> b!618330 m!594401))

(declare-fun m!594465 () Bool)

(assert (=> b!618330 m!594465))

(declare-fun m!594467 () Bool)

(assert (=> b!618331 m!594467))

(push 1)

