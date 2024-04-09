; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56206 () Bool)

(assert start!56206)

(declare-fun b!622407 () Bool)

(assert (=> b!622407 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37639 0))(
  ( (array!37640 (arr!18062 (Array (_ BitVec 32) (_ BitVec 64))) (size!18426 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37639)

(declare-fun lt!288505 () array!37639)

(declare-datatypes ((Unit!20910 0))(
  ( (Unit!20911) )
))
(declare-fun lt!288512 () Unit!20910)

(declare-datatypes ((List!12156 0))(
  ( (Nil!12153) (Cons!12152 (h!13197 (_ BitVec 64)) (t!18392 List!12156)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37639 (_ BitVec 64) (_ BitVec 32) List!12156) Unit!20910)

(assert (=> b!622407 (= lt!288512 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288505 (select (arr!18062 a!2986) j!136) j!136 Nil!12153))))

(declare-fun arrayNoDuplicates!0 (array!37639 (_ BitVec 32) List!12156) Bool)

(assert (=> b!622407 (arrayNoDuplicates!0 lt!288505 j!136 Nil!12153)))

(declare-fun lt!288498 () Unit!20910)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37639 (_ BitVec 32) (_ BitVec 32)) Unit!20910)

(assert (=> b!622407 (= lt!288498 (lemmaNoDuplicateFromThenFromBigger!0 lt!288505 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622407 (arrayNoDuplicates!0 lt!288505 #b00000000000000000000000000000000 Nil!12153)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!288515 () Unit!20910)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37639 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12156) Unit!20910)

(assert (=> b!622407 (= lt!288515 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12153))))

(declare-fun arrayContainsKey!0 (array!37639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622407 (arrayContainsKey!0 lt!288505 (select (arr!18062 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288508 () Unit!20910)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37639 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20910)

(assert (=> b!622407 (= lt!288508 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288505 (select (arr!18062 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357013 () Unit!20910)

(declare-fun Unit!20912 () Unit!20910)

(assert (=> b!622407 (= e!357013 Unit!20912)))

(declare-fun b!622408 () Bool)

(declare-fun e!357006 () Bool)

(declare-datatypes ((SeekEntryResult!6509 0))(
  ( (MissingZero!6509 (index!28319 (_ BitVec 32))) (Found!6509 (index!28320 (_ BitVec 32))) (Intermediate!6509 (undefined!7321 Bool) (index!28321 (_ BitVec 32)) (x!57110 (_ BitVec 32))) (Undefined!6509) (MissingVacant!6509 (index!28322 (_ BitVec 32))) )
))
(declare-fun lt!288510 () SeekEntryResult!6509)

(declare-fun lt!288511 () SeekEntryResult!6509)

(assert (=> b!622408 (= e!357006 (= lt!288510 lt!288511))))

(declare-fun b!622410 () Bool)

(declare-fun e!357003 () Unit!20910)

(declare-fun Unit!20913 () Unit!20910)

(assert (=> b!622410 (= e!357003 Unit!20913)))

(declare-fun b!622411 () Bool)

(declare-fun Unit!20914 () Unit!20910)

(assert (=> b!622411 (= e!357003 Unit!20914)))

(assert (=> b!622411 false))

(declare-fun b!622412 () Bool)

(declare-fun res!401226 () Bool)

(declare-fun e!357011 () Bool)

(assert (=> b!622412 (=> (not res!401226) (not e!357011))))

(assert (=> b!622412 (= res!401226 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12153))))

(declare-fun b!622413 () Bool)

(declare-fun res!401228 () Bool)

(assert (=> b!622413 (=> (not res!401228) (not e!357011))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37639 (_ BitVec 32)) Bool)

(assert (=> b!622413 (= res!401228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622414 () Bool)

(declare-fun e!357000 () Bool)

(assert (=> b!622414 (= e!357000 (not true))))

(declare-fun lt!288497 () Unit!20910)

(declare-fun e!357001 () Unit!20910)

(assert (=> b!622414 (= lt!288497 e!357001)))

(declare-fun c!70967 () Bool)

(declare-fun lt!288516 () SeekEntryResult!6509)

(assert (=> b!622414 (= c!70967 (= lt!288516 (Found!6509 index!984)))))

(declare-fun lt!288499 () Unit!20910)

(assert (=> b!622414 (= lt!288499 e!357003)))

(declare-fun c!70966 () Bool)

(assert (=> b!622414 (= c!70966 (= lt!288516 Undefined!6509))))

(declare-fun lt!288507 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37639 (_ BitVec 32)) SeekEntryResult!6509)

(assert (=> b!622414 (= lt!288516 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288507 lt!288505 mask!3053))))

(assert (=> b!622414 e!357006))

(declare-fun res!401218 () Bool)

(assert (=> b!622414 (=> (not res!401218) (not e!357006))))

(declare-fun lt!288502 () (_ BitVec 32))

(assert (=> b!622414 (= res!401218 (= lt!288511 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288502 vacantSpotIndex!68 lt!288507 lt!288505 mask!3053)))))

(assert (=> b!622414 (= lt!288511 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288502 vacantSpotIndex!68 (select (arr!18062 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622414 (= lt!288507 (select (store (arr!18062 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288513 () Unit!20910)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37639 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20910)

(assert (=> b!622414 (= lt!288513 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288502 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622414 (= lt!288502 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622415 () Bool)

(declare-fun Unit!20915 () Unit!20910)

(assert (=> b!622415 (= e!357013 Unit!20915)))

(declare-fun b!622416 () Bool)

(declare-fun e!357009 () Bool)

(assert (=> b!622416 (= e!357009 e!357000)))

(declare-fun res!401213 () Bool)

(assert (=> b!622416 (=> (not res!401213) (not e!357000))))

(assert (=> b!622416 (= res!401213 (and (= lt!288510 (Found!6509 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18062 a!2986) index!984) (select (arr!18062 a!2986) j!136))) (not (= (select (arr!18062 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622416 (= lt!288510 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18062 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!357012 () Bool)

(declare-fun b!622417 () Bool)

(assert (=> b!622417 (= e!357012 (arrayContainsKey!0 lt!288505 (select (arr!18062 a!2986) j!136) index!984))))

(declare-fun b!622418 () Bool)

(declare-fun Unit!20916 () Unit!20910)

(assert (=> b!622418 (= e!357001 Unit!20916)))

(declare-fun b!622419 () Bool)

(declare-fun e!357002 () Unit!20910)

(declare-fun Unit!20917 () Unit!20910)

(assert (=> b!622419 (= e!357002 Unit!20917)))

(declare-fun res!401223 () Bool)

(declare-fun e!357007 () Bool)

(assert (=> start!56206 (=> (not res!401223) (not e!357007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56206 (= res!401223 (validMask!0 mask!3053))))

(assert (=> start!56206 e!357007))

(assert (=> start!56206 true))

(declare-fun array_inv!13836 (array!37639) Bool)

(assert (=> start!56206 (array_inv!13836 a!2986)))

(declare-fun b!622409 () Bool)

(assert (=> b!622409 (= e!357007 e!357011)))

(declare-fun res!401214 () Bool)

(assert (=> b!622409 (=> (not res!401214) (not e!357011))))

(declare-fun lt!288501 () SeekEntryResult!6509)

(assert (=> b!622409 (= res!401214 (or (= lt!288501 (MissingZero!6509 i!1108)) (= lt!288501 (MissingVacant!6509 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37639 (_ BitVec 32)) SeekEntryResult!6509)

(assert (=> b!622409 (= lt!288501 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun e!357008 () Bool)

(declare-fun b!622420 () Bool)

(assert (=> b!622420 (= e!357008 (arrayContainsKey!0 lt!288505 (select (arr!18062 a!2986) j!136) index!984))))

(declare-fun b!622421 () Bool)

(declare-fun res!401215 () Bool)

(assert (=> b!622421 (=> (not res!401215) (not e!357007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622421 (= res!401215 (validKeyInArray!0 (select (arr!18062 a!2986) j!136)))))

(declare-fun b!622422 () Bool)

(declare-fun Unit!20918 () Unit!20910)

(assert (=> b!622422 (= e!357001 Unit!20918)))

(declare-fun res!401220 () Bool)

(assert (=> b!622422 (= res!401220 (= (select (store (arr!18062 a!2986) i!1108 k!1786) index!984) (select (arr!18062 a!2986) j!136)))))

(declare-fun e!357004 () Bool)

(assert (=> b!622422 (=> (not res!401220) (not e!357004))))

(assert (=> b!622422 e!357004))

(declare-fun c!70965 () Bool)

(assert (=> b!622422 (= c!70965 (bvslt j!136 index!984))))

(declare-fun lt!288504 () Unit!20910)

(assert (=> b!622422 (= lt!288504 e!357013)))

(declare-fun c!70964 () Bool)

(assert (=> b!622422 (= c!70964 (bvslt index!984 j!136))))

(declare-fun lt!288509 () Unit!20910)

(assert (=> b!622422 (= lt!288509 e!357002)))

(assert (=> b!622422 false))

(declare-fun b!622423 () Bool)

(assert (=> b!622423 false))

(declare-fun lt!288514 () Unit!20910)

(assert (=> b!622423 (= lt!288514 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288505 (select (arr!18062 a!2986) j!136) index!984 Nil!12153))))

(assert (=> b!622423 (arrayNoDuplicates!0 lt!288505 index!984 Nil!12153)))

(declare-fun lt!288500 () Unit!20910)

(assert (=> b!622423 (= lt!288500 (lemmaNoDuplicateFromThenFromBigger!0 lt!288505 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622423 (arrayNoDuplicates!0 lt!288505 #b00000000000000000000000000000000 Nil!12153)))

(declare-fun lt!288503 () Unit!20910)

(assert (=> b!622423 (= lt!288503 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12153))))

(assert (=> b!622423 (arrayContainsKey!0 lt!288505 (select (arr!18062 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288506 () Unit!20910)

(assert (=> b!622423 (= lt!288506 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288505 (select (arr!18062 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622423 e!357012))

(declare-fun res!401227 () Bool)

(assert (=> b!622423 (=> (not res!401227) (not e!357012))))

(assert (=> b!622423 (= res!401227 (arrayContainsKey!0 lt!288505 (select (arr!18062 a!2986) j!136) j!136))))

(declare-fun Unit!20919 () Unit!20910)

(assert (=> b!622423 (= e!357002 Unit!20919)))

(declare-fun b!622424 () Bool)

(declare-fun res!401225 () Bool)

(assert (=> b!622424 (=> (not res!401225) (not e!357007))))

(assert (=> b!622424 (= res!401225 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622425 () Bool)

(declare-fun res!401216 () Bool)

(assert (=> b!622425 (=> (not res!401216) (not e!357011))))

(assert (=> b!622425 (= res!401216 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18062 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!401217 () Bool)

(declare-fun b!622426 () Bool)

(assert (=> b!622426 (= res!401217 (arrayContainsKey!0 lt!288505 (select (arr!18062 a!2986) j!136) j!136))))

(assert (=> b!622426 (=> (not res!401217) (not e!357008))))

(declare-fun e!357005 () Bool)

(assert (=> b!622426 (= e!357005 e!357008)))

(declare-fun b!622427 () Bool)

(declare-fun res!401221 () Bool)

(assert (=> b!622427 (=> (not res!401221) (not e!357007))))

(assert (=> b!622427 (= res!401221 (validKeyInArray!0 k!1786))))

(declare-fun b!622428 () Bool)

(declare-fun res!401222 () Bool)

(assert (=> b!622428 (= res!401222 (bvsge j!136 index!984))))

(assert (=> b!622428 (=> res!401222 e!357005)))

(assert (=> b!622428 (= e!357004 e!357005)))

(declare-fun b!622429 () Bool)

(assert (=> b!622429 (= e!357011 e!357009)))

(declare-fun res!401219 () Bool)

(assert (=> b!622429 (=> (not res!401219) (not e!357009))))

(assert (=> b!622429 (= res!401219 (= (select (store (arr!18062 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622429 (= lt!288505 (array!37640 (store (arr!18062 a!2986) i!1108 k!1786) (size!18426 a!2986)))))

(declare-fun b!622430 () Bool)

(declare-fun res!401224 () Bool)

(assert (=> b!622430 (=> (not res!401224) (not e!357007))))

(assert (=> b!622430 (= res!401224 (and (= (size!18426 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18426 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18426 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56206 res!401223) b!622430))

(assert (= (and b!622430 res!401224) b!622421))

(assert (= (and b!622421 res!401215) b!622427))

(assert (= (and b!622427 res!401221) b!622424))

(assert (= (and b!622424 res!401225) b!622409))

(assert (= (and b!622409 res!401214) b!622413))

(assert (= (and b!622413 res!401228) b!622412))

(assert (= (and b!622412 res!401226) b!622425))

(assert (= (and b!622425 res!401216) b!622429))

(assert (= (and b!622429 res!401219) b!622416))

(assert (= (and b!622416 res!401213) b!622414))

(assert (= (and b!622414 res!401218) b!622408))

(assert (= (and b!622414 c!70966) b!622411))

(assert (= (and b!622414 (not c!70966)) b!622410))

(assert (= (and b!622414 c!70967) b!622422))

(assert (= (and b!622414 (not c!70967)) b!622418))

(assert (= (and b!622422 res!401220) b!622428))

(assert (= (and b!622428 (not res!401222)) b!622426))

(assert (= (and b!622426 res!401217) b!622420))

(assert (= (and b!622422 c!70965) b!622407))

(assert (= (and b!622422 (not c!70965)) b!622415))

(assert (= (and b!622422 c!70964) b!622423))

(assert (= (and b!622422 (not c!70964)) b!622419))

(assert (= (and b!622423 res!401227) b!622417))

(declare-fun m!598319 () Bool)

(assert (=> b!622429 m!598319))

(declare-fun m!598321 () Bool)

(assert (=> b!622429 m!598321))

(declare-fun m!598323 () Bool)

(assert (=> b!622414 m!598323))

(declare-fun m!598325 () Bool)

(assert (=> b!622414 m!598325))

(declare-fun m!598327 () Bool)

(assert (=> b!622414 m!598327))

(declare-fun m!598329 () Bool)

(assert (=> b!622414 m!598329))

(assert (=> b!622414 m!598323))

(assert (=> b!622414 m!598319))

(declare-fun m!598331 () Bool)

(assert (=> b!622414 m!598331))

(declare-fun m!598333 () Bool)

(assert (=> b!622414 m!598333))

(declare-fun m!598335 () Bool)

(assert (=> b!622414 m!598335))

(declare-fun m!598337 () Bool)

(assert (=> b!622416 m!598337))

(assert (=> b!622416 m!598323))

(assert (=> b!622416 m!598323))

(declare-fun m!598339 () Bool)

(assert (=> b!622416 m!598339))

(declare-fun m!598341 () Bool)

(assert (=> b!622413 m!598341))

(declare-fun m!598343 () Bool)

(assert (=> start!56206 m!598343))

(declare-fun m!598345 () Bool)

(assert (=> start!56206 m!598345))

(assert (=> b!622421 m!598323))

(assert (=> b!622421 m!598323))

(declare-fun m!598347 () Bool)

(assert (=> b!622421 m!598347))

(assert (=> b!622422 m!598319))

(declare-fun m!598349 () Bool)

(assert (=> b!622422 m!598349))

(assert (=> b!622422 m!598323))

(assert (=> b!622407 m!598323))

(declare-fun m!598351 () Bool)

(assert (=> b!622407 m!598351))

(assert (=> b!622407 m!598323))

(assert (=> b!622407 m!598323))

(declare-fun m!598353 () Bool)

(assert (=> b!622407 m!598353))

(assert (=> b!622407 m!598323))

(declare-fun m!598355 () Bool)

(assert (=> b!622407 m!598355))

(declare-fun m!598357 () Bool)

(assert (=> b!622407 m!598357))

(declare-fun m!598359 () Bool)

(assert (=> b!622407 m!598359))

(declare-fun m!598361 () Bool)

(assert (=> b!622407 m!598361))

(declare-fun m!598363 () Bool)

(assert (=> b!622407 m!598363))

(declare-fun m!598365 () Bool)

(assert (=> b!622427 m!598365))

(declare-fun m!598367 () Bool)

(assert (=> b!622425 m!598367))

(assert (=> b!622420 m!598323))

(assert (=> b!622420 m!598323))

(declare-fun m!598369 () Bool)

(assert (=> b!622420 m!598369))

(assert (=> b!622417 m!598323))

(assert (=> b!622417 m!598323))

(assert (=> b!622417 m!598369))

(assert (=> b!622423 m!598323))

(declare-fun m!598371 () Bool)

(assert (=> b!622423 m!598371))

(assert (=> b!622423 m!598323))

(assert (=> b!622423 m!598323))

(declare-fun m!598373 () Bool)

(assert (=> b!622423 m!598373))

(declare-fun m!598375 () Bool)

(assert (=> b!622423 m!598375))

(declare-fun m!598377 () Bool)

(assert (=> b!622423 m!598377))

(assert (=> b!622423 m!598323))

(declare-fun m!598379 () Bool)

(assert (=> b!622423 m!598379))

(assert (=> b!622423 m!598323))

(declare-fun m!598381 () Bool)

(assert (=> b!622423 m!598381))

(assert (=> b!622423 m!598357))

(assert (=> b!622423 m!598363))

(assert (=> b!622426 m!598323))

(assert (=> b!622426 m!598323))

(assert (=> b!622426 m!598381))

(declare-fun m!598383 () Bool)

(assert (=> b!622424 m!598383))

(declare-fun m!598385 () Bool)

(assert (=> b!622409 m!598385))

(declare-fun m!598387 () Bool)

(assert (=> b!622412 m!598387))

(push 1)

