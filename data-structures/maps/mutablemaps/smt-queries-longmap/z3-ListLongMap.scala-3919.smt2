; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53544 () Bool)

(assert start!53544)

(declare-fun res!370424 () Bool)

(declare-fun e!333950 () Bool)

(assert (=> start!53544 (=> (not res!370424) (not e!333950))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53544 (= res!370424 (validMask!0 mask!3053))))

(assert (=> start!53544 e!333950))

(assert (=> start!53544 true))

(declare-datatypes ((array!36399 0))(
  ( (array!36400 (arr!17470 (Array (_ BitVec 32) (_ BitVec 64))) (size!17834 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36399)

(declare-fun array_inv!13244 (array!36399) Bool)

(assert (=> start!53544 (array_inv!13244 a!2986)))

(declare-fun b!582456 () Bool)

(declare-fun res!370428 () Bool)

(declare-fun e!333952 () Bool)

(assert (=> b!582456 (=> (not res!370428) (not e!333952))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582456 (= res!370428 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17470 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17470 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582457 () Bool)

(declare-fun res!370422 () Bool)

(assert (=> b!582457 (=> (not res!370422) (not e!333950))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582457 (= res!370422 (and (= (size!17834 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17834 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17834 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582458 () Bool)

(assert (=> b!582458 (= e!333950 e!333952)))

(declare-fun res!370423 () Bool)

(assert (=> b!582458 (=> (not res!370423) (not e!333952))))

(declare-datatypes ((SeekEntryResult!5917 0))(
  ( (MissingZero!5917 (index!25895 (_ BitVec 32))) (Found!5917 (index!25896 (_ BitVec 32))) (Intermediate!5917 (undefined!6729 Bool) (index!25897 (_ BitVec 32)) (x!54773 (_ BitVec 32))) (Undefined!5917) (MissingVacant!5917 (index!25898 (_ BitVec 32))) )
))
(declare-fun lt!265124 () SeekEntryResult!5917)

(assert (=> b!582458 (= res!370423 (or (= lt!265124 (MissingZero!5917 i!1108)) (= lt!265124 (MissingVacant!5917 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36399 (_ BitVec 32)) SeekEntryResult!5917)

(assert (=> b!582458 (= lt!265124 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582459 () Bool)

(declare-fun res!370425 () Bool)

(assert (=> b!582459 (=> (not res!370425) (not e!333952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36399 (_ BitVec 32)) Bool)

(assert (=> b!582459 (= res!370425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582460 () Bool)

(declare-fun res!370429 () Bool)

(assert (=> b!582460 (=> (not res!370429) (not e!333950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582460 (= res!370429 (validKeyInArray!0 k0!1786))))

(declare-fun b!582461 () Bool)

(assert (=> b!582461 (= e!333952 false)))

(declare-fun lt!265123 () SeekEntryResult!5917)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36399 (_ BitVec 32)) SeekEntryResult!5917)

(assert (=> b!582461 (= lt!265123 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17470 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582462 () Bool)

(declare-fun res!370430 () Bool)

(assert (=> b!582462 (=> (not res!370430) (not e!333950))))

(assert (=> b!582462 (= res!370430 (validKeyInArray!0 (select (arr!17470 a!2986) j!136)))))

(declare-fun b!582463 () Bool)

(declare-fun res!370427 () Bool)

(assert (=> b!582463 (=> (not res!370427) (not e!333952))))

(declare-datatypes ((List!11564 0))(
  ( (Nil!11561) (Cons!11560 (h!12605 (_ BitVec 64)) (t!17800 List!11564)) )
))
(declare-fun arrayNoDuplicates!0 (array!36399 (_ BitVec 32) List!11564) Bool)

(assert (=> b!582463 (= res!370427 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11561))))

(declare-fun b!582464 () Bool)

(declare-fun res!370426 () Bool)

(assert (=> b!582464 (=> (not res!370426) (not e!333950))))

(declare-fun arrayContainsKey!0 (array!36399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582464 (= res!370426 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53544 res!370424) b!582457))

(assert (= (and b!582457 res!370422) b!582462))

(assert (= (and b!582462 res!370430) b!582460))

(assert (= (and b!582460 res!370429) b!582464))

(assert (= (and b!582464 res!370426) b!582458))

(assert (= (and b!582458 res!370423) b!582459))

(assert (= (and b!582459 res!370425) b!582463))

(assert (= (and b!582463 res!370427) b!582456))

(assert (= (and b!582456 res!370428) b!582461))

(declare-fun m!561003 () Bool)

(assert (=> b!582463 m!561003))

(declare-fun m!561005 () Bool)

(assert (=> b!582459 m!561005))

(declare-fun m!561007 () Bool)

(assert (=> b!582458 m!561007))

(declare-fun m!561009 () Bool)

(assert (=> b!582461 m!561009))

(assert (=> b!582461 m!561009))

(declare-fun m!561011 () Bool)

(assert (=> b!582461 m!561011))

(declare-fun m!561013 () Bool)

(assert (=> start!53544 m!561013))

(declare-fun m!561015 () Bool)

(assert (=> start!53544 m!561015))

(declare-fun m!561017 () Bool)

(assert (=> b!582460 m!561017))

(declare-fun m!561019 () Bool)

(assert (=> b!582464 m!561019))

(declare-fun m!561021 () Bool)

(assert (=> b!582456 m!561021))

(declare-fun m!561023 () Bool)

(assert (=> b!582456 m!561023))

(declare-fun m!561025 () Bool)

(assert (=> b!582456 m!561025))

(assert (=> b!582462 m!561009))

(assert (=> b!582462 m!561009))

(declare-fun m!561027 () Bool)

(assert (=> b!582462 m!561027))

(check-sat (not b!582462) (not b!582463) (not b!582459) (not b!582464) (not b!582460) (not b!582461) (not b!582458) (not start!53544))
(check-sat)
