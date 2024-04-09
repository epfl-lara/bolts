; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53982 () Bool)

(assert start!53982)

(declare-fun b!589096 () Bool)

(declare-fun res!376792 () Bool)

(declare-fun e!336337 () Bool)

(assert (=> b!589096 (=> (not res!376792) (not e!336337))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589096 (= res!376792 (validKeyInArray!0 k0!1786))))

(declare-fun b!589097 () Bool)

(declare-fun res!376793 () Bool)

(declare-fun e!336341 () Bool)

(assert (=> b!589097 (=> (not res!376793) (not e!336341))))

(declare-datatypes ((array!36780 0))(
  ( (array!36781 (arr!17659 (Array (_ BitVec 32) (_ BitVec 64))) (size!18023 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36780)

(declare-datatypes ((List!11753 0))(
  ( (Nil!11750) (Cons!11749 (h!12794 (_ BitVec 64)) (t!17989 List!11753)) )
))
(declare-fun arrayNoDuplicates!0 (array!36780 (_ BitVec 32) List!11753) Bool)

(assert (=> b!589097 (= res!376793 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11750))))

(declare-fun b!589098 () Bool)

(declare-fun e!336339 () Bool)

(assert (=> b!589098 (= e!336339 (not true))))

(declare-datatypes ((Unit!18368 0))(
  ( (Unit!18369) )
))
(declare-fun lt!267218 () Unit!18368)

(declare-fun e!336338 () Unit!18368)

(assert (=> b!589098 (= lt!267218 e!336338)))

(declare-fun c!66524 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!267220 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!267223 () array!36780)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6106 0))(
  ( (MissingZero!6106 (index!26654 (_ BitVec 32))) (Found!6106 (index!26655 (_ BitVec 32))) (Intermediate!6106 (undefined!6918 Bool) (index!26656 (_ BitVec 32)) (x!55475 (_ BitVec 32))) (Undefined!6106) (MissingVacant!6106 (index!26657 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36780 (_ BitVec 32)) SeekEntryResult!6106)

(assert (=> b!589098 (= c!66524 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267220 lt!267223 mask!3053) Undefined!6106))))

(declare-fun e!336340 () Bool)

(assert (=> b!589098 e!336340))

(declare-fun res!376790 () Bool)

(assert (=> b!589098 (=> (not res!376790) (not e!336340))))

(declare-fun lt!267221 () SeekEntryResult!6106)

(declare-fun lt!267219 () (_ BitVec 32))

(assert (=> b!589098 (= res!376790 (= lt!267221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267219 vacantSpotIndex!68 lt!267220 lt!267223 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!589098 (= lt!267221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267219 vacantSpotIndex!68 (select (arr!17659 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589098 (= lt!267220 (select (store (arr!17659 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267224 () Unit!18368)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36780 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18368)

(assert (=> b!589098 (= lt!267224 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267219 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589098 (= lt!267219 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589099 () Bool)

(declare-fun res!376782 () Bool)

(assert (=> b!589099 (=> (not res!376782) (not e!336337))))

(declare-fun arrayContainsKey!0 (array!36780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589099 (= res!376782 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589100 () Bool)

(declare-fun lt!267217 () SeekEntryResult!6106)

(assert (=> b!589100 (= e!336340 (= lt!267217 lt!267221))))

(declare-fun b!589101 () Bool)

(declare-fun res!376788 () Bool)

(assert (=> b!589101 (=> (not res!376788) (not e!336341))))

(assert (=> b!589101 (= res!376788 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17659 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589103 () Bool)

(declare-fun e!336343 () Bool)

(assert (=> b!589103 (= e!336343 e!336339)))

(declare-fun res!376791 () Bool)

(assert (=> b!589103 (=> (not res!376791) (not e!336339))))

(assert (=> b!589103 (= res!376791 (and (= lt!267217 (Found!6106 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17659 a!2986) index!984) (select (arr!17659 a!2986) j!136))) (not (= (select (arr!17659 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589103 (= lt!267217 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17659 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589104 () Bool)

(declare-fun res!376789 () Bool)

(assert (=> b!589104 (=> (not res!376789) (not e!336337))))

(assert (=> b!589104 (= res!376789 (and (= (size!18023 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18023 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18023 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589105 () Bool)

(declare-fun Unit!18370 () Unit!18368)

(assert (=> b!589105 (= e!336338 Unit!18370)))

(assert (=> b!589105 false))

(declare-fun b!589106 () Bool)

(declare-fun res!376784 () Bool)

(assert (=> b!589106 (=> (not res!376784) (not e!336337))))

(assert (=> b!589106 (= res!376784 (validKeyInArray!0 (select (arr!17659 a!2986) j!136)))))

(declare-fun b!589107 () Bool)

(declare-fun res!376787 () Bool)

(assert (=> b!589107 (=> (not res!376787) (not e!336341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36780 (_ BitVec 32)) Bool)

(assert (=> b!589107 (= res!376787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!376785 () Bool)

(assert (=> start!53982 (=> (not res!376785) (not e!336337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53982 (= res!376785 (validMask!0 mask!3053))))

(assert (=> start!53982 e!336337))

(assert (=> start!53982 true))

(declare-fun array_inv!13433 (array!36780) Bool)

(assert (=> start!53982 (array_inv!13433 a!2986)))

(declare-fun b!589102 () Bool)

(declare-fun Unit!18371 () Unit!18368)

(assert (=> b!589102 (= e!336338 Unit!18371)))

(declare-fun b!589108 () Bool)

(assert (=> b!589108 (= e!336341 e!336343)))

(declare-fun res!376783 () Bool)

(assert (=> b!589108 (=> (not res!376783) (not e!336343))))

(assert (=> b!589108 (= res!376783 (= (select (store (arr!17659 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589108 (= lt!267223 (array!36781 (store (arr!17659 a!2986) i!1108 k0!1786) (size!18023 a!2986)))))

(declare-fun b!589109 () Bool)

(assert (=> b!589109 (= e!336337 e!336341)))

(declare-fun res!376786 () Bool)

(assert (=> b!589109 (=> (not res!376786) (not e!336341))))

(declare-fun lt!267222 () SeekEntryResult!6106)

(assert (=> b!589109 (= res!376786 (or (= lt!267222 (MissingZero!6106 i!1108)) (= lt!267222 (MissingVacant!6106 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36780 (_ BitVec 32)) SeekEntryResult!6106)

(assert (=> b!589109 (= lt!267222 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53982 res!376785) b!589104))

(assert (= (and b!589104 res!376789) b!589106))

(assert (= (and b!589106 res!376784) b!589096))

(assert (= (and b!589096 res!376792) b!589099))

(assert (= (and b!589099 res!376782) b!589109))

(assert (= (and b!589109 res!376786) b!589107))

(assert (= (and b!589107 res!376787) b!589097))

(assert (= (and b!589097 res!376793) b!589101))

(assert (= (and b!589101 res!376788) b!589108))

(assert (= (and b!589108 res!376783) b!589103))

(assert (= (and b!589103 res!376791) b!589098))

(assert (= (and b!589098 res!376790) b!589100))

(assert (= (and b!589098 c!66524) b!589105))

(assert (= (and b!589098 (not c!66524)) b!589102))

(declare-fun m!567683 () Bool)

(assert (=> b!589109 m!567683))

(declare-fun m!567685 () Bool)

(assert (=> b!589099 m!567685))

(declare-fun m!567687 () Bool)

(assert (=> b!589101 m!567687))

(declare-fun m!567689 () Bool)

(assert (=> start!53982 m!567689))

(declare-fun m!567691 () Bool)

(assert (=> start!53982 m!567691))

(declare-fun m!567693 () Bool)

(assert (=> b!589096 m!567693))

(declare-fun m!567695 () Bool)

(assert (=> b!589108 m!567695))

(declare-fun m!567697 () Bool)

(assert (=> b!589108 m!567697))

(declare-fun m!567699 () Bool)

(assert (=> b!589098 m!567699))

(declare-fun m!567701 () Bool)

(assert (=> b!589098 m!567701))

(declare-fun m!567703 () Bool)

(assert (=> b!589098 m!567703))

(assert (=> b!589098 m!567695))

(assert (=> b!589098 m!567703))

(declare-fun m!567705 () Bool)

(assert (=> b!589098 m!567705))

(declare-fun m!567707 () Bool)

(assert (=> b!589098 m!567707))

(declare-fun m!567709 () Bool)

(assert (=> b!589098 m!567709))

(declare-fun m!567711 () Bool)

(assert (=> b!589098 m!567711))

(declare-fun m!567713 () Bool)

(assert (=> b!589107 m!567713))

(declare-fun m!567715 () Bool)

(assert (=> b!589097 m!567715))

(declare-fun m!567717 () Bool)

(assert (=> b!589103 m!567717))

(assert (=> b!589103 m!567703))

(assert (=> b!589103 m!567703))

(declare-fun m!567719 () Bool)

(assert (=> b!589103 m!567719))

(assert (=> b!589106 m!567703))

(assert (=> b!589106 m!567703))

(declare-fun m!567721 () Bool)

(assert (=> b!589106 m!567721))

(check-sat (not b!589103) (not b!589096) (not b!589109) (not b!589098) (not b!589097) (not b!589107) (not start!53982) (not b!589099) (not b!589106))
(check-sat)
