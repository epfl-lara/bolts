; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53880 () Bool)

(assert start!53880)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!266366 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun b!587254 () Bool)

(declare-fun e!335527 () Bool)

(assert (=> b!587254 (= e!335527 (not (or (bvslt mask!3053 #b00000000000000000000000000000000) (bvslt lt!266366 #b00000000000000000000000000000000) (bvsge lt!266366 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000))))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36678 0))(
  ( (array!36679 (arr!17608 (Array (_ BitVec 32) (_ BitVec 64))) (size!17972 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36678)

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6055 0))(
  ( (MissingZero!6055 (index!26450 (_ BitVec 32))) (Found!6055 (index!26451 (_ BitVec 32))) (Intermediate!6055 (undefined!6867 Bool) (index!26452 (_ BitVec 32)) (x!55288 (_ BitVec 32))) (Undefined!6055) (MissingVacant!6055 (index!26453 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36678 (_ BitVec 32)) SeekEntryResult!6055)

(assert (=> b!587254 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266366 vacantSpotIndex!68 (select (arr!17608 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266366 vacantSpotIndex!68 (select (store (arr!17608 a!2986) i!1108 k0!1786) j!136) (array!36679 (store (arr!17608 a!2986) i!1108 k0!1786) (size!17972 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18234 0))(
  ( (Unit!18235) )
))
(declare-fun lt!266365 () Unit!18234)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36678 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18234)

(assert (=> b!587254 (= lt!266365 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266366 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587254 (= lt!266366 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587255 () Bool)

(declare-fun res!375042 () Bool)

(declare-fun e!335526 () Bool)

(assert (=> b!587255 (=> (not res!375042) (not e!335526))))

(declare-fun arrayContainsKey!0 (array!36678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587255 (= res!375042 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587256 () Bool)

(declare-fun res!375040 () Bool)

(assert (=> b!587256 (=> (not res!375040) (not e!335526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587256 (= res!375040 (validKeyInArray!0 (select (arr!17608 a!2986) j!136)))))

(declare-fun b!587257 () Bool)

(assert (=> b!587257 (= e!335526 e!335527)))

(declare-fun res!375046 () Bool)

(assert (=> b!587257 (=> (not res!375046) (not e!335527))))

(declare-fun lt!266364 () SeekEntryResult!6055)

(assert (=> b!587257 (= res!375046 (or (= lt!266364 (MissingZero!6055 i!1108)) (= lt!266364 (MissingVacant!6055 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36678 (_ BitVec 32)) SeekEntryResult!6055)

(assert (=> b!587257 (= lt!266364 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!587259 () Bool)

(declare-fun res!375047 () Bool)

(assert (=> b!587259 (=> (not res!375047) (not e!335527))))

(assert (=> b!587259 (= res!375047 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17608 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17608 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587260 () Bool)

(declare-fun res!375048 () Bool)

(assert (=> b!587260 (=> (not res!375048) (not e!335526))))

(assert (=> b!587260 (= res!375048 (and (= (size!17972 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17972 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17972 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587258 () Bool)

(declare-fun res!375044 () Bool)

(assert (=> b!587258 (=> (not res!375044) (not e!335527))))

(declare-datatypes ((List!11702 0))(
  ( (Nil!11699) (Cons!11698 (h!12743 (_ BitVec 64)) (t!17938 List!11702)) )
))
(declare-fun arrayNoDuplicates!0 (array!36678 (_ BitVec 32) List!11702) Bool)

(assert (=> b!587258 (= res!375044 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11699))))

(declare-fun res!375043 () Bool)

(assert (=> start!53880 (=> (not res!375043) (not e!335526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53880 (= res!375043 (validMask!0 mask!3053))))

(assert (=> start!53880 e!335526))

(assert (=> start!53880 true))

(declare-fun array_inv!13382 (array!36678) Bool)

(assert (=> start!53880 (array_inv!13382 a!2986)))

(declare-fun b!587261 () Bool)

(declare-fun res!375041 () Bool)

(assert (=> b!587261 (=> (not res!375041) (not e!335527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36678 (_ BitVec 32)) Bool)

(assert (=> b!587261 (= res!375041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587262 () Bool)

(declare-fun res!375050 () Bool)

(assert (=> b!587262 (=> (not res!375050) (not e!335526))))

(assert (=> b!587262 (= res!375050 (validKeyInArray!0 k0!1786))))

(declare-fun b!587263 () Bool)

(declare-fun res!375049 () Bool)

(assert (=> b!587263 (=> (not res!375049) (not e!335527))))

(assert (=> b!587263 (= res!375049 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17608 a!2986) j!136) a!2986 mask!3053) (Found!6055 j!136)))))

(declare-fun b!587264 () Bool)

(declare-fun res!375045 () Bool)

(assert (=> b!587264 (=> (not res!375045) (not e!335527))))

(assert (=> b!587264 (= res!375045 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17608 a!2986) index!984) (select (arr!17608 a!2986) j!136))) (not (= (select (arr!17608 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53880 res!375043) b!587260))

(assert (= (and b!587260 res!375048) b!587256))

(assert (= (and b!587256 res!375040) b!587262))

(assert (= (and b!587262 res!375050) b!587255))

(assert (= (and b!587255 res!375042) b!587257))

(assert (= (and b!587257 res!375046) b!587261))

(assert (= (and b!587261 res!375041) b!587258))

(assert (= (and b!587258 res!375044) b!587259))

(assert (= (and b!587259 res!375047) b!587263))

(assert (= (and b!587263 res!375049) b!587264))

(assert (= (and b!587264 res!375045) b!587254))

(declare-fun m!565707 () Bool)

(assert (=> b!587259 m!565707))

(declare-fun m!565709 () Bool)

(assert (=> b!587259 m!565709))

(declare-fun m!565711 () Bool)

(assert (=> b!587259 m!565711))

(declare-fun m!565713 () Bool)

(assert (=> start!53880 m!565713))

(declare-fun m!565715 () Bool)

(assert (=> start!53880 m!565715))

(declare-fun m!565717 () Bool)

(assert (=> b!587264 m!565717))

(declare-fun m!565719 () Bool)

(assert (=> b!587264 m!565719))

(declare-fun m!565721 () Bool)

(assert (=> b!587262 m!565721))

(assert (=> b!587263 m!565719))

(assert (=> b!587263 m!565719))

(declare-fun m!565723 () Bool)

(assert (=> b!587263 m!565723))

(assert (=> b!587256 m!565719))

(assert (=> b!587256 m!565719))

(declare-fun m!565725 () Bool)

(assert (=> b!587256 m!565725))

(declare-fun m!565727 () Bool)

(assert (=> b!587255 m!565727))

(declare-fun m!565729 () Bool)

(assert (=> b!587254 m!565729))

(declare-fun m!565731 () Bool)

(assert (=> b!587254 m!565731))

(assert (=> b!587254 m!565719))

(assert (=> b!587254 m!565709))

(declare-fun m!565733 () Bool)

(assert (=> b!587254 m!565733))

(assert (=> b!587254 m!565731))

(declare-fun m!565735 () Bool)

(assert (=> b!587254 m!565735))

(assert (=> b!587254 m!565719))

(declare-fun m!565737 () Bool)

(assert (=> b!587254 m!565737))

(declare-fun m!565739 () Bool)

(assert (=> b!587261 m!565739))

(declare-fun m!565741 () Bool)

(assert (=> b!587257 m!565741))

(declare-fun m!565743 () Bool)

(assert (=> b!587258 m!565743))

(check-sat (not b!587257) (not b!587256) (not b!587261) (not b!587258) (not b!587262) (not b!587254) (not b!587255) (not b!587263) (not start!53880))
(check-sat)
