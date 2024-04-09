; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56606 () Bool)

(assert start!56606)

(declare-fun b!626752 () Bool)

(declare-fun res!404634 () Bool)

(declare-fun e!359000 () Bool)

(assert (=> b!626752 (=> (not res!404634) (not e!359000))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626752 (= res!404634 (validKeyInArray!0 k0!1786))))

(declare-fun b!626753 () Bool)

(declare-fun res!404642 () Bool)

(declare-fun e!359002 () Bool)

(assert (=> b!626753 (=> (not res!404642) (not e!359002))))

(declare-datatypes ((array!37859 0))(
  ( (array!37860 (arr!18166 (Array (_ BitVec 32) (_ BitVec 64))) (size!18530 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37859)

(declare-datatypes ((List!12260 0))(
  ( (Nil!12257) (Cons!12256 (h!13301 (_ BitVec 64)) (t!18496 List!12260)) )
))
(declare-fun arrayNoDuplicates!0 (array!37859 (_ BitVec 32) List!12260) Bool)

(assert (=> b!626753 (= res!404642 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12257))))

(declare-fun b!626754 () Bool)

(assert (=> b!626754 (= e!359000 e!359002)))

(declare-fun res!404633 () Bool)

(assert (=> b!626754 (=> (not res!404633) (not e!359002))))

(declare-datatypes ((SeekEntryResult!6613 0))(
  ( (MissingZero!6613 (index!28735 (_ BitVec 32))) (Found!6613 (index!28736 (_ BitVec 32))) (Intermediate!6613 (undefined!7425 Bool) (index!28737 (_ BitVec 32)) (x!57506 (_ BitVec 32))) (Undefined!6613) (MissingVacant!6613 (index!28738 (_ BitVec 32))) )
))
(declare-fun lt!290135 () SeekEntryResult!6613)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626754 (= res!404633 (or (= lt!290135 (MissingZero!6613 i!1108)) (= lt!290135 (MissingVacant!6613 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37859 (_ BitVec 32)) SeekEntryResult!6613)

(assert (=> b!626754 (= lt!290135 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626755 () Bool)

(declare-fun res!404637 () Bool)

(assert (=> b!626755 (=> (not res!404637) (not e!359000))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626755 (= res!404637 (and (= (size!18530 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18530 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18530 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626756 () Bool)

(declare-fun res!404636 () Bool)

(assert (=> b!626756 (=> (not res!404636) (not e!359002))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37859 (_ BitVec 32)) SeekEntryResult!6613)

(assert (=> b!626756 (= res!404636 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18166 a!2986) j!136) a!2986 mask!3053) (Found!6613 j!136)))))

(declare-fun res!404639 () Bool)

(assert (=> start!56606 (=> (not res!404639) (not e!359000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56606 (= res!404639 (validMask!0 mask!3053))))

(assert (=> start!56606 e!359000))

(assert (=> start!56606 true))

(declare-fun array_inv!13940 (array!37859) Bool)

(assert (=> start!56606 (array_inv!13940 a!2986)))

(declare-fun b!626757 () Bool)

(declare-fun res!404638 () Bool)

(assert (=> b!626757 (=> (not res!404638) (not e!359002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37859 (_ BitVec 32)) Bool)

(assert (=> b!626757 (= res!404638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626758 () Bool)

(declare-fun res!404632 () Bool)

(assert (=> b!626758 (=> (not res!404632) (not e!359000))))

(declare-fun arrayContainsKey!0 (array!37859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626758 (= res!404632 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626759 () Bool)

(assert (=> b!626759 (= e!359002 false)))

(declare-fun lt!290136 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626759 (= lt!290136 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626760 () Bool)

(declare-fun res!404641 () Bool)

(assert (=> b!626760 (=> (not res!404641) (not e!359002))))

(assert (=> b!626760 (= res!404641 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18166 a!2986) index!984) (select (arr!18166 a!2986) j!136))) (not (= (select (arr!18166 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626761 () Bool)

(declare-fun res!404640 () Bool)

(assert (=> b!626761 (=> (not res!404640) (not e!359000))))

(assert (=> b!626761 (= res!404640 (validKeyInArray!0 (select (arr!18166 a!2986) j!136)))))

(declare-fun b!626762 () Bool)

(declare-fun res!404635 () Bool)

(assert (=> b!626762 (=> (not res!404635) (not e!359002))))

(assert (=> b!626762 (= res!404635 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18166 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18166 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56606 res!404639) b!626755))

(assert (= (and b!626755 res!404637) b!626761))

(assert (= (and b!626761 res!404640) b!626752))

(assert (= (and b!626752 res!404634) b!626758))

(assert (= (and b!626758 res!404632) b!626754))

(assert (= (and b!626754 res!404633) b!626757))

(assert (= (and b!626757 res!404638) b!626753))

(assert (= (and b!626753 res!404642) b!626762))

(assert (= (and b!626762 res!404635) b!626756))

(assert (= (and b!626756 res!404636) b!626760))

(assert (= (and b!626760 res!404641) b!626759))

(declare-fun m!602163 () Bool)

(assert (=> start!56606 m!602163))

(declare-fun m!602165 () Bool)

(assert (=> start!56606 m!602165))

(declare-fun m!602167 () Bool)

(assert (=> b!626761 m!602167))

(assert (=> b!626761 m!602167))

(declare-fun m!602169 () Bool)

(assert (=> b!626761 m!602169))

(declare-fun m!602171 () Bool)

(assert (=> b!626754 m!602171))

(declare-fun m!602173 () Bool)

(assert (=> b!626752 m!602173))

(declare-fun m!602175 () Bool)

(assert (=> b!626758 m!602175))

(declare-fun m!602177 () Bool)

(assert (=> b!626760 m!602177))

(assert (=> b!626760 m!602167))

(declare-fun m!602179 () Bool)

(assert (=> b!626759 m!602179))

(assert (=> b!626756 m!602167))

(assert (=> b!626756 m!602167))

(declare-fun m!602181 () Bool)

(assert (=> b!626756 m!602181))

(declare-fun m!602183 () Bool)

(assert (=> b!626757 m!602183))

(declare-fun m!602185 () Bool)

(assert (=> b!626762 m!602185))

(declare-fun m!602187 () Bool)

(assert (=> b!626762 m!602187))

(declare-fun m!602189 () Bool)

(assert (=> b!626762 m!602189))

(declare-fun m!602191 () Bool)

(assert (=> b!626753 m!602191))

(check-sat (not b!626758) (not b!626757) (not b!626759) (not start!56606) (not b!626754) (not b!626753) (not b!626752) (not b!626761) (not b!626756))
(check-sat)
