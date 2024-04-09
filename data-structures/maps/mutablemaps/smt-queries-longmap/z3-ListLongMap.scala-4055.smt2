; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55568 () Bool)

(assert start!55568)

(declare-fun b!607629 () Bool)

(declare-fun e!347982 () Bool)

(declare-fun e!347975 () Bool)

(assert (=> b!607629 (= e!347982 e!347975)))

(declare-fun res!390586 () Bool)

(assert (=> b!607629 (=> res!390586 e!347975)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!607629 (= res!390586 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19378 0))(
  ( (Unit!19379) )
))
(declare-fun lt!277545 () Unit!19378)

(declare-fun e!347978 () Unit!19378)

(assert (=> b!607629 (= lt!277545 e!347978)))

(declare-fun c!68899 () Bool)

(assert (=> b!607629 (= c!68899 (bvslt j!136 index!984))))

(declare-fun b!607630 () Bool)

(declare-fun e!347983 () Bool)

(declare-fun e!347977 () Bool)

(assert (=> b!607630 (= e!347983 e!347977)))

(declare-fun res!390566 () Bool)

(assert (=> b!607630 (=> (not res!390566) (not e!347977))))

(declare-datatypes ((SeekEntryResult!6325 0))(
  ( (MissingZero!6325 (index!27574 (_ BitVec 32))) (Found!6325 (index!27575 (_ BitVec 32))) (Intermediate!6325 (undefined!7137 Bool) (index!27576 (_ BitVec 32)) (x!56411 (_ BitVec 32))) (Undefined!6325) (MissingVacant!6325 (index!27577 (_ BitVec 32))) )
))
(declare-fun lt!277536 () SeekEntryResult!6325)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!607630 (= res!390566 (or (= lt!277536 (MissingZero!6325 i!1108)) (= lt!277536 (MissingVacant!6325 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37262 0))(
  ( (array!37263 (arr!17878 (Array (_ BitVec 32) (_ BitVec 64))) (size!18242 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37262)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37262 (_ BitVec 32)) SeekEntryResult!6325)

(assert (=> b!607630 (= lt!277536 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!607631 () Bool)

(declare-fun e!347971 () Bool)

(assert (=> b!607631 (= e!347971 e!347982)))

(declare-fun res!390579 () Bool)

(assert (=> b!607631 (=> res!390579 e!347982)))

(declare-fun lt!277535 () (_ BitVec 64))

(declare-fun lt!277529 () (_ BitVec 64))

(assert (=> b!607631 (= res!390579 (or (not (= (select (arr!17878 a!2986) j!136) lt!277529)) (not (= (select (arr!17878 a!2986) j!136) lt!277535))))))

(declare-fun e!347981 () Bool)

(assert (=> b!607631 e!347981))

(declare-fun res!390573 () Bool)

(assert (=> b!607631 (=> (not res!390573) (not e!347981))))

(assert (=> b!607631 (= res!390573 (= lt!277535 (select (arr!17878 a!2986) j!136)))))

(assert (=> b!607631 (= lt!277535 (select (store (arr!17878 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!607632 () Bool)

(declare-fun e!347979 () Unit!19378)

(declare-fun Unit!19380 () Unit!19378)

(assert (=> b!607632 (= e!347979 Unit!19380)))

(assert (=> b!607632 false))

(declare-fun b!607633 () Bool)

(declare-fun e!347986 () Bool)

(assert (=> b!607633 (= e!347986 true)))

(declare-fun lt!277544 () Bool)

(declare-datatypes ((List!11972 0))(
  ( (Nil!11969) (Cons!11968 (h!13013 (_ BitVec 64)) (t!18208 List!11972)) )
))
(declare-fun contains!3018 (List!11972 (_ BitVec 64)) Bool)

(assert (=> b!607633 (= lt!277544 (contains!3018 Nil!11969 k0!1786))))

(declare-fun b!607634 () Bool)

(declare-fun res!390571 () Bool)

(assert (=> b!607634 (=> (not res!390571) (not e!347983))))

(declare-fun arrayContainsKey!0 (array!37262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607634 (= res!390571 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607635 () Bool)

(declare-fun Unit!19381 () Unit!19378)

(assert (=> b!607635 (= e!347978 Unit!19381)))

(declare-fun lt!277541 () Unit!19378)

(declare-fun lt!277534 () array!37262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37262 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19378)

(assert (=> b!607635 (= lt!277541 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277534 (select (arr!17878 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607635 (arrayContainsKey!0 lt!277534 (select (arr!17878 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277532 () Unit!19378)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37262 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11972) Unit!19378)

(assert (=> b!607635 (= lt!277532 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11969))))

(declare-fun arrayNoDuplicates!0 (array!37262 (_ BitVec 32) List!11972) Bool)

(assert (=> b!607635 (arrayNoDuplicates!0 lt!277534 #b00000000000000000000000000000000 Nil!11969)))

(declare-fun lt!277533 () Unit!19378)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37262 (_ BitVec 32) (_ BitVec 32)) Unit!19378)

(assert (=> b!607635 (= lt!277533 (lemmaNoDuplicateFromThenFromBigger!0 lt!277534 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607635 (arrayNoDuplicates!0 lt!277534 j!136 Nil!11969)))

(declare-fun lt!277530 () Unit!19378)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37262 (_ BitVec 64) (_ BitVec 32) List!11972) Unit!19378)

(assert (=> b!607635 (= lt!277530 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277534 (select (arr!17878 a!2986) j!136) j!136 Nil!11969))))

(assert (=> b!607635 false))

(declare-fun b!607636 () Bool)

(declare-fun res!390582 () Bool)

(assert (=> b!607636 (=> (not res!390582) (not e!347983))))

(assert (=> b!607636 (= res!390582 (and (= (size!18242 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18242 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18242 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607637 () Bool)

(declare-fun res!390565 () Bool)

(assert (=> b!607637 (=> res!390565 e!347986)))

(declare-fun noDuplicate!320 (List!11972) Bool)

(assert (=> b!607637 (= res!390565 (not (noDuplicate!320 Nil!11969)))))

(declare-fun b!607638 () Bool)

(declare-fun res!390587 () Bool)

(assert (=> b!607638 (=> res!390587 e!347986)))

(assert (=> b!607638 (= res!390587 (contains!3018 Nil!11969 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!347973 () Bool)

(declare-fun b!607639 () Bool)

(assert (=> b!607639 (= e!347973 (arrayContainsKey!0 lt!277534 (select (arr!17878 a!2986) j!136) index!984))))

(declare-fun res!390583 () Bool)

(assert (=> start!55568 (=> (not res!390583) (not e!347983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55568 (= res!390583 (validMask!0 mask!3053))))

(assert (=> start!55568 e!347983))

(assert (=> start!55568 true))

(declare-fun array_inv!13652 (array!37262) Bool)

(assert (=> start!55568 (array_inv!13652 a!2986)))

(declare-fun b!607640 () Bool)

(declare-fun e!347985 () Bool)

(declare-fun e!347972 () Bool)

(assert (=> b!607640 (= e!347985 e!347972)))

(declare-fun res!390574 () Bool)

(assert (=> b!607640 (=> (not res!390574) (not e!347972))))

(assert (=> b!607640 (= res!390574 (arrayContainsKey!0 lt!277534 (select (arr!17878 a!2986) j!136) j!136))))

(declare-fun b!607641 () Bool)

(declare-fun res!390584 () Bool)

(assert (=> b!607641 (=> (not res!390584) (not e!347983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607641 (= res!390584 (validKeyInArray!0 k0!1786))))

(declare-fun b!607642 () Bool)

(declare-fun e!347980 () Bool)

(assert (=> b!607642 (= e!347977 e!347980)))

(declare-fun res!390577 () Bool)

(assert (=> b!607642 (=> (not res!390577) (not e!347980))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!607642 (= res!390577 (= (select (store (arr!17878 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607642 (= lt!277534 (array!37263 (store (arr!17878 a!2986) i!1108 k0!1786) (size!18242 a!2986)))))

(declare-fun b!607643 () Bool)

(assert (=> b!607643 (= e!347972 (arrayContainsKey!0 lt!277534 (select (arr!17878 a!2986) j!136) index!984))))

(declare-fun b!607644 () Bool)

(assert (=> b!607644 (= e!347981 e!347985)))

(declare-fun res!390585 () Bool)

(assert (=> b!607644 (=> res!390585 e!347985)))

(assert (=> b!607644 (= res!390585 (or (not (= (select (arr!17878 a!2986) j!136) lt!277529)) (not (= (select (arr!17878 a!2986) j!136) lt!277535)) (bvsge j!136 index!984)))))

(declare-fun b!607645 () Bool)

(declare-fun e!347976 () Bool)

(assert (=> b!607645 (= e!347980 e!347976)))

(declare-fun res!390567 () Bool)

(assert (=> b!607645 (=> (not res!390567) (not e!347976))))

(declare-fun lt!277538 () SeekEntryResult!6325)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!607645 (= res!390567 (and (= lt!277538 (Found!6325 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17878 a!2986) index!984) (select (arr!17878 a!2986) j!136))) (not (= (select (arr!17878 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37262 (_ BitVec 32)) SeekEntryResult!6325)

(assert (=> b!607645 (= lt!277538 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17878 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607646 () Bool)

(declare-fun Unit!19382 () Unit!19378)

(assert (=> b!607646 (= e!347978 Unit!19382)))

(declare-fun b!607647 () Bool)

(declare-fun res!390569 () Bool)

(assert (=> b!607647 (=> (not res!390569) (not e!347983))))

(assert (=> b!607647 (= res!390569 (validKeyInArray!0 (select (arr!17878 a!2986) j!136)))))

(declare-fun b!607648 () Bool)

(assert (=> b!607648 (= e!347975 e!347986)))

(declare-fun res!390570 () Bool)

(assert (=> b!607648 (=> res!390570 e!347986)))

(assert (=> b!607648 (= res!390570 (or (bvsge (size!18242 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18242 a!2986))))))

(assert (=> b!607648 (arrayContainsKey!0 lt!277534 (select (arr!17878 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277540 () Unit!19378)

(assert (=> b!607648 (= lt!277540 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277534 (select (arr!17878 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607648 e!347973))

(declare-fun res!390568 () Bool)

(assert (=> b!607648 (=> (not res!390568) (not e!347973))))

(assert (=> b!607648 (= res!390568 (arrayContainsKey!0 lt!277534 (select (arr!17878 a!2986) j!136) j!136))))

(declare-fun b!607649 () Bool)

(declare-fun res!390572 () Bool)

(assert (=> b!607649 (=> res!390572 e!347986)))

(assert (=> b!607649 (= res!390572 (contains!3018 Nil!11969 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607650 () Bool)

(declare-fun res!390576 () Bool)

(assert (=> b!607650 (=> (not res!390576) (not e!347977))))

(assert (=> b!607650 (= res!390576 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17878 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607651 () Bool)

(declare-fun Unit!19383 () Unit!19378)

(assert (=> b!607651 (= e!347979 Unit!19383)))

(declare-fun b!607652 () Bool)

(declare-fun res!390580 () Bool)

(assert (=> b!607652 (=> (not res!390580) (not e!347977))))

(assert (=> b!607652 (= res!390580 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11969))))

(declare-fun b!607653 () Bool)

(assert (=> b!607653 (= e!347976 (not e!347971))))

(declare-fun res!390578 () Bool)

(assert (=> b!607653 (=> res!390578 e!347971)))

(declare-fun lt!277543 () SeekEntryResult!6325)

(assert (=> b!607653 (= res!390578 (not (= lt!277543 (Found!6325 index!984))))))

(declare-fun lt!277531 () Unit!19378)

(assert (=> b!607653 (= lt!277531 e!347979)))

(declare-fun c!68900 () Bool)

(assert (=> b!607653 (= c!68900 (= lt!277543 Undefined!6325))))

(assert (=> b!607653 (= lt!277543 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277529 lt!277534 mask!3053))))

(declare-fun e!347984 () Bool)

(assert (=> b!607653 e!347984))

(declare-fun res!390581 () Bool)

(assert (=> b!607653 (=> (not res!390581) (not e!347984))))

(declare-fun lt!277539 () SeekEntryResult!6325)

(declare-fun lt!277542 () (_ BitVec 32))

(assert (=> b!607653 (= res!390581 (= lt!277539 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277542 vacantSpotIndex!68 lt!277529 lt!277534 mask!3053)))))

(assert (=> b!607653 (= lt!277539 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277542 vacantSpotIndex!68 (select (arr!17878 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!607653 (= lt!277529 (select (store (arr!17878 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277537 () Unit!19378)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37262 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19378)

(assert (=> b!607653 (= lt!277537 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277542 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607653 (= lt!277542 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607654 () Bool)

(declare-fun res!390575 () Bool)

(assert (=> b!607654 (=> (not res!390575) (not e!347977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37262 (_ BitVec 32)) Bool)

(assert (=> b!607654 (= res!390575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607655 () Bool)

(assert (=> b!607655 (= e!347984 (= lt!277538 lt!277539))))

(assert (= (and start!55568 res!390583) b!607636))

(assert (= (and b!607636 res!390582) b!607647))

(assert (= (and b!607647 res!390569) b!607641))

(assert (= (and b!607641 res!390584) b!607634))

(assert (= (and b!607634 res!390571) b!607630))

(assert (= (and b!607630 res!390566) b!607654))

(assert (= (and b!607654 res!390575) b!607652))

(assert (= (and b!607652 res!390580) b!607650))

(assert (= (and b!607650 res!390576) b!607642))

(assert (= (and b!607642 res!390577) b!607645))

(assert (= (and b!607645 res!390567) b!607653))

(assert (= (and b!607653 res!390581) b!607655))

(assert (= (and b!607653 c!68900) b!607632))

(assert (= (and b!607653 (not c!68900)) b!607651))

(assert (= (and b!607653 (not res!390578)) b!607631))

(assert (= (and b!607631 res!390573) b!607644))

(assert (= (and b!607644 (not res!390585)) b!607640))

(assert (= (and b!607640 res!390574) b!607643))

(assert (= (and b!607631 (not res!390579)) b!607629))

(assert (= (and b!607629 c!68899) b!607635))

(assert (= (and b!607629 (not c!68899)) b!607646))

(assert (= (and b!607629 (not res!390586)) b!607648))

(assert (= (and b!607648 res!390568) b!607639))

(assert (= (and b!607648 (not res!390570)) b!607637))

(assert (= (and b!607637 (not res!390565)) b!607649))

(assert (= (and b!607649 (not res!390572)) b!607638))

(assert (= (and b!607638 (not res!390587)) b!607633))

(declare-fun m!584373 () Bool)

(assert (=> b!607649 m!584373))

(declare-fun m!584375 () Bool)

(assert (=> b!607633 m!584375))

(declare-fun m!584377 () Bool)

(assert (=> start!55568 m!584377))

(declare-fun m!584379 () Bool)

(assert (=> start!55568 m!584379))

(declare-fun m!584381 () Bool)

(assert (=> b!607635 m!584381))

(declare-fun m!584383 () Bool)

(assert (=> b!607635 m!584383))

(declare-fun m!584385 () Bool)

(assert (=> b!607635 m!584385))

(declare-fun m!584387 () Bool)

(assert (=> b!607635 m!584387))

(assert (=> b!607635 m!584381))

(assert (=> b!607635 m!584381))

(declare-fun m!584389 () Bool)

(assert (=> b!607635 m!584389))

(assert (=> b!607635 m!584381))

(declare-fun m!584391 () Bool)

(assert (=> b!607635 m!584391))

(declare-fun m!584393 () Bool)

(assert (=> b!607635 m!584393))

(declare-fun m!584395 () Bool)

(assert (=> b!607635 m!584395))

(assert (=> b!607643 m!584381))

(assert (=> b!607643 m!584381))

(declare-fun m!584397 () Bool)

(assert (=> b!607643 m!584397))

(assert (=> b!607644 m!584381))

(declare-fun m!584399 () Bool)

(assert (=> b!607630 m!584399))

(assert (=> b!607631 m!584381))

(declare-fun m!584401 () Bool)

(assert (=> b!607631 m!584401))

(declare-fun m!584403 () Bool)

(assert (=> b!607631 m!584403))

(declare-fun m!584405 () Bool)

(assert (=> b!607652 m!584405))

(declare-fun m!584407 () Bool)

(assert (=> b!607654 m!584407))

(assert (=> b!607640 m!584381))

(assert (=> b!607640 m!584381))

(declare-fun m!584409 () Bool)

(assert (=> b!607640 m!584409))

(assert (=> b!607647 m!584381))

(assert (=> b!607647 m!584381))

(declare-fun m!584411 () Bool)

(assert (=> b!607647 m!584411))

(declare-fun m!584413 () Bool)

(assert (=> b!607634 m!584413))

(assert (=> b!607642 m!584401))

(declare-fun m!584415 () Bool)

(assert (=> b!607642 m!584415))

(declare-fun m!584417 () Bool)

(assert (=> b!607653 m!584417))

(declare-fun m!584419 () Bool)

(assert (=> b!607653 m!584419))

(assert (=> b!607653 m!584381))

(declare-fun m!584421 () Bool)

(assert (=> b!607653 m!584421))

(declare-fun m!584423 () Bool)

(assert (=> b!607653 m!584423))

(assert (=> b!607653 m!584401))

(declare-fun m!584425 () Bool)

(assert (=> b!607653 m!584425))

(assert (=> b!607653 m!584381))

(declare-fun m!584427 () Bool)

(assert (=> b!607653 m!584427))

(declare-fun m!584429 () Bool)

(assert (=> b!607650 m!584429))

(declare-fun m!584431 () Bool)

(assert (=> b!607637 m!584431))

(assert (=> b!607648 m!584381))

(assert (=> b!607648 m!584381))

(declare-fun m!584433 () Bool)

(assert (=> b!607648 m!584433))

(assert (=> b!607648 m!584381))

(declare-fun m!584435 () Bool)

(assert (=> b!607648 m!584435))

(assert (=> b!607648 m!584381))

(assert (=> b!607648 m!584409))

(declare-fun m!584437 () Bool)

(assert (=> b!607641 m!584437))

(declare-fun m!584439 () Bool)

(assert (=> b!607638 m!584439))

(assert (=> b!607639 m!584381))

(assert (=> b!607639 m!584381))

(assert (=> b!607639 m!584397))

(declare-fun m!584441 () Bool)

(assert (=> b!607645 m!584441))

(assert (=> b!607645 m!584381))

(assert (=> b!607645 m!584381))

(declare-fun m!584443 () Bool)

(assert (=> b!607645 m!584443))

(check-sat (not b!607643) (not b!607641) (not b!607653) (not b!607637) (not start!55568) (not b!607654) (not b!607634) (not b!607630) (not b!607648) (not b!607638) (not b!607649) (not b!607635) (not b!607639) (not b!607640) (not b!607633) (not b!607647) (not b!607645) (not b!607652))
(check-sat)
