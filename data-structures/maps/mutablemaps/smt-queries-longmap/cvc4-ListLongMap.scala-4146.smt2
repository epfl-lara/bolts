; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56578 () Bool)

(assert start!56578)

(declare-fun b!626364 () Bool)

(declare-fun res!404246 () Bool)

(declare-fun e!358874 () Bool)

(assert (=> b!626364 (=> (not res!404246) (not e!358874))))

(declare-datatypes ((array!37831 0))(
  ( (array!37832 (arr!18152 (Array (_ BitVec 32) (_ BitVec 64))) (size!18516 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37831)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626364 (= res!404246 (validKeyInArray!0 (select (arr!18152 a!2986) j!136)))))

(declare-fun b!626365 () Bool)

(declare-fun res!404245 () Bool)

(declare-fun e!358875 () Bool)

(assert (=> b!626365 (=> (not res!404245) (not e!358875))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626365 (= res!404245 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18152 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18152 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626366 () Bool)

(assert (=> b!626366 (= e!358874 e!358875)))

(declare-fun res!404249 () Bool)

(assert (=> b!626366 (=> (not res!404249) (not e!358875))))

(declare-datatypes ((SeekEntryResult!6599 0))(
  ( (MissingZero!6599 (index!28679 (_ BitVec 32))) (Found!6599 (index!28680 (_ BitVec 32))) (Intermediate!6599 (undefined!7411 Bool) (index!28681 (_ BitVec 32)) (x!57452 (_ BitVec 32))) (Undefined!6599) (MissingVacant!6599 (index!28682 (_ BitVec 32))) )
))
(declare-fun lt!290051 () SeekEntryResult!6599)

(assert (=> b!626366 (= res!404249 (or (= lt!290051 (MissingZero!6599 i!1108)) (= lt!290051 (MissingVacant!6599 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37831 (_ BitVec 32)) SeekEntryResult!6599)

(assert (=> b!626366 (= lt!290051 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626367 () Bool)

(declare-fun res!404244 () Bool)

(assert (=> b!626367 (=> (not res!404244) (not e!358874))))

(assert (=> b!626367 (= res!404244 (validKeyInArray!0 k!1786))))

(declare-fun b!626368 () Bool)

(declare-fun res!404252 () Bool)

(assert (=> b!626368 (=> (not res!404252) (not e!358875))))

(declare-datatypes ((List!12246 0))(
  ( (Nil!12243) (Cons!12242 (h!13287 (_ BitVec 64)) (t!18482 List!12246)) )
))
(declare-fun arrayNoDuplicates!0 (array!37831 (_ BitVec 32) List!12246) Bool)

(assert (=> b!626368 (= res!404252 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12243))))

(declare-fun b!626369 () Bool)

(declare-fun res!404247 () Bool)

(assert (=> b!626369 (=> (not res!404247) (not e!358874))))

(assert (=> b!626369 (= res!404247 (and (= (size!18516 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18516 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18516 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404251 () Bool)

(assert (=> start!56578 (=> (not res!404251) (not e!358874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56578 (= res!404251 (validMask!0 mask!3053))))

(assert (=> start!56578 e!358874))

(assert (=> start!56578 true))

(declare-fun array_inv!13926 (array!37831) Bool)

(assert (=> start!56578 (array_inv!13926 a!2986)))

(declare-fun b!626370 () Bool)

(declare-fun res!404248 () Bool)

(assert (=> b!626370 (=> (not res!404248) (not e!358874))))

(declare-fun arrayContainsKey!0 (array!37831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626370 (= res!404248 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626371 () Bool)

(declare-fun res!404250 () Bool)

(assert (=> b!626371 (=> (not res!404250) (not e!358875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37831 (_ BitVec 32)) Bool)

(assert (=> b!626371 (= res!404250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626372 () Bool)

(assert (=> b!626372 (= e!358875 false)))

(declare-fun lt!290052 () SeekEntryResult!6599)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37831 (_ BitVec 32)) SeekEntryResult!6599)

(assert (=> b!626372 (= lt!290052 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18152 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56578 res!404251) b!626369))

(assert (= (and b!626369 res!404247) b!626364))

(assert (= (and b!626364 res!404246) b!626367))

(assert (= (and b!626367 res!404244) b!626370))

(assert (= (and b!626370 res!404248) b!626366))

(assert (= (and b!626366 res!404249) b!626371))

(assert (= (and b!626371 res!404250) b!626368))

(assert (= (and b!626368 res!404252) b!626365))

(assert (= (and b!626365 res!404245) b!626372))

(declare-fun m!601795 () Bool)

(assert (=> b!626372 m!601795))

(assert (=> b!626372 m!601795))

(declare-fun m!601797 () Bool)

(assert (=> b!626372 m!601797))

(declare-fun m!601799 () Bool)

(assert (=> b!626371 m!601799))

(declare-fun m!601801 () Bool)

(assert (=> start!56578 m!601801))

(declare-fun m!601803 () Bool)

(assert (=> start!56578 m!601803))

(declare-fun m!601805 () Bool)

(assert (=> b!626368 m!601805))

(declare-fun m!601807 () Bool)

(assert (=> b!626366 m!601807))

(declare-fun m!601809 () Bool)

(assert (=> b!626367 m!601809))

(assert (=> b!626364 m!601795))

(assert (=> b!626364 m!601795))

(declare-fun m!601811 () Bool)

(assert (=> b!626364 m!601811))

(declare-fun m!601813 () Bool)

(assert (=> b!626365 m!601813))

(declare-fun m!601815 () Bool)

(assert (=> b!626365 m!601815))

(declare-fun m!601817 () Bool)

(assert (=> b!626365 m!601817))

(declare-fun m!601819 () Bool)

(assert (=> b!626370 m!601819))

(push 1)

(assert (not b!626372))

(assert (not b!626368))

