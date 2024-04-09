; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59588 () Bool)

(assert start!59588)

(declare-fun b!657635 () Bool)

(declare-fun e!377790 () Bool)

(declare-datatypes ((SeekEntryResult!6991 0))(
  ( (MissingZero!6991 (index!30328 (_ BitVec 32))) (Found!6991 (index!30329 (_ BitVec 32))) (Intermediate!6991 (undefined!7803 Bool) (index!30330 (_ BitVec 32)) (x!59147 (_ BitVec 32))) (Undefined!6991) (MissingVacant!6991 (index!30331 (_ BitVec 32))) )
))
(declare-fun lt!307340 () SeekEntryResult!6991)

(declare-fun lt!307343 () SeekEntryResult!6991)

(assert (=> b!657635 (= e!377790 (= lt!307340 lt!307343))))

(declare-fun b!657636 () Bool)

(declare-fun res!426568 () Bool)

(declare-fun e!377792 () Bool)

(assert (=> b!657636 (=> (not res!426568) (not e!377792))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657636 (= res!426568 (validKeyInArray!0 k0!1786))))

(declare-fun b!657637 () Bool)

(declare-fun res!426569 () Bool)

(assert (=> b!657637 (=> (not res!426569) (not e!377792))))

(declare-datatypes ((array!38702 0))(
  ( (array!38703 (arr!18544 (Array (_ BitVec 32) (_ BitVec 64))) (size!18908 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38702)

(declare-fun arrayContainsKey!0 (array!38702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657637 (= res!426569 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657638 () Bool)

(declare-fun e!377799 () Bool)

(assert (=> b!657638 (= e!377792 e!377799)))

(declare-fun res!426561 () Bool)

(assert (=> b!657638 (=> (not res!426561) (not e!377799))))

(declare-fun lt!307336 () SeekEntryResult!6991)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!657638 (= res!426561 (or (= lt!307336 (MissingZero!6991 i!1108)) (= lt!307336 (MissingVacant!6991 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38702 (_ BitVec 32)) SeekEntryResult!6991)

(assert (=> b!657638 (= lt!307336 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!657639 () Bool)

(declare-fun e!377793 () Bool)

(declare-fun e!377802 () Bool)

(assert (=> b!657639 (= e!377793 (not e!377802))))

(declare-fun res!426566 () Bool)

(assert (=> b!657639 (=> res!426566 e!377802)))

(declare-fun lt!307329 () SeekEntryResult!6991)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657639 (= res!426566 (not (= lt!307329 (MissingVacant!6991 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!22754 0))(
  ( (Unit!22755) )
))
(declare-fun lt!307344 () Unit!22754)

(declare-fun e!377797 () Unit!22754)

(assert (=> b!657639 (= lt!307344 e!377797)))

(declare-fun c!75911 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!657639 (= c!75911 (= lt!307329 (Found!6991 index!984)))))

(declare-fun lt!307334 () Unit!22754)

(declare-fun e!377796 () Unit!22754)

(assert (=> b!657639 (= lt!307334 e!377796)))

(declare-fun c!75910 () Bool)

(assert (=> b!657639 (= c!75910 (= lt!307329 Undefined!6991))))

(declare-fun lt!307338 () (_ BitVec 64))

(declare-fun lt!307339 () array!38702)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38702 (_ BitVec 32)) SeekEntryResult!6991)

(assert (=> b!657639 (= lt!307329 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307338 lt!307339 mask!3053))))

(assert (=> b!657639 e!377790))

(declare-fun res!426557 () Bool)

(assert (=> b!657639 (=> (not res!426557) (not e!377790))))

(declare-fun lt!307328 () (_ BitVec 32))

(assert (=> b!657639 (= res!426557 (= lt!307343 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307328 vacantSpotIndex!68 lt!307338 lt!307339 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!657639 (= lt!307343 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307328 vacantSpotIndex!68 (select (arr!18544 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657639 (= lt!307338 (select (store (arr!18544 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!307347 () Unit!22754)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38702 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22754)

(assert (=> b!657639 (= lt!307347 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307328 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657639 (= lt!307328 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!377789 () Bool)

(declare-fun b!657640 () Bool)

(assert (=> b!657640 (= e!377789 (arrayContainsKey!0 lt!307339 (select (arr!18544 a!2986) j!136) index!984))))

(declare-fun b!657641 () Bool)

(declare-fun res!426555 () Bool)

(assert (=> b!657641 (= res!426555 (bvsge j!136 index!984))))

(declare-fun e!377791 () Bool)

(assert (=> b!657641 (=> res!426555 e!377791)))

(declare-fun e!377800 () Bool)

(assert (=> b!657641 (= e!377800 e!377791)))

(declare-fun b!657642 () Bool)

(declare-fun res!426556 () Bool)

(assert (=> b!657642 (=> (not res!426556) (not e!377799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38702 (_ BitVec 32)) Bool)

(assert (=> b!657642 (= res!426556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657643 () Bool)

(declare-fun e!377794 () Bool)

(assert (=> b!657643 (= e!377794 e!377793)))

(declare-fun res!426563 () Bool)

(assert (=> b!657643 (=> (not res!426563) (not e!377793))))

(assert (=> b!657643 (= res!426563 (and (= lt!307340 (Found!6991 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18544 a!2986) index!984) (select (arr!18544 a!2986) j!136))) (not (= (select (arr!18544 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657643 (= lt!307340 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18544 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657644 () Bool)

(declare-fun Unit!22756 () Unit!22754)

(assert (=> b!657644 (= e!377797 Unit!22756)))

(declare-fun b!657645 () Bool)

(assert (=> b!657645 false))

(declare-fun lt!307342 () Unit!22754)

(declare-datatypes ((List!12638 0))(
  ( (Nil!12635) (Cons!12634 (h!13679 (_ BitVec 64)) (t!18874 List!12638)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38702 (_ BitVec 64) (_ BitVec 32) List!12638) Unit!22754)

(assert (=> b!657645 (= lt!307342 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307339 (select (arr!18544 a!2986) j!136) j!136 Nil!12635))))

(declare-fun arrayNoDuplicates!0 (array!38702 (_ BitVec 32) List!12638) Bool)

(assert (=> b!657645 (arrayNoDuplicates!0 lt!307339 j!136 Nil!12635)))

(declare-fun lt!307330 () Unit!22754)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38702 (_ BitVec 32) (_ BitVec 32)) Unit!22754)

(assert (=> b!657645 (= lt!307330 (lemmaNoDuplicateFromThenFromBigger!0 lt!307339 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657645 (arrayNoDuplicates!0 lt!307339 #b00000000000000000000000000000000 Nil!12635)))

(declare-fun lt!307341 () Unit!22754)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38702 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12638) Unit!22754)

(assert (=> b!657645 (= lt!307341 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12635))))

(assert (=> b!657645 (arrayContainsKey!0 lt!307339 (select (arr!18544 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307345 () Unit!22754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38702 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22754)

(assert (=> b!657645 (= lt!307345 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307339 (select (arr!18544 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377801 () Unit!22754)

(declare-fun Unit!22757 () Unit!22754)

(assert (=> b!657645 (= e!377801 Unit!22757)))

(declare-fun b!657646 () Bool)

(declare-fun Unit!22758 () Unit!22754)

(assert (=> b!657646 (= e!377797 Unit!22758)))

(declare-fun res!426554 () Bool)

(assert (=> b!657646 (= res!426554 (= (select (store (arr!18544 a!2986) i!1108 k0!1786) index!984) (select (arr!18544 a!2986) j!136)))))

(assert (=> b!657646 (=> (not res!426554) (not e!377800))))

(assert (=> b!657646 e!377800))

(declare-fun c!75909 () Bool)

(assert (=> b!657646 (= c!75909 (bvslt j!136 index!984))))

(declare-fun lt!307335 () Unit!22754)

(assert (=> b!657646 (= lt!307335 e!377801)))

(declare-fun c!75908 () Bool)

(assert (=> b!657646 (= c!75908 (bvslt index!984 j!136))))

(declare-fun lt!307346 () Unit!22754)

(declare-fun e!377795 () Unit!22754)

(assert (=> b!657646 (= lt!307346 e!377795)))

(assert (=> b!657646 false))

(declare-fun b!657647 () Bool)

(declare-fun Unit!22759 () Unit!22754)

(assert (=> b!657647 (= e!377801 Unit!22759)))

(declare-fun b!657648 () Bool)

(assert (=> b!657648 (= e!377799 e!377794)))

(declare-fun res!426553 () Bool)

(assert (=> b!657648 (=> (not res!426553) (not e!377794))))

(assert (=> b!657648 (= res!426553 (= (select (store (arr!18544 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657648 (= lt!307339 (array!38703 (store (arr!18544 a!2986) i!1108 k0!1786) (size!18908 a!2986)))))

(declare-fun b!657649 () Bool)

(declare-fun res!426567 () Bool)

(assert (=> b!657649 (= res!426567 (arrayContainsKey!0 lt!307339 (select (arr!18544 a!2986) j!136) j!136))))

(declare-fun e!377798 () Bool)

(assert (=> b!657649 (=> (not res!426567) (not e!377798))))

(assert (=> b!657649 (= e!377791 e!377798)))

(declare-fun b!657650 () Bool)

(declare-fun res!426558 () Bool)

(assert (=> b!657650 (=> (not res!426558) (not e!377792))))

(assert (=> b!657650 (= res!426558 (validKeyInArray!0 (select (arr!18544 a!2986) j!136)))))

(declare-fun res!426564 () Bool)

(assert (=> start!59588 (=> (not res!426564) (not e!377792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59588 (= res!426564 (validMask!0 mask!3053))))

(assert (=> start!59588 e!377792))

(assert (=> start!59588 true))

(declare-fun array_inv!14318 (array!38702) Bool)

(assert (=> start!59588 (array_inv!14318 a!2986)))

(declare-fun b!657651 () Bool)

(declare-fun Unit!22760 () Unit!22754)

(assert (=> b!657651 (= e!377796 Unit!22760)))

(assert (=> b!657651 false))

(declare-fun b!657652 () Bool)

(assert (=> b!657652 false))

(declare-fun lt!307337 () Unit!22754)

(assert (=> b!657652 (= lt!307337 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307339 (select (arr!18544 a!2986) j!136) index!984 Nil!12635))))

(assert (=> b!657652 (arrayNoDuplicates!0 lt!307339 index!984 Nil!12635)))

(declare-fun lt!307332 () Unit!22754)

(assert (=> b!657652 (= lt!307332 (lemmaNoDuplicateFromThenFromBigger!0 lt!307339 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657652 (arrayNoDuplicates!0 lt!307339 #b00000000000000000000000000000000 Nil!12635)))

(declare-fun lt!307331 () Unit!22754)

(assert (=> b!657652 (= lt!307331 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12635))))

(assert (=> b!657652 (arrayContainsKey!0 lt!307339 (select (arr!18544 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307333 () Unit!22754)

(assert (=> b!657652 (= lt!307333 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307339 (select (arr!18544 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!657652 e!377789))

(declare-fun res!426562 () Bool)

(assert (=> b!657652 (=> (not res!426562) (not e!377789))))

(assert (=> b!657652 (= res!426562 (arrayContainsKey!0 lt!307339 (select (arr!18544 a!2986) j!136) j!136))))

(declare-fun Unit!22761 () Unit!22754)

(assert (=> b!657652 (= e!377795 Unit!22761)))

(declare-fun b!657653 () Bool)

(assert (=> b!657653 (= e!377798 (arrayContainsKey!0 lt!307339 (select (arr!18544 a!2986) j!136) index!984))))

(declare-fun b!657654 () Bool)

(assert (=> b!657654 (= e!377802 true)))

(assert (=> b!657654 (= (select (store (arr!18544 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657655 () Bool)

(declare-fun res!426565 () Bool)

(assert (=> b!657655 (=> (not res!426565) (not e!377792))))

(assert (=> b!657655 (= res!426565 (and (= (size!18908 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18908 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18908 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657656 () Bool)

(declare-fun Unit!22762 () Unit!22754)

(assert (=> b!657656 (= e!377795 Unit!22762)))

(declare-fun b!657657 () Bool)

(declare-fun res!426560 () Bool)

(assert (=> b!657657 (=> (not res!426560) (not e!377799))))

(assert (=> b!657657 (= res!426560 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12635))))

(declare-fun b!657658 () Bool)

(declare-fun Unit!22763 () Unit!22754)

(assert (=> b!657658 (= e!377796 Unit!22763)))

(declare-fun b!657659 () Bool)

(declare-fun res!426559 () Bool)

(assert (=> b!657659 (=> (not res!426559) (not e!377799))))

(assert (=> b!657659 (= res!426559 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18544 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59588 res!426564) b!657655))

(assert (= (and b!657655 res!426565) b!657650))

(assert (= (and b!657650 res!426558) b!657636))

(assert (= (and b!657636 res!426568) b!657637))

(assert (= (and b!657637 res!426569) b!657638))

(assert (= (and b!657638 res!426561) b!657642))

(assert (= (and b!657642 res!426556) b!657657))

(assert (= (and b!657657 res!426560) b!657659))

(assert (= (and b!657659 res!426559) b!657648))

(assert (= (and b!657648 res!426553) b!657643))

(assert (= (and b!657643 res!426563) b!657639))

(assert (= (and b!657639 res!426557) b!657635))

(assert (= (and b!657639 c!75910) b!657651))

(assert (= (and b!657639 (not c!75910)) b!657658))

(assert (= (and b!657639 c!75911) b!657646))

(assert (= (and b!657639 (not c!75911)) b!657644))

(assert (= (and b!657646 res!426554) b!657641))

(assert (= (and b!657641 (not res!426555)) b!657649))

(assert (= (and b!657649 res!426567) b!657653))

(assert (= (and b!657646 c!75909) b!657645))

(assert (= (and b!657646 (not c!75909)) b!657647))

(assert (= (and b!657646 c!75908) b!657652))

(assert (= (and b!657646 (not c!75908)) b!657656))

(assert (= (and b!657652 res!426562) b!657640))

(assert (= (and b!657639 (not res!426566)) b!657654))

(declare-fun m!630721 () Bool)

(assert (=> b!657648 m!630721))

(declare-fun m!630723 () Bool)

(assert (=> b!657648 m!630723))

(declare-fun m!630725 () Bool)

(assert (=> b!657643 m!630725))

(declare-fun m!630727 () Bool)

(assert (=> b!657643 m!630727))

(assert (=> b!657643 m!630727))

(declare-fun m!630729 () Bool)

(assert (=> b!657643 m!630729))

(assert (=> b!657646 m!630721))

(declare-fun m!630731 () Bool)

(assert (=> b!657646 m!630731))

(assert (=> b!657646 m!630727))

(assert (=> b!657652 m!630727))

(assert (=> b!657652 m!630727))

(declare-fun m!630733 () Bool)

(assert (=> b!657652 m!630733))

(assert (=> b!657652 m!630727))

(declare-fun m!630735 () Bool)

(assert (=> b!657652 m!630735))

(assert (=> b!657652 m!630727))

(declare-fun m!630737 () Bool)

(assert (=> b!657652 m!630737))

(assert (=> b!657652 m!630727))

(declare-fun m!630739 () Bool)

(assert (=> b!657652 m!630739))

(declare-fun m!630741 () Bool)

(assert (=> b!657652 m!630741))

(declare-fun m!630743 () Bool)

(assert (=> b!657652 m!630743))

(declare-fun m!630745 () Bool)

(assert (=> b!657652 m!630745))

(declare-fun m!630747 () Bool)

(assert (=> b!657652 m!630747))

(assert (=> b!657653 m!630727))

(assert (=> b!657653 m!630727))

(declare-fun m!630749 () Bool)

(assert (=> b!657653 m!630749))

(declare-fun m!630751 () Bool)

(assert (=> b!657657 m!630751))

(assert (=> b!657654 m!630721))

(assert (=> b!657654 m!630731))

(assert (=> b!657650 m!630727))

(assert (=> b!657650 m!630727))

(declare-fun m!630753 () Bool)

(assert (=> b!657650 m!630753))

(declare-fun m!630755 () Bool)

(assert (=> b!657645 m!630755))

(declare-fun m!630757 () Bool)

(assert (=> b!657645 m!630757))

(assert (=> b!657645 m!630727))

(declare-fun m!630759 () Bool)

(assert (=> b!657645 m!630759))

(assert (=> b!657645 m!630727))

(assert (=> b!657645 m!630743))

(assert (=> b!657645 m!630727))

(declare-fun m!630761 () Bool)

(assert (=> b!657645 m!630761))

(assert (=> b!657645 m!630727))

(declare-fun m!630763 () Bool)

(assert (=> b!657645 m!630763))

(assert (=> b!657645 m!630747))

(declare-fun m!630765 () Bool)

(assert (=> b!657636 m!630765))

(declare-fun m!630767 () Bool)

(assert (=> b!657659 m!630767))

(assert (=> b!657640 m!630727))

(assert (=> b!657640 m!630727))

(assert (=> b!657640 m!630749))

(declare-fun m!630769 () Bool)

(assert (=> start!59588 m!630769))

(declare-fun m!630771 () Bool)

(assert (=> start!59588 m!630771))

(declare-fun m!630773 () Bool)

(assert (=> b!657638 m!630773))

(declare-fun m!630775 () Bool)

(assert (=> b!657642 m!630775))

(assert (=> b!657649 m!630727))

(assert (=> b!657649 m!630727))

(assert (=> b!657649 m!630735))

(declare-fun m!630777 () Bool)

(assert (=> b!657639 m!630777))

(assert (=> b!657639 m!630727))

(assert (=> b!657639 m!630721))

(assert (=> b!657639 m!630727))

(declare-fun m!630779 () Bool)

(assert (=> b!657639 m!630779))

(declare-fun m!630781 () Bool)

(assert (=> b!657639 m!630781))

(declare-fun m!630783 () Bool)

(assert (=> b!657639 m!630783))

(declare-fun m!630785 () Bool)

(assert (=> b!657639 m!630785))

(declare-fun m!630787 () Bool)

(assert (=> b!657639 m!630787))

(declare-fun m!630789 () Bool)

(assert (=> b!657637 m!630789))

(check-sat (not b!657649) (not start!59588) (not b!657643) (not b!657639) (not b!657650) (not b!657645) (not b!657637) (not b!657657) (not b!657642) (not b!657653) (not b!657638) (not b!657640) (not b!657636) (not b!657652))
(check-sat)
