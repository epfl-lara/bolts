; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53586 () Bool)

(assert start!53586)

(declare-fun b!583023 () Bool)

(declare-fun e!334141 () Bool)

(declare-fun e!334140 () Bool)

(assert (=> b!583023 (= e!334141 e!334140)))

(declare-fun res!370991 () Bool)

(assert (=> b!583023 (=> (not res!370991) (not e!334140))))

(declare-datatypes ((SeekEntryResult!5938 0))(
  ( (MissingZero!5938 (index!25979 (_ BitVec 32))) (Found!5938 (index!25980 (_ BitVec 32))) (Intermediate!5938 (undefined!6750 Bool) (index!25981 (_ BitVec 32)) (x!54850 (_ BitVec 32))) (Undefined!5938) (MissingVacant!5938 (index!25982 (_ BitVec 32))) )
))
(declare-fun lt!265249 () SeekEntryResult!5938)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583023 (= res!370991 (or (= lt!265249 (MissingZero!5938 i!1108)) (= lt!265249 (MissingVacant!5938 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36441 0))(
  ( (array!36442 (arr!17491 (Array (_ BitVec 32) (_ BitVec 64))) (size!17855 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36441)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36441 (_ BitVec 32)) SeekEntryResult!5938)

(assert (=> b!583023 (= lt!265249 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583024 () Bool)

(declare-fun res!370989 () Bool)

(assert (=> b!583024 (=> (not res!370989) (not e!334140))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583024 (= res!370989 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17491 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17491 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!370993 () Bool)

(assert (=> start!53586 (=> (not res!370993) (not e!334141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53586 (= res!370993 (validMask!0 mask!3053))))

(assert (=> start!53586 e!334141))

(assert (=> start!53586 true))

(declare-fun array_inv!13265 (array!36441) Bool)

(assert (=> start!53586 (array_inv!13265 a!2986)))

(declare-fun b!583025 () Bool)

(declare-fun res!370995 () Bool)

(assert (=> b!583025 (=> (not res!370995) (not e!334141))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!583025 (= res!370995 (and (= (size!17855 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17855 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17855 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583026 () Bool)

(assert (=> b!583026 (= e!334140 false)))

(declare-fun lt!265250 () SeekEntryResult!5938)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36441 (_ BitVec 32)) SeekEntryResult!5938)

(assert (=> b!583026 (= lt!265250 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17491 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583027 () Bool)

(declare-fun res!370997 () Bool)

(assert (=> b!583027 (=> (not res!370997) (not e!334140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36441 (_ BitVec 32)) Bool)

(assert (=> b!583027 (= res!370997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583028 () Bool)

(declare-fun res!370994 () Bool)

(assert (=> b!583028 (=> (not res!370994) (not e!334140))))

(declare-datatypes ((List!11585 0))(
  ( (Nil!11582) (Cons!11581 (h!12626 (_ BitVec 64)) (t!17821 List!11585)) )
))
(declare-fun arrayNoDuplicates!0 (array!36441 (_ BitVec 32) List!11585) Bool)

(assert (=> b!583028 (= res!370994 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11582))))

(declare-fun b!583029 () Bool)

(declare-fun res!370990 () Bool)

(assert (=> b!583029 (=> (not res!370990) (not e!334141))))

(declare-fun arrayContainsKey!0 (array!36441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583029 (= res!370990 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583030 () Bool)

(declare-fun res!370996 () Bool)

(assert (=> b!583030 (=> (not res!370996) (not e!334141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583030 (= res!370996 (validKeyInArray!0 k0!1786))))

(declare-fun b!583031 () Bool)

(declare-fun res!370992 () Bool)

(assert (=> b!583031 (=> (not res!370992) (not e!334141))))

(assert (=> b!583031 (= res!370992 (validKeyInArray!0 (select (arr!17491 a!2986) j!136)))))

(assert (= (and start!53586 res!370993) b!583025))

(assert (= (and b!583025 res!370995) b!583031))

(assert (= (and b!583031 res!370992) b!583030))

(assert (= (and b!583030 res!370996) b!583029))

(assert (= (and b!583029 res!370990) b!583023))

(assert (= (and b!583023 res!370991) b!583027))

(assert (= (and b!583027 res!370997) b!583028))

(assert (= (and b!583028 res!370994) b!583024))

(assert (= (and b!583024 res!370989) b!583026))

(declare-fun m!561549 () Bool)

(assert (=> b!583024 m!561549))

(declare-fun m!561551 () Bool)

(assert (=> b!583024 m!561551))

(declare-fun m!561553 () Bool)

(assert (=> b!583024 m!561553))

(declare-fun m!561555 () Bool)

(assert (=> b!583028 m!561555))

(declare-fun m!561557 () Bool)

(assert (=> b!583031 m!561557))

(assert (=> b!583031 m!561557))

(declare-fun m!561559 () Bool)

(assert (=> b!583031 m!561559))

(declare-fun m!561561 () Bool)

(assert (=> b!583029 m!561561))

(declare-fun m!561563 () Bool)

(assert (=> b!583030 m!561563))

(declare-fun m!561565 () Bool)

(assert (=> start!53586 m!561565))

(declare-fun m!561567 () Bool)

(assert (=> start!53586 m!561567))

(declare-fun m!561569 () Bool)

(assert (=> b!583023 m!561569))

(assert (=> b!583026 m!561557))

(assert (=> b!583026 m!561557))

(declare-fun m!561571 () Bool)

(assert (=> b!583026 m!561571))

(declare-fun m!561573 () Bool)

(assert (=> b!583027 m!561573))

(check-sat (not start!53586) (not b!583026) (not b!583029) (not b!583031) (not b!583023) (not b!583030) (not b!583028) (not b!583027))
(check-sat)
