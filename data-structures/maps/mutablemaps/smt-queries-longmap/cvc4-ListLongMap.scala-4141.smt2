; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56452 () Bool)

(assert start!56452)

(declare-fun b!625500 () Bool)

(declare-fun res!403693 () Bool)

(declare-fun e!358451 () Bool)

(assert (=> b!625500 (=> (not res!403693) (not e!358451))))

(declare-datatypes ((array!37795 0))(
  ( (array!37796 (arr!18137 (Array (_ BitVec 32) (_ BitVec 64))) (size!18501 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37795)

(declare-datatypes ((List!12231 0))(
  ( (Nil!12228) (Cons!12227 (h!13272 (_ BitVec 64)) (t!18467 List!12231)) )
))
(declare-fun arrayNoDuplicates!0 (array!37795 (_ BitVec 32) List!12231) Bool)

(assert (=> b!625500 (= res!403693 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12228))))

(declare-fun b!625501 () Bool)

(declare-fun res!403689 () Bool)

(declare-fun e!358453 () Bool)

(assert (=> b!625501 (=> (not res!403689) (not e!358453))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625501 (= res!403689 (validKeyInArray!0 k!1786))))

(declare-fun b!625502 () Bool)

(assert (=> b!625502 (= e!358453 e!358451)))

(declare-fun res!403692 () Bool)

(assert (=> b!625502 (=> (not res!403692) (not e!358451))))

(declare-datatypes ((SeekEntryResult!6584 0))(
  ( (MissingZero!6584 (index!28619 (_ BitVec 32))) (Found!6584 (index!28620 (_ BitVec 32))) (Intermediate!6584 (undefined!7396 Bool) (index!28621 (_ BitVec 32)) (x!57391 (_ BitVec 32))) (Undefined!6584) (MissingVacant!6584 (index!28622 (_ BitVec 32))) )
))
(declare-fun lt!289829 () SeekEntryResult!6584)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625502 (= res!403692 (or (= lt!289829 (MissingZero!6584 i!1108)) (= lt!289829 (MissingVacant!6584 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37795 (_ BitVec 32)) SeekEntryResult!6584)

(assert (=> b!625502 (= lt!289829 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625503 () Bool)

(declare-fun res!403686 () Bool)

(assert (=> b!625503 (=> (not res!403686) (not e!358451))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625503 (= res!403686 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18137 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18137 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!403687 () Bool)

(assert (=> start!56452 (=> (not res!403687) (not e!358453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56452 (= res!403687 (validMask!0 mask!3053))))

(assert (=> start!56452 e!358453))

(assert (=> start!56452 true))

(declare-fun array_inv!13911 (array!37795) Bool)

(assert (=> start!56452 (array_inv!13911 a!2986)))

(declare-fun b!625504 () Bool)

(assert (=> b!625504 (= e!358451 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!289830 () SeekEntryResult!6584)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37795 (_ BitVec 32)) SeekEntryResult!6584)

(assert (=> b!625504 (= lt!289830 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18137 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625505 () Bool)

(declare-fun res!403694 () Bool)

(assert (=> b!625505 (=> (not res!403694) (not e!358453))))

(declare-fun arrayContainsKey!0 (array!37795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625505 (= res!403694 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625506 () Bool)

(declare-fun res!403691 () Bool)

(assert (=> b!625506 (=> (not res!403691) (not e!358453))))

(assert (=> b!625506 (= res!403691 (validKeyInArray!0 (select (arr!18137 a!2986) j!136)))))

(declare-fun b!625507 () Bool)

(declare-fun res!403690 () Bool)

(assert (=> b!625507 (=> (not res!403690) (not e!358451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37795 (_ BitVec 32)) Bool)

(assert (=> b!625507 (= res!403690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625508 () Bool)

(declare-fun res!403688 () Bool)

(assert (=> b!625508 (=> (not res!403688) (not e!358453))))

(assert (=> b!625508 (= res!403688 (and (= (size!18501 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18501 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18501 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56452 res!403687) b!625508))

(assert (= (and b!625508 res!403688) b!625506))

(assert (= (and b!625506 res!403691) b!625501))

(assert (= (and b!625501 res!403689) b!625505))

(assert (= (and b!625505 res!403694) b!625502))

(assert (= (and b!625502 res!403692) b!625507))

(assert (= (and b!625507 res!403690) b!625500))

(assert (= (and b!625500 res!403693) b!625503))

(assert (= (and b!625503 res!403686) b!625504))

(declare-fun m!601111 () Bool)

(assert (=> b!625502 m!601111))

(declare-fun m!601113 () Bool)

(assert (=> b!625504 m!601113))

(assert (=> b!625504 m!601113))

(declare-fun m!601115 () Bool)

(assert (=> b!625504 m!601115))

(declare-fun m!601117 () Bool)

(assert (=> b!625505 m!601117))

(declare-fun m!601119 () Bool)

(assert (=> b!625500 m!601119))

(declare-fun m!601121 () Bool)

(assert (=> b!625507 m!601121))

(assert (=> b!625506 m!601113))

(assert (=> b!625506 m!601113))

(declare-fun m!601123 () Bool)

(assert (=> b!625506 m!601123))

(declare-fun m!601125 () Bool)

(assert (=> b!625501 m!601125))

(declare-fun m!601127 () Bool)

(assert (=> b!625503 m!601127))

(declare-fun m!601129 () Bool)

(assert (=> b!625503 m!601129))

(declare-fun m!601131 () Bool)

(assert (=> b!625503 m!601131))

(declare-fun m!601133 () Bool)

(assert (=> start!56452 m!601133))

(declare-fun m!601135 () Bool)

(assert (=> start!56452 m!601135))

(push 1)

(assert (not b!625504))

(assert (not b!625505))

(assert (not b!625500))

(assert (not start!56452))

