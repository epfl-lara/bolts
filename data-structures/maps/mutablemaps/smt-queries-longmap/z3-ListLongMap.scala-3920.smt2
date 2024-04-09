; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53550 () Bool)

(assert start!53550)

(declare-fun b!582537 () Bool)

(declare-fun res!370504 () Bool)

(declare-fun e!333978 () Bool)

(assert (=> b!582537 (=> (not res!370504) (not e!333978))))

(declare-datatypes ((array!36405 0))(
  ( (array!36406 (arr!17473 (Array (_ BitVec 32) (_ BitVec 64))) (size!17837 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36405)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36405 (_ BitVec 32)) Bool)

(assert (=> b!582537 (= res!370504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582538 () Bool)

(declare-fun res!370505 () Bool)

(assert (=> b!582538 (=> (not res!370505) (not e!333978))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582538 (= res!370505 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17473 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17473 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582539 () Bool)

(assert (=> b!582539 (= e!333978 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5920 0))(
  ( (MissingZero!5920 (index!25907 (_ BitVec 32))) (Found!5920 (index!25908 (_ BitVec 32))) (Intermediate!5920 (undefined!6732 Bool) (index!25909 (_ BitVec 32)) (x!54784 (_ BitVec 32))) (Undefined!5920) (MissingVacant!5920 (index!25910 (_ BitVec 32))) )
))
(declare-fun lt!265141 () SeekEntryResult!5920)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36405 (_ BitVec 32)) SeekEntryResult!5920)

(assert (=> b!582539 (= lt!265141 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17473 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582540 () Bool)

(declare-fun res!370511 () Bool)

(declare-fun e!333979 () Bool)

(assert (=> b!582540 (=> (not res!370511) (not e!333979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582540 (= res!370511 (validKeyInArray!0 (select (arr!17473 a!2986) j!136)))))

(declare-fun b!582542 () Bool)

(declare-fun res!370503 () Bool)

(assert (=> b!582542 (=> (not res!370503) (not e!333978))))

(declare-datatypes ((List!11567 0))(
  ( (Nil!11564) (Cons!11563 (h!12608 (_ BitVec 64)) (t!17803 List!11567)) )
))
(declare-fun arrayNoDuplicates!0 (array!36405 (_ BitVec 32) List!11567) Bool)

(assert (=> b!582542 (= res!370503 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11564))))

(declare-fun b!582543 () Bool)

(declare-fun res!370510 () Bool)

(assert (=> b!582543 (=> (not res!370510) (not e!333979))))

(assert (=> b!582543 (= res!370510 (and (= (size!17837 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17837 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17837 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582544 () Bool)

(declare-fun res!370506 () Bool)

(assert (=> b!582544 (=> (not res!370506) (not e!333979))))

(declare-fun arrayContainsKey!0 (array!36405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582544 (= res!370506 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582545 () Bool)

(assert (=> b!582545 (= e!333979 e!333978)))

(declare-fun res!370509 () Bool)

(assert (=> b!582545 (=> (not res!370509) (not e!333978))))

(declare-fun lt!265142 () SeekEntryResult!5920)

(assert (=> b!582545 (= res!370509 (or (= lt!265142 (MissingZero!5920 i!1108)) (= lt!265142 (MissingVacant!5920 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36405 (_ BitVec 32)) SeekEntryResult!5920)

(assert (=> b!582545 (= lt!265142 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!370507 () Bool)

(assert (=> start!53550 (=> (not res!370507) (not e!333979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53550 (= res!370507 (validMask!0 mask!3053))))

(assert (=> start!53550 e!333979))

(assert (=> start!53550 true))

(declare-fun array_inv!13247 (array!36405) Bool)

(assert (=> start!53550 (array_inv!13247 a!2986)))

(declare-fun b!582541 () Bool)

(declare-fun res!370508 () Bool)

(assert (=> b!582541 (=> (not res!370508) (not e!333979))))

(assert (=> b!582541 (= res!370508 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53550 res!370507) b!582543))

(assert (= (and b!582543 res!370510) b!582540))

(assert (= (and b!582540 res!370511) b!582541))

(assert (= (and b!582541 res!370508) b!582544))

(assert (= (and b!582544 res!370506) b!582545))

(assert (= (and b!582545 res!370509) b!582537))

(assert (= (and b!582537 res!370504) b!582542))

(assert (= (and b!582542 res!370503) b!582538))

(assert (= (and b!582538 res!370505) b!582539))

(declare-fun m!561081 () Bool)

(assert (=> b!582542 m!561081))

(declare-fun m!561083 () Bool)

(assert (=> b!582540 m!561083))

(assert (=> b!582540 m!561083))

(declare-fun m!561085 () Bool)

(assert (=> b!582540 m!561085))

(declare-fun m!561087 () Bool)

(assert (=> b!582537 m!561087))

(declare-fun m!561089 () Bool)

(assert (=> start!53550 m!561089))

(declare-fun m!561091 () Bool)

(assert (=> start!53550 m!561091))

(declare-fun m!561093 () Bool)

(assert (=> b!582544 m!561093))

(declare-fun m!561095 () Bool)

(assert (=> b!582541 m!561095))

(declare-fun m!561097 () Bool)

(assert (=> b!582538 m!561097))

(declare-fun m!561099 () Bool)

(assert (=> b!582538 m!561099))

(declare-fun m!561101 () Bool)

(assert (=> b!582538 m!561101))

(declare-fun m!561103 () Bool)

(assert (=> b!582545 m!561103))

(assert (=> b!582539 m!561083))

(assert (=> b!582539 m!561083))

(declare-fun m!561105 () Bool)

(assert (=> b!582539 m!561105))

(check-sat (not b!582545) (not b!582537) (not b!582544) (not b!582542) (not b!582541) (not start!53550) (not b!582539) (not b!582540))
(check-sat)
