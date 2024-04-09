; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53652 () Bool)

(assert start!53652)

(declare-fun b!584127 () Bool)

(declare-fun res!372100 () Bool)

(declare-fun e!334505 () Bool)

(assert (=> b!584127 (=> (not res!372100) (not e!334505))))

(declare-datatypes ((array!36507 0))(
  ( (array!36508 (arr!17524 (Array (_ BitVec 32) (_ BitVec 64))) (size!17888 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36507)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36507 (_ BitVec 32)) Bool)

(assert (=> b!584127 (= res!372100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584128 () Bool)

(declare-fun res!372096 () Bool)

(declare-fun e!334507 () Bool)

(assert (=> b!584128 (=> (not res!372096) (not e!334507))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584128 (= res!372096 (validKeyInArray!0 k0!1786))))

(declare-fun b!584129 () Bool)

(declare-fun res!372101 () Bool)

(assert (=> b!584129 (=> (not res!372101) (not e!334507))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584129 (= res!372101 (and (= (size!17888 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17888 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17888 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584130 () Bool)

(declare-fun res!372102 () Bool)

(assert (=> b!584130 (=> (not res!372102) (not e!334505))))

(declare-datatypes ((List!11618 0))(
  ( (Nil!11615) (Cons!11614 (h!12659 (_ BitVec 64)) (t!17854 List!11618)) )
))
(declare-fun arrayNoDuplicates!0 (array!36507 (_ BitVec 32) List!11618) Bool)

(assert (=> b!584130 (= res!372102 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11615))))

(declare-fun b!584131 () Bool)

(assert (=> b!584131 (= e!334507 e!334505)))

(declare-fun res!372097 () Bool)

(assert (=> b!584131 (=> (not res!372097) (not e!334505))))

(declare-datatypes ((SeekEntryResult!5971 0))(
  ( (MissingZero!5971 (index!26111 (_ BitVec 32))) (Found!5971 (index!26112 (_ BitVec 32))) (Intermediate!5971 (undefined!6783 Bool) (index!26113 (_ BitVec 32)) (x!54971 (_ BitVec 32))) (Undefined!5971) (MissingVacant!5971 (index!26114 (_ BitVec 32))) )
))
(declare-fun lt!265507 () SeekEntryResult!5971)

(assert (=> b!584131 (= res!372097 (or (= lt!265507 (MissingZero!5971 i!1108)) (= lt!265507 (MissingVacant!5971 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36507 (_ BitVec 32)) SeekEntryResult!5971)

(assert (=> b!584131 (= lt!265507 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584132 () Bool)

(declare-fun e!334506 () Bool)

(assert (=> b!584132 (= e!334505 e!334506)))

(declare-fun res!372095 () Bool)

(assert (=> b!584132 (=> (not res!372095) (not e!334506))))

(declare-fun lt!265506 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!584132 (= res!372095 (and (bvsge lt!265506 #b00000000000000000000000000000000) (bvslt lt!265506 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584132 (= lt!265506 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!372103 () Bool)

(assert (=> start!53652 (=> (not res!372103) (not e!334507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53652 (= res!372103 (validMask!0 mask!3053))))

(assert (=> start!53652 e!334507))

(assert (=> start!53652 true))

(declare-fun array_inv!13298 (array!36507) Bool)

(assert (=> start!53652 (array_inv!13298 a!2986)))

(declare-fun b!584133 () Bool)

(declare-fun res!372093 () Bool)

(assert (=> b!584133 (=> (not res!372093) (not e!334505))))

(assert (=> b!584133 (= res!372093 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17524 a!2986) index!984) (select (arr!17524 a!2986) j!136))) (not (= (select (arr!17524 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584134 () Bool)

(declare-fun res!372099 () Bool)

(assert (=> b!584134 (=> (not res!372099) (not e!334507))))

(assert (=> b!584134 (= res!372099 (validKeyInArray!0 (select (arr!17524 a!2986) j!136)))))

(declare-fun b!584135 () Bool)

(assert (=> b!584135 (= e!334506 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265508 () SeekEntryResult!5971)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36507 (_ BitVec 32)) SeekEntryResult!5971)

(assert (=> b!584135 (= lt!265508 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265506 vacantSpotIndex!68 (select (arr!17524 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584136 () Bool)

(declare-fun res!372098 () Bool)

(assert (=> b!584136 (=> (not res!372098) (not e!334507))))

(declare-fun arrayContainsKey!0 (array!36507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584136 (= res!372098 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584137 () Bool)

(declare-fun res!372104 () Bool)

(assert (=> b!584137 (=> (not res!372104) (not e!334505))))

(assert (=> b!584137 (= res!372104 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17524 a!2986) j!136) a!2986 mask!3053) (Found!5971 j!136)))))

(declare-fun b!584138 () Bool)

(declare-fun res!372094 () Bool)

(assert (=> b!584138 (=> (not res!372094) (not e!334505))))

(assert (=> b!584138 (= res!372094 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17524 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17524 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53652 res!372103) b!584129))

(assert (= (and b!584129 res!372101) b!584134))

(assert (= (and b!584134 res!372099) b!584128))

(assert (= (and b!584128 res!372096) b!584136))

(assert (= (and b!584136 res!372098) b!584131))

(assert (= (and b!584131 res!372097) b!584127))

(assert (= (and b!584127 res!372100) b!584130))

(assert (= (and b!584130 res!372102) b!584138))

(assert (= (and b!584138 res!372094) b!584137))

(assert (= (and b!584137 res!372104) b!584133))

(assert (= (and b!584133 res!372093) b!584132))

(assert (= (and b!584132 res!372095) b!584135))

(declare-fun m!562545 () Bool)

(assert (=> b!584131 m!562545))

(declare-fun m!562547 () Bool)

(assert (=> b!584128 m!562547))

(declare-fun m!562549 () Bool)

(assert (=> b!584136 m!562549))

(declare-fun m!562551 () Bool)

(assert (=> start!53652 m!562551))

(declare-fun m!562553 () Bool)

(assert (=> start!53652 m!562553))

(declare-fun m!562555 () Bool)

(assert (=> b!584127 m!562555))

(declare-fun m!562557 () Bool)

(assert (=> b!584137 m!562557))

(assert (=> b!584137 m!562557))

(declare-fun m!562559 () Bool)

(assert (=> b!584137 m!562559))

(declare-fun m!562561 () Bool)

(assert (=> b!584130 m!562561))

(declare-fun m!562563 () Bool)

(assert (=> b!584138 m!562563))

(declare-fun m!562565 () Bool)

(assert (=> b!584138 m!562565))

(declare-fun m!562567 () Bool)

(assert (=> b!584138 m!562567))

(declare-fun m!562569 () Bool)

(assert (=> b!584132 m!562569))

(declare-fun m!562571 () Bool)

(assert (=> b!584133 m!562571))

(assert (=> b!584133 m!562557))

(assert (=> b!584134 m!562557))

(assert (=> b!584134 m!562557))

(declare-fun m!562573 () Bool)

(assert (=> b!584134 m!562573))

(assert (=> b!584135 m!562557))

(assert (=> b!584135 m!562557))

(declare-fun m!562575 () Bool)

(assert (=> b!584135 m!562575))

(check-sat (not b!584134) (not b!584137) (not b!584135) (not b!584127) (not b!584128) (not b!584132) (not b!584130) (not start!53652) (not b!584131) (not b!584136))
