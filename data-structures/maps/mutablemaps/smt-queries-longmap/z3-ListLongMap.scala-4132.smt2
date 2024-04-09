; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56396 () Bool)

(assert start!56396)

(declare-fun b!624735 () Bool)

(declare-fun res!402925 () Bool)

(declare-fun e!358200 () Bool)

(assert (=> b!624735 (=> (not res!402925) (not e!358200))))

(declare-datatypes ((array!37739 0))(
  ( (array!37740 (arr!18109 (Array (_ BitVec 32) (_ BitVec 64))) (size!18473 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37739)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624735 (= res!402925 (validKeyInArray!0 (select (arr!18109 a!2986) j!136)))))

(declare-fun b!624736 () Bool)

(declare-fun res!402928 () Bool)

(assert (=> b!624736 (=> (not res!402928) (not e!358200))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!624736 (= res!402928 (validKeyInArray!0 k0!1786))))

(declare-fun res!402929 () Bool)

(assert (=> start!56396 (=> (not res!402929) (not e!358200))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56396 (= res!402929 (validMask!0 mask!3053))))

(assert (=> start!56396 e!358200))

(assert (=> start!56396 true))

(declare-fun array_inv!13883 (array!37739) Bool)

(assert (=> start!56396 (array_inv!13883 a!2986)))

(declare-fun b!624737 () Bool)

(declare-fun res!402927 () Bool)

(declare-fun e!358201 () Bool)

(assert (=> b!624737 (=> (not res!402927) (not e!358201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37739 (_ BitVec 32)) Bool)

(assert (=> b!624737 (= res!402927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624738 () Bool)

(declare-fun res!402922 () Bool)

(assert (=> b!624738 (=> (not res!402922) (not e!358200))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624738 (= res!402922 (and (= (size!18473 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18473 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18473 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624739 () Bool)

(declare-fun res!402924 () Bool)

(assert (=> b!624739 (=> (not res!402924) (not e!358201))))

(declare-datatypes ((List!12203 0))(
  ( (Nil!12200) (Cons!12199 (h!13244 (_ BitVec 64)) (t!18439 List!12203)) )
))
(declare-fun arrayNoDuplicates!0 (array!37739 (_ BitVec 32) List!12203) Bool)

(assert (=> b!624739 (= res!402924 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12200))))

(declare-fun b!624740 () Bool)

(assert (=> b!624740 (= e!358201 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6556 0))(
  ( (MissingZero!6556 (index!28507 (_ BitVec 32))) (Found!6556 (index!28508 (_ BitVec 32))) (Intermediate!6556 (undefined!7368 Bool) (index!28509 (_ BitVec 32)) (x!57291 (_ BitVec 32))) (Undefined!6556) (MissingVacant!6556 (index!28510 (_ BitVec 32))) )
))
(declare-fun lt!289671 () SeekEntryResult!6556)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37739 (_ BitVec 32)) SeekEntryResult!6556)

(assert (=> b!624740 (= lt!289671 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18109 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624741 () Bool)

(assert (=> b!624741 (= e!358200 e!358201)))

(declare-fun res!402923 () Bool)

(assert (=> b!624741 (=> (not res!402923) (not e!358201))))

(declare-fun lt!289670 () SeekEntryResult!6556)

(assert (=> b!624741 (= res!402923 (or (= lt!289670 (MissingZero!6556 i!1108)) (= lt!289670 (MissingVacant!6556 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37739 (_ BitVec 32)) SeekEntryResult!6556)

(assert (=> b!624741 (= lt!289670 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624742 () Bool)

(declare-fun res!402921 () Bool)

(assert (=> b!624742 (=> (not res!402921) (not e!358201))))

(assert (=> b!624742 (= res!402921 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18109 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18109 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624743 () Bool)

(declare-fun res!402926 () Bool)

(assert (=> b!624743 (=> (not res!402926) (not e!358200))))

(declare-fun arrayContainsKey!0 (array!37739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624743 (= res!402926 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56396 res!402929) b!624738))

(assert (= (and b!624738 res!402922) b!624735))

(assert (= (and b!624735 res!402925) b!624736))

(assert (= (and b!624736 res!402928) b!624743))

(assert (= (and b!624743 res!402926) b!624741))

(assert (= (and b!624741 res!402923) b!624737))

(assert (= (and b!624737 res!402927) b!624739))

(assert (= (and b!624739 res!402924) b!624742))

(assert (= (and b!624742 res!402921) b!624740))

(declare-fun m!600383 () Bool)

(assert (=> b!624742 m!600383))

(declare-fun m!600385 () Bool)

(assert (=> b!624742 m!600385))

(declare-fun m!600387 () Bool)

(assert (=> b!624742 m!600387))

(declare-fun m!600389 () Bool)

(assert (=> b!624735 m!600389))

(assert (=> b!624735 m!600389))

(declare-fun m!600391 () Bool)

(assert (=> b!624735 m!600391))

(declare-fun m!600393 () Bool)

(assert (=> b!624741 m!600393))

(declare-fun m!600395 () Bool)

(assert (=> b!624737 m!600395))

(assert (=> b!624740 m!600389))

(assert (=> b!624740 m!600389))

(declare-fun m!600397 () Bool)

(assert (=> b!624740 m!600397))

(declare-fun m!600399 () Bool)

(assert (=> b!624736 m!600399))

(declare-fun m!600401 () Bool)

(assert (=> b!624739 m!600401))

(declare-fun m!600403 () Bool)

(assert (=> start!56396 m!600403))

(declare-fun m!600405 () Bool)

(assert (=> start!56396 m!600405))

(declare-fun m!600407 () Bool)

(assert (=> b!624743 m!600407))

(check-sat (not b!624739) (not b!624741) (not start!56396) (not b!624735) (not b!624740) (not b!624737) (not b!624743) (not b!624736))
(check-sat)
