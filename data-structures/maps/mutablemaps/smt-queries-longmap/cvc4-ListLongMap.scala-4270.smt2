; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59380 () Bool)

(assert start!59380)

(declare-fun b!655458 () Bool)

(declare-fun e!376439 () Bool)

(declare-fun e!376438 () Bool)

(assert (=> b!655458 (= e!376439 e!376438)))

(declare-fun res!425294 () Bool)

(assert (=> b!655458 (=> (not res!425294) (not e!376438))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6971 0))(
  ( (MissingZero!6971 (index!30242 (_ BitVec 32))) (Found!6971 (index!30243 (_ BitVec 32))) (Intermediate!6971 (undefined!7783 Bool) (index!30244 (_ BitVec 32)) (x!59053 (_ BitVec 32))) (Undefined!6971) (MissingVacant!6971 (index!30245 (_ BitVec 32))) )
))
(declare-fun lt!305830 () SeekEntryResult!6971)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38656 0))(
  ( (array!38657 (arr!18524 (Array (_ BitVec 32) (_ BitVec 64))) (size!18888 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38656)

(assert (=> b!655458 (= res!425294 (and (= lt!305830 (Found!6971 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18524 a!2986) index!984) (select (arr!18524 a!2986) j!136))) (not (= (select (arr!18524 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38656 (_ BitVec 32)) SeekEntryResult!6971)

(assert (=> b!655458 (= lt!305830 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18524 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655459 () Bool)

(declare-datatypes ((Unit!22554 0))(
  ( (Unit!22555) )
))
(declare-fun e!376440 () Unit!22554)

(declare-fun Unit!22556 () Unit!22554)

(assert (=> b!655459 (= e!376440 Unit!22556)))

(declare-fun b!655460 () Bool)

(declare-fun e!376428 () Bool)

(declare-fun e!376436 () Bool)

(assert (=> b!655460 (= e!376428 e!376436)))

(declare-fun res!425292 () Bool)

(assert (=> b!655460 (=> (not res!425292) (not e!376436))))

(declare-fun lt!305825 () SeekEntryResult!6971)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!655460 (= res!425292 (or (= lt!305825 (MissingZero!6971 i!1108)) (= lt!305825 (MissingVacant!6971 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38656 (_ BitVec 32)) SeekEntryResult!6971)

(assert (=> b!655460 (= lt!305825 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655461 () Bool)

(declare-fun e!376437 () Unit!22554)

(declare-fun Unit!22557 () Unit!22554)

(assert (=> b!655461 (= e!376437 Unit!22557)))

(declare-fun b!655462 () Bool)

(declare-fun res!425303 () Bool)

(assert (=> b!655462 (=> (not res!425303) (not e!376428))))

(assert (=> b!655462 (= res!425303 (and (= (size!18888 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18888 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18888 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655463 () Bool)

(assert (=> b!655463 false))

(declare-fun lt!305824 () array!38656)

(declare-fun lt!305836 () Unit!22554)

(declare-datatypes ((List!12618 0))(
  ( (Nil!12615) (Cons!12614 (h!13659 (_ BitVec 64)) (t!18854 List!12618)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38656 (_ BitVec 64) (_ BitVec 32) List!12618) Unit!22554)

(assert (=> b!655463 (= lt!305836 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305824 (select (arr!18524 a!2986) j!136) index!984 Nil!12615))))

(declare-fun arrayNoDuplicates!0 (array!38656 (_ BitVec 32) List!12618) Bool)

(assert (=> b!655463 (arrayNoDuplicates!0 lt!305824 index!984 Nil!12615)))

(declare-fun lt!305833 () Unit!22554)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38656 (_ BitVec 32) (_ BitVec 32)) Unit!22554)

(assert (=> b!655463 (= lt!305833 (lemmaNoDuplicateFromThenFromBigger!0 lt!305824 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655463 (arrayNoDuplicates!0 lt!305824 #b00000000000000000000000000000000 Nil!12615)))

(declare-fun lt!305841 () Unit!22554)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38656 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12618) Unit!22554)

(assert (=> b!655463 (= lt!305841 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12615))))

(declare-fun arrayContainsKey!0 (array!38656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655463 (arrayContainsKey!0 lt!305824 (select (arr!18524 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305822 () Unit!22554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38656 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22554)

(assert (=> b!655463 (= lt!305822 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305824 (select (arr!18524 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!376431 () Bool)

(assert (=> b!655463 e!376431))

(declare-fun res!425291 () Bool)

(assert (=> b!655463 (=> (not res!425291) (not e!376431))))

(assert (=> b!655463 (= res!425291 (arrayContainsKey!0 lt!305824 (select (arr!18524 a!2986) j!136) j!136))))

(declare-fun e!376433 () Unit!22554)

(declare-fun Unit!22558 () Unit!22554)

(assert (=> b!655463 (= e!376433 Unit!22558)))

(declare-fun b!655464 () Bool)

(declare-fun res!425301 () Bool)

(assert (=> b!655464 (=> (not res!425301) (not e!376428))))

(assert (=> b!655464 (= res!425301 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655465 () Bool)

(assert (=> b!655465 (= e!376438 (not true))))

(declare-fun lt!305839 () Unit!22554)

(assert (=> b!655465 (= lt!305839 e!376437)))

(declare-fun c!75455 () Bool)

(declare-fun lt!305823 () SeekEntryResult!6971)

(assert (=> b!655465 (= c!75455 (= lt!305823 (Found!6971 index!984)))))

(declare-fun lt!305838 () Unit!22554)

(declare-fun e!376435 () Unit!22554)

(assert (=> b!655465 (= lt!305838 e!376435)))

(declare-fun c!75453 () Bool)

(assert (=> b!655465 (= c!75453 (= lt!305823 Undefined!6971))))

(declare-fun lt!305840 () (_ BitVec 64))

(assert (=> b!655465 (= lt!305823 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305840 lt!305824 mask!3053))))

(declare-fun e!376432 () Bool)

(assert (=> b!655465 e!376432))

(declare-fun res!425288 () Bool)

(assert (=> b!655465 (=> (not res!425288) (not e!376432))))

(declare-fun lt!305829 () SeekEntryResult!6971)

(declare-fun lt!305835 () (_ BitVec 32))

(assert (=> b!655465 (= res!425288 (= lt!305829 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305835 vacantSpotIndex!68 lt!305840 lt!305824 mask!3053)))))

(assert (=> b!655465 (= lt!305829 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305835 vacantSpotIndex!68 (select (arr!18524 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655465 (= lt!305840 (select (store (arr!18524 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305827 () Unit!22554)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38656 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22554)

(assert (=> b!655465 (= lt!305827 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305835 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655465 (= lt!305835 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655466 () Bool)

(declare-fun res!425295 () Bool)

(assert (=> b!655466 (= res!425295 (bvsge j!136 index!984))))

(declare-fun e!376430 () Bool)

(assert (=> b!655466 (=> res!425295 e!376430)))

(declare-fun e!376429 () Bool)

(assert (=> b!655466 (= e!376429 e!376430)))

(declare-fun b!655468 () Bool)

(declare-fun res!425299 () Bool)

(assert (=> b!655468 (=> (not res!425299) (not e!376436))))

(assert (=> b!655468 (= res!425299 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18524 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655469 () Bool)

(assert (=> b!655469 (= e!376436 e!376439)))

(declare-fun res!425296 () Bool)

(assert (=> b!655469 (=> (not res!425296) (not e!376439))))

(assert (=> b!655469 (= res!425296 (= (select (store (arr!18524 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655469 (= lt!305824 (array!38657 (store (arr!18524 a!2986) i!1108 k!1786) (size!18888 a!2986)))))

(declare-fun b!655470 () Bool)

(assert (=> b!655470 false))

(declare-fun lt!305831 () Unit!22554)

(assert (=> b!655470 (= lt!305831 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305824 (select (arr!18524 a!2986) j!136) j!136 Nil!12615))))

(assert (=> b!655470 (arrayNoDuplicates!0 lt!305824 j!136 Nil!12615)))

(declare-fun lt!305832 () Unit!22554)

(assert (=> b!655470 (= lt!305832 (lemmaNoDuplicateFromThenFromBigger!0 lt!305824 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655470 (arrayNoDuplicates!0 lt!305824 #b00000000000000000000000000000000 Nil!12615)))

(declare-fun lt!305826 () Unit!22554)

(assert (=> b!655470 (= lt!305826 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12615))))

(assert (=> b!655470 (arrayContainsKey!0 lt!305824 (select (arr!18524 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305834 () Unit!22554)

(assert (=> b!655470 (= lt!305834 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305824 (select (arr!18524 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22559 () Unit!22554)

(assert (=> b!655470 (= e!376440 Unit!22559)))

(declare-fun b!655471 () Bool)

(declare-fun res!425297 () Bool)

(assert (=> b!655471 (= res!425297 (arrayContainsKey!0 lt!305824 (select (arr!18524 a!2986) j!136) j!136))))

(declare-fun e!376434 () Bool)

(assert (=> b!655471 (=> (not res!425297) (not e!376434))))

(assert (=> b!655471 (= e!376430 e!376434)))

(declare-fun b!655472 () Bool)

(declare-fun res!425302 () Bool)

(assert (=> b!655472 (=> (not res!425302) (not e!376428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655472 (= res!425302 (validKeyInArray!0 k!1786))))

(declare-fun b!655473 () Bool)

(declare-fun Unit!22560 () Unit!22554)

(assert (=> b!655473 (= e!376437 Unit!22560)))

(declare-fun res!425300 () Bool)

(assert (=> b!655473 (= res!425300 (= (select (store (arr!18524 a!2986) i!1108 k!1786) index!984) (select (arr!18524 a!2986) j!136)))))

(assert (=> b!655473 (=> (not res!425300) (not e!376429))))

(assert (=> b!655473 e!376429))

(declare-fun c!75452 () Bool)

(assert (=> b!655473 (= c!75452 (bvslt j!136 index!984))))

(declare-fun lt!305837 () Unit!22554)

(assert (=> b!655473 (= lt!305837 e!376440)))

(declare-fun c!75454 () Bool)

(assert (=> b!655473 (= c!75454 (bvslt index!984 j!136))))

(declare-fun lt!305828 () Unit!22554)

(assert (=> b!655473 (= lt!305828 e!376433)))

(assert (=> b!655473 false))

(declare-fun b!655474 () Bool)

(declare-fun res!425293 () Bool)

(assert (=> b!655474 (=> (not res!425293) (not e!376436))))

(assert (=> b!655474 (= res!425293 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12615))))

(declare-fun b!655475 () Bool)

(assert (=> b!655475 (= e!376432 (= lt!305830 lt!305829))))

(declare-fun b!655476 () Bool)

(declare-fun Unit!22561 () Unit!22554)

(assert (=> b!655476 (= e!376433 Unit!22561)))

(declare-fun b!655477 () Bool)

(assert (=> b!655477 (= e!376431 (arrayContainsKey!0 lt!305824 (select (arr!18524 a!2986) j!136) index!984))))

(declare-fun b!655478 () Bool)

(declare-fun Unit!22562 () Unit!22554)

(assert (=> b!655478 (= e!376435 Unit!22562)))

(declare-fun b!655479 () Bool)

(declare-fun res!425298 () Bool)

(assert (=> b!655479 (=> (not res!425298) (not e!376428))))

(assert (=> b!655479 (= res!425298 (validKeyInArray!0 (select (arr!18524 a!2986) j!136)))))

(declare-fun b!655480 () Bool)

(declare-fun Unit!22563 () Unit!22554)

(assert (=> b!655480 (= e!376435 Unit!22563)))

(assert (=> b!655480 false))

(declare-fun b!655481 () Bool)

(assert (=> b!655481 (= e!376434 (arrayContainsKey!0 lt!305824 (select (arr!18524 a!2986) j!136) index!984))))

(declare-fun res!425289 () Bool)

(assert (=> start!59380 (=> (not res!425289) (not e!376428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59380 (= res!425289 (validMask!0 mask!3053))))

(assert (=> start!59380 e!376428))

(assert (=> start!59380 true))

(declare-fun array_inv!14298 (array!38656) Bool)

(assert (=> start!59380 (array_inv!14298 a!2986)))

(declare-fun b!655467 () Bool)

(declare-fun res!425290 () Bool)

(assert (=> b!655467 (=> (not res!425290) (not e!376436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38656 (_ BitVec 32)) Bool)

(assert (=> b!655467 (= res!425290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!59380 res!425289) b!655462))

(assert (= (and b!655462 res!425303) b!655479))

(assert (= (and b!655479 res!425298) b!655472))

(assert (= (and b!655472 res!425302) b!655464))

(assert (= (and b!655464 res!425301) b!655460))

(assert (= (and b!655460 res!425292) b!655467))

(assert (= (and b!655467 res!425290) b!655474))

(assert (= (and b!655474 res!425293) b!655468))

(assert (= (and b!655468 res!425299) b!655469))

(assert (= (and b!655469 res!425296) b!655458))

(assert (= (and b!655458 res!425294) b!655465))

(assert (= (and b!655465 res!425288) b!655475))

(assert (= (and b!655465 c!75453) b!655480))

(assert (= (and b!655465 (not c!75453)) b!655478))

(assert (= (and b!655465 c!75455) b!655473))

(assert (= (and b!655465 (not c!75455)) b!655461))

(assert (= (and b!655473 res!425300) b!655466))

(assert (= (and b!655466 (not res!425295)) b!655471))

(assert (= (and b!655471 res!425297) b!655481))

(assert (= (and b!655473 c!75452) b!655470))

(assert (= (and b!655473 (not c!75452)) b!655459))

(assert (= (and b!655473 c!75454) b!655463))

(assert (= (and b!655473 (not c!75454)) b!655476))

(assert (= (and b!655463 res!425291) b!655477))

(declare-fun m!628601 () Bool)

(assert (=> b!655472 m!628601))

(declare-fun m!628603 () Bool)

(assert (=> b!655479 m!628603))

(assert (=> b!655479 m!628603))

(declare-fun m!628605 () Bool)

(assert (=> b!655479 m!628605))

(declare-fun m!628607 () Bool)

(assert (=> b!655465 m!628607))

(declare-fun m!628609 () Bool)

(assert (=> b!655465 m!628609))

(assert (=> b!655465 m!628603))

(declare-fun m!628611 () Bool)

(assert (=> b!655465 m!628611))

(declare-fun m!628613 () Bool)

(assert (=> b!655465 m!628613))

(assert (=> b!655465 m!628603))

(declare-fun m!628615 () Bool)

(assert (=> b!655465 m!628615))

(declare-fun m!628617 () Bool)

(assert (=> b!655465 m!628617))

(declare-fun m!628619 () Bool)

(assert (=> b!655465 m!628619))

(declare-fun m!628621 () Bool)

(assert (=> b!655470 m!628621))

(assert (=> b!655470 m!628603))

(declare-fun m!628623 () Bool)

(assert (=> b!655470 m!628623))

(assert (=> b!655470 m!628603))

(declare-fun m!628625 () Bool)

(assert (=> b!655470 m!628625))

(declare-fun m!628627 () Bool)

(assert (=> b!655470 m!628627))

(declare-fun m!628629 () Bool)

(assert (=> b!655470 m!628629))

(assert (=> b!655470 m!628603))

(declare-fun m!628631 () Bool)

(assert (=> b!655470 m!628631))

(assert (=> b!655470 m!628603))

(declare-fun m!628633 () Bool)

(assert (=> b!655470 m!628633))

(declare-fun m!628635 () Bool)

(assert (=> b!655467 m!628635))

(assert (=> b!655469 m!628613))

(declare-fun m!628637 () Bool)

(assert (=> b!655469 m!628637))

(declare-fun m!628639 () Bool)

(assert (=> b!655458 m!628639))

(assert (=> b!655458 m!628603))

(assert (=> b!655458 m!628603))

(declare-fun m!628641 () Bool)

(assert (=> b!655458 m!628641))

(assert (=> b!655481 m!628603))

(assert (=> b!655481 m!628603))

(declare-fun m!628643 () Bool)

(assert (=> b!655481 m!628643))

(assert (=> b!655473 m!628613))

(declare-fun m!628645 () Bool)

(assert (=> b!655473 m!628645))

(assert (=> b!655473 m!628603))

(declare-fun m!628647 () Bool)

(assert (=> b!655464 m!628647))

(declare-fun m!628649 () Bool)

(assert (=> b!655474 m!628649))

(assert (=> b!655471 m!628603))

(assert (=> b!655471 m!628603))

(declare-fun m!628651 () Bool)

(assert (=> b!655471 m!628651))

(assert (=> b!655463 m!628603))

(declare-fun m!628653 () Bool)

(assert (=> b!655463 m!628653))

(declare-fun m!628655 () Bool)

(assert (=> b!655463 m!628655))

(assert (=> b!655463 m!628603))

(declare-fun m!628657 () Bool)

(assert (=> b!655463 m!628657))

(declare-fun m!628659 () Bool)

(assert (=> b!655463 m!628659))

(assert (=> b!655463 m!628603))

(assert (=> b!655463 m!628651))

(assert (=> b!655463 m!628627))

(assert (=> b!655463 m!628629))

(assert (=> b!655463 m!628603))

(assert (=> b!655463 m!628603))

(declare-fun m!628661 () Bool)

(assert (=> b!655463 m!628661))

(declare-fun m!628663 () Bool)

(assert (=> b!655468 m!628663))

(assert (=> b!655477 m!628603))

(assert (=> b!655477 m!628603))

(assert (=> b!655477 m!628643))

(declare-fun m!628665 () Bool)

(assert (=> start!59380 m!628665))

(declare-fun m!628667 () Bool)

(assert (=> start!59380 m!628667))

(declare-fun m!628669 () Bool)

(assert (=> b!655460 m!628669))

(push 1)

(assert (not b!655470))

(assert (not b!655465))

(assert (not b!655464))

(assert (not b!655477))

(assert (not b!655467))

(assert (not b!655472))

(assert (not b!655474))

(assert (not b!655458))

(assert (not b!655460))

(assert (not b!655463))

(assert (not b!655471))

(assert (not b!655479))

(assert (not start!59380))

(assert (not b!655481))

(check-sat)

(pop 1)

