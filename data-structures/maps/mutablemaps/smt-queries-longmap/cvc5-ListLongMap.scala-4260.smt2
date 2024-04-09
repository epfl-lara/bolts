; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59130 () Bool)

(assert start!59130)

(declare-fun b!652353 () Bool)

(declare-fun e!374444 () Bool)

(declare-fun e!374443 () Bool)

(assert (=> b!652353 (= e!374444 e!374443)))

(declare-fun res!423193 () Bool)

(assert (=> b!652353 (=> (not res!423193) (not e!374443))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6939 0))(
  ( (MissingZero!6939 (index!30108 (_ BitVec 32))) (Found!6939 (index!30109 (_ BitVec 32))) (Intermediate!6939 (undefined!7751 Bool) (index!30110 (_ BitVec 32)) (x!58923 (_ BitVec 32))) (Undefined!6939) (MissingVacant!6939 (index!30111 (_ BitVec 32))) )
))
(declare-fun lt!303664 () SeekEntryResult!6939)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38586 0))(
  ( (array!38587 (arr!18492 (Array (_ BitVec 32) (_ BitVec 64))) (size!18856 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38586)

(assert (=> b!652353 (= res!423193 (and (= lt!303664 (Found!6939 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18492 a!2986) index!984) (select (arr!18492 a!2986) j!136))) (not (= (select (arr!18492 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38586 (_ BitVec 32)) SeekEntryResult!6939)

(assert (=> b!652353 (= lt!303664 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18492 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652354 () Bool)

(declare-datatypes ((Unit!22306 0))(
  ( (Unit!22307) )
))
(declare-fun e!374452 () Unit!22306)

(declare-fun Unit!22308 () Unit!22306)

(assert (=> b!652354 (= e!374452 Unit!22308)))

(assert (=> b!652354 false))

(declare-fun res!423189 () Bool)

(declare-fun e!374454 () Bool)

(assert (=> start!59130 (=> (not res!423189) (not e!374454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59130 (= res!423189 (validMask!0 mask!3053))))

(assert (=> start!59130 e!374454))

(assert (=> start!59130 true))

(declare-fun array_inv!14266 (array!38586) Bool)

(assert (=> start!59130 (array_inv!14266 a!2986)))

(declare-fun b!652355 () Bool)

(declare-fun e!374450 () Bool)

(declare-fun e!374455 () Bool)

(assert (=> b!652355 (= e!374450 e!374455)))

(declare-fun res!423175 () Bool)

(assert (=> b!652355 (=> res!423175 e!374455)))

(assert (=> b!652355 (= res!423175 (or (bvsge (size!18856 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18856 a!2986)) (bvsge index!984 (size!18856 a!2986))))))

(declare-fun lt!303660 () array!38586)

(declare-datatypes ((List!12586 0))(
  ( (Nil!12583) (Cons!12582 (h!13627 (_ BitVec 64)) (t!18822 List!12586)) )
))
(declare-fun arrayNoDuplicates!0 (array!38586 (_ BitVec 32) List!12586) Bool)

(assert (=> b!652355 (arrayNoDuplicates!0 lt!303660 index!984 Nil!12583)))

(declare-fun lt!303650 () Unit!22306)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38586 (_ BitVec 32) (_ BitVec 32)) Unit!22306)

(assert (=> b!652355 (= lt!303650 (lemmaNoDuplicateFromThenFromBigger!0 lt!303660 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652355 (arrayNoDuplicates!0 lt!303660 #b00000000000000000000000000000000 Nil!12583)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!303655 () Unit!22306)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38586 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12586) Unit!22306)

(assert (=> b!652355 (= lt!303655 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12583))))

(declare-fun arrayContainsKey!0 (array!38586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652355 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303661 () Unit!22306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38586 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22306)

(assert (=> b!652355 (= lt!303661 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303660 (select (arr!18492 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374448 () Bool)

(assert (=> b!652355 e!374448))

(declare-fun res!423176 () Bool)

(assert (=> b!652355 (=> (not res!423176) (not e!374448))))

(assert (=> b!652355 (= res!423176 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) j!136))))

(declare-fun b!652356 () Bool)

(declare-fun e!374446 () Bool)

(assert (=> b!652356 (= e!374446 e!374450)))

(declare-fun res!423190 () Bool)

(assert (=> b!652356 (=> res!423190 e!374450)))

(assert (=> b!652356 (= res!423190 (bvsge index!984 j!136))))

(declare-fun lt!303652 () Unit!22306)

(declare-fun e!374440 () Unit!22306)

(assert (=> b!652356 (= lt!303652 e!374440)))

(declare-fun c!74956 () Bool)

(assert (=> b!652356 (= c!74956 (bvslt j!136 index!984))))

(declare-fun b!652357 () Bool)

(assert (=> b!652357 (= e!374448 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) index!984))))

(declare-fun b!652358 () Bool)

(declare-fun e!374442 () Bool)

(assert (=> b!652358 (= e!374442 e!374444)))

(declare-fun res!423177 () Bool)

(assert (=> b!652358 (=> (not res!423177) (not e!374444))))

(assert (=> b!652358 (= res!423177 (= (select (store (arr!18492 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652358 (= lt!303660 (array!38587 (store (arr!18492 a!2986) i!1108 k!1786) (size!18856 a!2986)))))

(declare-fun b!652359 () Bool)

(assert (=> b!652359 (= e!374454 e!374442)))

(declare-fun res!423192 () Bool)

(assert (=> b!652359 (=> (not res!423192) (not e!374442))))

(declare-fun lt!303656 () SeekEntryResult!6939)

(assert (=> b!652359 (= res!423192 (or (= lt!303656 (MissingZero!6939 i!1108)) (= lt!303656 (MissingVacant!6939 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38586 (_ BitVec 32)) SeekEntryResult!6939)

(assert (=> b!652359 (= lt!303656 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!652360 () Bool)

(declare-fun res!423186 () Bool)

(assert (=> b!652360 (=> (not res!423186) (not e!374442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38586 (_ BitVec 32)) Bool)

(assert (=> b!652360 (= res!423186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652361 () Bool)

(declare-fun e!374447 () Bool)

(declare-fun lt!303663 () SeekEntryResult!6939)

(assert (=> b!652361 (= e!374447 (= lt!303664 lt!303663))))

(declare-fun b!652362 () Bool)

(declare-fun e!374449 () Bool)

(declare-fun e!374441 () Bool)

(assert (=> b!652362 (= e!374449 e!374441)))

(declare-fun res!423179 () Bool)

(assert (=> b!652362 (=> (not res!423179) (not e!374441))))

(assert (=> b!652362 (= res!423179 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) j!136))))

(declare-fun b!652363 () Bool)

(declare-fun res!423188 () Bool)

(assert (=> b!652363 (=> (not res!423188) (not e!374442))))

(assert (=> b!652363 (= res!423188 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12583))))

(declare-fun b!652364 () Bool)

(declare-fun e!374445 () Bool)

(assert (=> b!652364 (= e!374445 e!374446)))

(declare-fun res!423187 () Bool)

(assert (=> b!652364 (=> res!423187 e!374446)))

(declare-fun lt!303657 () (_ BitVec 64))

(declare-fun lt!303658 () (_ BitVec 64))

(assert (=> b!652364 (= res!423187 (or (not (= (select (arr!18492 a!2986) j!136) lt!303658)) (not (= (select (arr!18492 a!2986) j!136) lt!303657))))))

(declare-fun e!374451 () Bool)

(assert (=> b!652364 e!374451))

(declare-fun res!423184 () Bool)

(assert (=> b!652364 (=> (not res!423184) (not e!374451))))

(assert (=> b!652364 (= res!423184 (= lt!303657 (select (arr!18492 a!2986) j!136)))))

(assert (=> b!652364 (= lt!303657 (select (store (arr!18492 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!652365 () Bool)

(declare-fun res!423180 () Bool)

(assert (=> b!652365 (=> (not res!423180) (not e!374454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652365 (= res!423180 (validKeyInArray!0 (select (arr!18492 a!2986) j!136)))))

(declare-fun b!652366 () Bool)

(assert (=> b!652366 (= e!374441 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) index!984))))

(declare-fun b!652367 () Bool)

(declare-fun res!423178 () Bool)

(assert (=> b!652367 (=> (not res!423178) (not e!374454))))

(assert (=> b!652367 (= res!423178 (validKeyInArray!0 k!1786))))

(declare-fun b!652368 () Bool)

(assert (=> b!652368 (= e!374451 e!374449)))

(declare-fun res!423185 () Bool)

(assert (=> b!652368 (=> res!423185 e!374449)))

(assert (=> b!652368 (= res!423185 (or (not (= (select (arr!18492 a!2986) j!136) lt!303658)) (not (= (select (arr!18492 a!2986) j!136) lt!303657)) (bvsge j!136 index!984)))))

(declare-fun b!652369 () Bool)

(assert (=> b!652369 (= e!374443 (not e!374445))))

(declare-fun res!423191 () Bool)

(assert (=> b!652369 (=> res!423191 e!374445)))

(declare-fun lt!303665 () SeekEntryResult!6939)

(assert (=> b!652369 (= res!423191 (not (= lt!303665 (Found!6939 index!984))))))

(declare-fun lt!303649 () Unit!22306)

(assert (=> b!652369 (= lt!303649 e!374452)))

(declare-fun c!74957 () Bool)

(assert (=> b!652369 (= c!74957 (= lt!303665 Undefined!6939))))

(assert (=> b!652369 (= lt!303665 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303658 lt!303660 mask!3053))))

(assert (=> b!652369 e!374447))

(declare-fun res!423181 () Bool)

(assert (=> b!652369 (=> (not res!423181) (not e!374447))))

(declare-fun lt!303654 () (_ BitVec 32))

(assert (=> b!652369 (= res!423181 (= lt!303663 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 lt!303658 lt!303660 mask!3053)))))

(assert (=> b!652369 (= lt!303663 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 (select (arr!18492 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652369 (= lt!303658 (select (store (arr!18492 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303651 () Unit!22306)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38586 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22306)

(assert (=> b!652369 (= lt!303651 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652369 (= lt!303654 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652370 () Bool)

(declare-fun res!423183 () Bool)

(assert (=> b!652370 (=> (not res!423183) (not e!374442))))

(assert (=> b!652370 (= res!423183 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18492 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652371 () Bool)

(declare-fun res!423182 () Bool)

(assert (=> b!652371 (=> (not res!423182) (not e!374454))))

(assert (=> b!652371 (= res!423182 (and (= (size!18856 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18856 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18856 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652372 () Bool)

(declare-fun Unit!22309 () Unit!22306)

(assert (=> b!652372 (= e!374452 Unit!22309)))

(declare-fun b!652373 () Bool)

(declare-fun Unit!22310 () Unit!22306)

(assert (=> b!652373 (= e!374440 Unit!22310)))

(declare-fun b!652374 () Bool)

(declare-fun Unit!22311 () Unit!22306)

(assert (=> b!652374 (= e!374440 Unit!22311)))

(declare-fun lt!303653 () Unit!22306)

(assert (=> b!652374 (= lt!303653 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303660 (select (arr!18492 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652374 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303666 () Unit!22306)

(assert (=> b!652374 (= lt!303666 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12583))))

(assert (=> b!652374 (arrayNoDuplicates!0 lt!303660 #b00000000000000000000000000000000 Nil!12583)))

(declare-fun lt!303662 () Unit!22306)

(assert (=> b!652374 (= lt!303662 (lemmaNoDuplicateFromThenFromBigger!0 lt!303660 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652374 (arrayNoDuplicates!0 lt!303660 j!136 Nil!12583)))

(declare-fun lt!303659 () Unit!22306)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38586 (_ BitVec 64) (_ BitVec 32) List!12586) Unit!22306)

(assert (=> b!652374 (= lt!303659 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303660 (select (arr!18492 a!2986) j!136) j!136 Nil!12583))))

(assert (=> b!652374 false))

(declare-fun b!652375 () Bool)

(declare-fun noDuplicate!436 (List!12586) Bool)

(assert (=> b!652375 (= e!374455 (noDuplicate!436 Nil!12583))))

(declare-fun b!652376 () Bool)

(declare-fun res!423194 () Bool)

(assert (=> b!652376 (=> (not res!423194) (not e!374454))))

(assert (=> b!652376 (= res!423194 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!59130 res!423189) b!652371))

(assert (= (and b!652371 res!423182) b!652365))

(assert (= (and b!652365 res!423180) b!652367))

(assert (= (and b!652367 res!423178) b!652376))

(assert (= (and b!652376 res!423194) b!652359))

(assert (= (and b!652359 res!423192) b!652360))

(assert (= (and b!652360 res!423186) b!652363))

(assert (= (and b!652363 res!423188) b!652370))

(assert (= (and b!652370 res!423183) b!652358))

(assert (= (and b!652358 res!423177) b!652353))

(assert (= (and b!652353 res!423193) b!652369))

(assert (= (and b!652369 res!423181) b!652361))

(assert (= (and b!652369 c!74957) b!652354))

(assert (= (and b!652369 (not c!74957)) b!652372))

(assert (= (and b!652369 (not res!423191)) b!652364))

(assert (= (and b!652364 res!423184) b!652368))

(assert (= (and b!652368 (not res!423185)) b!652362))

(assert (= (and b!652362 res!423179) b!652366))

(assert (= (and b!652364 (not res!423187)) b!652356))

(assert (= (and b!652356 c!74956) b!652374))

(assert (= (and b!652356 (not c!74956)) b!652373))

(assert (= (and b!652356 (not res!423190)) b!652355))

(assert (= (and b!652355 res!423176) b!652357))

(assert (= (and b!652355 (not res!423175)) b!652375))

(declare-fun m!625563 () Bool)

(assert (=> b!652362 m!625563))

(assert (=> b!652362 m!625563))

(declare-fun m!625565 () Bool)

(assert (=> b!652362 m!625565))

(assert (=> b!652365 m!625563))

(assert (=> b!652365 m!625563))

(declare-fun m!625567 () Bool)

(assert (=> b!652365 m!625567))

(assert (=> b!652355 m!625563))

(declare-fun m!625569 () Bool)

(assert (=> b!652355 m!625569))

(assert (=> b!652355 m!625563))

(declare-fun m!625571 () Bool)

(assert (=> b!652355 m!625571))

(assert (=> b!652355 m!625563))

(assert (=> b!652355 m!625565))

(declare-fun m!625573 () Bool)

(assert (=> b!652355 m!625573))

(declare-fun m!625575 () Bool)

(assert (=> b!652355 m!625575))

(assert (=> b!652355 m!625563))

(declare-fun m!625577 () Bool)

(assert (=> b!652355 m!625577))

(declare-fun m!625579 () Bool)

(assert (=> b!652355 m!625579))

(assert (=> b!652366 m!625563))

(assert (=> b!652366 m!625563))

(declare-fun m!625581 () Bool)

(assert (=> b!652366 m!625581))

(declare-fun m!625583 () Bool)

(assert (=> b!652370 m!625583))

(declare-fun m!625585 () Bool)

(assert (=> b!652363 m!625585))

(assert (=> b!652368 m!625563))

(assert (=> b!652357 m!625563))

(assert (=> b!652357 m!625563))

(assert (=> b!652357 m!625581))

(declare-fun m!625587 () Bool)

(assert (=> b!652358 m!625587))

(declare-fun m!625589 () Bool)

(assert (=> b!652358 m!625589))

(declare-fun m!625591 () Bool)

(assert (=> b!652353 m!625591))

(assert (=> b!652353 m!625563))

(assert (=> b!652353 m!625563))

(declare-fun m!625593 () Bool)

(assert (=> b!652353 m!625593))

(declare-fun m!625595 () Bool)

(assert (=> b!652374 m!625595))

(assert (=> b!652374 m!625563))

(assert (=> b!652374 m!625563))

(declare-fun m!625597 () Bool)

(assert (=> b!652374 m!625597))

(assert (=> b!652374 m!625575))

(declare-fun m!625599 () Bool)

(assert (=> b!652374 m!625599))

(assert (=> b!652374 m!625579))

(assert (=> b!652374 m!625563))

(declare-fun m!625601 () Bool)

(assert (=> b!652374 m!625601))

(assert (=> b!652374 m!625563))

(declare-fun m!625603 () Bool)

(assert (=> b!652374 m!625603))

(declare-fun m!625605 () Bool)

(assert (=> b!652360 m!625605))

(declare-fun m!625607 () Bool)

(assert (=> b!652376 m!625607))

(assert (=> b!652364 m!625563))

(assert (=> b!652364 m!625587))

(declare-fun m!625609 () Bool)

(assert (=> b!652364 m!625609))

(declare-fun m!625611 () Bool)

(assert (=> b!652367 m!625611))

(declare-fun m!625613 () Bool)

(assert (=> b!652375 m!625613))

(declare-fun m!625615 () Bool)

(assert (=> b!652369 m!625615))

(declare-fun m!625617 () Bool)

(assert (=> b!652369 m!625617))

(declare-fun m!625619 () Bool)

(assert (=> b!652369 m!625619))

(assert (=> b!652369 m!625563))

(assert (=> b!652369 m!625587))

(declare-fun m!625621 () Bool)

(assert (=> b!652369 m!625621))

(assert (=> b!652369 m!625563))

(declare-fun m!625623 () Bool)

(assert (=> b!652369 m!625623))

(declare-fun m!625625 () Bool)

(assert (=> b!652369 m!625625))

(declare-fun m!625627 () Bool)

(assert (=> start!59130 m!625627))

(declare-fun m!625629 () Bool)

(assert (=> start!59130 m!625629))

(declare-fun m!625631 () Bool)

(assert (=> b!652359 m!625631))

(push 1)

(assert (not b!652376))

(assert (not b!652375))

(assert (not b!652363))

(assert (not b!652355))

(assert (not b!652359))

(assert (not b!652362))

(assert (not b!652369))

(assert (not b!652365))

(assert (not b!652357))

(assert (not b!652353))

(assert (not b!652366))

(assert (not b!652367))

(assert (not b!652374))

(assert (not b!652360))

(assert (not start!59130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92111 () Bool)

(declare-fun res!423328 () Bool)

(declare-fun e!374589 () Bool)

(assert (=> d!92111 (=> res!423328 e!374589)))

(assert (=> d!92111 (= res!423328 (= (select (arr!18492 lt!303660) j!136) (select (arr!18492 a!2986) j!136)))))

(assert (=> d!92111 (= (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) j!136) e!374589)))

(declare-fun b!652582 () Bool)

(declare-fun e!374590 () Bool)

(assert (=> b!652582 (= e!374589 e!374590)))

(declare-fun res!423329 () Bool)

(assert (=> b!652582 (=> (not res!423329) (not e!374590))))

(assert (=> b!652582 (= res!423329 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18856 lt!303660)))))

(declare-fun b!652583 () Bool)

(assert (=> b!652583 (= e!374590 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92111 (not res!423328)) b!652582))

(assert (= (and b!652582 res!423329) b!652583))

(declare-fun m!625825 () Bool)

(assert (=> d!92111 m!625825))

(assert (=> b!652583 m!625563))

(declare-fun m!625827 () Bool)

(assert (=> b!652583 m!625827))

(assert (=> b!652362 d!92111))

(declare-fun bm!33780 () Bool)

(declare-fun call!33783 () Bool)

(assert (=> bm!33780 (= call!33783 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!652635 () Bool)

(declare-fun e!374627 () Bool)

(assert (=> b!652635 (= e!374627 call!33783)))

(declare-fun b!652636 () Bool)

(declare-fun e!374629 () Bool)

(assert (=> b!652636 (= e!374629 call!33783)))

(declare-fun b!652637 () Bool)

(declare-fun e!374628 () Bool)

(assert (=> b!652637 (= e!374628 e!374629)))

(declare-fun c!75009 () Bool)

(assert (=> b!652637 (= c!75009 (validKeyInArray!0 (select (arr!18492 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92119 () Bool)

(declare-fun res!423352 () Bool)

(assert (=> d!92119 (=> res!423352 e!374628)))

(assert (=> d!92119 (= res!423352 (bvsge #b00000000000000000000000000000000 (size!18856 a!2986)))))

(assert (=> d!92119 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!374628)))

(declare-fun b!652638 () Bool)

(assert (=> b!652638 (= e!374629 e!374627)))

(declare-fun lt!303820 () (_ BitVec 64))

(assert (=> b!652638 (= lt!303820 (select (arr!18492 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!303819 () Unit!22306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38586 (_ BitVec 64) (_ BitVec 32)) Unit!22306)

(assert (=> b!652638 (= lt!303819 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!303820 #b00000000000000000000000000000000))))

(assert (=> b!652638 (arrayContainsKey!0 a!2986 lt!303820 #b00000000000000000000000000000000)))

(declare-fun lt!303818 () Unit!22306)

(assert (=> b!652638 (= lt!303818 lt!303819)))

(declare-fun res!423351 () Bool)

(assert (=> b!652638 (= res!423351 (= (seekEntryOrOpen!0 (select (arr!18492 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6939 #b00000000000000000000000000000000)))))

(assert (=> b!652638 (=> (not res!423351) (not e!374627))))

(assert (= (and d!92119 (not res!423352)) b!652637))

(assert (= (and b!652637 c!75009) b!652638))

(assert (= (and b!652637 (not c!75009)) b!652636))

(assert (= (and b!652638 res!423351) b!652635))

(assert (= (or b!652635 b!652636) bm!33780))

(declare-fun m!625861 () Bool)

(assert (=> bm!33780 m!625861))

(declare-fun m!625863 () Bool)

(assert (=> b!652637 m!625863))

(assert (=> b!652637 m!625863))

(declare-fun m!625865 () Bool)

(assert (=> b!652637 m!625865))

(assert (=> b!652638 m!625863))

(declare-fun m!625867 () Bool)

(assert (=> b!652638 m!625867))

(declare-fun m!625869 () Bool)

(assert (=> b!652638 m!625869))

(assert (=> b!652638 m!625863))

(declare-fun m!625871 () Bool)

(assert (=> b!652638 m!625871))

(assert (=> b!652360 d!92119))

(declare-fun d!92131 () Bool)

(assert (=> d!92131 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59130 d!92131))

(declare-fun d!92147 () Bool)

(assert (=> d!92147 (= (array_inv!14266 a!2986) (bvsge (size!18856 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59130 d!92147))

(declare-fun b!652732 () Bool)

(declare-fun c!75041 () Bool)

(declare-fun lt!303867 () (_ BitVec 64))

(assert (=> b!652732 (= c!75041 (= lt!303867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374696 () SeekEntryResult!6939)

(declare-fun e!374694 () SeekEntryResult!6939)

(assert (=> b!652732 (= e!374696 e!374694)))

(declare-fun b!652733 () Bool)

(declare-fun e!374695 () SeekEntryResult!6939)

(assert (=> b!652733 (= e!374695 e!374696)))

(declare-fun lt!303866 () SeekEntryResult!6939)

(assert (=> b!652733 (= lt!303867 (select (arr!18492 a!2986) (index!30110 lt!303866)))))

(declare-fun c!75039 () Bool)

(assert (=> b!652733 (= c!75039 (= lt!303867 k!1786))))

(declare-fun b!652735 () Bool)

(assert (=> b!652735 (= e!374694 (MissingZero!6939 (index!30110 lt!303866)))))

(declare-fun b!652736 () Bool)

(assert (=> b!652736 (= e!374695 Undefined!6939)))

(declare-fun b!652737 () Bool)

(assert (=> b!652737 (= e!374696 (Found!6939 (index!30110 lt!303866)))))

(declare-fun d!92149 () Bool)

(declare-fun lt!303865 () SeekEntryResult!6939)

(assert (=> d!92149 (and (or (is-Undefined!6939 lt!303865) (not (is-Found!6939 lt!303865)) (and (bvsge (index!30109 lt!303865) #b00000000000000000000000000000000) (bvslt (index!30109 lt!303865) (size!18856 a!2986)))) (or (is-Undefined!6939 lt!303865) (is-Found!6939 lt!303865) (not (is-MissingZero!6939 lt!303865)) (and (bvsge (index!30108 lt!303865) #b00000000000000000000000000000000) (bvslt (index!30108 lt!303865) (size!18856 a!2986)))) (or (is-Undefined!6939 lt!303865) (is-Found!6939 lt!303865) (is-MissingZero!6939 lt!303865) (not (is-MissingVacant!6939 lt!303865)) (and (bvsge (index!30111 lt!303865) #b00000000000000000000000000000000) (bvslt (index!30111 lt!303865) (size!18856 a!2986)))) (or (is-Undefined!6939 lt!303865) (ite (is-Found!6939 lt!303865) (= (select (arr!18492 a!2986) (index!30109 lt!303865)) k!1786) (ite (is-MissingZero!6939 lt!303865) (= (select (arr!18492 a!2986) (index!30108 lt!303865)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6939 lt!303865) (= (select (arr!18492 a!2986) (index!30111 lt!303865)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92149 (= lt!303865 e!374695)))

(declare-fun c!75040 () Bool)

(assert (=> d!92149 (= c!75040 (and (is-Intermediate!6939 lt!303866) (undefined!7751 lt!303866)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38586 (_ BitVec 32)) SeekEntryResult!6939)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92149 (= lt!303866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92149 (validMask!0 mask!3053)))

(assert (=> d!92149 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!303865)))

(declare-fun b!652734 () Bool)

(assert (=> b!652734 (= e!374694 (seekKeyOrZeroReturnVacant!0 (x!58923 lt!303866) (index!30110 lt!303866) (index!30110 lt!303866) k!1786 a!2986 mask!3053))))

(assert (= (and d!92149 c!75040) b!652736))

(assert (= (and d!92149 (not c!75040)) b!652733))

(assert (= (and b!652733 c!75039) b!652737))

(assert (= (and b!652733 (not c!75039)) b!652732))

(assert (= (and b!652732 c!75041) b!652735))

(assert (= (and b!652732 (not c!75041)) b!652734))

(declare-fun m!625963 () Bool)

(assert (=> b!652733 m!625963))

(declare-fun m!625965 () Bool)

(assert (=> d!92149 m!625965))

(declare-fun m!625967 () Bool)

(assert (=> d!92149 m!625967))

(assert (=> d!92149 m!625965))

(assert (=> d!92149 m!625627))

(declare-fun m!625969 () Bool)

(assert (=> d!92149 m!625969))

(declare-fun m!625971 () Bool)

(assert (=> d!92149 m!625971))

(declare-fun m!625973 () Bool)

(assert (=> d!92149 m!625973))

(declare-fun m!625975 () Bool)

(assert (=> b!652734 m!625975))

(assert (=> b!652359 d!92149))

(declare-fun e!374714 () SeekEntryResult!6939)

(declare-fun b!652762 () Bool)

(assert (=> b!652762 (= e!374714 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303654 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!303658 lt!303660 mask!3053))))

(declare-fun b!652763 () Bool)

(declare-fun e!374713 () SeekEntryResult!6939)

(assert (=> b!652763 (= e!374713 Undefined!6939)))

(declare-fun b!652764 () Bool)

(declare-fun e!374712 () SeekEntryResult!6939)

(assert (=> b!652764 (= e!374712 (Found!6939 lt!303654))))

(declare-fun lt!303881 () SeekEntryResult!6939)

(declare-fun d!92181 () Bool)

(assert (=> d!92181 (and (or (is-Undefined!6939 lt!303881) (not (is-Found!6939 lt!303881)) (and (bvsge (index!30109 lt!303881) #b00000000000000000000000000000000) (bvslt (index!30109 lt!303881) (size!18856 lt!303660)))) (or (is-Undefined!6939 lt!303881) (is-Found!6939 lt!303881) (not (is-MissingVacant!6939 lt!303881)) (not (= (index!30111 lt!303881) vacantSpotIndex!68)) (and (bvsge (index!30111 lt!303881) #b00000000000000000000000000000000) (bvslt (index!30111 lt!303881) (size!18856 lt!303660)))) (or (is-Undefined!6939 lt!303881) (ite (is-Found!6939 lt!303881) (= (select (arr!18492 lt!303660) (index!30109 lt!303881)) lt!303658) (and (is-MissingVacant!6939 lt!303881) (= (index!30111 lt!303881) vacantSpotIndex!68) (= (select (arr!18492 lt!303660) (index!30111 lt!303881)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92181 (= lt!303881 e!374713)))

(declare-fun c!75052 () Bool)

(assert (=> d!92181 (= c!75052 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!303882 () (_ BitVec 64))

(assert (=> d!92181 (= lt!303882 (select (arr!18492 lt!303660) lt!303654))))

(assert (=> d!92181 (validMask!0 mask!3053)))

(assert (=> d!92181 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 lt!303658 lt!303660 mask!3053) lt!303881)))

(declare-fun b!652765 () Bool)

(declare-fun c!75053 () Bool)

(assert (=> b!652765 (= c!75053 (= lt!303882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652765 (= e!374712 e!374714)))

(declare-fun b!652766 () Bool)

(assert (=> b!652766 (= e!374714 (MissingVacant!6939 vacantSpotIndex!68))))

(declare-fun b!652767 () Bool)

(assert (=> b!652767 (= e!374713 e!374712)))

(declare-fun c!75051 () Bool)

(assert (=> b!652767 (= c!75051 (= lt!303882 lt!303658))))

(assert (= (and d!92181 c!75052) b!652763))

(assert (= (and d!92181 (not c!75052)) b!652767))

(assert (= (and b!652767 c!75051) b!652764))

(assert (= (and b!652767 (not c!75051)) b!652765))

(assert (= (and b!652765 c!75053) b!652766))

(assert (= (and b!652765 (not c!75053)) b!652762))

(declare-fun m!625989 () Bool)

(assert (=> b!652762 m!625989))

(assert (=> b!652762 m!625989))

(declare-fun m!625991 () Bool)

(assert (=> b!652762 m!625991))

(declare-fun m!625993 () Bool)

(assert (=> d!92181 m!625993))

(declare-fun m!625995 () Bool)

(assert (=> d!92181 m!625995))

(declare-fun m!625997 () Bool)

(assert (=> d!92181 m!625997))

(assert (=> d!92181 m!625627))

(assert (=> b!652369 d!92181))

(declare-fun d!92189 () Bool)

(declare-fun lt!303885 () (_ BitVec 32))

(assert (=> d!92189 (and (bvsge lt!303885 #b00000000000000000000000000000000) (bvslt lt!303885 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92189 (= lt!303885 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92189 (validMask!0 mask!3053)))

(assert (=> d!92189 (= (nextIndex!0 index!984 x!910 mask!3053) lt!303885)))

(declare-fun bs!19455 () Bool)

(assert (= bs!19455 d!92189))

(declare-fun m!626003 () Bool)

(assert (=> bs!19455 m!626003))

(assert (=> bs!19455 m!625627))

(assert (=> b!652369 d!92189))

(declare-fun e!374723 () SeekEntryResult!6939)

(declare-fun b!652774 () Bool)

(assert (=> b!652774 (= e!374723 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303654 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18492 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652775 () Bool)

(declare-fun e!374722 () SeekEntryResult!6939)

(assert (=> b!652775 (= e!374722 Undefined!6939)))

(declare-fun b!652776 () Bool)

(declare-fun e!374721 () SeekEntryResult!6939)

(assert (=> b!652776 (= e!374721 (Found!6939 lt!303654))))

(declare-fun d!92195 () Bool)

(declare-fun lt!303886 () SeekEntryResult!6939)

(assert (=> d!92195 (and (or (is-Undefined!6939 lt!303886) (not (is-Found!6939 lt!303886)) (and (bvsge (index!30109 lt!303886) #b00000000000000000000000000000000) (bvslt (index!30109 lt!303886) (size!18856 a!2986)))) (or (is-Undefined!6939 lt!303886) (is-Found!6939 lt!303886) (not (is-MissingVacant!6939 lt!303886)) (not (= (index!30111 lt!303886) vacantSpotIndex!68)) (and (bvsge (index!30111 lt!303886) #b00000000000000000000000000000000) (bvslt (index!30111 lt!303886) (size!18856 a!2986)))) (or (is-Undefined!6939 lt!303886) (ite (is-Found!6939 lt!303886) (= (select (arr!18492 a!2986) (index!30109 lt!303886)) (select (arr!18492 a!2986) j!136)) (and (is-MissingVacant!6939 lt!303886) (= (index!30111 lt!303886) vacantSpotIndex!68) (= (select (arr!18492 a!2986) (index!30111 lt!303886)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92195 (= lt!303886 e!374722)))

(declare-fun c!75055 () Bool)

(assert (=> d!92195 (= c!75055 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!303887 () (_ BitVec 64))

(assert (=> d!92195 (= lt!303887 (select (arr!18492 a!2986) lt!303654))))

(assert (=> d!92195 (validMask!0 mask!3053)))

(assert (=> d!92195 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 (select (arr!18492 a!2986) j!136) a!2986 mask!3053) lt!303886)))

(declare-fun b!652777 () Bool)

(declare-fun c!75056 () Bool)

(assert (=> b!652777 (= c!75056 (= lt!303887 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652777 (= e!374721 e!374723)))

(declare-fun b!652778 () Bool)

(assert (=> b!652778 (= e!374723 (MissingVacant!6939 vacantSpotIndex!68))))

(declare-fun b!652779 () Bool)

(assert (=> b!652779 (= e!374722 e!374721)))

(declare-fun c!75054 () Bool)

(assert (=> b!652779 (= c!75054 (= lt!303887 (select (arr!18492 a!2986) j!136)))))

(assert (= (and d!92195 c!75055) b!652775))

(assert (= (and d!92195 (not c!75055)) b!652779))

(assert (= (and b!652779 c!75054) b!652776))

(assert (= (and b!652779 (not c!75054)) b!652777))

(assert (= (and b!652777 c!75056) b!652778))

(assert (= (and b!652777 (not c!75056)) b!652774))

(assert (=> b!652774 m!625989))

(assert (=> b!652774 m!625989))

(assert (=> b!652774 m!625563))

(declare-fun m!626005 () Bool)

(assert (=> b!652774 m!626005))

(declare-fun m!626007 () Bool)

(assert (=> d!92195 m!626007))

(declare-fun m!626009 () Bool)

(assert (=> d!92195 m!626009))

(declare-fun m!626011 () Bool)

(assert (=> d!92195 m!626011))

(assert (=> d!92195 m!625627))

(assert (=> b!652369 d!92195))

(declare-fun e!374726 () SeekEntryResult!6939)

(declare-fun b!652780 () Bool)

(assert (=> b!652780 (= e!374726 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!303658 lt!303660 mask!3053))))

(declare-fun b!652781 () Bool)

(declare-fun e!374725 () SeekEntryResult!6939)

(assert (=> b!652781 (= e!374725 Undefined!6939)))

(declare-fun b!652782 () Bool)

(declare-fun e!374724 () SeekEntryResult!6939)

(assert (=> b!652782 (= e!374724 (Found!6939 index!984))))

(declare-fun lt!303888 () SeekEntryResult!6939)

(declare-fun d!92197 () Bool)

(assert (=> d!92197 (and (or (is-Undefined!6939 lt!303888) (not (is-Found!6939 lt!303888)) (and (bvsge (index!30109 lt!303888) #b00000000000000000000000000000000) (bvslt (index!30109 lt!303888) (size!18856 lt!303660)))) (or (is-Undefined!6939 lt!303888) (is-Found!6939 lt!303888) (not (is-MissingVacant!6939 lt!303888)) (not (= (index!30111 lt!303888) vacantSpotIndex!68)) (and (bvsge (index!30111 lt!303888) #b00000000000000000000000000000000) (bvslt (index!30111 lt!303888) (size!18856 lt!303660)))) (or (is-Undefined!6939 lt!303888) (ite (is-Found!6939 lt!303888) (= (select (arr!18492 lt!303660) (index!30109 lt!303888)) lt!303658) (and (is-MissingVacant!6939 lt!303888) (= (index!30111 lt!303888) vacantSpotIndex!68) (= (select (arr!18492 lt!303660) (index!30111 lt!303888)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92197 (= lt!303888 e!374725)))

(declare-fun c!75058 () Bool)

(assert (=> d!92197 (= c!75058 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!303889 () (_ BitVec 64))

(assert (=> d!92197 (= lt!303889 (select (arr!18492 lt!303660) index!984))))

(assert (=> d!92197 (validMask!0 mask!3053)))

(assert (=> d!92197 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303658 lt!303660 mask!3053) lt!303888)))

(declare-fun b!652783 () Bool)

(declare-fun c!75059 () Bool)

(assert (=> b!652783 (= c!75059 (= lt!303889 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652783 (= e!374724 e!374726)))

(declare-fun b!652784 () Bool)

(assert (=> b!652784 (= e!374726 (MissingVacant!6939 vacantSpotIndex!68))))

(declare-fun b!652785 () Bool)

(assert (=> b!652785 (= e!374725 e!374724)))

(declare-fun c!75057 () Bool)

(assert (=> b!652785 (= c!75057 (= lt!303889 lt!303658))))

(assert (= (and d!92197 c!75058) b!652781))

(assert (= (and d!92197 (not c!75058)) b!652785))

(assert (= (and b!652785 c!75057) b!652782))

(assert (= (and b!652785 (not c!75057)) b!652783))

(assert (= (and b!652783 c!75059) b!652784))

(assert (= (and b!652783 (not c!75059)) b!652780))

(assert (=> b!652780 m!625615))

(assert (=> b!652780 m!625615))

(declare-fun m!626013 () Bool)

(assert (=> b!652780 m!626013))

(declare-fun m!626015 () Bool)

(assert (=> d!92197 m!626015))

(declare-fun m!626017 () Bool)

(assert (=> d!92197 m!626017))

(declare-fun m!626019 () Bool)

(assert (=> d!92197 m!626019))

(assert (=> d!92197 m!625627))

(assert (=> b!652369 d!92197))

(declare-fun d!92199 () Bool)

(declare-fun e!374747 () Bool)

(assert (=> d!92199 e!374747))

(declare-fun res!423416 () Bool)

(assert (=> d!92199 (=> (not res!423416) (not e!374747))))

(assert (=> d!92199 (= res!423416 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18856 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18856 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18856 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18856 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18856 a!2986))))))

(declare-fun lt!303898 () Unit!22306)

(declare-fun choose!9 (array!38586 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22306)

(assert (=> d!92199 (= lt!303898 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92199 (validMask!0 mask!3053)))

(assert (=> d!92199 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 mask!3053) lt!303898)))

(declare-fun b!652810 () Bool)

(assert (=> b!652810 (= e!374747 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 (select (arr!18492 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303654 vacantSpotIndex!68 (select (store (arr!18492 a!2986) i!1108 k!1786) j!136) (array!38587 (store (arr!18492 a!2986) i!1108 k!1786) (size!18856 a!2986)) mask!3053)))))

(assert (= (and d!92199 res!423416) b!652810))

(declare-fun m!626043 () Bool)

(assert (=> d!92199 m!626043))

(assert (=> d!92199 m!625627))

(assert (=> b!652810 m!625563))

(assert (=> b!652810 m!625623))

(assert (=> b!652810 m!625563))

(assert (=> b!652810 m!625587))

(assert (=> b!652810 m!625617))

(declare-fun m!626045 () Bool)

(assert (=> b!652810 m!626045))

(assert (=> b!652810 m!625617))

(assert (=> b!652369 d!92199))

(declare-fun d!92211 () Bool)

(declare-fun res!423417 () Bool)

(declare-fun e!374748 () Bool)

(assert (=> d!92211 (=> res!423417 e!374748)))

(assert (=> d!92211 (= res!423417 (= (select (arr!18492 lt!303660) index!984) (select (arr!18492 a!2986) j!136)))))

(assert (=> d!92211 (= (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) index!984) e!374748)))

(declare-fun b!652811 () Bool)

(declare-fun e!374749 () Bool)

(assert (=> b!652811 (= e!374748 e!374749)))

(declare-fun res!423418 () Bool)

(assert (=> b!652811 (=> (not res!423418) (not e!374749))))

(assert (=> b!652811 (= res!423418 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18856 lt!303660)))))

(declare-fun b!652812 () Bool)

(assert (=> b!652812 (= e!374749 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92211 (not res!423417)) b!652811))

(assert (= (and b!652811 res!423418) b!652812))

(assert (=> d!92211 m!626019))

(assert (=> b!652812 m!625563))

(declare-fun m!626047 () Bool)

(assert (=> b!652812 m!626047))

(assert (=> b!652357 d!92211))

(declare-fun d!92213 () Bool)

(assert (=> d!92213 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!652367 d!92213))

(assert (=> b!652355 d!92111))

(declare-fun d!92215 () Bool)

(assert (=> d!92215 (arrayContainsKey!0 lt!303660 (select (arr!18492 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303906 () Unit!22306)

(declare-fun choose!114 (array!38586 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22306)

(assert (=> d!92215 (= lt!303906 (choose!114 lt!303660 (select (arr!18492 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92215 (bvsge j!136 #b00000000000000000000000000000000)))

