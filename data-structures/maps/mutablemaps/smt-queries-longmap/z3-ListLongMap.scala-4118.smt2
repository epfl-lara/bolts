; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56216 () Bool)

(assert start!56216)

(declare-fun b!622767 () Bool)

(assert (=> b!622767 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37649 0))(
  ( (array!37650 (arr!18067 (Array (_ BitVec 32) (_ BitVec 64))) (size!18431 (_ BitVec 32))) )
))
(declare-fun lt!288809 () array!37649)

(declare-fun a!2986 () array!37649)

(declare-datatypes ((Unit!20960 0))(
  ( (Unit!20961) )
))
(declare-fun lt!288798 () Unit!20960)

(declare-datatypes ((List!12161 0))(
  ( (Nil!12158) (Cons!12157 (h!13202 (_ BitVec 64)) (t!18397 List!12161)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37649 (_ BitVec 64) (_ BitVec 32) List!12161) Unit!20960)

(assert (=> b!622767 (= lt!288798 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288809 (select (arr!18067 a!2986) j!136) j!136 Nil!12158))))

(declare-fun arrayNoDuplicates!0 (array!37649 (_ BitVec 32) List!12161) Bool)

(assert (=> b!622767 (arrayNoDuplicates!0 lt!288809 j!136 Nil!12158)))

(declare-fun lt!288816 () Unit!20960)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37649 (_ BitVec 32) (_ BitVec 32)) Unit!20960)

(assert (=> b!622767 (= lt!288816 (lemmaNoDuplicateFromThenFromBigger!0 lt!288809 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622767 (arrayNoDuplicates!0 lt!288809 #b00000000000000000000000000000000 Nil!12158)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!288811 () Unit!20960)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37649 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12161) Unit!20960)

(assert (=> b!622767 (= lt!288811 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12158))))

(declare-fun arrayContainsKey!0 (array!37649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622767 (arrayContainsKey!0 lt!288809 (select (arr!18067 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288800 () Unit!20960)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37649 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20960)

(assert (=> b!622767 (= lt!288800 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288809 (select (arr!18067 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357210 () Unit!20960)

(declare-fun Unit!20962 () Unit!20960)

(assert (=> b!622767 (= e!357210 Unit!20962)))

(declare-fun b!622768 () Bool)

(declare-fun e!357217 () Unit!20960)

(declare-fun Unit!20963 () Unit!20960)

(assert (=> b!622768 (= e!357217 Unit!20963)))

(declare-fun b!622769 () Bool)

(declare-fun e!357219 () Bool)

(declare-fun e!357221 () Bool)

(assert (=> b!622769 (= e!357219 e!357221)))

(declare-fun res!401457 () Bool)

(assert (=> b!622769 (=> (not res!401457) (not e!357221))))

(declare-datatypes ((SeekEntryResult!6514 0))(
  ( (MissingZero!6514 (index!28339 (_ BitVec 32))) (Found!6514 (index!28340 (_ BitVec 32))) (Intermediate!6514 (undefined!7326 Bool) (index!28341 (_ BitVec 32)) (x!57131 (_ BitVec 32))) (Undefined!6514) (MissingVacant!6514 (index!28342 (_ BitVec 32))) )
))
(declare-fun lt!288808 () SeekEntryResult!6514)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!622769 (= res!401457 (and (= lt!288808 (Found!6514 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18067 a!2986) index!984) (select (arr!18067 a!2986) j!136))) (not (= (select (arr!18067 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37649 (_ BitVec 32)) SeekEntryResult!6514)

(assert (=> b!622769 (= lt!288808 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18067 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622770 () Bool)

(declare-fun Unit!20964 () Unit!20960)

(assert (=> b!622770 (= e!357217 Unit!20964)))

(assert (=> b!622770 false))

(declare-fun e!357218 () Bool)

(declare-fun b!622771 () Bool)

(assert (=> b!622771 (= e!357218 (arrayContainsKey!0 lt!288809 (select (arr!18067 a!2986) j!136) index!984))))

(declare-fun b!622772 () Bool)

(declare-fun e!357214 () Bool)

(declare-fun lt!288810 () SeekEntryResult!6514)

(assert (=> b!622772 (= e!357214 (= lt!288808 lt!288810))))

(declare-fun b!622773 () Bool)

(declare-fun e!357213 () Bool)

(assert (=> b!622773 (= e!357213 (arrayContainsKey!0 lt!288809 (select (arr!18067 a!2986) j!136) index!984))))

(declare-fun b!622774 () Bool)

(declare-fun Unit!20965 () Unit!20960)

(assert (=> b!622774 (= e!357210 Unit!20965)))

(declare-fun b!622775 () Bool)

(declare-fun res!401456 () Bool)

(declare-fun e!357222 () Bool)

(assert (=> b!622775 (=> (not res!401456) (not e!357222))))

(assert (=> b!622775 (= res!401456 (and (= (size!18431 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18431 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18431 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622776 () Bool)

(declare-fun e!357216 () Bool)

(assert (=> b!622776 (= e!357216 e!357219)))

(declare-fun res!401463 () Bool)

(assert (=> b!622776 (=> (not res!401463) (not e!357219))))

(assert (=> b!622776 (= res!401463 (= (select (store (arr!18067 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622776 (= lt!288809 (array!37650 (store (arr!18067 a!2986) i!1108 k0!1786) (size!18431 a!2986)))))

(declare-fun res!401467 () Bool)

(assert (=> start!56216 (=> (not res!401467) (not e!357222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56216 (= res!401467 (validMask!0 mask!3053))))

(assert (=> start!56216 e!357222))

(assert (=> start!56216 true))

(declare-fun array_inv!13841 (array!37649) Bool)

(assert (=> start!56216 (array_inv!13841 a!2986)))

(declare-fun b!622777 () Bool)

(declare-fun res!401453 () Bool)

(assert (=> b!622777 (=> (not res!401453) (not e!357222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622777 (= res!401453 (validKeyInArray!0 k0!1786))))

(declare-fun b!622778 () Bool)

(declare-fun res!401462 () Bool)

(assert (=> b!622778 (=> (not res!401462) (not e!357222))))

(assert (=> b!622778 (= res!401462 (validKeyInArray!0 (select (arr!18067 a!2986) j!136)))))

(declare-fun b!622779 () Bool)

(declare-fun res!401459 () Bool)

(assert (=> b!622779 (=> (not res!401459) (not e!357216))))

(assert (=> b!622779 (= res!401459 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12158))))

(declare-fun b!622780 () Bool)

(declare-fun e!357215 () Unit!20960)

(declare-fun Unit!20966 () Unit!20960)

(assert (=> b!622780 (= e!357215 Unit!20966)))

(declare-fun b!622781 () Bool)

(declare-fun res!401454 () Bool)

(assert (=> b!622781 (=> (not res!401454) (not e!357216))))

(assert (=> b!622781 (= res!401454 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18067 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622782 () Bool)

(declare-fun res!401466 () Bool)

(assert (=> b!622782 (=> (not res!401466) (not e!357222))))

(assert (=> b!622782 (= res!401466 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622783 () Bool)

(assert (=> b!622783 (= e!357222 e!357216)))

(declare-fun res!401464 () Bool)

(assert (=> b!622783 (=> (not res!401464) (not e!357216))))

(declare-fun lt!288807 () SeekEntryResult!6514)

(assert (=> b!622783 (= res!401464 (or (= lt!288807 (MissingZero!6514 i!1108)) (= lt!288807 (MissingVacant!6514 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37649 (_ BitVec 32)) SeekEntryResult!6514)

(assert (=> b!622783 (= lt!288807 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!622784 () Bool)

(declare-fun res!401458 () Bool)

(assert (=> b!622784 (=> (not res!401458) (not e!357216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37649 (_ BitVec 32)) Bool)

(assert (=> b!622784 (= res!401458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622785 () Bool)

(assert (=> b!622785 false))

(declare-fun lt!288801 () Unit!20960)

(assert (=> b!622785 (= lt!288801 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288809 (select (arr!18067 a!2986) j!136) index!984 Nil!12158))))

(assert (=> b!622785 (arrayNoDuplicates!0 lt!288809 index!984 Nil!12158)))

(declare-fun lt!288814 () Unit!20960)

(assert (=> b!622785 (= lt!288814 (lemmaNoDuplicateFromThenFromBigger!0 lt!288809 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622785 (arrayNoDuplicates!0 lt!288809 #b00000000000000000000000000000000 Nil!12158)))

(declare-fun lt!288805 () Unit!20960)

(assert (=> b!622785 (= lt!288805 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12158))))

(assert (=> b!622785 (arrayContainsKey!0 lt!288809 (select (arr!18067 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288797 () Unit!20960)

(assert (=> b!622785 (= lt!288797 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288809 (select (arr!18067 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622785 e!357218))

(declare-fun res!401465 () Bool)

(assert (=> b!622785 (=> (not res!401465) (not e!357218))))

(assert (=> b!622785 (= res!401465 (arrayContainsKey!0 lt!288809 (select (arr!18067 a!2986) j!136) j!136))))

(declare-fun Unit!20967 () Unit!20960)

(assert (=> b!622785 (= e!357215 Unit!20967)))

(declare-fun b!622786 () Bool)

(declare-fun res!401468 () Bool)

(assert (=> b!622786 (= res!401468 (bvsge j!136 index!984))))

(declare-fun e!357220 () Bool)

(assert (=> b!622786 (=> res!401468 e!357220)))

(declare-fun e!357211 () Bool)

(assert (=> b!622786 (= e!357211 e!357220)))

(declare-fun b!622787 () Bool)

(assert (=> b!622787 (= e!357221 (not true))))

(declare-fun lt!288806 () Unit!20960)

(declare-fun e!357223 () Unit!20960)

(assert (=> b!622787 (= lt!288806 e!357223)))

(declare-fun c!71024 () Bool)

(declare-fun lt!288813 () SeekEntryResult!6514)

(assert (=> b!622787 (= c!71024 (= lt!288813 (Found!6514 index!984)))))

(declare-fun lt!288804 () Unit!20960)

(assert (=> b!622787 (= lt!288804 e!357217)))

(declare-fun c!71027 () Bool)

(assert (=> b!622787 (= c!71027 (= lt!288813 Undefined!6514))))

(declare-fun lt!288802 () (_ BitVec 64))

(assert (=> b!622787 (= lt!288813 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288802 lt!288809 mask!3053))))

(assert (=> b!622787 e!357214))

(declare-fun res!401455 () Bool)

(assert (=> b!622787 (=> (not res!401455) (not e!357214))))

(declare-fun lt!288815 () (_ BitVec 32))

(assert (=> b!622787 (= res!401455 (= lt!288810 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288815 vacantSpotIndex!68 lt!288802 lt!288809 mask!3053)))))

(assert (=> b!622787 (= lt!288810 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288815 vacantSpotIndex!68 (select (arr!18067 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622787 (= lt!288802 (select (store (arr!18067 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!288803 () Unit!20960)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37649 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20960)

(assert (=> b!622787 (= lt!288803 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288815 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622787 (= lt!288815 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622788 () Bool)

(declare-fun Unit!20968 () Unit!20960)

(assert (=> b!622788 (= e!357223 Unit!20968)))

(declare-fun res!401461 () Bool)

(assert (=> b!622788 (= res!401461 (= (select (store (arr!18067 a!2986) i!1108 k0!1786) index!984) (select (arr!18067 a!2986) j!136)))))

(assert (=> b!622788 (=> (not res!401461) (not e!357211))))

(assert (=> b!622788 e!357211))

(declare-fun c!71025 () Bool)

(assert (=> b!622788 (= c!71025 (bvslt j!136 index!984))))

(declare-fun lt!288799 () Unit!20960)

(assert (=> b!622788 (= lt!288799 e!357210)))

(declare-fun c!71026 () Bool)

(assert (=> b!622788 (= c!71026 (bvslt index!984 j!136))))

(declare-fun lt!288812 () Unit!20960)

(assert (=> b!622788 (= lt!288812 e!357215)))

(assert (=> b!622788 false))

(declare-fun b!622789 () Bool)

(declare-fun Unit!20969 () Unit!20960)

(assert (=> b!622789 (= e!357223 Unit!20969)))

(declare-fun res!401460 () Bool)

(declare-fun b!622790 () Bool)

(assert (=> b!622790 (= res!401460 (arrayContainsKey!0 lt!288809 (select (arr!18067 a!2986) j!136) j!136))))

(assert (=> b!622790 (=> (not res!401460) (not e!357213))))

(assert (=> b!622790 (= e!357220 e!357213)))

(assert (= (and start!56216 res!401467) b!622775))

(assert (= (and b!622775 res!401456) b!622778))

(assert (= (and b!622778 res!401462) b!622777))

(assert (= (and b!622777 res!401453) b!622782))

(assert (= (and b!622782 res!401466) b!622783))

(assert (= (and b!622783 res!401464) b!622784))

(assert (= (and b!622784 res!401458) b!622779))

(assert (= (and b!622779 res!401459) b!622781))

(assert (= (and b!622781 res!401454) b!622776))

(assert (= (and b!622776 res!401463) b!622769))

(assert (= (and b!622769 res!401457) b!622787))

(assert (= (and b!622787 res!401455) b!622772))

(assert (= (and b!622787 c!71027) b!622770))

(assert (= (and b!622787 (not c!71027)) b!622768))

(assert (= (and b!622787 c!71024) b!622788))

(assert (= (and b!622787 (not c!71024)) b!622789))

(assert (= (and b!622788 res!401461) b!622786))

(assert (= (and b!622786 (not res!401468)) b!622790))

(assert (= (and b!622790 res!401460) b!622773))

(assert (= (and b!622788 c!71025) b!622767))

(assert (= (and b!622788 (not c!71025)) b!622774))

(assert (= (and b!622788 c!71026) b!622785))

(assert (= (and b!622788 (not c!71026)) b!622780))

(assert (= (and b!622785 res!401465) b!622771))

(declare-fun m!598669 () Bool)

(assert (=> b!622769 m!598669))

(declare-fun m!598671 () Bool)

(assert (=> b!622769 m!598671))

(assert (=> b!622769 m!598671))

(declare-fun m!598673 () Bool)

(assert (=> b!622769 m!598673))

(declare-fun m!598675 () Bool)

(assert (=> b!622788 m!598675))

(declare-fun m!598677 () Bool)

(assert (=> b!622788 m!598677))

(assert (=> b!622788 m!598671))

(declare-fun m!598679 () Bool)

(assert (=> b!622781 m!598679))

(assert (=> b!622778 m!598671))

(assert (=> b!622778 m!598671))

(declare-fun m!598681 () Bool)

(assert (=> b!622778 m!598681))

(declare-fun m!598683 () Bool)

(assert (=> b!622783 m!598683))

(declare-fun m!598685 () Bool)

(assert (=> b!622777 m!598685))

(declare-fun m!598687 () Bool)

(assert (=> start!56216 m!598687))

(declare-fun m!598689 () Bool)

(assert (=> start!56216 m!598689))

(assert (=> b!622785 m!598671))

(declare-fun m!598691 () Bool)

(assert (=> b!622785 m!598691))

(assert (=> b!622785 m!598671))

(declare-fun m!598693 () Bool)

(assert (=> b!622785 m!598693))

(declare-fun m!598695 () Bool)

(assert (=> b!622785 m!598695))

(assert (=> b!622785 m!598671))

(declare-fun m!598697 () Bool)

(assert (=> b!622785 m!598697))

(assert (=> b!622785 m!598671))

(declare-fun m!598699 () Bool)

(assert (=> b!622785 m!598699))

(assert (=> b!622785 m!598671))

(declare-fun m!598701 () Bool)

(assert (=> b!622785 m!598701))

(declare-fun m!598703 () Bool)

(assert (=> b!622785 m!598703))

(declare-fun m!598705 () Bool)

(assert (=> b!622785 m!598705))

(assert (=> b!622771 m!598671))

(assert (=> b!622771 m!598671))

(declare-fun m!598707 () Bool)

(assert (=> b!622771 m!598707))

(assert (=> b!622776 m!598675))

(declare-fun m!598709 () Bool)

(assert (=> b!622776 m!598709))

(assert (=> b!622767 m!598671))

(declare-fun m!598711 () Bool)

(assert (=> b!622767 m!598711))

(assert (=> b!622767 m!598671))

(declare-fun m!598713 () Bool)

(assert (=> b!622767 m!598713))

(assert (=> b!622767 m!598695))

(assert (=> b!622767 m!598671))

(declare-fun m!598715 () Bool)

(assert (=> b!622767 m!598715))

(assert (=> b!622767 m!598671))

(declare-fun m!598717 () Bool)

(assert (=> b!622767 m!598717))

(declare-fun m!598719 () Bool)

(assert (=> b!622767 m!598719))

(assert (=> b!622767 m!598705))

(declare-fun m!598721 () Bool)

(assert (=> b!622782 m!598721))

(assert (=> b!622790 m!598671))

(assert (=> b!622790 m!598671))

(assert (=> b!622790 m!598693))

(declare-fun m!598723 () Bool)

(assert (=> b!622787 m!598723))

(declare-fun m!598725 () Bool)

(assert (=> b!622787 m!598725))

(assert (=> b!622787 m!598671))

(assert (=> b!622787 m!598675))

(assert (=> b!622787 m!598671))

(declare-fun m!598727 () Bool)

(assert (=> b!622787 m!598727))

(declare-fun m!598729 () Bool)

(assert (=> b!622787 m!598729))

(declare-fun m!598731 () Bool)

(assert (=> b!622787 m!598731))

(declare-fun m!598733 () Bool)

(assert (=> b!622787 m!598733))

(assert (=> b!622773 m!598671))

(assert (=> b!622773 m!598671))

(assert (=> b!622773 m!598707))

(declare-fun m!598735 () Bool)

(assert (=> b!622779 m!598735))

(declare-fun m!598737 () Bool)

(assert (=> b!622784 m!598737))

(check-sat (not b!622769) (not b!622778) (not start!56216) (not b!622785) (not b!622767) (not b!622777) (not b!622782) (not b!622790) (not b!622779) (not b!622771) (not b!622773) (not b!622783) (not b!622787) (not b!622784))
(check-sat)
