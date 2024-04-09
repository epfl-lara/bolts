; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53280 () Bool)

(assert start!53280)

(declare-fun b!578856 () Bool)

(declare-fun res!366829 () Bool)

(declare-fun e!332764 () Bool)

(assert (=> b!578856 (=> (not res!366829) (not e!332764))))

(declare-datatypes ((array!36135 0))(
  ( (array!36136 (arr!17338 (Array (_ BitVec 32) (_ BitVec 64))) (size!17702 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36135)

(declare-datatypes ((List!11432 0))(
  ( (Nil!11429) (Cons!11428 (h!12473 (_ BitVec 64)) (t!17668 List!11432)) )
))
(declare-fun arrayNoDuplicates!0 (array!36135 (_ BitVec 32) List!11432) Bool)

(assert (=> b!578856 (= res!366829 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11429))))

(declare-fun b!578857 () Bool)

(declare-fun res!366826 () Bool)

(declare-fun e!332763 () Bool)

(assert (=> b!578857 (=> (not res!366826) (not e!332763))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578857 (= res!366826 (validKeyInArray!0 k0!1786))))

(declare-fun b!578858 () Bool)

(assert (=> b!578858 (= e!332764 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5785 0))(
  ( (MissingZero!5785 (index!25367 (_ BitVec 32))) (Found!5785 (index!25368 (_ BitVec 32))) (Intermediate!5785 (undefined!6597 Bool) (index!25369 (_ BitVec 32)) (x!54289 (_ BitVec 32))) (Undefined!5785) (MissingVacant!5785 (index!25370 (_ BitVec 32))) )
))
(declare-fun lt!264359 () SeekEntryResult!5785)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36135 (_ BitVec 32)) SeekEntryResult!5785)

(assert (=> b!578858 (= lt!264359 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17338 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!366823 () Bool)

(assert (=> start!53280 (=> (not res!366823) (not e!332763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53280 (= res!366823 (validMask!0 mask!3053))))

(assert (=> start!53280 e!332763))

(assert (=> start!53280 true))

(declare-fun array_inv!13112 (array!36135) Bool)

(assert (=> start!53280 (array_inv!13112 a!2986)))

(declare-fun b!578859 () Bool)

(declare-fun res!366822 () Bool)

(assert (=> b!578859 (=> (not res!366822) (not e!332764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36135 (_ BitVec 32)) Bool)

(assert (=> b!578859 (= res!366822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578860 () Bool)

(declare-fun res!366824 () Bool)

(assert (=> b!578860 (=> (not res!366824) (not e!332763))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578860 (= res!366824 (and (= (size!17702 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17702 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17702 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578861 () Bool)

(declare-fun res!366825 () Bool)

(assert (=> b!578861 (=> (not res!366825) (not e!332764))))

(assert (=> b!578861 (= res!366825 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17338 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17338 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578862 () Bool)

(declare-fun res!366828 () Bool)

(assert (=> b!578862 (=> (not res!366828) (not e!332763))))

(declare-fun arrayContainsKey!0 (array!36135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578862 (= res!366828 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578863 () Bool)

(assert (=> b!578863 (= e!332763 e!332764)))

(declare-fun res!366830 () Bool)

(assert (=> b!578863 (=> (not res!366830) (not e!332764))))

(declare-fun lt!264358 () SeekEntryResult!5785)

(assert (=> b!578863 (= res!366830 (or (= lt!264358 (MissingZero!5785 i!1108)) (= lt!264358 (MissingVacant!5785 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36135 (_ BitVec 32)) SeekEntryResult!5785)

(assert (=> b!578863 (= lt!264358 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578864 () Bool)

(declare-fun res!366827 () Bool)

(assert (=> b!578864 (=> (not res!366827) (not e!332763))))

(assert (=> b!578864 (= res!366827 (validKeyInArray!0 (select (arr!17338 a!2986) j!136)))))

(assert (= (and start!53280 res!366823) b!578860))

(assert (= (and b!578860 res!366824) b!578864))

(assert (= (and b!578864 res!366827) b!578857))

(assert (= (and b!578857 res!366826) b!578862))

(assert (= (and b!578862 res!366828) b!578863))

(assert (= (and b!578863 res!366830) b!578859))

(assert (= (and b!578859 res!366822) b!578856))

(assert (= (and b!578856 res!366829) b!578861))

(assert (= (and b!578861 res!366825) b!578858))

(declare-fun m!557541 () Bool)

(assert (=> b!578862 m!557541))

(declare-fun m!557543 () Bool)

(assert (=> b!578864 m!557543))

(assert (=> b!578864 m!557543))

(declare-fun m!557545 () Bool)

(assert (=> b!578864 m!557545))

(declare-fun m!557547 () Bool)

(assert (=> b!578856 m!557547))

(declare-fun m!557549 () Bool)

(assert (=> start!53280 m!557549))

(declare-fun m!557551 () Bool)

(assert (=> start!53280 m!557551))

(declare-fun m!557553 () Bool)

(assert (=> b!578863 m!557553))

(declare-fun m!557555 () Bool)

(assert (=> b!578859 m!557555))

(assert (=> b!578858 m!557543))

(assert (=> b!578858 m!557543))

(declare-fun m!557557 () Bool)

(assert (=> b!578858 m!557557))

(declare-fun m!557559 () Bool)

(assert (=> b!578857 m!557559))

(declare-fun m!557561 () Bool)

(assert (=> b!578861 m!557561))

(declare-fun m!557563 () Bool)

(assert (=> b!578861 m!557563))

(declare-fun m!557565 () Bool)

(assert (=> b!578861 m!557565))

(check-sat (not b!578856) (not b!578863) (not b!578864) (not b!578858) (not start!53280) (not b!578862) (not b!578859) (not b!578857))
(check-sat)
