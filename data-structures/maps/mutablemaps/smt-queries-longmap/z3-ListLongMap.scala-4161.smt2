; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56666 () Bool)

(assert start!56666)

(declare-fun b!627742 () Bool)

(declare-fun e!359272 () Bool)

(declare-fun e!359270 () Bool)

(assert (=> b!627742 (= e!359272 e!359270)))

(declare-fun res!405629 () Bool)

(assert (=> b!627742 (=> (not res!405629) (not e!359270))))

(declare-datatypes ((SeekEntryResult!6643 0))(
  ( (MissingZero!6643 (index!28855 (_ BitVec 32))) (Found!6643 (index!28856 (_ BitVec 32))) (Intermediate!6643 (undefined!7455 Bool) (index!28857 (_ BitVec 32)) (x!57616 (_ BitVec 32))) (Undefined!6643) (MissingVacant!6643 (index!28858 (_ BitVec 32))) )
))
(declare-fun lt!290316 () SeekEntryResult!6643)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627742 (= res!405629 (or (= lt!290316 (MissingZero!6643 i!1108)) (= lt!290316 (MissingVacant!6643 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37919 0))(
  ( (array!37920 (arr!18196 (Array (_ BitVec 32) (_ BitVec 64))) (size!18560 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37919)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37919 (_ BitVec 32)) SeekEntryResult!6643)

(assert (=> b!627742 (= lt!290316 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627743 () Bool)

(declare-fun res!405626 () Bool)

(assert (=> b!627743 (=> (not res!405626) (not e!359272))))

(declare-fun arrayContainsKey!0 (array!37919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627743 (= res!405626 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627744 () Bool)

(declare-fun res!405631 () Bool)

(assert (=> b!627744 (=> (not res!405631) (not e!359270))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627744 (= res!405631 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18196 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18196 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627745 () Bool)

(declare-fun res!405630 () Bool)

(assert (=> b!627745 (=> (not res!405630) (not e!359272))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627745 (= res!405630 (validKeyInArray!0 (select (arr!18196 a!2986) j!136)))))

(declare-fun b!627746 () Bool)

(declare-fun res!405624 () Bool)

(assert (=> b!627746 (=> (not res!405624) (not e!359272))))

(assert (=> b!627746 (= res!405624 (and (= (size!18560 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18560 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18560 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627747 () Bool)

(assert (=> b!627747 (= e!359270 false)))

(declare-fun lt!290315 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627747 (= lt!290315 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627748 () Bool)

(declare-fun res!405627 () Bool)

(assert (=> b!627748 (=> (not res!405627) (not e!359270))))

(declare-datatypes ((List!12290 0))(
  ( (Nil!12287) (Cons!12286 (h!13331 (_ BitVec 64)) (t!18526 List!12290)) )
))
(declare-fun arrayNoDuplicates!0 (array!37919 (_ BitVec 32) List!12290) Bool)

(assert (=> b!627748 (= res!405627 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12287))))

(declare-fun b!627749 () Bool)

(declare-fun res!405632 () Bool)

(assert (=> b!627749 (=> (not res!405632) (not e!359272))))

(assert (=> b!627749 (= res!405632 (validKeyInArray!0 k0!1786))))

(declare-fun res!405628 () Bool)

(assert (=> start!56666 (=> (not res!405628) (not e!359272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56666 (= res!405628 (validMask!0 mask!3053))))

(assert (=> start!56666 e!359272))

(assert (=> start!56666 true))

(declare-fun array_inv!13970 (array!37919) Bool)

(assert (=> start!56666 (array_inv!13970 a!2986)))

(declare-fun b!627750 () Bool)

(declare-fun res!405625 () Bool)

(assert (=> b!627750 (=> (not res!405625) (not e!359270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37919 (_ BitVec 32)) Bool)

(assert (=> b!627750 (= res!405625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627751 () Bool)

(declare-fun res!405623 () Bool)

(assert (=> b!627751 (=> (not res!405623) (not e!359270))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37919 (_ BitVec 32)) SeekEntryResult!6643)

(assert (=> b!627751 (= res!405623 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18196 a!2986) j!136) a!2986 mask!3053) (Found!6643 j!136)))))

(declare-fun b!627752 () Bool)

(declare-fun res!405622 () Bool)

(assert (=> b!627752 (=> (not res!405622) (not e!359270))))

(assert (=> b!627752 (= res!405622 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18196 a!2986) index!984) (select (arr!18196 a!2986) j!136))) (not (= (select (arr!18196 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56666 res!405628) b!627746))

(assert (= (and b!627746 res!405624) b!627745))

(assert (= (and b!627745 res!405630) b!627749))

(assert (= (and b!627749 res!405632) b!627743))

(assert (= (and b!627743 res!405626) b!627742))

(assert (= (and b!627742 res!405629) b!627750))

(assert (= (and b!627750 res!405625) b!627748))

(assert (= (and b!627748 res!405627) b!627744))

(assert (= (and b!627744 res!405631) b!627751))

(assert (= (and b!627751 res!405623) b!627752))

(assert (= (and b!627752 res!405622) b!627747))

(declare-fun m!603063 () Bool)

(assert (=> b!627749 m!603063))

(declare-fun m!603065 () Bool)

(assert (=> b!627752 m!603065))

(declare-fun m!603067 () Bool)

(assert (=> b!627752 m!603067))

(declare-fun m!603069 () Bool)

(assert (=> b!627743 m!603069))

(declare-fun m!603071 () Bool)

(assert (=> b!627747 m!603071))

(declare-fun m!603073 () Bool)

(assert (=> b!627748 m!603073))

(assert (=> b!627745 m!603067))

(assert (=> b!627745 m!603067))

(declare-fun m!603075 () Bool)

(assert (=> b!627745 m!603075))

(declare-fun m!603077 () Bool)

(assert (=> b!627742 m!603077))

(declare-fun m!603079 () Bool)

(assert (=> start!56666 m!603079))

(declare-fun m!603081 () Bool)

(assert (=> start!56666 m!603081))

(declare-fun m!603083 () Bool)

(assert (=> b!627750 m!603083))

(declare-fun m!603085 () Bool)

(assert (=> b!627744 m!603085))

(declare-fun m!603087 () Bool)

(assert (=> b!627744 m!603087))

(declare-fun m!603089 () Bool)

(assert (=> b!627744 m!603089))

(assert (=> b!627751 m!603067))

(assert (=> b!627751 m!603067))

(declare-fun m!603091 () Bool)

(assert (=> b!627751 m!603091))

(check-sat (not b!627747) (not b!627748) (not b!627750) (not start!56666) (not b!627742) (not b!627743) (not b!627745) (not b!627751) (not b!627749))
(check-sat)
