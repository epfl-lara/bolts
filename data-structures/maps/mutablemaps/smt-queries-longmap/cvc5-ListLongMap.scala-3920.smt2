; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53548 () Bool)

(assert start!53548)

(declare-fun res!370484 () Bool)

(declare-fun e!333969 () Bool)

(assert (=> start!53548 (=> (not res!370484) (not e!333969))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53548 (= res!370484 (validMask!0 mask!3053))))

(assert (=> start!53548 e!333969))

(assert (=> start!53548 true))

(declare-datatypes ((array!36403 0))(
  ( (array!36404 (arr!17472 (Array (_ BitVec 32) (_ BitVec 64))) (size!17836 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36403)

(declare-fun array_inv!13246 (array!36403) Bool)

(assert (=> start!53548 (array_inv!13246 a!2986)))

(declare-fun b!582510 () Bool)

(declare-fun res!370482 () Bool)

(declare-fun e!333970 () Bool)

(assert (=> b!582510 (=> (not res!370482) (not e!333970))))

(declare-datatypes ((List!11566 0))(
  ( (Nil!11563) (Cons!11562 (h!12607 (_ BitVec 64)) (t!17802 List!11566)) )
))
(declare-fun arrayNoDuplicates!0 (array!36403 (_ BitVec 32) List!11566) Bool)

(assert (=> b!582510 (= res!370482 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11563))))

(declare-fun b!582511 () Bool)

(declare-fun res!370481 () Bool)

(assert (=> b!582511 (=> (not res!370481) (not e!333970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36403 (_ BitVec 32)) Bool)

(assert (=> b!582511 (= res!370481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582512 () Bool)

(declare-fun res!370478 () Bool)

(assert (=> b!582512 (=> (not res!370478) (not e!333969))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582512 (= res!370478 (and (= (size!17836 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17836 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17836 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582513 () Bool)

(declare-fun res!370477 () Bool)

(assert (=> b!582513 (=> (not res!370477) (not e!333969))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582513 (= res!370477 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582514 () Bool)

(declare-fun res!370480 () Bool)

(assert (=> b!582514 (=> (not res!370480) (not e!333970))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582514 (= res!370480 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17472 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17472 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582515 () Bool)

(declare-fun res!370479 () Bool)

(assert (=> b!582515 (=> (not res!370479) (not e!333969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582515 (= res!370479 (validKeyInArray!0 k!1786))))

(declare-fun b!582516 () Bool)

(declare-fun res!370476 () Bool)

(assert (=> b!582516 (=> (not res!370476) (not e!333969))))

(assert (=> b!582516 (= res!370476 (validKeyInArray!0 (select (arr!17472 a!2986) j!136)))))

(declare-fun b!582517 () Bool)

(assert (=> b!582517 (= e!333970 false)))

(declare-datatypes ((SeekEntryResult!5919 0))(
  ( (MissingZero!5919 (index!25903 (_ BitVec 32))) (Found!5919 (index!25904 (_ BitVec 32))) (Intermediate!5919 (undefined!6731 Bool) (index!25905 (_ BitVec 32)) (x!54783 (_ BitVec 32))) (Undefined!5919) (MissingVacant!5919 (index!25906 (_ BitVec 32))) )
))
(declare-fun lt!265135 () SeekEntryResult!5919)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36403 (_ BitVec 32)) SeekEntryResult!5919)

(assert (=> b!582517 (= lt!265135 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17472 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582518 () Bool)

(assert (=> b!582518 (= e!333969 e!333970)))

(declare-fun res!370483 () Bool)

(assert (=> b!582518 (=> (not res!370483) (not e!333970))))

(declare-fun lt!265136 () SeekEntryResult!5919)

(assert (=> b!582518 (= res!370483 (or (= lt!265136 (MissingZero!5919 i!1108)) (= lt!265136 (MissingVacant!5919 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36403 (_ BitVec 32)) SeekEntryResult!5919)

(assert (=> b!582518 (= lt!265136 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53548 res!370484) b!582512))

(assert (= (and b!582512 res!370478) b!582516))

(assert (= (and b!582516 res!370476) b!582515))

(assert (= (and b!582515 res!370479) b!582513))

(assert (= (and b!582513 res!370477) b!582518))

(assert (= (and b!582518 res!370483) b!582511))

(assert (= (and b!582511 res!370481) b!582510))

(assert (= (and b!582510 res!370482) b!582514))

(assert (= (and b!582514 res!370480) b!582517))

(declare-fun m!561055 () Bool)

(assert (=> b!582514 m!561055))

(declare-fun m!561057 () Bool)

(assert (=> b!582514 m!561057))

(declare-fun m!561059 () Bool)

(assert (=> b!582514 m!561059))

(declare-fun m!561061 () Bool)

(assert (=> b!582516 m!561061))

(assert (=> b!582516 m!561061))

(declare-fun m!561063 () Bool)

(assert (=> b!582516 m!561063))

(declare-fun m!561065 () Bool)

(assert (=> start!53548 m!561065))

(declare-fun m!561067 () Bool)

(assert (=> start!53548 m!561067))

(declare-fun m!561069 () Bool)

(assert (=> b!582513 m!561069))

(assert (=> b!582517 m!561061))

(assert (=> b!582517 m!561061))

(declare-fun m!561071 () Bool)

(assert (=> b!582517 m!561071))

(declare-fun m!561073 () Bool)

(assert (=> b!582518 m!561073))

(declare-fun m!561075 () Bool)

(assert (=> b!582511 m!561075))

(declare-fun m!561077 () Bool)

(assert (=> b!582515 m!561077))

(declare-fun m!561079 () Bool)

(assert (=> b!582510 m!561079))

(push 1)

