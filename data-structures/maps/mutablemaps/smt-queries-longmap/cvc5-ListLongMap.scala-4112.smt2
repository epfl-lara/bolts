; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56178 () Bool)

(assert start!56178)

(declare-fun b!621399 () Bool)

(declare-datatypes ((Unit!20770 0))(
  ( (Unit!20771) )
))
(declare-fun e!356422 () Unit!20770)

(declare-fun Unit!20772 () Unit!20770)

(assert (=> b!621399 (= e!356422 Unit!20772)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!400541 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37611 0))(
  ( (array!37612 (arr!18048 (Array (_ BitVec 32) (_ BitVec 64))) (size!18412 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37611)

(assert (=> b!621399 (= res!400541 (= (select (store (arr!18048 a!2986) i!1108 k!1786) index!984) (select (arr!18048 a!2986) j!136)))))

(declare-fun e!356420 () Bool)

(assert (=> b!621399 (=> (not res!400541) (not e!356420))))

(assert (=> b!621399 e!356420))

(declare-fun c!70796 () Bool)

(assert (=> b!621399 (= c!70796 (bvslt j!136 index!984))))

(declare-fun lt!287662 () Unit!20770)

(declare-fun e!356414 () Unit!20770)

(assert (=> b!621399 (= lt!287662 e!356414)))

(declare-fun c!70797 () Bool)

(assert (=> b!621399 (= c!70797 (bvslt index!984 j!136))))

(declare-fun lt!287667 () Unit!20770)

(declare-fun e!356418 () Unit!20770)

(assert (=> b!621399 (= lt!287667 e!356418)))

(assert (=> b!621399 false))

(declare-fun b!621400 () Bool)

(declare-fun res!400554 () Bool)

(declare-fun e!356419 () Bool)

(assert (=> b!621400 (=> (not res!400554) (not e!356419))))

(declare-fun arrayContainsKey!0 (array!37611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621400 (= res!400554 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621401 () Bool)

(declare-fun res!400556 () Bool)

(assert (=> b!621401 (=> (not res!400556) (not e!356419))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!621401 (= res!400556 (and (= (size!18412 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18412 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18412 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621402 () Bool)

(declare-fun res!400550 () Bool)

(declare-fun e!356416 () Bool)

(assert (=> b!621402 (=> (not res!400550) (not e!356416))))

(declare-datatypes ((List!12142 0))(
  ( (Nil!12139) (Cons!12138 (h!13183 (_ BitVec 64)) (t!18378 List!12142)) )
))
(declare-fun arrayNoDuplicates!0 (array!37611 (_ BitVec 32) List!12142) Bool)

(assert (=> b!621402 (= res!400550 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12139))))

(declare-fun b!621403 () Bool)

(declare-fun e!356425 () Bool)

(assert (=> b!621403 (= e!356425 (not true))))

(declare-fun lt!287657 () Unit!20770)

(assert (=> b!621403 (= lt!287657 e!356422)))

(declare-fun c!70799 () Bool)

(declare-datatypes ((SeekEntryResult!6495 0))(
  ( (MissingZero!6495 (index!28263 (_ BitVec 32))) (Found!6495 (index!28264 (_ BitVec 32))) (Intermediate!6495 (undefined!7307 Bool) (index!28265 (_ BitVec 32)) (x!57064 (_ BitVec 32))) (Undefined!6495) (MissingVacant!6495 (index!28266 (_ BitVec 32))) )
))
(declare-fun lt!287660 () SeekEntryResult!6495)

(assert (=> b!621403 (= c!70799 (= lt!287660 (Found!6495 index!984)))))

(declare-fun lt!287661 () Unit!20770)

(declare-fun e!356421 () Unit!20770)

(assert (=> b!621403 (= lt!287661 e!356421)))

(declare-fun c!70798 () Bool)

(assert (=> b!621403 (= c!70798 (= lt!287660 Undefined!6495))))

(declare-fun lt!287673 () array!37611)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!287672 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37611 (_ BitVec 32)) SeekEntryResult!6495)

(assert (=> b!621403 (= lt!287660 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287672 lt!287673 mask!3053))))

(declare-fun e!356417 () Bool)

(assert (=> b!621403 e!356417))

(declare-fun res!400552 () Bool)

(assert (=> b!621403 (=> (not res!400552) (not e!356417))))

(declare-fun lt!287670 () (_ BitVec 32))

(declare-fun lt!287664 () SeekEntryResult!6495)

(assert (=> b!621403 (= res!400552 (= lt!287664 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287670 vacantSpotIndex!68 lt!287672 lt!287673 mask!3053)))))

(assert (=> b!621403 (= lt!287664 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287670 vacantSpotIndex!68 (select (arr!18048 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621403 (= lt!287672 (select (store (arr!18048 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287668 () Unit!20770)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20770)

(assert (=> b!621403 (= lt!287668 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287670 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621403 (= lt!287670 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621404 () Bool)

(declare-fun e!356415 () Bool)

(assert (=> b!621404 (= e!356415 (arrayContainsKey!0 lt!287673 (select (arr!18048 a!2986) j!136) index!984))))

(declare-fun b!621405 () Bool)

(declare-fun Unit!20773 () Unit!20770)

(assert (=> b!621405 (= e!356421 Unit!20773)))

(assert (=> b!621405 false))

(declare-fun b!621406 () Bool)

(assert (=> b!621406 false))

(declare-fun lt!287676 () Unit!20770)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37611 (_ BitVec 64) (_ BitVec 32) List!12142) Unit!20770)

(assert (=> b!621406 (= lt!287676 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287673 (select (arr!18048 a!2986) j!136) index!984 Nil!12139))))

(assert (=> b!621406 (arrayNoDuplicates!0 lt!287673 index!984 Nil!12139)))

(declare-fun lt!287674 () Unit!20770)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37611 (_ BitVec 32) (_ BitVec 32)) Unit!20770)

(assert (=> b!621406 (= lt!287674 (lemmaNoDuplicateFromThenFromBigger!0 lt!287673 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621406 (arrayNoDuplicates!0 lt!287673 #b00000000000000000000000000000000 Nil!12139)))

(declare-fun lt!287658 () Unit!20770)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37611 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12142) Unit!20770)

(assert (=> b!621406 (= lt!287658 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12139))))

(assert (=> b!621406 (arrayContainsKey!0 lt!287673 (select (arr!18048 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287671 () Unit!20770)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37611 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20770)

(assert (=> b!621406 (= lt!287671 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287673 (select (arr!18048 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356424 () Bool)

(assert (=> b!621406 e!356424))

(declare-fun res!400551 () Bool)

(assert (=> b!621406 (=> (not res!400551) (not e!356424))))

(assert (=> b!621406 (= res!400551 (arrayContainsKey!0 lt!287673 (select (arr!18048 a!2986) j!136) j!136))))

(declare-fun Unit!20774 () Unit!20770)

(assert (=> b!621406 (= e!356418 Unit!20774)))

(declare-fun b!621407 () Bool)

(declare-fun res!400555 () Bool)

(assert (=> b!621407 (= res!400555 (arrayContainsKey!0 lt!287673 (select (arr!18048 a!2986) j!136) j!136))))

(assert (=> b!621407 (=> (not res!400555) (not e!356415))))

(declare-fun e!356412 () Bool)

(assert (=> b!621407 (= e!356412 e!356415)))

(declare-fun b!621408 () Bool)

(assert (=> b!621408 (= e!356419 e!356416)))

(declare-fun res!400545 () Bool)

(assert (=> b!621408 (=> (not res!400545) (not e!356416))))

(declare-fun lt!287669 () SeekEntryResult!6495)

(assert (=> b!621408 (= res!400545 (or (= lt!287669 (MissingZero!6495 i!1108)) (= lt!287669 (MissingVacant!6495 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37611 (_ BitVec 32)) SeekEntryResult!6495)

(assert (=> b!621408 (= lt!287669 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621409 () Bool)

(declare-fun e!356423 () Bool)

(assert (=> b!621409 (= e!356423 e!356425)))

(declare-fun res!400544 () Bool)

(assert (=> b!621409 (=> (not res!400544) (not e!356425))))

(declare-fun lt!287666 () SeekEntryResult!6495)

(assert (=> b!621409 (= res!400544 (and (= lt!287666 (Found!6495 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18048 a!2986) index!984) (select (arr!18048 a!2986) j!136))) (not (= (select (arr!18048 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621409 (= lt!287666 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18048 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621410 () Bool)

(declare-fun res!400546 () Bool)

(assert (=> b!621410 (= res!400546 (bvsge j!136 index!984))))

(assert (=> b!621410 (=> res!400546 e!356412)))

(assert (=> b!621410 (= e!356420 e!356412)))

(declare-fun b!621411 () Bool)

(declare-fun res!400549 () Bool)

(assert (=> b!621411 (=> (not res!400549) (not e!356416))))

(assert (=> b!621411 (= res!400549 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18048 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621412 () Bool)

(declare-fun res!400553 () Bool)

(assert (=> b!621412 (=> (not res!400553) (not e!356416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37611 (_ BitVec 32)) Bool)

(assert (=> b!621412 (= res!400553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621413 () Bool)

(declare-fun Unit!20775 () Unit!20770)

(assert (=> b!621413 (= e!356421 Unit!20775)))

(declare-fun b!621414 () Bool)

(assert (=> b!621414 (= e!356417 (= lt!287666 lt!287664))))

(declare-fun b!621415 () Bool)

(declare-fun Unit!20776 () Unit!20770)

(assert (=> b!621415 (= e!356422 Unit!20776)))

(declare-fun b!621416 () Bool)

(declare-fun Unit!20777 () Unit!20770)

(assert (=> b!621416 (= e!356414 Unit!20777)))

(declare-fun b!621417 () Bool)

(assert (=> b!621417 (= e!356424 (arrayContainsKey!0 lt!287673 (select (arr!18048 a!2986) j!136) index!984))))

(declare-fun b!621419 () Bool)

(declare-fun res!400543 () Bool)

(assert (=> b!621419 (=> (not res!400543) (not e!356419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621419 (= res!400543 (validKeyInArray!0 k!1786))))

(declare-fun res!400547 () Bool)

(assert (=> start!56178 (=> (not res!400547) (not e!356419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56178 (= res!400547 (validMask!0 mask!3053))))

(assert (=> start!56178 e!356419))

(assert (=> start!56178 true))

(declare-fun array_inv!13822 (array!37611) Bool)

(assert (=> start!56178 (array_inv!13822 a!2986)))

(declare-fun b!621418 () Bool)

(assert (=> b!621418 (= e!356416 e!356423)))

(declare-fun res!400548 () Bool)

(assert (=> b!621418 (=> (not res!400548) (not e!356423))))

(assert (=> b!621418 (= res!400548 (= (select (store (arr!18048 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621418 (= lt!287673 (array!37612 (store (arr!18048 a!2986) i!1108 k!1786) (size!18412 a!2986)))))

(declare-fun b!621420 () Bool)

(assert (=> b!621420 false))

(declare-fun lt!287675 () Unit!20770)

(assert (=> b!621420 (= lt!287675 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287673 (select (arr!18048 a!2986) j!136) j!136 Nil!12139))))

(assert (=> b!621420 (arrayNoDuplicates!0 lt!287673 j!136 Nil!12139)))

(declare-fun lt!287665 () Unit!20770)

(assert (=> b!621420 (= lt!287665 (lemmaNoDuplicateFromThenFromBigger!0 lt!287673 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621420 (arrayNoDuplicates!0 lt!287673 #b00000000000000000000000000000000 Nil!12139)))

(declare-fun lt!287659 () Unit!20770)

(assert (=> b!621420 (= lt!287659 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12139))))

(assert (=> b!621420 (arrayContainsKey!0 lt!287673 (select (arr!18048 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287663 () Unit!20770)

(assert (=> b!621420 (= lt!287663 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287673 (select (arr!18048 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20778 () Unit!20770)

(assert (=> b!621420 (= e!356414 Unit!20778)))

(declare-fun b!621421 () Bool)

(declare-fun Unit!20779 () Unit!20770)

(assert (=> b!621421 (= e!356418 Unit!20779)))

(declare-fun b!621422 () Bool)

(declare-fun res!400542 () Bool)

(assert (=> b!621422 (=> (not res!400542) (not e!356419))))

(assert (=> b!621422 (= res!400542 (validKeyInArray!0 (select (arr!18048 a!2986) j!136)))))

(assert (= (and start!56178 res!400547) b!621401))

(assert (= (and b!621401 res!400556) b!621422))

(assert (= (and b!621422 res!400542) b!621419))

(assert (= (and b!621419 res!400543) b!621400))

(assert (= (and b!621400 res!400554) b!621408))

(assert (= (and b!621408 res!400545) b!621412))

(assert (= (and b!621412 res!400553) b!621402))

(assert (= (and b!621402 res!400550) b!621411))

(assert (= (and b!621411 res!400549) b!621418))

(assert (= (and b!621418 res!400548) b!621409))

(assert (= (and b!621409 res!400544) b!621403))

(assert (= (and b!621403 res!400552) b!621414))

(assert (= (and b!621403 c!70798) b!621405))

(assert (= (and b!621403 (not c!70798)) b!621413))

(assert (= (and b!621403 c!70799) b!621399))

(assert (= (and b!621403 (not c!70799)) b!621415))

(assert (= (and b!621399 res!400541) b!621410))

(assert (= (and b!621410 (not res!400546)) b!621407))

(assert (= (and b!621407 res!400555) b!621404))

(assert (= (and b!621399 c!70796) b!621420))

(assert (= (and b!621399 (not c!70796)) b!621416))

(assert (= (and b!621399 c!70797) b!621406))

(assert (= (and b!621399 (not c!70797)) b!621421))

(assert (= (and b!621406 res!400551) b!621417))

(declare-fun m!597339 () Bool)

(assert (=> b!621412 m!597339))

(declare-fun m!597341 () Bool)

(assert (=> b!621418 m!597341))

(declare-fun m!597343 () Bool)

(assert (=> b!621418 m!597343))

(declare-fun m!597345 () Bool)

(assert (=> b!621400 m!597345))

(declare-fun m!597347 () Bool)

(assert (=> b!621407 m!597347))

(assert (=> b!621407 m!597347))

(declare-fun m!597349 () Bool)

(assert (=> b!621407 m!597349))

(declare-fun m!597351 () Bool)

(assert (=> b!621408 m!597351))

(declare-fun m!597353 () Bool)

(assert (=> b!621402 m!597353))

(declare-fun m!597355 () Bool)

(assert (=> b!621403 m!597355))

(declare-fun m!597357 () Bool)

(assert (=> b!621403 m!597357))

(assert (=> b!621403 m!597347))

(assert (=> b!621403 m!597341))

(assert (=> b!621403 m!597347))

(declare-fun m!597359 () Bool)

(assert (=> b!621403 m!597359))

(declare-fun m!597361 () Bool)

(assert (=> b!621403 m!597361))

(declare-fun m!597363 () Bool)

(assert (=> b!621403 m!597363))

(declare-fun m!597365 () Bool)

(assert (=> b!621403 m!597365))

(assert (=> b!621417 m!597347))

(assert (=> b!621417 m!597347))

(declare-fun m!597367 () Bool)

(assert (=> b!621417 m!597367))

(assert (=> b!621420 m!597347))

(declare-fun m!597369 () Bool)

(assert (=> b!621420 m!597369))

(assert (=> b!621420 m!597347))

(declare-fun m!597371 () Bool)

(assert (=> b!621420 m!597371))

(assert (=> b!621420 m!597347))

(declare-fun m!597373 () Bool)

(assert (=> b!621420 m!597373))

(declare-fun m!597375 () Bool)

(assert (=> b!621420 m!597375))

(declare-fun m!597377 () Bool)

(assert (=> b!621420 m!597377))

(assert (=> b!621420 m!597347))

(declare-fun m!597379 () Bool)

(assert (=> b!621420 m!597379))

(declare-fun m!597381 () Bool)

(assert (=> b!621420 m!597381))

(assert (=> b!621406 m!597347))

(declare-fun m!597383 () Bool)

(assert (=> b!621406 m!597383))

(assert (=> b!621406 m!597347))

(declare-fun m!597385 () Bool)

(assert (=> b!621406 m!597385))

(assert (=> b!621406 m!597347))

(declare-fun m!597387 () Bool)

(assert (=> b!621406 m!597387))

(assert (=> b!621406 m!597347))

(assert (=> b!621406 m!597349))

(declare-fun m!597389 () Bool)

(assert (=> b!621406 m!597389))

(assert (=> b!621406 m!597375))

(assert (=> b!621406 m!597347))

(declare-fun m!597391 () Bool)

(assert (=> b!621406 m!597391))

(assert (=> b!621406 m!597377))

(assert (=> b!621404 m!597347))

(assert (=> b!621404 m!597347))

(assert (=> b!621404 m!597367))

(declare-fun m!597393 () Bool)

(assert (=> start!56178 m!597393))

(declare-fun m!597395 () Bool)

(assert (=> start!56178 m!597395))

(assert (=> b!621422 m!597347))

(assert (=> b!621422 m!597347))

(declare-fun m!597397 () Bool)

(assert (=> b!621422 m!597397))

(declare-fun m!597399 () Bool)

(assert (=> b!621419 m!597399))

(assert (=> b!621399 m!597341))

(declare-fun m!597401 () Bool)

(assert (=> b!621399 m!597401))

(assert (=> b!621399 m!597347))

(declare-fun m!597403 () Bool)

(assert (=> b!621409 m!597403))

(assert (=> b!621409 m!597347))

(assert (=> b!621409 m!597347))

(declare-fun m!597405 () Bool)

(assert (=> b!621409 m!597405))

(declare-fun m!597407 () Bool)

(assert (=> b!621411 m!597407))

(push 1)

