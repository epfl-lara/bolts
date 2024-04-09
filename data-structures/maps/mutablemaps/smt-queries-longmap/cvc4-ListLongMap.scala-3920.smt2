; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53552 () Bool)

(assert start!53552)

(declare-fun b!582564 () Bool)

(declare-fun res!370531 () Bool)

(declare-fun e!333986 () Bool)

(assert (=> b!582564 (=> (not res!370531) (not e!333986))))

(declare-datatypes ((array!36407 0))(
  ( (array!36408 (arr!17474 (Array (_ BitVec 32) (_ BitVec 64))) (size!17838 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36407)

(declare-datatypes ((List!11568 0))(
  ( (Nil!11565) (Cons!11564 (h!12609 (_ BitVec 64)) (t!17804 List!11568)) )
))
(declare-fun arrayNoDuplicates!0 (array!36407 (_ BitVec 32) List!11568) Bool)

(assert (=> b!582564 (= res!370531 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11565))))

(declare-fun b!582565 () Bool)

(declare-fun e!333987 () Bool)

(assert (=> b!582565 (= e!333987 e!333986)))

(declare-fun res!370533 () Bool)

(assert (=> b!582565 (=> (not res!370533) (not e!333986))))

(declare-datatypes ((SeekEntryResult!5921 0))(
  ( (MissingZero!5921 (index!25911 (_ BitVec 32))) (Found!5921 (index!25912 (_ BitVec 32))) (Intermediate!5921 (undefined!6733 Bool) (index!25913 (_ BitVec 32)) (x!54785 (_ BitVec 32))) (Undefined!5921) (MissingVacant!5921 (index!25914 (_ BitVec 32))) )
))
(declare-fun lt!265147 () SeekEntryResult!5921)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582565 (= res!370533 (or (= lt!265147 (MissingZero!5921 i!1108)) (= lt!265147 (MissingVacant!5921 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36407 (_ BitVec 32)) SeekEntryResult!5921)

(assert (=> b!582565 (= lt!265147 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582566 () Bool)

(declare-fun res!370534 () Bool)

(assert (=> b!582566 (=> (not res!370534) (not e!333987))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582566 (= res!370534 (and (= (size!17838 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17838 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17838 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582567 () Bool)

(declare-fun res!370535 () Bool)

(assert (=> b!582567 (=> (not res!370535) (not e!333986))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582567 (= res!370535 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17474 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17474 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582568 () Bool)

(declare-fun res!370538 () Bool)

(assert (=> b!582568 (=> (not res!370538) (not e!333986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36407 (_ BitVec 32)) Bool)

(assert (=> b!582568 (= res!370538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582569 () Bool)

(declare-fun res!370537 () Bool)

(assert (=> b!582569 (=> (not res!370537) (not e!333987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582569 (= res!370537 (validKeyInArray!0 (select (arr!17474 a!2986) j!136)))))

(declare-fun res!370530 () Bool)

(assert (=> start!53552 (=> (not res!370530) (not e!333987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53552 (= res!370530 (validMask!0 mask!3053))))

(assert (=> start!53552 e!333987))

(assert (=> start!53552 true))

(declare-fun array_inv!13248 (array!36407) Bool)

(assert (=> start!53552 (array_inv!13248 a!2986)))

(declare-fun b!582570 () Bool)

(declare-fun res!370536 () Bool)

(assert (=> b!582570 (=> (not res!370536) (not e!333987))))

(assert (=> b!582570 (= res!370536 (validKeyInArray!0 k!1786))))

(declare-fun b!582571 () Bool)

(assert (=> b!582571 (= e!333986 false)))

(declare-fun lt!265148 () SeekEntryResult!5921)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36407 (_ BitVec 32)) SeekEntryResult!5921)

(assert (=> b!582571 (= lt!265148 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17474 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582572 () Bool)

(declare-fun res!370532 () Bool)

(assert (=> b!582572 (=> (not res!370532) (not e!333987))))

(declare-fun arrayContainsKey!0 (array!36407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582572 (= res!370532 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53552 res!370530) b!582566))

(assert (= (and b!582566 res!370534) b!582569))

(assert (= (and b!582569 res!370537) b!582570))

(assert (= (and b!582570 res!370536) b!582572))

(assert (= (and b!582572 res!370532) b!582565))

(assert (= (and b!582565 res!370533) b!582568))

(assert (= (and b!582568 res!370538) b!582564))

(assert (= (and b!582564 res!370531) b!582567))

(assert (= (and b!582567 res!370535) b!582571))

(declare-fun m!561107 () Bool)

(assert (=> b!582567 m!561107))

(declare-fun m!561109 () Bool)

(assert (=> b!582567 m!561109))

(declare-fun m!561111 () Bool)

(assert (=> b!582567 m!561111))

(declare-fun m!561113 () Bool)

(assert (=> start!53552 m!561113))

(declare-fun m!561115 () Bool)

(assert (=> start!53552 m!561115))

(declare-fun m!561117 () Bool)

(assert (=> b!582569 m!561117))

(assert (=> b!582569 m!561117))

(declare-fun m!561119 () Bool)

(assert (=> b!582569 m!561119))

(declare-fun m!561121 () Bool)

(assert (=> b!582572 m!561121))

(assert (=> b!582571 m!561117))

(assert (=> b!582571 m!561117))

(declare-fun m!561123 () Bool)

(assert (=> b!582571 m!561123))

(declare-fun m!561125 () Bool)

(assert (=> b!582564 m!561125))

(declare-fun m!561127 () Bool)

(assert (=> b!582570 m!561127))

(declare-fun m!561129 () Bool)

(assert (=> b!582568 m!561129))

(declare-fun m!561131 () Bool)

(assert (=> b!582565 m!561131))

(push 1)

(assert (not start!53552))

(assert (not b!582569))

(assert (not b!582571))

(assert (not b!582572))

(assert (not b!582570))

