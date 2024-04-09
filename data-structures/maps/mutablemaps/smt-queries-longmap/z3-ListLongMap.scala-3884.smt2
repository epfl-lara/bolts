; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53334 () Bool)

(assert start!53334)

(declare-fun b!579585 () Bool)

(declare-fun res!367554 () Bool)

(declare-fun e!333005 () Bool)

(assert (=> b!579585 (=> (not res!367554) (not e!333005))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36189 0))(
  ( (array!36190 (arr!17365 (Array (_ BitVec 32) (_ BitVec 64))) (size!17729 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36189)

(assert (=> b!579585 (= res!367554 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17365 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17365 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579586 () Bool)

(declare-fun res!367555 () Bool)

(declare-fun e!333006 () Bool)

(assert (=> b!579586 (=> (not res!367555) (not e!333006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579586 (= res!367555 (validKeyInArray!0 k0!1786))))

(declare-fun b!579587 () Bool)

(declare-fun res!367551 () Bool)

(assert (=> b!579587 (=> (not res!367551) (not e!333006))))

(declare-fun arrayContainsKey!0 (array!36189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579587 (= res!367551 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!367556 () Bool)

(assert (=> start!53334 (=> (not res!367556) (not e!333006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53334 (= res!367556 (validMask!0 mask!3053))))

(assert (=> start!53334 e!333006))

(assert (=> start!53334 true))

(declare-fun array_inv!13139 (array!36189) Bool)

(assert (=> start!53334 (array_inv!13139 a!2986)))

(declare-fun b!579588 () Bool)

(declare-fun res!367553 () Bool)

(assert (=> b!579588 (=> (not res!367553) (not e!333005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36189 (_ BitVec 32)) Bool)

(assert (=> b!579588 (= res!367553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579589 () Bool)

(declare-fun res!367559 () Bool)

(assert (=> b!579589 (=> (not res!367559) (not e!333006))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579589 (= res!367559 (and (= (size!17729 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17729 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17729 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579590 () Bool)

(declare-fun res!367552 () Bool)

(assert (=> b!579590 (=> (not res!367552) (not e!333005))))

(declare-datatypes ((List!11459 0))(
  ( (Nil!11456) (Cons!11455 (h!12500 (_ BitVec 64)) (t!17695 List!11459)) )
))
(declare-fun arrayNoDuplicates!0 (array!36189 (_ BitVec 32) List!11459) Bool)

(assert (=> b!579590 (= res!367552 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11456))))

(declare-fun b!579591 () Bool)

(assert (=> b!579591 (= e!333006 e!333005)))

(declare-fun res!367558 () Bool)

(assert (=> b!579591 (=> (not res!367558) (not e!333005))))

(declare-datatypes ((SeekEntryResult!5812 0))(
  ( (MissingZero!5812 (index!25475 (_ BitVec 32))) (Found!5812 (index!25476 (_ BitVec 32))) (Intermediate!5812 (undefined!6624 Bool) (index!25477 (_ BitVec 32)) (x!54388 (_ BitVec 32))) (Undefined!5812) (MissingVacant!5812 (index!25478 (_ BitVec 32))) )
))
(declare-fun lt!264520 () SeekEntryResult!5812)

(assert (=> b!579591 (= res!367558 (or (= lt!264520 (MissingZero!5812 i!1108)) (= lt!264520 (MissingVacant!5812 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36189 (_ BitVec 32)) SeekEntryResult!5812)

(assert (=> b!579591 (= lt!264520 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579592 () Bool)

(assert (=> b!579592 (= e!333005 false)))

(declare-fun lt!264521 () SeekEntryResult!5812)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36189 (_ BitVec 32)) SeekEntryResult!5812)

(assert (=> b!579592 (= lt!264521 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17365 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579593 () Bool)

(declare-fun res!367557 () Bool)

(assert (=> b!579593 (=> (not res!367557) (not e!333006))))

(assert (=> b!579593 (= res!367557 (validKeyInArray!0 (select (arr!17365 a!2986) j!136)))))

(assert (= (and start!53334 res!367556) b!579589))

(assert (= (and b!579589 res!367559) b!579593))

(assert (= (and b!579593 res!367557) b!579586))

(assert (= (and b!579586 res!367555) b!579587))

(assert (= (and b!579587 res!367551) b!579591))

(assert (= (and b!579591 res!367558) b!579588))

(assert (= (and b!579588 res!367553) b!579590))

(assert (= (and b!579590 res!367552) b!579585))

(assert (= (and b!579585 res!367554) b!579592))

(declare-fun m!558243 () Bool)

(assert (=> b!579585 m!558243))

(declare-fun m!558245 () Bool)

(assert (=> b!579585 m!558245))

(declare-fun m!558247 () Bool)

(assert (=> b!579585 m!558247))

(declare-fun m!558249 () Bool)

(assert (=> b!579593 m!558249))

(assert (=> b!579593 m!558249))

(declare-fun m!558251 () Bool)

(assert (=> b!579593 m!558251))

(declare-fun m!558253 () Bool)

(assert (=> start!53334 m!558253))

(declare-fun m!558255 () Bool)

(assert (=> start!53334 m!558255))

(declare-fun m!558257 () Bool)

(assert (=> b!579587 m!558257))

(declare-fun m!558259 () Bool)

(assert (=> b!579591 m!558259))

(assert (=> b!579592 m!558249))

(assert (=> b!579592 m!558249))

(declare-fun m!558261 () Bool)

(assert (=> b!579592 m!558261))

(declare-fun m!558263 () Bool)

(assert (=> b!579590 m!558263))

(declare-fun m!558265 () Bool)

(assert (=> b!579588 m!558265))

(declare-fun m!558267 () Bool)

(assert (=> b!579586 m!558267))

(check-sat (not b!579586) (not b!579588) (not b!579593) (not b!579591) (not b!579590) (not start!53334) (not b!579592) (not b!579587))
(check-sat)
