; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56448 () Bool)

(assert start!56448)

(declare-fun b!625446 () Bool)

(declare-fun e!358434 () Bool)

(declare-fun e!358433 () Bool)

(assert (=> b!625446 (= e!358434 e!358433)))

(declare-fun res!403635 () Bool)

(assert (=> b!625446 (=> (not res!403635) (not e!358433))))

(declare-datatypes ((SeekEntryResult!6582 0))(
  ( (MissingZero!6582 (index!28611 (_ BitVec 32))) (Found!6582 (index!28612 (_ BitVec 32))) (Intermediate!6582 (undefined!7394 Bool) (index!28613 (_ BitVec 32)) (x!57389 (_ BitVec 32))) (Undefined!6582) (MissingVacant!6582 (index!28614 (_ BitVec 32))) )
))
(declare-fun lt!289817 () SeekEntryResult!6582)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625446 (= res!403635 (or (= lt!289817 (MissingZero!6582 i!1108)) (= lt!289817 (MissingVacant!6582 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37791 0))(
  ( (array!37792 (arr!18135 (Array (_ BitVec 32) (_ BitVec 64))) (size!18499 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37791)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37791 (_ BitVec 32)) SeekEntryResult!6582)

(assert (=> b!625446 (= lt!289817 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625448 () Bool)

(declare-fun res!403638 () Bool)

(assert (=> b!625448 (=> (not res!403638) (not e!358433))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625448 (= res!403638 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18135 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18135 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625449 () Bool)

(declare-fun res!403636 () Bool)

(assert (=> b!625449 (=> (not res!403636) (not e!358434))))

(declare-fun arrayContainsKey!0 (array!37791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625449 (= res!403636 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625450 () Bool)

(assert (=> b!625450 (= e!358433 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!289818 () SeekEntryResult!6582)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37791 (_ BitVec 32)) SeekEntryResult!6582)

(assert (=> b!625450 (= lt!289818 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18135 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625451 () Bool)

(declare-fun res!403634 () Bool)

(assert (=> b!625451 (=> (not res!403634) (not e!358433))))

(declare-datatypes ((List!12229 0))(
  ( (Nil!12226) (Cons!12225 (h!13270 (_ BitVec 64)) (t!18465 List!12229)) )
))
(declare-fun arrayNoDuplicates!0 (array!37791 (_ BitVec 32) List!12229) Bool)

(assert (=> b!625451 (= res!403634 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12226))))

(declare-fun b!625452 () Bool)

(declare-fun res!403640 () Bool)

(assert (=> b!625452 (=> (not res!403640) (not e!358434))))

(assert (=> b!625452 (= res!403640 (and (= (size!18499 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18499 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18499 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625447 () Bool)

(declare-fun res!403632 () Bool)

(assert (=> b!625447 (=> (not res!403632) (not e!358434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625447 (= res!403632 (validKeyInArray!0 (select (arr!18135 a!2986) j!136)))))

(declare-fun res!403633 () Bool)

(assert (=> start!56448 (=> (not res!403633) (not e!358434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56448 (= res!403633 (validMask!0 mask!3053))))

(assert (=> start!56448 e!358434))

(assert (=> start!56448 true))

(declare-fun array_inv!13909 (array!37791) Bool)

(assert (=> start!56448 (array_inv!13909 a!2986)))

(declare-fun b!625453 () Bool)

(declare-fun res!403639 () Bool)

(assert (=> b!625453 (=> (not res!403639) (not e!358434))))

(assert (=> b!625453 (= res!403639 (validKeyInArray!0 k!1786))))

(declare-fun b!625454 () Bool)

(declare-fun res!403637 () Bool)

(assert (=> b!625454 (=> (not res!403637) (not e!358433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37791 (_ BitVec 32)) Bool)

(assert (=> b!625454 (= res!403637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56448 res!403633) b!625452))

(assert (= (and b!625452 res!403640) b!625447))

(assert (= (and b!625447 res!403632) b!625453))

(assert (= (and b!625453 res!403639) b!625449))

(assert (= (and b!625449 res!403636) b!625446))

(assert (= (and b!625446 res!403635) b!625454))

(assert (= (and b!625454 res!403637) b!625451))

(assert (= (and b!625451 res!403634) b!625448))

(assert (= (and b!625448 res!403638) b!625450))

(declare-fun m!601059 () Bool)

(assert (=> b!625446 m!601059))

(declare-fun m!601061 () Bool)

(assert (=> b!625449 m!601061))

(declare-fun m!601063 () Bool)

(assert (=> b!625448 m!601063))

(declare-fun m!601065 () Bool)

(assert (=> b!625448 m!601065))

(declare-fun m!601067 () Bool)

(assert (=> b!625448 m!601067))

(declare-fun m!601069 () Bool)

(assert (=> b!625451 m!601069))

(declare-fun m!601071 () Bool)

(assert (=> b!625447 m!601071))

(assert (=> b!625447 m!601071))

(declare-fun m!601073 () Bool)

(assert (=> b!625447 m!601073))

(declare-fun m!601075 () Bool)

(assert (=> start!56448 m!601075))

(declare-fun m!601077 () Bool)

(assert (=> start!56448 m!601077))

(declare-fun m!601079 () Bool)

(assert (=> b!625453 m!601079))

(declare-fun m!601081 () Bool)

(assert (=> b!625454 m!601081))

(assert (=> b!625450 m!601071))

(assert (=> b!625450 m!601071))

(declare-fun m!601083 () Bool)

(assert (=> b!625450 m!601083))

(push 1)

