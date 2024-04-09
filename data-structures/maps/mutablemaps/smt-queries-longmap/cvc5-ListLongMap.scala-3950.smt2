; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53728 () Bool)

(assert start!53728)

(declare-fun b!585484 () Bool)

(declare-fun res!373453 () Bool)

(declare-fun e!334950 () Bool)

(assert (=> b!585484 (=> (not res!373453) (not e!334950))))

(declare-datatypes ((array!36583 0))(
  ( (array!36584 (arr!17562 (Array (_ BitVec 32) (_ BitVec 64))) (size!17926 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36583)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585484 (= res!373453 (validKeyInArray!0 (select (arr!17562 a!2986) j!136)))))

(declare-fun b!585485 () Bool)

(declare-fun res!373457 () Bool)

(assert (=> b!585485 (=> (not res!373457) (not e!334950))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585485 (= res!373457 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585486 () Bool)

(declare-fun res!373459 () Bool)

(declare-fun e!334951 () Bool)

(assert (=> b!585486 (=> (not res!373459) (not e!334951))))

(declare-datatypes ((List!11656 0))(
  ( (Nil!11653) (Cons!11652 (h!12697 (_ BitVec 64)) (t!17892 List!11656)) )
))
(declare-fun arrayNoDuplicates!0 (array!36583 (_ BitVec 32) List!11656) Bool)

(assert (=> b!585486 (= res!373459 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11653))))

(declare-fun b!585487 () Bool)

(declare-fun res!373452 () Bool)

(assert (=> b!585487 (=> (not res!373452) (not e!334951))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36583 (_ BitVec 32)) Bool)

(assert (=> b!585487 (= res!373452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585488 () Bool)

(declare-fun res!373456 () Bool)

(assert (=> b!585488 (=> (not res!373456) (not e!334950))))

(assert (=> b!585488 (= res!373456 (validKeyInArray!0 k!1786))))

(declare-fun b!585489 () Bool)

(assert (=> b!585489 (= e!334950 e!334951)))

(declare-fun res!373451 () Bool)

(assert (=> b!585489 (=> (not res!373451) (not e!334951))))

(declare-datatypes ((SeekEntryResult!6009 0))(
  ( (MissingZero!6009 (index!26263 (_ BitVec 32))) (Found!6009 (index!26264 (_ BitVec 32))) (Intermediate!6009 (undefined!6821 Bool) (index!26265 (_ BitVec 32)) (x!55113 (_ BitVec 32))) (Undefined!6009) (MissingVacant!6009 (index!26266 (_ BitVec 32))) )
))
(declare-fun lt!265848 () SeekEntryResult!6009)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585489 (= res!373451 (or (= lt!265848 (MissingZero!6009 i!1108)) (= lt!265848 (MissingVacant!6009 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36583 (_ BitVec 32)) SeekEntryResult!6009)

(assert (=> b!585489 (= lt!265848 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585490 () Bool)

(declare-fun res!373454 () Bool)

(assert (=> b!585490 (=> (not res!373454) (not e!334951))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36583 (_ BitVec 32)) SeekEntryResult!6009)

(assert (=> b!585490 (= res!373454 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17562 a!2986) j!136) a!2986 mask!3053) (Found!6009 j!136)))))

(declare-fun b!585491 () Bool)

(declare-fun res!373455 () Bool)

(assert (=> b!585491 (=> (not res!373455) (not e!334950))))

(assert (=> b!585491 (= res!373455 (and (= (size!17926 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17926 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17926 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585493 () Bool)

(declare-fun res!373460 () Bool)

(assert (=> b!585493 (=> (not res!373460) (not e!334951))))

(assert (=> b!585493 (= res!373460 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17562 a!2986) index!984) (select (arr!17562 a!2986) j!136))) (not (= (select (arr!17562 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585494 () Bool)

(assert (=> b!585494 (= e!334951 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!265850 () (_ BitVec 32))

(assert (=> b!585494 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265850 vacantSpotIndex!68 (select (arr!17562 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265850 vacantSpotIndex!68 (select (store (arr!17562 a!2986) i!1108 k!1786) j!136) (array!36584 (store (arr!17562 a!2986) i!1108 k!1786) (size!17926 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18142 0))(
  ( (Unit!18143) )
))
(declare-fun lt!265849 () Unit!18142)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36583 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18142)

(assert (=> b!585494 (= lt!265849 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265850 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585494 (= lt!265850 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!373458 () Bool)

(assert (=> start!53728 (=> (not res!373458) (not e!334950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53728 (= res!373458 (validMask!0 mask!3053))))

(assert (=> start!53728 e!334950))

(assert (=> start!53728 true))

(declare-fun array_inv!13336 (array!36583) Bool)

(assert (=> start!53728 (array_inv!13336 a!2986)))

(declare-fun b!585492 () Bool)

(declare-fun res!373450 () Bool)

(assert (=> b!585492 (=> (not res!373450) (not e!334951))))

(assert (=> b!585492 (= res!373450 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17562 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17562 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53728 res!373458) b!585491))

(assert (= (and b!585491 res!373455) b!585484))

(assert (= (and b!585484 res!373453) b!585488))

(assert (= (and b!585488 res!373456) b!585485))

(assert (= (and b!585485 res!373457) b!585489))

(assert (= (and b!585489 res!373451) b!585487))

(assert (= (and b!585487 res!373452) b!585486))

(assert (= (and b!585486 res!373459) b!585492))

(assert (= (and b!585492 res!373450) b!585490))

(assert (= (and b!585490 res!373454) b!585493))

(assert (= (and b!585493 res!373460) b!585494))

(declare-fun m!563779 () Bool)

(assert (=> b!585488 m!563779))

(declare-fun m!563781 () Bool)

(assert (=> start!53728 m!563781))

(declare-fun m!563783 () Bool)

(assert (=> start!53728 m!563783))

(declare-fun m!563785 () Bool)

(assert (=> b!585493 m!563785))

(declare-fun m!563787 () Bool)

(assert (=> b!585493 m!563787))

(declare-fun m!563789 () Bool)

(assert (=> b!585487 m!563789))

(declare-fun m!563791 () Bool)

(assert (=> b!585492 m!563791))

(declare-fun m!563793 () Bool)

(assert (=> b!585492 m!563793))

(declare-fun m!563795 () Bool)

(assert (=> b!585492 m!563795))

(assert (=> b!585484 m!563787))

(assert (=> b!585484 m!563787))

(declare-fun m!563797 () Bool)

(assert (=> b!585484 m!563797))

(assert (=> b!585490 m!563787))

(assert (=> b!585490 m!563787))

(declare-fun m!563799 () Bool)

(assert (=> b!585490 m!563799))

(declare-fun m!563801 () Bool)

(assert (=> b!585494 m!563801))

(declare-fun m!563803 () Bool)

(assert (=> b!585494 m!563803))

(assert (=> b!585494 m!563787))

(assert (=> b!585494 m!563793))

(declare-fun m!563805 () Bool)

(assert (=> b!585494 m!563805))

(assert (=> b!585494 m!563803))

(declare-fun m!563807 () Bool)

(assert (=> b!585494 m!563807))

(assert (=> b!585494 m!563787))

(declare-fun m!563809 () Bool)

(assert (=> b!585494 m!563809))

(declare-fun m!563811 () Bool)

(assert (=> b!585486 m!563811))

(declare-fun m!563813 () Bool)

(assert (=> b!585485 m!563813))

(declare-fun m!563815 () Bool)

(assert (=> b!585489 m!563815))

(push 1)

