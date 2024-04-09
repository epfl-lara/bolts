; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56098 () Bool)

(assert start!56098)

(declare-fun b!618464 () Bool)

(declare-fun res!398572 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618464 (= res!398572 (bvsge j!136 index!984))))

(declare-fun e!354690 () Bool)

(assert (=> b!618464 (=> res!398572 e!354690)))

(declare-fun e!354686 () Bool)

(assert (=> b!618464 (= e!354686 e!354690)))

(declare-fun b!618465 () Bool)

(declare-fun res!398571 () Bool)

(declare-fun e!354683 () Bool)

(assert (=> b!618465 (=> (not res!398571) (not e!354683))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37531 0))(
  ( (array!37532 (arr!18008 (Array (_ BitVec 32) (_ BitVec 64))) (size!18372 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37531)

(assert (=> b!618465 (= res!398571 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18008 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618466 () Bool)

(declare-datatypes ((Unit!20370 0))(
  ( (Unit!20371) )
))
(declare-fun e!354681 () Unit!20370)

(declare-fun Unit!20372 () Unit!20370)

(assert (=> b!618466 (= e!354681 Unit!20372)))

(assert (=> b!618466 false))

(declare-fun b!618467 () Bool)

(declare-fun e!354677 () Bool)

(declare-fun e!354687 () Bool)

(assert (=> b!618467 (= e!354677 e!354687)))

(declare-fun res!398566 () Bool)

(assert (=> b!618467 (=> (not res!398566) (not e!354687))))

(declare-datatypes ((SeekEntryResult!6455 0))(
  ( (MissingZero!6455 (index!28103 (_ BitVec 32))) (Found!6455 (index!28104 (_ BitVec 32))) (Intermediate!6455 (undefined!7267 Bool) (index!28105 (_ BitVec 32)) (x!56912 (_ BitVec 32))) (Undefined!6455) (MissingVacant!6455 (index!28106 (_ BitVec 32))) )
))
(declare-fun lt!285261 () SeekEntryResult!6455)

(assert (=> b!618467 (= res!398566 (and (= lt!285261 (Found!6455 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18008 a!2986) index!984) (select (arr!18008 a!2986) j!136))) (not (= (select (arr!18008 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37531 (_ BitVec 32)) SeekEntryResult!6455)

(assert (=> b!618467 (= lt!285261 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18008 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618468 () Bool)

(declare-fun e!354678 () Unit!20370)

(declare-fun Unit!20373 () Unit!20370)

(assert (=> b!618468 (= e!354678 Unit!20373)))

(declare-fun b!618469 () Bool)

(declare-fun res!398574 () Bool)

(declare-fun e!354680 () Bool)

(assert (=> b!618469 (=> (not res!398574) (not e!354680))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618469 (= res!398574 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618470 () Bool)

(assert (=> b!618470 false))

(declare-fun lt!285273 () Unit!20370)

(declare-fun lt!285265 () array!37531)

(declare-datatypes ((List!12102 0))(
  ( (Nil!12099) (Cons!12098 (h!13143 (_ BitVec 64)) (t!18338 List!12102)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37531 (_ BitVec 64) (_ BitVec 32) List!12102) Unit!20370)

(assert (=> b!618470 (= lt!285273 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285265 (select (arr!18008 a!2986) j!136) j!136 Nil!12099))))

(declare-fun arrayNoDuplicates!0 (array!37531 (_ BitVec 32) List!12102) Bool)

(assert (=> b!618470 (arrayNoDuplicates!0 lt!285265 j!136 Nil!12099)))

(declare-fun lt!285266 () Unit!20370)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37531 (_ BitVec 32) (_ BitVec 32)) Unit!20370)

(assert (=> b!618470 (= lt!285266 (lemmaNoDuplicateFromThenFromBigger!0 lt!285265 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618470 (arrayNoDuplicates!0 lt!285265 #b00000000000000000000000000000000 Nil!12099)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!285272 () Unit!20370)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12102) Unit!20370)

(assert (=> b!618470 (= lt!285272 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12099))))

(assert (=> b!618470 (arrayContainsKey!0 lt!285265 (select (arr!18008 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285257 () Unit!20370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20370)

(assert (=> b!618470 (= lt!285257 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285265 (select (arr!18008 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20374 () Unit!20370)

(assert (=> b!618470 (= e!354678 Unit!20374)))

(declare-fun res!398568 () Bool)

(assert (=> start!56098 (=> (not res!398568) (not e!354680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56098 (= res!398568 (validMask!0 mask!3053))))

(assert (=> start!56098 e!354680))

(assert (=> start!56098 true))

(declare-fun array_inv!13782 (array!37531) Bool)

(assert (=> start!56098 (array_inv!13782 a!2986)))

(declare-fun b!618471 () Bool)

(declare-fun res!398567 () Bool)

(assert (=> b!618471 (=> (not res!398567) (not e!354680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618471 (= res!398567 (validKeyInArray!0 (select (arr!18008 a!2986) j!136)))))

(declare-fun b!618472 () Bool)

(declare-fun res!398582 () Bool)

(assert (=> b!618472 (=> (not res!398582) (not e!354680))))

(assert (=> b!618472 (= res!398582 (validKeyInArray!0 k!1786))))

(declare-fun b!618473 () Bool)

(declare-fun e!354688 () Bool)

(assert (=> b!618473 (= e!354688 true)))

(assert (=> b!618473 (= (select (store (arr!18008 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618474 () Bool)

(declare-fun res!398580 () Bool)

(assert (=> b!618474 (=> (not res!398580) (not e!354680))))

(assert (=> b!618474 (= res!398580 (and (= (size!18372 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18372 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18372 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618475 () Bool)

(declare-fun Unit!20375 () Unit!20370)

(assert (=> b!618475 (= e!354681 Unit!20375)))

(declare-fun b!618476 () Bool)

(declare-fun res!398578 () Bool)

(assert (=> b!618476 (=> (not res!398578) (not e!354683))))

(assert (=> b!618476 (= res!398578 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12099))))

(declare-fun b!618477 () Bool)

(declare-fun e!354685 () Bool)

(assert (=> b!618477 (= e!354685 (arrayContainsKey!0 lt!285265 (select (arr!18008 a!2986) j!136) index!984))))

(declare-fun e!354691 () Bool)

(declare-fun b!618478 () Bool)

(assert (=> b!618478 (= e!354691 (arrayContainsKey!0 lt!285265 (select (arr!18008 a!2986) j!136) index!984))))

(declare-fun res!398570 () Bool)

(declare-fun b!618479 () Bool)

(assert (=> b!618479 (= res!398570 (arrayContainsKey!0 lt!285265 (select (arr!18008 a!2986) j!136) j!136))))

(assert (=> b!618479 (=> (not res!398570) (not e!354685))))

(assert (=> b!618479 (= e!354690 e!354685)))

(declare-fun b!618480 () Bool)

(declare-fun e!354682 () Bool)

(declare-fun lt!285274 () SeekEntryResult!6455)

(assert (=> b!618480 (= e!354682 (= lt!285261 lt!285274))))

(declare-fun b!618481 () Bool)

(declare-fun res!398569 () Bool)

(assert (=> b!618481 (=> (not res!398569) (not e!354683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37531 (_ BitVec 32)) Bool)

(assert (=> b!618481 (= res!398569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618482 () Bool)

(assert (=> b!618482 (= e!354683 e!354677)))

(declare-fun res!398573 () Bool)

(assert (=> b!618482 (=> (not res!398573) (not e!354677))))

(assert (=> b!618482 (= res!398573 (= (select (store (arr!18008 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618482 (= lt!285265 (array!37532 (store (arr!18008 a!2986) i!1108 k!1786) (size!18372 a!2986)))))

(declare-fun b!618483 () Bool)

(assert (=> b!618483 (= e!354680 e!354683)))

(declare-fun res!398579 () Bool)

(assert (=> b!618483 (=> (not res!398579) (not e!354683))))

(declare-fun lt!285262 () SeekEntryResult!6455)

(assert (=> b!618483 (= res!398579 (or (= lt!285262 (MissingZero!6455 i!1108)) (= lt!285262 (MissingVacant!6455 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37531 (_ BitVec 32)) SeekEntryResult!6455)

(assert (=> b!618483 (= lt!285262 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618484 () Bool)

(assert (=> b!618484 (= e!354687 (not e!354688))))

(declare-fun res!398576 () Bool)

(assert (=> b!618484 (=> res!398576 e!354688)))

(declare-fun lt!285264 () SeekEntryResult!6455)

(assert (=> b!618484 (= res!398576 (not (= lt!285264 (MissingVacant!6455 vacantSpotIndex!68))))))

(declare-fun lt!285263 () Unit!20370)

(declare-fun e!354679 () Unit!20370)

(assert (=> b!618484 (= lt!285263 e!354679)))

(declare-fun c!70316 () Bool)

(assert (=> b!618484 (= c!70316 (= lt!285264 (Found!6455 index!984)))))

(declare-fun lt!285258 () Unit!20370)

(assert (=> b!618484 (= lt!285258 e!354681)))

(declare-fun c!70317 () Bool)

(assert (=> b!618484 (= c!70317 (= lt!285264 Undefined!6455))))

(declare-fun lt!285271 () (_ BitVec 64))

(assert (=> b!618484 (= lt!285264 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285271 lt!285265 mask!3053))))

(assert (=> b!618484 e!354682))

(declare-fun res!398577 () Bool)

(assert (=> b!618484 (=> (not res!398577) (not e!354682))))

(declare-fun lt!285275 () (_ BitVec 32))

(assert (=> b!618484 (= res!398577 (= lt!285274 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285275 vacantSpotIndex!68 lt!285271 lt!285265 mask!3053)))))

(assert (=> b!618484 (= lt!285274 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285275 vacantSpotIndex!68 (select (arr!18008 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618484 (= lt!285271 (select (store (arr!18008 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285259 () Unit!20370)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20370)

(assert (=> b!618484 (= lt!285259 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285275 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618484 (= lt!285275 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618485 () Bool)

(declare-fun Unit!20376 () Unit!20370)

(assert (=> b!618485 (= e!354679 Unit!20376)))

(declare-fun b!618486 () Bool)

(declare-fun e!354689 () Unit!20370)

(declare-fun Unit!20377 () Unit!20370)

(assert (=> b!618486 (= e!354689 Unit!20377)))

(declare-fun b!618487 () Bool)

(assert (=> b!618487 false))

(declare-fun lt!285268 () Unit!20370)

(assert (=> b!618487 (= lt!285268 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285265 (select (arr!18008 a!2986) j!136) index!984 Nil!12099))))

(assert (=> b!618487 (arrayNoDuplicates!0 lt!285265 index!984 Nil!12099)))

(declare-fun lt!285276 () Unit!20370)

(assert (=> b!618487 (= lt!285276 (lemmaNoDuplicateFromThenFromBigger!0 lt!285265 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618487 (arrayNoDuplicates!0 lt!285265 #b00000000000000000000000000000000 Nil!12099)))

(declare-fun lt!285269 () Unit!20370)

(assert (=> b!618487 (= lt!285269 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12099))))

(assert (=> b!618487 (arrayContainsKey!0 lt!285265 (select (arr!18008 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285267 () Unit!20370)

(assert (=> b!618487 (= lt!285267 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285265 (select (arr!18008 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618487 e!354691))

(declare-fun res!398581 () Bool)

(assert (=> b!618487 (=> (not res!398581) (not e!354691))))

(assert (=> b!618487 (= res!398581 (arrayContainsKey!0 lt!285265 (select (arr!18008 a!2986) j!136) j!136))))

(declare-fun Unit!20378 () Unit!20370)

(assert (=> b!618487 (= e!354689 Unit!20378)))

(declare-fun b!618488 () Bool)

(declare-fun Unit!20379 () Unit!20370)

(assert (=> b!618488 (= e!354679 Unit!20379)))

(declare-fun res!398575 () Bool)

(assert (=> b!618488 (= res!398575 (= (select (store (arr!18008 a!2986) i!1108 k!1786) index!984) (select (arr!18008 a!2986) j!136)))))

(assert (=> b!618488 (=> (not res!398575) (not e!354686))))

(assert (=> b!618488 e!354686))

(declare-fun c!70319 () Bool)

(assert (=> b!618488 (= c!70319 (bvslt j!136 index!984))))

(declare-fun lt!285260 () Unit!20370)

(assert (=> b!618488 (= lt!285260 e!354678)))

(declare-fun c!70318 () Bool)

(assert (=> b!618488 (= c!70318 (bvslt index!984 j!136))))

(declare-fun lt!285270 () Unit!20370)

(assert (=> b!618488 (= lt!285270 e!354689)))

(assert (=> b!618488 false))

(assert (= (and start!56098 res!398568) b!618474))

(assert (= (and b!618474 res!398580) b!618471))

(assert (= (and b!618471 res!398567) b!618472))

(assert (= (and b!618472 res!398582) b!618469))

(assert (= (and b!618469 res!398574) b!618483))

(assert (= (and b!618483 res!398579) b!618481))

(assert (= (and b!618481 res!398569) b!618476))

(assert (= (and b!618476 res!398578) b!618465))

(assert (= (and b!618465 res!398571) b!618482))

(assert (= (and b!618482 res!398573) b!618467))

(assert (= (and b!618467 res!398566) b!618484))

(assert (= (and b!618484 res!398577) b!618480))

(assert (= (and b!618484 c!70317) b!618466))

(assert (= (and b!618484 (not c!70317)) b!618475))

(assert (= (and b!618484 c!70316) b!618488))

(assert (= (and b!618484 (not c!70316)) b!618485))

(assert (= (and b!618488 res!398575) b!618464))

(assert (= (and b!618464 (not res!398572)) b!618479))

(assert (= (and b!618479 res!398570) b!618477))

(assert (= (and b!618488 c!70319) b!618470))

(assert (= (and b!618488 (not c!70319)) b!618468))

(assert (= (and b!618488 c!70318) b!618487))

(assert (= (and b!618488 (not c!70318)) b!618486))

(assert (= (and b!618487 res!398581) b!618478))

(assert (= (and b!618484 (not res!398576)) b!618473))

(declare-fun m!594539 () Bool)

(assert (=> b!618473 m!594539))

(declare-fun m!594541 () Bool)

(assert (=> b!618473 m!594541))

(declare-fun m!594543 () Bool)

(assert (=> b!618487 m!594543))

(assert (=> b!618487 m!594543))

(declare-fun m!594545 () Bool)

(assert (=> b!618487 m!594545))

(assert (=> b!618487 m!594543))

(declare-fun m!594547 () Bool)

(assert (=> b!618487 m!594547))

(declare-fun m!594549 () Bool)

(assert (=> b!618487 m!594549))

(declare-fun m!594551 () Bool)

(assert (=> b!618487 m!594551))

(assert (=> b!618487 m!594543))

(declare-fun m!594553 () Bool)

(assert (=> b!618487 m!594553))

(declare-fun m!594555 () Bool)

(assert (=> b!618487 m!594555))

(assert (=> b!618487 m!594543))

(declare-fun m!594557 () Bool)

(assert (=> b!618487 m!594557))

(declare-fun m!594559 () Bool)

(assert (=> b!618487 m!594559))

(assert (=> b!618477 m!594543))

(assert (=> b!618477 m!594543))

(declare-fun m!594561 () Bool)

(assert (=> b!618477 m!594561))

(assert (=> b!618478 m!594543))

(assert (=> b!618478 m!594543))

(assert (=> b!618478 m!594561))

(declare-fun m!594563 () Bool)

(assert (=> b!618467 m!594563))

(assert (=> b!618467 m!594543))

(assert (=> b!618467 m!594543))

(declare-fun m!594565 () Bool)

(assert (=> b!618467 m!594565))

(assert (=> b!618482 m!594539))

(declare-fun m!594567 () Bool)

(assert (=> b!618482 m!594567))

(declare-fun m!594569 () Bool)

(assert (=> b!618465 m!594569))

(declare-fun m!594571 () Bool)

(assert (=> b!618481 m!594571))

(declare-fun m!594573 () Bool)

(assert (=> b!618484 m!594573))

(declare-fun m!594575 () Bool)

(assert (=> b!618484 m!594575))

(declare-fun m!594577 () Bool)

(assert (=> b!618484 m!594577))

(assert (=> b!618484 m!594543))

(declare-fun m!594579 () Bool)

(assert (=> b!618484 m!594579))

(assert (=> b!618484 m!594543))

(declare-fun m!594581 () Bool)

(assert (=> b!618484 m!594581))

(declare-fun m!594583 () Bool)

(assert (=> b!618484 m!594583))

(assert (=> b!618484 m!594539))

(declare-fun m!594585 () Bool)

(assert (=> b!618472 m!594585))

(declare-fun m!594587 () Bool)

(assert (=> b!618483 m!594587))

(assert (=> b!618488 m!594539))

(assert (=> b!618488 m!594541))

(assert (=> b!618488 m!594543))

(declare-fun m!594589 () Bool)

(assert (=> b!618470 m!594589))

(assert (=> b!618470 m!594543))

(assert (=> b!618470 m!594543))

(declare-fun m!594591 () Bool)

(assert (=> b!618470 m!594591))

(assert (=> b!618470 m!594543))

(declare-fun m!594593 () Bool)

(assert (=> b!618470 m!594593))

(assert (=> b!618470 m!594543))

(declare-fun m!594595 () Bool)

(assert (=> b!618470 m!594595))

(assert (=> b!618470 m!594559))

(declare-fun m!594597 () Bool)

(assert (=> b!618470 m!594597))

(assert (=> b!618470 m!594551))

(declare-fun m!594599 () Bool)

(assert (=> b!618476 m!594599))

(declare-fun m!594601 () Bool)

(assert (=> b!618469 m!594601))

(assert (=> b!618471 m!594543))

(assert (=> b!618471 m!594543))

(declare-fun m!594603 () Bool)

(assert (=> b!618471 m!594603))

(declare-fun m!594605 () Bool)

(assert (=> start!56098 m!594605))

(declare-fun m!594607 () Bool)

(assert (=> start!56098 m!594607))

(assert (=> b!618479 m!594543))

(assert (=> b!618479 m!594543))

(assert (=> b!618479 m!594547))

(push 1)

