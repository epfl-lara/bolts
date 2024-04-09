; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53930 () Bool)

(assert start!53930)

(declare-fun b!588079 () Bool)

(declare-fun res!375867 () Bool)

(declare-fun e!335842 () Bool)

(assert (=> b!588079 (=> (not res!375867) (not e!335842))))

(declare-datatypes ((array!36728 0))(
  ( (array!36729 (arr!17633 (Array (_ BitVec 32) (_ BitVec 64))) (size!17997 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36728)

(declare-datatypes ((List!11727 0))(
  ( (Nil!11724) (Cons!11723 (h!12768 (_ BitVec 64)) (t!17963 List!11727)) )
))
(declare-fun arrayNoDuplicates!0 (array!36728 (_ BitVec 32) List!11727) Bool)

(assert (=> b!588079 (= res!375867 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11724))))

(declare-fun b!588081 () Bool)

(declare-fun res!375866 () Bool)

(assert (=> b!588081 (=> (not res!375866) (not e!335842))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36728 (_ BitVec 32)) Bool)

(assert (=> b!588081 (= res!375866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588082 () Bool)

(declare-fun e!335840 () Bool)

(declare-datatypes ((SeekEntryResult!6080 0))(
  ( (MissingZero!6080 (index!26550 (_ BitVec 32))) (Found!6080 (index!26551 (_ BitVec 32))) (Intermediate!6080 (undefined!6892 Bool) (index!26552 (_ BitVec 32)) (x!55377 (_ BitVec 32))) (Undefined!6080) (MissingVacant!6080 (index!26553 (_ BitVec 32))) )
))
(declare-fun lt!266677 () SeekEntryResult!6080)

(declare-fun lt!266681 () SeekEntryResult!6080)

(assert (=> b!588082 (= e!335840 (= lt!266677 lt!266681))))

(declare-fun b!588083 () Bool)

(declare-fun res!375872 () Bool)

(assert (=> b!588083 (=> (not res!375872) (not e!335842))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588083 (= res!375872 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17633 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17633 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588084 () Bool)

(declare-fun res!375870 () Bool)

(declare-fun e!335841 () Bool)

(assert (=> b!588084 (=> (not res!375870) (not e!335841))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588084 (= res!375870 (and (= (size!17997 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17997 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17997 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588085 () Bool)

(declare-fun e!335838 () Bool)

(assert (=> b!588085 (= e!335838 (not true))))

(assert (=> b!588085 e!335840))

(declare-fun res!375871 () Bool)

(assert (=> b!588085 (=> (not res!375871) (not e!335840))))

(declare-fun lt!266680 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36728 (_ BitVec 32)) SeekEntryResult!6080)

(assert (=> b!588085 (= res!375871 (= lt!266681 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266680 vacantSpotIndex!68 (select (store (arr!17633 a!2986) i!1108 k!1786) j!136) (array!36729 (store (arr!17633 a!2986) i!1108 k!1786) (size!17997 a!2986)) mask!3053)))))

(assert (=> b!588085 (= lt!266681 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266680 vacantSpotIndex!68 (select (arr!17633 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18284 0))(
  ( (Unit!18285) )
))
(declare-fun lt!266678 () Unit!18284)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36728 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18284)

(assert (=> b!588085 (= lt!266678 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266680 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588085 (= lt!266680 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588086 () Bool)

(declare-fun res!375868 () Bool)

(assert (=> b!588086 (=> (not res!375868) (not e!335841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588086 (= res!375868 (validKeyInArray!0 (select (arr!17633 a!2986) j!136)))))

(declare-fun b!588087 () Bool)

(declare-fun res!375875 () Bool)

(assert (=> b!588087 (=> (not res!375875) (not e!335841))))

(declare-fun arrayContainsKey!0 (array!36728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588087 (= res!375875 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!375874 () Bool)

(assert (=> start!53930 (=> (not res!375874) (not e!335841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53930 (= res!375874 (validMask!0 mask!3053))))

(assert (=> start!53930 e!335841))

(assert (=> start!53930 true))

(declare-fun array_inv!13407 (array!36728) Bool)

(assert (=> start!53930 (array_inv!13407 a!2986)))

(declare-fun b!588080 () Bool)

(assert (=> b!588080 (= e!335842 e!335838)))

(declare-fun res!375865 () Bool)

(assert (=> b!588080 (=> (not res!375865) (not e!335838))))

(assert (=> b!588080 (= res!375865 (and (= lt!266677 (Found!6080 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17633 a!2986) index!984) (select (arr!17633 a!2986) j!136))) (not (= (select (arr!17633 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588080 (= lt!266677 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17633 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588088 () Bool)

(declare-fun res!375869 () Bool)

(assert (=> b!588088 (=> (not res!375869) (not e!335841))))

(assert (=> b!588088 (= res!375869 (validKeyInArray!0 k!1786))))

(declare-fun b!588089 () Bool)

(assert (=> b!588089 (= e!335841 e!335842)))

(declare-fun res!375873 () Bool)

(assert (=> b!588089 (=> (not res!375873) (not e!335842))))

(declare-fun lt!266679 () SeekEntryResult!6080)

(assert (=> b!588089 (= res!375873 (or (= lt!266679 (MissingZero!6080 i!1108)) (= lt!266679 (MissingVacant!6080 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36728 (_ BitVec 32)) SeekEntryResult!6080)

(assert (=> b!588089 (= lt!266679 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53930 res!375874) b!588084))

(assert (= (and b!588084 res!375870) b!588086))

(assert (= (and b!588086 res!375868) b!588088))

(assert (= (and b!588088 res!375869) b!588087))

(assert (= (and b!588087 res!375875) b!588089))

(assert (= (and b!588089 res!375873) b!588081))

(assert (= (and b!588081 res!375866) b!588079))

(assert (= (and b!588079 res!375867) b!588083))

(assert (= (and b!588083 res!375872) b!588080))

(assert (= (and b!588080 res!375865) b!588085))

(assert (= (and b!588085 res!375871) b!588082))

(declare-fun m!566657 () Bool)

(assert (=> b!588081 m!566657))

(declare-fun m!566659 () Bool)

(assert (=> b!588083 m!566659))

(declare-fun m!566661 () Bool)

(assert (=> b!588083 m!566661))

(declare-fun m!566663 () Bool)

(assert (=> b!588083 m!566663))

(declare-fun m!566665 () Bool)

(assert (=> b!588086 m!566665))

(assert (=> b!588086 m!566665))

(declare-fun m!566667 () Bool)

(assert (=> b!588086 m!566667))

(declare-fun m!566669 () Bool)

(assert (=> b!588080 m!566669))

(assert (=> b!588080 m!566665))

(assert (=> b!588080 m!566665))

(declare-fun m!566671 () Bool)

(assert (=> b!588080 m!566671))

(declare-fun m!566673 () Bool)

(assert (=> start!53930 m!566673))

(declare-fun m!566675 () Bool)

(assert (=> start!53930 m!566675))

(declare-fun m!566677 () Bool)

(assert (=> b!588089 m!566677))

(declare-fun m!566679 () Bool)

(assert (=> b!588079 m!566679))

(declare-fun m!566681 () Bool)

(assert (=> b!588085 m!566681))

(assert (=> b!588085 m!566665))

(assert (=> b!588085 m!566661))

(declare-fun m!566683 () Bool)

(assert (=> b!588085 m!566683))

(declare-fun m!566685 () Bool)

(assert (=> b!588085 m!566685))

(assert (=> b!588085 m!566665))

(declare-fun m!566687 () Bool)

(assert (=> b!588085 m!566687))

(assert (=> b!588085 m!566681))

(declare-fun m!566689 () Bool)

(assert (=> b!588085 m!566689))

(declare-fun m!566691 () Bool)

(assert (=> b!588087 m!566691))

(declare-fun m!566693 () Bool)

(assert (=> b!588088 m!566693))

(push 1)

(assert (not b!588085))

(assert (not b!588081))

(assert (not b!588088))

(assert (not b!588087))

(assert (not b!588080))

(assert (not start!53930))

(assert (not b!588086))

(assert (not b!588079))

(assert (not b!588089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

