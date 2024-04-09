; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54830 () Bool)

(assert start!54830)

(declare-fun b!598289 () Bool)

(declare-fun e!342005 () Bool)

(declare-fun e!342007 () Bool)

(assert (=> b!598289 (= e!342005 e!342007)))

(declare-fun res!383542 () Bool)

(assert (=> b!598289 (=> (not res!383542) (not e!342007))))

(declare-datatypes ((SeekEntryResult!6217 0))(
  ( (MissingZero!6217 (index!27124 (_ BitVec 32))) (Found!6217 (index!27125 (_ BitVec 32))) (Intermediate!6217 (undefined!7029 Bool) (index!27126 (_ BitVec 32)) (x!55961 (_ BitVec 32))) (Undefined!6217) (MissingVacant!6217 (index!27127 (_ BitVec 32))) )
))
(declare-fun lt!271860 () SeekEntryResult!6217)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598289 (= res!383542 (or (= lt!271860 (MissingZero!6217 i!1108)) (= lt!271860 (MissingVacant!6217 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37028 0))(
  ( (array!37029 (arr!17770 (Array (_ BitVec 32) (_ BitVec 64))) (size!18134 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37028)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37028 (_ BitVec 32)) SeekEntryResult!6217)

(assert (=> b!598289 (= lt!271860 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!598290 () Bool)

(declare-fun e!342009 () Bool)

(declare-fun e!342004 () Bool)

(assert (=> b!598290 (= e!342009 e!342004)))

(declare-fun res!383544 () Bool)

(assert (=> b!598290 (=> res!383544 e!342004)))

(declare-fun lt!271858 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!271864 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!598290 (= res!383544 (or (not (= (select (arr!17770 a!2986) j!136) lt!271864)) (not (= (select (arr!17770 a!2986) j!136) lt!271858)) (bvsge j!136 index!984)))))

(declare-fun e!342002 () Bool)

(assert (=> b!598290 e!342002))

(declare-fun res!383547 () Bool)

(assert (=> b!598290 (=> (not res!383547) (not e!342002))))

(assert (=> b!598290 (= res!383547 (= lt!271858 (select (arr!17770 a!2986) j!136)))))

(assert (=> b!598290 (= lt!271858 (select (store (arr!17770 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!598291 () Bool)

(declare-fun res!383548 () Bool)

(assert (=> b!598291 (=> (not res!383548) (not e!342007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37028 (_ BitVec 32)) Bool)

(assert (=> b!598291 (= res!383548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598292 () Bool)

(declare-datatypes ((Unit!18812 0))(
  ( (Unit!18813) )
))
(declare-fun e!342006 () Unit!18812)

(declare-fun Unit!18814 () Unit!18812)

(assert (=> b!598292 (= e!342006 Unit!18814)))

(assert (=> b!598292 false))

(declare-fun b!598293 () Bool)

(declare-fun e!342003 () Bool)

(assert (=> b!598293 (= e!342007 e!342003)))

(declare-fun res!383551 () Bool)

(assert (=> b!598293 (=> (not res!383551) (not e!342003))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!598293 (= res!383551 (= (select (store (arr!17770 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!271856 () array!37028)

(assert (=> b!598293 (= lt!271856 (array!37029 (store (arr!17770 a!2986) i!1108 k0!1786) (size!18134 a!2986)))))

(declare-fun b!598294 () Bool)

(declare-fun Unit!18815 () Unit!18812)

(assert (=> b!598294 (= e!342006 Unit!18815)))

(declare-fun b!598295 () Bool)

(declare-fun e!342001 () Bool)

(declare-fun e!341999 () Bool)

(assert (=> b!598295 (= e!342001 e!341999)))

(declare-fun res!383539 () Bool)

(assert (=> b!598295 (=> (not res!383539) (not e!341999))))

(declare-fun arrayContainsKey!0 (array!37028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598295 (= res!383539 (arrayContainsKey!0 lt!271856 (select (arr!17770 a!2986) j!136) j!136))))

(declare-fun b!598296 () Bool)

(declare-fun res!383545 () Bool)

(assert (=> b!598296 (=> (not res!383545) (not e!342007))))

(declare-datatypes ((List!11864 0))(
  ( (Nil!11861) (Cons!11860 (h!12905 (_ BitVec 64)) (t!18100 List!11864)) )
))
(declare-fun arrayNoDuplicates!0 (array!37028 (_ BitVec 32) List!11864) Bool)

(assert (=> b!598296 (= res!383545 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11861))))

(declare-fun res!383546 () Bool)

(assert (=> start!54830 (=> (not res!383546) (not e!342005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54830 (= res!383546 (validMask!0 mask!3053))))

(assert (=> start!54830 e!342005))

(assert (=> start!54830 true))

(declare-fun array_inv!13544 (array!37028) Bool)

(assert (=> start!54830 (array_inv!13544 a!2986)))

(declare-fun b!598297 () Bool)

(declare-fun e!342010 () Bool)

(assert (=> b!598297 (= e!342010 (not e!342009))))

(declare-fun res!383552 () Bool)

(assert (=> b!598297 (=> res!383552 e!342009)))

(declare-fun lt!271863 () SeekEntryResult!6217)

(assert (=> b!598297 (= res!383552 (not (= lt!271863 (Found!6217 index!984))))))

(declare-fun lt!271866 () Unit!18812)

(assert (=> b!598297 (= lt!271866 e!342006)))

(declare-fun c!67742 () Bool)

(assert (=> b!598297 (= c!67742 (= lt!271863 Undefined!6217))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37028 (_ BitVec 32)) SeekEntryResult!6217)

(assert (=> b!598297 (= lt!271863 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271864 lt!271856 mask!3053))))

(declare-fun e!342000 () Bool)

(assert (=> b!598297 e!342000))

(declare-fun res!383553 () Bool)

(assert (=> b!598297 (=> (not res!383553) (not e!342000))))

(declare-fun lt!271865 () (_ BitVec 32))

(declare-fun lt!271855 () SeekEntryResult!6217)

(assert (=> b!598297 (= res!383553 (= lt!271855 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271865 vacantSpotIndex!68 lt!271864 lt!271856 mask!3053)))))

(assert (=> b!598297 (= lt!271855 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271865 vacantSpotIndex!68 (select (arr!17770 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598297 (= lt!271864 (select (store (arr!17770 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!271862 () Unit!18812)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37028 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18812)

(assert (=> b!598297 (= lt!271862 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271865 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598297 (= lt!271865 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598298 () Bool)

(declare-fun res!383550 () Bool)

(assert (=> b!598298 (=> (not res!383550) (not e!342005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598298 (= res!383550 (validKeyInArray!0 (select (arr!17770 a!2986) j!136)))))

(declare-fun b!598299 () Bool)

(assert (=> b!598299 (= e!342003 e!342010)))

(declare-fun res!383543 () Bool)

(assert (=> b!598299 (=> (not res!383543) (not e!342010))))

(declare-fun lt!271861 () SeekEntryResult!6217)

(assert (=> b!598299 (= res!383543 (and (= lt!271861 (Found!6217 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17770 a!2986) index!984) (select (arr!17770 a!2986) j!136))) (not (= (select (arr!17770 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598299 (= lt!271861 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17770 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598300 () Bool)

(assert (=> b!598300 (= e!342004 true)))

(assert (=> b!598300 (arrayNoDuplicates!0 lt!271856 #b00000000000000000000000000000000 Nil!11861)))

(declare-fun lt!271859 () Unit!18812)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37028 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11864) Unit!18812)

(assert (=> b!598300 (= lt!271859 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11861))))

(assert (=> b!598300 (arrayContainsKey!0 lt!271856 (select (arr!17770 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271857 () Unit!18812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37028 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18812)

(assert (=> b!598300 (= lt!271857 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271856 (select (arr!17770 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598301 () Bool)

(declare-fun res!383554 () Bool)

(assert (=> b!598301 (=> (not res!383554) (not e!342005))))

(assert (=> b!598301 (= res!383554 (and (= (size!18134 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18134 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18134 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598302 () Bool)

(declare-fun res!383540 () Bool)

(assert (=> b!598302 (=> (not res!383540) (not e!342007))))

(assert (=> b!598302 (= res!383540 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17770 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598303 () Bool)

(assert (=> b!598303 (= e!342000 (= lt!271861 lt!271855))))

(declare-fun b!598304 () Bool)

(declare-fun res!383541 () Bool)

(assert (=> b!598304 (=> (not res!383541) (not e!342005))))

(assert (=> b!598304 (= res!383541 (validKeyInArray!0 k0!1786))))

(declare-fun b!598305 () Bool)

(assert (=> b!598305 (= e!341999 (arrayContainsKey!0 lt!271856 (select (arr!17770 a!2986) j!136) index!984))))

(declare-fun b!598306 () Bool)

(assert (=> b!598306 (= e!342002 e!342001)))

(declare-fun res!383549 () Bool)

(assert (=> b!598306 (=> res!383549 e!342001)))

(assert (=> b!598306 (= res!383549 (or (not (= (select (arr!17770 a!2986) j!136) lt!271864)) (not (= (select (arr!17770 a!2986) j!136) lt!271858)) (bvsge j!136 index!984)))))

(declare-fun b!598307 () Bool)

(declare-fun res!383555 () Bool)

(assert (=> b!598307 (=> (not res!383555) (not e!342005))))

(assert (=> b!598307 (= res!383555 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54830 res!383546) b!598301))

(assert (= (and b!598301 res!383554) b!598298))

(assert (= (and b!598298 res!383550) b!598304))

(assert (= (and b!598304 res!383541) b!598307))

(assert (= (and b!598307 res!383555) b!598289))

(assert (= (and b!598289 res!383542) b!598291))

(assert (= (and b!598291 res!383548) b!598296))

(assert (= (and b!598296 res!383545) b!598302))

(assert (= (and b!598302 res!383540) b!598293))

(assert (= (and b!598293 res!383551) b!598299))

(assert (= (and b!598299 res!383543) b!598297))

(assert (= (and b!598297 res!383553) b!598303))

(assert (= (and b!598297 c!67742) b!598292))

(assert (= (and b!598297 (not c!67742)) b!598294))

(assert (= (and b!598297 (not res!383552)) b!598290))

(assert (= (and b!598290 res!383547) b!598306))

(assert (= (and b!598306 (not res!383549)) b!598295))

(assert (= (and b!598295 res!383539) b!598305))

(assert (= (and b!598290 (not res!383544)) b!598300))

(declare-fun m!575643 () Bool)

(assert (=> b!598298 m!575643))

(assert (=> b!598298 m!575643))

(declare-fun m!575645 () Bool)

(assert (=> b!598298 m!575645))

(declare-fun m!575647 () Bool)

(assert (=> b!598302 m!575647))

(assert (=> b!598295 m!575643))

(assert (=> b!598295 m!575643))

(declare-fun m!575649 () Bool)

(assert (=> b!598295 m!575649))

(declare-fun m!575651 () Bool)

(assert (=> b!598293 m!575651))

(declare-fun m!575653 () Bool)

(assert (=> b!598293 m!575653))

(declare-fun m!575655 () Bool)

(assert (=> b!598291 m!575655))

(declare-fun m!575657 () Bool)

(assert (=> b!598296 m!575657))

(assert (=> b!598290 m!575643))

(assert (=> b!598290 m!575651))

(declare-fun m!575659 () Bool)

(assert (=> b!598290 m!575659))

(declare-fun m!575661 () Bool)

(assert (=> b!598304 m!575661))

(declare-fun m!575663 () Bool)

(assert (=> b!598297 m!575663))

(declare-fun m!575665 () Bool)

(assert (=> b!598297 m!575665))

(declare-fun m!575667 () Bool)

(assert (=> b!598297 m!575667))

(assert (=> b!598297 m!575643))

(declare-fun m!575669 () Bool)

(assert (=> b!598297 m!575669))

(assert (=> b!598297 m!575643))

(declare-fun m!575671 () Bool)

(assert (=> b!598297 m!575671))

(declare-fun m!575673 () Bool)

(assert (=> b!598297 m!575673))

(assert (=> b!598297 m!575651))

(declare-fun m!575675 () Bool)

(assert (=> b!598307 m!575675))

(declare-fun m!575677 () Bool)

(assert (=> b!598299 m!575677))

(assert (=> b!598299 m!575643))

(assert (=> b!598299 m!575643))

(declare-fun m!575679 () Bool)

(assert (=> b!598299 m!575679))

(declare-fun m!575681 () Bool)

(assert (=> start!54830 m!575681))

(declare-fun m!575683 () Bool)

(assert (=> start!54830 m!575683))

(assert (=> b!598305 m!575643))

(assert (=> b!598305 m!575643))

(declare-fun m!575685 () Bool)

(assert (=> b!598305 m!575685))

(declare-fun m!575687 () Bool)

(assert (=> b!598289 m!575687))

(assert (=> b!598306 m!575643))

(assert (=> b!598300 m!575643))

(assert (=> b!598300 m!575643))

(declare-fun m!575689 () Bool)

(assert (=> b!598300 m!575689))

(declare-fun m!575691 () Bool)

(assert (=> b!598300 m!575691))

(assert (=> b!598300 m!575643))

(declare-fun m!575693 () Bool)

(assert (=> b!598300 m!575693))

(declare-fun m!575695 () Bool)

(assert (=> b!598300 m!575695))

(check-sat (not b!598297) (not b!598296) (not b!598295) (not b!598304) (not b!598298) (not start!54830) (not b!598305) (not b!598289) (not b!598291) (not b!598307) (not b!598299) (not b!598300))
(check-sat)
