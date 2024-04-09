; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53670 () Bool)

(assert start!53670)

(declare-fun b!584451 () Bool)

(declare-fun e!334613 () Bool)

(declare-fun e!334615 () Bool)

(assert (=> b!584451 (= e!334613 e!334615)))

(declare-fun res!372428 () Bool)

(assert (=> b!584451 (=> (not res!372428) (not e!334615))))

(declare-datatypes ((SeekEntryResult!5980 0))(
  ( (MissingZero!5980 (index!26147 (_ BitVec 32))) (Found!5980 (index!26148 (_ BitVec 32))) (Intermediate!5980 (undefined!6792 Bool) (index!26149 (_ BitVec 32)) (x!55004 (_ BitVec 32))) (Undefined!5980) (MissingVacant!5980 (index!26150 (_ BitVec 32))) )
))
(declare-fun lt!265589 () SeekEntryResult!5980)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584451 (= res!372428 (or (= lt!265589 (MissingZero!5980 i!1108)) (= lt!265589 (MissingVacant!5980 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36525 0))(
  ( (array!36526 (arr!17533 (Array (_ BitVec 32) (_ BitVec 64))) (size!17897 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36525)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36525 (_ BitVec 32)) SeekEntryResult!5980)

(assert (=> b!584451 (= lt!265589 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584452 () Bool)

(declare-fun res!372420 () Bool)

(assert (=> b!584452 (=> (not res!372420) (not e!334615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36525 (_ BitVec 32)) Bool)

(assert (=> b!584452 (= res!372420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584453 () Bool)

(declare-fun e!334614 () Bool)

(assert (=> b!584453 (= e!334615 e!334614)))

(declare-fun res!372426 () Bool)

(assert (=> b!584453 (=> (not res!372426) (not e!334614))))

(declare-fun lt!265588 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!584453 (= res!372426 (and (bvsge lt!265588 #b00000000000000000000000000000000) (bvslt lt!265588 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584453 (= lt!265588 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584454 () Bool)

(declare-fun res!372419 () Bool)

(assert (=> b!584454 (=> (not res!372419) (not e!334615))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!584454 (= res!372419 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17533 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17533 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584455 () Bool)

(declare-fun res!372418 () Bool)

(assert (=> b!584455 (=> (not res!372418) (not e!334613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584455 (= res!372418 (validKeyInArray!0 k0!1786))))

(declare-fun b!584456 () Bool)

(declare-fun res!372423 () Bool)

(assert (=> b!584456 (=> (not res!372423) (not e!334615))))

(declare-datatypes ((List!11627 0))(
  ( (Nil!11624) (Cons!11623 (h!12668 (_ BitVec 64)) (t!17863 List!11627)) )
))
(declare-fun arrayNoDuplicates!0 (array!36525 (_ BitVec 32) List!11627) Bool)

(assert (=> b!584456 (= res!372423 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11624))))

(declare-fun b!584457 () Bool)

(declare-fun res!372425 () Bool)

(assert (=> b!584457 (=> (not res!372425) (not e!334615))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36525 (_ BitVec 32)) SeekEntryResult!5980)

(assert (=> b!584457 (= res!372425 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17533 a!2986) j!136) a!2986 mask!3053) (Found!5980 j!136)))))

(declare-fun b!584458 () Bool)

(declare-fun res!372417 () Bool)

(assert (=> b!584458 (=> (not res!372417) (not e!334615))))

(assert (=> b!584458 (= res!372417 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17533 a!2986) index!984) (select (arr!17533 a!2986) j!136))) (not (= (select (arr!17533 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584459 () Bool)

(declare-fun res!372424 () Bool)

(assert (=> b!584459 (=> (not res!372424) (not e!334613))))

(assert (=> b!584459 (= res!372424 (and (= (size!17897 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17897 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17897 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584460 () Bool)

(assert (=> b!584460 (= e!334614 false)))

(declare-fun lt!265587 () SeekEntryResult!5980)

(assert (=> b!584460 (= lt!265587 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265588 vacantSpotIndex!68 (select (arr!17533 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!372427 () Bool)

(assert (=> start!53670 (=> (not res!372427) (not e!334613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53670 (= res!372427 (validMask!0 mask!3053))))

(assert (=> start!53670 e!334613))

(assert (=> start!53670 true))

(declare-fun array_inv!13307 (array!36525) Bool)

(assert (=> start!53670 (array_inv!13307 a!2986)))

(declare-fun b!584461 () Bool)

(declare-fun res!372422 () Bool)

(assert (=> b!584461 (=> (not res!372422) (not e!334613))))

(declare-fun arrayContainsKey!0 (array!36525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584461 (= res!372422 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584462 () Bool)

(declare-fun res!372421 () Bool)

(assert (=> b!584462 (=> (not res!372421) (not e!334613))))

(assert (=> b!584462 (= res!372421 (validKeyInArray!0 (select (arr!17533 a!2986) j!136)))))

(assert (= (and start!53670 res!372427) b!584459))

(assert (= (and b!584459 res!372424) b!584462))

(assert (= (and b!584462 res!372421) b!584455))

(assert (= (and b!584455 res!372418) b!584461))

(assert (= (and b!584461 res!372422) b!584451))

(assert (= (and b!584451 res!372428) b!584452))

(assert (= (and b!584452 res!372420) b!584456))

(assert (= (and b!584456 res!372423) b!584454))

(assert (= (and b!584454 res!372419) b!584457))

(assert (= (and b!584457 res!372425) b!584458))

(assert (= (and b!584458 res!372417) b!584453))

(assert (= (and b!584453 res!372426) b!584460))

(declare-fun m!562833 () Bool)

(assert (=> b!584461 m!562833))

(declare-fun m!562835 () Bool)

(assert (=> b!584458 m!562835))

(declare-fun m!562837 () Bool)

(assert (=> b!584458 m!562837))

(declare-fun m!562839 () Bool)

(assert (=> b!584452 m!562839))

(assert (=> b!584460 m!562837))

(assert (=> b!584460 m!562837))

(declare-fun m!562841 () Bool)

(assert (=> b!584460 m!562841))

(declare-fun m!562843 () Bool)

(assert (=> b!584456 m!562843))

(assert (=> b!584457 m!562837))

(assert (=> b!584457 m!562837))

(declare-fun m!562845 () Bool)

(assert (=> b!584457 m!562845))

(declare-fun m!562847 () Bool)

(assert (=> b!584453 m!562847))

(declare-fun m!562849 () Bool)

(assert (=> b!584454 m!562849))

(declare-fun m!562851 () Bool)

(assert (=> b!584454 m!562851))

(declare-fun m!562853 () Bool)

(assert (=> b!584454 m!562853))

(declare-fun m!562855 () Bool)

(assert (=> b!584455 m!562855))

(declare-fun m!562857 () Bool)

(assert (=> start!53670 m!562857))

(declare-fun m!562859 () Bool)

(assert (=> start!53670 m!562859))

(assert (=> b!584462 m!562837))

(assert (=> b!584462 m!562837))

(declare-fun m!562861 () Bool)

(assert (=> b!584462 m!562861))

(declare-fun m!562863 () Bool)

(assert (=> b!584451 m!562863))

(check-sat (not b!584457) (not b!584462) (not b!584453) (not b!584460) (not b!584455) (not b!584451) (not b!584456) (not b!584452) (not b!584461) (not start!53670))
(check-sat)
