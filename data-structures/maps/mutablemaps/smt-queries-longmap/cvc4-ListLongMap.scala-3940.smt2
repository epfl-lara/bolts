; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53672 () Bool)

(assert start!53672)

(declare-fun res!372453 () Bool)

(declare-fun e!334624 () Bool)

(assert (=> start!53672 (=> (not res!372453) (not e!334624))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53672 (= res!372453 (validMask!0 mask!3053))))

(assert (=> start!53672 e!334624))

(assert (=> start!53672 true))

(declare-datatypes ((array!36527 0))(
  ( (array!36528 (arr!17534 (Array (_ BitVec 32) (_ BitVec 64))) (size!17898 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36527)

(declare-fun array_inv!13308 (array!36527) Bool)

(assert (=> start!53672 (array_inv!13308 a!2986)))

(declare-fun b!584487 () Bool)

(declare-fun res!372461 () Bool)

(declare-fun e!334626 () Bool)

(assert (=> b!584487 (=> (not res!372461) (not e!334626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36527 (_ BitVec 32)) Bool)

(assert (=> b!584487 (= res!372461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584488 () Bool)

(declare-fun res!372464 () Bool)

(assert (=> b!584488 (=> (not res!372464) (not e!334624))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584488 (= res!372464 (validKeyInArray!0 k!1786))))

(declare-fun b!584489 () Bool)

(declare-fun res!372460 () Bool)

(assert (=> b!584489 (=> (not res!372460) (not e!334624))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!584489 (= res!372460 (validKeyInArray!0 (select (arr!17534 a!2986) j!136)))))

(declare-fun b!584490 () Bool)

(declare-fun res!372454 () Bool)

(assert (=> b!584490 (=> (not res!372454) (not e!334624))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584490 (= res!372454 (and (= (size!17898 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17898 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17898 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584491 () Bool)

(declare-fun res!372459 () Bool)

(assert (=> b!584491 (=> (not res!372459) (not e!334624))))

(declare-fun arrayContainsKey!0 (array!36527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584491 (= res!372459 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584492 () Bool)

(declare-fun e!334627 () Bool)

(assert (=> b!584492 (= e!334627 false)))

(declare-datatypes ((SeekEntryResult!5981 0))(
  ( (MissingZero!5981 (index!26151 (_ BitVec 32))) (Found!5981 (index!26152 (_ BitVec 32))) (Intermediate!5981 (undefined!6793 Bool) (index!26153 (_ BitVec 32)) (x!55005 (_ BitVec 32))) (Undefined!5981) (MissingVacant!5981 (index!26154 (_ BitVec 32))) )
))
(declare-fun lt!265597 () SeekEntryResult!5981)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265596 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36527 (_ BitVec 32)) SeekEntryResult!5981)

(assert (=> b!584492 (= lt!265597 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265596 vacantSpotIndex!68 (select (arr!17534 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584493 () Bool)

(declare-fun res!372456 () Bool)

(assert (=> b!584493 (=> (not res!372456) (not e!334626))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584493 (= res!372456 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17534 a!2986) j!136) a!2986 mask!3053) (Found!5981 j!136)))))

(declare-fun b!584494 () Bool)

(declare-fun res!372462 () Bool)

(assert (=> b!584494 (=> (not res!372462) (not e!334626))))

(assert (=> b!584494 (= res!372462 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17534 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17534 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584495 () Bool)

(assert (=> b!584495 (= e!334626 e!334627)))

(declare-fun res!372455 () Bool)

(assert (=> b!584495 (=> (not res!372455) (not e!334627))))

(assert (=> b!584495 (= res!372455 (and (bvsge lt!265596 #b00000000000000000000000000000000) (bvslt lt!265596 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584495 (= lt!265596 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584496 () Bool)

(declare-fun res!372457 () Bool)

(assert (=> b!584496 (=> (not res!372457) (not e!334626))))

(declare-datatypes ((List!11628 0))(
  ( (Nil!11625) (Cons!11624 (h!12669 (_ BitVec 64)) (t!17864 List!11628)) )
))
(declare-fun arrayNoDuplicates!0 (array!36527 (_ BitVec 32) List!11628) Bool)

(assert (=> b!584496 (= res!372457 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11625))))

(declare-fun b!584497 () Bool)

(assert (=> b!584497 (= e!334624 e!334626)))

(declare-fun res!372463 () Bool)

(assert (=> b!584497 (=> (not res!372463) (not e!334626))))

(declare-fun lt!265598 () SeekEntryResult!5981)

(assert (=> b!584497 (= res!372463 (or (= lt!265598 (MissingZero!5981 i!1108)) (= lt!265598 (MissingVacant!5981 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36527 (_ BitVec 32)) SeekEntryResult!5981)

(assert (=> b!584497 (= lt!265598 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584498 () Bool)

(declare-fun res!372458 () Bool)

(assert (=> b!584498 (=> (not res!372458) (not e!334626))))

(assert (=> b!584498 (= res!372458 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17534 a!2986) index!984) (select (arr!17534 a!2986) j!136))) (not (= (select (arr!17534 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53672 res!372453) b!584490))

(assert (= (and b!584490 res!372454) b!584489))

(assert (= (and b!584489 res!372460) b!584488))

(assert (= (and b!584488 res!372464) b!584491))

(assert (= (and b!584491 res!372459) b!584497))

(assert (= (and b!584497 res!372463) b!584487))

(assert (= (and b!584487 res!372461) b!584496))

(assert (= (and b!584496 res!372457) b!584494))

(assert (= (and b!584494 res!372462) b!584493))

(assert (= (and b!584493 res!372456) b!584498))

(assert (= (and b!584498 res!372458) b!584495))

(assert (= (and b!584495 res!372455) b!584492))

(declare-fun m!562865 () Bool)

(assert (=> b!584497 m!562865))

(declare-fun m!562867 () Bool)

(assert (=> b!584489 m!562867))

(assert (=> b!584489 m!562867))

(declare-fun m!562869 () Bool)

(assert (=> b!584489 m!562869))

(assert (=> b!584493 m!562867))

(assert (=> b!584493 m!562867))

(declare-fun m!562871 () Bool)

(assert (=> b!584493 m!562871))

(declare-fun m!562873 () Bool)

(assert (=> b!584491 m!562873))

(declare-fun m!562875 () Bool)

(assert (=> b!584496 m!562875))

(declare-fun m!562877 () Bool)

(assert (=> b!584488 m!562877))

(declare-fun m!562879 () Bool)

(assert (=> b!584498 m!562879))

(assert (=> b!584498 m!562867))

(declare-fun m!562881 () Bool)

(assert (=> start!53672 m!562881))

(declare-fun m!562883 () Bool)

(assert (=> start!53672 m!562883))

(declare-fun m!562885 () Bool)

(assert (=> b!584494 m!562885))

(declare-fun m!562887 () Bool)

(assert (=> b!584494 m!562887))

(declare-fun m!562889 () Bool)

(assert (=> b!584494 m!562889))

(assert (=> b!584492 m!562867))

(assert (=> b!584492 m!562867))

(declare-fun m!562891 () Bool)

(assert (=> b!584492 m!562891))

(declare-fun m!562893 () Bool)

(assert (=> b!584495 m!562893))

(declare-fun m!562895 () Bool)

(assert (=> b!584487 m!562895))

(push 1)

(assert (not b!584496))

(assert (not b!584489))

(assert (not b!584491))

