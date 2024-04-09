; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59382 () Bool)

(assert start!59382)

(declare-fun b!655530 () Bool)

(declare-datatypes ((Unit!22564 0))(
  ( (Unit!22565) )
))
(declare-fun e!376470 () Unit!22564)

(declare-fun Unit!22566 () Unit!22564)

(assert (=> b!655530 (= e!376470 Unit!22566)))

(declare-fun b!655531 () Bool)

(declare-fun e!376482 () Bool)

(declare-fun e!376475 () Bool)

(assert (=> b!655531 (= e!376482 e!376475)))

(declare-fun res!425349 () Bool)

(assert (=> b!655531 (=> (not res!425349) (not e!376475))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38658 0))(
  ( (array!38659 (arr!18525 (Array (_ BitVec 32) (_ BitVec 64))) (size!18889 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38658)

(assert (=> b!655531 (= res!425349 (= (select (store (arr!18525 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!305884 () array!38658)

(assert (=> b!655531 (= lt!305884 (array!38659 (store (arr!18525 a!2986) i!1108 k!1786) (size!18889 a!2986)))))

(declare-fun b!655532 () Bool)

(declare-fun res!425343 () Bool)

(assert (=> b!655532 (=> (not res!425343) (not e!376482))))

(declare-datatypes ((List!12619 0))(
  ( (Nil!12616) (Cons!12615 (h!13660 (_ BitVec 64)) (t!18855 List!12619)) )
))
(declare-fun arrayNoDuplicates!0 (array!38658 (_ BitVec 32) List!12619) Bool)

(assert (=> b!655532 (= res!425343 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12616))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!376476 () Bool)

(declare-fun b!655533 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655533 (= e!376476 (arrayContainsKey!0 lt!305884 (select (arr!18525 a!2986) j!136) index!984))))

(declare-fun b!655534 () Bool)

(declare-fun res!425344 () Bool)

(assert (=> b!655534 (= res!425344 (bvsge j!136 index!984))))

(declare-fun e!376483 () Bool)

(assert (=> b!655534 (=> res!425344 e!376483)))

(declare-fun e!376481 () Bool)

(assert (=> b!655534 (= e!376481 e!376483)))

(declare-fun b!655535 () Bool)

(declare-fun e!376479 () Bool)

(assert (=> b!655535 (= e!376479 e!376482)))

(declare-fun res!425346 () Bool)

(assert (=> b!655535 (=> (not res!425346) (not e!376482))))

(declare-datatypes ((SeekEntryResult!6972 0))(
  ( (MissingZero!6972 (index!30246 (_ BitVec 32))) (Found!6972 (index!30247 (_ BitVec 32))) (Intermediate!6972 (undefined!7784 Bool) (index!30248 (_ BitVec 32)) (x!59062 (_ BitVec 32))) (Undefined!6972) (MissingVacant!6972 (index!30249 (_ BitVec 32))) )
))
(declare-fun lt!305895 () SeekEntryResult!6972)

(assert (=> b!655535 (= res!425346 (or (= lt!305895 (MissingZero!6972 i!1108)) (= lt!305895 (MissingVacant!6972 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38658 (_ BitVec 32)) SeekEntryResult!6972)

(assert (=> b!655535 (= lt!305895 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun e!376474 () Bool)

(declare-fun b!655536 () Bool)

(assert (=> b!655536 (= e!376474 (arrayContainsKey!0 lt!305884 (select (arr!18525 a!2986) j!136) index!984))))

(declare-fun b!655537 () Bool)

(declare-fun e!376471 () Unit!22564)

(declare-fun Unit!22567 () Unit!22564)

(assert (=> b!655537 (= e!376471 Unit!22567)))

(declare-fun b!655538 () Bool)

(declare-fun res!425351 () Bool)

(assert (=> b!655538 (=> (not res!425351) (not e!376482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38658 (_ BitVec 32)) Bool)

(assert (=> b!655538 (= res!425351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655539 () Bool)

(declare-fun Unit!22568 () Unit!22564)

(assert (=> b!655539 (= e!376470 Unit!22568)))

(declare-fun res!425348 () Bool)

(assert (=> b!655539 (= res!425348 (= (select (store (arr!18525 a!2986) i!1108 k!1786) index!984) (select (arr!18525 a!2986) j!136)))))

(assert (=> b!655539 (=> (not res!425348) (not e!376481))))

(assert (=> b!655539 e!376481))

(declare-fun c!75465 () Bool)

(assert (=> b!655539 (= c!75465 (bvslt j!136 index!984))))

(declare-fun lt!305888 () Unit!22564)

(assert (=> b!655539 (= lt!305888 e!376471)))

(declare-fun c!75466 () Bool)

(assert (=> b!655539 (= c!75466 (bvslt index!984 j!136))))

(declare-fun lt!305889 () Unit!22564)

(declare-fun e!376473 () Unit!22564)

(assert (=> b!655539 (= lt!305889 e!376473)))

(assert (=> b!655539 false))

(declare-fun res!425339 () Bool)

(assert (=> start!59382 (=> (not res!425339) (not e!376479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59382 (= res!425339 (validMask!0 mask!3053))))

(assert (=> start!59382 e!376479))

(assert (=> start!59382 true))

(declare-fun array_inv!14299 (array!38658) Bool)

(assert (=> start!59382 (array_inv!14299 a!2986)))

(declare-fun b!655540 () Bool)

(declare-fun res!425338 () Bool)

(assert (=> b!655540 (=> (not res!425338) (not e!376482))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!655540 (= res!425338 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18525 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655541 () Bool)

(declare-fun e!376478 () Bool)

(assert (=> b!655541 (= e!376475 e!376478)))

(declare-fun res!425345 () Bool)

(assert (=> b!655541 (=> (not res!425345) (not e!376478))))

(declare-fun lt!305892 () SeekEntryResult!6972)

(assert (=> b!655541 (= res!425345 (and (= lt!305892 (Found!6972 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18525 a!2986) index!984) (select (arr!18525 a!2986) j!136))) (not (= (select (arr!18525 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38658 (_ BitVec 32)) SeekEntryResult!6972)

(assert (=> b!655541 (= lt!305892 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18525 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655542 () Bool)

(declare-fun res!425350 () Bool)

(assert (=> b!655542 (=> (not res!425350) (not e!376479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655542 (= res!425350 (validKeyInArray!0 k!1786))))

(declare-fun b!655543 () Bool)

(assert (=> b!655543 false))

(declare-fun lt!305900 () Unit!22564)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38658 (_ BitVec 64) (_ BitVec 32) List!12619) Unit!22564)

(assert (=> b!655543 (= lt!305900 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305884 (select (arr!18525 a!2986) j!136) index!984 Nil!12616))))

(assert (=> b!655543 (arrayNoDuplicates!0 lt!305884 index!984 Nil!12616)))

(declare-fun lt!305898 () Unit!22564)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38658 (_ BitVec 32) (_ BitVec 32)) Unit!22564)

(assert (=> b!655543 (= lt!305898 (lemmaNoDuplicateFromThenFromBigger!0 lt!305884 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655543 (arrayNoDuplicates!0 lt!305884 #b00000000000000000000000000000000 Nil!12616)))

(declare-fun lt!305894 () Unit!22564)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38658 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12619) Unit!22564)

(assert (=> b!655543 (= lt!305894 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12616))))

(assert (=> b!655543 (arrayContainsKey!0 lt!305884 (select (arr!18525 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305886 () Unit!22564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38658 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22564)

(assert (=> b!655543 (= lt!305886 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305884 (select (arr!18525 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655543 e!376474))

(declare-fun res!425341 () Bool)

(assert (=> b!655543 (=> (not res!425341) (not e!376474))))

(assert (=> b!655543 (= res!425341 (arrayContainsKey!0 lt!305884 (select (arr!18525 a!2986) j!136) j!136))))

(declare-fun Unit!22569 () Unit!22564)

(assert (=> b!655543 (= e!376473 Unit!22569)))

(declare-fun b!655544 () Bool)

(assert (=> b!655544 false))

(declare-fun lt!305897 () Unit!22564)

(assert (=> b!655544 (= lt!305897 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305884 (select (arr!18525 a!2986) j!136) j!136 Nil!12616))))

(assert (=> b!655544 (arrayNoDuplicates!0 lt!305884 j!136 Nil!12616)))

(declare-fun lt!305882 () Unit!22564)

(assert (=> b!655544 (= lt!305882 (lemmaNoDuplicateFromThenFromBigger!0 lt!305884 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655544 (arrayNoDuplicates!0 lt!305884 #b00000000000000000000000000000000 Nil!12616)))

(declare-fun lt!305893 () Unit!22564)

(assert (=> b!655544 (= lt!305893 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12616))))

(assert (=> b!655544 (arrayContainsKey!0 lt!305884 (select (arr!18525 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305901 () Unit!22564)

(assert (=> b!655544 (= lt!305901 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305884 (select (arr!18525 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22570 () Unit!22564)

(assert (=> b!655544 (= e!376471 Unit!22570)))

(declare-fun b!655545 () Bool)

(declare-fun res!425347 () Bool)

(assert (=> b!655545 (=> (not res!425347) (not e!376479))))

(assert (=> b!655545 (= res!425347 (validKeyInArray!0 (select (arr!18525 a!2986) j!136)))))

(declare-fun b!655546 () Bool)

(declare-fun res!425340 () Bool)

(assert (=> b!655546 (=> (not res!425340) (not e!376479))))

(assert (=> b!655546 (= res!425340 (and (= (size!18889 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18889 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18889 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655547 () Bool)

(declare-fun Unit!22571 () Unit!22564)

(assert (=> b!655547 (= e!376473 Unit!22571)))

(declare-fun b!655548 () Bool)

(declare-fun e!376472 () Unit!22564)

(declare-fun Unit!22572 () Unit!22564)

(assert (=> b!655548 (= e!376472 Unit!22572)))

(declare-fun b!655549 () Bool)

(declare-fun lt!305899 () SeekEntryResult!6972)

(assert (=> b!655549 (= e!376478 (not (or (not (= lt!305899 (MissingVacant!6972 vacantSpotIndex!68))) (bvslt index!984 (size!18889 a!2986)))))))

(declare-fun lt!305883 () Unit!22564)

(assert (=> b!655549 (= lt!305883 e!376470)))

(declare-fun c!75464 () Bool)

(assert (=> b!655549 (= c!75464 (= lt!305899 (Found!6972 index!984)))))

(declare-fun lt!305885 () Unit!22564)

(assert (=> b!655549 (= lt!305885 e!376472)))

(declare-fun c!75467 () Bool)

(assert (=> b!655549 (= c!75467 (= lt!305899 Undefined!6972))))

(declare-fun lt!305890 () (_ BitVec 64))

(assert (=> b!655549 (= lt!305899 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305890 lt!305884 mask!3053))))

(declare-fun e!376480 () Bool)

(assert (=> b!655549 e!376480))

(declare-fun res!425342 () Bool)

(assert (=> b!655549 (=> (not res!425342) (not e!376480))))

(declare-fun lt!305896 () (_ BitVec 32))

(declare-fun lt!305887 () SeekEntryResult!6972)

(assert (=> b!655549 (= res!425342 (= lt!305887 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305896 vacantSpotIndex!68 lt!305890 lt!305884 mask!3053)))))

(assert (=> b!655549 (= lt!305887 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305896 vacantSpotIndex!68 (select (arr!18525 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655549 (= lt!305890 (select (store (arr!18525 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305891 () Unit!22564)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38658 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22564)

(assert (=> b!655549 (= lt!305891 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305896 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655549 (= lt!305896 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655550 () Bool)

(declare-fun Unit!22573 () Unit!22564)

(assert (=> b!655550 (= e!376472 Unit!22573)))

(assert (=> b!655550 false))

(declare-fun b!655551 () Bool)

(assert (=> b!655551 (= e!376480 (= lt!305892 lt!305887))))

(declare-fun b!655552 () Bool)

(declare-fun res!425337 () Bool)

(assert (=> b!655552 (=> (not res!425337) (not e!376479))))

(assert (=> b!655552 (= res!425337 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655553 () Bool)

(declare-fun res!425336 () Bool)

(assert (=> b!655553 (= res!425336 (arrayContainsKey!0 lt!305884 (select (arr!18525 a!2986) j!136) j!136))))

(assert (=> b!655553 (=> (not res!425336) (not e!376476))))

(assert (=> b!655553 (= e!376483 e!376476)))

(assert (= (and start!59382 res!425339) b!655546))

(assert (= (and b!655546 res!425340) b!655545))

(assert (= (and b!655545 res!425347) b!655542))

(assert (= (and b!655542 res!425350) b!655552))

(assert (= (and b!655552 res!425337) b!655535))

(assert (= (and b!655535 res!425346) b!655538))

(assert (= (and b!655538 res!425351) b!655532))

(assert (= (and b!655532 res!425343) b!655540))

(assert (= (and b!655540 res!425338) b!655531))

(assert (= (and b!655531 res!425349) b!655541))

(assert (= (and b!655541 res!425345) b!655549))

(assert (= (and b!655549 res!425342) b!655551))

(assert (= (and b!655549 c!75467) b!655550))

(assert (= (and b!655549 (not c!75467)) b!655548))

(assert (= (and b!655549 c!75464) b!655539))

(assert (= (and b!655549 (not c!75464)) b!655530))

(assert (= (and b!655539 res!425348) b!655534))

(assert (= (and b!655534 (not res!425344)) b!655553))

(assert (= (and b!655553 res!425336) b!655533))

(assert (= (and b!655539 c!75465) b!655544))

(assert (= (and b!655539 (not c!75465)) b!655537))

(assert (= (and b!655539 c!75466) b!655543))

(assert (= (and b!655539 (not c!75466)) b!655547))

(assert (= (and b!655543 res!425341) b!655536))

(declare-fun m!628671 () Bool)

(assert (=> b!655538 m!628671))

(declare-fun m!628673 () Bool)

(assert (=> b!655540 m!628673))

(declare-fun m!628675 () Bool)

(assert (=> b!655535 m!628675))

(declare-fun m!628677 () Bool)

(assert (=> b!655536 m!628677))

(assert (=> b!655536 m!628677))

(declare-fun m!628679 () Bool)

(assert (=> b!655536 m!628679))

(declare-fun m!628681 () Bool)

(assert (=> b!655543 m!628681))

(assert (=> b!655543 m!628677))

(assert (=> b!655543 m!628677))

(declare-fun m!628683 () Bool)

(assert (=> b!655543 m!628683))

(declare-fun m!628685 () Bool)

(assert (=> b!655543 m!628685))

(assert (=> b!655543 m!628677))

(declare-fun m!628687 () Bool)

(assert (=> b!655543 m!628687))

(assert (=> b!655543 m!628677))

(declare-fun m!628689 () Bool)

(assert (=> b!655543 m!628689))

(declare-fun m!628691 () Bool)

(assert (=> b!655543 m!628691))

(declare-fun m!628693 () Bool)

(assert (=> b!655543 m!628693))

(assert (=> b!655543 m!628677))

(declare-fun m!628695 () Bool)

(assert (=> b!655543 m!628695))

(assert (=> b!655533 m!628677))

(assert (=> b!655533 m!628677))

(assert (=> b!655533 m!628679))

(declare-fun m!628697 () Bool)

(assert (=> b!655532 m!628697))

(declare-fun m!628699 () Bool)

(assert (=> b!655531 m!628699))

(declare-fun m!628701 () Bool)

(assert (=> b!655531 m!628701))

(declare-fun m!628703 () Bool)

(assert (=> b!655552 m!628703))

(assert (=> b!655544 m!628677))

(declare-fun m!628705 () Bool)

(assert (=> b!655544 m!628705))

(assert (=> b!655544 m!628677))

(assert (=> b!655544 m!628677))

(declare-fun m!628707 () Bool)

(assert (=> b!655544 m!628707))

(declare-fun m!628709 () Bool)

(assert (=> b!655544 m!628709))

(assert (=> b!655544 m!628693))

(assert (=> b!655544 m!628677))

(declare-fun m!628711 () Bool)

(assert (=> b!655544 m!628711))

(declare-fun m!628713 () Bool)

(assert (=> b!655544 m!628713))

(assert (=> b!655544 m!628691))

(assert (=> b!655545 m!628677))

(assert (=> b!655545 m!628677))

(declare-fun m!628715 () Bool)

(assert (=> b!655545 m!628715))

(assert (=> b!655539 m!628699))

(declare-fun m!628717 () Bool)

(assert (=> b!655539 m!628717))

(assert (=> b!655539 m!628677))

(declare-fun m!628719 () Bool)

(assert (=> b!655549 m!628719))

(assert (=> b!655549 m!628677))

(declare-fun m!628721 () Bool)

(assert (=> b!655549 m!628721))

(assert (=> b!655549 m!628699))

(assert (=> b!655549 m!628677))

(declare-fun m!628723 () Bool)

(assert (=> b!655549 m!628723))

(declare-fun m!628725 () Bool)

(assert (=> b!655549 m!628725))

(declare-fun m!628727 () Bool)

(assert (=> b!655549 m!628727))

(declare-fun m!628729 () Bool)

(assert (=> b!655549 m!628729))

(declare-fun m!628731 () Bool)

(assert (=> start!59382 m!628731))

(declare-fun m!628733 () Bool)

(assert (=> start!59382 m!628733))

(declare-fun m!628735 () Bool)

(assert (=> b!655542 m!628735))

(assert (=> b!655553 m!628677))

(assert (=> b!655553 m!628677))

(assert (=> b!655553 m!628687))

(declare-fun m!628737 () Bool)

(assert (=> b!655541 m!628737))

(assert (=> b!655541 m!628677))

(assert (=> b!655541 m!628677))

(declare-fun m!628739 () Bool)

(assert (=> b!655541 m!628739))

(push 1)

(assert (not b!655544))

(assert (not b!655538))

(assert (not b!655552))

(assert (not b!655553))

(assert (not b!655543))

(assert (not b!655542))

(assert (not b!655532))

(assert (not b!655535))

(assert (not b!655545))

(assert (not start!59382))

(assert (not b!655536))

(assert (not b!655549))

(assert (not b!655533))

(assert (not b!655541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

