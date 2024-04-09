; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53546 () Bool)

(assert start!53546)

(declare-fun res!370454 () Bool)

(declare-fun e!333959 () Bool)

(assert (=> start!53546 (=> (not res!370454) (not e!333959))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53546 (= res!370454 (validMask!0 mask!3053))))

(assert (=> start!53546 e!333959))

(assert (=> start!53546 true))

(declare-datatypes ((array!36401 0))(
  ( (array!36402 (arr!17471 (Array (_ BitVec 32) (_ BitVec 64))) (size!17835 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36401)

(declare-fun array_inv!13245 (array!36401) Bool)

(assert (=> start!53546 (array_inv!13245 a!2986)))

(declare-fun b!582483 () Bool)

(declare-fun res!370453 () Bool)

(assert (=> b!582483 (=> (not res!370453) (not e!333959))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582483 (= res!370453 (validKeyInArray!0 k!1786))))

(declare-fun b!582484 () Bool)

(declare-fun res!370456 () Bool)

(assert (=> b!582484 (=> (not res!370456) (not e!333959))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582484 (= res!370456 (and (= (size!17835 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17835 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17835 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582485 () Bool)

(declare-fun res!370457 () Bool)

(declare-fun e!333960 () Bool)

(assert (=> b!582485 (=> (not res!370457) (not e!333960))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582485 (= res!370457 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17471 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17471 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582486 () Bool)

(declare-fun res!370449 () Bool)

(assert (=> b!582486 (=> (not res!370449) (not e!333960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36401 (_ BitVec 32)) Bool)

(assert (=> b!582486 (= res!370449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582487 () Bool)

(assert (=> b!582487 (= e!333959 e!333960)))

(declare-fun res!370450 () Bool)

(assert (=> b!582487 (=> (not res!370450) (not e!333960))))

(declare-datatypes ((SeekEntryResult!5918 0))(
  ( (MissingZero!5918 (index!25899 (_ BitVec 32))) (Found!5918 (index!25900 (_ BitVec 32))) (Intermediate!5918 (undefined!6730 Bool) (index!25901 (_ BitVec 32)) (x!54774 (_ BitVec 32))) (Undefined!5918) (MissingVacant!5918 (index!25902 (_ BitVec 32))) )
))
(declare-fun lt!265129 () SeekEntryResult!5918)

(assert (=> b!582487 (= res!370450 (or (= lt!265129 (MissingZero!5918 i!1108)) (= lt!265129 (MissingVacant!5918 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36401 (_ BitVec 32)) SeekEntryResult!5918)

(assert (=> b!582487 (= lt!265129 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582488 () Bool)

(assert (=> b!582488 (= e!333960 false)))

(declare-fun lt!265130 () SeekEntryResult!5918)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36401 (_ BitVec 32)) SeekEntryResult!5918)

(assert (=> b!582488 (= lt!265130 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17471 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582489 () Bool)

(declare-fun res!370455 () Bool)

(assert (=> b!582489 (=> (not res!370455) (not e!333960))))

(declare-datatypes ((List!11565 0))(
  ( (Nil!11562) (Cons!11561 (h!12606 (_ BitVec 64)) (t!17801 List!11565)) )
))
(declare-fun arrayNoDuplicates!0 (array!36401 (_ BitVec 32) List!11565) Bool)

(assert (=> b!582489 (= res!370455 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11562))))

(declare-fun b!582490 () Bool)

(declare-fun res!370451 () Bool)

(assert (=> b!582490 (=> (not res!370451) (not e!333959))))

(assert (=> b!582490 (= res!370451 (validKeyInArray!0 (select (arr!17471 a!2986) j!136)))))

(declare-fun b!582491 () Bool)

(declare-fun res!370452 () Bool)

(assert (=> b!582491 (=> (not res!370452) (not e!333959))))

(declare-fun arrayContainsKey!0 (array!36401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582491 (= res!370452 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53546 res!370454) b!582484))

(assert (= (and b!582484 res!370456) b!582490))

(assert (= (and b!582490 res!370451) b!582483))

(assert (= (and b!582483 res!370453) b!582491))

(assert (= (and b!582491 res!370452) b!582487))

(assert (= (and b!582487 res!370450) b!582486))

(assert (= (and b!582486 res!370449) b!582489))

(assert (= (and b!582489 res!370455) b!582485))

(assert (= (and b!582485 res!370457) b!582488))

(declare-fun m!561029 () Bool)

(assert (=> start!53546 m!561029))

(declare-fun m!561031 () Bool)

(assert (=> start!53546 m!561031))

(declare-fun m!561033 () Bool)

(assert (=> b!582488 m!561033))

(assert (=> b!582488 m!561033))

(declare-fun m!561035 () Bool)

(assert (=> b!582488 m!561035))

(declare-fun m!561037 () Bool)

(assert (=> b!582483 m!561037))

(declare-fun m!561039 () Bool)

(assert (=> b!582491 m!561039))

(assert (=> b!582490 m!561033))

(assert (=> b!582490 m!561033))

(declare-fun m!561041 () Bool)

(assert (=> b!582490 m!561041))

(declare-fun m!561043 () Bool)

(assert (=> b!582485 m!561043))

(declare-fun m!561045 () Bool)

(assert (=> b!582485 m!561045))

(declare-fun m!561047 () Bool)

(assert (=> b!582485 m!561047))

(declare-fun m!561049 () Bool)

(assert (=> b!582486 m!561049))

(declare-fun m!561051 () Bool)

(assert (=> b!582487 m!561051))

(declare-fun m!561053 () Bool)

(assert (=> b!582489 m!561053))

(push 1)

(assert (not b!582486))

(assert (not b!582487))

(assert (not b!582488))

(assert (not b!582483))

(assert (not start!53546))

