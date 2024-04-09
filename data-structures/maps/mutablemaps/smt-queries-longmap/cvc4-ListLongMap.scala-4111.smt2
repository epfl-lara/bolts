; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56176 () Bool)

(assert start!56176)

(declare-fun b!621327 () Bool)

(declare-datatypes ((Unit!20760 0))(
  ( (Unit!20761) )
))
(declare-fun e!356377 () Unit!20760)

(declare-fun Unit!20762 () Unit!20760)

(assert (=> b!621327 (= e!356377 Unit!20762)))

(declare-fun b!621329 () Bool)

(declare-fun e!356383 () Bool)

(assert (=> b!621329 (= e!356383 (not true))))

(declare-fun lt!287601 () Unit!20760)

(declare-fun e!356376 () Unit!20760)

(assert (=> b!621329 (= lt!287601 e!356376)))

(declare-fun c!70787 () Bool)

(declare-datatypes ((SeekEntryResult!6494 0))(
  ( (MissingZero!6494 (index!28259 (_ BitVec 32))) (Found!6494 (index!28260 (_ BitVec 32))) (Intermediate!6494 (undefined!7306 Bool) (index!28261 (_ BitVec 32)) (x!57055 (_ BitVec 32))) (Undefined!6494) (MissingVacant!6494 (index!28262 (_ BitVec 32))) )
))
(declare-fun lt!287597 () SeekEntryResult!6494)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621329 (= c!70787 (= lt!287597 (Found!6494 index!984)))))

(declare-fun lt!287610 () Unit!20760)

(declare-fun e!356372 () Unit!20760)

(assert (=> b!621329 (= lt!287610 e!356372)))

(declare-fun c!70784 () Bool)

(assert (=> b!621329 (= c!70784 (= lt!287597 Undefined!6494))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!287609 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37609 0))(
  ( (array!37610 (arr!18047 (Array (_ BitVec 32) (_ BitVec 64))) (size!18411 (_ BitVec 32))) )
))
(declare-fun lt!287603 () array!37609)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37609 (_ BitVec 32)) SeekEntryResult!6494)

(assert (=> b!621329 (= lt!287597 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287609 lt!287603 mask!3053))))

(declare-fun e!356375 () Bool)

(assert (=> b!621329 e!356375))

(declare-fun res!400500 () Bool)

(assert (=> b!621329 (=> (not res!400500) (not e!356375))))

(declare-fun lt!287614 () (_ BitVec 32))

(declare-fun lt!287613 () SeekEntryResult!6494)

(assert (=> b!621329 (= res!400500 (= lt!287613 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287614 vacantSpotIndex!68 lt!287609 lt!287603 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37609)

(assert (=> b!621329 (= lt!287613 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287614 vacantSpotIndex!68 (select (arr!18047 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!621329 (= lt!287609 (select (store (arr!18047 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287616 () Unit!20760)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20760)

(assert (=> b!621329 (= lt!287616 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287614 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621329 (= lt!287614 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621330 () Bool)

(declare-fun res!400504 () Bool)

(declare-fun e!356380 () Bool)

(assert (=> b!621330 (=> (not res!400504) (not e!356380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621330 (= res!400504 (validKeyInArray!0 (select (arr!18047 a!2986) j!136)))))

(declare-fun b!621331 () Bool)

(declare-fun e!356379 () Bool)

(assert (=> b!621331 (= e!356380 e!356379)))

(declare-fun res!400499 () Bool)

(assert (=> b!621331 (=> (not res!400499) (not e!356379))))

(declare-fun lt!287615 () SeekEntryResult!6494)

(assert (=> b!621331 (= res!400499 (or (= lt!287615 (MissingZero!6494 i!1108)) (= lt!287615 (MissingVacant!6494 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37609 (_ BitVec 32)) SeekEntryResult!6494)

(assert (=> b!621331 (= lt!287615 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621332 () Bool)

(declare-fun Unit!20763 () Unit!20760)

(assert (=> b!621332 (= e!356372 Unit!20763)))

(assert (=> b!621332 false))

(declare-fun b!621333 () Bool)

(declare-fun e!356382 () Bool)

(assert (=> b!621333 (= e!356379 e!356382)))

(declare-fun res!400505 () Bool)

(assert (=> b!621333 (=> (not res!400505) (not e!356382))))

(assert (=> b!621333 (= res!400505 (= (select (store (arr!18047 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621333 (= lt!287603 (array!37610 (store (arr!18047 a!2986) i!1108 k!1786) (size!18411 a!2986)))))

(declare-fun res!400508 () Bool)

(declare-fun b!621334 () Bool)

(declare-fun arrayContainsKey!0 (array!37609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621334 (= res!400508 (arrayContainsKey!0 lt!287603 (select (arr!18047 a!2986) j!136) j!136))))

(declare-fun e!356370 () Bool)

(assert (=> b!621334 (=> (not res!400508) (not e!356370))))

(declare-fun e!356373 () Bool)

(assert (=> b!621334 (= e!356373 e!356370)))

(declare-fun b!621335 () Bool)

(assert (=> b!621335 (= e!356370 (arrayContainsKey!0 lt!287603 (select (arr!18047 a!2986) j!136) index!984))))

(declare-fun b!621336 () Bool)

(declare-fun Unit!20764 () Unit!20760)

(assert (=> b!621336 (= e!356372 Unit!20764)))

(declare-fun b!621337 () Bool)

(declare-fun res!400506 () Bool)

(assert (=> b!621337 (=> (not res!400506) (not e!356380))))

(assert (=> b!621337 (= res!400506 (and (= (size!18411 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18411 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18411 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621338 () Bool)

(declare-fun res!400507 () Bool)

(assert (=> b!621338 (=> (not res!400507) (not e!356379))))

(assert (=> b!621338 (= res!400507 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18047 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621339 () Bool)

(assert (=> b!621339 false))

(declare-fun lt!287608 () Unit!20760)

(declare-datatypes ((List!12141 0))(
  ( (Nil!12138) (Cons!12137 (h!13182 (_ BitVec 64)) (t!18377 List!12141)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37609 (_ BitVec 64) (_ BitVec 32) List!12141) Unit!20760)

(assert (=> b!621339 (= lt!287608 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287603 (select (arr!18047 a!2986) j!136) j!136 Nil!12138))))

(declare-fun arrayNoDuplicates!0 (array!37609 (_ BitVec 32) List!12141) Bool)

(assert (=> b!621339 (arrayNoDuplicates!0 lt!287603 j!136 Nil!12138)))

(declare-fun lt!287598 () Unit!20760)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37609 (_ BitVec 32) (_ BitVec 32)) Unit!20760)

(assert (=> b!621339 (= lt!287598 (lemmaNoDuplicateFromThenFromBigger!0 lt!287603 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621339 (arrayNoDuplicates!0 lt!287603 #b00000000000000000000000000000000 Nil!12138)))

(declare-fun lt!287605 () Unit!20760)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37609 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12141) Unit!20760)

(assert (=> b!621339 (= lt!287605 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12138))))

(assert (=> b!621339 (arrayContainsKey!0 lt!287603 (select (arr!18047 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287612 () Unit!20760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37609 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20760)

(assert (=> b!621339 (= lt!287612 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287603 (select (arr!18047 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20765 () Unit!20760)

(assert (=> b!621339 (= e!356377 Unit!20765)))

(declare-fun b!621340 () Bool)

(assert (=> b!621340 false))

(declare-fun lt!287600 () Unit!20760)

(assert (=> b!621340 (= lt!287600 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287603 (select (arr!18047 a!2986) j!136) index!984 Nil!12138))))

(assert (=> b!621340 (arrayNoDuplicates!0 lt!287603 index!984 Nil!12138)))

(declare-fun lt!287604 () Unit!20760)

(assert (=> b!621340 (= lt!287604 (lemmaNoDuplicateFromThenFromBigger!0 lt!287603 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621340 (arrayNoDuplicates!0 lt!287603 #b00000000000000000000000000000000 Nil!12138)))

(declare-fun lt!287607 () Unit!20760)

(assert (=> b!621340 (= lt!287607 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12138))))

(assert (=> b!621340 (arrayContainsKey!0 lt!287603 (select (arr!18047 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287611 () Unit!20760)

(assert (=> b!621340 (= lt!287611 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287603 (select (arr!18047 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356374 () Bool)

(assert (=> b!621340 e!356374))

(declare-fun res!400497 () Bool)

(assert (=> b!621340 (=> (not res!400497) (not e!356374))))

(assert (=> b!621340 (= res!400497 (arrayContainsKey!0 lt!287603 (select (arr!18047 a!2986) j!136) j!136))))

(declare-fun e!356371 () Unit!20760)

(declare-fun Unit!20766 () Unit!20760)

(assert (=> b!621340 (= e!356371 Unit!20766)))

(declare-fun b!621341 () Bool)

(declare-fun res!400502 () Bool)

(assert (=> b!621341 (=> (not res!400502) (not e!356379))))

(assert (=> b!621341 (= res!400502 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12138))))

(declare-fun b!621342 () Bool)

(declare-fun Unit!20767 () Unit!20760)

(assert (=> b!621342 (= e!356376 Unit!20767)))

(declare-fun res!400495 () Bool)

(assert (=> b!621342 (= res!400495 (= (select (store (arr!18047 a!2986) i!1108 k!1786) index!984) (select (arr!18047 a!2986) j!136)))))

(declare-fun e!356381 () Bool)

(assert (=> b!621342 (=> (not res!400495) (not e!356381))))

(assert (=> b!621342 e!356381))

(declare-fun c!70786 () Bool)

(assert (=> b!621342 (= c!70786 (bvslt j!136 index!984))))

(declare-fun lt!287606 () Unit!20760)

(assert (=> b!621342 (= lt!287606 e!356377)))

(declare-fun c!70785 () Bool)

(assert (=> b!621342 (= c!70785 (bvslt index!984 j!136))))

(declare-fun lt!287602 () Unit!20760)

(assert (=> b!621342 (= lt!287602 e!356371)))

(assert (=> b!621342 false))

(declare-fun b!621328 () Bool)

(declare-fun res!400503 () Bool)

(assert (=> b!621328 (= res!400503 (bvsge j!136 index!984))))

(assert (=> b!621328 (=> res!400503 e!356373)))

(assert (=> b!621328 (= e!356381 e!356373)))

(declare-fun res!400498 () Bool)

(assert (=> start!56176 (=> (not res!400498) (not e!356380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56176 (= res!400498 (validMask!0 mask!3053))))

(assert (=> start!56176 e!356380))

(assert (=> start!56176 true))

(declare-fun array_inv!13821 (array!37609) Bool)

(assert (=> start!56176 (array_inv!13821 a!2986)))

(declare-fun b!621343 () Bool)

(declare-fun Unit!20768 () Unit!20760)

(assert (=> b!621343 (= e!356371 Unit!20768)))

(declare-fun b!621344 () Bool)

(declare-fun Unit!20769 () Unit!20760)

(assert (=> b!621344 (= e!356376 Unit!20769)))

(declare-fun b!621345 () Bool)

(declare-fun res!400494 () Bool)

(assert (=> b!621345 (=> (not res!400494) (not e!356379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37609 (_ BitVec 32)) Bool)

(assert (=> b!621345 (= res!400494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621346 () Bool)

(assert (=> b!621346 (= e!356374 (arrayContainsKey!0 lt!287603 (select (arr!18047 a!2986) j!136) index!984))))

(declare-fun b!621347 () Bool)

(assert (=> b!621347 (= e!356382 e!356383)))

(declare-fun res!400496 () Bool)

(assert (=> b!621347 (=> (not res!400496) (not e!356383))))

(declare-fun lt!287599 () SeekEntryResult!6494)

(assert (=> b!621347 (= res!400496 (and (= lt!287599 (Found!6494 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18047 a!2986) index!984) (select (arr!18047 a!2986) j!136))) (not (= (select (arr!18047 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621347 (= lt!287599 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18047 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621348 () Bool)

(declare-fun res!400501 () Bool)

(assert (=> b!621348 (=> (not res!400501) (not e!356380))))

(assert (=> b!621348 (= res!400501 (validKeyInArray!0 k!1786))))

(declare-fun b!621349 () Bool)

(declare-fun res!400493 () Bool)

(assert (=> b!621349 (=> (not res!400493) (not e!356380))))

(assert (=> b!621349 (= res!400493 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621350 () Bool)

(assert (=> b!621350 (= e!356375 (= lt!287599 lt!287613))))

(assert (= (and start!56176 res!400498) b!621337))

(assert (= (and b!621337 res!400506) b!621330))

(assert (= (and b!621330 res!400504) b!621348))

(assert (= (and b!621348 res!400501) b!621349))

(assert (= (and b!621349 res!400493) b!621331))

(assert (= (and b!621331 res!400499) b!621345))

(assert (= (and b!621345 res!400494) b!621341))

(assert (= (and b!621341 res!400502) b!621338))

(assert (= (and b!621338 res!400507) b!621333))

(assert (= (and b!621333 res!400505) b!621347))

(assert (= (and b!621347 res!400496) b!621329))

(assert (= (and b!621329 res!400500) b!621350))

(assert (= (and b!621329 c!70784) b!621332))

(assert (= (and b!621329 (not c!70784)) b!621336))

(assert (= (and b!621329 c!70787) b!621342))

(assert (= (and b!621329 (not c!70787)) b!621344))

(assert (= (and b!621342 res!400495) b!621328))

(assert (= (and b!621328 (not res!400503)) b!621334))

(assert (= (and b!621334 res!400508) b!621335))

(assert (= (and b!621342 c!70786) b!621339))

(assert (= (and b!621342 (not c!70786)) b!621327))

(assert (= (and b!621342 c!70785) b!621340))

(assert (= (and b!621342 (not c!70785)) b!621343))

(assert (= (and b!621340 res!400497) b!621346))

(declare-fun m!597269 () Bool)

(assert (=> b!621349 m!597269))

(declare-fun m!597271 () Bool)

(assert (=> b!621329 m!597271))

(declare-fun m!597273 () Bool)

(assert (=> b!621329 m!597273))

(declare-fun m!597275 () Bool)

(assert (=> b!621329 m!597275))

(declare-fun m!597277 () Bool)

(assert (=> b!621329 m!597277))

(declare-fun m!597279 () Bool)

(assert (=> b!621329 m!597279))

(declare-fun m!597281 () Bool)

(assert (=> b!621329 m!597281))

(declare-fun m!597283 () Bool)

(assert (=> b!621329 m!597283))

(assert (=> b!621329 m!597279))

(declare-fun m!597285 () Bool)

(assert (=> b!621329 m!597285))

(declare-fun m!597287 () Bool)

(assert (=> b!621331 m!597287))

(assert (=> b!621333 m!597283))

(declare-fun m!597289 () Bool)

(assert (=> b!621333 m!597289))

(declare-fun m!597291 () Bool)

(assert (=> b!621348 m!597291))

(declare-fun m!597293 () Bool)

(assert (=> b!621341 m!597293))

(declare-fun m!597295 () Bool)

(assert (=> b!621347 m!597295))

(assert (=> b!621347 m!597279))

(assert (=> b!621347 m!597279))

(declare-fun m!597297 () Bool)

(assert (=> b!621347 m!597297))

(assert (=> b!621346 m!597279))

(assert (=> b!621346 m!597279))

(declare-fun m!597299 () Bool)

(assert (=> b!621346 m!597299))

(declare-fun m!597301 () Bool)

(assert (=> start!56176 m!597301))

(declare-fun m!597303 () Bool)

(assert (=> start!56176 m!597303))

(declare-fun m!597305 () Bool)

(assert (=> b!621345 m!597305))

(assert (=> b!621342 m!597283))

(declare-fun m!597307 () Bool)

(assert (=> b!621342 m!597307))

(assert (=> b!621342 m!597279))

(assert (=> b!621334 m!597279))

(assert (=> b!621334 m!597279))

(declare-fun m!597309 () Bool)

(assert (=> b!621334 m!597309))

(declare-fun m!597311 () Bool)

(assert (=> b!621339 m!597311))

(assert (=> b!621339 m!597279))

(assert (=> b!621339 m!597279))

(declare-fun m!597313 () Bool)

(assert (=> b!621339 m!597313))

(declare-fun m!597315 () Bool)

(assert (=> b!621339 m!597315))

(assert (=> b!621339 m!597279))

(declare-fun m!597317 () Bool)

(assert (=> b!621339 m!597317))

(declare-fun m!597319 () Bool)

(assert (=> b!621339 m!597319))

(declare-fun m!597321 () Bool)

(assert (=> b!621339 m!597321))

(assert (=> b!621339 m!597279))

(declare-fun m!597323 () Bool)

(assert (=> b!621339 m!597323))

(assert (=> b!621330 m!597279))

(assert (=> b!621330 m!597279))

(declare-fun m!597325 () Bool)

(assert (=> b!621330 m!597325))

(assert (=> b!621335 m!597279))

(assert (=> b!621335 m!597279))

(assert (=> b!621335 m!597299))

(assert (=> b!621340 m!597279))

(assert (=> b!621340 m!597309))

(assert (=> b!621340 m!597279))

(declare-fun m!597327 () Bool)

(assert (=> b!621340 m!597327))

(assert (=> b!621340 m!597321))

(declare-fun m!597329 () Bool)

(assert (=> b!621340 m!597329))

(assert (=> b!621340 m!597279))

(declare-fun m!597331 () Bool)

(assert (=> b!621340 m!597331))

(assert (=> b!621340 m!597279))

(assert (=> b!621340 m!597279))

(declare-fun m!597333 () Bool)

(assert (=> b!621340 m!597333))

(declare-fun m!597335 () Bool)

(assert (=> b!621340 m!597335))

(assert (=> b!621340 m!597319))

(declare-fun m!597337 () Bool)

(assert (=> b!621338 m!597337))

(push 1)

(assert (not b!621335))

(assert (not start!56176))

(assert (not b!621330))

(assert (not b!621339))

(assert (not b!621334))

(assert (not b!621347))

(assert (not b!621340))

(assert (not b!621341))

(assert (not b!621349))

(assert (not b!621331))

(assert (not b!621346))

(assert (not b!621329))

(assert (not b!621348))

(assert (not b!621345))

(check-sat)

