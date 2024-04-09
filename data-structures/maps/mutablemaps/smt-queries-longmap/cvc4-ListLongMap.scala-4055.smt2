; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55570 () Bool)

(assert start!55570)

(declare-fun b!607710 () Bool)

(declare-fun res!390637 () Bool)

(declare-fun e!348028 () Bool)

(assert (=> b!607710 (=> (not res!390637) (not e!348028))))

(declare-datatypes ((array!37264 0))(
  ( (array!37265 (arr!17879 (Array (_ BitVec 32) (_ BitVec 64))) (size!18243 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37264)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37264 (_ BitVec 32)) Bool)

(assert (=> b!607710 (= res!390637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607711 () Bool)

(declare-fun e!348021 () Bool)

(declare-fun e!348026 () Bool)

(assert (=> b!607711 (= e!348021 (not e!348026))))

(declare-fun res!390634 () Bool)

(assert (=> b!607711 (=> res!390634 e!348026)))

(declare-datatypes ((SeekEntryResult!6326 0))(
  ( (MissingZero!6326 (index!27578 (_ BitVec 32))) (Found!6326 (index!27579 (_ BitVec 32))) (Intermediate!6326 (undefined!7138 Bool) (index!27580 (_ BitVec 32)) (x!56412 (_ BitVec 32))) (Undefined!6326) (MissingVacant!6326 (index!27581 (_ BitVec 32))) )
))
(declare-fun lt!277592 () SeekEntryResult!6326)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!607711 (= res!390634 (not (= lt!277592 (Found!6326 index!984))))))

(declare-datatypes ((Unit!19384 0))(
  ( (Unit!19385) )
))
(declare-fun lt!277589 () Unit!19384)

(declare-fun e!348027 () Unit!19384)

(assert (=> b!607711 (= lt!277589 e!348027)))

(declare-fun c!68905 () Bool)

(assert (=> b!607711 (= c!68905 (= lt!277592 Undefined!6326))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!277585 () array!37264)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!277596 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37264 (_ BitVec 32)) SeekEntryResult!6326)

(assert (=> b!607711 (= lt!277592 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277596 lt!277585 mask!3053))))

(declare-fun e!348023 () Bool)

(assert (=> b!607711 e!348023))

(declare-fun res!390655 () Bool)

(assert (=> b!607711 (=> (not res!390655) (not e!348023))))

(declare-fun lt!277583 () (_ BitVec 32))

(declare-fun lt!277582 () SeekEntryResult!6326)

(assert (=> b!607711 (= res!390655 (= lt!277582 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277583 vacantSpotIndex!68 lt!277596 lt!277585 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!607711 (= lt!277582 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277583 vacantSpotIndex!68 (select (arr!17879 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!607711 (= lt!277596 (select (store (arr!17879 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277580 () Unit!19384)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37264 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19384)

(assert (=> b!607711 (= lt!277580 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277583 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607711 (= lt!277583 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!390652 () Bool)

(declare-fun e!348032 () Bool)

(assert (=> start!55570 (=> (not res!390652) (not e!348032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55570 (= res!390652 (validMask!0 mask!3053))))

(assert (=> start!55570 e!348032))

(assert (=> start!55570 true))

(declare-fun array_inv!13653 (array!37264) Bool)

(assert (=> start!55570 (array_inv!13653 a!2986)))

(declare-fun b!607712 () Bool)

(declare-fun Unit!19386 () Unit!19384)

(assert (=> b!607712 (= e!348027 Unit!19386)))

(assert (=> b!607712 false))

(declare-fun b!607713 () Bool)

(declare-fun res!390640 () Bool)

(assert (=> b!607713 (=> (not res!390640) (not e!348032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607713 (= res!390640 (validKeyInArray!0 k!1786))))

(declare-fun b!607714 () Bool)

(declare-fun res!390639 () Bool)

(declare-fun e!348034 () Bool)

(assert (=> b!607714 (=> res!390639 e!348034)))

(declare-datatypes ((List!11973 0))(
  ( (Nil!11970) (Cons!11969 (h!13014 (_ BitVec 64)) (t!18209 List!11973)) )
))
(declare-fun contains!3019 (List!11973 (_ BitVec 64)) Bool)

(assert (=> b!607714 (= res!390639 (contains!3019 Nil!11970 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607715 () Bool)

(declare-fun e!348025 () Bool)

(assert (=> b!607715 (= e!348025 e!348021)))

(declare-fun res!390635 () Bool)

(assert (=> b!607715 (=> (not res!390635) (not e!348021))))

(declare-fun lt!277593 () SeekEntryResult!6326)

(assert (=> b!607715 (= res!390635 (and (= lt!277593 (Found!6326 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17879 a!2986) index!984) (select (arr!17879 a!2986) j!136))) (not (= (select (arr!17879 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607715 (= lt!277593 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17879 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607716 () Bool)

(assert (=> b!607716 (= e!348032 e!348028)))

(declare-fun res!390636 () Bool)

(assert (=> b!607716 (=> (not res!390636) (not e!348028))))

(declare-fun lt!277586 () SeekEntryResult!6326)

(assert (=> b!607716 (= res!390636 (or (= lt!277586 (MissingZero!6326 i!1108)) (= lt!277586 (MissingVacant!6326 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37264 (_ BitVec 32)) SeekEntryResult!6326)

(assert (=> b!607716 (= lt!277586 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607717 () Bool)

(declare-fun e!348029 () Unit!19384)

(declare-fun Unit!19387 () Unit!19384)

(assert (=> b!607717 (= e!348029 Unit!19387)))

(declare-fun b!607718 () Bool)

(declare-fun e!348033 () Bool)

(assert (=> b!607718 (= e!348033 e!348034)))

(declare-fun res!390647 () Bool)

(assert (=> b!607718 (=> res!390647 e!348034)))

(assert (=> b!607718 (= res!390647 (or (bvsge (size!18243 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18243 a!2986))))))

(declare-fun arrayContainsKey!0 (array!37264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607718 (arrayContainsKey!0 lt!277585 (select (arr!17879 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277587 () Unit!19384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37264 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19384)

(assert (=> b!607718 (= lt!277587 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277585 (select (arr!17879 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348030 () Bool)

(assert (=> b!607718 e!348030))

(declare-fun res!390654 () Bool)

(assert (=> b!607718 (=> (not res!390654) (not e!348030))))

(assert (=> b!607718 (= res!390654 (arrayContainsKey!0 lt!277585 (select (arr!17879 a!2986) j!136) j!136))))

(declare-fun b!607719 () Bool)

(declare-fun res!390650 () Bool)

(assert (=> b!607719 (=> (not res!390650) (not e!348028))))

(assert (=> b!607719 (= res!390650 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17879 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607720 () Bool)

(declare-fun e!348031 () Bool)

(declare-fun e!348022 () Bool)

(assert (=> b!607720 (= e!348031 e!348022)))

(declare-fun res!390649 () Bool)

(assert (=> b!607720 (=> res!390649 e!348022)))

(declare-fun lt!277584 () (_ BitVec 64))

(assert (=> b!607720 (= res!390649 (or (not (= (select (arr!17879 a!2986) j!136) lt!277596)) (not (= (select (arr!17879 a!2986) j!136) lt!277584)) (bvsge j!136 index!984)))))

(declare-fun b!607721 () Bool)

(declare-fun res!390645 () Bool)

(assert (=> b!607721 (=> (not res!390645) (not e!348032))))

(assert (=> b!607721 (= res!390645 (and (= (size!18243 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18243 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18243 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607722 () Bool)

(declare-fun Unit!19388 () Unit!19384)

(assert (=> b!607722 (= e!348029 Unit!19388)))

(declare-fun lt!277590 () Unit!19384)

(assert (=> b!607722 (= lt!277590 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277585 (select (arr!17879 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607722 (arrayContainsKey!0 lt!277585 (select (arr!17879 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277595 () Unit!19384)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37264 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11973) Unit!19384)

(assert (=> b!607722 (= lt!277595 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11970))))

(declare-fun arrayNoDuplicates!0 (array!37264 (_ BitVec 32) List!11973) Bool)

(assert (=> b!607722 (arrayNoDuplicates!0 lt!277585 #b00000000000000000000000000000000 Nil!11970)))

(declare-fun lt!277591 () Unit!19384)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37264 (_ BitVec 32) (_ BitVec 32)) Unit!19384)

(assert (=> b!607722 (= lt!277591 (lemmaNoDuplicateFromThenFromBigger!0 lt!277585 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607722 (arrayNoDuplicates!0 lt!277585 j!136 Nil!11970)))

(declare-fun lt!277581 () Unit!19384)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37264 (_ BitVec 64) (_ BitVec 32) List!11973) Unit!19384)

(assert (=> b!607722 (= lt!277581 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277585 (select (arr!17879 a!2986) j!136) j!136 Nil!11970))))

(assert (=> b!607722 false))

(declare-fun b!607723 () Bool)

(assert (=> b!607723 (= e!348030 (arrayContainsKey!0 lt!277585 (select (arr!17879 a!2986) j!136) index!984))))

(declare-fun b!607724 () Bool)

(declare-fun e!348019 () Bool)

(assert (=> b!607724 (= e!348026 e!348019)))

(declare-fun res!390638 () Bool)

(assert (=> b!607724 (=> res!390638 e!348019)))

(assert (=> b!607724 (= res!390638 (or (not (= (select (arr!17879 a!2986) j!136) lt!277596)) (not (= (select (arr!17879 a!2986) j!136) lt!277584))))))

(assert (=> b!607724 e!348031))

(declare-fun res!390653 () Bool)

(assert (=> b!607724 (=> (not res!390653) (not e!348031))))

(assert (=> b!607724 (= res!390653 (= lt!277584 (select (arr!17879 a!2986) j!136)))))

(assert (=> b!607724 (= lt!277584 (select (store (arr!17879 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607725 () Bool)

(assert (=> b!607725 (= e!348019 e!348033)))

(declare-fun res!390646 () Bool)

(assert (=> b!607725 (=> res!390646 e!348033)))

(assert (=> b!607725 (= res!390646 (bvsge index!984 j!136))))

(declare-fun lt!277594 () Unit!19384)

(assert (=> b!607725 (= lt!277594 e!348029)))

(declare-fun c!68906 () Bool)

(assert (=> b!607725 (= c!68906 (bvslt j!136 index!984))))

(declare-fun b!607726 () Bool)

(declare-fun e!348024 () Bool)

(assert (=> b!607726 (= e!348022 e!348024)))

(declare-fun res!390656 () Bool)

(assert (=> b!607726 (=> (not res!390656) (not e!348024))))

(assert (=> b!607726 (= res!390656 (arrayContainsKey!0 lt!277585 (select (arr!17879 a!2986) j!136) j!136))))

(declare-fun b!607727 () Bool)

(declare-fun Unit!19389 () Unit!19384)

(assert (=> b!607727 (= e!348027 Unit!19389)))

(declare-fun b!607728 () Bool)

(assert (=> b!607728 (= e!348028 e!348025)))

(declare-fun res!390648 () Bool)

(assert (=> b!607728 (=> (not res!390648) (not e!348025))))

(assert (=> b!607728 (= res!390648 (= (select (store (arr!17879 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607728 (= lt!277585 (array!37265 (store (arr!17879 a!2986) i!1108 k!1786) (size!18243 a!2986)))))

(declare-fun b!607729 () Bool)

(declare-fun res!390643 () Bool)

(assert (=> b!607729 (=> (not res!390643) (not e!348032))))

(assert (=> b!607729 (= res!390643 (validKeyInArray!0 (select (arr!17879 a!2986) j!136)))))

(declare-fun b!607730 () Bool)

(assert (=> b!607730 (= e!348034 true)))

(declare-fun lt!277588 () Bool)

(assert (=> b!607730 (= lt!277588 (contains!3019 Nil!11970 k!1786))))

(declare-fun b!607731 () Bool)

(declare-fun res!390642 () Bool)

(assert (=> b!607731 (=> res!390642 e!348034)))

(assert (=> b!607731 (= res!390642 (contains!3019 Nil!11970 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607732 () Bool)

(declare-fun res!390644 () Bool)

(assert (=> b!607732 (=> res!390644 e!348034)))

(declare-fun noDuplicate!321 (List!11973) Bool)

(assert (=> b!607732 (= res!390644 (not (noDuplicate!321 Nil!11970)))))

(declare-fun b!607733 () Bool)

(declare-fun res!390651 () Bool)

(assert (=> b!607733 (=> (not res!390651) (not e!348032))))

(assert (=> b!607733 (= res!390651 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607734 () Bool)

(assert (=> b!607734 (= e!348024 (arrayContainsKey!0 lt!277585 (select (arr!17879 a!2986) j!136) index!984))))

(declare-fun b!607735 () Bool)

(declare-fun res!390641 () Bool)

(assert (=> b!607735 (=> (not res!390641) (not e!348028))))

(assert (=> b!607735 (= res!390641 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11970))))

(declare-fun b!607736 () Bool)

(assert (=> b!607736 (= e!348023 (= lt!277593 lt!277582))))

(assert (= (and start!55570 res!390652) b!607721))

(assert (= (and b!607721 res!390645) b!607729))

(assert (= (and b!607729 res!390643) b!607713))

(assert (= (and b!607713 res!390640) b!607733))

(assert (= (and b!607733 res!390651) b!607716))

(assert (= (and b!607716 res!390636) b!607710))

(assert (= (and b!607710 res!390637) b!607735))

(assert (= (and b!607735 res!390641) b!607719))

(assert (= (and b!607719 res!390650) b!607728))

(assert (= (and b!607728 res!390648) b!607715))

(assert (= (and b!607715 res!390635) b!607711))

(assert (= (and b!607711 res!390655) b!607736))

(assert (= (and b!607711 c!68905) b!607712))

(assert (= (and b!607711 (not c!68905)) b!607727))

(assert (= (and b!607711 (not res!390634)) b!607724))

(assert (= (and b!607724 res!390653) b!607720))

(assert (= (and b!607720 (not res!390649)) b!607726))

(assert (= (and b!607726 res!390656) b!607734))

(assert (= (and b!607724 (not res!390638)) b!607725))

(assert (= (and b!607725 c!68906) b!607722))

(assert (= (and b!607725 (not c!68906)) b!607717))

(assert (= (and b!607725 (not res!390646)) b!607718))

(assert (= (and b!607718 res!390654) b!607723))

(assert (= (and b!607718 (not res!390647)) b!607732))

(assert (= (and b!607732 (not res!390644)) b!607714))

(assert (= (and b!607714 (not res!390639)) b!607731))

(assert (= (and b!607731 (not res!390642)) b!607730))

(declare-fun m!584445 () Bool)

(assert (=> start!55570 m!584445))

(declare-fun m!584447 () Bool)

(assert (=> start!55570 m!584447))

(declare-fun m!584449 () Bool)

(assert (=> b!607718 m!584449))

(assert (=> b!607718 m!584449))

(declare-fun m!584451 () Bool)

(assert (=> b!607718 m!584451))

(assert (=> b!607718 m!584449))

(declare-fun m!584453 () Bool)

(assert (=> b!607718 m!584453))

(assert (=> b!607718 m!584449))

(declare-fun m!584455 () Bool)

(assert (=> b!607718 m!584455))

(declare-fun m!584457 () Bool)

(assert (=> b!607715 m!584457))

(assert (=> b!607715 m!584449))

(assert (=> b!607715 m!584449))

(declare-fun m!584459 () Bool)

(assert (=> b!607715 m!584459))

(declare-fun m!584461 () Bool)

(assert (=> b!607713 m!584461))

(assert (=> b!607729 m!584449))

(assert (=> b!607729 m!584449))

(declare-fun m!584463 () Bool)

(assert (=> b!607729 m!584463))

(declare-fun m!584465 () Bool)

(assert (=> b!607719 m!584465))

(assert (=> b!607734 m!584449))

(assert (=> b!607734 m!584449))

(declare-fun m!584467 () Bool)

(assert (=> b!607734 m!584467))

(assert (=> b!607722 m!584449))

(declare-fun m!584469 () Bool)

(assert (=> b!607722 m!584469))

(declare-fun m!584471 () Bool)

(assert (=> b!607722 m!584471))

(assert (=> b!607722 m!584449))

(declare-fun m!584473 () Bool)

(assert (=> b!607722 m!584473))

(assert (=> b!607722 m!584449))

(declare-fun m!584475 () Bool)

(assert (=> b!607722 m!584475))

(assert (=> b!607722 m!584449))

(declare-fun m!584477 () Bool)

(assert (=> b!607722 m!584477))

(declare-fun m!584479 () Bool)

(assert (=> b!607722 m!584479))

(declare-fun m!584481 () Bool)

(assert (=> b!607722 m!584481))

(declare-fun m!584483 () Bool)

(assert (=> b!607730 m!584483))

(declare-fun m!584485 () Bool)

(assert (=> b!607728 m!584485))

(declare-fun m!584487 () Bool)

(assert (=> b!607728 m!584487))

(declare-fun m!584489 () Bool)

(assert (=> b!607732 m!584489))

(declare-fun m!584491 () Bool)

(assert (=> b!607735 m!584491))

(declare-fun m!584493 () Bool)

(assert (=> b!607733 m!584493))

(assert (=> b!607724 m!584449))

(assert (=> b!607724 m!584485))

(declare-fun m!584495 () Bool)

(assert (=> b!607724 m!584495))

(assert (=> b!607720 m!584449))

(assert (=> b!607723 m!584449))

(assert (=> b!607723 m!584449))

(assert (=> b!607723 m!584467))

(declare-fun m!584497 () Bool)

(assert (=> b!607716 m!584497))

(declare-fun m!584499 () Bool)

(assert (=> b!607714 m!584499))

(declare-fun m!584501 () Bool)

(assert (=> b!607711 m!584501))

(declare-fun m!584503 () Bool)

(assert (=> b!607711 m!584503))

(assert (=> b!607711 m!584449))

(assert (=> b!607711 m!584485))

(declare-fun m!584505 () Bool)

(assert (=> b!607711 m!584505))

(assert (=> b!607711 m!584449))

(declare-fun m!584507 () Bool)

(assert (=> b!607711 m!584507))

(declare-fun m!584509 () Bool)

(assert (=> b!607711 m!584509))

(declare-fun m!584511 () Bool)

(assert (=> b!607711 m!584511))

(declare-fun m!584513 () Bool)

(assert (=> b!607731 m!584513))

(declare-fun m!584515 () Bool)

(assert (=> b!607710 m!584515))

(assert (=> b!607726 m!584449))

(assert (=> b!607726 m!584449))

(assert (=> b!607726 m!584455))

(push 1)

(assert (not start!55570))

(assert (not b!607710))

(assert (not b!607729))

(assert (not b!607733))

(assert (not b!607711))

(assert (not b!607734))

(assert (not b!607718))

(assert (not b!607715))

(assert (not b!607716))

(assert (not b!607722))

(assert (not b!607726))

(assert (not b!607714))

(assert (not b!607723))

(assert (not b!607731))

(assert (not b!607732))

(assert (not b!607730))

(assert (not b!607735))

(assert (not b!607713))

(check-sat)

(pop 1)

