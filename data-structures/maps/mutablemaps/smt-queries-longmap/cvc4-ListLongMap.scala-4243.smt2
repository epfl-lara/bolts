; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58768 () Bool)

(assert start!58768)

(declare-fun b!647724 () Bool)

(declare-fun e!371448 () Bool)

(declare-fun e!371451 () Bool)

(assert (=> b!647724 (= e!371448 e!371451)))

(declare-fun res!419785 () Bool)

(assert (=> b!647724 (=> (not res!419785) (not e!371451))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6890 0))(
  ( (MissingZero!6890 (index!29903 (_ BitVec 32))) (Found!6890 (index!29904 (_ BitVec 32))) (Intermediate!6890 (undefined!7702 Bool) (index!29905 (_ BitVec 32)) (x!58711 (_ BitVec 32))) (Undefined!6890) (MissingVacant!6890 (index!29906 (_ BitVec 32))) )
))
(declare-fun lt!300653 () SeekEntryResult!6890)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38479 0))(
  ( (array!38480 (arr!18443 (Array (_ BitVec 32) (_ BitVec 64))) (size!18807 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38479)

(assert (=> b!647724 (= res!419785 (and (= lt!300653 (Found!6890 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18443 a!2986) index!984) (select (arr!18443 a!2986) j!136))) (not (= (select (arr!18443 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38479 (_ BitVec 32)) SeekEntryResult!6890)

(assert (=> b!647724 (= lt!300653 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18443 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647725 () Bool)

(declare-fun res!419782 () Bool)

(declare-fun e!371455 () Bool)

(assert (=> b!647725 (=> (not res!419782) (not e!371455))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!647725 (= res!419782 (validKeyInArray!0 k!1786))))

(declare-fun b!647726 () Bool)

(declare-fun res!419781 () Bool)

(declare-fun e!371443 () Bool)

(assert (=> b!647726 (=> (not res!419781) (not e!371443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38479 (_ BitVec 32)) Bool)

(assert (=> b!647726 (= res!419781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun lt!300656 () array!38479)

(declare-fun b!647727 () Bool)

(declare-fun e!371457 () Bool)

(declare-fun arrayContainsKey!0 (array!38479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!647727 (= e!371457 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) index!984))))

(declare-fun b!647728 () Bool)

(assert (=> b!647728 (= e!371455 e!371443)))

(declare-fun res!419771 () Bool)

(assert (=> b!647728 (=> (not res!419771) (not e!371443))))

(declare-fun lt!300657 () SeekEntryResult!6890)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!647728 (= res!419771 (or (= lt!300657 (MissingZero!6890 i!1108)) (= lt!300657 (MissingVacant!6890 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38479 (_ BitVec 32)) SeekEntryResult!6890)

(assert (=> b!647728 (= lt!300657 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!647729 () Bool)

(assert (=> b!647729 (= e!371443 e!371448)))

(declare-fun res!419788 () Bool)

(assert (=> b!647729 (=> (not res!419788) (not e!371448))))

(assert (=> b!647729 (= res!419788 (= (select (store (arr!18443 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647729 (= lt!300656 (array!38480 (store (arr!18443 a!2986) i!1108 k!1786) (size!18807 a!2986)))))

(declare-fun b!647730 () Bool)

(declare-fun e!371454 () Bool)

(declare-fun e!371453 () Bool)

(assert (=> b!647730 (= e!371454 e!371453)))

(declare-fun res!419776 () Bool)

(assert (=> b!647730 (=> res!419776 e!371453)))

(declare-fun lt!300646 () (_ BitVec 64))

(declare-fun lt!300647 () (_ BitVec 64))

(assert (=> b!647730 (= res!419776 (or (not (= (select (arr!18443 a!2986) j!136) lt!300647)) (not (= (select (arr!18443 a!2986) j!136) lt!300646))))))

(declare-fun e!371450 () Bool)

(assert (=> b!647730 e!371450))

(declare-fun res!419770 () Bool)

(assert (=> b!647730 (=> (not res!419770) (not e!371450))))

(assert (=> b!647730 (= res!419770 (= lt!300646 (select (arr!18443 a!2986) j!136)))))

(assert (=> b!647730 (= lt!300646 (select (store (arr!18443 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!647731 () Bool)

(declare-fun res!419791 () Bool)

(assert (=> b!647731 (=> (not res!419791) (not e!371455))))

(assert (=> b!647731 (= res!419791 (validKeyInArray!0 (select (arr!18443 a!2986) j!136)))))

(declare-fun b!647732 () Bool)

(declare-fun res!419777 () Bool)

(declare-fun e!371449 () Bool)

(assert (=> b!647732 (=> res!419777 e!371449)))

(declare-datatypes ((List!12537 0))(
  ( (Nil!12534) (Cons!12533 (h!13578 (_ BitVec 64)) (t!18773 List!12537)) )
))
(declare-fun contains!3160 (List!12537 (_ BitVec 64)) Bool)

(assert (=> b!647732 (= res!419777 (contains!3160 Nil!12534 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647733 () Bool)

(declare-fun res!419772 () Bool)

(assert (=> b!647733 (=> (not res!419772) (not e!371443))))

(declare-fun arrayNoDuplicates!0 (array!38479 (_ BitVec 32) List!12537) Bool)

(assert (=> b!647733 (= res!419772 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12534))))

(declare-fun b!647734 () Bool)

(declare-datatypes ((Unit!22012 0))(
  ( (Unit!22013) )
))
(declare-fun e!371458 () Unit!22012)

(declare-fun Unit!22014 () Unit!22012)

(assert (=> b!647734 (= e!371458 Unit!22014)))

(declare-fun lt!300660 () Unit!22012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22012)

(assert (=> b!647734 (= lt!300660 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300656 (select (arr!18443 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!647734 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300654 () Unit!22012)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12537) Unit!22012)

(assert (=> b!647734 (= lt!300654 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12534))))

(assert (=> b!647734 (arrayNoDuplicates!0 lt!300656 #b00000000000000000000000000000000 Nil!12534)))

(declare-fun lt!300659 () Unit!22012)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38479 (_ BitVec 32) (_ BitVec 32)) Unit!22012)

(assert (=> b!647734 (= lt!300659 (lemmaNoDuplicateFromThenFromBigger!0 lt!300656 #b00000000000000000000000000000000 j!136))))

(assert (=> b!647734 (arrayNoDuplicates!0 lt!300656 j!136 Nil!12534)))

(declare-fun lt!300652 () Unit!22012)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38479 (_ BitVec 64) (_ BitVec 32) List!12537) Unit!22012)

(assert (=> b!647734 (= lt!300652 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136 Nil!12534))))

(assert (=> b!647734 false))

(declare-fun b!647735 () Bool)

(declare-fun e!371444 () Unit!22012)

(declare-fun Unit!22015 () Unit!22012)

(assert (=> b!647735 (= e!371444 Unit!22015)))

(declare-fun b!647736 () Bool)

(declare-fun e!371452 () Bool)

(assert (=> b!647736 (= e!371450 e!371452)))

(declare-fun res!419792 () Bool)

(assert (=> b!647736 (=> res!419792 e!371452)))

(assert (=> b!647736 (= res!419792 (or (not (= (select (arr!18443 a!2986) j!136) lt!300647)) (not (= (select (arr!18443 a!2986) j!136) lt!300646)) (bvsge j!136 index!984)))))

(declare-fun b!647737 () Bool)

(declare-fun res!419786 () Bool)

(assert (=> b!647737 (=> (not res!419786) (not e!371455))))

(assert (=> b!647737 (= res!419786 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!419784 () Bool)

(assert (=> start!58768 (=> (not res!419784) (not e!371455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58768 (= res!419784 (validMask!0 mask!3053))))

(assert (=> start!58768 e!371455))

(assert (=> start!58768 true))

(declare-fun array_inv!14217 (array!38479) Bool)

(assert (=> start!58768 (array_inv!14217 a!2986)))

(declare-fun b!647738 () Bool)

(declare-fun e!371446 () Bool)

(assert (=> b!647738 (= e!371446 e!371449)))

(declare-fun res!419773 () Bool)

(assert (=> b!647738 (=> res!419773 e!371449)))

(assert (=> b!647738 (= res!419773 (or (bvsge (size!18807 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18807 a!2986))))))

(assert (=> b!647738 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300650 () Unit!22012)

(assert (=> b!647738 (= lt!300650 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!647738 e!371457))

(declare-fun res!419783 () Bool)

(assert (=> b!647738 (=> (not res!419783) (not e!371457))))

(assert (=> b!647738 (= res!419783 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136))))

(declare-fun b!647739 () Bool)

(declare-fun res!419780 () Bool)

(assert (=> b!647739 (=> (not res!419780) (not e!371455))))

(assert (=> b!647739 (= res!419780 (and (= (size!18807 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18807 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18807 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!647740 () Bool)

(assert (=> b!647740 (= e!371453 e!371446)))

(declare-fun res!419774 () Bool)

(assert (=> b!647740 (=> res!419774 e!371446)))

(assert (=> b!647740 (= res!419774 (bvsge index!984 j!136))))

(declare-fun lt!300651 () Unit!22012)

(assert (=> b!647740 (= lt!300651 e!371458)))

(declare-fun c!74344 () Bool)

(assert (=> b!647740 (= c!74344 (bvslt j!136 index!984))))

(declare-fun b!647741 () Bool)

(declare-fun e!371447 () Bool)

(assert (=> b!647741 (= e!371447 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) index!984))))

(declare-fun b!647742 () Bool)

(declare-fun e!371456 () Bool)

(declare-fun lt!300648 () SeekEntryResult!6890)

(assert (=> b!647742 (= e!371456 (= lt!300653 lt!300648))))

(declare-fun b!647743 () Bool)

(declare-fun Unit!22016 () Unit!22012)

(assert (=> b!647743 (= e!371444 Unit!22016)))

(assert (=> b!647743 false))

(declare-fun b!647744 () Bool)

(assert (=> b!647744 (= e!371449 (not (contains!3160 Nil!12534 k!1786)))))

(declare-fun b!647745 () Bool)

(assert (=> b!647745 (= e!371452 e!371447)))

(declare-fun res!419775 () Bool)

(assert (=> b!647745 (=> (not res!419775) (not e!371447))))

(assert (=> b!647745 (= res!419775 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136))))

(declare-fun b!647746 () Bool)

(declare-fun Unit!22017 () Unit!22012)

(assert (=> b!647746 (= e!371458 Unit!22017)))

(declare-fun b!647747 () Bool)

(assert (=> b!647747 (= e!371451 (not e!371454))))

(declare-fun res!419787 () Bool)

(assert (=> b!647747 (=> res!419787 e!371454)))

(declare-fun lt!300649 () SeekEntryResult!6890)

(assert (=> b!647747 (= res!419787 (not (= lt!300649 (Found!6890 index!984))))))

(declare-fun lt!300645 () Unit!22012)

(assert (=> b!647747 (= lt!300645 e!371444)))

(declare-fun c!74345 () Bool)

(assert (=> b!647747 (= c!74345 (= lt!300649 Undefined!6890))))

(assert (=> b!647747 (= lt!300649 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300647 lt!300656 mask!3053))))

(assert (=> b!647747 e!371456))

(declare-fun res!419779 () Bool)

(assert (=> b!647747 (=> (not res!419779) (not e!371456))))

(declare-fun lt!300655 () (_ BitVec 32))

(assert (=> b!647747 (= res!419779 (= lt!300648 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300655 vacantSpotIndex!68 lt!300647 lt!300656 mask!3053)))))

(assert (=> b!647747 (= lt!300648 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300655 vacantSpotIndex!68 (select (arr!18443 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!647747 (= lt!300647 (select (store (arr!18443 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300658 () Unit!22012)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38479 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22012)

(assert (=> b!647747 (= lt!300658 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300655 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!647747 (= lt!300655 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!647748 () Bool)

(declare-fun res!419790 () Bool)

(assert (=> b!647748 (=> res!419790 e!371449)))

(assert (=> b!647748 (= res!419790 (contains!3160 Nil!12534 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647749 () Bool)

(declare-fun res!419789 () Bool)

(assert (=> b!647749 (=> (not res!419789) (not e!371443))))

(assert (=> b!647749 (= res!419789 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18443 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647750 () Bool)

(declare-fun res!419778 () Bool)

(assert (=> b!647750 (=> res!419778 e!371449)))

(declare-fun noDuplicate!420 (List!12537) Bool)

(assert (=> b!647750 (= res!419778 (not (noDuplicate!420 Nil!12534)))))

(assert (= (and start!58768 res!419784) b!647739))

(assert (= (and b!647739 res!419780) b!647731))

(assert (= (and b!647731 res!419791) b!647725))

(assert (= (and b!647725 res!419782) b!647737))

(assert (= (and b!647737 res!419786) b!647728))

(assert (= (and b!647728 res!419771) b!647726))

(assert (= (and b!647726 res!419781) b!647733))

(assert (= (and b!647733 res!419772) b!647749))

(assert (= (and b!647749 res!419789) b!647729))

(assert (= (and b!647729 res!419788) b!647724))

(assert (= (and b!647724 res!419785) b!647747))

(assert (= (and b!647747 res!419779) b!647742))

(assert (= (and b!647747 c!74345) b!647743))

(assert (= (and b!647747 (not c!74345)) b!647735))

(assert (= (and b!647747 (not res!419787)) b!647730))

(assert (= (and b!647730 res!419770) b!647736))

(assert (= (and b!647736 (not res!419792)) b!647745))

(assert (= (and b!647745 res!419775) b!647741))

(assert (= (and b!647730 (not res!419776)) b!647740))

(assert (= (and b!647740 c!74344) b!647734))

(assert (= (and b!647740 (not c!74344)) b!647746))

(assert (= (and b!647740 (not res!419774)) b!647738))

(assert (= (and b!647738 res!419783) b!647727))

(assert (= (and b!647738 (not res!419773)) b!647750))

(assert (= (and b!647750 (not res!419778)) b!647748))

(assert (= (and b!647748 (not res!419790)) b!647732))

(assert (= (and b!647732 (not res!419777)) b!647744))

(declare-fun m!621171 () Bool)

(assert (=> b!647734 m!621171))

(declare-fun m!621173 () Bool)

(assert (=> b!647734 m!621173))

(assert (=> b!647734 m!621171))

(declare-fun m!621175 () Bool)

(assert (=> b!647734 m!621175))

(declare-fun m!621177 () Bool)

(assert (=> b!647734 m!621177))

(assert (=> b!647734 m!621171))

(declare-fun m!621179 () Bool)

(assert (=> b!647734 m!621179))

(assert (=> b!647734 m!621171))

(declare-fun m!621181 () Bool)

(assert (=> b!647734 m!621181))

(declare-fun m!621183 () Bool)

(assert (=> b!647734 m!621183))

(declare-fun m!621185 () Bool)

(assert (=> b!647734 m!621185))

(declare-fun m!621187 () Bool)

(assert (=> b!647749 m!621187))

(declare-fun m!621189 () Bool)

(assert (=> b!647747 m!621189))

(declare-fun m!621191 () Bool)

(assert (=> b!647747 m!621191))

(assert (=> b!647747 m!621171))

(assert (=> b!647747 m!621171))

(declare-fun m!621193 () Bool)

(assert (=> b!647747 m!621193))

(declare-fun m!621195 () Bool)

(assert (=> b!647747 m!621195))

(declare-fun m!621197 () Bool)

(assert (=> b!647747 m!621197))

(declare-fun m!621199 () Bool)

(assert (=> b!647747 m!621199))

(declare-fun m!621201 () Bool)

(assert (=> b!647747 m!621201))

(assert (=> b!647745 m!621171))

(assert (=> b!647745 m!621171))

(declare-fun m!621203 () Bool)

(assert (=> b!647745 m!621203))

(declare-fun m!621205 () Bool)

(assert (=> b!647732 m!621205))

(declare-fun m!621207 () Bool)

(assert (=> b!647737 m!621207))

(assert (=> b!647731 m!621171))

(assert (=> b!647731 m!621171))

(declare-fun m!621209 () Bool)

(assert (=> b!647731 m!621209))

(declare-fun m!621211 () Bool)

(assert (=> b!647728 m!621211))

(declare-fun m!621213 () Bool)

(assert (=> b!647726 m!621213))

(declare-fun m!621215 () Bool)

(assert (=> b!647744 m!621215))

(declare-fun m!621217 () Bool)

(assert (=> b!647725 m!621217))

(assert (=> b!647730 m!621171))

(assert (=> b!647730 m!621195))

(declare-fun m!621219 () Bool)

(assert (=> b!647730 m!621219))

(assert (=> b!647727 m!621171))

(assert (=> b!647727 m!621171))

(declare-fun m!621221 () Bool)

(assert (=> b!647727 m!621221))

(assert (=> b!647741 m!621171))

(assert (=> b!647741 m!621171))

(assert (=> b!647741 m!621221))

(declare-fun m!621223 () Bool)

(assert (=> b!647748 m!621223))

(declare-fun m!621225 () Bool)

(assert (=> start!58768 m!621225))

(declare-fun m!621227 () Bool)

(assert (=> start!58768 m!621227))

(declare-fun m!621229 () Bool)

(assert (=> b!647733 m!621229))

(declare-fun m!621231 () Bool)

(assert (=> b!647724 m!621231))

(assert (=> b!647724 m!621171))

(assert (=> b!647724 m!621171))

(declare-fun m!621233 () Bool)

(assert (=> b!647724 m!621233))

(assert (=> b!647729 m!621195))

(declare-fun m!621235 () Bool)

(assert (=> b!647729 m!621235))

(assert (=> b!647736 m!621171))

(assert (=> b!647738 m!621171))

(assert (=> b!647738 m!621171))

(declare-fun m!621237 () Bool)

(assert (=> b!647738 m!621237))

(assert (=> b!647738 m!621171))

(declare-fun m!621239 () Bool)

(assert (=> b!647738 m!621239))

(assert (=> b!647738 m!621171))

(assert (=> b!647738 m!621203))

(declare-fun m!621241 () Bool)

(assert (=> b!647750 m!621241))

(push 1)

(assert (not b!647724))

(assert (not b!647741))

(assert (not b!647727))

(assert (not b!647747))

(assert (not b!647728))

(assert (not b!647726))

(assert (not b!647737))

(assert (not b!647732))

(assert (not start!58768))

(assert (not b!647731))

(assert (not b!647748))

(assert (not b!647744))

(assert (not b!647750))

(assert (not b!647734))

(assert (not b!647725))

(assert (not b!647738))

(assert (not b!647745))

(assert (not b!647733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91595 () Bool)

(declare-fun res!419806 () Bool)

(declare-fun e!371487 () Bool)

(assert (=> d!91595 (=> res!419806 e!371487)))

(assert (=> d!91595 (= res!419806 (is-Nil!12534 Nil!12534))))

(assert (=> d!91595 (= (noDuplicate!420 Nil!12534) e!371487)))

(declare-fun b!647794 () Bool)

(declare-fun e!371488 () Bool)

(assert (=> b!647794 (= e!371487 e!371488)))

(declare-fun res!419807 () Bool)

(assert (=> b!647794 (=> (not res!419807) (not e!371488))))

(assert (=> b!647794 (= res!419807 (not (contains!3160 (t!18773 Nil!12534) (h!13578 Nil!12534))))))

(declare-fun b!647795 () Bool)

(assert (=> b!647795 (= e!371488 (noDuplicate!420 (t!18773 Nil!12534)))))

(assert (= (and d!91595 (not res!419806)) b!647794))

(assert (= (and b!647794 res!419807) b!647795))

(declare-fun m!621277 () Bool)

(assert (=> b!647794 m!621277))

(declare-fun m!621279 () Bool)

(assert (=> b!647795 m!621279))

(assert (=> b!647750 d!91595))

(declare-fun d!91599 () Bool)

(declare-fun res!419812 () Bool)

(declare-fun e!371493 () Bool)

(assert (=> d!91599 (=> res!419812 e!371493)))

(assert (=> d!91599 (= res!419812 (= (select (arr!18443 lt!300656) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18443 a!2986) j!136)))))

(assert (=> d!91599 (= (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!371493)))

(declare-fun b!647800 () Bool)

(declare-fun e!371494 () Bool)

(assert (=> b!647800 (= e!371493 e!371494)))

(declare-fun res!419813 () Bool)

(assert (=> b!647800 (=> (not res!419813) (not e!371494))))

(assert (=> b!647800 (= res!419813 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18807 lt!300656)))))

(declare-fun b!647801 () Bool)

(assert (=> b!647801 (= e!371494 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91599 (not res!419812)) b!647800))

(assert (= (and b!647800 res!419813) b!647801))

(declare-fun m!621281 () Bool)

(assert (=> d!91599 m!621281))

(assert (=> b!647801 m!621171))

(declare-fun m!621283 () Bool)

(assert (=> b!647801 m!621283))

(assert (=> b!647738 d!91599))

(declare-fun d!91601 () Bool)

(assert (=> d!91601 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300679 () Unit!22012)

(declare-fun choose!114 (array!38479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22012)

(assert (=> d!91601 (= lt!300679 (choose!114 lt!300656 (select (arr!18443 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91601 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91601 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!300679)))

(declare-fun bs!19350 () Bool)

(assert (= bs!19350 d!91601))

(assert (=> bs!19350 m!621171))

(assert (=> bs!19350 m!621237))

(assert (=> bs!19350 m!621171))

(declare-fun m!621285 () Bool)

(assert (=> bs!19350 m!621285))

(assert (=> b!647738 d!91601))

(declare-fun d!91603 () Bool)

(declare-fun res!419820 () Bool)

(declare-fun e!371501 () Bool)

(assert (=> d!91603 (=> res!419820 e!371501)))

(assert (=> d!91603 (= res!419820 (= (select (arr!18443 lt!300656) j!136) (select (arr!18443 a!2986) j!136)))))

(assert (=> d!91603 (= (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136) e!371501)))

(declare-fun b!647808 () Bool)

(declare-fun e!371502 () Bool)

(assert (=> b!647808 (= e!371501 e!371502)))

(declare-fun res!419821 () Bool)

(assert (=> b!647808 (=> (not res!419821) (not e!371502))))

(assert (=> b!647808 (= res!419821 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18807 lt!300656)))))

(declare-fun b!647809 () Bool)

(assert (=> b!647809 (= e!371502 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91603 (not res!419820)) b!647808))

(assert (= (and b!647808 res!419821) b!647809))

(declare-fun m!621289 () Bool)

(assert (=> d!91603 m!621289))

(assert (=> b!647809 m!621171))

(declare-fun m!621291 () Bool)

(assert (=> b!647809 m!621291))

(assert (=> b!647738 d!91603))

(declare-fun d!91605 () Bool)

(declare-fun lt!300702 () SeekEntryResult!6890)

(assert (=> d!91605 (and (or (is-Undefined!6890 lt!300702) (not (is-Found!6890 lt!300702)) (and (bvsge (index!29904 lt!300702) #b00000000000000000000000000000000) (bvslt (index!29904 lt!300702) (size!18807 a!2986)))) (or (is-Undefined!6890 lt!300702) (is-Found!6890 lt!300702) (not (is-MissingZero!6890 lt!300702)) (and (bvsge (index!29903 lt!300702) #b00000000000000000000000000000000) (bvslt (index!29903 lt!300702) (size!18807 a!2986)))) (or (is-Undefined!6890 lt!300702) (is-Found!6890 lt!300702) (is-MissingZero!6890 lt!300702) (not (is-MissingVacant!6890 lt!300702)) (and (bvsge (index!29906 lt!300702) #b00000000000000000000000000000000) (bvslt (index!29906 lt!300702) (size!18807 a!2986)))) (or (is-Undefined!6890 lt!300702) (ite (is-Found!6890 lt!300702) (= (select (arr!18443 a!2986) (index!29904 lt!300702)) k!1786) (ite (is-MissingZero!6890 lt!300702) (= (select (arr!18443 a!2986) (index!29903 lt!300702)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6890 lt!300702) (= (select (arr!18443 a!2986) (index!29906 lt!300702)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!371550 () SeekEntryResult!6890)

(assert (=> d!91605 (= lt!300702 e!371550)))

(declare-fun c!74383 () Bool)

(declare-fun lt!300701 () SeekEntryResult!6890)

(assert (=> d!91605 (= c!74383 (and (is-Intermediate!6890 lt!300701) (undefined!7702 lt!300701)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38479 (_ BitVec 32)) SeekEntryResult!6890)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91605 (= lt!300701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91605 (validMask!0 mask!3053)))

(assert (=> d!91605 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!300702)))

(declare-fun b!647877 () Bool)

(declare-fun e!371548 () SeekEntryResult!6890)

(assert (=> b!647877 (= e!371548 (MissingZero!6890 (index!29905 lt!300701)))))

(declare-fun b!647878 () Bool)

(declare-fun e!371549 () SeekEntryResult!6890)

(assert (=> b!647878 (= e!371550 e!371549)))

(declare-fun lt!300703 () (_ BitVec 64))

(assert (=> b!647878 (= lt!300703 (select (arr!18443 a!2986) (index!29905 lt!300701)))))

(declare-fun c!74385 () Bool)

(assert (=> b!647878 (= c!74385 (= lt!300703 k!1786))))

(declare-fun b!647879 () Bool)

(assert (=> b!647879 (= e!371549 (Found!6890 (index!29905 lt!300701)))))

(declare-fun b!647880 () Bool)

(assert (=> b!647880 (= e!371548 (seekKeyOrZeroReturnVacant!0 (x!58711 lt!300701) (index!29905 lt!300701) (index!29905 lt!300701) k!1786 a!2986 mask!3053))))

(declare-fun b!647881 () Bool)

(assert (=> b!647881 (= e!371550 Undefined!6890)))

(declare-fun b!647882 () Bool)

(declare-fun c!74384 () Bool)

(assert (=> b!647882 (= c!74384 (= lt!300703 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647882 (= e!371549 e!371548)))

(assert (= (and d!91605 c!74383) b!647881))

(assert (= (and d!91605 (not c!74383)) b!647878))

(assert (= (and b!647878 c!74385) b!647879))

(assert (= (and b!647878 (not c!74385)) b!647882))

(assert (= (and b!647882 c!74384) b!647877))

(assert (= (and b!647882 (not c!74384)) b!647880))

(declare-fun m!621339 () Bool)

(assert (=> d!91605 m!621339))

(assert (=> d!91605 m!621225))

(declare-fun m!621341 () Bool)

(assert (=> d!91605 m!621341))

(declare-fun m!621343 () Bool)

(assert (=> d!91605 m!621343))

(declare-fun m!621345 () Bool)

(assert (=> d!91605 m!621345))

(declare-fun m!621347 () Bool)

(assert (=> d!91605 m!621347))

(assert (=> d!91605 m!621343))

(declare-fun m!621349 () Bool)

(assert (=> b!647878 m!621349))

(declare-fun m!621351 () Bool)

(assert (=> b!647880 m!621351))

(assert (=> b!647728 d!91605))

(declare-fun d!91625 () Bool)

(declare-fun lt!300713 () Bool)

(declare-fun content!252 (List!12537) (Set (_ BitVec 64)))

(assert (=> d!91625 (= lt!300713 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!252 Nil!12534)))))

(declare-fun e!371564 () Bool)

(assert (=> d!91625 (= lt!300713 e!371564)))

(declare-fun res!419852 () Bool)

(assert (=> d!91625 (=> (not res!419852) (not e!371564))))

(assert (=> d!91625 (= res!419852 (is-Cons!12533 Nil!12534))))

(assert (=> d!91625 (= (contains!3160 Nil!12534 #b1000000000000000000000000000000000000000000000000000000000000000) lt!300713)))

(declare-fun b!647902 () Bool)

(declare-fun e!371565 () Bool)

(assert (=> b!647902 (= e!371564 e!371565)))

(declare-fun res!419853 () Bool)

(assert (=> b!647902 (=> res!419853 e!371565)))

(assert (=> b!647902 (= res!419853 (= (h!13578 Nil!12534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647903 () Bool)

(assert (=> b!647903 (= e!371565 (contains!3160 (t!18773 Nil!12534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!91625 res!419852) b!647902))

(assert (= (and b!647902 (not res!419853)) b!647903))

(declare-fun m!621357 () Bool)

(assert (=> d!91625 m!621357))

(declare-fun m!621359 () Bool)

(assert (=> d!91625 m!621359))

(declare-fun m!621361 () Bool)

(assert (=> b!647903 m!621361))

(assert (=> b!647732 d!91625))

(declare-fun d!91629 () Bool)

(declare-fun res!419856 () Bool)

(declare-fun e!371568 () Bool)

(assert (=> d!91629 (=> res!419856 e!371568)))

(assert (=> d!91629 (= res!419856 (= (select (arr!18443 lt!300656) index!984) (select (arr!18443 a!2986) j!136)))))

(assert (=> d!91629 (= (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) index!984) e!371568)))

(declare-fun b!647906 () Bool)

(declare-fun e!371569 () Bool)

(assert (=> b!647906 (= e!371568 e!371569)))

(declare-fun res!419857 () Bool)

(assert (=> b!647906 (=> (not res!419857) (not e!371569))))

(assert (=> b!647906 (= res!419857 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18807 lt!300656)))))

(declare-fun b!647907 () Bool)

(assert (=> b!647907 (= e!371569 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91629 (not res!419856)) b!647906))

(assert (= (and b!647906 res!419857) b!647907))

(declare-fun m!621367 () Bool)

(assert (=> d!91629 m!621367))

(assert (=> b!647907 m!621171))

(declare-fun m!621369 () Bool)

(assert (=> b!647907 m!621369))

(assert (=> b!647741 d!91629))

(declare-fun d!91633 () Bool)

(assert (=> d!91633 (= (validKeyInArray!0 (select (arr!18443 a!2986) j!136)) (and (not (= (select (arr!18443 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18443 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!647731 d!91633))

(assert (=> b!647745 d!91603))

(declare-fun b!647936 () Bool)

(declare-fun e!371592 () Bool)

(declare-fun call!33711 () Bool)

(assert (=> b!647936 (= e!371592 call!33711)))

(declare-fun b!647937 () Bool)

(declare-fun e!371590 () Bool)

(assert (=> b!647937 (= e!371590 (contains!3160 Nil!12534 (select (arr!18443 lt!300656) #b00000000000000000000000000000000)))))

(declare-fun b!647938 () Bool)

(assert (=> b!647938 (= e!371592 call!33711)))

(declare-fun bm!33708 () Bool)

(declare-fun c!74400 () Bool)

(assert (=> bm!33708 (= call!33711 (arrayNoDuplicates!0 lt!300656 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74400 (Cons!12533 (select (arr!18443 lt!300656) #b00000000000000000000000000000000) Nil!12534) Nil!12534)))))

(declare-fun b!647939 () Bool)

(declare-fun e!371593 () Bool)

(declare-fun e!371591 () Bool)

(assert (=> b!647939 (= e!371593 e!371591)))

(declare-fun res!419870 () Bool)

(assert (=> b!647939 (=> (not res!419870) (not e!371591))))

(assert (=> b!647939 (= res!419870 (not e!371590))))

(declare-fun res!419872 () Bool)

(assert (=> b!647939 (=> (not res!419872) (not e!371590))))

(assert (=> b!647939 (= res!419872 (validKeyInArray!0 (select (arr!18443 lt!300656) #b00000000000000000000000000000000)))))

(declare-fun b!647940 () Bool)

(assert (=> b!647940 (= e!371591 e!371592)))

(assert (=> b!647940 (= c!74400 (validKeyInArray!0 (select (arr!18443 lt!300656) #b00000000000000000000000000000000)))))

(declare-fun d!91635 () Bool)

(declare-fun res!419871 () Bool)

(assert (=> d!91635 (=> res!419871 e!371593)))

(assert (=> d!91635 (= res!419871 (bvsge #b00000000000000000000000000000000 (size!18807 lt!300656)))))

(assert (=> d!91635 (= (arrayNoDuplicates!0 lt!300656 #b00000000000000000000000000000000 Nil!12534) e!371593)))

(assert (= (and d!91635 (not res!419871)) b!647939))

(assert (= (and b!647939 res!419872) b!647937))

(assert (= (and b!647939 res!419870) b!647940))

(assert (= (and b!647940 c!74400) b!647936))

(assert (= (and b!647940 (not c!74400)) b!647938))

(assert (= (or b!647936 b!647938) bm!33708))

(declare-fun m!621391 () Bool)

(assert (=> b!647937 m!621391))

(assert (=> b!647937 m!621391))

(declare-fun m!621393 () Bool)

(assert (=> b!647937 m!621393))

(assert (=> bm!33708 m!621391))

(declare-fun m!621395 () Bool)

(assert (=> bm!33708 m!621395))

(assert (=> b!647939 m!621391))

(assert (=> b!647939 m!621391))

(declare-fun m!621397 () Bool)

(assert (=> b!647939 m!621397))

(assert (=> b!647940 m!621391))

(assert (=> b!647940 m!621391))

(assert (=> b!647940 m!621397))

(assert (=> b!647734 d!91635))

(declare-fun b!647947 () Bool)

(declare-fun e!371599 () Bool)

(declare-fun call!33712 () Bool)

(assert (=> b!647947 (= e!371599 call!33712)))

(declare-fun b!647948 () Bool)

(declare-fun e!371597 () Bool)

(assert (=> b!647948 (= e!371597 (contains!3160 Nil!12534 (select (arr!18443 lt!300656) j!136)))))

(declare-fun b!647949 () Bool)

(assert (=> b!647949 (= e!371599 call!33712)))

(declare-fun c!74404 () Bool)

(declare-fun bm!33709 () Bool)

(assert (=> bm!33709 (= call!33712 (arrayNoDuplicates!0 lt!300656 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74404 (Cons!12533 (select (arr!18443 lt!300656) j!136) Nil!12534) Nil!12534)))))

(declare-fun b!647950 () Bool)

(declare-fun e!371600 () Bool)

(declare-fun e!371598 () Bool)

(assert (=> b!647950 (= e!371600 e!371598)))

(declare-fun res!419873 () Bool)

(assert (=> b!647950 (=> (not res!419873) (not e!371598))))

(assert (=> b!647950 (= res!419873 (not e!371597))))

(declare-fun res!419875 () Bool)

(assert (=> b!647950 (=> (not res!419875) (not e!371597))))

(assert (=> b!647950 (= res!419875 (validKeyInArray!0 (select (arr!18443 lt!300656) j!136)))))

(declare-fun b!647951 () Bool)

(assert (=> b!647951 (= e!371598 e!371599)))

(assert (=> b!647951 (= c!74404 (validKeyInArray!0 (select (arr!18443 lt!300656) j!136)))))

(declare-fun d!91649 () Bool)

(declare-fun res!419874 () Bool)

(assert (=> d!91649 (=> res!419874 e!371600)))

(assert (=> d!91649 (= res!419874 (bvsge j!136 (size!18807 lt!300656)))))

(assert (=> d!91649 (= (arrayNoDuplicates!0 lt!300656 j!136 Nil!12534) e!371600)))

(assert (= (and d!91649 (not res!419874)) b!647950))

(assert (= (and b!647950 res!419875) b!647948))

(assert (= (and b!647950 res!419873) b!647951))

(assert (= (and b!647951 c!74404) b!647947))

(assert (= (and b!647951 (not c!74404)) b!647949))

(assert (= (or b!647947 b!647949) bm!33709))

(assert (=> b!647948 m!621289))

(assert (=> b!647948 m!621289))

(declare-fun m!621409 () Bool)

(assert (=> b!647948 m!621409))

(assert (=> bm!33709 m!621289))

(declare-fun m!621411 () Bool)

(assert (=> bm!33709 m!621411))

(assert (=> b!647950 m!621289))

(assert (=> b!647950 m!621289))

(declare-fun m!621413 () Bool)

(assert (=> b!647950 m!621413))

(assert (=> b!647951 m!621289))

(assert (=> b!647951 m!621289))

(assert (=> b!647951 m!621413))

(assert (=> b!647734 d!91649))

(declare-fun d!91653 () Bool)

(assert (=> d!91653 (arrayNoDuplicates!0 lt!300656 j!136 Nil!12534)))

(declare-fun lt!300734 () Unit!22012)

(declare-fun choose!39 (array!38479 (_ BitVec 32) (_ BitVec 32)) Unit!22012)

(assert (=> d!91653 (= lt!300734 (choose!39 lt!300656 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91653 (bvslt (size!18807 lt!300656) #b01111111111111111111111111111111)))

(assert (=> d!91653 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300656 #b00000000000000000000000000000000 j!136) lt!300734)))

(declare-fun bs!19355 () Bool)

(assert (= bs!19355 d!91653))

(assert (=> bs!19355 m!621183))

(declare-fun m!621437 () Bool)

(assert (=> bs!19355 m!621437))

(assert (=> b!647734 d!91653))

(declare-fun d!91663 () Bool)

(assert (=> d!91663 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300736 () Unit!22012)

(assert (=> d!91663 (= lt!300736 (choose!114 lt!300656 (select (arr!18443 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91663 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91663 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300656 (select (arr!18443 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300736)))

(declare-fun bs!19357 () Bool)

(assert (= bs!19357 d!91663))

(assert (=> bs!19357 m!621171))

(assert (=> bs!19357 m!621179))

(assert (=> bs!19357 m!621171))

(declare-fun m!621441 () Bool)

(assert (=> bs!19357 m!621441))

(assert (=> b!647734 d!91663))

(declare-fun d!91667 () Bool)

(declare-fun e!371616 () Bool)

(assert (=> d!91667 e!371616))

(declare-fun res!419888 () Bool)

(assert (=> d!91667 (=> (not res!419888) (not e!371616))))

(assert (=> d!91667 (= res!419888 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18807 a!2986))))))

(declare-fun lt!300739 () Unit!22012)

(declare-fun choose!41 (array!38479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12537) Unit!22012)

(assert (=> d!91667 (= lt!300739 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12534))))

(assert (=> d!91667 (bvslt (size!18807 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91667 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12534) lt!300739)))

(declare-fun b!647970 () Bool)

(assert (=> b!647970 (= e!371616 (arrayNoDuplicates!0 (array!38480 (store (arr!18443 a!2986) i!1108 k!1786) (size!18807 a!2986)) #b00000000000000000000000000000000 Nil!12534))))

(assert (= (and d!91667 res!419888) b!647970))

(declare-fun m!621443 () Bool)

(assert (=> d!91667 m!621443))

(assert (=> b!647970 m!621195))

(declare-fun m!621445 () Bool)

(assert (=> b!647970 m!621445))

(assert (=> b!647734 d!91667))

(declare-fun d!91669 () Bool)

(declare-fun res!419889 () Bool)

(declare-fun e!371617 () Bool)

(assert (=> d!91669 (=> res!419889 e!371617)))

(assert (=> d!91669 (= res!419889 (= (select (arr!18443 lt!300656) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18443 a!2986) j!136)))))

(assert (=> d!91669 (= (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!371617)))

(declare-fun b!647971 () Bool)

(declare-fun e!371618 () Bool)

(assert (=> b!647971 (= e!371617 e!371618)))

(declare-fun res!419890 () Bool)

(assert (=> b!647971 (=> (not res!419890) (not e!371618))))

(assert (=> b!647971 (= res!419890 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18807 lt!300656)))))

(declare-fun b!647972 () Bool)

(assert (=> b!647972 (= e!371618 (arrayContainsKey!0 lt!300656 (select (arr!18443 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91669 (not res!419889)) b!647971))

(assert (= (and b!647971 res!419890) b!647972))

(declare-fun m!621447 () Bool)

(assert (=> d!91669 m!621447))

(assert (=> b!647972 m!621171))

(declare-fun m!621449 () Bool)

(assert (=> b!647972 m!621449))

(assert (=> b!647734 d!91669))

(declare-fun d!91671 () Bool)

(assert (=> d!91671 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18807 lt!300656)) (not (= (select (arr!18443 lt!300656) j!136) (select (arr!18443 a!2986) j!136))))))

(declare-fun lt!300751 () Unit!22012)

(declare-fun choose!21 (array!38479 (_ BitVec 64) (_ BitVec 32) List!12537) Unit!22012)

(assert (=> d!91671 (= lt!300751 (choose!21 lt!300656 (select (arr!18443 a!2986) j!136) j!136 Nil!12534))))

(assert (=> d!91671 (bvslt (size!18807 lt!300656) #b01111111111111111111111111111111)))

(assert (=> d!91671 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300656 (select (arr!18443 a!2986) j!136) j!136 Nil!12534) lt!300751)))

(declare-fun bs!19358 () Bool)

(assert (= bs!19358 d!91671))

(assert (=> bs!19358 m!621289))

(assert (=> bs!19358 m!621171))

(declare-fun m!621451 () Bool)

(assert (=> bs!19358 m!621451))

(assert (=> b!647734 d!91671))

(declare-fun b!648019 () Bool)

(declare-fun c!74421 () Bool)

(declare-fun lt!300766 () (_ BitVec 64))

(assert (=> b!648019 (= c!74421 (= lt!300766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371655 () SeekEntryResult!6890)

(declare-fun e!371653 () SeekEntryResult!6890)

(assert (=> b!648019 (= e!371655 e!371653)))

(declare-fun b!648020 () Bool)

(assert (=> b!648020 (= e!371653 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18443 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!300767 () SeekEntryResult!6890)

