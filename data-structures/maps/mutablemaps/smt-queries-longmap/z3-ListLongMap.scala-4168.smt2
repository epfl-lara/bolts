; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56762 () Bool)

(assert start!56762)

(declare-fun b!628642 () Bool)

(declare-fun res!406388 () Bool)

(declare-fun e!359594 () Bool)

(assert (=> b!628642 (=> (not res!406388) (not e!359594))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628642 (= res!406388 (validKeyInArray!0 k0!1786))))

(declare-fun b!628643 () Bool)

(declare-fun res!406379 () Bool)

(declare-fun e!359595 () Bool)

(assert (=> b!628643 (=> (not res!406379) (not e!359595))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37964 0))(
  ( (array!37965 (arr!18217 (Array (_ BitVec 32) (_ BitVec 64))) (size!18581 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37964)

(declare-datatypes ((SeekEntryResult!6664 0))(
  ( (MissingZero!6664 (index!28939 (_ BitVec 32))) (Found!6664 (index!28940 (_ BitVec 32))) (Intermediate!6664 (undefined!7476 Bool) (index!28941 (_ BitVec 32)) (x!57699 (_ BitVec 32))) (Undefined!6664) (MissingVacant!6664 (index!28942 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37964 (_ BitVec 32)) SeekEntryResult!6664)

(assert (=> b!628643 (= res!406379 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18217 a!2986) j!136) a!2986 mask!3053) (Found!6664 j!136)))))

(declare-fun res!406382 () Bool)

(assert (=> start!56762 (=> (not res!406382) (not e!359594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56762 (= res!406382 (validMask!0 mask!3053))))

(assert (=> start!56762 e!359594))

(assert (=> start!56762 true))

(declare-fun array_inv!13991 (array!37964) Bool)

(assert (=> start!56762 (array_inv!13991 a!2986)))

(declare-fun b!628644 () Bool)

(declare-fun res!406383 () Bool)

(assert (=> b!628644 (=> (not res!406383) (not e!359595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37964 (_ BitVec 32)) Bool)

(assert (=> b!628644 (= res!406383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628645 () Bool)

(declare-fun res!406378 () Bool)

(assert (=> b!628645 (=> (not res!406378) (not e!359594))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628645 (= res!406378 (and (= (size!18581 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18581 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18581 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628646 () Bool)

(declare-fun res!406381 () Bool)

(assert (=> b!628646 (=> (not res!406381) (not e!359595))))

(declare-datatypes ((List!12311 0))(
  ( (Nil!12308) (Cons!12307 (h!13352 (_ BitVec 64)) (t!18547 List!12311)) )
))
(declare-fun arrayNoDuplicates!0 (array!37964 (_ BitVec 32) List!12311) Bool)

(assert (=> b!628646 (= res!406381 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12308))))

(declare-fun b!628647 () Bool)

(declare-fun res!406387 () Bool)

(assert (=> b!628647 (=> (not res!406387) (not e!359595))))

(assert (=> b!628647 (= res!406387 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18217 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18217 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628648 () Bool)

(assert (=> b!628648 (= e!359595 false)))

(declare-fun lt!290522 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628648 (= lt!290522 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628649 () Bool)

(assert (=> b!628649 (= e!359594 e!359595)))

(declare-fun res!406384 () Bool)

(assert (=> b!628649 (=> (not res!406384) (not e!359595))))

(declare-fun lt!290523 () SeekEntryResult!6664)

(assert (=> b!628649 (= res!406384 (or (= lt!290523 (MissingZero!6664 i!1108)) (= lt!290523 (MissingVacant!6664 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37964 (_ BitVec 32)) SeekEntryResult!6664)

(assert (=> b!628649 (= lt!290523 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!628650 () Bool)

(declare-fun res!406385 () Bool)

(assert (=> b!628650 (=> (not res!406385) (not e!359594))))

(assert (=> b!628650 (= res!406385 (validKeyInArray!0 (select (arr!18217 a!2986) j!136)))))

(declare-fun b!628651 () Bool)

(declare-fun res!406380 () Bool)

(assert (=> b!628651 (=> (not res!406380) (not e!359594))))

(declare-fun arrayContainsKey!0 (array!37964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628651 (= res!406380 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628652 () Bool)

(declare-fun res!406386 () Bool)

(assert (=> b!628652 (=> (not res!406386) (not e!359595))))

(assert (=> b!628652 (= res!406386 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18217 a!2986) index!984) (select (arr!18217 a!2986) j!136))) (not (= (select (arr!18217 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56762 res!406382) b!628645))

(assert (= (and b!628645 res!406378) b!628650))

(assert (= (and b!628650 res!406385) b!628642))

(assert (= (and b!628642 res!406388) b!628651))

(assert (= (and b!628651 res!406380) b!628649))

(assert (= (and b!628649 res!406384) b!628644))

(assert (= (and b!628644 res!406383) b!628646))

(assert (= (and b!628646 res!406381) b!628647))

(assert (= (and b!628647 res!406387) b!628643))

(assert (= (and b!628643 res!406379) b!628652))

(assert (= (and b!628652 res!406386) b!628648))

(declare-fun m!603813 () Bool)

(assert (=> b!628648 m!603813))

(declare-fun m!603815 () Bool)

(assert (=> b!628649 m!603815))

(declare-fun m!603817 () Bool)

(assert (=> b!628650 m!603817))

(assert (=> b!628650 m!603817))

(declare-fun m!603819 () Bool)

(assert (=> b!628650 m!603819))

(declare-fun m!603821 () Bool)

(assert (=> b!628646 m!603821))

(declare-fun m!603823 () Bool)

(assert (=> b!628652 m!603823))

(assert (=> b!628652 m!603817))

(declare-fun m!603825 () Bool)

(assert (=> b!628651 m!603825))

(declare-fun m!603827 () Bool)

(assert (=> start!56762 m!603827))

(declare-fun m!603829 () Bool)

(assert (=> start!56762 m!603829))

(assert (=> b!628643 m!603817))

(assert (=> b!628643 m!603817))

(declare-fun m!603831 () Bool)

(assert (=> b!628643 m!603831))

(declare-fun m!603833 () Bool)

(assert (=> b!628642 m!603833))

(declare-fun m!603835 () Bool)

(assert (=> b!628647 m!603835))

(declare-fun m!603837 () Bool)

(assert (=> b!628647 m!603837))

(declare-fun m!603839 () Bool)

(assert (=> b!628647 m!603839))

(declare-fun m!603841 () Bool)

(assert (=> b!628644 m!603841))

(check-sat (not start!56762) (not b!628644) (not b!628643) (not b!628650) (not b!628648) (not b!628646) (not b!628642) (not b!628651) (not b!628649))
(check-sat)
