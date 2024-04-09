; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57946 () Bool)

(assert start!57946)

(declare-fun b!640667 () Bool)

(declare-fun res!415062 () Bool)

(declare-fun e!366773 () Bool)

(assert (=> b!640667 (=> (not res!415062) (not e!366773))))

(declare-datatypes ((array!38329 0))(
  ( (array!38330 (arr!18380 (Array (_ BitVec 32) (_ BitVec 64))) (size!18744 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38329)

(declare-datatypes ((List!12474 0))(
  ( (Nil!12471) (Cons!12470 (h!13515 (_ BitVec 64)) (t!18710 List!12474)) )
))
(declare-fun arrayNoDuplicates!0 (array!38329 (_ BitVec 32) List!12474) Bool)

(assert (=> b!640667 (= res!415062 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12471))))

(declare-fun b!640668 () Bool)

(declare-datatypes ((Unit!21666 0))(
  ( (Unit!21667) )
))
(declare-fun e!366777 () Unit!21666)

(declare-fun Unit!21668 () Unit!21666)

(assert (=> b!640668 (= e!366777 Unit!21668)))

(assert (=> b!640668 false))

(declare-fun b!640669 () Bool)

(declare-fun e!366778 () Bool)

(declare-fun e!366776 () Bool)

(assert (=> b!640669 (= e!366778 (not e!366776))))

(declare-fun res!415067 () Bool)

(assert (=> b!640669 (=> res!415067 e!366776)))

(declare-datatypes ((SeekEntryResult!6827 0))(
  ( (MissingZero!6827 (index!29627 (_ BitVec 32))) (Found!6827 (index!29628 (_ BitVec 32))) (Intermediate!6827 (undefined!7639 Bool) (index!29629 (_ BitVec 32)) (x!58408 (_ BitVec 32))) (Undefined!6827) (MissingVacant!6827 (index!29630 (_ BitVec 32))) )
))
(declare-fun lt!296647 () SeekEntryResult!6827)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640669 (= res!415067 (not (= lt!296647 (Found!6827 index!984))))))

(declare-fun lt!296648 () Unit!21666)

(assert (=> b!640669 (= lt!296648 e!366777)))

(declare-fun c!73172 () Bool)

(assert (=> b!640669 (= c!73172 (= lt!296647 Undefined!6827))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!296643 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!296641 () array!38329)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38329 (_ BitVec 32)) SeekEntryResult!6827)

(assert (=> b!640669 (= lt!296647 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296643 lt!296641 mask!3053))))

(declare-fun e!366781 () Bool)

(assert (=> b!640669 e!366781))

(declare-fun res!415063 () Bool)

(assert (=> b!640669 (=> (not res!415063) (not e!366781))))

(declare-fun lt!296649 () SeekEntryResult!6827)

(declare-fun lt!296639 () (_ BitVec 32))

(assert (=> b!640669 (= res!415063 (= lt!296649 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296639 vacantSpotIndex!68 lt!296643 lt!296641 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!640669 (= lt!296649 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296639 vacantSpotIndex!68 (select (arr!18380 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!640669 (= lt!296643 (select (store (arr!18380 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296637 () Unit!21666)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38329 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21666)

(assert (=> b!640669 (= lt!296637 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296639 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640669 (= lt!296639 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640670 () Bool)

(declare-fun e!366770 () Bool)

(assert (=> b!640670 (= e!366770 true)))

(assert (=> b!640670 (arrayNoDuplicates!0 lt!296641 j!136 Nil!12471)))

(declare-fun lt!296642 () Unit!21666)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38329 (_ BitVec 32) (_ BitVec 32)) Unit!21666)

(assert (=> b!640670 (= lt!296642 (lemmaNoDuplicateFromThenFromBigger!0 lt!296641 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640670 (arrayNoDuplicates!0 lt!296641 #b00000000000000000000000000000000 Nil!12471)))

(declare-fun lt!296646 () Unit!21666)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38329 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12474) Unit!21666)

(assert (=> b!640670 (= lt!296646 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12471))))

(declare-fun arrayContainsKey!0 (array!38329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640670 (arrayContainsKey!0 lt!296641 (select (arr!18380 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296638 () Unit!21666)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38329 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21666)

(assert (=> b!640670 (= lt!296638 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296641 (select (arr!18380 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640671 () Bool)

(declare-fun lt!296644 () SeekEntryResult!6827)

(assert (=> b!640671 (= e!366781 (= lt!296644 lt!296649))))

(declare-fun b!640672 () Bool)

(declare-fun res!415061 () Bool)

(declare-fun e!366772 () Bool)

(assert (=> b!640672 (=> (not res!415061) (not e!366772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640672 (= res!415061 (validKeyInArray!0 k!1786))))

(declare-fun b!640673 () Bool)

(declare-fun e!366771 () Bool)

(declare-fun e!366775 () Bool)

(assert (=> b!640673 (= e!366771 e!366775)))

(declare-fun res!415065 () Bool)

(assert (=> b!640673 (=> res!415065 e!366775)))

(declare-fun lt!296645 () (_ BitVec 64))

(assert (=> b!640673 (= res!415065 (or (not (= (select (arr!18380 a!2986) j!136) lt!296643)) (not (= (select (arr!18380 a!2986) j!136) lt!296645)) (bvsge j!136 index!984)))))

(declare-fun res!415069 () Bool)

(assert (=> start!57946 (=> (not res!415069) (not e!366772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57946 (= res!415069 (validMask!0 mask!3053))))

(assert (=> start!57946 e!366772))

(assert (=> start!57946 true))

(declare-fun array_inv!14154 (array!38329) Bool)

(assert (=> start!57946 (array_inv!14154 a!2986)))

(declare-fun b!640674 () Bool)

(declare-fun Unit!21669 () Unit!21666)

(assert (=> b!640674 (= e!366777 Unit!21669)))

(declare-fun b!640675 () Bool)

(declare-fun e!366779 () Bool)

(assert (=> b!640675 (= e!366779 e!366778)))

(declare-fun res!415064 () Bool)

(assert (=> b!640675 (=> (not res!415064) (not e!366778))))

(assert (=> b!640675 (= res!415064 (and (= lt!296644 (Found!6827 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18380 a!2986) index!984) (select (arr!18380 a!2986) j!136))) (not (= (select (arr!18380 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640675 (= lt!296644 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18380 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640676 () Bool)

(assert (=> b!640676 (= e!366773 e!366779)))

(declare-fun res!415058 () Bool)

(assert (=> b!640676 (=> (not res!415058) (not e!366779))))

(assert (=> b!640676 (= res!415058 (= (select (store (arr!18380 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640676 (= lt!296641 (array!38330 (store (arr!18380 a!2986) i!1108 k!1786) (size!18744 a!2986)))))

(declare-fun b!640677 () Bool)

(assert (=> b!640677 (= e!366772 e!366773)))

(declare-fun res!415066 () Bool)

(assert (=> b!640677 (=> (not res!415066) (not e!366773))))

(declare-fun lt!296640 () SeekEntryResult!6827)

(assert (=> b!640677 (= res!415066 (or (= lt!296640 (MissingZero!6827 i!1108)) (= lt!296640 (MissingVacant!6827 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38329 (_ BitVec 32)) SeekEntryResult!6827)

(assert (=> b!640677 (= lt!296640 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640678 () Bool)

(declare-fun res!415057 () Bool)

(assert (=> b!640678 (=> (not res!415057) (not e!366772))))

(assert (=> b!640678 (= res!415057 (validKeyInArray!0 (select (arr!18380 a!2986) j!136)))))

(declare-fun b!640679 () Bool)

(declare-fun res!415072 () Bool)

(assert (=> b!640679 (=> (not res!415072) (not e!366772))))

(assert (=> b!640679 (= res!415072 (and (= (size!18744 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18744 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18744 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640680 () Bool)

(declare-fun e!366780 () Bool)

(assert (=> b!640680 (= e!366775 e!366780)))

(declare-fun res!415059 () Bool)

(assert (=> b!640680 (=> (not res!415059) (not e!366780))))

(assert (=> b!640680 (= res!415059 (arrayContainsKey!0 lt!296641 (select (arr!18380 a!2986) j!136) j!136))))

(declare-fun b!640681 () Bool)

(assert (=> b!640681 (= e!366780 (arrayContainsKey!0 lt!296641 (select (arr!18380 a!2986) j!136) index!984))))

(declare-fun b!640682 () Bool)

(declare-fun res!415070 () Bool)

(assert (=> b!640682 (=> (not res!415070) (not e!366773))))

(assert (=> b!640682 (= res!415070 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18380 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640683 () Bool)

(declare-fun res!415071 () Bool)

(assert (=> b!640683 (=> (not res!415071) (not e!366772))))

(assert (=> b!640683 (= res!415071 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640684 () Bool)

(declare-fun res!415060 () Bool)

(assert (=> b!640684 (=> (not res!415060) (not e!366773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38329 (_ BitVec 32)) Bool)

(assert (=> b!640684 (= res!415060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640685 () Bool)

(assert (=> b!640685 (= e!366776 e!366770)))

(declare-fun res!415073 () Bool)

(assert (=> b!640685 (=> res!415073 e!366770)))

(assert (=> b!640685 (= res!415073 (or (not (= (select (arr!18380 a!2986) j!136) lt!296643)) (not (= (select (arr!18380 a!2986) j!136) lt!296645)) (bvsge j!136 index!984)))))

(assert (=> b!640685 e!366771))

(declare-fun res!415068 () Bool)

(assert (=> b!640685 (=> (not res!415068) (not e!366771))))

(assert (=> b!640685 (= res!415068 (= lt!296645 (select (arr!18380 a!2986) j!136)))))

(assert (=> b!640685 (= lt!296645 (select (store (arr!18380 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!57946 res!415069) b!640679))

(assert (= (and b!640679 res!415072) b!640678))

(assert (= (and b!640678 res!415057) b!640672))

(assert (= (and b!640672 res!415061) b!640683))

(assert (= (and b!640683 res!415071) b!640677))

(assert (= (and b!640677 res!415066) b!640684))

(assert (= (and b!640684 res!415060) b!640667))

(assert (= (and b!640667 res!415062) b!640682))

(assert (= (and b!640682 res!415070) b!640676))

(assert (= (and b!640676 res!415058) b!640675))

(assert (= (and b!640675 res!415064) b!640669))

(assert (= (and b!640669 res!415063) b!640671))

(assert (= (and b!640669 c!73172) b!640668))

(assert (= (and b!640669 (not c!73172)) b!640674))

(assert (= (and b!640669 (not res!415067)) b!640685))

(assert (= (and b!640685 res!415068) b!640673))

(assert (= (and b!640673 (not res!415065)) b!640680))

(assert (= (and b!640680 res!415059) b!640681))

(assert (= (and b!640685 (not res!415073)) b!640670))

(declare-fun m!614579 () Bool)

(assert (=> b!640681 m!614579))

(assert (=> b!640681 m!614579))

(declare-fun m!614581 () Bool)

(assert (=> b!640681 m!614581))

(assert (=> b!640673 m!614579))

(assert (=> b!640685 m!614579))

(declare-fun m!614583 () Bool)

(assert (=> b!640685 m!614583))

(declare-fun m!614585 () Bool)

(assert (=> b!640685 m!614585))

(declare-fun m!614587 () Bool)

(assert (=> b!640667 m!614587))

(assert (=> b!640670 m!614579))

(declare-fun m!614589 () Bool)

(assert (=> b!640670 m!614589))

(assert (=> b!640670 m!614579))

(declare-fun m!614591 () Bool)

(assert (=> b!640670 m!614591))

(declare-fun m!614593 () Bool)

(assert (=> b!640670 m!614593))

(assert (=> b!640670 m!614579))

(declare-fun m!614595 () Bool)

(assert (=> b!640670 m!614595))

(declare-fun m!614597 () Bool)

(assert (=> b!640670 m!614597))

(declare-fun m!614599 () Bool)

(assert (=> b!640670 m!614599))

(declare-fun m!614601 () Bool)

(assert (=> b!640684 m!614601))

(declare-fun m!614603 () Bool)

(assert (=> start!57946 m!614603))

(declare-fun m!614605 () Bool)

(assert (=> start!57946 m!614605))

(declare-fun m!614607 () Bool)

(assert (=> b!640682 m!614607))

(declare-fun m!614609 () Bool)

(assert (=> b!640669 m!614609))

(assert (=> b!640669 m!614579))

(assert (=> b!640669 m!614579))

(declare-fun m!614611 () Bool)

(assert (=> b!640669 m!614611))

(assert (=> b!640669 m!614583))

(declare-fun m!614613 () Bool)

(assert (=> b!640669 m!614613))

(declare-fun m!614615 () Bool)

(assert (=> b!640669 m!614615))

(declare-fun m!614617 () Bool)

(assert (=> b!640669 m!614617))

(declare-fun m!614619 () Bool)

(assert (=> b!640669 m!614619))

(assert (=> b!640680 m!614579))

(assert (=> b!640680 m!614579))

(declare-fun m!614621 () Bool)

(assert (=> b!640680 m!614621))

(declare-fun m!614623 () Bool)

(assert (=> b!640675 m!614623))

(assert (=> b!640675 m!614579))

(assert (=> b!640675 m!614579))

(declare-fun m!614625 () Bool)

(assert (=> b!640675 m!614625))

(assert (=> b!640678 m!614579))

(assert (=> b!640678 m!614579))

(declare-fun m!614627 () Bool)

(assert (=> b!640678 m!614627))

(declare-fun m!614629 () Bool)

(assert (=> b!640683 m!614629))

(declare-fun m!614631 () Bool)

(assert (=> b!640677 m!614631))

(assert (=> b!640676 m!614583))

(declare-fun m!614633 () Bool)

(assert (=> b!640676 m!614633))

(declare-fun m!614635 () Bool)

(assert (=> b!640672 m!614635))

(push 1)

