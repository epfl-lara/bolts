; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56424 () Bool)

(assert start!56424)

(declare-fun b!625115 () Bool)

(declare-fun res!403305 () Bool)

(declare-fun e!358326 () Bool)

(assert (=> b!625115 (=> (not res!403305) (not e!358326))))

(declare-datatypes ((array!37767 0))(
  ( (array!37768 (arr!18123 (Array (_ BitVec 32) (_ BitVec 64))) (size!18487 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37767)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37767 (_ BitVec 32)) Bool)

(assert (=> b!625115 (= res!403305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!403306 () Bool)

(declare-fun e!358325 () Bool)

(assert (=> start!56424 (=> (not res!403306) (not e!358325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56424 (= res!403306 (validMask!0 mask!3053))))

(assert (=> start!56424 e!358325))

(assert (=> start!56424 true))

(declare-fun array_inv!13897 (array!37767) Bool)

(assert (=> start!56424 (array_inv!13897 a!2986)))

(declare-fun b!625116 () Bool)

(declare-fun res!403304 () Bool)

(assert (=> b!625116 (=> (not res!403304) (not e!358325))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625116 (= res!403304 (and (= (size!18487 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18487 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18487 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625117 () Bool)

(declare-fun res!403301 () Bool)

(assert (=> b!625117 (=> (not res!403301) (not e!358326))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625117 (= res!403301 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18123 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18123 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625118 () Bool)

(assert (=> b!625118 (= e!358326 (and (bvslt x!910 #b01111111111111111111111111111110) (bvsge index!984 (size!18487 a!2986))))))

(declare-fun b!625119 () Bool)

(declare-fun res!403307 () Bool)

(assert (=> b!625119 (=> (not res!403307) (not e!358325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625119 (= res!403307 (validKeyInArray!0 k!1786))))

(declare-fun b!625120 () Bool)

(assert (=> b!625120 (= e!358325 e!358326)))

(declare-fun res!403310 () Bool)

(assert (=> b!625120 (=> (not res!403310) (not e!358326))))

(declare-datatypes ((SeekEntryResult!6570 0))(
  ( (MissingZero!6570 (index!28563 (_ BitVec 32))) (Found!6570 (index!28564 (_ BitVec 32))) (Intermediate!6570 (undefined!7382 Bool) (index!28565 (_ BitVec 32)) (x!57345 (_ BitVec 32))) (Undefined!6570) (MissingVacant!6570 (index!28566 (_ BitVec 32))) )
))
(declare-fun lt!289752 () SeekEntryResult!6570)

(assert (=> b!625120 (= res!403310 (or (= lt!289752 (MissingZero!6570 i!1108)) (= lt!289752 (MissingVacant!6570 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37767 (_ BitVec 32)) SeekEntryResult!6570)

(assert (=> b!625120 (= lt!289752 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625121 () Bool)

(declare-fun res!403303 () Bool)

(assert (=> b!625121 (=> (not res!403303) (not e!358326))))

(declare-datatypes ((List!12217 0))(
  ( (Nil!12214) (Cons!12213 (h!13258 (_ BitVec 64)) (t!18453 List!12217)) )
))
(declare-fun arrayNoDuplicates!0 (array!37767 (_ BitVec 32) List!12217) Bool)

(assert (=> b!625121 (= res!403303 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12214))))

(declare-fun b!625122 () Bool)

(declare-fun res!403309 () Bool)

(assert (=> b!625122 (=> (not res!403309) (not e!358325))))

(assert (=> b!625122 (= res!403309 (validKeyInArray!0 (select (arr!18123 a!2986) j!136)))))

(declare-fun b!625123 () Bool)

(declare-fun res!403302 () Bool)

(assert (=> b!625123 (=> (not res!403302) (not e!358325))))

(declare-fun arrayContainsKey!0 (array!37767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625123 (= res!403302 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625124 () Bool)

(declare-fun res!403308 () Bool)

(assert (=> b!625124 (=> (not res!403308) (not e!358326))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37767 (_ BitVec 32)) SeekEntryResult!6570)

(assert (=> b!625124 (= res!403308 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18123 a!2986) j!136) a!2986 mask!3053) (Found!6570 j!136)))))

(assert (= (and start!56424 res!403306) b!625116))

(assert (= (and b!625116 res!403304) b!625122))

(assert (= (and b!625122 res!403309) b!625119))

(assert (= (and b!625119 res!403307) b!625123))

(assert (= (and b!625123 res!403302) b!625120))

(assert (= (and b!625120 res!403310) b!625115))

(assert (= (and b!625115 res!403305) b!625121))

(assert (= (and b!625121 res!403303) b!625117))

(assert (= (and b!625117 res!403301) b!625124))

(assert (= (and b!625124 res!403308) b!625118))

(declare-fun m!600747 () Bool)

(assert (=> b!625124 m!600747))

(assert (=> b!625124 m!600747))

(declare-fun m!600749 () Bool)

(assert (=> b!625124 m!600749))

(declare-fun m!600751 () Bool)

(assert (=> b!625117 m!600751))

(declare-fun m!600753 () Bool)

(assert (=> b!625117 m!600753))

(declare-fun m!600755 () Bool)

(assert (=> b!625117 m!600755))

(declare-fun m!600757 () Bool)

(assert (=> b!625121 m!600757))

(declare-fun m!600759 () Bool)

(assert (=> start!56424 m!600759))

(declare-fun m!600761 () Bool)

(assert (=> start!56424 m!600761))

(assert (=> b!625122 m!600747))

(assert (=> b!625122 m!600747))

(declare-fun m!600763 () Bool)

(assert (=> b!625122 m!600763))

(declare-fun m!600765 () Bool)

(assert (=> b!625120 m!600765))

(declare-fun m!600767 () Bool)

(assert (=> b!625115 m!600767))

(declare-fun m!600769 () Bool)

(assert (=> b!625119 m!600769))

(declare-fun m!600771 () Bool)

(assert (=> b!625123 m!600771))

(push 1)

(assert (not b!625121))

(assert (not b!625124))

(assert (not b!625123))

(assert (not start!56424))

(assert (not b!625119))

(assert (not b!625122))

(assert (not b!625115))

(assert (not b!625120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

