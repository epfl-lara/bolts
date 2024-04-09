; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53704 () Bool)

(assert start!53704)

(declare-fun b!585063 () Bool)

(declare-fun e!334817 () Bool)

(declare-fun e!334819 () Bool)

(assert (=> b!585063 (= e!334817 e!334819)))

(declare-fun res!373033 () Bool)

(assert (=> b!585063 (=> (not res!373033) (not e!334819))))

(declare-datatypes ((SeekEntryResult!5997 0))(
  ( (MissingZero!5997 (index!26215 (_ BitVec 32))) (Found!5997 (index!26216 (_ BitVec 32))) (Intermediate!5997 (undefined!6809 Bool) (index!26217 (_ BitVec 32)) (x!55069 (_ BitVec 32))) (Undefined!5997) (MissingVacant!5997 (index!26218 (_ BitVec 32))) )
))
(declare-fun lt!265740 () SeekEntryResult!5997)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585063 (= res!373033 (or (= lt!265740 (MissingZero!5997 i!1108)) (= lt!265740 (MissingVacant!5997 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36559 0))(
  ( (array!36560 (arr!17550 (Array (_ BitVec 32) (_ BitVec 64))) (size!17914 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36559)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36559 (_ BitVec 32)) SeekEntryResult!5997)

(assert (=> b!585063 (= lt!265740 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585064 () Bool)

(declare-fun res!373032 () Bool)

(assert (=> b!585064 (=> (not res!373032) (not e!334817))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585064 (= res!373032 (validKeyInArray!0 (select (arr!17550 a!2986) j!136)))))

(declare-fun b!585065 () Bool)

(declare-fun res!373036 () Bool)

(assert (=> b!585065 (=> (not res!373036) (not e!334817))))

(declare-fun arrayContainsKey!0 (array!36559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585065 (= res!373036 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!373040 () Bool)

(assert (=> start!53704 (=> (not res!373040) (not e!334817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53704 (= res!373040 (validMask!0 mask!3053))))

(assert (=> start!53704 e!334817))

(assert (=> start!53704 true))

(declare-fun array_inv!13324 (array!36559) Bool)

(assert (=> start!53704 (array_inv!13324 a!2986)))

(declare-fun b!585066 () Bool)

(declare-fun e!334816 () Bool)

(assert (=> b!585066 (= e!334816 false)))

(declare-fun lt!265741 () SeekEntryResult!5997)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265742 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36559 (_ BitVec 32)) SeekEntryResult!5997)

(assert (=> b!585066 (= lt!265741 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265742 vacantSpotIndex!68 (select (arr!17550 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585067 () Bool)

(declare-fun res!373031 () Bool)

(assert (=> b!585067 (=> (not res!373031) (not e!334819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36559 (_ BitVec 32)) Bool)

(assert (=> b!585067 (= res!373031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585068 () Bool)

(declare-fun res!373035 () Bool)

(assert (=> b!585068 (=> (not res!373035) (not e!334819))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585068 (= res!373035 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17550 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17550 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585069 () Bool)

(declare-fun res!373039 () Bool)

(assert (=> b!585069 (=> (not res!373039) (not e!334819))))

(assert (=> b!585069 (= res!373039 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17550 a!2986) j!136) a!2986 mask!3053) (Found!5997 j!136)))))

(declare-fun b!585070 () Bool)

(declare-fun res!373029 () Bool)

(assert (=> b!585070 (=> (not res!373029) (not e!334817))))

(assert (=> b!585070 (= res!373029 (validKeyInArray!0 k!1786))))

(declare-fun b!585071 () Bool)

(declare-fun res!373030 () Bool)

(assert (=> b!585071 (=> (not res!373030) (not e!334817))))

(assert (=> b!585071 (= res!373030 (and (= (size!17914 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17914 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17914 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585072 () Bool)

(declare-fun res!373038 () Bool)

(assert (=> b!585072 (=> (not res!373038) (not e!334819))))

(declare-datatypes ((List!11644 0))(
  ( (Nil!11641) (Cons!11640 (h!12685 (_ BitVec 64)) (t!17880 List!11644)) )
))
(declare-fun arrayNoDuplicates!0 (array!36559 (_ BitVec 32) List!11644) Bool)

(assert (=> b!585072 (= res!373038 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11641))))

(declare-fun b!585073 () Bool)

(declare-fun res!373037 () Bool)

(assert (=> b!585073 (=> (not res!373037) (not e!334819))))

(assert (=> b!585073 (= res!373037 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17550 a!2986) index!984) (select (arr!17550 a!2986) j!136))) (not (= (select (arr!17550 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585074 () Bool)

(assert (=> b!585074 (= e!334819 e!334816)))

(declare-fun res!373034 () Bool)

(assert (=> b!585074 (=> (not res!373034) (not e!334816))))

(assert (=> b!585074 (= res!373034 (and (bvsge lt!265742 #b00000000000000000000000000000000) (bvslt lt!265742 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585074 (= lt!265742 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53704 res!373040) b!585071))

(assert (= (and b!585071 res!373030) b!585064))

(assert (= (and b!585064 res!373032) b!585070))

(assert (= (and b!585070 res!373029) b!585065))

(assert (= (and b!585065 res!373036) b!585063))

(assert (= (and b!585063 res!373033) b!585067))

(assert (= (and b!585067 res!373031) b!585072))

(assert (= (and b!585072 res!373038) b!585068))

(assert (= (and b!585068 res!373035) b!585069))

(assert (= (and b!585069 res!373039) b!585073))

(assert (= (and b!585073 res!373037) b!585074))

(assert (= (and b!585074 res!373034) b!585066))

(declare-fun m!563377 () Bool)

(assert (=> b!585064 m!563377))

(assert (=> b!585064 m!563377))

(declare-fun m!563379 () Bool)

(assert (=> b!585064 m!563379))

(assert (=> b!585066 m!563377))

(assert (=> b!585066 m!563377))

(declare-fun m!563381 () Bool)

(assert (=> b!585066 m!563381))

(declare-fun m!563383 () Bool)

(assert (=> b!585065 m!563383))

(assert (=> b!585069 m!563377))

(assert (=> b!585069 m!563377))

(declare-fun m!563385 () Bool)

(assert (=> b!585069 m!563385))

(declare-fun m!563387 () Bool)

(assert (=> b!585073 m!563387))

(assert (=> b!585073 m!563377))

(declare-fun m!563389 () Bool)

(assert (=> b!585072 m!563389))

(declare-fun m!563391 () Bool)

(assert (=> b!585063 m!563391))

(declare-fun m!563393 () Bool)

(assert (=> start!53704 m!563393))

(declare-fun m!563395 () Bool)

(assert (=> start!53704 m!563395))

(declare-fun m!563397 () Bool)

(assert (=> b!585067 m!563397))

(declare-fun m!563399 () Bool)

(assert (=> b!585070 m!563399))

(declare-fun m!563401 () Bool)

(assert (=> b!585068 m!563401))

(declare-fun m!563403 () Bool)

(assert (=> b!585068 m!563403))

(declare-fun m!563405 () Bool)

(assert (=> b!585068 m!563405))

(declare-fun m!563407 () Bool)

(assert (=> b!585074 m!563407))

(push 1)

