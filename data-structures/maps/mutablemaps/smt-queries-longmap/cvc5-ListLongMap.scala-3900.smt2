; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53428 () Bool)

(assert start!53428)

(declare-fun b!580863 () Bool)

(declare-fun res!368832 () Bool)

(declare-fun e!333428 () Bool)

(assert (=> b!580863 (=> (not res!368832) (not e!333428))))

(declare-datatypes ((array!36283 0))(
  ( (array!36284 (arr!17412 (Array (_ BitVec 32) (_ BitVec 64))) (size!17776 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36283)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580863 (= res!368832 (validKeyInArray!0 (select (arr!17412 a!2986) j!136)))))

(declare-fun b!580864 () Bool)

(declare-fun e!333430 () Bool)

(assert (=> b!580864 (= e!333430 false)))

(declare-datatypes ((SeekEntryResult!5859 0))(
  ( (MissingZero!5859 (index!25663 (_ BitVec 32))) (Found!5859 (index!25664 (_ BitVec 32))) (Intermediate!5859 (undefined!6671 Bool) (index!25665 (_ BitVec 32)) (x!54563 (_ BitVec 32))) (Undefined!5859) (MissingVacant!5859 (index!25666 (_ BitVec 32))) )
))
(declare-fun lt!264794 () SeekEntryResult!5859)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36283 (_ BitVec 32)) SeekEntryResult!5859)

(assert (=> b!580864 (= lt!264794 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17412 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580865 () Bool)

(declare-fun res!368834 () Bool)

(assert (=> b!580865 (=> (not res!368834) (not e!333430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36283 (_ BitVec 32)) Bool)

(assert (=> b!580865 (= res!368834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580866 () Bool)

(declare-fun res!368830 () Bool)

(assert (=> b!580866 (=> (not res!368830) (not e!333428))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580866 (= res!368830 (and (= (size!17776 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17776 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17776 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580867 () Bool)

(declare-fun res!368837 () Bool)

(assert (=> b!580867 (=> (not res!368837) (not e!333428))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580867 (= res!368837 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580868 () Bool)

(declare-fun res!368835 () Bool)

(assert (=> b!580868 (=> (not res!368835) (not e!333428))))

(assert (=> b!580868 (= res!368835 (validKeyInArray!0 k!1786))))

(declare-fun res!368836 () Bool)

(assert (=> start!53428 (=> (not res!368836) (not e!333428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53428 (= res!368836 (validMask!0 mask!3053))))

(assert (=> start!53428 e!333428))

(assert (=> start!53428 true))

(declare-fun array_inv!13186 (array!36283) Bool)

(assert (=> start!53428 (array_inv!13186 a!2986)))

(declare-fun b!580869 () Bool)

(declare-fun res!368833 () Bool)

(assert (=> b!580869 (=> (not res!368833) (not e!333430))))

(assert (=> b!580869 (= res!368833 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17412 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17412 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580870 () Bool)

(assert (=> b!580870 (= e!333428 e!333430)))

(declare-fun res!368829 () Bool)

(assert (=> b!580870 (=> (not res!368829) (not e!333430))))

(declare-fun lt!264793 () SeekEntryResult!5859)

(assert (=> b!580870 (= res!368829 (or (= lt!264793 (MissingZero!5859 i!1108)) (= lt!264793 (MissingVacant!5859 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36283 (_ BitVec 32)) SeekEntryResult!5859)

(assert (=> b!580870 (= lt!264793 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580871 () Bool)

(declare-fun res!368831 () Bool)

(assert (=> b!580871 (=> (not res!368831) (not e!333430))))

(declare-datatypes ((List!11506 0))(
  ( (Nil!11503) (Cons!11502 (h!12547 (_ BitVec 64)) (t!17742 List!11506)) )
))
(declare-fun arrayNoDuplicates!0 (array!36283 (_ BitVec 32) List!11506) Bool)

(assert (=> b!580871 (= res!368831 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11503))))

(assert (= (and start!53428 res!368836) b!580866))

(assert (= (and b!580866 res!368830) b!580863))

(assert (= (and b!580863 res!368832) b!580868))

(assert (= (and b!580868 res!368835) b!580867))

(assert (= (and b!580867 res!368837) b!580870))

(assert (= (and b!580870 res!368829) b!580865))

(assert (= (and b!580865 res!368834) b!580871))

(assert (= (and b!580871 res!368831) b!580869))

(assert (= (and b!580869 res!368833) b!580864))

(declare-fun m!559471 () Bool)

(assert (=> b!580867 m!559471))

(declare-fun m!559473 () Bool)

(assert (=> b!580868 m!559473))

(declare-fun m!559475 () Bool)

(assert (=> b!580871 m!559475))

(declare-fun m!559477 () Bool)

(assert (=> b!580865 m!559477))

(declare-fun m!559479 () Bool)

(assert (=> b!580863 m!559479))

(assert (=> b!580863 m!559479))

(declare-fun m!559481 () Bool)

(assert (=> b!580863 m!559481))

(assert (=> b!580864 m!559479))

(assert (=> b!580864 m!559479))

(declare-fun m!559483 () Bool)

(assert (=> b!580864 m!559483))

(declare-fun m!559485 () Bool)

(assert (=> b!580870 m!559485))

(declare-fun m!559487 () Bool)

(assert (=> start!53428 m!559487))

(declare-fun m!559489 () Bool)

(assert (=> start!53428 m!559489))

(declare-fun m!559491 () Bool)

(assert (=> b!580869 m!559491))

(declare-fun m!559493 () Bool)

(assert (=> b!580869 m!559493))

(declare-fun m!559495 () Bool)

(assert (=> b!580869 m!559495))

(push 1)

