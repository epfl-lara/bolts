; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56102 () Bool)

(assert start!56102)

(declare-fun b!618614 () Bool)

(declare-fun e!354770 () Bool)

(declare-fun e!354776 () Bool)

(assert (=> b!618614 (= e!354770 e!354776)))

(declare-fun res!398670 () Bool)

(assert (=> b!618614 (=> (not res!398670) (not e!354776))))

(declare-datatypes ((SeekEntryResult!6457 0))(
  ( (MissingZero!6457 (index!28111 (_ BitVec 32))) (Found!6457 (index!28112 (_ BitVec 32))) (Intermediate!6457 (undefined!7269 Bool) (index!28113 (_ BitVec 32)) (x!56922 (_ BitVec 32))) (Undefined!6457) (MissingVacant!6457 (index!28114 (_ BitVec 32))) )
))
(declare-fun lt!285387 () SeekEntryResult!6457)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!618614 (= res!398670 (or (= lt!285387 (MissingZero!6457 i!1108)) (= lt!285387 (MissingVacant!6457 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37535 0))(
  ( (array!37536 (arr!18010 (Array (_ BitVec 32) (_ BitVec 64))) (size!18374 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37535)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37535 (_ BitVec 32)) SeekEntryResult!6457)

(assert (=> b!618614 (= lt!285387 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!618615 () Bool)

(declare-fun res!398668 () Bool)

(assert (=> b!618615 (=> (not res!398668) (not e!354770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618615 (= res!398668 (validKeyInArray!0 k0!1786))))

(declare-fun b!618616 () Bool)

(declare-datatypes ((Unit!20390 0))(
  ( (Unit!20391) )
))
(declare-fun e!354771 () Unit!20390)

(declare-fun Unit!20392 () Unit!20390)

(assert (=> b!618616 (= e!354771 Unit!20392)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!398684 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618616 (= res!398684 (= (select (store (arr!18010 a!2986) i!1108 k0!1786) index!984) (select (arr!18010 a!2986) j!136)))))

(declare-fun e!354777 () Bool)

(assert (=> b!618616 (=> (not res!398684) (not e!354777))))

(assert (=> b!618616 e!354777))

(declare-fun c!70343 () Bool)

(assert (=> b!618616 (= c!70343 (bvslt j!136 index!984))))

(declare-fun lt!285378 () Unit!20390)

(declare-fun e!354772 () Unit!20390)

(assert (=> b!618616 (= lt!285378 e!354772)))

(declare-fun c!70341 () Bool)

(assert (=> b!618616 (= c!70341 (bvslt index!984 j!136))))

(declare-fun lt!285381 () Unit!20390)

(declare-fun e!354773 () Unit!20390)

(assert (=> b!618616 (= lt!285381 e!354773)))

(assert (=> b!618616 false))

(declare-fun b!618617 () Bool)

(declare-fun res!398673 () Bool)

(assert (=> b!618617 (= res!398673 (bvsge j!136 index!984))))

(declare-fun e!354767 () Bool)

(assert (=> b!618617 (=> res!398673 e!354767)))

(assert (=> b!618617 (= e!354777 e!354767)))

(declare-fun b!618618 () Bool)

(declare-fun res!398678 () Bool)

(assert (=> b!618618 (=> (not res!398678) (not e!354770))))

(declare-fun arrayContainsKey!0 (array!37535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618618 (= res!398678 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618619 () Bool)

(declare-fun res!398671 () Bool)

(assert (=> b!618619 (=> (not res!398671) (not e!354776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37535 (_ BitVec 32)) Bool)

(assert (=> b!618619 (= res!398671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!398674 () Bool)

(assert (=> start!56102 (=> (not res!398674) (not e!354770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56102 (= res!398674 (validMask!0 mask!3053))))

(assert (=> start!56102 e!354770))

(assert (=> start!56102 true))

(declare-fun array_inv!13784 (array!37535) Bool)

(assert (=> start!56102 (array_inv!13784 a!2986)))

(declare-fun b!618620 () Bool)

(declare-fun Unit!20393 () Unit!20390)

(assert (=> b!618620 (= e!354773 Unit!20393)))

(declare-fun b!618621 () Bool)

(declare-fun e!354774 () Unit!20390)

(declare-fun Unit!20394 () Unit!20390)

(assert (=> b!618621 (= e!354774 Unit!20394)))

(assert (=> b!618621 false))

(declare-fun b!618622 () Bool)

(declare-fun res!398683 () Bool)

(assert (=> b!618622 (=> (not res!398683) (not e!354770))))

(assert (=> b!618622 (= res!398683 (and (= (size!18374 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18374 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18374 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618623 () Bool)

(assert (=> b!618623 false))

(declare-fun lt!285395 () array!37535)

(declare-fun lt!285379 () Unit!20390)

(declare-datatypes ((List!12104 0))(
  ( (Nil!12101) (Cons!12100 (h!13145 (_ BitVec 64)) (t!18340 List!12104)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37535 (_ BitVec 64) (_ BitVec 32) List!12104) Unit!20390)

(assert (=> b!618623 (= lt!285379 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285395 (select (arr!18010 a!2986) j!136) j!136 Nil!12101))))

(declare-fun arrayNoDuplicates!0 (array!37535 (_ BitVec 32) List!12104) Bool)

(assert (=> b!618623 (arrayNoDuplicates!0 lt!285395 j!136 Nil!12101)))

(declare-fun lt!285382 () Unit!20390)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37535 (_ BitVec 32) (_ BitVec 32)) Unit!20390)

(assert (=> b!618623 (= lt!285382 (lemmaNoDuplicateFromThenFromBigger!0 lt!285395 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618623 (arrayNoDuplicates!0 lt!285395 #b00000000000000000000000000000000 Nil!12101)))

(declare-fun lt!285396 () Unit!20390)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12104) Unit!20390)

(assert (=> b!618623 (= lt!285396 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12101))))

(assert (=> b!618623 (arrayContainsKey!0 lt!285395 (select (arr!18010 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285389 () Unit!20390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20390)

(assert (=> b!618623 (= lt!285389 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285395 (select (arr!18010 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20395 () Unit!20390)

(assert (=> b!618623 (= e!354772 Unit!20395)))

(declare-fun b!618624 () Bool)

(declare-fun res!398676 () Bool)

(assert (=> b!618624 (=> (not res!398676) (not e!354776))))

(assert (=> b!618624 (= res!398676 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12101))))

(declare-fun b!618625 () Bool)

(declare-fun res!398680 () Bool)

(assert (=> b!618625 (= res!398680 (arrayContainsKey!0 lt!285395 (select (arr!18010 a!2986) j!136) j!136))))

(declare-fun e!354781 () Bool)

(assert (=> b!618625 (=> (not res!398680) (not e!354781))))

(assert (=> b!618625 (= e!354767 e!354781)))

(declare-fun b!618626 () Bool)

(declare-fun res!398681 () Bool)

(assert (=> b!618626 (=> (not res!398681) (not e!354770))))

(assert (=> b!618626 (= res!398681 (validKeyInArray!0 (select (arr!18010 a!2986) j!136)))))

(declare-fun b!618627 () Bool)

(declare-fun e!354778 () Bool)

(assert (=> b!618627 (= e!354776 e!354778)))

(declare-fun res!398669 () Bool)

(assert (=> b!618627 (=> (not res!398669) (not e!354778))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618627 (= res!398669 (= (select (store (arr!18010 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618627 (= lt!285395 (array!37536 (store (arr!18010 a!2986) i!1108 k0!1786) (size!18374 a!2986)))))

(declare-fun b!618628 () Bool)

(declare-fun Unit!20396 () Unit!20390)

(assert (=> b!618628 (= e!354771 Unit!20396)))

(declare-fun b!618629 () Bool)

(declare-fun Unit!20397 () Unit!20390)

(assert (=> b!618629 (= e!354772 Unit!20397)))

(declare-fun b!618630 () Bool)

(declare-fun e!354775 () Bool)

(declare-fun lt!285377 () SeekEntryResult!6457)

(declare-fun lt!285394 () SeekEntryResult!6457)

(assert (=> b!618630 (= e!354775 (= lt!285377 lt!285394))))

(declare-fun b!618631 () Bool)

(declare-fun e!354780 () Bool)

(declare-fun e!354769 () Bool)

(assert (=> b!618631 (= e!354780 (not e!354769))))

(declare-fun res!398677 () Bool)

(assert (=> b!618631 (=> res!398677 e!354769)))

(declare-fun lt!285392 () SeekEntryResult!6457)

(assert (=> b!618631 (= res!398677 (not (= lt!285392 (MissingVacant!6457 vacantSpotIndex!68))))))

(declare-fun lt!285386 () Unit!20390)

(assert (=> b!618631 (= lt!285386 e!354771)))

(declare-fun c!70342 () Bool)

(assert (=> b!618631 (= c!70342 (= lt!285392 (Found!6457 index!984)))))

(declare-fun lt!285385 () Unit!20390)

(assert (=> b!618631 (= lt!285385 e!354774)))

(declare-fun c!70340 () Bool)

(assert (=> b!618631 (= c!70340 (= lt!285392 Undefined!6457))))

(declare-fun lt!285393 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37535 (_ BitVec 32)) SeekEntryResult!6457)

(assert (=> b!618631 (= lt!285392 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285393 lt!285395 mask!3053))))

(assert (=> b!618631 e!354775))

(declare-fun res!398682 () Bool)

(assert (=> b!618631 (=> (not res!398682) (not e!354775))))

(declare-fun lt!285384 () (_ BitVec 32))

(assert (=> b!618631 (= res!398682 (= lt!285394 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285384 vacantSpotIndex!68 lt!285393 lt!285395 mask!3053)))))

(assert (=> b!618631 (= lt!285394 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285384 vacantSpotIndex!68 (select (arr!18010 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618631 (= lt!285393 (select (store (arr!18010 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!285383 () Unit!20390)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37535 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20390)

(assert (=> b!618631 (= lt!285383 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285384 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618631 (= lt!285384 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618632 () Bool)

(assert (=> b!618632 false))

(declare-fun lt!285388 () Unit!20390)

(assert (=> b!618632 (= lt!285388 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285395 (select (arr!18010 a!2986) j!136) index!984 Nil!12101))))

(assert (=> b!618632 (arrayNoDuplicates!0 lt!285395 index!984 Nil!12101)))

(declare-fun lt!285390 () Unit!20390)

(assert (=> b!618632 (= lt!285390 (lemmaNoDuplicateFromThenFromBigger!0 lt!285395 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618632 (arrayNoDuplicates!0 lt!285395 #b00000000000000000000000000000000 Nil!12101)))

(declare-fun lt!285391 () Unit!20390)

(assert (=> b!618632 (= lt!285391 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12101))))

(assert (=> b!618632 (arrayContainsKey!0 lt!285395 (select (arr!18010 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285380 () Unit!20390)

(assert (=> b!618632 (= lt!285380 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285395 (select (arr!18010 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354779 () Bool)

(assert (=> b!618632 e!354779))

(declare-fun res!398675 () Bool)

(assert (=> b!618632 (=> (not res!398675) (not e!354779))))

(assert (=> b!618632 (= res!398675 (arrayContainsKey!0 lt!285395 (select (arr!18010 a!2986) j!136) j!136))))

(declare-fun Unit!20398 () Unit!20390)

(assert (=> b!618632 (= e!354773 Unit!20398)))

(declare-fun b!618633 () Bool)

(assert (=> b!618633 (= e!354779 (arrayContainsKey!0 lt!285395 (select (arr!18010 a!2986) j!136) index!984))))

(declare-fun b!618634 () Bool)

(assert (=> b!618634 (= e!354769 true)))

(assert (=> b!618634 (= (select (store (arr!18010 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618635 () Bool)

(assert (=> b!618635 (= e!354778 e!354780)))

(declare-fun res!398679 () Bool)

(assert (=> b!618635 (=> (not res!398679) (not e!354780))))

(assert (=> b!618635 (= res!398679 (and (= lt!285377 (Found!6457 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18010 a!2986) index!984) (select (arr!18010 a!2986) j!136))) (not (= (select (arr!18010 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!618635 (= lt!285377 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18010 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618636 () Bool)

(declare-fun Unit!20399 () Unit!20390)

(assert (=> b!618636 (= e!354774 Unit!20399)))

(declare-fun b!618637 () Bool)

(declare-fun res!398672 () Bool)

(assert (=> b!618637 (=> (not res!398672) (not e!354776))))

(assert (=> b!618637 (= res!398672 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18010 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618638 () Bool)

(assert (=> b!618638 (= e!354781 (arrayContainsKey!0 lt!285395 (select (arr!18010 a!2986) j!136) index!984))))

(assert (= (and start!56102 res!398674) b!618622))

(assert (= (and b!618622 res!398683) b!618626))

(assert (= (and b!618626 res!398681) b!618615))

(assert (= (and b!618615 res!398668) b!618618))

(assert (= (and b!618618 res!398678) b!618614))

(assert (= (and b!618614 res!398670) b!618619))

(assert (= (and b!618619 res!398671) b!618624))

(assert (= (and b!618624 res!398676) b!618637))

(assert (= (and b!618637 res!398672) b!618627))

(assert (= (and b!618627 res!398669) b!618635))

(assert (= (and b!618635 res!398679) b!618631))

(assert (= (and b!618631 res!398682) b!618630))

(assert (= (and b!618631 c!70340) b!618621))

(assert (= (and b!618631 (not c!70340)) b!618636))

(assert (= (and b!618631 c!70342) b!618616))

(assert (= (and b!618631 (not c!70342)) b!618628))

(assert (= (and b!618616 res!398684) b!618617))

(assert (= (and b!618617 (not res!398673)) b!618625))

(assert (= (and b!618625 res!398680) b!618638))

(assert (= (and b!618616 c!70343) b!618623))

(assert (= (and b!618616 (not c!70343)) b!618629))

(assert (= (and b!618616 c!70341) b!618632))

(assert (= (and b!618616 (not c!70341)) b!618620))

(assert (= (and b!618632 res!398675) b!618633))

(assert (= (and b!618631 (not res!398677)) b!618634))

(declare-fun m!594679 () Bool)

(assert (=> b!618615 m!594679))

(declare-fun m!594681 () Bool)

(assert (=> b!618625 m!594681))

(assert (=> b!618625 m!594681))

(declare-fun m!594683 () Bool)

(assert (=> b!618625 m!594683))

(declare-fun m!594685 () Bool)

(assert (=> b!618618 m!594685))

(declare-fun m!594687 () Bool)

(assert (=> b!618616 m!594687))

(declare-fun m!594689 () Bool)

(assert (=> b!618616 m!594689))

(assert (=> b!618616 m!594681))

(assert (=> b!618627 m!594687))

(declare-fun m!594691 () Bool)

(assert (=> b!618627 m!594691))

(assert (=> b!618638 m!594681))

(assert (=> b!618638 m!594681))

(declare-fun m!594693 () Bool)

(assert (=> b!618638 m!594693))

(assert (=> b!618632 m!594681))

(declare-fun m!594695 () Bool)

(assert (=> b!618632 m!594695))

(assert (=> b!618632 m!594681))

(declare-fun m!594697 () Bool)

(assert (=> b!618632 m!594697))

(assert (=> b!618632 m!594681))

(assert (=> b!618632 m!594683))

(declare-fun m!594699 () Bool)

(assert (=> b!618632 m!594699))

(declare-fun m!594701 () Bool)

(assert (=> b!618632 m!594701))

(assert (=> b!618632 m!594681))

(declare-fun m!594703 () Bool)

(assert (=> b!618632 m!594703))

(assert (=> b!618632 m!594681))

(declare-fun m!594705 () Bool)

(assert (=> b!618632 m!594705))

(declare-fun m!594707 () Bool)

(assert (=> b!618632 m!594707))

(assert (=> b!618633 m!594681))

(assert (=> b!618633 m!594681))

(assert (=> b!618633 m!594693))

(assert (=> b!618634 m!594687))

(assert (=> b!618634 m!594689))

(assert (=> b!618626 m!594681))

(assert (=> b!618626 m!594681))

(declare-fun m!594709 () Bool)

(assert (=> b!618626 m!594709))

(declare-fun m!594711 () Bool)

(assert (=> start!56102 m!594711))

(declare-fun m!594713 () Bool)

(assert (=> start!56102 m!594713))

(assert (=> b!618623 m!594681))

(declare-fun m!594715 () Bool)

(assert (=> b!618623 m!594715))

(assert (=> b!618623 m!594681))

(declare-fun m!594717 () Bool)

(assert (=> b!618623 m!594717))

(declare-fun m!594719 () Bool)

(assert (=> b!618623 m!594719))

(assert (=> b!618623 m!594681))

(declare-fun m!594721 () Bool)

(assert (=> b!618623 m!594721))

(assert (=> b!618623 m!594681))

(declare-fun m!594723 () Bool)

(assert (=> b!618623 m!594723))

(assert (=> b!618623 m!594699))

(assert (=> b!618623 m!594707))

(declare-fun m!594725 () Bool)

(assert (=> b!618635 m!594725))

(assert (=> b!618635 m!594681))

(assert (=> b!618635 m!594681))

(declare-fun m!594727 () Bool)

(assert (=> b!618635 m!594727))

(declare-fun m!594729 () Bool)

(assert (=> b!618619 m!594729))

(declare-fun m!594731 () Bool)

(assert (=> b!618637 m!594731))

(declare-fun m!594733 () Bool)

(assert (=> b!618631 m!594733))

(declare-fun m!594735 () Bool)

(assert (=> b!618631 m!594735))

(assert (=> b!618631 m!594681))

(assert (=> b!618631 m!594687))

(declare-fun m!594737 () Bool)

(assert (=> b!618631 m!594737))

(assert (=> b!618631 m!594681))

(declare-fun m!594739 () Bool)

(assert (=> b!618631 m!594739))

(declare-fun m!594741 () Bool)

(assert (=> b!618631 m!594741))

(declare-fun m!594743 () Bool)

(assert (=> b!618631 m!594743))

(declare-fun m!594745 () Bool)

(assert (=> b!618624 m!594745))

(declare-fun m!594747 () Bool)

(assert (=> b!618614 m!594747))

(check-sat (not b!618624) (not b!618618) (not b!618631) (not b!618623) (not b!618614) (not start!56102) (not b!618625) (not b!618638) (not b!618626) (not b!618619) (not b!618635) (not b!618615) (not b!618633) (not b!618632))
(check-sat)
