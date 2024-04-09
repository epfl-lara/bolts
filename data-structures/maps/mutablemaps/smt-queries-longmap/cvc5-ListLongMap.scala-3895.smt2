; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53398 () Bool)

(assert start!53398)

(declare-fun b!580451 () Bool)

(declare-fun res!368423 () Bool)

(declare-fun e!333293 () Bool)

(assert (=> b!580451 (=> (not res!368423) (not e!333293))))

(declare-datatypes ((array!36253 0))(
  ( (array!36254 (arr!17397 (Array (_ BitVec 32) (_ BitVec 64))) (size!17761 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36253)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580451 (= res!368423 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368421 () Bool)

(assert (=> start!53398 (=> (not res!368421) (not e!333293))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53398 (= res!368421 (validMask!0 mask!3053))))

(assert (=> start!53398 e!333293))

(assert (=> start!53398 true))

(declare-fun array_inv!13171 (array!36253) Bool)

(assert (=> start!53398 (array_inv!13171 a!2986)))

(declare-fun b!580452 () Bool)

(declare-fun res!368426 () Bool)

(declare-fun e!333295 () Bool)

(assert (=> b!580452 (=> (not res!368426) (not e!333295))))

(declare-datatypes ((List!11491 0))(
  ( (Nil!11488) (Cons!11487 (h!12532 (_ BitVec 64)) (t!17727 List!11491)) )
))
(declare-fun arrayNoDuplicates!0 (array!36253 (_ BitVec 32) List!11491) Bool)

(assert (=> b!580452 (= res!368426 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11488))))

(declare-fun b!580453 () Bool)

(declare-fun res!368425 () Bool)

(assert (=> b!580453 (=> (not res!368425) (not e!333293))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580453 (= res!368425 (and (= (size!17761 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17761 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17761 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580454 () Bool)

(declare-fun res!368424 () Bool)

(assert (=> b!580454 (=> (not res!368424) (not e!333295))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5844 0))(
  ( (MissingZero!5844 (index!25603 (_ BitVec 32))) (Found!5844 (index!25604 (_ BitVec 32))) (Intermediate!5844 (undefined!6656 Bool) (index!25605 (_ BitVec 32)) (x!54508 (_ BitVec 32))) (Undefined!5844) (MissingVacant!5844 (index!25606 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36253 (_ BitVec 32)) SeekEntryResult!5844)

(assert (=> b!580454 (= res!368424 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17397 a!2986) j!136) a!2986 mask!3053) (Found!5844 j!136)))))

(declare-fun b!580455 () Bool)

(declare-fun res!368422 () Bool)

(assert (=> b!580455 (=> (not res!368422) (not e!333293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580455 (= res!368422 (validKeyInArray!0 k!1786))))

(declare-fun b!580456 () Bool)

(assert (=> b!580456 (= e!333295 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17397 a!2986) index!984) (select (arr!17397 a!2986) j!136)) (= index!984 j!136) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!580457 () Bool)

(declare-fun res!368420 () Bool)

(assert (=> b!580457 (=> (not res!368420) (not e!333295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36253 (_ BitVec 32)) Bool)

(assert (=> b!580457 (= res!368420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580458 () Bool)

(declare-fun res!368417 () Bool)

(assert (=> b!580458 (=> (not res!368417) (not e!333295))))

(assert (=> b!580458 (= res!368417 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17397 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17397 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580459 () Bool)

(declare-fun res!368418 () Bool)

(assert (=> b!580459 (=> (not res!368418) (not e!333293))))

(assert (=> b!580459 (= res!368418 (validKeyInArray!0 (select (arr!17397 a!2986) j!136)))))

(declare-fun b!580460 () Bool)

(assert (=> b!580460 (= e!333293 e!333295)))

(declare-fun res!368419 () Bool)

(assert (=> b!580460 (=> (not res!368419) (not e!333295))))

(declare-fun lt!264710 () SeekEntryResult!5844)

(assert (=> b!580460 (= res!368419 (or (= lt!264710 (MissingZero!5844 i!1108)) (= lt!264710 (MissingVacant!5844 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36253 (_ BitVec 32)) SeekEntryResult!5844)

(assert (=> b!580460 (= lt!264710 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53398 res!368421) b!580453))

(assert (= (and b!580453 res!368425) b!580459))

(assert (= (and b!580459 res!368418) b!580455))

(assert (= (and b!580455 res!368422) b!580451))

(assert (= (and b!580451 res!368423) b!580460))

(assert (= (and b!580460 res!368419) b!580457))

(assert (= (and b!580457 res!368420) b!580452))

(assert (= (and b!580452 res!368426) b!580458))

(assert (= (and b!580458 res!368417) b!580454))

(assert (= (and b!580454 res!368424) b!580456))

(declare-fun m!559075 () Bool)

(assert (=> b!580458 m!559075))

(declare-fun m!559077 () Bool)

(assert (=> b!580458 m!559077))

(declare-fun m!559079 () Bool)

(assert (=> b!580458 m!559079))

(declare-fun m!559081 () Bool)

(assert (=> b!580456 m!559081))

(declare-fun m!559083 () Bool)

(assert (=> b!580456 m!559083))

(declare-fun m!559085 () Bool)

(assert (=> b!580455 m!559085))

(assert (=> b!580454 m!559083))

(assert (=> b!580454 m!559083))

(declare-fun m!559087 () Bool)

(assert (=> b!580454 m!559087))

(declare-fun m!559089 () Bool)

(assert (=> start!53398 m!559089))

(declare-fun m!559091 () Bool)

(assert (=> start!53398 m!559091))

(assert (=> b!580459 m!559083))

(assert (=> b!580459 m!559083))

(declare-fun m!559093 () Bool)

(assert (=> b!580459 m!559093))

(declare-fun m!559095 () Bool)

(assert (=> b!580457 m!559095))

(declare-fun m!559097 () Bool)

(assert (=> b!580451 m!559097))

(declare-fun m!559099 () Bool)

(assert (=> b!580452 m!559099))

(declare-fun m!559101 () Bool)

(assert (=> b!580460 m!559101))

(push 1)

