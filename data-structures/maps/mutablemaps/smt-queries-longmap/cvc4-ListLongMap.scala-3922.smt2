; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53564 () Bool)

(assert start!53564)

(declare-fun b!582726 () Bool)

(declare-fun res!370697 () Bool)

(declare-fun e!334042 () Bool)

(assert (=> b!582726 (=> (not res!370697) (not e!334042))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582726 (= res!370697 (validKeyInArray!0 k!1786))))

(declare-fun b!582727 () Bool)

(declare-fun res!370700 () Bool)

(assert (=> b!582727 (=> (not res!370700) (not e!334042))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36419 0))(
  ( (array!36420 (arr!17480 (Array (_ BitVec 32) (_ BitVec 64))) (size!17844 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36419)

(assert (=> b!582727 (= res!370700 (and (= (size!17844 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17844 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17844 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!370695 () Bool)

(assert (=> start!53564 (=> (not res!370695) (not e!334042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53564 (= res!370695 (validMask!0 mask!3053))))

(assert (=> start!53564 e!334042))

(assert (=> start!53564 true))

(declare-fun array_inv!13254 (array!36419) Bool)

(assert (=> start!53564 (array_inv!13254 a!2986)))

(declare-fun b!582728 () Bool)

(declare-fun e!334041 () Bool)

(assert (=> b!582728 (= e!334042 e!334041)))

(declare-fun res!370696 () Bool)

(assert (=> b!582728 (=> (not res!370696) (not e!334041))))

(declare-datatypes ((SeekEntryResult!5927 0))(
  ( (MissingZero!5927 (index!25935 (_ BitVec 32))) (Found!5927 (index!25936 (_ BitVec 32))) (Intermediate!5927 (undefined!6739 Bool) (index!25937 (_ BitVec 32)) (x!54807 (_ BitVec 32))) (Undefined!5927) (MissingVacant!5927 (index!25938 (_ BitVec 32))) )
))
(declare-fun lt!265183 () SeekEntryResult!5927)

(assert (=> b!582728 (= res!370696 (or (= lt!265183 (MissingZero!5927 i!1108)) (= lt!265183 (MissingVacant!5927 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36419 (_ BitVec 32)) SeekEntryResult!5927)

(assert (=> b!582728 (= lt!265183 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582729 () Bool)

(assert (=> b!582729 (= e!334041 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265184 () SeekEntryResult!5927)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36419 (_ BitVec 32)) SeekEntryResult!5927)

(assert (=> b!582729 (= lt!265184 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17480 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582730 () Bool)

(declare-fun res!370699 () Bool)

(assert (=> b!582730 (=> (not res!370699) (not e!334041))))

(declare-datatypes ((List!11574 0))(
  ( (Nil!11571) (Cons!11570 (h!12615 (_ BitVec 64)) (t!17810 List!11574)) )
))
(declare-fun arrayNoDuplicates!0 (array!36419 (_ BitVec 32) List!11574) Bool)

(assert (=> b!582730 (= res!370699 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11571))))

(declare-fun b!582731 () Bool)

(declare-fun res!370692 () Bool)

(assert (=> b!582731 (=> (not res!370692) (not e!334041))))

(assert (=> b!582731 (= res!370692 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17480 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17480 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582732 () Bool)

(declare-fun res!370694 () Bool)

(assert (=> b!582732 (=> (not res!370694) (not e!334041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36419 (_ BitVec 32)) Bool)

(assert (=> b!582732 (= res!370694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582733 () Bool)

(declare-fun res!370693 () Bool)

(assert (=> b!582733 (=> (not res!370693) (not e!334042))))

(assert (=> b!582733 (= res!370693 (validKeyInArray!0 (select (arr!17480 a!2986) j!136)))))

(declare-fun b!582734 () Bool)

(declare-fun res!370698 () Bool)

(assert (=> b!582734 (=> (not res!370698) (not e!334042))))

(declare-fun arrayContainsKey!0 (array!36419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582734 (= res!370698 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53564 res!370695) b!582727))

(assert (= (and b!582727 res!370700) b!582733))

(assert (= (and b!582733 res!370693) b!582726))

(assert (= (and b!582726 res!370697) b!582734))

(assert (= (and b!582734 res!370698) b!582728))

(assert (= (and b!582728 res!370696) b!582732))

(assert (= (and b!582732 res!370694) b!582730))

(assert (= (and b!582730 res!370699) b!582731))

(assert (= (and b!582731 res!370692) b!582729))

(declare-fun m!561263 () Bool)

(assert (=> b!582726 m!561263))

(declare-fun m!561265 () Bool)

(assert (=> b!582734 m!561265))

(declare-fun m!561267 () Bool)

(assert (=> b!582733 m!561267))

(assert (=> b!582733 m!561267))

(declare-fun m!561269 () Bool)

(assert (=> b!582733 m!561269))

(declare-fun m!561271 () Bool)

(assert (=> b!582732 m!561271))

(declare-fun m!561273 () Bool)

(assert (=> b!582728 m!561273))

(assert (=> b!582729 m!561267))

(assert (=> b!582729 m!561267))

(declare-fun m!561275 () Bool)

(assert (=> b!582729 m!561275))

(declare-fun m!561277 () Bool)

(assert (=> start!53564 m!561277))

(declare-fun m!561279 () Bool)

(assert (=> start!53564 m!561279))

(declare-fun m!561281 () Bool)

(assert (=> b!582731 m!561281))

(declare-fun m!561283 () Bool)

(assert (=> b!582731 m!561283))

(declare-fun m!561285 () Bool)

(assert (=> b!582731 m!561285))

(declare-fun m!561287 () Bool)

(assert (=> b!582730 m!561287))

(push 1)

(assert (not b!582726))

(assert (not start!53564))

(assert (not b!582734))

(assert (not b!582729))

(assert (not b!582730))

(assert (not b!582728))

