; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56184 () Bool)

(assert start!56184)

(declare-fun b!621615 () Bool)

(declare-fun res!400696 () Bool)

(declare-fun e!356538 () Bool)

(assert (=> b!621615 (=> (not res!400696) (not e!356538))))

(declare-datatypes ((array!37617 0))(
  ( (array!37618 (arr!18051 (Array (_ BitVec 32) (_ BitVec 64))) (size!18415 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37617)

(declare-datatypes ((List!12145 0))(
  ( (Nil!12142) (Cons!12141 (h!13186 (_ BitVec 64)) (t!18381 List!12145)) )
))
(declare-fun arrayNoDuplicates!0 (array!37617 (_ BitVec 32) List!12145) Bool)

(assert (=> b!621615 (= res!400696 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12142))))

(declare-fun b!621616 () Bool)

(declare-fun e!356548 () Bool)

(declare-datatypes ((SeekEntryResult!6498 0))(
  ( (MissingZero!6498 (index!28275 (_ BitVec 32))) (Found!6498 (index!28276 (_ BitVec 32))) (Intermediate!6498 (undefined!7310 Bool) (index!28277 (_ BitVec 32)) (x!57075 (_ BitVec 32))) (Undefined!6498) (MissingVacant!6498 (index!28278 (_ BitVec 32))) )
))
(declare-fun lt!287848 () SeekEntryResult!6498)

(declare-fun lt!287850 () SeekEntryResult!6498)

(assert (=> b!621616 (= e!356548 (= lt!287848 lt!287850))))

(declare-fun b!621617 () Bool)

(declare-datatypes ((Unit!20800 0))(
  ( (Unit!20801) )
))
(declare-fun e!356544 () Unit!20800)

(declare-fun Unit!20802 () Unit!20800)

(assert (=> b!621617 (= e!356544 Unit!20802)))

(declare-fun b!621618 () Bool)

(declare-fun res!400691 () Bool)

(declare-fun e!356550 () Bool)

(assert (=> b!621618 (=> (not res!400691) (not e!356550))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!621618 (= res!400691 (and (= (size!18415 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18415 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18415 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!400690 () Bool)

(assert (=> start!56184 (=> (not res!400690) (not e!356550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56184 (= res!400690 (validMask!0 mask!3053))))

(assert (=> start!56184 e!356550))

(assert (=> start!56184 true))

(declare-fun array_inv!13825 (array!37617) Bool)

(assert (=> start!56184 (array_inv!13825 a!2986)))

(declare-fun b!621619 () Bool)

(declare-fun res!400700 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621619 (= res!400700 (bvsge j!136 index!984))))

(declare-fun e!356546 () Bool)

(assert (=> b!621619 (=> res!400700 e!356546)))

(declare-fun e!356549 () Bool)

(assert (=> b!621619 (= e!356549 e!356546)))

(declare-fun b!621620 () Bool)

(declare-fun e!356541 () Unit!20800)

(declare-fun Unit!20803 () Unit!20800)

(assert (=> b!621620 (= e!356541 Unit!20803)))

(assert (=> b!621620 false))

(declare-fun b!621621 () Bool)

(declare-fun Unit!20804 () Unit!20800)

(assert (=> b!621621 (= e!356541 Unit!20804)))

(declare-fun b!621622 () Bool)

(declare-fun e!356542 () Unit!20800)

(declare-fun Unit!20805 () Unit!20800)

(assert (=> b!621622 (= e!356542 Unit!20805)))

(declare-fun res!400688 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!621622 (= res!400688 (= (select (store (arr!18051 a!2986) i!1108 k!1786) index!984) (select (arr!18051 a!2986) j!136)))))

(assert (=> b!621622 (=> (not res!400688) (not e!356549))))

(assert (=> b!621622 e!356549))

(declare-fun c!70835 () Bool)

(assert (=> b!621622 (= c!70835 (bvslt j!136 index!984))))

(declare-fun lt!287844 () Unit!20800)

(declare-fun e!356540 () Unit!20800)

(assert (=> b!621622 (= lt!287844 e!356540)))

(declare-fun c!70833 () Bool)

(assert (=> b!621622 (= c!70833 (bvslt index!984 j!136))))

(declare-fun lt!287846 () Unit!20800)

(assert (=> b!621622 (= lt!287846 e!356544)))

(assert (=> b!621622 false))

(declare-fun b!621623 () Bool)

(declare-fun res!400692 () Bool)

(assert (=> b!621623 (=> (not res!400692) (not e!356550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621623 (= res!400692 (validKeyInArray!0 k!1786))))

(declare-fun b!621624 () Bool)

(declare-fun e!356545 () Bool)

(assert (=> b!621624 (= e!356538 e!356545)))

(declare-fun res!400695 () Bool)

(assert (=> b!621624 (=> (not res!400695) (not e!356545))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!621624 (= res!400695 (= (select (store (arr!18051 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!287843 () array!37617)

(assert (=> b!621624 (= lt!287843 (array!37618 (store (arr!18051 a!2986) i!1108 k!1786) (size!18415 a!2986)))))

(declare-fun b!621625 () Bool)

(declare-fun e!356551 () Bool)

(declare-fun arrayContainsKey!0 (array!37617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621625 (= e!356551 (arrayContainsKey!0 lt!287843 (select (arr!18051 a!2986) j!136) index!984))))

(declare-fun b!621626 () Bool)

(assert (=> b!621626 false))

(declare-fun lt!287853 () Unit!20800)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37617 (_ BitVec 64) (_ BitVec 32) List!12145) Unit!20800)

(assert (=> b!621626 (= lt!287853 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287843 (select (arr!18051 a!2986) j!136) j!136 Nil!12142))))

(assert (=> b!621626 (arrayNoDuplicates!0 lt!287843 j!136 Nil!12142)))

(declare-fun lt!287841 () Unit!20800)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37617 (_ BitVec 32) (_ BitVec 32)) Unit!20800)

(assert (=> b!621626 (= lt!287841 (lemmaNoDuplicateFromThenFromBigger!0 lt!287843 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621626 (arrayNoDuplicates!0 lt!287843 #b00000000000000000000000000000000 Nil!12142)))

(declare-fun lt!287851 () Unit!20800)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37617 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12145) Unit!20800)

(assert (=> b!621626 (= lt!287851 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12142))))

(assert (=> b!621626 (arrayContainsKey!0 lt!287843 (select (arr!18051 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287840 () Unit!20800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37617 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20800)

(assert (=> b!621626 (= lt!287840 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287843 (select (arr!18051 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20806 () Unit!20800)

(assert (=> b!621626 (= e!356540 Unit!20806)))

(declare-fun b!621627 () Bool)

(assert (=> b!621627 false))

(declare-fun lt!287845 () Unit!20800)

(assert (=> b!621627 (= lt!287845 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287843 (select (arr!18051 a!2986) j!136) index!984 Nil!12142))))

(assert (=> b!621627 (arrayNoDuplicates!0 lt!287843 index!984 Nil!12142)))

(declare-fun lt!287837 () Unit!20800)

(assert (=> b!621627 (= lt!287837 (lemmaNoDuplicateFromThenFromBigger!0 lt!287843 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621627 (arrayNoDuplicates!0 lt!287843 #b00000000000000000000000000000000 Nil!12142)))

(declare-fun lt!287839 () Unit!20800)

(assert (=> b!621627 (= lt!287839 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12142))))

(assert (=> b!621627 (arrayContainsKey!0 lt!287843 (select (arr!18051 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287849 () Unit!20800)

(assert (=> b!621627 (= lt!287849 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287843 (select (arr!18051 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356543 () Bool)

(assert (=> b!621627 e!356543))

(declare-fun res!400698 () Bool)

(assert (=> b!621627 (=> (not res!400698) (not e!356543))))

(assert (=> b!621627 (= res!400698 (arrayContainsKey!0 lt!287843 (select (arr!18051 a!2986) j!136) j!136))))

(declare-fun Unit!20807 () Unit!20800)

(assert (=> b!621627 (= e!356544 Unit!20807)))

(declare-fun b!621628 () Bool)

(declare-fun Unit!20808 () Unit!20800)

(assert (=> b!621628 (= e!356540 Unit!20808)))

(declare-fun b!621629 () Bool)

(assert (=> b!621629 (= e!356550 e!356538)))

(declare-fun res!400694 () Bool)

(assert (=> b!621629 (=> (not res!400694) (not e!356538))))

(declare-fun lt!287855 () SeekEntryResult!6498)

(assert (=> b!621629 (= res!400694 (or (= lt!287855 (MissingZero!6498 i!1108)) (= lt!287855 (MissingVacant!6498 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37617 (_ BitVec 32)) SeekEntryResult!6498)

(assert (=> b!621629 (= lt!287855 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621630 () Bool)

(declare-fun res!400693 () Bool)

(assert (=> b!621630 (=> (not res!400693) (not e!356538))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!621630 (= res!400693 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18051 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621631 () Bool)

(declare-fun Unit!20809 () Unit!20800)

(assert (=> b!621631 (= e!356542 Unit!20809)))

(declare-fun b!621632 () Bool)

(declare-fun res!400685 () Bool)

(assert (=> b!621632 (=> (not res!400685) (not e!356550))))

(assert (=> b!621632 (= res!400685 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621633 () Bool)

(declare-fun res!400687 () Bool)

(assert (=> b!621633 (=> (not res!400687) (not e!356538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37617 (_ BitVec 32)) Bool)

(assert (=> b!621633 (= res!400687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621634 () Bool)

(declare-fun e!356539 () Bool)

(assert (=> b!621634 (= e!356545 e!356539)))

(declare-fun res!400697 () Bool)

(assert (=> b!621634 (=> (not res!400697) (not e!356539))))

(assert (=> b!621634 (= res!400697 (and (= lt!287848 (Found!6498 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18051 a!2986) index!984) (select (arr!18051 a!2986) j!136))) (not (= (select (arr!18051 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37617 (_ BitVec 32)) SeekEntryResult!6498)

(assert (=> b!621634 (= lt!287848 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18051 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621635 () Bool)

(declare-fun res!400689 () Bool)

(assert (=> b!621635 (= res!400689 (arrayContainsKey!0 lt!287843 (select (arr!18051 a!2986) j!136) j!136))))

(assert (=> b!621635 (=> (not res!400689) (not e!356551))))

(assert (=> b!621635 (= e!356546 e!356551)))

(declare-fun b!621636 () Bool)

(declare-fun res!400699 () Bool)

(assert (=> b!621636 (=> (not res!400699) (not e!356550))))

(assert (=> b!621636 (= res!400699 (validKeyInArray!0 (select (arr!18051 a!2986) j!136)))))

(declare-fun b!621637 () Bool)

(assert (=> b!621637 (= e!356539 (not true))))

(declare-fun lt!287847 () Unit!20800)

(assert (=> b!621637 (= lt!287847 e!356542)))

(declare-fun c!70834 () Bool)

(declare-fun lt!287852 () SeekEntryResult!6498)

(assert (=> b!621637 (= c!70834 (= lt!287852 (Found!6498 index!984)))))

(declare-fun lt!287856 () Unit!20800)

(assert (=> b!621637 (= lt!287856 e!356541)))

(declare-fun c!70832 () Bool)

(assert (=> b!621637 (= c!70832 (= lt!287852 Undefined!6498))))

(declare-fun lt!287838 () (_ BitVec 64))

(assert (=> b!621637 (= lt!287852 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287838 lt!287843 mask!3053))))

(assert (=> b!621637 e!356548))

(declare-fun res!400686 () Bool)

(assert (=> b!621637 (=> (not res!400686) (not e!356548))))

(declare-fun lt!287854 () (_ BitVec 32))

(assert (=> b!621637 (= res!400686 (= lt!287850 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287854 vacantSpotIndex!68 lt!287838 lt!287843 mask!3053)))))

(assert (=> b!621637 (= lt!287850 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287854 vacantSpotIndex!68 (select (arr!18051 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621637 (= lt!287838 (select (store (arr!18051 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287842 () Unit!20800)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37617 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20800)

(assert (=> b!621637 (= lt!287842 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287854 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621637 (= lt!287854 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621638 () Bool)

(assert (=> b!621638 (= e!356543 (arrayContainsKey!0 lt!287843 (select (arr!18051 a!2986) j!136) index!984))))

(assert (= (and start!56184 res!400690) b!621618))

(assert (= (and b!621618 res!400691) b!621636))

(assert (= (and b!621636 res!400699) b!621623))

(assert (= (and b!621623 res!400692) b!621632))

(assert (= (and b!621632 res!400685) b!621629))

(assert (= (and b!621629 res!400694) b!621633))

(assert (= (and b!621633 res!400687) b!621615))

(assert (= (and b!621615 res!400696) b!621630))

(assert (= (and b!621630 res!400693) b!621624))

(assert (= (and b!621624 res!400695) b!621634))

(assert (= (and b!621634 res!400697) b!621637))

(assert (= (and b!621637 res!400686) b!621616))

(assert (= (and b!621637 c!70832) b!621620))

(assert (= (and b!621637 (not c!70832)) b!621621))

(assert (= (and b!621637 c!70834) b!621622))

(assert (= (and b!621637 (not c!70834)) b!621631))

(assert (= (and b!621622 res!400688) b!621619))

(assert (= (and b!621619 (not res!400700)) b!621635))

(assert (= (and b!621635 res!400689) b!621625))

(assert (= (and b!621622 c!70835) b!621626))

(assert (= (and b!621622 (not c!70835)) b!621628))

(assert (= (and b!621622 c!70833) b!621627))

(assert (= (and b!621622 (not c!70833)) b!621617))

(assert (= (and b!621627 res!400698) b!621638))

(declare-fun m!597549 () Bool)

(assert (=> start!56184 m!597549))

(declare-fun m!597551 () Bool)

(assert (=> start!56184 m!597551))

(declare-fun m!597553 () Bool)

(assert (=> b!621635 m!597553))

(assert (=> b!621635 m!597553))

(declare-fun m!597555 () Bool)

(assert (=> b!621635 m!597555))

(declare-fun m!597557 () Bool)

(assert (=> b!621632 m!597557))

(declare-fun m!597559 () Bool)

(assert (=> b!621633 m!597559))

(declare-fun m!597561 () Bool)

(assert (=> b!621634 m!597561))

(assert (=> b!621634 m!597553))

(assert (=> b!621634 m!597553))

(declare-fun m!597563 () Bool)

(assert (=> b!621634 m!597563))

(declare-fun m!597565 () Bool)

(assert (=> b!621627 m!597565))

(declare-fun m!597567 () Bool)

(assert (=> b!621627 m!597567))

(assert (=> b!621627 m!597553))

(assert (=> b!621627 m!597553))

(declare-fun m!597569 () Bool)

(assert (=> b!621627 m!597569))

(assert (=> b!621627 m!597553))

(assert (=> b!621627 m!597555))

(assert (=> b!621627 m!597553))

(declare-fun m!597571 () Bool)

(assert (=> b!621627 m!597571))

(assert (=> b!621627 m!597553))

(declare-fun m!597573 () Bool)

(assert (=> b!621627 m!597573))

(declare-fun m!597575 () Bool)

(assert (=> b!621627 m!597575))

(declare-fun m!597577 () Bool)

(assert (=> b!621627 m!597577))

(declare-fun m!597579 () Bool)

(assert (=> b!621637 m!597579))

(declare-fun m!597581 () Bool)

(assert (=> b!621637 m!597581))

(declare-fun m!597583 () Bool)

(assert (=> b!621637 m!597583))

(assert (=> b!621637 m!597553))

(declare-fun m!597585 () Bool)

(assert (=> b!621637 m!597585))

(assert (=> b!621637 m!597553))

(declare-fun m!597587 () Bool)

(assert (=> b!621637 m!597587))

(declare-fun m!597589 () Bool)

(assert (=> b!621637 m!597589))

(declare-fun m!597591 () Bool)

(assert (=> b!621637 m!597591))

(assert (=> b!621625 m!597553))

(assert (=> b!621625 m!597553))

(declare-fun m!597593 () Bool)

(assert (=> b!621625 m!597593))

(assert (=> b!621622 m!597591))

(declare-fun m!597595 () Bool)

(assert (=> b!621622 m!597595))

(assert (=> b!621622 m!597553))

(declare-fun m!597597 () Bool)

(assert (=> b!621630 m!597597))

(assert (=> b!621636 m!597553))

(assert (=> b!621636 m!597553))

(declare-fun m!597599 () Bool)

(assert (=> b!621636 m!597599))

(declare-fun m!597601 () Bool)

(assert (=> b!621623 m!597601))

(assert (=> b!621638 m!597553))

(assert (=> b!621638 m!597553))

(assert (=> b!621638 m!597593))

(declare-fun m!597603 () Bool)

(assert (=> b!621629 m!597603))

(assert (=> b!621626 m!597553))

(declare-fun m!597605 () Bool)

(assert (=> b!621626 m!597605))

(assert (=> b!621626 m!597553))

(assert (=> b!621626 m!597553))

(declare-fun m!597607 () Bool)

(assert (=> b!621626 m!597607))

(assert (=> b!621626 m!597553))

(declare-fun m!597609 () Bool)

(assert (=> b!621626 m!597609))

(declare-fun m!597611 () Bool)

(assert (=> b!621626 m!597611))

(assert (=> b!621626 m!597577))

(assert (=> b!621626 m!597567))

(declare-fun m!597613 () Bool)

(assert (=> b!621626 m!597613))

(declare-fun m!597615 () Bool)

(assert (=> b!621615 m!597615))

(assert (=> b!621624 m!597591))

(declare-fun m!597617 () Bool)

(assert (=> b!621624 m!597617))

(push 1)

