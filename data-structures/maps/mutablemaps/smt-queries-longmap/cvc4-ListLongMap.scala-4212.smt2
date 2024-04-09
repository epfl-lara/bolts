; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57736 () Bool)

(assert start!57736)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!365258 () Bool)

(declare-datatypes ((array!38263 0))(
  ( (array!38264 (arr!18350 (Array (_ BitVec 32) (_ BitVec 64))) (size!18714 (_ BitVec 32))) )
))
(declare-fun lt!295259 () array!38263)

(declare-fun b!638318 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38263)

(declare-fun arrayContainsKey!0 (array!38263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638318 (= e!365258 (arrayContainsKey!0 lt!295259 (select (arr!18350 a!2986) j!136) index!984))))

(declare-fun b!638319 () Bool)

(declare-fun res!413317 () Bool)

(declare-fun e!365266 () Bool)

(assert (=> b!638319 (=> (not res!413317) (not e!365266))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!638319 (= res!413317 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638320 () Bool)

(declare-fun e!365264 () Bool)

(declare-fun e!365259 () Bool)

(assert (=> b!638320 (= e!365264 e!365259)))

(declare-fun res!413309 () Bool)

(assert (=> b!638320 (=> res!413309 e!365259)))

(declare-fun lt!295256 () (_ BitVec 64))

(declare-fun lt!295262 () (_ BitVec 64))

(assert (=> b!638320 (= res!413309 (or (not (= (select (arr!18350 a!2986) j!136) lt!295256)) (not (= (select (arr!18350 a!2986) j!136) lt!295262)) (bvsge j!136 index!984)))))

(declare-fun b!638321 () Bool)

(declare-fun e!365261 () Bool)

(declare-datatypes ((SeekEntryResult!6797 0))(
  ( (MissingZero!6797 (index!29501 (_ BitVec 32))) (Found!6797 (index!29502 (_ BitVec 32))) (Intermediate!6797 (undefined!7609 Bool) (index!29503 (_ BitVec 32)) (x!58280 (_ BitVec 32))) (Undefined!6797) (MissingVacant!6797 (index!29504 (_ BitVec 32))) )
))
(declare-fun lt!295253 () SeekEntryResult!6797)

(declare-fun lt!295257 () SeekEntryResult!6797)

(assert (=> b!638321 (= e!365261 (= lt!295253 lt!295257))))

(declare-fun b!638322 () Bool)

(declare-fun e!365265 () Bool)

(declare-fun e!365260 () Bool)

(assert (=> b!638322 (= e!365265 (not e!365260))))

(declare-fun res!413308 () Bool)

(assert (=> b!638322 (=> res!413308 e!365260)))

(declare-fun lt!295261 () SeekEntryResult!6797)

(assert (=> b!638322 (= res!413308 (not (= lt!295261 (Found!6797 index!984))))))

(declare-datatypes ((Unit!21546 0))(
  ( (Unit!21547) )
))
(declare-fun lt!295252 () Unit!21546)

(declare-fun e!365269 () Unit!21546)

(assert (=> b!638322 (= lt!295252 e!365269)))

(declare-fun c!72875 () Bool)

(assert (=> b!638322 (= c!72875 (= lt!295261 Undefined!6797))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38263 (_ BitVec 32)) SeekEntryResult!6797)

(assert (=> b!638322 (= lt!295261 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295256 lt!295259 mask!3053))))

(assert (=> b!638322 e!365261))

(declare-fun res!413313 () Bool)

(assert (=> b!638322 (=> (not res!413313) (not e!365261))))

(declare-fun lt!295258 () (_ BitVec 32))

(assert (=> b!638322 (= res!413313 (= lt!295257 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295258 vacantSpotIndex!68 lt!295256 lt!295259 mask!3053)))))

(assert (=> b!638322 (= lt!295257 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295258 vacantSpotIndex!68 (select (arr!18350 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638322 (= lt!295256 (select (store (arr!18350 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295255 () Unit!21546)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38263 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21546)

(assert (=> b!638322 (= lt!295255 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295258 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638322 (= lt!295258 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638323 () Bool)

(declare-fun res!413302 () Bool)

(declare-fun e!365262 () Bool)

(assert (=> b!638323 (=> (not res!413302) (not e!365262))))

(declare-datatypes ((List!12444 0))(
  ( (Nil!12441) (Cons!12440 (h!13485 (_ BitVec 64)) (t!18680 List!12444)) )
))
(declare-fun arrayNoDuplicates!0 (array!38263 (_ BitVec 32) List!12444) Bool)

(assert (=> b!638323 (= res!413302 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12441))))

(declare-fun res!413305 () Bool)

(assert (=> start!57736 (=> (not res!413305) (not e!365266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57736 (= res!413305 (validMask!0 mask!3053))))

(assert (=> start!57736 e!365266))

(assert (=> start!57736 true))

(declare-fun array_inv!14124 (array!38263) Bool)

(assert (=> start!57736 (array_inv!14124 a!2986)))

(declare-fun b!638324 () Bool)

(declare-fun res!413311 () Bool)

(assert (=> b!638324 (=> (not res!413311) (not e!365266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638324 (= res!413311 (validKeyInArray!0 k!1786))))

(declare-fun b!638325 () Bool)

(declare-fun res!413315 () Bool)

(assert (=> b!638325 (=> (not res!413315) (not e!365266))))

(assert (=> b!638325 (= res!413315 (and (= (size!18714 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18714 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18714 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638326 () Bool)

(assert (=> b!638326 (= e!365259 e!365258)))

(declare-fun res!413316 () Bool)

(assert (=> b!638326 (=> (not res!413316) (not e!365258))))

(assert (=> b!638326 (= res!413316 (arrayContainsKey!0 lt!295259 (select (arr!18350 a!2986) j!136) j!136))))

(declare-fun b!638327 () Bool)

(declare-fun e!365263 () Bool)

(assert (=> b!638327 (= e!365260 e!365263)))

(declare-fun res!413306 () Bool)

(assert (=> b!638327 (=> res!413306 e!365263)))

(assert (=> b!638327 (= res!413306 (or (not (= (select (arr!18350 a!2986) j!136) lt!295256)) (not (= (select (arr!18350 a!2986) j!136) lt!295262)) (bvsge j!136 index!984)))))

(assert (=> b!638327 e!365264))

(declare-fun res!413304 () Bool)

(assert (=> b!638327 (=> (not res!413304) (not e!365264))))

(assert (=> b!638327 (= res!413304 (= lt!295262 (select (arr!18350 a!2986) j!136)))))

(assert (=> b!638327 (= lt!295262 (select (store (arr!18350 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!638328 () Bool)

(declare-fun Unit!21548 () Unit!21546)

(assert (=> b!638328 (= e!365269 Unit!21548)))

(assert (=> b!638328 false))

(declare-fun b!638329 () Bool)

(declare-fun e!365267 () Bool)

(assert (=> b!638329 (= e!365267 e!365265)))

(declare-fun res!413307 () Bool)

(assert (=> b!638329 (=> (not res!413307) (not e!365265))))

(assert (=> b!638329 (= res!413307 (and (= lt!295253 (Found!6797 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18350 a!2986) index!984) (select (arr!18350 a!2986) j!136))) (not (= (select (arr!18350 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638329 (= lt!295253 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18350 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638330 () Bool)

(assert (=> b!638330 (= e!365262 e!365267)))

(declare-fun res!413312 () Bool)

(assert (=> b!638330 (=> (not res!413312) (not e!365267))))

(assert (=> b!638330 (= res!413312 (= (select (store (arr!18350 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638330 (= lt!295259 (array!38264 (store (arr!18350 a!2986) i!1108 k!1786) (size!18714 a!2986)))))

(declare-fun b!638331 () Bool)

(declare-fun res!413310 () Bool)

(assert (=> b!638331 (=> (not res!413310) (not e!365262))))

(assert (=> b!638331 (= res!413310 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18350 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638332 () Bool)

(assert (=> b!638332 (= e!365263 true)))

(assert (=> b!638332 (arrayNoDuplicates!0 lt!295259 #b00000000000000000000000000000000 Nil!12441)))

(declare-fun lt!295263 () Unit!21546)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38263 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12444) Unit!21546)

(assert (=> b!638332 (= lt!295263 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12441))))

(assert (=> b!638332 (arrayContainsKey!0 lt!295259 (select (arr!18350 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295260 () Unit!21546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38263 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21546)

(assert (=> b!638332 (= lt!295260 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295259 (select (arr!18350 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638333 () Bool)

(declare-fun Unit!21549 () Unit!21546)

(assert (=> b!638333 (= e!365269 Unit!21549)))

(declare-fun b!638334 () Bool)

(declare-fun res!413314 () Bool)

(assert (=> b!638334 (=> (not res!413314) (not e!365266))))

(assert (=> b!638334 (= res!413314 (validKeyInArray!0 (select (arr!18350 a!2986) j!136)))))

(declare-fun b!638335 () Bool)

(assert (=> b!638335 (= e!365266 e!365262)))

(declare-fun res!413303 () Bool)

(assert (=> b!638335 (=> (not res!413303) (not e!365262))))

(declare-fun lt!295254 () SeekEntryResult!6797)

(assert (=> b!638335 (= res!413303 (or (= lt!295254 (MissingZero!6797 i!1108)) (= lt!295254 (MissingVacant!6797 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38263 (_ BitVec 32)) SeekEntryResult!6797)

(assert (=> b!638335 (= lt!295254 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638336 () Bool)

(declare-fun res!413318 () Bool)

(assert (=> b!638336 (=> (not res!413318) (not e!365262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38263 (_ BitVec 32)) Bool)

(assert (=> b!638336 (= res!413318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57736 res!413305) b!638325))

(assert (= (and b!638325 res!413315) b!638334))

(assert (= (and b!638334 res!413314) b!638324))

(assert (= (and b!638324 res!413311) b!638319))

(assert (= (and b!638319 res!413317) b!638335))

(assert (= (and b!638335 res!413303) b!638336))

(assert (= (and b!638336 res!413318) b!638323))

(assert (= (and b!638323 res!413302) b!638331))

(assert (= (and b!638331 res!413310) b!638330))

(assert (= (and b!638330 res!413312) b!638329))

(assert (= (and b!638329 res!413307) b!638322))

(assert (= (and b!638322 res!413313) b!638321))

(assert (= (and b!638322 c!72875) b!638328))

(assert (= (and b!638322 (not c!72875)) b!638333))

(assert (= (and b!638322 (not res!413308)) b!638327))

(assert (= (and b!638327 res!413304) b!638320))

(assert (= (and b!638320 (not res!413309)) b!638326))

(assert (= (and b!638326 res!413316) b!638318))

(assert (= (and b!638327 (not res!413306)) b!638332))

(declare-fun m!612315 () Bool)

(assert (=> start!57736 m!612315))

(declare-fun m!612317 () Bool)

(assert (=> start!57736 m!612317))

(declare-fun m!612319 () Bool)

(assert (=> b!638326 m!612319))

(assert (=> b!638326 m!612319))

(declare-fun m!612321 () Bool)

(assert (=> b!638326 m!612321))

(declare-fun m!612323 () Bool)

(assert (=> b!638336 m!612323))

(declare-fun m!612325 () Bool)

(assert (=> b!638331 m!612325))

(assert (=> b!638318 m!612319))

(assert (=> b!638318 m!612319))

(declare-fun m!612327 () Bool)

(assert (=> b!638318 m!612327))

(declare-fun m!612329 () Bool)

(assert (=> b!638330 m!612329))

(declare-fun m!612331 () Bool)

(assert (=> b!638330 m!612331))

(declare-fun m!612333 () Bool)

(assert (=> b!638335 m!612333))

(declare-fun m!612335 () Bool)

(assert (=> b!638329 m!612335))

(assert (=> b!638329 m!612319))

(assert (=> b!638329 m!612319))

(declare-fun m!612337 () Bool)

(assert (=> b!638329 m!612337))

(assert (=> b!638332 m!612319))

(declare-fun m!612339 () Bool)

(assert (=> b!638332 m!612339))

(assert (=> b!638332 m!612319))

(declare-fun m!612341 () Bool)

(assert (=> b!638332 m!612341))

(assert (=> b!638332 m!612319))

(declare-fun m!612343 () Bool)

(assert (=> b!638332 m!612343))

(declare-fun m!612345 () Bool)

(assert (=> b!638332 m!612345))

(assert (=> b!638334 m!612319))

(assert (=> b!638334 m!612319))

(declare-fun m!612347 () Bool)

(assert (=> b!638334 m!612347))

(declare-fun m!612349 () Bool)

(assert (=> b!638323 m!612349))

(declare-fun m!612351 () Bool)

(assert (=> b!638324 m!612351))

(declare-fun m!612353 () Bool)

(assert (=> b!638319 m!612353))

(assert (=> b!638320 m!612319))

(assert (=> b!638327 m!612319))

(assert (=> b!638327 m!612329))

(declare-fun m!612355 () Bool)

(assert (=> b!638327 m!612355))

(declare-fun m!612357 () Bool)

(assert (=> b!638322 m!612357))

(declare-fun m!612359 () Bool)

(assert (=> b!638322 m!612359))

(declare-fun m!612361 () Bool)

(assert (=> b!638322 m!612361))

(assert (=> b!638322 m!612319))

(assert (=> b!638322 m!612329))

(assert (=> b!638322 m!612319))

(declare-fun m!612363 () Bool)

(assert (=> b!638322 m!612363))

(declare-fun m!612365 () Bool)

(assert (=> b!638322 m!612365))

(declare-fun m!612367 () Bool)

(assert (=> b!638322 m!612367))

(push 1)

