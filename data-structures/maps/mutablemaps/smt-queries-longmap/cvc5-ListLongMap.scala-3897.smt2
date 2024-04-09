; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53410 () Bool)

(assert start!53410)

(declare-fun b!580621 () Bool)

(declare-fun res!368592 () Bool)

(declare-fun e!333349 () Bool)

(assert (=> b!580621 (=> (not res!368592) (not e!333349))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36265 0))(
  ( (array!36266 (arr!17403 (Array (_ BitVec 32) (_ BitVec 64))) (size!17767 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36265)

(assert (=> b!580621 (= res!368592 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17403 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17403 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580622 () Bool)

(declare-fun e!333348 () Bool)

(assert (=> b!580622 (= e!333348 e!333349)))

(declare-fun res!368588 () Bool)

(assert (=> b!580622 (=> (not res!368588) (not e!333349))))

(declare-datatypes ((SeekEntryResult!5850 0))(
  ( (MissingZero!5850 (index!25627 (_ BitVec 32))) (Found!5850 (index!25628 (_ BitVec 32))) (Intermediate!5850 (undefined!6662 Bool) (index!25629 (_ BitVec 32)) (x!54530 (_ BitVec 32))) (Undefined!5850) (MissingVacant!5850 (index!25630 (_ BitVec 32))) )
))
(declare-fun lt!264740 () SeekEntryResult!5850)

(assert (=> b!580622 (= res!368588 (or (= lt!264740 (MissingZero!5850 i!1108)) (= lt!264740 (MissingVacant!5850 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36265 (_ BitVec 32)) SeekEntryResult!5850)

(assert (=> b!580622 (= lt!264740 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580623 () Bool)

(declare-fun res!368590 () Bool)

(assert (=> b!580623 (=> (not res!368590) (not e!333348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580623 (= res!368590 (validKeyInArray!0 k!1786))))

(declare-fun b!580624 () Bool)

(declare-fun res!368586 () Bool)

(assert (=> b!580624 (=> (not res!368586) (not e!333349))))

(declare-datatypes ((List!11497 0))(
  ( (Nil!11494) (Cons!11493 (h!12538 (_ BitVec 64)) (t!17733 List!11497)) )
))
(declare-fun arrayNoDuplicates!0 (array!36265 (_ BitVec 32) List!11497) Bool)

(assert (=> b!580624 (= res!368586 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11494))))

(declare-fun b!580625 () Bool)

(declare-fun res!368593 () Bool)

(assert (=> b!580625 (=> (not res!368593) (not e!333348))))

(declare-fun arrayContainsKey!0 (array!36265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580625 (= res!368593 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580626 () Bool)

(declare-fun res!368587 () Bool)

(assert (=> b!580626 (=> (not res!368587) (not e!333349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36265 (_ BitVec 32)) Bool)

(assert (=> b!580626 (= res!368587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!368594 () Bool)

(assert (=> start!53410 (=> (not res!368594) (not e!333348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53410 (= res!368594 (validMask!0 mask!3053))))

(assert (=> start!53410 e!333348))

(assert (=> start!53410 true))

(declare-fun array_inv!13177 (array!36265) Bool)

(assert (=> start!53410 (array_inv!13177 a!2986)))

(declare-fun b!580620 () Bool)

(declare-fun res!368589 () Bool)

(assert (=> b!580620 (=> (not res!368589) (not e!333348))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580620 (= res!368589 (validKeyInArray!0 (select (arr!17403 a!2986) j!136)))))

(declare-fun b!580627 () Bool)

(assert (=> b!580627 (= e!333349 false)))

(declare-fun lt!264739 () SeekEntryResult!5850)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36265 (_ BitVec 32)) SeekEntryResult!5850)

(assert (=> b!580627 (= lt!264739 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17403 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580628 () Bool)

(declare-fun res!368591 () Bool)

(assert (=> b!580628 (=> (not res!368591) (not e!333348))))

(assert (=> b!580628 (= res!368591 (and (= (size!17767 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17767 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17767 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53410 res!368594) b!580628))

(assert (= (and b!580628 res!368591) b!580620))

(assert (= (and b!580620 res!368589) b!580623))

(assert (= (and b!580623 res!368590) b!580625))

(assert (= (and b!580625 res!368593) b!580622))

(assert (= (and b!580622 res!368588) b!580626))

(assert (= (and b!580626 res!368587) b!580624))

(assert (= (and b!580624 res!368586) b!580621))

(assert (= (and b!580621 res!368592) b!580627))

(declare-fun m!559237 () Bool)

(assert (=> b!580622 m!559237))

(declare-fun m!559239 () Bool)

(assert (=> b!580627 m!559239))

(assert (=> b!580627 m!559239))

(declare-fun m!559241 () Bool)

(assert (=> b!580627 m!559241))

(declare-fun m!559243 () Bool)

(assert (=> start!53410 m!559243))

(declare-fun m!559245 () Bool)

(assert (=> start!53410 m!559245))

(declare-fun m!559247 () Bool)

(assert (=> b!580623 m!559247))

(declare-fun m!559249 () Bool)

(assert (=> b!580625 m!559249))

(assert (=> b!580620 m!559239))

(assert (=> b!580620 m!559239))

(declare-fun m!559251 () Bool)

(assert (=> b!580620 m!559251))

(declare-fun m!559253 () Bool)

(assert (=> b!580624 m!559253))

(declare-fun m!559255 () Bool)

(assert (=> b!580626 m!559255))

(declare-fun m!559257 () Bool)

(assert (=> b!580621 m!559257))

(declare-fun m!559259 () Bool)

(assert (=> b!580621 m!559259))

(declare-fun m!559261 () Bool)

(assert (=> b!580621 m!559261))

(push 1)

