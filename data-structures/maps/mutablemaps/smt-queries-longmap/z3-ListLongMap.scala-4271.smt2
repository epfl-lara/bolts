; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59384 () Bool)

(assert start!59384)

(declare-datatypes ((SeekEntryResult!6973 0))(
  ( (MissingZero!6973 (index!30250 (_ BitVec 32))) (Found!6973 (index!30251 (_ BitVec 32))) (Intermediate!6973 (undefined!7785 Bool) (index!30252 (_ BitVec 32)) (x!59063 (_ BitVec 32))) (Undefined!6973) (MissingVacant!6973 (index!30253 (_ BitVec 32))) )
))
(declare-fun lt!305951 () SeekEntryResult!6973)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38660 0))(
  ( (array!38661 (arr!18526 (Array (_ BitVec 32) (_ BitVec 64))) (size!18890 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38660)

(declare-fun b!655602 () Bool)

(declare-fun e!376516 () Bool)

(assert (=> b!655602 (= e!376516 (not (or (not (= lt!305951 (MissingVacant!6973 vacantSpotIndex!68))) (bvslt index!984 (size!18890 a!2986)))))))

(declare-datatypes ((Unit!22574 0))(
  ( (Unit!22575) )
))
(declare-fun lt!305957 () Unit!22574)

(declare-fun e!376523 () Unit!22574)

(assert (=> b!655602 (= lt!305957 e!376523)))

(declare-fun c!75478 () Bool)

(assert (=> b!655602 (= c!75478 (= lt!305951 (Found!6973 index!984)))))

(declare-fun lt!305942 () Unit!22574)

(declare-fun e!376521 () Unit!22574)

(assert (=> b!655602 (= lt!305942 e!376521)))

(declare-fun c!75477 () Bool)

(assert (=> b!655602 (= c!75477 (= lt!305951 Undefined!6973))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!305955 () array!38660)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!305949 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38660 (_ BitVec 32)) SeekEntryResult!6973)

(assert (=> b!655602 (= lt!305951 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305949 lt!305955 mask!3053))))

(declare-fun e!376519 () Bool)

(assert (=> b!655602 e!376519))

(declare-fun res!425390 () Bool)

(assert (=> b!655602 (=> (not res!425390) (not e!376519))))

(declare-fun lt!305948 () (_ BitVec 32))

(declare-fun lt!305953 () SeekEntryResult!6973)

(assert (=> b!655602 (= res!425390 (= lt!305953 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305948 vacantSpotIndex!68 lt!305949 lt!305955 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!655602 (= lt!305953 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305948 vacantSpotIndex!68 (select (arr!18526 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!655602 (= lt!305949 (select (store (arr!18526 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!305961 () Unit!22574)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38660 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22574)

(assert (=> b!655602 (= lt!305961 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305948 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655602 (= lt!305948 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655603 () Bool)

(declare-fun res!425398 () Bool)

(declare-fun e!376518 () Bool)

(assert (=> b!655603 (=> (not res!425398) (not e!376518))))

(assert (=> b!655603 (= res!425398 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18526 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655604 () Bool)

(declare-fun res!425391 () Bool)

(declare-fun arrayContainsKey!0 (array!38660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655604 (= res!425391 (arrayContainsKey!0 lt!305955 (select (arr!18526 a!2986) j!136) j!136))))

(declare-fun e!376515 () Bool)

(assert (=> b!655604 (=> (not res!425391) (not e!376515))))

(declare-fun e!376522 () Bool)

(assert (=> b!655604 (= e!376522 e!376515)))

(declare-fun b!655605 () Bool)

(declare-fun res!425396 () Bool)

(assert (=> b!655605 (=> (not res!425396) (not e!376518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38660 (_ BitVec 32)) Bool)

(assert (=> b!655605 (= res!425396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655606 () Bool)

(declare-fun e!376517 () Bool)

(assert (=> b!655606 (= e!376517 e!376516)))

(declare-fun res!425388 () Bool)

(assert (=> b!655606 (=> (not res!425388) (not e!376516))))

(declare-fun lt!305956 () SeekEntryResult!6973)

(assert (=> b!655606 (= res!425388 (and (= lt!305956 (Found!6973 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18526 a!2986) index!984) (select (arr!18526 a!2986) j!136))) (not (= (select (arr!18526 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655606 (= lt!305956 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18526 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655607 () Bool)

(declare-fun e!376512 () Unit!22574)

(declare-fun Unit!22576 () Unit!22574)

(assert (=> b!655607 (= e!376512 Unit!22576)))

(declare-fun res!425397 () Bool)

(declare-fun e!376520 () Bool)

(assert (=> start!59384 (=> (not res!425397) (not e!376520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59384 (= res!425397 (validMask!0 mask!3053))))

(assert (=> start!59384 e!376520))

(assert (=> start!59384 true))

(declare-fun array_inv!14300 (array!38660) Bool)

(assert (=> start!59384 (array_inv!14300 a!2986)))

(declare-fun b!655608 () Bool)

(assert (=> b!655608 false))

(declare-fun lt!305947 () Unit!22574)

(declare-datatypes ((List!12620 0))(
  ( (Nil!12617) (Cons!12616 (h!13661 (_ BitVec 64)) (t!18856 List!12620)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38660 (_ BitVec 64) (_ BitVec 32) List!12620) Unit!22574)

(assert (=> b!655608 (= lt!305947 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305955 (select (arr!18526 a!2986) j!136) index!984 Nil!12617))))

(declare-fun arrayNoDuplicates!0 (array!38660 (_ BitVec 32) List!12620) Bool)

(assert (=> b!655608 (arrayNoDuplicates!0 lt!305955 index!984 Nil!12617)))

(declare-fun lt!305960 () Unit!22574)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38660 (_ BitVec 32) (_ BitVec 32)) Unit!22574)

(assert (=> b!655608 (= lt!305960 (lemmaNoDuplicateFromThenFromBigger!0 lt!305955 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655608 (arrayNoDuplicates!0 lt!305955 #b00000000000000000000000000000000 Nil!12617)))

(declare-fun lt!305945 () Unit!22574)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38660 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12620) Unit!22574)

(assert (=> b!655608 (= lt!305945 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12617))))

(assert (=> b!655608 (arrayContainsKey!0 lt!305955 (select (arr!18526 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305943 () Unit!22574)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38660 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22574)

(assert (=> b!655608 (= lt!305943 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305955 (select (arr!18526 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!376524 () Bool)

(assert (=> b!655608 e!376524))

(declare-fun res!425389 () Bool)

(assert (=> b!655608 (=> (not res!425389) (not e!376524))))

(assert (=> b!655608 (= res!425389 (arrayContainsKey!0 lt!305955 (select (arr!18526 a!2986) j!136) j!136))))

(declare-fun Unit!22577 () Unit!22574)

(assert (=> b!655608 (= e!376512 Unit!22577)))

(declare-fun b!655609 () Bool)

(assert (=> b!655609 false))

(declare-fun lt!305954 () Unit!22574)

(assert (=> b!655609 (= lt!305954 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305955 (select (arr!18526 a!2986) j!136) j!136 Nil!12617))))

(assert (=> b!655609 (arrayNoDuplicates!0 lt!305955 j!136 Nil!12617)))

(declare-fun lt!305959 () Unit!22574)

(assert (=> b!655609 (= lt!305959 (lemmaNoDuplicateFromThenFromBigger!0 lt!305955 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655609 (arrayNoDuplicates!0 lt!305955 #b00000000000000000000000000000000 Nil!12617)))

(declare-fun lt!305950 () Unit!22574)

(assert (=> b!655609 (= lt!305950 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12617))))

(assert (=> b!655609 (arrayContainsKey!0 lt!305955 (select (arr!18526 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305958 () Unit!22574)

(assert (=> b!655609 (= lt!305958 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305955 (select (arr!18526 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!376514 () Unit!22574)

(declare-fun Unit!22578 () Unit!22574)

(assert (=> b!655609 (= e!376514 Unit!22578)))

(declare-fun b!655610 () Bool)

(declare-fun Unit!22579 () Unit!22574)

(assert (=> b!655610 (= e!376521 Unit!22579)))

(declare-fun b!655611 () Bool)

(assert (=> b!655611 (= e!376515 (arrayContainsKey!0 lt!305955 (select (arr!18526 a!2986) j!136) index!984))))

(declare-fun b!655612 () Bool)

(declare-fun res!425384 () Bool)

(assert (=> b!655612 (= res!425384 (bvsge j!136 index!984))))

(assert (=> b!655612 (=> res!425384 e!376522)))

(declare-fun e!376525 () Bool)

(assert (=> b!655612 (= e!376525 e!376522)))

(declare-fun b!655613 () Bool)

(declare-fun res!425393 () Bool)

(assert (=> b!655613 (=> (not res!425393) (not e!376520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655613 (= res!425393 (validKeyInArray!0 (select (arr!18526 a!2986) j!136)))))

(declare-fun b!655614 () Bool)

(assert (=> b!655614 (= e!376520 e!376518)))

(declare-fun res!425387 () Bool)

(assert (=> b!655614 (=> (not res!425387) (not e!376518))))

(declare-fun lt!305946 () SeekEntryResult!6973)

(assert (=> b!655614 (= res!425387 (or (= lt!305946 (MissingZero!6973 i!1108)) (= lt!305946 (MissingVacant!6973 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38660 (_ BitVec 32)) SeekEntryResult!6973)

(assert (=> b!655614 (= lt!305946 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!655615 () Bool)

(declare-fun Unit!22580 () Unit!22574)

(assert (=> b!655615 (= e!376523 Unit!22580)))

(declare-fun res!425394 () Bool)

(assert (=> b!655615 (= res!425394 (= (select (store (arr!18526 a!2986) i!1108 k0!1786) index!984) (select (arr!18526 a!2986) j!136)))))

(assert (=> b!655615 (=> (not res!425394) (not e!376525))))

(assert (=> b!655615 e!376525))

(declare-fun c!75476 () Bool)

(assert (=> b!655615 (= c!75476 (bvslt j!136 index!984))))

(declare-fun lt!305944 () Unit!22574)

(assert (=> b!655615 (= lt!305944 e!376514)))

(declare-fun c!75479 () Bool)

(assert (=> b!655615 (= c!75479 (bvslt index!984 j!136))))

(declare-fun lt!305952 () Unit!22574)

(assert (=> b!655615 (= lt!305952 e!376512)))

(assert (=> b!655615 false))

(declare-fun b!655616 () Bool)

(declare-fun res!425395 () Bool)

(assert (=> b!655616 (=> (not res!425395) (not e!376518))))

(assert (=> b!655616 (= res!425395 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12617))))

(declare-fun b!655617 () Bool)

(assert (=> b!655617 (= e!376524 (arrayContainsKey!0 lt!305955 (select (arr!18526 a!2986) j!136) index!984))))

(declare-fun b!655618 () Bool)

(declare-fun Unit!22581 () Unit!22574)

(assert (=> b!655618 (= e!376523 Unit!22581)))

(declare-fun b!655619 () Bool)

(declare-fun res!425386 () Bool)

(assert (=> b!655619 (=> (not res!425386) (not e!376520))))

(assert (=> b!655619 (= res!425386 (and (= (size!18890 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18890 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18890 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655620 () Bool)

(declare-fun Unit!22582 () Unit!22574)

(assert (=> b!655620 (= e!376514 Unit!22582)))

(declare-fun b!655621 () Bool)

(assert (=> b!655621 (= e!376519 (= lt!305956 lt!305953))))

(declare-fun b!655622 () Bool)

(declare-fun res!425399 () Bool)

(assert (=> b!655622 (=> (not res!425399) (not e!376520))))

(assert (=> b!655622 (= res!425399 (validKeyInArray!0 k0!1786))))

(declare-fun b!655623 () Bool)

(assert (=> b!655623 (= e!376518 e!376517)))

(declare-fun res!425385 () Bool)

(assert (=> b!655623 (=> (not res!425385) (not e!376517))))

(assert (=> b!655623 (= res!425385 (= (select (store (arr!18526 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655623 (= lt!305955 (array!38661 (store (arr!18526 a!2986) i!1108 k0!1786) (size!18890 a!2986)))))

(declare-fun b!655624 () Bool)

(declare-fun res!425392 () Bool)

(assert (=> b!655624 (=> (not res!425392) (not e!376520))))

(assert (=> b!655624 (= res!425392 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655625 () Bool)

(declare-fun Unit!22583 () Unit!22574)

(assert (=> b!655625 (= e!376521 Unit!22583)))

(assert (=> b!655625 false))

(assert (= (and start!59384 res!425397) b!655619))

(assert (= (and b!655619 res!425386) b!655613))

(assert (= (and b!655613 res!425393) b!655622))

(assert (= (and b!655622 res!425399) b!655624))

(assert (= (and b!655624 res!425392) b!655614))

(assert (= (and b!655614 res!425387) b!655605))

(assert (= (and b!655605 res!425396) b!655616))

(assert (= (and b!655616 res!425395) b!655603))

(assert (= (and b!655603 res!425398) b!655623))

(assert (= (and b!655623 res!425385) b!655606))

(assert (= (and b!655606 res!425388) b!655602))

(assert (= (and b!655602 res!425390) b!655621))

(assert (= (and b!655602 c!75477) b!655625))

(assert (= (and b!655602 (not c!75477)) b!655610))

(assert (= (and b!655602 c!75478) b!655615))

(assert (= (and b!655602 (not c!75478)) b!655618))

(assert (= (and b!655615 res!425394) b!655612))

(assert (= (and b!655612 (not res!425384)) b!655604))

(assert (= (and b!655604 res!425391) b!655611))

(assert (= (and b!655615 c!75476) b!655609))

(assert (= (and b!655615 (not c!75476)) b!655620))

(assert (= (and b!655615 c!75479) b!655608))

(assert (= (and b!655615 (not c!75479)) b!655607))

(assert (= (and b!655608 res!425389) b!655617))

(declare-fun m!628741 () Bool)

(assert (=> b!655615 m!628741))

(declare-fun m!628743 () Bool)

(assert (=> b!655615 m!628743))

(declare-fun m!628745 () Bool)

(assert (=> b!655615 m!628745))

(declare-fun m!628747 () Bool)

(assert (=> b!655622 m!628747))

(assert (=> b!655617 m!628745))

(assert (=> b!655617 m!628745))

(declare-fun m!628749 () Bool)

(assert (=> b!655617 m!628749))

(declare-fun m!628751 () Bool)

(assert (=> b!655616 m!628751))

(assert (=> b!655611 m!628745))

(assert (=> b!655611 m!628745))

(assert (=> b!655611 m!628749))

(declare-fun m!628753 () Bool)

(assert (=> b!655606 m!628753))

(assert (=> b!655606 m!628745))

(assert (=> b!655606 m!628745))

(declare-fun m!628755 () Bool)

(assert (=> b!655606 m!628755))

(declare-fun m!628757 () Bool)

(assert (=> b!655608 m!628757))

(assert (=> b!655608 m!628745))

(declare-fun m!628759 () Bool)

(assert (=> b!655608 m!628759))

(declare-fun m!628761 () Bool)

(assert (=> b!655608 m!628761))

(assert (=> b!655608 m!628745))

(assert (=> b!655608 m!628745))

(declare-fun m!628763 () Bool)

(assert (=> b!655608 m!628763))

(declare-fun m!628765 () Bool)

(assert (=> b!655608 m!628765))

(assert (=> b!655608 m!628745))

(declare-fun m!628767 () Bool)

(assert (=> b!655608 m!628767))

(assert (=> b!655608 m!628745))

(declare-fun m!628769 () Bool)

(assert (=> b!655608 m!628769))

(declare-fun m!628771 () Bool)

(assert (=> b!655608 m!628771))

(assert (=> b!655609 m!628745))

(declare-fun m!628773 () Bool)

(assert (=> b!655609 m!628773))

(declare-fun m!628775 () Bool)

(assert (=> b!655609 m!628775))

(assert (=> b!655609 m!628761))

(assert (=> b!655609 m!628745))

(assert (=> b!655609 m!628745))

(declare-fun m!628777 () Bool)

(assert (=> b!655609 m!628777))

(assert (=> b!655609 m!628745))

(declare-fun m!628779 () Bool)

(assert (=> b!655609 m!628779))

(declare-fun m!628781 () Bool)

(assert (=> b!655609 m!628781))

(assert (=> b!655609 m!628771))

(declare-fun m!628783 () Bool)

(assert (=> b!655614 m!628783))

(declare-fun m!628785 () Bool)

(assert (=> b!655624 m!628785))

(declare-fun m!628787 () Bool)

(assert (=> b!655603 m!628787))

(declare-fun m!628789 () Bool)

(assert (=> b!655605 m!628789))

(assert (=> b!655613 m!628745))

(assert (=> b!655613 m!628745))

(declare-fun m!628791 () Bool)

(assert (=> b!655613 m!628791))

(declare-fun m!628793 () Bool)

(assert (=> b!655602 m!628793))

(assert (=> b!655602 m!628745))

(assert (=> b!655602 m!628741))

(assert (=> b!655602 m!628745))

(declare-fun m!628795 () Bool)

(assert (=> b!655602 m!628795))

(declare-fun m!628797 () Bool)

(assert (=> b!655602 m!628797))

(declare-fun m!628799 () Bool)

(assert (=> b!655602 m!628799))

(declare-fun m!628801 () Bool)

(assert (=> b!655602 m!628801))

(declare-fun m!628803 () Bool)

(assert (=> b!655602 m!628803))

(assert (=> b!655623 m!628741))

(declare-fun m!628805 () Bool)

(assert (=> b!655623 m!628805))

(assert (=> b!655604 m!628745))

(assert (=> b!655604 m!628745))

(assert (=> b!655604 m!628767))

(declare-fun m!628807 () Bool)

(assert (=> start!59384 m!628807))

(declare-fun m!628809 () Bool)

(assert (=> start!59384 m!628809))

(check-sat (not b!655609) (not b!655616) (not b!655614) (not b!655624) (not b!655617) (not start!59384) (not b!655622) (not b!655613) (not b!655606) (not b!655608) (not b!655605) (not b!655604) (not b!655602) (not b!655611))
(check-sat)
