; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56600 () Bool)

(assert start!56600)

(declare-fun b!626661 () Bool)

(declare-fun res!404545 () Bool)

(declare-fun e!358974 () Bool)

(assert (=> b!626661 (=> (not res!404545) (not e!358974))))

(declare-datatypes ((array!37853 0))(
  ( (array!37854 (arr!18163 (Array (_ BitVec 32) (_ BitVec 64))) (size!18527 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37853)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626661 (= res!404545 (validKeyInArray!0 (select (arr!18163 a!2986) j!136)))))

(declare-fun b!626662 () Bool)

(declare-fun e!358975 () Bool)

(assert (=> b!626662 (= e!358975 false)))

(declare-datatypes ((SeekEntryResult!6610 0))(
  ( (MissingZero!6610 (index!28723 (_ BitVec 32))) (Found!6610 (index!28724 (_ BitVec 32))) (Intermediate!6610 (undefined!7422 Bool) (index!28725 (_ BitVec 32)) (x!57495 (_ BitVec 32))) (Undefined!6610) (MissingVacant!6610 (index!28726 (_ BitVec 32))) )
))
(declare-fun lt!290118 () SeekEntryResult!6610)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37853 (_ BitVec 32)) SeekEntryResult!6610)

(assert (=> b!626662 (= lt!290118 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18163 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626663 () Bool)

(declare-fun res!404546 () Bool)

(assert (=> b!626663 (=> (not res!404546) (not e!358975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37853 (_ BitVec 32)) Bool)

(assert (=> b!626663 (= res!404546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626664 () Bool)

(declare-fun res!404547 () Bool)

(assert (=> b!626664 (=> (not res!404547) (not e!358975))))

(declare-datatypes ((List!12257 0))(
  ( (Nil!12254) (Cons!12253 (h!13298 (_ BitVec 64)) (t!18493 List!12257)) )
))
(declare-fun arrayNoDuplicates!0 (array!37853 (_ BitVec 32) List!12257) Bool)

(assert (=> b!626664 (= res!404547 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12254))))

(declare-fun b!626665 () Bool)

(assert (=> b!626665 (= e!358974 e!358975)))

(declare-fun res!404541 () Bool)

(assert (=> b!626665 (=> (not res!404541) (not e!358975))))

(declare-fun lt!290117 () SeekEntryResult!6610)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626665 (= res!404541 (or (= lt!290117 (MissingZero!6610 i!1108)) (= lt!290117 (MissingVacant!6610 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37853 (_ BitVec 32)) SeekEntryResult!6610)

(assert (=> b!626665 (= lt!290117 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626666 () Bool)

(declare-fun res!404548 () Bool)

(assert (=> b!626666 (=> (not res!404548) (not e!358974))))

(declare-fun arrayContainsKey!0 (array!37853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626666 (= res!404548 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626667 () Bool)

(declare-fun res!404542 () Bool)

(assert (=> b!626667 (=> (not res!404542) (not e!358974))))

(assert (=> b!626667 (= res!404542 (validKeyInArray!0 k0!1786))))

(declare-fun b!626668 () Bool)

(declare-fun res!404543 () Bool)

(assert (=> b!626668 (=> (not res!404543) (not e!358974))))

(assert (=> b!626668 (= res!404543 (and (= (size!18527 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18527 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18527 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404544 () Bool)

(assert (=> start!56600 (=> (not res!404544) (not e!358974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56600 (= res!404544 (validMask!0 mask!3053))))

(assert (=> start!56600 e!358974))

(assert (=> start!56600 true))

(declare-fun array_inv!13937 (array!37853) Bool)

(assert (=> start!56600 (array_inv!13937 a!2986)))

(declare-fun b!626669 () Bool)

(declare-fun res!404549 () Bool)

(assert (=> b!626669 (=> (not res!404549) (not e!358975))))

(assert (=> b!626669 (= res!404549 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18163 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18163 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56600 res!404544) b!626668))

(assert (= (and b!626668 res!404543) b!626661))

(assert (= (and b!626661 res!404545) b!626667))

(assert (= (and b!626667 res!404542) b!626666))

(assert (= (and b!626666 res!404548) b!626665))

(assert (= (and b!626665 res!404541) b!626663))

(assert (= (and b!626663 res!404546) b!626664))

(assert (= (and b!626664 res!404547) b!626669))

(assert (= (and b!626669 res!404549) b!626662))

(declare-fun m!602081 () Bool)

(assert (=> b!626665 m!602081))

(declare-fun m!602083 () Bool)

(assert (=> b!626663 m!602083))

(declare-fun m!602085 () Bool)

(assert (=> b!626667 m!602085))

(declare-fun m!602087 () Bool)

(assert (=> b!626666 m!602087))

(declare-fun m!602089 () Bool)

(assert (=> b!626664 m!602089))

(declare-fun m!602091 () Bool)

(assert (=> b!626661 m!602091))

(assert (=> b!626661 m!602091))

(declare-fun m!602093 () Bool)

(assert (=> b!626661 m!602093))

(assert (=> b!626662 m!602091))

(assert (=> b!626662 m!602091))

(declare-fun m!602095 () Bool)

(assert (=> b!626662 m!602095))

(declare-fun m!602097 () Bool)

(assert (=> start!56600 m!602097))

(declare-fun m!602099 () Bool)

(assert (=> start!56600 m!602099))

(declare-fun m!602101 () Bool)

(assert (=> b!626669 m!602101))

(declare-fun m!602103 () Bool)

(assert (=> b!626669 m!602103))

(declare-fun m!602105 () Bool)

(assert (=> b!626669 m!602105))

(check-sat (not b!626662) (not b!626665) (not b!626664) (not b!626666) (not start!56600) (not b!626663) (not b!626661) (not b!626667))
(check-sat)
