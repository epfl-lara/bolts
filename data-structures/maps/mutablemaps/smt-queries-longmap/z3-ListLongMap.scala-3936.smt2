; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53646 () Bool)

(assert start!53646)

(declare-fun b!584019 () Bool)

(declare-fun res!371994 () Bool)

(declare-fun e!334469 () Bool)

(assert (=> b!584019 (=> (not res!371994) (not e!334469))))

(declare-datatypes ((array!36501 0))(
  ( (array!36502 (arr!17521 (Array (_ BitVec 32) (_ BitVec 64))) (size!17885 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36501)

(declare-datatypes ((List!11615 0))(
  ( (Nil!11612) (Cons!11611 (h!12656 (_ BitVec 64)) (t!17851 List!11615)) )
))
(declare-fun arrayNoDuplicates!0 (array!36501 (_ BitVec 32) List!11615) Bool)

(assert (=> b!584019 (= res!371994 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11612))))

(declare-fun b!584020 () Bool)

(declare-fun res!371996 () Bool)

(assert (=> b!584020 (=> (not res!371996) (not e!334469))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584020 (= res!371996 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17521 a!2986) index!984) (select (arr!17521 a!2986) j!136))) (not (= (select (arr!17521 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584021 () Bool)

(declare-fun res!371990 () Bool)

(declare-fun e!334468 () Bool)

(assert (=> b!584021 (=> (not res!371990) (not e!334468))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584021 (= res!371990 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584022 () Bool)

(declare-fun e!334471 () Bool)

(assert (=> b!584022 (= e!334469 e!334471)))

(declare-fun res!371993 () Bool)

(assert (=> b!584022 (=> (not res!371993) (not e!334471))))

(declare-fun lt!265479 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!584022 (= res!371993 (and (bvsge lt!265479 #b00000000000000000000000000000000) (bvslt lt!265479 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584022 (= lt!265479 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584023 () Bool)

(assert (=> b!584023 (= e!334468 e!334469)))

(declare-fun res!371985 () Bool)

(assert (=> b!584023 (=> (not res!371985) (not e!334469))))

(declare-datatypes ((SeekEntryResult!5968 0))(
  ( (MissingZero!5968 (index!26099 (_ BitVec 32))) (Found!5968 (index!26100 (_ BitVec 32))) (Intermediate!5968 (undefined!6780 Bool) (index!26101 (_ BitVec 32)) (x!54960 (_ BitVec 32))) (Undefined!5968) (MissingVacant!5968 (index!26102 (_ BitVec 32))) )
))
(declare-fun lt!265481 () SeekEntryResult!5968)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584023 (= res!371985 (or (= lt!265481 (MissingZero!5968 i!1108)) (= lt!265481 (MissingVacant!5968 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36501 (_ BitVec 32)) SeekEntryResult!5968)

(assert (=> b!584023 (= lt!265481 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584024 () Bool)

(declare-fun res!371988 () Bool)

(assert (=> b!584024 (=> (not res!371988) (not e!334468))))

(assert (=> b!584024 (= res!371988 (and (= (size!17885 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17885 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17885 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584025 () Bool)

(declare-fun res!371992 () Bool)

(assert (=> b!584025 (=> (not res!371992) (not e!334469))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!584025 (= res!371992 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17521 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17521 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584026 () Bool)

(declare-fun res!371991 () Bool)

(assert (=> b!584026 (=> (not res!371991) (not e!334469))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36501 (_ BitVec 32)) SeekEntryResult!5968)

(assert (=> b!584026 (= res!371991 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17521 a!2986) j!136) a!2986 mask!3053) (Found!5968 j!136)))))

(declare-fun b!584028 () Bool)

(declare-fun res!371989 () Bool)

(assert (=> b!584028 (=> (not res!371989) (not e!334468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584028 (= res!371989 (validKeyInArray!0 k0!1786))))

(declare-fun b!584027 () Bool)

(assert (=> b!584027 (= e!334471 false)))

(declare-fun lt!265480 () SeekEntryResult!5968)

(assert (=> b!584027 (= lt!265480 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265479 vacantSpotIndex!68 (select (arr!17521 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!371987 () Bool)

(assert (=> start!53646 (=> (not res!371987) (not e!334468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53646 (= res!371987 (validMask!0 mask!3053))))

(assert (=> start!53646 e!334468))

(assert (=> start!53646 true))

(declare-fun array_inv!13295 (array!36501) Bool)

(assert (=> start!53646 (array_inv!13295 a!2986)))

(declare-fun b!584029 () Bool)

(declare-fun res!371986 () Bool)

(assert (=> b!584029 (=> (not res!371986) (not e!334468))))

(assert (=> b!584029 (= res!371986 (validKeyInArray!0 (select (arr!17521 a!2986) j!136)))))

(declare-fun b!584030 () Bool)

(declare-fun res!371995 () Bool)

(assert (=> b!584030 (=> (not res!371995) (not e!334469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36501 (_ BitVec 32)) Bool)

(assert (=> b!584030 (= res!371995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53646 res!371987) b!584024))

(assert (= (and b!584024 res!371988) b!584029))

(assert (= (and b!584029 res!371986) b!584028))

(assert (= (and b!584028 res!371989) b!584021))

(assert (= (and b!584021 res!371990) b!584023))

(assert (= (and b!584023 res!371985) b!584030))

(assert (= (and b!584030 res!371995) b!584019))

(assert (= (and b!584019 res!371994) b!584025))

(assert (= (and b!584025 res!371992) b!584026))

(assert (= (and b!584026 res!371991) b!584020))

(assert (= (and b!584020 res!371996) b!584022))

(assert (= (and b!584022 res!371993) b!584027))

(declare-fun m!562449 () Bool)

(assert (=> b!584028 m!562449))

(declare-fun m!562451 () Bool)

(assert (=> start!53646 m!562451))

(declare-fun m!562453 () Bool)

(assert (=> start!53646 m!562453))

(declare-fun m!562455 () Bool)

(assert (=> b!584027 m!562455))

(assert (=> b!584027 m!562455))

(declare-fun m!562457 () Bool)

(assert (=> b!584027 m!562457))

(declare-fun m!562459 () Bool)

(assert (=> b!584019 m!562459))

(declare-fun m!562461 () Bool)

(assert (=> b!584025 m!562461))

(declare-fun m!562463 () Bool)

(assert (=> b!584025 m!562463))

(declare-fun m!562465 () Bool)

(assert (=> b!584025 m!562465))

(declare-fun m!562467 () Bool)

(assert (=> b!584023 m!562467))

(assert (=> b!584029 m!562455))

(assert (=> b!584029 m!562455))

(declare-fun m!562469 () Bool)

(assert (=> b!584029 m!562469))

(assert (=> b!584026 m!562455))

(assert (=> b!584026 m!562455))

(declare-fun m!562471 () Bool)

(assert (=> b!584026 m!562471))

(declare-fun m!562473 () Bool)

(assert (=> b!584022 m!562473))

(declare-fun m!562475 () Bool)

(assert (=> b!584030 m!562475))

(declare-fun m!562477 () Bool)

(assert (=> b!584020 m!562477))

(assert (=> b!584020 m!562455))

(declare-fun m!562479 () Bool)

(assert (=> b!584021 m!562479))

(check-sat (not b!584023) (not b!584019) (not b!584021) (not b!584022) (not b!584027) (not b!584026) (not start!53646) (not b!584029) (not b!584030) (not b!584028))
(check-sat)
