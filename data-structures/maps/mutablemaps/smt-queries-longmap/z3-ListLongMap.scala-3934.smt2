; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53634 () Bool)

(assert start!53634)

(declare-fun res!371774 () Bool)

(declare-fun e!334398 () Bool)

(assert (=> start!53634 (=> (not res!371774) (not e!334398))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53634 (= res!371774 (validMask!0 mask!3053))))

(assert (=> start!53634 e!334398))

(assert (=> start!53634 true))

(declare-datatypes ((array!36489 0))(
  ( (array!36490 (arr!17515 (Array (_ BitVec 32) (_ BitVec 64))) (size!17879 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36489)

(declare-fun array_inv!13289 (array!36489) Bool)

(assert (=> start!53634 (array_inv!13289 a!2986)))

(declare-fun b!583803 () Bool)

(declare-fun e!334397 () Bool)

(assert (=> b!583803 (= e!334398 e!334397)))

(declare-fun res!371771 () Bool)

(assert (=> b!583803 (=> (not res!371771) (not e!334397))))

(declare-datatypes ((SeekEntryResult!5962 0))(
  ( (MissingZero!5962 (index!26075 (_ BitVec 32))) (Found!5962 (index!26076 (_ BitVec 32))) (Intermediate!5962 (undefined!6774 Bool) (index!26077 (_ BitVec 32)) (x!54938 (_ BitVec 32))) (Undefined!5962) (MissingVacant!5962 (index!26078 (_ BitVec 32))) )
))
(declare-fun lt!265426 () SeekEntryResult!5962)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583803 (= res!371771 (or (= lt!265426 (MissingZero!5962 i!1108)) (= lt!265426 (MissingVacant!5962 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36489 (_ BitVec 32)) SeekEntryResult!5962)

(assert (=> b!583803 (= lt!265426 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583804 () Bool)

(declare-fun e!334396 () Bool)

(assert (=> b!583804 (= e!334397 e!334396)))

(declare-fun res!371773 () Bool)

(assert (=> b!583804 (=> (not res!371773) (not e!334396))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265427 () (_ BitVec 32))

(assert (=> b!583804 (= res!371773 (and (bvsge lt!265427 #b00000000000000000000000000000000) (bvslt lt!265427 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583804 (= lt!265427 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583805 () Bool)

(declare-fun res!371770 () Bool)

(assert (=> b!583805 (=> (not res!371770) (not e!334397))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!583805 (= res!371770 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17515 a!2986) index!984) (select (arr!17515 a!2986) j!136))) (not (= (select (arr!17515 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583806 () Bool)

(declare-fun res!371777 () Bool)

(assert (=> b!583806 (=> (not res!371777) (not e!334398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583806 (= res!371777 (validKeyInArray!0 (select (arr!17515 a!2986) j!136)))))

(declare-fun b!583807 () Bool)

(assert (=> b!583807 (= e!334396 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265425 () SeekEntryResult!5962)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36489 (_ BitVec 32)) SeekEntryResult!5962)

(assert (=> b!583807 (= lt!265425 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265427 vacantSpotIndex!68 (select (arr!17515 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583808 () Bool)

(declare-fun res!371779 () Bool)

(assert (=> b!583808 (=> (not res!371779) (not e!334398))))

(declare-fun arrayContainsKey!0 (array!36489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583808 (= res!371779 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583809 () Bool)

(declare-fun res!371772 () Bool)

(assert (=> b!583809 (=> (not res!371772) (not e!334397))))

(assert (=> b!583809 (= res!371772 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17515 a!2986) j!136) a!2986 mask!3053) (Found!5962 j!136)))))

(declare-fun b!583810 () Bool)

(declare-fun res!371776 () Bool)

(assert (=> b!583810 (=> (not res!371776) (not e!334398))))

(assert (=> b!583810 (= res!371776 (validKeyInArray!0 k0!1786))))

(declare-fun b!583811 () Bool)

(declare-fun res!371778 () Bool)

(assert (=> b!583811 (=> (not res!371778) (not e!334398))))

(assert (=> b!583811 (= res!371778 (and (= (size!17879 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17879 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17879 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583812 () Bool)

(declare-fun res!371775 () Bool)

(assert (=> b!583812 (=> (not res!371775) (not e!334397))))

(assert (=> b!583812 (= res!371775 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17515 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17515 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583813 () Bool)

(declare-fun res!371769 () Bool)

(assert (=> b!583813 (=> (not res!371769) (not e!334397))))

(declare-datatypes ((List!11609 0))(
  ( (Nil!11606) (Cons!11605 (h!12650 (_ BitVec 64)) (t!17845 List!11609)) )
))
(declare-fun arrayNoDuplicates!0 (array!36489 (_ BitVec 32) List!11609) Bool)

(assert (=> b!583813 (= res!371769 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11606))))

(declare-fun b!583814 () Bool)

(declare-fun res!371780 () Bool)

(assert (=> b!583814 (=> (not res!371780) (not e!334397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36489 (_ BitVec 32)) Bool)

(assert (=> b!583814 (= res!371780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53634 res!371774) b!583811))

(assert (= (and b!583811 res!371778) b!583806))

(assert (= (and b!583806 res!371777) b!583810))

(assert (= (and b!583810 res!371776) b!583808))

(assert (= (and b!583808 res!371779) b!583803))

(assert (= (and b!583803 res!371771) b!583814))

(assert (= (and b!583814 res!371780) b!583813))

(assert (= (and b!583813 res!371769) b!583812))

(assert (= (and b!583812 res!371775) b!583809))

(assert (= (and b!583809 res!371772) b!583805))

(assert (= (and b!583805 res!371770) b!583804))

(assert (= (and b!583804 res!371773) b!583807))

(declare-fun m!562257 () Bool)

(assert (=> start!53634 m!562257))

(declare-fun m!562259 () Bool)

(assert (=> start!53634 m!562259))

(declare-fun m!562261 () Bool)

(assert (=> b!583810 m!562261))

(declare-fun m!562263 () Bool)

(assert (=> b!583806 m!562263))

(assert (=> b!583806 m!562263))

(declare-fun m!562265 () Bool)

(assert (=> b!583806 m!562265))

(declare-fun m!562267 () Bool)

(assert (=> b!583808 m!562267))

(declare-fun m!562269 () Bool)

(assert (=> b!583814 m!562269))

(assert (=> b!583807 m!562263))

(assert (=> b!583807 m!562263))

(declare-fun m!562271 () Bool)

(assert (=> b!583807 m!562271))

(declare-fun m!562273 () Bool)

(assert (=> b!583813 m!562273))

(declare-fun m!562275 () Bool)

(assert (=> b!583803 m!562275))

(declare-fun m!562277 () Bool)

(assert (=> b!583812 m!562277))

(declare-fun m!562279 () Bool)

(assert (=> b!583812 m!562279))

(declare-fun m!562281 () Bool)

(assert (=> b!583812 m!562281))

(assert (=> b!583809 m!562263))

(assert (=> b!583809 m!562263))

(declare-fun m!562283 () Bool)

(assert (=> b!583809 m!562283))

(declare-fun m!562285 () Bool)

(assert (=> b!583805 m!562285))

(assert (=> b!583805 m!562263))

(declare-fun m!562287 () Bool)

(assert (=> b!583804 m!562287))

(check-sat (not b!583806) (not b!583808) (not b!583813) (not b!583804) (not start!53634) (not b!583809) (not b!583807) (not b!583803) (not b!583810) (not b!583814))
(check-sat)
