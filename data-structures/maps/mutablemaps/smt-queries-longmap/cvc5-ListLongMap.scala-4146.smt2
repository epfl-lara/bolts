; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56574 () Bool)

(assert start!56574)

(declare-fun b!626310 () Bool)

(declare-fun res!404198 () Bool)

(declare-fun e!358858 () Bool)

(assert (=> b!626310 (=> (not res!404198) (not e!358858))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626310 (= res!404198 (validKeyInArray!0 k!1786))))

(declare-fun b!626311 () Bool)

(declare-fun e!358857 () Bool)

(assert (=> b!626311 (= e!358858 e!358857)))

(declare-fun res!404192 () Bool)

(assert (=> b!626311 (=> (not res!404192) (not e!358857))))

(declare-datatypes ((SeekEntryResult!6597 0))(
  ( (MissingZero!6597 (index!28671 (_ BitVec 32))) (Found!6597 (index!28672 (_ BitVec 32))) (Intermediate!6597 (undefined!7409 Bool) (index!28673 (_ BitVec 32)) (x!57450 (_ BitVec 32))) (Undefined!6597) (MissingVacant!6597 (index!28674 (_ BitVec 32))) )
))
(declare-fun lt!290039 () SeekEntryResult!6597)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626311 (= res!404192 (or (= lt!290039 (MissingZero!6597 i!1108)) (= lt!290039 (MissingVacant!6597 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37827 0))(
  ( (array!37828 (arr!18150 (Array (_ BitVec 32) (_ BitVec 64))) (size!18514 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37827)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37827 (_ BitVec 32)) SeekEntryResult!6597)

(assert (=> b!626311 (= lt!290039 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626312 () Bool)

(declare-fun res!404196 () Bool)

(assert (=> b!626312 (=> (not res!404196) (not e!358858))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626312 (= res!404196 (and (= (size!18514 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18514 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18514 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626313 () Bool)

(declare-fun res!404191 () Bool)

(assert (=> b!626313 (=> (not res!404191) (not e!358858))))

(assert (=> b!626313 (= res!404191 (validKeyInArray!0 (select (arr!18150 a!2986) j!136)))))

(declare-fun b!626314 () Bool)

(declare-fun res!404193 () Bool)

(assert (=> b!626314 (=> (not res!404193) (not e!358857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37827 (_ BitVec 32)) Bool)

(assert (=> b!626314 (= res!404193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626315 () Bool)

(declare-fun res!404197 () Bool)

(assert (=> b!626315 (=> (not res!404197) (not e!358857))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626315 (= res!404197 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18150 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18150 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626316 () Bool)

(declare-fun res!404195 () Bool)

(assert (=> b!626316 (=> (not res!404195) (not e!358857))))

(declare-datatypes ((List!12244 0))(
  ( (Nil!12241) (Cons!12240 (h!13285 (_ BitVec 64)) (t!18480 List!12244)) )
))
(declare-fun arrayNoDuplicates!0 (array!37827 (_ BitVec 32) List!12244) Bool)

(assert (=> b!626316 (= res!404195 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12241))))

(declare-fun b!626317 () Bool)

(assert (=> b!626317 (= e!358857 false)))

(declare-fun lt!290040 () SeekEntryResult!6597)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37827 (_ BitVec 32)) SeekEntryResult!6597)

(assert (=> b!626317 (= lt!290040 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18150 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!404194 () Bool)

(assert (=> start!56574 (=> (not res!404194) (not e!358858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56574 (= res!404194 (validMask!0 mask!3053))))

(assert (=> start!56574 e!358858))

(assert (=> start!56574 true))

(declare-fun array_inv!13924 (array!37827) Bool)

(assert (=> start!56574 (array_inv!13924 a!2986)))

(declare-fun b!626318 () Bool)

(declare-fun res!404190 () Bool)

(assert (=> b!626318 (=> (not res!404190) (not e!358858))))

(declare-fun arrayContainsKey!0 (array!37827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626318 (= res!404190 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56574 res!404194) b!626312))

(assert (= (and b!626312 res!404196) b!626313))

(assert (= (and b!626313 res!404191) b!626310))

(assert (= (and b!626310 res!404198) b!626318))

(assert (= (and b!626318 res!404190) b!626311))

(assert (= (and b!626311 res!404192) b!626314))

(assert (= (and b!626314 res!404193) b!626316))

(assert (= (and b!626316 res!404195) b!626315))

(assert (= (and b!626315 res!404197) b!626317))

(declare-fun m!601743 () Bool)

(assert (=> b!626315 m!601743))

(declare-fun m!601745 () Bool)

(assert (=> b!626315 m!601745))

(declare-fun m!601747 () Bool)

(assert (=> b!626315 m!601747))

(declare-fun m!601749 () Bool)

(assert (=> b!626313 m!601749))

(assert (=> b!626313 m!601749))

(declare-fun m!601751 () Bool)

(assert (=> b!626313 m!601751))

(declare-fun m!601753 () Bool)

(assert (=> b!626318 m!601753))

(declare-fun m!601755 () Bool)

(assert (=> b!626314 m!601755))

(assert (=> b!626317 m!601749))

(assert (=> b!626317 m!601749))

(declare-fun m!601757 () Bool)

(assert (=> b!626317 m!601757))

(declare-fun m!601759 () Bool)

(assert (=> b!626311 m!601759))

(declare-fun m!601761 () Bool)

(assert (=> b!626310 m!601761))

(declare-fun m!601763 () Bool)

(assert (=> start!56574 m!601763))

(declare-fun m!601765 () Bool)

(assert (=> start!56574 m!601765))

(declare-fun m!601767 () Bool)

(assert (=> b!626316 m!601767))

(push 1)

