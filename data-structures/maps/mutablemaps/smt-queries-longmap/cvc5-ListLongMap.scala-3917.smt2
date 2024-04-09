; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53530 () Bool)

(assert start!53530)

(declare-fun b!582267 () Bool)

(declare-fun res!370233 () Bool)

(declare-fun e!333889 () Bool)

(assert (=> b!582267 (=> (not res!370233) (not e!333889))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582267 (= res!370233 (validKeyInArray!0 k!1786))))

(declare-fun b!582268 () Bool)

(declare-fun e!333888 () Bool)

(assert (=> b!582268 (= e!333889 e!333888)))

(declare-fun res!370236 () Bool)

(assert (=> b!582268 (=> (not res!370236) (not e!333888))))

(declare-datatypes ((SeekEntryResult!5910 0))(
  ( (MissingZero!5910 (index!25867 (_ BitVec 32))) (Found!5910 (index!25868 (_ BitVec 32))) (Intermediate!5910 (undefined!6722 Bool) (index!25869 (_ BitVec 32)) (x!54750 (_ BitVec 32))) (Undefined!5910) (MissingVacant!5910 (index!25870 (_ BitVec 32))) )
))
(declare-fun lt!265081 () SeekEntryResult!5910)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582268 (= res!370236 (or (= lt!265081 (MissingZero!5910 i!1108)) (= lt!265081 (MissingVacant!5910 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36385 0))(
  ( (array!36386 (arr!17463 (Array (_ BitVec 32) (_ BitVec 64))) (size!17827 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36385)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36385 (_ BitVec 32)) SeekEntryResult!5910)

(assert (=> b!582268 (= lt!265081 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!370240 () Bool)

(assert (=> start!53530 (=> (not res!370240) (not e!333889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53530 (= res!370240 (validMask!0 mask!3053))))

(assert (=> start!53530 e!333889))

(assert (=> start!53530 true))

(declare-fun array_inv!13237 (array!36385) Bool)

(assert (=> start!53530 (array_inv!13237 a!2986)))

(declare-fun b!582269 () Bool)

(declare-fun res!370241 () Bool)

(assert (=> b!582269 (=> (not res!370241) (not e!333888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36385 (_ BitVec 32)) Bool)

(assert (=> b!582269 (= res!370241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582270 () Bool)

(declare-fun res!370239 () Bool)

(assert (=> b!582270 (=> (not res!370239) (not e!333889))))

(declare-fun arrayContainsKey!0 (array!36385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582270 (= res!370239 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582271 () Bool)

(declare-fun res!370238 () Bool)

(assert (=> b!582271 (=> (not res!370238) (not e!333888))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582271 (= res!370238 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17463 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17463 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582272 () Bool)

(assert (=> b!582272 (= e!333888 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!265082 () SeekEntryResult!5910)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36385 (_ BitVec 32)) SeekEntryResult!5910)

(assert (=> b!582272 (= lt!265082 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17463 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582273 () Bool)

(declare-fun res!370234 () Bool)

(assert (=> b!582273 (=> (not res!370234) (not e!333889))))

(assert (=> b!582273 (= res!370234 (validKeyInArray!0 (select (arr!17463 a!2986) j!136)))))

(declare-fun b!582274 () Bool)

(declare-fun res!370237 () Bool)

(assert (=> b!582274 (=> (not res!370237) (not e!333889))))

(assert (=> b!582274 (= res!370237 (and (= (size!17827 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17827 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17827 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582275 () Bool)

(declare-fun res!370235 () Bool)

(assert (=> b!582275 (=> (not res!370235) (not e!333888))))

(declare-datatypes ((List!11557 0))(
  ( (Nil!11554) (Cons!11553 (h!12598 (_ BitVec 64)) (t!17793 List!11557)) )
))
(declare-fun arrayNoDuplicates!0 (array!36385 (_ BitVec 32) List!11557) Bool)

(assert (=> b!582275 (= res!370235 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11554))))

(assert (= (and start!53530 res!370240) b!582274))

(assert (= (and b!582274 res!370237) b!582273))

(assert (= (and b!582273 res!370234) b!582267))

(assert (= (and b!582267 res!370233) b!582270))

(assert (= (and b!582270 res!370239) b!582268))

(assert (= (and b!582268 res!370236) b!582269))

(assert (= (and b!582269 res!370241) b!582275))

(assert (= (and b!582275 res!370235) b!582271))

(assert (= (and b!582271 res!370238) b!582272))

(declare-fun m!560821 () Bool)

(assert (=> b!582272 m!560821))

(assert (=> b!582272 m!560821))

(declare-fun m!560823 () Bool)

(assert (=> b!582272 m!560823))

(declare-fun m!560825 () Bool)

(assert (=> b!582268 m!560825))

(declare-fun m!560827 () Bool)

(assert (=> b!582269 m!560827))

(declare-fun m!560829 () Bool)

(assert (=> b!582271 m!560829))

(declare-fun m!560831 () Bool)

(assert (=> b!582271 m!560831))

(declare-fun m!560833 () Bool)

(assert (=> b!582271 m!560833))

(declare-fun m!560835 () Bool)

(assert (=> b!582267 m!560835))

(declare-fun m!560837 () Bool)

(assert (=> b!582270 m!560837))

(assert (=> b!582273 m!560821))

(assert (=> b!582273 m!560821))

(declare-fun m!560839 () Bool)

(assert (=> b!582273 m!560839))

(declare-fun m!560841 () Bool)

(assert (=> b!582275 m!560841))

(declare-fun m!560843 () Bool)

(assert (=> start!53530 m!560843))

(declare-fun m!560845 () Bool)

(assert (=> start!53530 m!560845))

(push 1)

