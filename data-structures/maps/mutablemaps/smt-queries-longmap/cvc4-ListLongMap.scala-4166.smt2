; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56752 () Bool)

(assert start!56752)

(declare-fun b!628477 () Bool)

(declare-fun res!406220 () Bool)

(declare-fun e!359549 () Bool)

(assert (=> b!628477 (=> (not res!406220) (not e!359549))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37954 0))(
  ( (array!37955 (arr!18212 (Array (_ BitVec 32) (_ BitVec 64))) (size!18576 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37954)

(assert (=> b!628477 (= res!406220 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18212 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18212 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628478 () Bool)

(declare-fun res!406214 () Bool)

(assert (=> b!628478 (=> (not res!406214) (not e!359549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37954 (_ BitVec 32)) Bool)

(assert (=> b!628478 (= res!406214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628479 () Bool)

(declare-fun res!406222 () Bool)

(assert (=> b!628479 (=> (not res!406222) (not e!359549))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!628479 (= res!406222 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18212 a!2986) index!984) (select (arr!18212 a!2986) j!136))) (not (= (select (arr!18212 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628480 () Bool)

(declare-fun e!359550 () Bool)

(assert (=> b!628480 (= e!359550 e!359549)))

(declare-fun res!406216 () Bool)

(assert (=> b!628480 (=> (not res!406216) (not e!359549))))

(declare-datatypes ((SeekEntryResult!6659 0))(
  ( (MissingZero!6659 (index!28919 (_ BitVec 32))) (Found!6659 (index!28920 (_ BitVec 32))) (Intermediate!6659 (undefined!7471 Bool) (index!28921 (_ BitVec 32)) (x!57678 (_ BitVec 32))) (Undefined!6659) (MissingVacant!6659 (index!28922 (_ BitVec 32))) )
))
(declare-fun lt!290492 () SeekEntryResult!6659)

(assert (=> b!628480 (= res!406216 (or (= lt!290492 (MissingZero!6659 i!1108)) (= lt!290492 (MissingVacant!6659 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37954 (_ BitVec 32)) SeekEntryResult!6659)

(assert (=> b!628480 (= lt!290492 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!406217 () Bool)

(assert (=> start!56752 (=> (not res!406217) (not e!359550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56752 (= res!406217 (validMask!0 mask!3053))))

(assert (=> start!56752 e!359550))

(assert (=> start!56752 true))

(declare-fun array_inv!13986 (array!37954) Bool)

(assert (=> start!56752 (array_inv!13986 a!2986)))

(declare-fun b!628481 () Bool)

(declare-fun res!406223 () Bool)

(assert (=> b!628481 (=> (not res!406223) (not e!359550))))

(declare-fun arrayContainsKey!0 (array!37954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628481 (= res!406223 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628482 () Bool)

(declare-fun res!406215 () Bool)

(assert (=> b!628482 (=> (not res!406215) (not e!359550))))

(assert (=> b!628482 (= res!406215 (and (= (size!18576 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18576 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18576 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628483 () Bool)

(declare-fun res!406213 () Bool)

(assert (=> b!628483 (=> (not res!406213) (not e!359550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628483 (= res!406213 (validKeyInArray!0 (select (arr!18212 a!2986) j!136)))))

(declare-fun b!628484 () Bool)

(declare-fun res!406218 () Bool)

(assert (=> b!628484 (=> (not res!406218) (not e!359549))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37954 (_ BitVec 32)) SeekEntryResult!6659)

(assert (=> b!628484 (= res!406218 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18212 a!2986) j!136) a!2986 mask!3053) (Found!6659 j!136)))))

(declare-fun b!628485 () Bool)

(declare-fun res!406219 () Bool)

(assert (=> b!628485 (=> (not res!406219) (not e!359549))))

(declare-datatypes ((List!12306 0))(
  ( (Nil!12303) (Cons!12302 (h!13347 (_ BitVec 64)) (t!18542 List!12306)) )
))
(declare-fun arrayNoDuplicates!0 (array!37954 (_ BitVec 32) List!12306) Bool)

(assert (=> b!628485 (= res!406219 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12303))))

(declare-fun b!628486 () Bool)

(assert (=> b!628486 (= e!359549 false)))

(declare-fun lt!290493 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628486 (= lt!290493 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628487 () Bool)

(declare-fun res!406221 () Bool)

(assert (=> b!628487 (=> (not res!406221) (not e!359550))))

(assert (=> b!628487 (= res!406221 (validKeyInArray!0 k!1786))))

(assert (= (and start!56752 res!406217) b!628482))

(assert (= (and b!628482 res!406215) b!628483))

(assert (= (and b!628483 res!406213) b!628487))

(assert (= (and b!628487 res!406221) b!628481))

(assert (= (and b!628481 res!406223) b!628480))

(assert (= (and b!628480 res!406216) b!628478))

(assert (= (and b!628478 res!406214) b!628485))

(assert (= (and b!628485 res!406219) b!628477))

(assert (= (and b!628477 res!406220) b!628484))

(assert (= (and b!628484 res!406218) b!628479))

(assert (= (and b!628479 res!406222) b!628486))

(declare-fun m!603663 () Bool)

(assert (=> b!628481 m!603663))

(declare-fun m!603665 () Bool)

(assert (=> b!628477 m!603665))

(declare-fun m!603667 () Bool)

(assert (=> b!628477 m!603667))

(declare-fun m!603669 () Bool)

(assert (=> b!628477 m!603669))

(declare-fun m!603671 () Bool)

(assert (=> b!628480 m!603671))

(declare-fun m!603673 () Bool)

(assert (=> b!628485 m!603673))

(declare-fun m!603675 () Bool)

(assert (=> b!628479 m!603675))

(declare-fun m!603677 () Bool)

(assert (=> b!628479 m!603677))

(declare-fun m!603679 () Bool)

(assert (=> start!56752 m!603679))

(declare-fun m!603681 () Bool)

(assert (=> start!56752 m!603681))

(declare-fun m!603683 () Bool)

(assert (=> b!628487 m!603683))

(declare-fun m!603685 () Bool)

(assert (=> b!628486 m!603685))

(assert (=> b!628484 m!603677))

(assert (=> b!628484 m!603677))

(declare-fun m!603687 () Bool)

(assert (=> b!628484 m!603687))

(declare-fun m!603689 () Bool)

(assert (=> b!628478 m!603689))

(assert (=> b!628483 m!603677))

(assert (=> b!628483 m!603677))

(declare-fun m!603691 () Bool)

(assert (=> b!628483 m!603691))

(push 1)

(assert (not b!628486))

(assert (not b!628483))

