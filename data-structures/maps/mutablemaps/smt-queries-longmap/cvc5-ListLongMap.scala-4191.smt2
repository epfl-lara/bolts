; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57132 () Bool)

(assert start!57132)

(declare-fun b!632345 () Bool)

(declare-fun e!361516 () Bool)

(declare-datatypes ((SeekEntryResult!6732 0))(
  ( (MissingZero!6732 (index!29220 (_ BitVec 32))) (Found!6732 (index!29221 (_ BitVec 32))) (Intermediate!6732 (undefined!7544 Bool) (index!29222 (_ BitVec 32)) (x!57984 (_ BitVec 32))) (Undefined!6732) (MissingVacant!6732 (index!29223 (_ BitVec 32))) )
))
(declare-fun lt!292318 () SeekEntryResult!6732)

(declare-fun lt!292315 () SeekEntryResult!6732)

(assert (=> b!632345 (= e!361516 (= lt!292318 lt!292315))))

(declare-fun res!409113 () Bool)

(declare-fun e!361519 () Bool)

(assert (=> start!57132 (=> (not res!409113) (not e!361519))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57132 (= res!409113 (validMask!0 mask!3053))))

(assert (=> start!57132 e!361519))

(assert (=> start!57132 true))

(declare-datatypes ((array!38112 0))(
  ( (array!38113 (arr!18285 (Array (_ BitVec 32) (_ BitVec 64))) (size!18649 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38112)

(declare-fun array_inv!14059 (array!38112) Bool)

(assert (=> start!57132 (array_inv!14059 a!2986)))

(declare-fun b!632346 () Bool)

(declare-fun res!409115 () Bool)

(assert (=> b!632346 (=> (not res!409115) (not e!361519))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632346 (= res!409115 (validKeyInArray!0 (select (arr!18285 a!2986) j!136)))))

(declare-fun lt!292313 () array!38112)

(declare-fun b!632347 () Bool)

(declare-fun e!361520 () Bool)

(declare-fun arrayContainsKey!0 (array!38112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632347 (= e!361520 (arrayContainsKey!0 lt!292313 (select (arr!18285 a!2986) j!136) j!136))))

(declare-fun b!632348 () Bool)

(declare-fun res!409110 () Bool)

(declare-fun e!361518 () Bool)

(assert (=> b!632348 (=> (not res!409110) (not e!361518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38112 (_ BitVec 32)) Bool)

(assert (=> b!632348 (= res!409110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632349 () Bool)

(declare-fun res!409106 () Bool)

(assert (=> b!632349 (=> (not res!409106) (not e!361518))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!632349 (= res!409106 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18285 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632350 () Bool)

(declare-fun e!361522 () Bool)

(assert (=> b!632350 (= e!361518 e!361522)))

(declare-fun res!409112 () Bool)

(assert (=> b!632350 (=> (not res!409112) (not e!361522))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!632350 (= res!409112 (= (select (store (arr!18285 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632350 (= lt!292313 (array!38113 (store (arr!18285 a!2986) i!1108 k!1786) (size!18649 a!2986)))))

(declare-fun b!632351 () Bool)

(declare-fun res!409111 () Bool)

(assert (=> b!632351 (=> (not res!409111) (not e!361518))))

(declare-datatypes ((List!12379 0))(
  ( (Nil!12376) (Cons!12375 (h!13420 (_ BitVec 64)) (t!18615 List!12379)) )
))
(declare-fun arrayNoDuplicates!0 (array!38112 (_ BitVec 32) List!12379) Bool)

(assert (=> b!632351 (= res!409111 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12376))))

(declare-fun b!632352 () Bool)

(declare-fun e!361521 () Bool)

(declare-fun e!361517 () Bool)

(assert (=> b!632352 (= e!361521 (not e!361517))))

(declare-fun res!409107 () Bool)

(assert (=> b!632352 (=> res!409107 e!361517)))

(declare-fun lt!292320 () SeekEntryResult!6732)

(assert (=> b!632352 (= res!409107 (not (= lt!292320 (Found!6732 index!984))))))

(declare-datatypes ((Unit!21286 0))(
  ( (Unit!21287) )
))
(declare-fun lt!292319 () Unit!21286)

(declare-fun e!361515 () Unit!21286)

(assert (=> b!632352 (= lt!292319 e!361515)))

(declare-fun c!71987 () Bool)

(assert (=> b!632352 (= c!71987 (= lt!292320 Undefined!6732))))

(declare-fun lt!292314 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38112 (_ BitVec 32)) SeekEntryResult!6732)

(assert (=> b!632352 (= lt!292320 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292314 lt!292313 mask!3053))))

(assert (=> b!632352 e!361516))

(declare-fun res!409117 () Bool)

(assert (=> b!632352 (=> (not res!409117) (not e!361516))))

(declare-fun lt!292317 () (_ BitVec 32))

(assert (=> b!632352 (= res!409117 (= lt!292315 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 lt!292314 lt!292313 mask!3053)))))

(assert (=> b!632352 (= lt!292315 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 (select (arr!18285 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632352 (= lt!292314 (select (store (arr!18285 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292316 () Unit!21286)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38112 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21286)

(assert (=> b!632352 (= lt!292316 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632352 (= lt!292317 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632353 () Bool)

(assert (=> b!632353 (= e!361519 e!361518)))

(declare-fun res!409109 () Bool)

(assert (=> b!632353 (=> (not res!409109) (not e!361518))))

(declare-fun lt!292312 () SeekEntryResult!6732)

(assert (=> b!632353 (= res!409109 (or (= lt!292312 (MissingZero!6732 i!1108)) (= lt!292312 (MissingVacant!6732 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38112 (_ BitVec 32)) SeekEntryResult!6732)

(assert (=> b!632353 (= lt!292312 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632354 () Bool)

(assert (=> b!632354 (= e!361517 e!361520)))

(declare-fun res!409116 () Bool)

(assert (=> b!632354 (=> res!409116 e!361520)))

(assert (=> b!632354 (= res!409116 (or (not (= (select (arr!18285 a!2986) j!136) lt!292314)) (not (= (select (arr!18285 a!2986) j!136) (select (store (arr!18285 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(assert (=> b!632354 (= (select (store (arr!18285 a!2986) i!1108 k!1786) index!984) (select (arr!18285 a!2986) j!136))))

(declare-fun b!632355 () Bool)

(declare-fun Unit!21288 () Unit!21286)

(assert (=> b!632355 (= e!361515 Unit!21288)))

(declare-fun b!632356 () Bool)

(declare-fun res!409108 () Bool)

(assert (=> b!632356 (=> (not res!409108) (not e!361519))))

(assert (=> b!632356 (= res!409108 (and (= (size!18649 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18649 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18649 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632357 () Bool)

(declare-fun Unit!21289 () Unit!21286)

(assert (=> b!632357 (= e!361515 Unit!21289)))

(assert (=> b!632357 false))

(declare-fun b!632358 () Bool)

(declare-fun res!409114 () Bool)

(assert (=> b!632358 (=> (not res!409114) (not e!361519))))

(assert (=> b!632358 (= res!409114 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632359 () Bool)

(assert (=> b!632359 (= e!361522 e!361521)))

(declare-fun res!409118 () Bool)

(assert (=> b!632359 (=> (not res!409118) (not e!361521))))

(assert (=> b!632359 (= res!409118 (and (= lt!292318 (Found!6732 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18285 a!2986) index!984) (select (arr!18285 a!2986) j!136))) (not (= (select (arr!18285 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632359 (= lt!292318 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18285 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632360 () Bool)

(declare-fun res!409105 () Bool)

(assert (=> b!632360 (=> (not res!409105) (not e!361519))))

(assert (=> b!632360 (= res!409105 (validKeyInArray!0 k!1786))))

(assert (= (and start!57132 res!409113) b!632356))

(assert (= (and b!632356 res!409108) b!632346))

(assert (= (and b!632346 res!409115) b!632360))

(assert (= (and b!632360 res!409105) b!632358))

(assert (= (and b!632358 res!409114) b!632353))

(assert (= (and b!632353 res!409109) b!632348))

(assert (= (and b!632348 res!409110) b!632351))

(assert (= (and b!632351 res!409111) b!632349))

(assert (= (and b!632349 res!409106) b!632350))

(assert (= (and b!632350 res!409112) b!632359))

(assert (= (and b!632359 res!409118) b!632352))

(assert (= (and b!632352 res!409117) b!632345))

(assert (= (and b!632352 c!71987) b!632357))

(assert (= (and b!632352 (not c!71987)) b!632355))

(assert (= (and b!632352 (not res!409107)) b!632354))

(assert (= (and b!632354 (not res!409116)) b!632347))

(declare-fun m!607221 () Bool)

(assert (=> start!57132 m!607221))

(declare-fun m!607223 () Bool)

(assert (=> start!57132 m!607223))

(declare-fun m!607225 () Bool)

(assert (=> b!632347 m!607225))

(assert (=> b!632347 m!607225))

(declare-fun m!607227 () Bool)

(assert (=> b!632347 m!607227))

(declare-fun m!607229 () Bool)

(assert (=> b!632350 m!607229))

(declare-fun m!607231 () Bool)

(assert (=> b!632350 m!607231))

(declare-fun m!607233 () Bool)

(assert (=> b!632352 m!607233))

(declare-fun m!607235 () Bool)

(assert (=> b!632352 m!607235))

(declare-fun m!607237 () Bool)

(assert (=> b!632352 m!607237))

(assert (=> b!632352 m!607225))

(declare-fun m!607239 () Bool)

(assert (=> b!632352 m!607239))

(declare-fun m!607241 () Bool)

(assert (=> b!632352 m!607241))

(assert (=> b!632352 m!607225))

(declare-fun m!607243 () Bool)

(assert (=> b!632352 m!607243))

(assert (=> b!632352 m!607229))

(assert (=> b!632346 m!607225))

(assert (=> b!632346 m!607225))

(declare-fun m!607245 () Bool)

(assert (=> b!632346 m!607245))

(declare-fun m!607247 () Bool)

(assert (=> b!632349 m!607247))

(declare-fun m!607249 () Bool)

(assert (=> b!632353 m!607249))

(declare-fun m!607251 () Bool)

(assert (=> b!632359 m!607251))

(assert (=> b!632359 m!607225))

(assert (=> b!632359 m!607225))

(declare-fun m!607253 () Bool)

(assert (=> b!632359 m!607253))

(assert (=> b!632354 m!607225))

(assert (=> b!632354 m!607229))

(declare-fun m!607255 () Bool)

(assert (=> b!632354 m!607255))

(declare-fun m!607257 () Bool)

(assert (=> b!632351 m!607257))

(declare-fun m!607259 () Bool)

(assert (=> b!632358 m!607259))

(declare-fun m!607261 () Bool)

(assert (=> b!632348 m!607261))

(declare-fun m!607263 () Bool)

(assert (=> b!632360 m!607263))

(push 1)

(assert (not b!632346))

(assert (not b!632360))

(assert (not b!632358))

(assert (not b!632353))

(assert (not start!57132))

(assert (not b!632351))

(assert (not b!632347))

(assert (not b!632352))

(assert (not b!632348))

(assert (not b!632359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89299 () Bool)

(declare-fun res!409230 () Bool)

(declare-fun e!361616 () Bool)

(assert (=> d!89299 (=> res!409230 e!361616)))

(assert (=> d!89299 (= res!409230 (= (select (arr!18285 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89299 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!361616)))

(declare-fun b!632508 () Bool)

(declare-fun e!361617 () Bool)

(assert (=> b!632508 (= e!361616 e!361617)))

(declare-fun res!409231 () Bool)

(assert (=> b!632508 (=> (not res!409231) (not e!361617))))

(assert (=> b!632508 (= res!409231 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18649 a!2986)))))

(declare-fun b!632509 () Bool)

(assert (=> b!632509 (= e!361617 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89299 (not res!409230)) b!632508))

(assert (= (and b!632508 res!409231) b!632509))

(declare-fun m!607375 () Bool)

(assert (=> d!89299 m!607375))

(declare-fun m!607377 () Bool)

(assert (=> b!632509 m!607377))

(assert (=> b!632358 d!89299))

(declare-fun d!89301 () Bool)

(declare-fun res!409232 () Bool)

(declare-fun e!361618 () Bool)

(assert (=> d!89301 (=> res!409232 e!361618)))

(assert (=> d!89301 (= res!409232 (= (select (arr!18285 lt!292313) j!136) (select (arr!18285 a!2986) j!136)))))

(assert (=> d!89301 (= (arrayContainsKey!0 lt!292313 (select (arr!18285 a!2986) j!136) j!136) e!361618)))

(declare-fun b!632510 () Bool)

(declare-fun e!361619 () Bool)

(assert (=> b!632510 (= e!361618 e!361619)))

(declare-fun res!409233 () Bool)

(assert (=> b!632510 (=> (not res!409233) (not e!361619))))

(assert (=> b!632510 (= res!409233 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18649 lt!292313)))))

(declare-fun b!632511 () Bool)

(assert (=> b!632511 (= e!361619 (arrayContainsKey!0 lt!292313 (select (arr!18285 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89301 (not res!409232)) b!632510))

(assert (= (and b!632510 res!409233) b!632511))

(declare-fun m!607379 () Bool)

(assert (=> d!89301 m!607379))

(assert (=> b!632511 m!607225))

(declare-fun m!607381 () Bool)

(assert (=> b!632511 m!607381))

(assert (=> b!632347 d!89301))

(declare-fun d!89303 () Bool)

(declare-fun lt!292408 () SeekEntryResult!6732)

(assert (=> d!89303 (and (or (is-Undefined!6732 lt!292408) (not (is-Found!6732 lt!292408)) (and (bvsge (index!29221 lt!292408) #b00000000000000000000000000000000) (bvslt (index!29221 lt!292408) (size!18649 lt!292313)))) (or (is-Undefined!6732 lt!292408) (is-Found!6732 lt!292408) (not (is-MissingVacant!6732 lt!292408)) (not (= (index!29223 lt!292408) vacantSpotIndex!68)) (and (bvsge (index!29223 lt!292408) #b00000000000000000000000000000000) (bvslt (index!29223 lt!292408) (size!18649 lt!292313)))) (or (is-Undefined!6732 lt!292408) (ite (is-Found!6732 lt!292408) (= (select (arr!18285 lt!292313) (index!29221 lt!292408)) lt!292314) (and (is-MissingVacant!6732 lt!292408) (= (index!29223 lt!292408) vacantSpotIndex!68) (= (select (arr!18285 lt!292313) (index!29223 lt!292408)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!361644 () SeekEntryResult!6732)

(assert (=> d!89303 (= lt!292408 e!361644)))

(declare-fun c!72031 () Bool)

(assert (=> d!89303 (= c!72031 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!292407 () (_ BitVec 64))

(assert (=> d!89303 (= lt!292407 (select (arr!18285 lt!292313) lt!292317))))

(assert (=> d!89303 (validMask!0 mask!3053)))

(assert (=> d!89303 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 lt!292314 lt!292313 mask!3053) lt!292408)))

(declare-fun b!632560 () Bool)

(declare-fun e!361645 () SeekEntryResult!6732)

(assert (=> b!632560 (= e!361644 e!361645)))

(declare-fun c!72032 () Bool)

(assert (=> b!632560 (= c!72032 (= lt!292407 lt!292314))))

(declare-fun b!632561 () Bool)

(assert (=> b!632561 (= e!361644 Undefined!6732)))

(declare-fun b!632562 () Bool)

(assert (=> b!632562 (= e!361645 (Found!6732 lt!292317))))

(declare-fun b!632563 () Bool)

(declare-fun c!72030 () Bool)

(assert (=> b!632563 (= c!72030 (= lt!292407 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361646 () SeekEntryResult!6732)

(assert (=> b!632563 (= e!361645 e!361646)))

(declare-fun b!632564 () Bool)

(assert (=> b!632564 (= e!361646 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292317 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!292314 lt!292313 mask!3053))))

(declare-fun b!632565 () Bool)

(assert (=> b!632565 (= e!361646 (MissingVacant!6732 vacantSpotIndex!68))))

(assert (= (and d!89303 c!72031) b!632561))

(assert (= (and d!89303 (not c!72031)) b!632560))

(assert (= (and b!632560 c!72032) b!632562))

(assert (= (and b!632560 (not c!72032)) b!632563))

(assert (= (and b!632563 c!72030) b!632565))

(assert (= (and b!632563 (not c!72030)) b!632564))

(declare-fun m!607415 () Bool)

(assert (=> d!89303 m!607415))

(declare-fun m!607417 () Bool)

(assert (=> d!89303 m!607417))

(declare-fun m!607419 () Bool)

(assert (=> d!89303 m!607419))

(assert (=> d!89303 m!607221))

(declare-fun m!607421 () Bool)

(assert (=> b!632564 m!607421))

(assert (=> b!632564 m!607421))

(declare-fun m!607423 () Bool)

(assert (=> b!632564 m!607423))

(assert (=> b!632352 d!89303))

(declare-fun d!89317 () Bool)

(declare-fun lt!292410 () SeekEntryResult!6732)

(assert (=> d!89317 (and (or (is-Undefined!6732 lt!292410) (not (is-Found!6732 lt!292410)) (and (bvsge (index!29221 lt!292410) #b00000000000000000000000000000000) (bvslt (index!29221 lt!292410) (size!18649 a!2986)))) (or (is-Undefined!6732 lt!292410) (is-Found!6732 lt!292410) (not (is-MissingVacant!6732 lt!292410)) (not (= (index!29223 lt!292410) vacantSpotIndex!68)) (and (bvsge (index!29223 lt!292410) #b00000000000000000000000000000000) (bvslt (index!29223 lt!292410) (size!18649 a!2986)))) (or (is-Undefined!6732 lt!292410) (ite (is-Found!6732 lt!292410) (= (select (arr!18285 a!2986) (index!29221 lt!292410)) (select (arr!18285 a!2986) j!136)) (and (is-MissingVacant!6732 lt!292410) (= (index!29223 lt!292410) vacantSpotIndex!68) (= (select (arr!18285 a!2986) (index!29223 lt!292410)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!361655 () SeekEntryResult!6732)

(assert (=> d!89317 (= lt!292410 e!361655)))

(declare-fun c!72036 () Bool)

(assert (=> d!89317 (= c!72036 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!292409 () (_ BitVec 64))

(assert (=> d!89317 (= lt!292409 (select (arr!18285 a!2986) lt!292317))))

(assert (=> d!89317 (validMask!0 mask!3053)))

(assert (=> d!89317 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 (select (arr!18285 a!2986) j!136) a!2986 mask!3053) lt!292410)))

(declare-fun b!632576 () Bool)

(declare-fun e!361656 () SeekEntryResult!6732)

(assert (=> b!632576 (= e!361655 e!361656)))

(declare-fun c!72037 () Bool)

(assert (=> b!632576 (= c!72037 (= lt!292409 (select (arr!18285 a!2986) j!136)))))

(declare-fun b!632577 () Bool)

(assert (=> b!632577 (= e!361655 Undefined!6732)))

(declare-fun b!632578 () Bool)

(assert (=> b!632578 (= e!361656 (Found!6732 lt!292317))))

(declare-fun b!632579 () Bool)

(declare-fun c!72035 () Bool)

(assert (=> b!632579 (= c!72035 (= lt!292409 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361657 () SeekEntryResult!6732)

(assert (=> b!632579 (= e!361656 e!361657)))

(declare-fun b!632580 () Bool)

(assert (=> b!632580 (= e!361657 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292317 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18285 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632581 () Bool)

(assert (=> b!632581 (= e!361657 (MissingVacant!6732 vacantSpotIndex!68))))

(assert (= (and d!89317 c!72036) b!632577))

(assert (= (and d!89317 (not c!72036)) b!632576))

(assert (= (and b!632576 c!72037) b!632578))

(assert (= (and b!632576 (not c!72037)) b!632579))

(assert (= (and b!632579 c!72035) b!632581))

(assert (= (and b!632579 (not c!72035)) b!632580))

(declare-fun m!607425 () Bool)

(assert (=> d!89317 m!607425))

(declare-fun m!607427 () Bool)

(assert (=> d!89317 m!607427))

(declare-fun m!607429 () Bool)

(assert (=> d!89317 m!607429))

(assert (=> d!89317 m!607221))

(assert (=> b!632580 m!607421))

(assert (=> b!632580 m!607421))

(assert (=> b!632580 m!607225))

(declare-fun m!607431 () Bool)

(assert (=> b!632580 m!607431))

(assert (=> b!632352 d!89317))

(declare-fun d!89319 () Bool)

(declare-fun lt!292412 () SeekEntryResult!6732)

(assert (=> d!89319 (and (or (is-Undefined!6732 lt!292412) (not (is-Found!6732 lt!292412)) (and (bvsge (index!29221 lt!292412) #b00000000000000000000000000000000) (bvslt (index!29221 lt!292412) (size!18649 lt!292313)))) (or (is-Undefined!6732 lt!292412) (is-Found!6732 lt!292412) (not (is-MissingVacant!6732 lt!292412)) (not (= (index!29223 lt!292412) vacantSpotIndex!68)) (and (bvsge (index!29223 lt!292412) #b00000000000000000000000000000000) (bvslt (index!29223 lt!292412) (size!18649 lt!292313)))) (or (is-Undefined!6732 lt!292412) (ite (is-Found!6732 lt!292412) (= (select (arr!18285 lt!292313) (index!29221 lt!292412)) lt!292314) (and (is-MissingVacant!6732 lt!292412) (= (index!29223 lt!292412) vacantSpotIndex!68) (= (select (arr!18285 lt!292313) (index!29223 lt!292412)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!361658 () SeekEntryResult!6732)

(assert (=> d!89319 (= lt!292412 e!361658)))

(declare-fun c!72039 () Bool)

(assert (=> d!89319 (= c!72039 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!292411 () (_ BitVec 64))

(assert (=> d!89319 (= lt!292411 (select (arr!18285 lt!292313) index!984))))

(assert (=> d!89319 (validMask!0 mask!3053)))

(assert (=> d!89319 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292314 lt!292313 mask!3053) lt!292412)))

(declare-fun b!632582 () Bool)

(declare-fun e!361659 () SeekEntryResult!6732)

(assert (=> b!632582 (= e!361658 e!361659)))

(declare-fun c!72040 () Bool)

(assert (=> b!632582 (= c!72040 (= lt!292411 lt!292314))))

(declare-fun b!632583 () Bool)

(assert (=> b!632583 (= e!361658 Undefined!6732)))

(declare-fun b!632584 () Bool)

(assert (=> b!632584 (= e!361659 (Found!6732 index!984))))

(declare-fun b!632585 () Bool)

(declare-fun c!72038 () Bool)

(assert (=> b!632585 (= c!72038 (= lt!292411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361660 () SeekEntryResult!6732)

(assert (=> b!632585 (= e!361659 e!361660)))

(declare-fun b!632586 () Bool)

(assert (=> b!632586 (= e!361660 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!292314 lt!292313 mask!3053))))

(declare-fun b!632587 () Bool)

(assert (=> b!632587 (= e!361660 (MissingVacant!6732 vacantSpotIndex!68))))

(assert (= (and d!89319 c!72039) b!632583))

(assert (= (and d!89319 (not c!72039)) b!632582))

(assert (= (and b!632582 c!72040) b!632584))

(assert (= (and b!632582 (not c!72040)) b!632585))

(assert (= (and b!632585 c!72038) b!632587))

(assert (= (and b!632585 (not c!72038)) b!632586))

(declare-fun m!607433 () Bool)

(assert (=> d!89319 m!607433))

(declare-fun m!607435 () Bool)

(assert (=> d!89319 m!607435))

(declare-fun m!607437 () Bool)

(assert (=> d!89319 m!607437))

(assert (=> d!89319 m!607221))

(assert (=> b!632586 m!607233))

(assert (=> b!632586 m!607233))

(declare-fun m!607439 () Bool)

(assert (=> b!632586 m!607439))

(assert (=> b!632352 d!89319))

(declare-fun d!89321 () Bool)

(declare-fun lt!292418 () (_ BitVec 32))

(assert (=> d!89321 (and (bvsge lt!292418 #b00000000000000000000000000000000) (bvslt lt!292418 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89321 (= lt!292418 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89321 (validMask!0 mask!3053)))

(assert (=> d!89321 (= (nextIndex!0 index!984 x!910 mask!3053) lt!292418)))

(declare-fun bs!19047 () Bool)

(assert (= bs!19047 d!89321))

(declare-fun m!607449 () Bool)

(assert (=> bs!19047 m!607449))

(assert (=> bs!19047 m!607221))

(assert (=> b!632352 d!89321))

(declare-fun d!89325 () Bool)

(declare-fun e!361673 () Bool)

(assert (=> d!89325 e!361673))

(declare-fun res!409248 () Bool)

(assert (=> d!89325 (=> (not res!409248) (not e!361673))))

(assert (=> d!89325 (= res!409248 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18649 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18649 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18649 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18649 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18649 a!2986))))))

(declare-fun lt!292423 () Unit!21286)

(declare-fun choose!9 (array!38112 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21286)

(assert (=> d!89325 (= lt!292423 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89325 (validMask!0 mask!3053)))

(assert (=> d!89325 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 mask!3053) lt!292423)))

(declare-fun b!632604 () Bool)

(assert (=> b!632604 (= e!361673 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 (select (arr!18285 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292317 vacantSpotIndex!68 (select (store (arr!18285 a!2986) i!1108 k!1786) j!136) (array!38113 (store (arr!18285 a!2986) i!1108 k!1786) (size!18649 a!2986)) mask!3053)))))

(assert (= (and d!89325 res!409248) b!632604))

(declare-fun m!607463 () Bool)

(assert (=> d!89325 m!607463))

(assert (=> d!89325 m!607221))

(assert (=> b!632604 m!607235))

(declare-fun m!607465 () Bool)

(assert (=> b!632604 m!607465))

(assert (=> b!632604 m!607235))

(assert (=> b!632604 m!607225))

(assert (=> b!632604 m!607225))

(assert (=> b!632604 m!607243))

(assert (=> b!632604 m!607229))

(assert (=> b!632352 d!89325))

(declare-fun d!89339 () Bool)

(assert (=> d!89339 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

