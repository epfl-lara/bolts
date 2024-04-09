; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53576 () Bool)

(assert start!53576)

(declare-fun b!582888 () Bool)

(declare-fun res!370856 () Bool)

(declare-fun e!334095 () Bool)

(assert (=> b!582888 (=> (not res!370856) (not e!334095))))

(declare-datatypes ((array!36431 0))(
  ( (array!36432 (arr!17486 (Array (_ BitVec 32) (_ BitVec 64))) (size!17850 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36431)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582888 (= res!370856 (validKeyInArray!0 (select (arr!17486 a!2986) j!136)))))

(declare-fun b!582889 () Bool)

(declare-fun res!370854 () Bool)

(assert (=> b!582889 (=> (not res!370854) (not e!334095))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!582889 (= res!370854 (validKeyInArray!0 k!1786))))

(declare-fun b!582890 () Bool)

(declare-fun res!370857 () Bool)

(assert (=> b!582890 (=> (not res!370857) (not e!334095))))

(declare-fun arrayContainsKey!0 (array!36431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582890 (= res!370857 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582891 () Bool)

(declare-fun res!370860 () Bool)

(declare-fun e!334096 () Bool)

(assert (=> b!582891 (=> (not res!370860) (not e!334096))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582891 (= res!370860 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17486 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17486 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582892 () Bool)

(declare-fun res!370855 () Bool)

(assert (=> b!582892 (=> (not res!370855) (not e!334095))))

(assert (=> b!582892 (= res!370855 (and (= (size!17850 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17850 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17850 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582893 () Bool)

(declare-fun res!370858 () Bool)

(assert (=> b!582893 (=> (not res!370858) (not e!334096))))

(declare-datatypes ((List!11580 0))(
  ( (Nil!11577) (Cons!11576 (h!12621 (_ BitVec 64)) (t!17816 List!11580)) )
))
(declare-fun arrayNoDuplicates!0 (array!36431 (_ BitVec 32) List!11580) Bool)

(assert (=> b!582893 (= res!370858 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11577))))

(declare-fun b!582894 () Bool)

(assert (=> b!582894 (= e!334095 e!334096)))

(declare-fun res!370859 () Bool)

(assert (=> b!582894 (=> (not res!370859) (not e!334096))))

(declare-datatypes ((SeekEntryResult!5933 0))(
  ( (MissingZero!5933 (index!25959 (_ BitVec 32))) (Found!5933 (index!25960 (_ BitVec 32))) (Intermediate!5933 (undefined!6745 Bool) (index!25961 (_ BitVec 32)) (x!54829 (_ BitVec 32))) (Undefined!5933) (MissingVacant!5933 (index!25962 (_ BitVec 32))) )
))
(declare-fun lt!265220 () SeekEntryResult!5933)

(assert (=> b!582894 (= res!370859 (or (= lt!265220 (MissingZero!5933 i!1108)) (= lt!265220 (MissingVacant!5933 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36431 (_ BitVec 32)) SeekEntryResult!5933)

(assert (=> b!582894 (= lt!265220 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!370862 () Bool)

(assert (=> start!53576 (=> (not res!370862) (not e!334095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53576 (= res!370862 (validMask!0 mask!3053))))

(assert (=> start!53576 e!334095))

(assert (=> start!53576 true))

(declare-fun array_inv!13260 (array!36431) Bool)

(assert (=> start!53576 (array_inv!13260 a!2986)))

(declare-fun b!582895 () Bool)

(declare-fun res!370861 () Bool)

(assert (=> b!582895 (=> (not res!370861) (not e!334096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36431 (_ BitVec 32)) Bool)

(assert (=> b!582895 (= res!370861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582896 () Bool)

(assert (=> b!582896 (= e!334096 false)))

(declare-fun lt!265219 () SeekEntryResult!5933)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36431 (_ BitVec 32)) SeekEntryResult!5933)

(assert (=> b!582896 (= lt!265219 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17486 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53576 res!370862) b!582892))

(assert (= (and b!582892 res!370855) b!582888))

(assert (= (and b!582888 res!370856) b!582889))

(assert (= (and b!582889 res!370854) b!582890))

(assert (= (and b!582890 res!370857) b!582894))

(assert (= (and b!582894 res!370859) b!582895))

(assert (= (and b!582895 res!370861) b!582893))

(assert (= (and b!582893 res!370858) b!582891))

(assert (= (and b!582891 res!370860) b!582896))

(declare-fun m!561419 () Bool)

(assert (=> b!582888 m!561419))

(assert (=> b!582888 m!561419))

(declare-fun m!561421 () Bool)

(assert (=> b!582888 m!561421))

(declare-fun m!561423 () Bool)

(assert (=> b!582894 m!561423))

(declare-fun m!561425 () Bool)

(assert (=> b!582891 m!561425))

(declare-fun m!561427 () Bool)

(assert (=> b!582891 m!561427))

(declare-fun m!561429 () Bool)

(assert (=> b!582891 m!561429))

(declare-fun m!561431 () Bool)

(assert (=> b!582890 m!561431))

(declare-fun m!561433 () Bool)

(assert (=> start!53576 m!561433))

(declare-fun m!561435 () Bool)

(assert (=> start!53576 m!561435))

(declare-fun m!561437 () Bool)

(assert (=> b!582895 m!561437))

(declare-fun m!561439 () Bool)

(assert (=> b!582889 m!561439))

(assert (=> b!582896 m!561419))

(assert (=> b!582896 m!561419))

(declare-fun m!561441 () Bool)

(assert (=> b!582896 m!561441))

(declare-fun m!561443 () Bool)

(assert (=> b!582893 m!561443))

(push 1)

(assert (not b!582895))

(assert (not start!53576))

(assert (not b!582894))

(assert (not b!582896))

(assert (not b!582893))

(assert (not b!582888))

