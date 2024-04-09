; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56100 () Bool)

(assert start!56100)

(declare-fun b!618539 () Bool)

(declare-fun e!354725 () Bool)

(declare-fun e!354736 () Bool)

(assert (=> b!618539 (= e!354725 e!354736)))

(declare-fun res!398620 () Bool)

(assert (=> b!618539 (=> (not res!398620) (not e!354736))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6456 0))(
  ( (MissingZero!6456 (index!28107 (_ BitVec 32))) (Found!6456 (index!28108 (_ BitVec 32))) (Intermediate!6456 (undefined!7268 Bool) (index!28109 (_ BitVec 32)) (x!56921 (_ BitVec 32))) (Undefined!6456) (MissingVacant!6456 (index!28110 (_ BitVec 32))) )
))
(declare-fun lt!285326 () SeekEntryResult!6456)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37533 0))(
  ( (array!37534 (arr!18009 (Array (_ BitVec 32) (_ BitVec 64))) (size!18373 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37533)

(assert (=> b!618539 (= res!398620 (and (= lt!285326 (Found!6456 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18009 a!2986) index!984) (select (arr!18009 a!2986) j!136))) (not (= (select (arr!18009 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37533 (_ BitVec 32)) SeekEntryResult!6456)

(assert (=> b!618539 (= lt!285326 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18009 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618540 () Bool)

(declare-fun res!398625 () Bool)

(assert (=> b!618540 (= res!398625 (bvsge j!136 index!984))))

(declare-fun e!354731 () Bool)

(assert (=> b!618540 (=> res!398625 e!354731)))

(declare-fun e!354730 () Bool)

(assert (=> b!618540 (= e!354730 e!354731)))

(declare-fun b!618541 () Bool)

(declare-fun res!398621 () Bool)

(declare-fun e!354727 () Bool)

(assert (=> b!618541 (=> (not res!398621) (not e!354727))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!618541 (= res!398621 (and (= (size!18373 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18373 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18373 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618542 () Bool)

(declare-datatypes ((Unit!20380 0))(
  ( (Unit!20381) )
))
(declare-fun e!354723 () Unit!20380)

(declare-fun Unit!20382 () Unit!20380)

(assert (=> b!618542 (= e!354723 Unit!20382)))

(assert (=> b!618542 false))

(declare-fun b!618543 () Bool)

(declare-fun e!354726 () Bool)

(assert (=> b!618543 (= e!354726 true)))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!618543 (= (select (store (arr!18009 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618544 () Bool)

(declare-fun e!354728 () Unit!20380)

(declare-fun Unit!20383 () Unit!20380)

(assert (=> b!618544 (= e!354728 Unit!20383)))

(declare-fun b!618545 () Bool)

(declare-fun e!354732 () Unit!20380)

(declare-fun Unit!20384 () Unit!20380)

(assert (=> b!618545 (= e!354732 Unit!20384)))

(declare-fun b!618546 () Bool)

(assert (=> b!618546 (= e!354736 (not e!354726))))

(declare-fun res!398622 () Bool)

(assert (=> b!618546 (=> res!398622 e!354726)))

(declare-fun lt!285325 () SeekEntryResult!6456)

(assert (=> b!618546 (= res!398622 (not (= lt!285325 (MissingVacant!6456 vacantSpotIndex!68))))))

(declare-fun lt!285328 () Unit!20380)

(assert (=> b!618546 (= lt!285328 e!354728)))

(declare-fun c!70329 () Bool)

(assert (=> b!618546 (= c!70329 (= lt!285325 (Found!6456 index!984)))))

(declare-fun lt!285335 () Unit!20380)

(assert (=> b!618546 (= lt!285335 e!354723)))

(declare-fun c!70331 () Bool)

(assert (=> b!618546 (= c!70331 (= lt!285325 Undefined!6456))))

(declare-fun lt!285318 () array!37533)

(declare-fun lt!285327 () (_ BitVec 64))

(assert (=> b!618546 (= lt!285325 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285327 lt!285318 mask!3053))))

(declare-fun e!354724 () Bool)

(assert (=> b!618546 e!354724))

(declare-fun res!398618 () Bool)

(assert (=> b!618546 (=> (not res!398618) (not e!354724))))

(declare-fun lt!285330 () SeekEntryResult!6456)

(declare-fun lt!285323 () (_ BitVec 32))

(assert (=> b!618546 (= res!398618 (= lt!285330 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285323 vacantSpotIndex!68 lt!285327 lt!285318 mask!3053)))))

(assert (=> b!618546 (= lt!285330 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285323 vacantSpotIndex!68 (select (arr!18009 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618546 (= lt!285327 (select (store (arr!18009 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285324 () Unit!20380)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37533 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20380)

(assert (=> b!618546 (= lt!285324 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285323 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618546 (= lt!285323 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618547 () Bool)

(declare-fun e!354734 () Bool)

(assert (=> b!618547 (= e!354727 e!354734)))

(declare-fun res!398633 () Bool)

(assert (=> b!618547 (=> (not res!398633) (not e!354734))))

(declare-fun lt!285319 () SeekEntryResult!6456)

(assert (=> b!618547 (= res!398633 (or (= lt!285319 (MissingZero!6456 i!1108)) (= lt!285319 (MissingVacant!6456 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37533 (_ BitVec 32)) SeekEntryResult!6456)

(assert (=> b!618547 (= lt!285319 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618548 () Bool)

(assert (=> b!618548 false))

(declare-fun lt!285331 () Unit!20380)

(declare-datatypes ((List!12103 0))(
  ( (Nil!12100) (Cons!12099 (h!13144 (_ BitVec 64)) (t!18339 List!12103)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37533 (_ BitVec 64) (_ BitVec 32) List!12103) Unit!20380)

(assert (=> b!618548 (= lt!285331 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285318 (select (arr!18009 a!2986) j!136) j!136 Nil!12100))))

(declare-fun arrayNoDuplicates!0 (array!37533 (_ BitVec 32) List!12103) Bool)

(assert (=> b!618548 (arrayNoDuplicates!0 lt!285318 j!136 Nil!12100)))

(declare-fun lt!285332 () Unit!20380)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37533 (_ BitVec 32) (_ BitVec 32)) Unit!20380)

(assert (=> b!618548 (= lt!285332 (lemmaNoDuplicateFromThenFromBigger!0 lt!285318 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618548 (arrayNoDuplicates!0 lt!285318 #b00000000000000000000000000000000 Nil!12100)))

(declare-fun lt!285336 () Unit!20380)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37533 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12103) Unit!20380)

(assert (=> b!618548 (= lt!285336 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12100))))

(declare-fun arrayContainsKey!0 (array!37533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618548 (arrayContainsKey!0 lt!285318 (select (arr!18009 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285322 () Unit!20380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37533 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20380)

(assert (=> b!618548 (= lt!285322 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285318 (select (arr!18009 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!354722 () Unit!20380)

(declare-fun Unit!20385 () Unit!20380)

(assert (=> b!618548 (= e!354722 Unit!20385)))

(declare-fun b!618549 () Bool)

(declare-fun res!398617 () Bool)

(assert (=> b!618549 (=> (not res!398617) (not e!354734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37533 (_ BitVec 32)) Bool)

(assert (=> b!618549 (= res!398617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618550 () Bool)

(declare-fun res!398630 () Bool)

(assert (=> b!618550 (=> (not res!398630) (not e!354734))))

(assert (=> b!618550 (= res!398630 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18009 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618551 () Bool)

(declare-fun res!398627 () Bool)

(assert (=> b!618551 (=> (not res!398627) (not e!354727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618551 (= res!398627 (validKeyInArray!0 k!1786))))

(declare-fun b!618552 () Bool)

(declare-fun Unit!20386 () Unit!20380)

(assert (=> b!618552 (= e!354722 Unit!20386)))

(declare-fun res!398623 () Bool)

(declare-fun b!618553 () Bool)

(assert (=> b!618553 (= res!398623 (arrayContainsKey!0 lt!285318 (select (arr!18009 a!2986) j!136) j!136))))

(declare-fun e!354729 () Bool)

(assert (=> b!618553 (=> (not res!398623) (not e!354729))))

(assert (=> b!618553 (= e!354731 e!354729)))

(declare-fun res!398624 () Bool)

(assert (=> start!56100 (=> (not res!398624) (not e!354727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56100 (= res!398624 (validMask!0 mask!3053))))

(assert (=> start!56100 e!354727))

(assert (=> start!56100 true))

(declare-fun array_inv!13783 (array!37533) Bool)

(assert (=> start!56100 (array_inv!13783 a!2986)))

(declare-fun b!618554 () Bool)

(assert (=> b!618554 (= e!354734 e!354725)))

(declare-fun res!398628 () Bool)

(assert (=> b!618554 (=> (not res!398628) (not e!354725))))

(assert (=> b!618554 (= res!398628 (= (select (store (arr!18009 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618554 (= lt!285318 (array!37534 (store (arr!18009 a!2986) i!1108 k!1786) (size!18373 a!2986)))))

(declare-fun b!618555 () Bool)

(assert (=> b!618555 (= e!354724 (= lt!285326 lt!285330))))

(declare-fun b!618556 () Bool)

(assert (=> b!618556 (= e!354729 (arrayContainsKey!0 lt!285318 (select (arr!18009 a!2986) j!136) index!984))))

(declare-fun b!618557 () Bool)

(declare-fun res!398629 () Bool)

(assert (=> b!618557 (=> (not res!398629) (not e!354727))))

(assert (=> b!618557 (= res!398629 (validKeyInArray!0 (select (arr!18009 a!2986) j!136)))))

(declare-fun b!618558 () Bool)

(declare-fun e!354735 () Bool)

(assert (=> b!618558 (= e!354735 (arrayContainsKey!0 lt!285318 (select (arr!18009 a!2986) j!136) index!984))))

(declare-fun b!618559 () Bool)

(declare-fun Unit!20387 () Unit!20380)

(assert (=> b!618559 (= e!354728 Unit!20387)))

(declare-fun res!398632 () Bool)

(assert (=> b!618559 (= res!398632 (= (select (store (arr!18009 a!2986) i!1108 k!1786) index!984) (select (arr!18009 a!2986) j!136)))))

(assert (=> b!618559 (=> (not res!398632) (not e!354730))))

(assert (=> b!618559 e!354730))

(declare-fun c!70330 () Bool)

(assert (=> b!618559 (= c!70330 (bvslt j!136 index!984))))

(declare-fun lt!285317 () Unit!20380)

(assert (=> b!618559 (= lt!285317 e!354722)))

(declare-fun c!70328 () Bool)

(assert (=> b!618559 (= c!70328 (bvslt index!984 j!136))))

(declare-fun lt!285329 () Unit!20380)

(assert (=> b!618559 (= lt!285329 e!354732)))

(assert (=> b!618559 false))

(declare-fun b!618560 () Bool)

(declare-fun res!398619 () Bool)

(assert (=> b!618560 (=> (not res!398619) (not e!354734))))

(assert (=> b!618560 (= res!398619 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12100))))

(declare-fun b!618561 () Bool)

(declare-fun res!398626 () Bool)

(assert (=> b!618561 (=> (not res!398626) (not e!354727))))

(assert (=> b!618561 (= res!398626 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618562 () Bool)

(declare-fun Unit!20388 () Unit!20380)

(assert (=> b!618562 (= e!354723 Unit!20388)))

(declare-fun b!618563 () Bool)

(assert (=> b!618563 false))

(declare-fun lt!285321 () Unit!20380)

(assert (=> b!618563 (= lt!285321 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285318 (select (arr!18009 a!2986) j!136) index!984 Nil!12100))))

(assert (=> b!618563 (arrayNoDuplicates!0 lt!285318 index!984 Nil!12100)))

(declare-fun lt!285320 () Unit!20380)

(assert (=> b!618563 (= lt!285320 (lemmaNoDuplicateFromThenFromBigger!0 lt!285318 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618563 (arrayNoDuplicates!0 lt!285318 #b00000000000000000000000000000000 Nil!12100)))

(declare-fun lt!285334 () Unit!20380)

(assert (=> b!618563 (= lt!285334 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12100))))

(assert (=> b!618563 (arrayContainsKey!0 lt!285318 (select (arr!18009 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285333 () Unit!20380)

(assert (=> b!618563 (= lt!285333 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285318 (select (arr!18009 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618563 e!354735))

(declare-fun res!398631 () Bool)

(assert (=> b!618563 (=> (not res!398631) (not e!354735))))

(assert (=> b!618563 (= res!398631 (arrayContainsKey!0 lt!285318 (select (arr!18009 a!2986) j!136) j!136))))

(declare-fun Unit!20389 () Unit!20380)

(assert (=> b!618563 (= e!354732 Unit!20389)))

(assert (= (and start!56100 res!398624) b!618541))

(assert (= (and b!618541 res!398621) b!618557))

(assert (= (and b!618557 res!398629) b!618551))

(assert (= (and b!618551 res!398627) b!618561))

(assert (= (and b!618561 res!398626) b!618547))

(assert (= (and b!618547 res!398633) b!618549))

(assert (= (and b!618549 res!398617) b!618560))

(assert (= (and b!618560 res!398619) b!618550))

(assert (= (and b!618550 res!398630) b!618554))

(assert (= (and b!618554 res!398628) b!618539))

(assert (= (and b!618539 res!398620) b!618546))

(assert (= (and b!618546 res!398618) b!618555))

(assert (= (and b!618546 c!70331) b!618542))

(assert (= (and b!618546 (not c!70331)) b!618562))

(assert (= (and b!618546 c!70329) b!618559))

(assert (= (and b!618546 (not c!70329)) b!618544))

(assert (= (and b!618559 res!398632) b!618540))

(assert (= (and b!618540 (not res!398625)) b!618553))

(assert (= (and b!618553 res!398623) b!618556))

(assert (= (and b!618559 c!70330) b!618548))

(assert (= (and b!618559 (not c!70330)) b!618552))

(assert (= (and b!618559 c!70328) b!618563))

(assert (= (and b!618559 (not c!70328)) b!618545))

(assert (= (and b!618563 res!398631) b!618558))

(assert (= (and b!618546 (not res!398622)) b!618543))

(declare-fun m!594609 () Bool)

(assert (=> b!618558 m!594609))

(assert (=> b!618558 m!594609))

(declare-fun m!594611 () Bool)

(assert (=> b!618558 m!594611))

(assert (=> b!618556 m!594609))

(assert (=> b!618556 m!594609))

(assert (=> b!618556 m!594611))

(assert (=> b!618548 m!594609))

(declare-fun m!594613 () Bool)

(assert (=> b!618548 m!594613))

(declare-fun m!594615 () Bool)

(assert (=> b!618548 m!594615))

(assert (=> b!618548 m!594609))

(assert (=> b!618548 m!594609))

(declare-fun m!594617 () Bool)

(assert (=> b!618548 m!594617))

(assert (=> b!618548 m!594609))

(declare-fun m!594619 () Bool)

(assert (=> b!618548 m!594619))

(declare-fun m!594621 () Bool)

(assert (=> b!618548 m!594621))

(declare-fun m!594623 () Bool)

(assert (=> b!618548 m!594623))

(declare-fun m!594625 () Bool)

(assert (=> b!618548 m!594625))

(declare-fun m!594627 () Bool)

(assert (=> b!618550 m!594627))

(assert (=> b!618553 m!594609))

(assert (=> b!618553 m!594609))

(declare-fun m!594629 () Bool)

(assert (=> b!618553 m!594629))

(declare-fun m!594631 () Bool)

(assert (=> b!618560 m!594631))

(declare-fun m!594633 () Bool)

(assert (=> b!618539 m!594633))

(assert (=> b!618539 m!594609))

(assert (=> b!618539 m!594609))

(declare-fun m!594635 () Bool)

(assert (=> b!618539 m!594635))

(declare-fun m!594637 () Bool)

(assert (=> b!618546 m!594637))

(declare-fun m!594639 () Bool)

(assert (=> b!618546 m!594639))

(assert (=> b!618546 m!594609))

(declare-fun m!594641 () Bool)

(assert (=> b!618546 m!594641))

(declare-fun m!594643 () Bool)

(assert (=> b!618546 m!594643))

(declare-fun m!594645 () Bool)

(assert (=> b!618546 m!594645))

(declare-fun m!594647 () Bool)

(assert (=> b!618546 m!594647))

(assert (=> b!618546 m!594609))

(declare-fun m!594649 () Bool)

(assert (=> b!618546 m!594649))

(assert (=> b!618559 m!594641))

(declare-fun m!594651 () Bool)

(assert (=> b!618559 m!594651))

(assert (=> b!618559 m!594609))

(assert (=> b!618554 m!594641))

(declare-fun m!594653 () Bool)

(assert (=> b!618554 m!594653))

(assert (=> b!618543 m!594641))

(assert (=> b!618543 m!594651))

(declare-fun m!594655 () Bool)

(assert (=> b!618551 m!594655))

(declare-fun m!594657 () Bool)

(assert (=> b!618561 m!594657))

(declare-fun m!594659 () Bool)

(assert (=> b!618549 m!594659))

(assert (=> b!618557 m!594609))

(assert (=> b!618557 m!594609))

(declare-fun m!594661 () Bool)

(assert (=> b!618557 m!594661))

(declare-fun m!594663 () Bool)

(assert (=> b!618547 m!594663))

(declare-fun m!594665 () Bool)

(assert (=> start!56100 m!594665))

(declare-fun m!594667 () Bool)

(assert (=> start!56100 m!594667))

(declare-fun m!594669 () Bool)

(assert (=> b!618563 m!594669))

(assert (=> b!618563 m!594609))

(declare-fun m!594671 () Bool)

(assert (=> b!618563 m!594671))

(assert (=> b!618563 m!594609))

(declare-fun m!594673 () Bool)

(assert (=> b!618563 m!594673))

(assert (=> b!618563 m!594621))

(assert (=> b!618563 m!594609))

(assert (=> b!618563 m!594629))

(assert (=> b!618563 m!594609))

(declare-fun m!594675 () Bool)

(assert (=> b!618563 m!594675))

(assert (=> b!618563 m!594609))

(declare-fun m!594677 () Bool)

(assert (=> b!618563 m!594677))

(assert (=> b!618563 m!594625))

(push 1)

