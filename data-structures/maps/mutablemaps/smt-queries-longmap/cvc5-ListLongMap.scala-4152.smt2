; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56610 () Bool)

(assert start!56610)

(declare-fun b!626818 () Bool)

(declare-fun res!404702 () Bool)

(declare-fun e!359019 () Bool)

(assert (=> b!626818 (=> (not res!404702) (not e!359019))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626818 (= res!404702 (validKeyInArray!0 k!1786))))

(declare-fun b!626819 () Bool)

(declare-fun res!404701 () Bool)

(declare-fun e!359018 () Bool)

(assert (=> b!626819 (=> (not res!404701) (not e!359018))))

(declare-datatypes ((array!37863 0))(
  ( (array!37864 (arr!18168 (Array (_ BitVec 32) (_ BitVec 64))) (size!18532 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37863)

(declare-datatypes ((List!12262 0))(
  ( (Nil!12259) (Cons!12258 (h!13303 (_ BitVec 64)) (t!18498 List!12262)) )
))
(declare-fun arrayNoDuplicates!0 (array!37863 (_ BitVec 32) List!12262) Bool)

(assert (=> b!626819 (= res!404701 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12259))))

(declare-fun b!626820 () Bool)

(assert (=> b!626820 (= e!359019 e!359018)))

(declare-fun res!404706 () Bool)

(assert (=> b!626820 (=> (not res!404706) (not e!359018))))

(declare-datatypes ((SeekEntryResult!6615 0))(
  ( (MissingZero!6615 (index!28743 (_ BitVec 32))) (Found!6615 (index!28744 (_ BitVec 32))) (Intermediate!6615 (undefined!7427 Bool) (index!28745 (_ BitVec 32)) (x!57516 (_ BitVec 32))) (Undefined!6615) (MissingVacant!6615 (index!28746 (_ BitVec 32))) )
))
(declare-fun lt!290147 () SeekEntryResult!6615)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626820 (= res!404706 (or (= lt!290147 (MissingZero!6615 i!1108)) (= lt!290147 (MissingVacant!6615 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37863 (_ BitVec 32)) SeekEntryResult!6615)

(assert (=> b!626820 (= lt!290147 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626821 () Bool)

(declare-fun res!404708 () Bool)

(assert (=> b!626821 (=> (not res!404708) (not e!359019))))

(declare-fun arrayContainsKey!0 (array!37863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626821 (= res!404708 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626822 () Bool)

(declare-fun res!404704 () Bool)

(assert (=> b!626822 (=> (not res!404704) (not e!359019))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626822 (= res!404704 (and (= (size!18532 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18532 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18532 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404700 () Bool)

(assert (=> start!56610 (=> (not res!404700) (not e!359019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56610 (= res!404700 (validMask!0 mask!3053))))

(assert (=> start!56610 e!359019))

(assert (=> start!56610 true))

(declare-fun array_inv!13942 (array!37863) Bool)

(assert (=> start!56610 (array_inv!13942 a!2986)))

(declare-fun b!626823 () Bool)

(declare-fun res!404705 () Bool)

(assert (=> b!626823 (=> (not res!404705) (not e!359018))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626823 (= res!404705 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18168 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18168 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626824 () Bool)

(assert (=> b!626824 (= e!359018 false)))

(declare-fun lt!290148 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626824 (= lt!290148 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626825 () Bool)

(declare-fun res!404698 () Bool)

(assert (=> b!626825 (=> (not res!404698) (not e!359018))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37863 (_ BitVec 32)) SeekEntryResult!6615)

(assert (=> b!626825 (= res!404698 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18168 a!2986) j!136) a!2986 mask!3053) (Found!6615 j!136)))))

(declare-fun b!626826 () Bool)

(declare-fun res!404703 () Bool)

(assert (=> b!626826 (=> (not res!404703) (not e!359018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37863 (_ BitVec 32)) Bool)

(assert (=> b!626826 (= res!404703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626827 () Bool)

(declare-fun res!404707 () Bool)

(assert (=> b!626827 (=> (not res!404707) (not e!359018))))

(assert (=> b!626827 (= res!404707 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18168 a!2986) index!984) (select (arr!18168 a!2986) j!136))) (not (= (select (arr!18168 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626828 () Bool)

(declare-fun res!404699 () Bool)

(assert (=> b!626828 (=> (not res!404699) (not e!359019))))

(assert (=> b!626828 (= res!404699 (validKeyInArray!0 (select (arr!18168 a!2986) j!136)))))

(assert (= (and start!56610 res!404700) b!626822))

(assert (= (and b!626822 res!404704) b!626828))

(assert (= (and b!626828 res!404699) b!626818))

(assert (= (and b!626818 res!404702) b!626821))

(assert (= (and b!626821 res!404708) b!626820))

(assert (= (and b!626820 res!404706) b!626826))

(assert (= (and b!626826 res!404703) b!626819))

(assert (= (and b!626819 res!404701) b!626823))

(assert (= (and b!626823 res!404705) b!626825))

(assert (= (and b!626825 res!404698) b!626827))

(assert (= (and b!626827 res!404707) b!626824))

(declare-fun m!602223 () Bool)

(assert (=> b!626821 m!602223))

(declare-fun m!602225 () Bool)

(assert (=> b!626823 m!602225))

(declare-fun m!602227 () Bool)

(assert (=> b!626823 m!602227))

(declare-fun m!602229 () Bool)

(assert (=> b!626823 m!602229))

(declare-fun m!602231 () Bool)

(assert (=> b!626827 m!602231))

(declare-fun m!602233 () Bool)

(assert (=> b!626827 m!602233))

(declare-fun m!602235 () Bool)

(assert (=> b!626818 m!602235))

(declare-fun m!602237 () Bool)

(assert (=> b!626820 m!602237))

(declare-fun m!602239 () Bool)

(assert (=> b!626819 m!602239))

(declare-fun m!602241 () Bool)

(assert (=> b!626826 m!602241))

(declare-fun m!602243 () Bool)

(assert (=> b!626824 m!602243))

(declare-fun m!602245 () Bool)

(assert (=> start!56610 m!602245))

(declare-fun m!602247 () Bool)

(assert (=> start!56610 m!602247))

(assert (=> b!626828 m!602233))

(assert (=> b!626828 m!602233))

(declare-fun m!602249 () Bool)

(assert (=> b!626828 m!602249))

(assert (=> b!626825 m!602233))

(assert (=> b!626825 m!602233))

(declare-fun m!602251 () Bool)

(assert (=> b!626825 m!602251))

(push 1)

