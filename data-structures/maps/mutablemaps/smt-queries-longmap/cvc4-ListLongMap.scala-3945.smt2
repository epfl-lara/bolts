; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53702 () Bool)

(assert start!53702)

(declare-fun b!585027 () Bool)

(declare-fun e!334804 () Bool)

(declare-fun e!334806 () Bool)

(assert (=> b!585027 (= e!334804 e!334806)))

(declare-fun res!373001 () Bool)

(assert (=> b!585027 (=> (not res!373001) (not e!334806))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265732 () (_ BitVec 32))

(assert (=> b!585027 (= res!373001 (and (bvsge lt!265732 #b00000000000000000000000000000000) (bvslt lt!265732 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585027 (= lt!265732 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585028 () Bool)

(declare-fun res!373000 () Bool)

(declare-fun e!334807 () Bool)

(assert (=> b!585028 (=> (not res!373000) (not e!334807))))

(declare-datatypes ((array!36557 0))(
  ( (array!36558 (arr!17549 (Array (_ BitVec 32) (_ BitVec 64))) (size!17913 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36557)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585028 (= res!373000 (validKeyInArray!0 (select (arr!17549 a!2986) j!136)))))

(declare-fun b!585029 () Bool)

(declare-fun res!372998 () Bool)

(assert (=> b!585029 (=> (not res!372998) (not e!334804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36557 (_ BitVec 32)) Bool)

(assert (=> b!585029 (= res!372998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585030 () Bool)

(declare-fun res!372999 () Bool)

(assert (=> b!585030 (=> (not res!372999) (not e!334804))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!585030 (= res!372999 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17549 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17549 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!372995 () Bool)

(assert (=> start!53702 (=> (not res!372995) (not e!334807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53702 (= res!372995 (validMask!0 mask!3053))))

(assert (=> start!53702 e!334807))

(assert (=> start!53702 true))

(declare-fun array_inv!13323 (array!36557) Bool)

(assert (=> start!53702 (array_inv!13323 a!2986)))

(declare-fun b!585031 () Bool)

(assert (=> b!585031 (= e!334806 false)))

(declare-datatypes ((SeekEntryResult!5996 0))(
  ( (MissingZero!5996 (index!26211 (_ BitVec 32))) (Found!5996 (index!26212 (_ BitVec 32))) (Intermediate!5996 (undefined!6808 Bool) (index!26213 (_ BitVec 32)) (x!55060 (_ BitVec 32))) (Undefined!5996) (MissingVacant!5996 (index!26214 (_ BitVec 32))) )
))
(declare-fun lt!265733 () SeekEntryResult!5996)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36557 (_ BitVec 32)) SeekEntryResult!5996)

(assert (=> b!585031 (= lt!265733 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265732 vacantSpotIndex!68 (select (arr!17549 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585032 () Bool)

(declare-fun res!372994 () Bool)

(assert (=> b!585032 (=> (not res!372994) (not e!334807))))

(declare-fun arrayContainsKey!0 (array!36557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585032 (= res!372994 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585033 () Bool)

(declare-fun res!372996 () Bool)

(assert (=> b!585033 (=> (not res!372996) (not e!334804))))

(declare-datatypes ((List!11643 0))(
  ( (Nil!11640) (Cons!11639 (h!12684 (_ BitVec 64)) (t!17879 List!11643)) )
))
(declare-fun arrayNoDuplicates!0 (array!36557 (_ BitVec 32) List!11643) Bool)

(assert (=> b!585033 (= res!372996 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11640))))

(declare-fun b!585034 () Bool)

(declare-fun res!373002 () Bool)

(assert (=> b!585034 (=> (not res!373002) (not e!334807))))

(assert (=> b!585034 (= res!373002 (and (= (size!17913 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17913 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17913 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585035 () Bool)

(declare-fun res!373003 () Bool)

(assert (=> b!585035 (=> (not res!373003) (not e!334807))))

(assert (=> b!585035 (= res!373003 (validKeyInArray!0 k!1786))))

(declare-fun b!585036 () Bool)

(declare-fun res!372993 () Bool)

(assert (=> b!585036 (=> (not res!372993) (not e!334804))))

(assert (=> b!585036 (= res!372993 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17549 a!2986) j!136) a!2986 mask!3053) (Found!5996 j!136)))))

(declare-fun b!585037 () Bool)

(declare-fun res!373004 () Bool)

(assert (=> b!585037 (=> (not res!373004) (not e!334804))))

(assert (=> b!585037 (= res!373004 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17549 a!2986) index!984) (select (arr!17549 a!2986) j!136))) (not (= (select (arr!17549 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585038 () Bool)

(assert (=> b!585038 (= e!334807 e!334804)))

(declare-fun res!372997 () Bool)

(assert (=> b!585038 (=> (not res!372997) (not e!334804))))

(declare-fun lt!265731 () SeekEntryResult!5996)

(assert (=> b!585038 (= res!372997 (or (= lt!265731 (MissingZero!5996 i!1108)) (= lt!265731 (MissingVacant!5996 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36557 (_ BitVec 32)) SeekEntryResult!5996)

(assert (=> b!585038 (= lt!265731 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53702 res!372995) b!585034))

(assert (= (and b!585034 res!373002) b!585028))

(assert (= (and b!585028 res!373000) b!585035))

(assert (= (and b!585035 res!373003) b!585032))

(assert (= (and b!585032 res!372994) b!585038))

(assert (= (and b!585038 res!372997) b!585029))

(assert (= (and b!585029 res!372998) b!585033))

(assert (= (and b!585033 res!372996) b!585030))

(assert (= (and b!585030 res!372999) b!585036))

(assert (= (and b!585036 res!372993) b!585037))

(assert (= (and b!585037 res!373004) b!585027))

(assert (= (and b!585027 res!373001) b!585031))

(declare-fun m!563345 () Bool)

(assert (=> b!585038 m!563345))

(declare-fun m!563347 () Bool)

(assert (=> b!585036 m!563347))

(assert (=> b!585036 m!563347))

(declare-fun m!563349 () Bool)

(assert (=> b!585036 m!563349))

(declare-fun m!563351 () Bool)

(assert (=> b!585033 m!563351))

(declare-fun m!563353 () Bool)

(assert (=> b!585032 m!563353))

(assert (=> b!585031 m!563347))

(assert (=> b!585031 m!563347))

(declare-fun m!563355 () Bool)

(assert (=> b!585031 m!563355))

(declare-fun m!563357 () Bool)

(assert (=> b!585027 m!563357))

(declare-fun m!563359 () Bool)

(assert (=> b!585029 m!563359))

(declare-fun m!563361 () Bool)

(assert (=> b!585030 m!563361))

(declare-fun m!563363 () Bool)

(assert (=> b!585030 m!563363))

(declare-fun m!563365 () Bool)

(assert (=> b!585030 m!563365))

(declare-fun m!563367 () Bool)

(assert (=> b!585037 m!563367))

(assert (=> b!585037 m!563347))

(declare-fun m!563369 () Bool)

(assert (=> b!585035 m!563369))

(assert (=> b!585028 m!563347))

(assert (=> b!585028 m!563347))

(declare-fun m!563371 () Bool)

(assert (=> b!585028 m!563371))

(declare-fun m!563373 () Bool)

(assert (=> start!53702 m!563373))

(declare-fun m!563375 () Bool)

(assert (=> start!53702 m!563375))

(push 1)

