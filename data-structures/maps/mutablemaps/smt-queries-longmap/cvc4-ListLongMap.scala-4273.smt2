; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59482 () Bool)

(assert start!59482)

(declare-fun b!656462 () Bool)

(declare-fun res!425867 () Bool)

(declare-fun e!377065 () Bool)

(assert (=> b!656462 (=> (not res!425867) (not e!377065))))

(declare-datatypes ((array!38677 0))(
  ( (array!38678 (arr!18533 (Array (_ BitVec 32) (_ BitVec 64))) (size!18897 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38677)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38677 (_ BitVec 32)) Bool)

(assert (=> b!656462 (= res!425867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!425871 () Bool)

(declare-fun e!377054 () Bool)

(assert (=> start!59482 (=> (not res!425871) (not e!377054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59482 (= res!425871 (validMask!0 mask!3053))))

(assert (=> start!59482 e!377054))

(assert (=> start!59482 true))

(declare-fun array_inv!14307 (array!38677) Bool)

(assert (=> start!59482 (array_inv!14307 a!2986)))

(declare-fun b!656463 () Bool)

(declare-datatypes ((Unit!22644 0))(
  ( (Unit!22645) )
))
(declare-fun e!377064 () Unit!22644)

(declare-fun Unit!22646 () Unit!22644)

(assert (=> b!656463 (= e!377064 Unit!22646)))

(declare-fun b!656464 () Bool)

(declare-fun e!377063 () Bool)

(declare-datatypes ((SeekEntryResult!6980 0))(
  ( (MissingZero!6980 (index!30281 (_ BitVec 32))) (Found!6980 (index!30282 (_ BitVec 32))) (Intermediate!6980 (undefined!7792 Bool) (index!30283 (_ BitVec 32)) (x!59095 (_ BitVec 32))) (Undefined!6980) (MissingVacant!6980 (index!30284 (_ BitVec 32))) )
))
(declare-fun lt!306524 () SeekEntryResult!6980)

(declare-fun lt!306531 () SeekEntryResult!6980)

(assert (=> b!656464 (= e!377063 (= lt!306524 lt!306531))))

(declare-fun b!656465 () Bool)

(declare-fun e!377056 () Bool)

(assert (=> b!656465 (= e!377065 e!377056)))

(declare-fun res!425861 () Bool)

(assert (=> b!656465 (=> (not res!425861) (not e!377056))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!656465 (= res!425861 (= (select (store (arr!18533 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!306523 () array!38677)

(assert (=> b!656465 (= lt!306523 (array!38678 (store (arr!18533 a!2986) i!1108 k!1786) (size!18897 a!2986)))))

(declare-fun b!656466 () Bool)

(declare-fun res!425873 () Bool)

(assert (=> b!656466 (=> (not res!425873) (not e!377065))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!656466 (= res!425873 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18533 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!656467 () Bool)

(declare-fun res!425865 () Bool)

(assert (=> b!656467 (=> (not res!425865) (not e!377054))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!656467 (= res!425865 (and (= (size!18897 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18897 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18897 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!656468 () Bool)

(declare-fun e!377059 () Bool)

(declare-fun arrayContainsKey!0 (array!38677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!656468 (= e!377059 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) index!984))))

(declare-fun b!656469 () Bool)

(declare-fun res!425864 () Bool)

(assert (=> b!656469 (= res!425864 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) j!136))))

(declare-fun e!377058 () Bool)

(assert (=> b!656469 (=> (not res!425864) (not e!377058))))

(declare-fun e!377057 () Bool)

(assert (=> b!656469 (= e!377057 e!377058)))

(declare-fun b!656470 () Bool)

(declare-fun Unit!22647 () Unit!22644)

(assert (=> b!656470 (= e!377064 Unit!22647)))

(assert (=> b!656470 false))

(declare-fun b!656471 () Bool)

(declare-fun res!425869 () Bool)

(assert (=> b!656471 (=> (not res!425869) (not e!377054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!656471 (= res!425869 (validKeyInArray!0 k!1786))))

(declare-fun b!656472 () Bool)

(declare-fun res!425860 () Bool)

(assert (=> b!656472 (=> (not res!425860) (not e!377065))))

(declare-datatypes ((List!12627 0))(
  ( (Nil!12624) (Cons!12623 (h!13668 (_ BitVec 64)) (t!18863 List!12627)) )
))
(declare-fun arrayNoDuplicates!0 (array!38677 (_ BitVec 32) List!12627) Bool)

(assert (=> b!656472 (= res!425860 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12624))))

(declare-fun b!656473 () Bool)

(declare-fun e!377062 () Bool)

(declare-fun e!377060 () Bool)

(assert (=> b!656473 (= e!377062 (not e!377060))))

(declare-fun res!425866 () Bool)

(assert (=> b!656473 (=> res!425866 e!377060)))

(declare-fun lt!306533 () SeekEntryResult!6980)

(assert (=> b!656473 (= res!425866 (not (= lt!306533 (MissingVacant!6980 vacantSpotIndex!68))))))

(declare-fun lt!306525 () Unit!22644)

(declare-fun e!377061 () Unit!22644)

(assert (=> b!656473 (= lt!306525 e!377061)))

(declare-fun c!75670 () Bool)

(assert (=> b!656473 (= c!75670 (= lt!306533 (Found!6980 index!984)))))

(declare-fun lt!306515 () Unit!22644)

(assert (=> b!656473 (= lt!306515 e!377064)))

(declare-fun c!75668 () Bool)

(assert (=> b!656473 (= c!75668 (= lt!306533 Undefined!6980))))

(declare-fun lt!306517 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38677 (_ BitVec 32)) SeekEntryResult!6980)

(assert (=> b!656473 (= lt!306533 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306517 lt!306523 mask!3053))))

(assert (=> b!656473 e!377063))

(declare-fun res!425863 () Bool)

(assert (=> b!656473 (=> (not res!425863) (not e!377063))))

(declare-fun lt!306528 () (_ BitVec 32))

(assert (=> b!656473 (= res!425863 (= lt!306531 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306528 vacantSpotIndex!68 lt!306517 lt!306523 mask!3053)))))

(assert (=> b!656473 (= lt!306531 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306528 vacantSpotIndex!68 (select (arr!18533 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!656473 (= lt!306517 (select (store (arr!18533 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306520 () Unit!22644)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38677 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22644)

(assert (=> b!656473 (= lt!306520 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306528 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!656473 (= lt!306528 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!656474 () Bool)

(declare-fun res!425872 () Bool)

(assert (=> b!656474 (= res!425872 (bvsge j!136 index!984))))

(assert (=> b!656474 (=> res!425872 e!377057)))

(declare-fun e!377055 () Bool)

(assert (=> b!656474 (= e!377055 e!377057)))

(declare-fun b!656475 () Bool)

(assert (=> b!656475 (= e!377056 e!377062)))

(declare-fun res!425862 () Bool)

(assert (=> b!656475 (=> (not res!425862) (not e!377062))))

(assert (=> b!656475 (= res!425862 (and (= lt!306524 (Found!6980 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18533 a!2986) index!984) (select (arr!18533 a!2986) j!136))) (not (= (select (arr!18533 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!656475 (= lt!306524 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18533 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656476 () Bool)

(declare-fun e!377068 () Unit!22644)

(declare-fun Unit!22648 () Unit!22644)

(assert (=> b!656476 (= e!377068 Unit!22648)))

(declare-fun b!656477 () Bool)

(declare-fun e!377066 () Unit!22644)

(declare-fun Unit!22649 () Unit!22644)

(assert (=> b!656477 (= e!377066 Unit!22649)))

(declare-fun b!656478 () Bool)

(assert (=> b!656478 false))

(declare-fun lt!306519 () Unit!22644)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38677 (_ BitVec 64) (_ BitVec 32) List!12627) Unit!22644)

(assert (=> b!656478 (= lt!306519 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306523 (select (arr!18533 a!2986) j!136) j!136 Nil!12624))))

(assert (=> b!656478 (arrayNoDuplicates!0 lt!306523 j!136 Nil!12624)))

(declare-fun lt!306527 () Unit!22644)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38677 (_ BitVec 32) (_ BitVec 32)) Unit!22644)

(assert (=> b!656478 (= lt!306527 (lemmaNoDuplicateFromThenFromBigger!0 lt!306523 #b00000000000000000000000000000000 j!136))))

(assert (=> b!656478 (arrayNoDuplicates!0 lt!306523 #b00000000000000000000000000000000 Nil!12624)))

(declare-fun lt!306516 () Unit!22644)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38677 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12627) Unit!22644)

(assert (=> b!656478 (= lt!306516 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12624))))

(assert (=> b!656478 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306534 () Unit!22644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38677 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22644)

(assert (=> b!656478 (= lt!306534 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306523 (select (arr!18533 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22650 () Unit!22644)

(assert (=> b!656478 (= e!377066 Unit!22650)))

(declare-fun b!656479 () Bool)

(declare-fun res!425868 () Bool)

(assert (=> b!656479 (=> (not res!425868) (not e!377054))))

(assert (=> b!656479 (= res!425868 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!656480 () Bool)

(assert (=> b!656480 (= e!377060 false)))

(assert (=> b!656480 (= (select (store (arr!18533 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!656481 () Bool)

(declare-fun Unit!22651 () Unit!22644)

(assert (=> b!656481 (= e!377061 Unit!22651)))

(declare-fun res!425876 () Bool)

(assert (=> b!656481 (= res!425876 (= (select (store (arr!18533 a!2986) i!1108 k!1786) index!984) (select (arr!18533 a!2986) j!136)))))

(assert (=> b!656481 (=> (not res!425876) (not e!377055))))

(assert (=> b!656481 e!377055))

(declare-fun c!75669 () Bool)

(assert (=> b!656481 (= c!75669 (bvslt j!136 index!984))))

(declare-fun lt!306521 () Unit!22644)

(assert (=> b!656481 (= lt!306521 e!377066)))

(declare-fun c!75671 () Bool)

(assert (=> b!656481 (= c!75671 (bvslt index!984 j!136))))

(declare-fun lt!306522 () Unit!22644)

(assert (=> b!656481 (= lt!306522 e!377068)))

(assert (=> b!656481 false))

(declare-fun b!656482 () Bool)

(assert (=> b!656482 (= e!377058 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) index!984))))

(declare-fun b!656483 () Bool)

(assert (=> b!656483 (= e!377054 e!377065)))

(declare-fun res!425875 () Bool)

(assert (=> b!656483 (=> (not res!425875) (not e!377065))))

(declare-fun lt!306526 () SeekEntryResult!6980)

(assert (=> b!656483 (= res!425875 (or (= lt!306526 (MissingZero!6980 i!1108)) (= lt!306526 (MissingVacant!6980 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38677 (_ BitVec 32)) SeekEntryResult!6980)

(assert (=> b!656483 (= lt!306526 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!656484 () Bool)

(declare-fun Unit!22652 () Unit!22644)

(assert (=> b!656484 (= e!377061 Unit!22652)))

(declare-fun b!656485 () Bool)

(assert (=> b!656485 false))

(declare-fun lt!306529 () Unit!22644)

(assert (=> b!656485 (= lt!306529 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306523 (select (arr!18533 a!2986) j!136) index!984 Nil!12624))))

(assert (=> b!656485 (arrayNoDuplicates!0 lt!306523 index!984 Nil!12624)))

(declare-fun lt!306518 () Unit!22644)

(assert (=> b!656485 (= lt!306518 (lemmaNoDuplicateFromThenFromBigger!0 lt!306523 #b00000000000000000000000000000000 index!984))))

(assert (=> b!656485 (arrayNoDuplicates!0 lt!306523 #b00000000000000000000000000000000 Nil!12624)))

(declare-fun lt!306532 () Unit!22644)

(assert (=> b!656485 (= lt!306532 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12624))))

(assert (=> b!656485 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306530 () Unit!22644)

(assert (=> b!656485 (= lt!306530 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306523 (select (arr!18533 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!656485 e!377059))

(declare-fun res!425870 () Bool)

(assert (=> b!656485 (=> (not res!425870) (not e!377059))))

(assert (=> b!656485 (= res!425870 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) j!136))))

(declare-fun Unit!22653 () Unit!22644)

(assert (=> b!656485 (= e!377068 Unit!22653)))

(declare-fun b!656486 () Bool)

(declare-fun res!425874 () Bool)

(assert (=> b!656486 (=> (not res!425874) (not e!377054))))

(assert (=> b!656486 (= res!425874 (validKeyInArray!0 (select (arr!18533 a!2986) j!136)))))

(assert (= (and start!59482 res!425871) b!656467))

(assert (= (and b!656467 res!425865) b!656486))

(assert (= (and b!656486 res!425874) b!656471))

(assert (= (and b!656471 res!425869) b!656479))

(assert (= (and b!656479 res!425868) b!656483))

(assert (= (and b!656483 res!425875) b!656462))

(assert (= (and b!656462 res!425867) b!656472))

(assert (= (and b!656472 res!425860) b!656466))

(assert (= (and b!656466 res!425873) b!656465))

(assert (= (and b!656465 res!425861) b!656475))

(assert (= (and b!656475 res!425862) b!656473))

(assert (= (and b!656473 res!425863) b!656464))

(assert (= (and b!656473 c!75668) b!656470))

(assert (= (and b!656473 (not c!75668)) b!656463))

(assert (= (and b!656473 c!75670) b!656481))

(assert (= (and b!656473 (not c!75670)) b!656484))

(assert (= (and b!656481 res!425876) b!656474))

(assert (= (and b!656474 (not res!425872)) b!656469))

(assert (= (and b!656469 res!425864) b!656482))

(assert (= (and b!656481 c!75669) b!656478))

(assert (= (and b!656481 (not c!75669)) b!656477))

(assert (= (and b!656481 c!75671) b!656485))

(assert (= (and b!656481 (not c!75671)) b!656476))

(assert (= (and b!656485 res!425870) b!656468))

(assert (= (and b!656473 (not res!425866)) b!656480))

(declare-fun m!629591 () Bool)

(assert (=> b!656478 m!629591))

(declare-fun m!629593 () Bool)

(assert (=> b!656478 m!629593))

(declare-fun m!629595 () Bool)

(assert (=> b!656478 m!629595))

(declare-fun m!629597 () Bool)

(assert (=> b!656478 m!629597))

(assert (=> b!656478 m!629593))

(declare-fun m!629599 () Bool)

(assert (=> b!656478 m!629599))

(assert (=> b!656478 m!629593))

(declare-fun m!629601 () Bool)

(assert (=> b!656478 m!629601))

(assert (=> b!656478 m!629593))

(declare-fun m!629603 () Bool)

(assert (=> b!656478 m!629603))

(declare-fun m!629605 () Bool)

(assert (=> b!656478 m!629605))

(declare-fun m!629607 () Bool)

(assert (=> b!656472 m!629607))

(declare-fun m!629609 () Bool)

(assert (=> b!656479 m!629609))

(declare-fun m!629611 () Bool)

(assert (=> b!656462 m!629611))

(declare-fun m!629613 () Bool)

(assert (=> start!59482 m!629613))

(declare-fun m!629615 () Bool)

(assert (=> start!59482 m!629615))

(assert (=> b!656485 m!629593))

(declare-fun m!629617 () Bool)

(assert (=> b!656485 m!629617))

(assert (=> b!656485 m!629593))

(declare-fun m!629619 () Bool)

(assert (=> b!656485 m!629619))

(assert (=> b!656485 m!629593))

(assert (=> b!656485 m!629595))

(declare-fun m!629621 () Bool)

(assert (=> b!656485 m!629621))

(declare-fun m!629623 () Bool)

(assert (=> b!656485 m!629623))

(assert (=> b!656485 m!629593))

(declare-fun m!629625 () Bool)

(assert (=> b!656485 m!629625))

(assert (=> b!656485 m!629593))

(declare-fun m!629627 () Bool)

(assert (=> b!656485 m!629627))

(assert (=> b!656485 m!629605))

(declare-fun m!629629 () Bool)

(assert (=> b!656471 m!629629))

(declare-fun m!629631 () Bool)

(assert (=> b!656473 m!629631))

(assert (=> b!656473 m!629593))

(declare-fun m!629633 () Bool)

(assert (=> b!656473 m!629633))

(assert (=> b!656473 m!629593))

(declare-fun m!629635 () Bool)

(assert (=> b!656473 m!629635))

(declare-fun m!629637 () Bool)

(assert (=> b!656473 m!629637))

(declare-fun m!629639 () Bool)

(assert (=> b!656473 m!629639))

(declare-fun m!629641 () Bool)

(assert (=> b!656473 m!629641))

(declare-fun m!629643 () Bool)

(assert (=> b!656473 m!629643))

(declare-fun m!629645 () Bool)

(assert (=> b!656483 m!629645))

(assert (=> b!656481 m!629633))

(declare-fun m!629647 () Bool)

(assert (=> b!656481 m!629647))

(assert (=> b!656481 m!629593))

(assert (=> b!656465 m!629633))

(declare-fun m!629649 () Bool)

(assert (=> b!656465 m!629649))

(declare-fun m!629651 () Bool)

(assert (=> b!656475 m!629651))

(assert (=> b!656475 m!629593))

(assert (=> b!656475 m!629593))

(declare-fun m!629653 () Bool)

(assert (=> b!656475 m!629653))

(declare-fun m!629655 () Bool)

(assert (=> b!656466 m!629655))

(assert (=> b!656469 m!629593))

(assert (=> b!656469 m!629593))

(assert (=> b!656469 m!629619))

(assert (=> b!656486 m!629593))

(assert (=> b!656486 m!629593))

(declare-fun m!629657 () Bool)

(assert (=> b!656486 m!629657))

(assert (=> b!656482 m!629593))

(assert (=> b!656482 m!629593))

(declare-fun m!629659 () Bool)

(assert (=> b!656482 m!629659))

(assert (=> b!656468 m!629593))

(assert (=> b!656468 m!629593))

(assert (=> b!656468 m!629659))

(assert (=> b!656480 m!629633))

(assert (=> b!656480 m!629647))

(push 1)

(assert (not b!656468))

(assert (not b!656482))

(assert (not start!59482))

(assert (not b!656483))

(assert (not b!656471))

(assert (not b!656486))

(assert (not b!656475))

(assert (not b!656478))

(assert (not b!656473))

(assert (not b!656469))

(assert (not b!656479))

(assert (not b!656472))

(assert (not b!656462))

(assert (not b!656485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92651 () Bool)

(assert (=> d!92651 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!656471 d!92651))

(declare-fun d!92653 () Bool)

(declare-fun res!425902 () Bool)

(declare-fun e!377109 () Bool)

(assert (=> d!92653 (=> res!425902 e!377109)))

(assert (=> d!92653 (= res!425902 (= (select (arr!18533 lt!306523) index!984) (select (arr!18533 a!2986) j!136)))))

(assert (=> d!92653 (= (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) index!984) e!377109)))

(declare-fun b!656542 () Bool)

(declare-fun e!377110 () Bool)

(assert (=> b!656542 (= e!377109 e!377110)))

(declare-fun res!425903 () Bool)

(assert (=> b!656542 (=> (not res!425903) (not e!377110))))

(assert (=> b!656542 (= res!425903 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18897 lt!306523)))))

(declare-fun b!656543 () Bool)

(assert (=> b!656543 (= e!377110 (arrayContainsKey!0 lt!306523 (select (arr!18533 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92653 (not res!425902)) b!656542))

(assert (= (and b!656542 res!425903) b!656543))

(declare-fun m!629693 () Bool)

(assert (=> d!92653 m!629693))

(assert (=> b!656543 m!629593))

(declare-fun m!629697 () Bool)

(assert (=> b!656543 m!629697))

(assert (=> b!656482 d!92653))

(declare-fun b!656630 () Bool)

(declare-fun e!377177 () SeekEntryResult!6980)

(declare-fun lt!306581 () SeekEntryResult!6980)

(assert (=> b!656630 (= e!377177 (MissingZero!6980 (index!30283 lt!306581)))))

(declare-fun b!656631 () Bool)

(assert (=> b!656631 (= e!377177 (seekKeyOrZeroReturnVacant!0 (x!59095 lt!306581) (index!30283 lt!306581) (index!30283 lt!306581) k!1786 a!2986 mask!3053))))

(declare-fun b!656632 () Bool)

(declare-fun e!377174 () SeekEntryResult!6980)

(declare-fun e!377176 () SeekEntryResult!6980)

(assert (=> b!656632 (= e!377174 e!377176)))

(declare-fun lt!306582 () (_ BitVec 64))

(assert (=> b!656632 (= lt!306582 (select (arr!18533 a!2986) (index!30283 lt!306581)))))

(declare-fun c!75711 () Bool)

(assert (=> b!656632 (= c!75711 (= lt!306582 k!1786))))

(declare-fun b!656633 () Bool)

(declare-fun c!75709 () Bool)

(assert (=> b!656633 (= c!75709 (= lt!306582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656633 (= e!377176 e!377177)))

(declare-fun b!656634 () Bool)

(assert (=> b!656634 (= e!377176 (Found!6980 (index!30283 lt!306581)))))

(declare-fun d!92659 () Bool)

(declare-fun lt!306580 () SeekEntryResult!6980)

(assert (=> d!92659 (and (or (is-Undefined!6980 lt!306580) (not (is-Found!6980 lt!306580)) (and (bvsge (index!30282 lt!306580) #b00000000000000000000000000000000) (bvslt (index!30282 lt!306580) (size!18897 a!2986)))) (or (is-Undefined!6980 lt!306580) (is-Found!6980 lt!306580) (not (is-MissingZero!6980 lt!306580)) (and (bvsge (index!30281 lt!306580) #b00000000000000000000000000000000) (bvslt (index!30281 lt!306580) (size!18897 a!2986)))) (or (is-Undefined!6980 lt!306580) (is-Found!6980 lt!306580) (is-MissingZero!6980 lt!306580) (not (is-MissingVacant!6980 lt!306580)) (and (bvsge (index!30284 lt!306580) #b00000000000000000000000000000000) (bvslt (index!30284 lt!306580) (size!18897 a!2986)))) (or (is-Undefined!6980 lt!306580) (ite (is-Found!6980 lt!306580) (= (select (arr!18533 a!2986) (index!30282 lt!306580)) k!1786) (ite (is-MissingZero!6980 lt!306580) (= (select (arr!18533 a!2986) (index!30281 lt!306580)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6980 lt!306580) (= (select (arr!18533 a!2986) (index!30284 lt!306580)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92659 (= lt!306580 e!377174)))

(declare-fun c!75710 () Bool)

(assert (=> d!92659 (= c!75710 (and (is-Intermediate!6980 lt!306581) (undefined!7792 lt!306581)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38677 (_ BitVec 32)) SeekEntryResult!6980)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92659 (= lt!306581 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92659 (validMask!0 mask!3053)))

(assert (=> d!92659 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!306580)))

(declare-fun b!656635 () Bool)

(assert (=> b!656635 (= e!377174 Undefined!6980)))

(assert (= (and d!92659 c!75710) b!656635))

(assert (= (and d!92659 (not c!75710)) b!656632))

(assert (= (and b!656632 c!75711) b!656634))

(assert (= (and b!656632 (not c!75711)) b!656633))

(assert (= (and b!656633 c!75709) b!656630))

(assert (= (and b!656633 (not c!75709)) b!656631))

(declare-fun m!629779 () Bool)

(assert (=> b!656631 m!629779))

(declare-fun m!629783 () Bool)

(assert (=> b!656632 m!629783))

(declare-fun m!629785 () Bool)

(assert (=> d!92659 m!629785))

(assert (=> d!92659 m!629613))

(declare-fun m!629787 () Bool)

(assert (=> d!92659 m!629787))

(declare-fun m!629789 () Bool)

(assert (=> d!92659 m!629789))

(declare-fun m!629791 () Bool)

(assert (=> d!92659 m!629791))

(assert (=> d!92659 m!629787))

(declare-fun m!629793 () Bool)

(assert (=> d!92659 m!629793))

(assert (=> b!656483 d!92659))

(declare-fun d!92701 () Bool)

(declare-fun res!425952 () Bool)

(declare-fun e!377201 () Bool)

(assert (=> d!92701 (=> res!425952 e!377201)))

(assert (=> d!92701 (= res!425952 (bvsge #b00000000000000000000000000000000 (size!18897 a!2986)))))

(assert (=> d!92701 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12624) e!377201)))

(declare-fun b!656676 () Bool)

(declare-fun e!377203 () Bool)

(declare-fun contains!3197 (List!12627 (_ BitVec 64)) Bool)

(assert (=> b!656676 (= e!377203 (contains!3197 Nil!12624 (select (arr!18533 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656677 () Bool)

(declare-fun e!377202 () Bool)

(declare-fun call!33873 () Bool)

(assert (=> b!656677 (= e!377202 call!33873)))

(declare-fun b!656678 () Bool)

(declare-fun e!377204 () Bool)

(assert (=> b!656678 (= e!377201 e!377204)))

(declare-fun res!425953 () Bool)

(assert (=> b!656678 (=> (not res!425953) (not e!377204))))

(assert (=> b!656678 (= res!425953 (not e!377203))))

(declare-fun res!425954 () Bool)

(assert (=> b!656678 (=> (not res!425954) (not e!377203))))

(assert (=> b!656678 (= res!425954 (validKeyInArray!0 (select (arr!18533 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656679 () Bool)

(assert (=> b!656679 (= e!377204 e!377202)))

(declare-fun c!75729 () Bool)

(assert (=> b!656679 (= c!75729 (validKeyInArray!0 (select (arr!18533 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656680 () Bool)

(assert (=> b!656680 (= e!377202 call!33873)))

(declare-fun bm!33870 () Bool)

(assert (=> bm!33870 (= call!33873 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75729 (Cons!12623 (select (arr!18533 a!2986) #b00000000000000000000000000000000) Nil!12624) Nil!12624)))))

(assert (= (and d!92701 (not res!425952)) b!656678))

(assert (= (and b!656678 res!425954) b!656676))

(assert (= (and b!656678 res!425953) b!656679))

(assert (= (and b!656679 c!75729) b!656680))

(assert (= (and b!656679 (not c!75729)) b!656677))

(assert (= (or b!656680 b!656677) bm!33870))

(declare-fun m!629821 () Bool)

(assert (=> b!656676 m!629821))

(assert (=> b!656676 m!629821))

(declare-fun m!629823 () Bool)

(assert (=> b!656676 m!629823))

(assert (=> b!656678 m!629821))

(assert (=> b!656678 m!629821))

(declare-fun m!629825 () Bool)

(assert (=> b!656678 m!629825))

(assert (=> b!656679 m!629821))

(assert (=> b!656679 m!629821))

(assert (=> b!656679 m!629825))

(assert (=> bm!33870 m!629821))

(declare-fun m!629827 () Bool)

(assert (=> bm!33870 m!629827))

(assert (=> b!656472 d!92701))

(declare-fun b!656710 () Bool)

(declare-fun e!377226 () SeekEntryResult!6980)

(declare-fun e!377225 () SeekEntryResult!6980)

(assert (=> b!656710 (= e!377226 e!377225)))

(declare-fun lt!306621 () (_ BitVec 64))

(declare-fun c!75740 () Bool)

(assert (=> b!656710 (= c!75740 (= lt!306621 (select (arr!18533 a!2986) j!136)))))

(declare-fun d!92715 () Bool)

(declare-fun lt!306620 () SeekEntryResult!6980)

(assert (=> d!92715 (and (or (is-Undefined!6980 lt!306620) (not (is-Found!6980 lt!306620)) (and (bvsge (index!30282 lt!306620) #b00000000000000000000000000000000) (bvslt (index!30282 lt!306620) (size!18897 a!2986)))) (or (is-Undefined!6980 lt!306620) (is-Found!6980 lt!306620) (not (is-MissingVacant!6980 lt!306620)) (not (= (index!30284 lt!306620) vacantSpotIndex!68)) (and (bvsge (index!30284 lt!306620) #b00000000000000000000000000000000) (bvslt (index!30284 lt!306620) (size!18897 a!2986)))) (or (is-Undefined!6980 lt!306620) (ite (is-Found!6980 lt!306620) (= (select (arr!18533 a!2986) (index!30282 lt!306620)) (select (arr!18533 a!2986) j!136)) (and (is-MissingVacant!6980 lt!306620) (= (index!30284 lt!306620) vacantSpotIndex!68) (= (select (arr!18533 a!2986) (index!30284 lt!306620)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92715 (= lt!306620 e!377226)))

(declare-fun c!75741 () Bool)

(assert (=> d!92715 (= c!75741 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92715 (= lt!306621 (select (arr!18533 a!2986) lt!306528))))

(assert (=> d!92715 (validMask!0 mask!3053)))

(assert (=> d!92715 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306528 vacantSpotIndex!68 (select (arr!18533 a!2986) j!136) a!2986 mask!3053) lt!306620)))

(declare-fun e!377227 () SeekEntryResult!6980)

(declare-fun b!656711 () Bool)

(assert (=> b!656711 (= e!377227 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!306528 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18533 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656712 () Bool)

(assert (=> b!656712 (= e!377225 (Found!6980 lt!306528))))

(declare-fun b!656713 () Bool)

(assert (=> b!656713 (= e!377226 Undefined!6980)))

(declare-fun b!656714 () Bool)

(declare-fun c!75739 () Bool)

(assert (=> b!656714 (= c!75739 (= lt!306621 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656714 (= e!377225 e!377227)))

(declare-fun b!656715 () Bool)

(assert (=> b!656715 (= e!377227 (MissingVacant!6980 vacantSpotIndex!68))))

(assert (= (and d!92715 c!75741) b!656713))

(assert (= (and d!92715 (not c!75741)) b!656710))

(assert (= (and b!656710 c!75740) b!656712))

(assert (= (and b!656710 (not c!75740)) b!656714))

(assert (= (and b!656714 c!75739) b!656715))

(assert (= (and b!656714 (not c!75739)) b!656711))

(declare-fun m!629857 () Bool)

(assert (=> d!92715 m!629857))

(declare-fun m!629861 () Bool)

(assert (=> d!92715 m!629861))

(declare-fun m!629863 () Bool)

(assert (=> d!92715 m!629863))

(assert (=> d!92715 m!629613))

(declare-fun m!629869 () Bool)

(assert (=> b!656711 m!629869))

(assert (=> b!656711 m!629869))

(assert (=> b!656711 m!629593))

(declare-fun m!629873 () Bool)

(assert (=> b!656711 m!629873))

(assert (=> b!656473 d!92715))

(declare-fun b!656722 () Bool)

(declare-fun e!377232 () SeekEntryResult!6980)

(declare-fun e!377231 () SeekEntryResult!6980)

(assert (=> b!656722 (= e!377232 e!377231)))

(declare-fun c!75746 () Bool)

(declare-fun lt!306625 () (_ BitVec 64))

(assert (=> b!656722 (= c!75746 (= lt!306625 lt!306517))))

(declare-fun d!92731 () Bool)

(declare-fun lt!306624 () SeekEntryResult!6980)

(assert (=> d!92731 (and (or (is-Undefined!6980 lt!306624) (not (is-Found!6980 lt!306624)) (and (bvsge (index!30282 lt!306624) #b00000000000000000000000000000000) (bvslt (index!30282 lt!306624) (size!18897 lt!306523)))) (or (is-Undefined!6980 lt!306624) (is-Found!6980 lt!306624) (not (is-MissingVacant!6980 lt!306624)) (not (= (index!30284 lt!306624) vacantSpotIndex!68)) (and (bvsge (index!30284 lt!306624) #b00000000000000000000000000000000) (bvslt (index!30284 lt!306624) (size!18897 lt!306523)))) (or (is-Undefined!6980 lt!306624) (ite (is-Found!6980 lt!306624) (= (select (arr!18533 lt!306523) (index!30282 lt!306624)) lt!306517) (and (is-MissingVacant!6980 lt!306624) (= (index!30284 lt!306624) vacantSpotIndex!68) (= (select (arr!18533 lt!306523) (index!30284 lt!306624)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92731 (= lt!306624 e!377232)))

(declare-fun c!75747 () Bool)

(assert (=> d!92731 (= c!75747 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92731 (= lt!306625 (select (arr!18533 lt!306523) lt!306528))))

(assert (=> d!92731 (validMask!0 mask!3053)))

(assert (=> d!92731 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306528 vacantSpotIndex!68 lt!306517 lt!306523 mask!3053) lt!306624)))

