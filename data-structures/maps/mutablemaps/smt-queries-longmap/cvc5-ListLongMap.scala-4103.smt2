; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56124 () Bool)

(assert start!56124)

(declare-fun b!619439 () Bool)

(declare-datatypes ((Unit!20500 0))(
  ( (Unit!20501) )
))
(declare-fun e!355274 () Unit!20500)

(declare-fun Unit!20502 () Unit!20500)

(assert (=> b!619439 (= e!355274 Unit!20502)))

(declare-fun b!619441 () Bool)

(declare-fun e!355273 () Bool)

(declare-fun e!355262 () Bool)

(assert (=> b!619441 (= e!355273 e!355262)))

(declare-fun res!399241 () Bool)

(assert (=> b!619441 (=> (not res!399241) (not e!355262))))

(declare-datatypes ((SeekEntryResult!6468 0))(
  ( (MissingZero!6468 (index!28155 (_ BitVec 32))) (Found!6468 (index!28156 (_ BitVec 32))) (Intermediate!6468 (undefined!7280 Bool) (index!28157 (_ BitVec 32)) (x!56965 (_ BitVec 32))) (Undefined!6468) (MissingVacant!6468 (index!28158 (_ BitVec 32))) )
))
(declare-fun lt!286051 () SeekEntryResult!6468)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!619441 (= res!399241 (or (= lt!286051 (MissingZero!6468 i!1108)) (= lt!286051 (MissingVacant!6468 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37557 0))(
  ( (array!37558 (arr!18021 (Array (_ BitVec 32) (_ BitVec 64))) (size!18385 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37557)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37557 (_ BitVec 32)) SeekEntryResult!6468)

(assert (=> b!619441 (= lt!286051 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619442 () Bool)

(declare-fun res!399235 () Bool)

(assert (=> b!619442 (=> (not res!399235) (not e!355262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37557 (_ BitVec 32)) Bool)

(assert (=> b!619442 (= res!399235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619443 () Bool)

(assert (=> b!619443 false))

(declare-fun lt!286047 () Unit!20500)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!286045 () array!37557)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((List!12115 0))(
  ( (Nil!12112) (Cons!12111 (h!13156 (_ BitVec 64)) (t!18351 List!12115)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37557 (_ BitVec 64) (_ BitVec 32) List!12115) Unit!20500)

(assert (=> b!619443 (= lt!286047 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286045 (select (arr!18021 a!2986) j!136) index!984 Nil!12112))))

(declare-fun arrayNoDuplicates!0 (array!37557 (_ BitVec 32) List!12115) Bool)

(assert (=> b!619443 (arrayNoDuplicates!0 lt!286045 index!984 Nil!12112)))

(declare-fun lt!286048 () Unit!20500)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37557 (_ BitVec 32) (_ BitVec 32)) Unit!20500)

(assert (=> b!619443 (= lt!286048 (lemmaNoDuplicateFromThenFromBigger!0 lt!286045 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619443 (arrayNoDuplicates!0 lt!286045 #b00000000000000000000000000000000 Nil!12112)))

(declare-fun lt!286046 () Unit!20500)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12115) Unit!20500)

(assert (=> b!619443 (= lt!286046 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12112))))

(declare-fun arrayContainsKey!0 (array!37557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619443 (arrayContainsKey!0 lt!286045 (select (arr!18021 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286055 () Unit!20500)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20500)

(assert (=> b!619443 (= lt!286055 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286045 (select (arr!18021 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355271 () Bool)

(assert (=> b!619443 e!355271))

(declare-fun res!399242 () Bool)

(assert (=> b!619443 (=> (not res!399242) (not e!355271))))

(assert (=> b!619443 (= res!399242 (arrayContainsKey!0 lt!286045 (select (arr!18021 a!2986) j!136) j!136))))

(declare-fun e!355268 () Unit!20500)

(declare-fun Unit!20503 () Unit!20500)

(assert (=> b!619443 (= e!355268 Unit!20503)))

(declare-fun b!619444 () Bool)

(declare-fun e!355272 () Unit!20500)

(declare-fun Unit!20504 () Unit!20500)

(assert (=> b!619444 (= e!355272 Unit!20504)))

(declare-fun b!619445 () Bool)

(declare-fun e!355270 () Unit!20500)

(declare-fun Unit!20505 () Unit!20500)

(assert (=> b!619445 (= e!355270 Unit!20505)))

(declare-fun res!399243 () Bool)

(assert (=> b!619445 (= res!399243 (= (select (store (arr!18021 a!2986) i!1108 k!1786) index!984) (select (arr!18021 a!2986) j!136)))))

(declare-fun e!355276 () Bool)

(assert (=> b!619445 (=> (not res!399243) (not e!355276))))

(assert (=> b!619445 e!355276))

(declare-fun c!70475 () Bool)

(assert (=> b!619445 (= c!70475 (bvslt j!136 index!984))))

(declare-fun lt!286040 () Unit!20500)

(assert (=> b!619445 (= lt!286040 e!355274)))

(declare-fun c!70473 () Bool)

(assert (=> b!619445 (= c!70473 (bvslt index!984 j!136))))

(declare-fun lt!286037 () Unit!20500)

(assert (=> b!619445 (= lt!286037 e!355268)))

(assert (=> b!619445 false))

(declare-fun b!619446 () Bool)

(declare-fun e!355266 () Bool)

(declare-fun lt!286041 () SeekEntryResult!6468)

(declare-fun lt!286038 () SeekEntryResult!6468)

(assert (=> b!619446 (= e!355266 (= lt!286041 lt!286038))))

(declare-fun b!619447 () Bool)

(declare-fun res!399233 () Bool)

(assert (=> b!619447 (=> (not res!399233) (not e!355273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619447 (= res!399233 (validKeyInArray!0 k!1786))))

(declare-fun b!619448 () Bool)

(declare-fun e!355275 () Bool)

(assert (=> b!619448 (= e!355275 true)))

(assert (=> b!619448 (= (select (store (arr!18021 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619449 () Bool)

(declare-fun res!399234 () Bool)

(assert (=> b!619449 (=> (not res!399234) (not e!355262))))

(assert (=> b!619449 (= res!399234 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12112))))

(declare-fun b!619450 () Bool)

(declare-fun res!399232 () Bool)

(assert (=> b!619450 (=> (not res!399232) (not e!355273))))

(assert (=> b!619450 (= res!399232 (validKeyInArray!0 (select (arr!18021 a!2986) j!136)))))

(declare-fun res!399230 () Bool)

(declare-fun b!619451 () Bool)

(assert (=> b!619451 (= res!399230 (arrayContainsKey!0 lt!286045 (select (arr!18021 a!2986) j!136) j!136))))

(declare-fun e!355269 () Bool)

(assert (=> b!619451 (=> (not res!399230) (not e!355269))))

(declare-fun e!355265 () Bool)

(assert (=> b!619451 (= e!355265 e!355269)))

(declare-fun b!619452 () Bool)

(declare-fun res!399237 () Bool)

(assert (=> b!619452 (=> (not res!399237) (not e!355273))))

(assert (=> b!619452 (= res!399237 (and (= (size!18385 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18385 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18385 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619440 () Bool)

(declare-fun Unit!20506 () Unit!20500)

(assert (=> b!619440 (= e!355268 Unit!20506)))

(declare-fun res!399244 () Bool)

(assert (=> start!56124 (=> (not res!399244) (not e!355273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56124 (= res!399244 (validMask!0 mask!3053))))

(assert (=> start!56124 e!355273))

(assert (=> start!56124 true))

(declare-fun array_inv!13795 (array!37557) Bool)

(assert (=> start!56124 (array_inv!13795 a!2986)))

(declare-fun b!619453 () Bool)

(declare-fun res!399245 () Bool)

(assert (=> b!619453 (= res!399245 (bvsge j!136 index!984))))

(assert (=> b!619453 (=> res!399245 e!355265)))

(assert (=> b!619453 (= e!355276 e!355265)))

(declare-fun b!619454 () Bool)

(declare-fun e!355267 () Bool)

(assert (=> b!619454 (= e!355262 e!355267)))

(declare-fun res!399231 () Bool)

(assert (=> b!619454 (=> (not res!399231) (not e!355267))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!619454 (= res!399231 (= (select (store (arr!18021 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619454 (= lt!286045 (array!37558 (store (arr!18021 a!2986) i!1108 k!1786) (size!18385 a!2986)))))

(declare-fun b!619455 () Bool)

(assert (=> b!619455 (= e!355269 (arrayContainsKey!0 lt!286045 (select (arr!18021 a!2986) j!136) index!984))))

(declare-fun b!619456 () Bool)

(assert (=> b!619456 (= e!355271 (arrayContainsKey!0 lt!286045 (select (arr!18021 a!2986) j!136) index!984))))

(declare-fun b!619457 () Bool)

(declare-fun Unit!20507 () Unit!20500)

(assert (=> b!619457 (= e!355270 Unit!20507)))

(declare-fun b!619458 () Bool)

(declare-fun res!399236 () Bool)

(assert (=> b!619458 (=> (not res!399236) (not e!355273))))

(assert (=> b!619458 (= res!399236 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619459 () Bool)

(declare-fun e!355264 () Bool)

(assert (=> b!619459 (= e!355267 e!355264)))

(declare-fun res!399240 () Bool)

(assert (=> b!619459 (=> (not res!399240) (not e!355264))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!619459 (= res!399240 (and (= lt!286041 (Found!6468 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18021 a!2986) index!984) (select (arr!18021 a!2986) j!136))) (not (= (select (arr!18021 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37557 (_ BitVec 32)) SeekEntryResult!6468)

(assert (=> b!619459 (= lt!286041 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18021 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619460 () Bool)

(declare-fun res!399239 () Bool)

(assert (=> b!619460 (=> (not res!399239) (not e!355262))))

(assert (=> b!619460 (= res!399239 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18021 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619461 () Bool)

(declare-fun Unit!20508 () Unit!20500)

(assert (=> b!619461 (= e!355272 Unit!20508)))

(assert (=> b!619461 false))

(declare-fun b!619462 () Bool)

(assert (=> b!619462 (= e!355264 (not e!355275))))

(declare-fun res!399229 () Bool)

(assert (=> b!619462 (=> res!399229 e!355275)))

(declare-fun lt!286039 () SeekEntryResult!6468)

(assert (=> b!619462 (= res!399229 (not (= lt!286039 (MissingVacant!6468 vacantSpotIndex!68))))))

(declare-fun lt!286050 () Unit!20500)

(assert (=> b!619462 (= lt!286050 e!355270)))

(declare-fun c!70474 () Bool)

(assert (=> b!619462 (= c!70474 (= lt!286039 (Found!6468 index!984)))))

(declare-fun lt!286042 () Unit!20500)

(assert (=> b!619462 (= lt!286042 e!355272)))

(declare-fun c!70472 () Bool)

(assert (=> b!619462 (= c!70472 (= lt!286039 Undefined!6468))))

(declare-fun lt!286053 () (_ BitVec 64))

(assert (=> b!619462 (= lt!286039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286053 lt!286045 mask!3053))))

(assert (=> b!619462 e!355266))

(declare-fun res!399238 () Bool)

(assert (=> b!619462 (=> (not res!399238) (not e!355266))))

(declare-fun lt!286049 () (_ BitVec 32))

(assert (=> b!619462 (= res!399238 (= lt!286038 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286049 vacantSpotIndex!68 lt!286053 lt!286045 mask!3053)))))

(assert (=> b!619462 (= lt!286038 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286049 vacantSpotIndex!68 (select (arr!18021 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619462 (= lt!286053 (select (store (arr!18021 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286052 () Unit!20500)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37557 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20500)

(assert (=> b!619462 (= lt!286052 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286049 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619462 (= lt!286049 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619463 () Bool)

(assert (=> b!619463 false))

(declare-fun lt!286056 () Unit!20500)

(assert (=> b!619463 (= lt!286056 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286045 (select (arr!18021 a!2986) j!136) j!136 Nil!12112))))

(assert (=> b!619463 (arrayNoDuplicates!0 lt!286045 j!136 Nil!12112)))

(declare-fun lt!286044 () Unit!20500)

(assert (=> b!619463 (= lt!286044 (lemmaNoDuplicateFromThenFromBigger!0 lt!286045 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619463 (arrayNoDuplicates!0 lt!286045 #b00000000000000000000000000000000 Nil!12112)))

(declare-fun lt!286054 () Unit!20500)

(assert (=> b!619463 (= lt!286054 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12112))))

(assert (=> b!619463 (arrayContainsKey!0 lt!286045 (select (arr!18021 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286043 () Unit!20500)

(assert (=> b!619463 (= lt!286043 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286045 (select (arr!18021 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20509 () Unit!20500)

(assert (=> b!619463 (= e!355274 Unit!20509)))

(assert (= (and start!56124 res!399244) b!619452))

(assert (= (and b!619452 res!399237) b!619450))

(assert (= (and b!619450 res!399232) b!619447))

(assert (= (and b!619447 res!399233) b!619458))

(assert (= (and b!619458 res!399236) b!619441))

(assert (= (and b!619441 res!399241) b!619442))

(assert (= (and b!619442 res!399235) b!619449))

(assert (= (and b!619449 res!399234) b!619460))

(assert (= (and b!619460 res!399239) b!619454))

(assert (= (and b!619454 res!399231) b!619459))

(assert (= (and b!619459 res!399240) b!619462))

(assert (= (and b!619462 res!399238) b!619446))

(assert (= (and b!619462 c!70472) b!619461))

(assert (= (and b!619462 (not c!70472)) b!619444))

(assert (= (and b!619462 c!70474) b!619445))

(assert (= (and b!619462 (not c!70474)) b!619457))

(assert (= (and b!619445 res!399243) b!619453))

(assert (= (and b!619453 (not res!399245)) b!619451))

(assert (= (and b!619451 res!399230) b!619455))

(assert (= (and b!619445 c!70475) b!619463))

(assert (= (and b!619445 (not c!70475)) b!619439))

(assert (= (and b!619445 c!70473) b!619443))

(assert (= (and b!619445 (not c!70473)) b!619440))

(assert (= (and b!619443 res!399242) b!619456))

(assert (= (and b!619462 (not res!399229)) b!619448))

(declare-fun m!595449 () Bool)

(assert (=> b!619441 m!595449))

(declare-fun m!595451 () Bool)

(assert (=> start!56124 m!595451))

(declare-fun m!595453 () Bool)

(assert (=> start!56124 m!595453))

(declare-fun m!595455 () Bool)

(assert (=> b!619447 m!595455))

(declare-fun m!595457 () Bool)

(assert (=> b!619462 m!595457))

(declare-fun m!595459 () Bool)

(assert (=> b!619462 m!595459))

(declare-fun m!595461 () Bool)

(assert (=> b!619462 m!595461))

(declare-fun m!595463 () Bool)

(assert (=> b!619462 m!595463))

(assert (=> b!619462 m!595463))

(declare-fun m!595465 () Bool)

(assert (=> b!619462 m!595465))

(declare-fun m!595467 () Bool)

(assert (=> b!619462 m!595467))

(declare-fun m!595469 () Bool)

(assert (=> b!619462 m!595469))

(declare-fun m!595471 () Bool)

(assert (=> b!619462 m!595471))

(declare-fun m!595473 () Bool)

(assert (=> b!619458 m!595473))

(declare-fun m!595475 () Bool)

(assert (=> b!619443 m!595475))

(assert (=> b!619443 m!595463))

(declare-fun m!595477 () Bool)

(assert (=> b!619443 m!595477))

(assert (=> b!619443 m!595463))

(declare-fun m!595479 () Bool)

(assert (=> b!619443 m!595479))

(assert (=> b!619443 m!595463))

(declare-fun m!595481 () Bool)

(assert (=> b!619443 m!595481))

(declare-fun m!595483 () Bool)

(assert (=> b!619443 m!595483))

(assert (=> b!619443 m!595463))

(declare-fun m!595485 () Bool)

(assert (=> b!619443 m!595485))

(declare-fun m!595487 () Bool)

(assert (=> b!619443 m!595487))

(assert (=> b!619443 m!595463))

(declare-fun m!595489 () Bool)

(assert (=> b!619443 m!595489))

(assert (=> b!619454 m!595467))

(declare-fun m!595491 () Bool)

(assert (=> b!619454 m!595491))

(declare-fun m!595493 () Bool)

(assert (=> b!619442 m!595493))

(assert (=> b!619451 m!595463))

(assert (=> b!619451 m!595463))

(assert (=> b!619451 m!595485))

(assert (=> b!619455 m!595463))

(assert (=> b!619455 m!595463))

(declare-fun m!595495 () Bool)

(assert (=> b!619455 m!595495))

(declare-fun m!595497 () Bool)

(assert (=> b!619459 m!595497))

(assert (=> b!619459 m!595463))

(assert (=> b!619459 m!595463))

(declare-fun m!595499 () Bool)

(assert (=> b!619459 m!595499))

(assert (=> b!619448 m!595467))

(declare-fun m!595501 () Bool)

(assert (=> b!619448 m!595501))

(declare-fun m!595503 () Bool)

(assert (=> b!619460 m!595503))

(declare-fun m!595505 () Bool)

(assert (=> b!619449 m!595505))

(assert (=> b!619450 m!595463))

(assert (=> b!619450 m!595463))

(declare-fun m!595507 () Bool)

(assert (=> b!619450 m!595507))

(assert (=> b!619445 m!595467))

(assert (=> b!619445 m!595501))

(assert (=> b!619445 m!595463))

(declare-fun m!595509 () Bool)

(assert (=> b!619463 m!595509))

(assert (=> b!619463 m!595463))

(assert (=> b!619463 m!595463))

(declare-fun m!595511 () Bool)

(assert (=> b!619463 m!595511))

(assert (=> b!619463 m!595475))

(declare-fun m!595513 () Bool)

(assert (=> b!619463 m!595513))

(assert (=> b!619463 m!595487))

(assert (=> b!619463 m!595463))

(declare-fun m!595515 () Bool)

(assert (=> b!619463 m!595515))

(assert (=> b!619463 m!595463))

(declare-fun m!595517 () Bool)

(assert (=> b!619463 m!595517))

(assert (=> b!619456 m!595463))

(assert (=> b!619456 m!595463))

(assert (=> b!619456 m!595495))

(push 1)

