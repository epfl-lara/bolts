; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56602 () Bool)

(assert start!56602)

(declare-fun b!626688 () Bool)

(declare-fun e!358982 () Bool)

(assert (=> b!626688 (= e!358982 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6611 0))(
  ( (MissingZero!6611 (index!28727 (_ BitVec 32))) (Found!6611 (index!28728 (_ BitVec 32))) (Intermediate!6611 (undefined!7423 Bool) (index!28729 (_ BitVec 32)) (x!57496 (_ BitVec 32))) (Undefined!6611) (MissingVacant!6611 (index!28730 (_ BitVec 32))) )
))
(declare-fun lt!290123 () SeekEntryResult!6611)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37855 0))(
  ( (array!37856 (arr!18164 (Array (_ BitVec 32) (_ BitVec 64))) (size!18528 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37855)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37855 (_ BitVec 32)) SeekEntryResult!6611)

(assert (=> b!626688 (= lt!290123 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18164 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626689 () Bool)

(declare-fun res!404575 () Bool)

(declare-fun e!358983 () Bool)

(assert (=> b!626689 (=> (not res!404575) (not e!358983))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626689 (= res!404575 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626690 () Bool)

(declare-fun res!404574 () Bool)

(assert (=> b!626690 (=> (not res!404574) (not e!358983))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626690 (= res!404574 (and (= (size!18528 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18528 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18528 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626691 () Bool)

(declare-fun res!404568 () Bool)

(assert (=> b!626691 (=> (not res!404568) (not e!358983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626691 (= res!404568 (validKeyInArray!0 k!1786))))

(declare-fun b!626692 () Bool)

(declare-fun res!404572 () Bool)

(assert (=> b!626692 (=> (not res!404572) (not e!358982))))

(assert (=> b!626692 (= res!404572 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18164 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18164 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626693 () Bool)

(declare-fun res!404576 () Bool)

(assert (=> b!626693 (=> (not res!404576) (not e!358982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37855 (_ BitVec 32)) Bool)

(assert (=> b!626693 (= res!404576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!404569 () Bool)

(assert (=> start!56602 (=> (not res!404569) (not e!358983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56602 (= res!404569 (validMask!0 mask!3053))))

(assert (=> start!56602 e!358983))

(assert (=> start!56602 true))

(declare-fun array_inv!13938 (array!37855) Bool)

(assert (=> start!56602 (array_inv!13938 a!2986)))

(declare-fun b!626694 () Bool)

(assert (=> b!626694 (= e!358983 e!358982)))

(declare-fun res!404571 () Bool)

(assert (=> b!626694 (=> (not res!404571) (not e!358982))))

(declare-fun lt!290124 () SeekEntryResult!6611)

(assert (=> b!626694 (= res!404571 (or (= lt!290124 (MissingZero!6611 i!1108)) (= lt!290124 (MissingVacant!6611 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37855 (_ BitVec 32)) SeekEntryResult!6611)

(assert (=> b!626694 (= lt!290124 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626695 () Bool)

(declare-fun res!404570 () Bool)

(assert (=> b!626695 (=> (not res!404570) (not e!358982))))

(declare-datatypes ((List!12258 0))(
  ( (Nil!12255) (Cons!12254 (h!13299 (_ BitVec 64)) (t!18494 List!12258)) )
))
(declare-fun arrayNoDuplicates!0 (array!37855 (_ BitVec 32) List!12258) Bool)

(assert (=> b!626695 (= res!404570 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12255))))

(declare-fun b!626696 () Bool)

(declare-fun res!404573 () Bool)

(assert (=> b!626696 (=> (not res!404573) (not e!358983))))

(assert (=> b!626696 (= res!404573 (validKeyInArray!0 (select (arr!18164 a!2986) j!136)))))

(assert (= (and start!56602 res!404569) b!626690))

(assert (= (and b!626690 res!404574) b!626696))

(assert (= (and b!626696 res!404573) b!626691))

(assert (= (and b!626691 res!404568) b!626689))

(assert (= (and b!626689 res!404575) b!626694))

(assert (= (and b!626694 res!404571) b!626693))

(assert (= (and b!626693 res!404576) b!626695))

(assert (= (and b!626695 res!404570) b!626692))

(assert (= (and b!626692 res!404572) b!626688))

(declare-fun m!602107 () Bool)

(assert (=> start!56602 m!602107))

(declare-fun m!602109 () Bool)

(assert (=> start!56602 m!602109))

(declare-fun m!602111 () Bool)

(assert (=> b!626688 m!602111))

(assert (=> b!626688 m!602111))

(declare-fun m!602113 () Bool)

(assert (=> b!626688 m!602113))

(declare-fun m!602115 () Bool)

(assert (=> b!626695 m!602115))

(declare-fun m!602117 () Bool)

(assert (=> b!626689 m!602117))

(declare-fun m!602119 () Bool)

(assert (=> b!626691 m!602119))

(declare-fun m!602121 () Bool)

(assert (=> b!626693 m!602121))

(declare-fun m!602123 () Bool)

(assert (=> b!626692 m!602123))

(declare-fun m!602125 () Bool)

(assert (=> b!626692 m!602125))

(declare-fun m!602127 () Bool)

(assert (=> b!626692 m!602127))

(declare-fun m!602129 () Bool)

(assert (=> b!626694 m!602129))

(assert (=> b!626696 m!602111))

(assert (=> b!626696 m!602111))

(declare-fun m!602131 () Bool)

(assert (=> b!626696 m!602131))

(push 1)

