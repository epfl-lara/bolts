; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56668 () Bool)

(assert start!56668)

(declare-fun b!627775 () Bool)

(declare-fun res!405656 () Bool)

(declare-fun e!359281 () Bool)

(assert (=> b!627775 (=> (not res!405656) (not e!359281))))

(declare-datatypes ((array!37921 0))(
  ( (array!37922 (arr!18197 (Array (_ BitVec 32) (_ BitVec 64))) (size!18561 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37921)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627775 (= res!405656 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627776 () Bool)

(declare-fun res!405660 () Bool)

(declare-fun e!359279 () Bool)

(assert (=> b!627776 (=> (not res!405660) (not e!359279))))

(declare-datatypes ((List!12291 0))(
  ( (Nil!12288) (Cons!12287 (h!13332 (_ BitVec 64)) (t!18527 List!12291)) )
))
(declare-fun arrayNoDuplicates!0 (array!37921 (_ BitVec 32) List!12291) Bool)

(assert (=> b!627776 (= res!405660 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12288))))

(declare-fun b!627777 () Bool)

(declare-fun res!405665 () Bool)

(assert (=> b!627777 (=> (not res!405665) (not e!359281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627777 (= res!405665 (validKeyInArray!0 k!1786))))

(declare-fun b!627778 () Bool)

(declare-fun res!405655 () Bool)

(assert (=> b!627778 (=> (not res!405655) (not e!359281))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627778 (= res!405655 (and (= (size!18561 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18561 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18561 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627779 () Bool)

(declare-fun res!405657 () Bool)

(assert (=> b!627779 (=> (not res!405657) (not e!359279))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627779 (= res!405657 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18197 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18197 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627780 () Bool)

(declare-fun res!405659 () Bool)

(assert (=> b!627780 (=> (not res!405659) (not e!359279))))

(assert (=> b!627780 (= res!405659 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18197 a!2986) index!984) (select (arr!18197 a!2986) j!136))) (not (= (select (arr!18197 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627781 () Bool)

(declare-fun res!405662 () Bool)

(assert (=> b!627781 (=> (not res!405662) (not e!359279))))

(declare-datatypes ((SeekEntryResult!6644 0))(
  ( (MissingZero!6644 (index!28859 (_ BitVec 32))) (Found!6644 (index!28860 (_ BitVec 32))) (Intermediate!6644 (undefined!7456 Bool) (index!28861 (_ BitVec 32)) (x!57617 (_ BitVec 32))) (Undefined!6644) (MissingVacant!6644 (index!28862 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37921 (_ BitVec 32)) SeekEntryResult!6644)

(assert (=> b!627781 (= res!405662 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18197 a!2986) j!136) a!2986 mask!3053) (Found!6644 j!136)))))

(declare-fun res!405664 () Bool)

(assert (=> start!56668 (=> (not res!405664) (not e!359281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56668 (= res!405664 (validMask!0 mask!3053))))

(assert (=> start!56668 e!359281))

(assert (=> start!56668 true))

(declare-fun array_inv!13971 (array!37921) Bool)

(assert (=> start!56668 (array_inv!13971 a!2986)))

(declare-fun b!627782 () Bool)

(declare-fun res!405661 () Bool)

(assert (=> b!627782 (=> (not res!405661) (not e!359279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37921 (_ BitVec 32)) Bool)

(assert (=> b!627782 (= res!405661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627783 () Bool)

(declare-fun res!405658 () Bool)

(assert (=> b!627783 (=> (not res!405658) (not e!359281))))

(assert (=> b!627783 (= res!405658 (validKeyInArray!0 (select (arr!18197 a!2986) j!136)))))

(declare-fun b!627784 () Bool)

(assert (=> b!627784 (= e!359281 e!359279)))

(declare-fun res!405663 () Bool)

(assert (=> b!627784 (=> (not res!405663) (not e!359279))))

(declare-fun lt!290322 () SeekEntryResult!6644)

(assert (=> b!627784 (= res!405663 (or (= lt!290322 (MissingZero!6644 i!1108)) (= lt!290322 (MissingVacant!6644 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37921 (_ BitVec 32)) SeekEntryResult!6644)

(assert (=> b!627784 (= lt!290322 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627785 () Bool)

(assert (=> b!627785 (= e!359279 false)))

(declare-fun lt!290321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627785 (= lt!290321 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56668 res!405664) b!627778))

(assert (= (and b!627778 res!405655) b!627783))

(assert (= (and b!627783 res!405658) b!627777))

(assert (= (and b!627777 res!405665) b!627775))

(assert (= (and b!627775 res!405656) b!627784))

(assert (= (and b!627784 res!405663) b!627782))

(assert (= (and b!627782 res!405661) b!627776))

(assert (= (and b!627776 res!405660) b!627779))

(assert (= (and b!627779 res!405657) b!627781))

(assert (= (and b!627781 res!405662) b!627780))

(assert (= (and b!627780 res!405659) b!627785))

(declare-fun m!603093 () Bool)

(assert (=> b!627781 m!603093))

(assert (=> b!627781 m!603093))

(declare-fun m!603095 () Bool)

(assert (=> b!627781 m!603095))

(assert (=> b!627783 m!603093))

(assert (=> b!627783 m!603093))

(declare-fun m!603097 () Bool)

(assert (=> b!627783 m!603097))

(declare-fun m!603099 () Bool)

(assert (=> b!627776 m!603099))

(declare-fun m!603101 () Bool)

(assert (=> b!627782 m!603101))

(declare-fun m!603103 () Bool)

(assert (=> b!627777 m!603103))

(declare-fun m!603105 () Bool)

(assert (=> b!627779 m!603105))

(declare-fun m!603107 () Bool)

(assert (=> b!627779 m!603107))

(declare-fun m!603109 () Bool)

(assert (=> b!627779 m!603109))

(declare-fun m!603111 () Bool)

(assert (=> start!56668 m!603111))

(declare-fun m!603113 () Bool)

(assert (=> start!56668 m!603113))

(declare-fun m!603115 () Bool)

(assert (=> b!627784 m!603115))

(declare-fun m!603117 () Bool)

(assert (=> b!627775 m!603117))

(declare-fun m!603119 () Bool)

(assert (=> b!627785 m!603119))

(declare-fun m!603121 () Bool)

(assert (=> b!627780 m!603121))

(assert (=> b!627780 m!603093))

(push 1)

(assert (not b!627785))

(assert (not b!627784))

(assert (not b!627776))

(assert (not start!56668))

