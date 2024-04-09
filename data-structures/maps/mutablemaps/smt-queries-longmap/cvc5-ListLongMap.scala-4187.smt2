; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57108 () Bool)

(assert start!57108)

(declare-fun res!408645 () Bool)

(declare-fun e!361224 () Bool)

(assert (=> start!57108 (=> (not res!408645) (not e!361224))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57108 (= res!408645 (validMask!0 mask!3053))))

(assert (=> start!57108 e!361224))

(assert (=> start!57108 true))

(declare-datatypes ((array!38088 0))(
  ( (array!38089 (arr!18273 (Array (_ BitVec 32) (_ BitVec 64))) (size!18637 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38088)

(declare-fun array_inv!14047 (array!38088) Bool)

(assert (=> start!57108 (array_inv!14047 a!2986)))

(declare-fun b!631803 () Bool)

(declare-datatypes ((Unit!21238 0))(
  ( (Unit!21239) )
))
(declare-fun e!361225 () Unit!21238)

(declare-fun Unit!21240 () Unit!21238)

(assert (=> b!631803 (= e!361225 Unit!21240)))

(assert (=> b!631803 false))

(declare-fun b!631804 () Bool)

(declare-fun res!408646 () Bool)

(assert (=> b!631804 (=> (not res!408646) (not e!361224))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631804 (= res!408646 (validKeyInArray!0 k!1786))))

(declare-fun b!631805 () Bool)

(declare-fun res!408641 () Bool)

(declare-fun e!361228 () Bool)

(assert (=> b!631805 (=> (not res!408641) (not e!361228))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631805 (= res!408641 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18273 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631806 () Bool)

(declare-fun res!408642 () Bool)

(assert (=> b!631806 (=> (not res!408642) (not e!361224))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!631806 (= res!408642 (and (= (size!18637 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18637 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18637 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631807 () Bool)

(assert (=> b!631807 (= e!361224 e!361228)))

(declare-fun res!408643 () Bool)

(assert (=> b!631807 (=> (not res!408643) (not e!361228))))

(declare-datatypes ((SeekEntryResult!6720 0))(
  ( (MissingZero!6720 (index!29172 (_ BitVec 32))) (Found!6720 (index!29173 (_ BitVec 32))) (Intermediate!6720 (undefined!7532 Bool) (index!29174 (_ BitVec 32)) (x!57940 (_ BitVec 32))) (Undefined!6720) (MissingVacant!6720 (index!29175 (_ BitVec 32))) )
))
(declare-fun lt!291996 () SeekEntryResult!6720)

(assert (=> b!631807 (= res!408643 (or (= lt!291996 (MissingZero!6720 i!1108)) (= lt!291996 (MissingVacant!6720 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38088 (_ BitVec 32)) SeekEntryResult!6720)

(assert (=> b!631807 (= lt!291996 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631808 () Bool)

(declare-fun res!408638 () Bool)

(assert (=> b!631808 (=> (not res!408638) (not e!361228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38088 (_ BitVec 32)) Bool)

(assert (=> b!631808 (= res!408638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631809 () Bool)

(declare-fun e!361231 () Bool)

(declare-fun e!361226 () Bool)

(assert (=> b!631809 (= e!361231 (not e!361226))))

(declare-fun res!408640 () Bool)

(assert (=> b!631809 (=> res!408640 e!361226)))

(declare-fun lt!291994 () SeekEntryResult!6720)

(assert (=> b!631809 (= res!408640 (not (= lt!291994 (Found!6720 index!984))))))

(declare-fun lt!291988 () Unit!21238)

(assert (=> b!631809 (= lt!291988 e!361225)))

(declare-fun c!71951 () Bool)

(assert (=> b!631809 (= c!71951 (= lt!291994 Undefined!6720))))

(declare-fun lt!291995 () array!38088)

(declare-fun lt!291990 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38088 (_ BitVec 32)) SeekEntryResult!6720)

(assert (=> b!631809 (= lt!291994 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291990 lt!291995 mask!3053))))

(declare-fun e!361229 () Bool)

(assert (=> b!631809 e!361229))

(declare-fun res!408644 () Bool)

(assert (=> b!631809 (=> (not res!408644) (not e!361229))))

(declare-fun lt!291991 () (_ BitVec 32))

(declare-fun lt!291989 () SeekEntryResult!6720)

(assert (=> b!631809 (= res!408644 (= lt!291989 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291991 vacantSpotIndex!68 lt!291990 lt!291995 mask!3053)))))

(assert (=> b!631809 (= lt!291989 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291991 vacantSpotIndex!68 (select (arr!18273 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631809 (= lt!291990 (select (store (arr!18273 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291993 () Unit!21238)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38088 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21238)

(assert (=> b!631809 (= lt!291993 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291991 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631809 (= lt!291991 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631810 () Bool)

(declare-fun res!408636 () Bool)

(assert (=> b!631810 (=> (not res!408636) (not e!361228))))

(declare-datatypes ((List!12367 0))(
  ( (Nil!12364) (Cons!12363 (h!13408 (_ BitVec 64)) (t!18603 List!12367)) )
))
(declare-fun arrayNoDuplicates!0 (array!38088 (_ BitVec 32) List!12367) Bool)

(assert (=> b!631810 (= res!408636 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12364))))

(declare-fun b!631811 () Bool)

(assert (=> b!631811 (= e!361226 true)))

(assert (=> b!631811 (= (select (store (arr!18273 a!2986) i!1108 k!1786) index!984) (select (arr!18273 a!2986) j!136))))

(declare-fun b!631812 () Bool)

(declare-fun Unit!21241 () Unit!21238)

(assert (=> b!631812 (= e!361225 Unit!21241)))

(declare-fun b!631813 () Bool)

(declare-fun res!408647 () Bool)

(assert (=> b!631813 (=> (not res!408647) (not e!361224))))

(declare-fun arrayContainsKey!0 (array!38088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631813 (= res!408647 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631814 () Bool)

(declare-fun e!361227 () Bool)

(assert (=> b!631814 (= e!361228 e!361227)))

(declare-fun res!408639 () Bool)

(assert (=> b!631814 (=> (not res!408639) (not e!361227))))

(assert (=> b!631814 (= res!408639 (= (select (store (arr!18273 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631814 (= lt!291995 (array!38089 (store (arr!18273 a!2986) i!1108 k!1786) (size!18637 a!2986)))))

(declare-fun b!631815 () Bool)

(declare-fun res!408637 () Bool)

(assert (=> b!631815 (=> (not res!408637) (not e!361224))))

(assert (=> b!631815 (= res!408637 (validKeyInArray!0 (select (arr!18273 a!2986) j!136)))))

(declare-fun b!631816 () Bool)

(declare-fun lt!291992 () SeekEntryResult!6720)

(assert (=> b!631816 (= e!361229 (= lt!291992 lt!291989))))

(declare-fun b!631817 () Bool)

(assert (=> b!631817 (= e!361227 e!361231)))

(declare-fun res!408635 () Bool)

(assert (=> b!631817 (=> (not res!408635) (not e!361231))))

(assert (=> b!631817 (= res!408635 (and (= lt!291992 (Found!6720 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18273 a!2986) index!984) (select (arr!18273 a!2986) j!136))) (not (= (select (arr!18273 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631817 (= lt!291992 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18273 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57108 res!408645) b!631806))

(assert (= (and b!631806 res!408642) b!631815))

(assert (= (and b!631815 res!408637) b!631804))

(assert (= (and b!631804 res!408646) b!631813))

(assert (= (and b!631813 res!408647) b!631807))

(assert (= (and b!631807 res!408643) b!631808))

(assert (= (and b!631808 res!408638) b!631810))

(assert (= (and b!631810 res!408636) b!631805))

(assert (= (and b!631805 res!408641) b!631814))

(assert (= (and b!631814 res!408639) b!631817))

(assert (= (and b!631817 res!408635) b!631809))

(assert (= (and b!631809 res!408644) b!631816))

(assert (= (and b!631809 c!71951) b!631803))

(assert (= (and b!631809 (not c!71951)) b!631812))

(assert (= (and b!631809 (not res!408640)) b!631811))

(declare-fun m!606717 () Bool)

(assert (=> b!631804 m!606717))

(declare-fun m!606719 () Bool)

(assert (=> b!631805 m!606719))

(declare-fun m!606721 () Bool)

(assert (=> b!631817 m!606721))

(declare-fun m!606723 () Bool)

(assert (=> b!631817 m!606723))

(assert (=> b!631817 m!606723))

(declare-fun m!606725 () Bool)

(assert (=> b!631817 m!606725))

(declare-fun m!606727 () Bool)

(assert (=> b!631809 m!606727))

(declare-fun m!606729 () Bool)

(assert (=> b!631809 m!606729))

(declare-fun m!606731 () Bool)

(assert (=> b!631809 m!606731))

(declare-fun m!606733 () Bool)

(assert (=> b!631809 m!606733))

(assert (=> b!631809 m!606723))

(declare-fun m!606735 () Bool)

(assert (=> b!631809 m!606735))

(declare-fun m!606737 () Bool)

(assert (=> b!631809 m!606737))

(assert (=> b!631809 m!606723))

(declare-fun m!606739 () Bool)

(assert (=> b!631809 m!606739))

(assert (=> b!631814 m!606735))

(declare-fun m!606741 () Bool)

(assert (=> b!631814 m!606741))

(declare-fun m!606743 () Bool)

(assert (=> b!631808 m!606743))

(assert (=> b!631815 m!606723))

(assert (=> b!631815 m!606723))

(declare-fun m!606745 () Bool)

(assert (=> b!631815 m!606745))

(assert (=> b!631811 m!606735))

(declare-fun m!606747 () Bool)

(assert (=> b!631811 m!606747))

(assert (=> b!631811 m!606723))

(declare-fun m!606749 () Bool)

(assert (=> start!57108 m!606749))

(declare-fun m!606751 () Bool)

(assert (=> start!57108 m!606751))

(declare-fun m!606753 () Bool)

(assert (=> b!631813 m!606753))

(declare-fun m!606755 () Bool)

(assert (=> b!631810 m!606755))

(declare-fun m!606757 () Bool)

(assert (=> b!631807 m!606757))

(push 1)

