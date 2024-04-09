; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53932 () Bool)

(assert start!53932)

(declare-fun res!375899 () Bool)

(declare-fun e!335854 () Bool)

(assert (=> start!53932 (=> (not res!375899) (not e!335854))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53932 (= res!375899 (validMask!0 mask!3053))))

(assert (=> start!53932 e!335854))

(assert (=> start!53932 true))

(declare-datatypes ((array!36730 0))(
  ( (array!36731 (arr!17634 (Array (_ BitVec 32) (_ BitVec 64))) (size!17998 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36730)

(declare-fun array_inv!13408 (array!36730) Bool)

(assert (=> start!53932 (array_inv!13408 a!2986)))

(declare-fun b!588112 () Bool)

(declare-fun e!335853 () Bool)

(declare-datatypes ((SeekEntryResult!6081 0))(
  ( (MissingZero!6081 (index!26554 (_ BitVec 32))) (Found!6081 (index!26555 (_ BitVec 32))) (Intermediate!6081 (undefined!6893 Bool) (index!26556 (_ BitVec 32)) (x!55386 (_ BitVec 32))) (Undefined!6081) (MissingVacant!6081 (index!26557 (_ BitVec 32))) )
))
(declare-fun lt!266692 () SeekEntryResult!6081)

(declare-fun lt!266696 () SeekEntryResult!6081)

(assert (=> b!588112 (= e!335853 (= lt!266692 lt!266696))))

(declare-fun b!588113 () Bool)

(declare-fun res!375908 () Bool)

(assert (=> b!588113 (=> (not res!375908) (not e!335854))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588113 (= res!375908 (and (= (size!17998 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17998 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17998 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588114 () Bool)

(declare-fun e!335856 () Bool)

(assert (=> b!588114 (= e!335856 (not true))))

(assert (=> b!588114 e!335853))

(declare-fun res!375898 () Bool)

(assert (=> b!588114 (=> (not res!375898) (not e!335853))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266693 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36730 (_ BitVec 32)) SeekEntryResult!6081)

(assert (=> b!588114 (= res!375898 (= lt!266696 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266693 vacantSpotIndex!68 (select (store (arr!17634 a!2986) i!1108 k!1786) j!136) (array!36731 (store (arr!17634 a!2986) i!1108 k!1786) (size!17998 a!2986)) mask!3053)))))

(assert (=> b!588114 (= lt!266696 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266693 vacantSpotIndex!68 (select (arr!17634 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18286 0))(
  ( (Unit!18287) )
))
(declare-fun lt!266695 () Unit!18286)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36730 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18286)

(assert (=> b!588114 (= lt!266695 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266693 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588114 (= lt!266693 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588115 () Bool)

(declare-fun res!375907 () Bool)

(assert (=> b!588115 (=> (not res!375907) (not e!335854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588115 (= res!375907 (validKeyInArray!0 (select (arr!17634 a!2986) j!136)))))

(declare-fun b!588116 () Bool)

(declare-fun res!375905 () Bool)

(declare-fun e!335857 () Bool)

(assert (=> b!588116 (=> (not res!375905) (not e!335857))))

(declare-datatypes ((List!11728 0))(
  ( (Nil!11725) (Cons!11724 (h!12769 (_ BitVec 64)) (t!17964 List!11728)) )
))
(declare-fun arrayNoDuplicates!0 (array!36730 (_ BitVec 32) List!11728) Bool)

(assert (=> b!588116 (= res!375905 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11725))))

(declare-fun b!588117 () Bool)

(declare-fun res!375901 () Bool)

(assert (=> b!588117 (=> (not res!375901) (not e!335857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36730 (_ BitVec 32)) Bool)

(assert (=> b!588117 (= res!375901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588118 () Bool)

(declare-fun res!375903 () Bool)

(assert (=> b!588118 (=> (not res!375903) (not e!335857))))

(assert (=> b!588118 (= res!375903 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17634 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17634 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588119 () Bool)

(declare-fun res!375904 () Bool)

(assert (=> b!588119 (=> (not res!375904) (not e!335854))))

(assert (=> b!588119 (= res!375904 (validKeyInArray!0 k!1786))))

(declare-fun b!588120 () Bool)

(assert (=> b!588120 (= e!335854 e!335857)))

(declare-fun res!375900 () Bool)

(assert (=> b!588120 (=> (not res!375900) (not e!335857))))

(declare-fun lt!266694 () SeekEntryResult!6081)

(assert (=> b!588120 (= res!375900 (or (= lt!266694 (MissingZero!6081 i!1108)) (= lt!266694 (MissingVacant!6081 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36730 (_ BitVec 32)) SeekEntryResult!6081)

(assert (=> b!588120 (= lt!266694 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588121 () Bool)

(declare-fun res!375902 () Bool)

(assert (=> b!588121 (=> (not res!375902) (not e!335854))))

(declare-fun arrayContainsKey!0 (array!36730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588121 (= res!375902 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588122 () Bool)

(assert (=> b!588122 (= e!335857 e!335856)))

(declare-fun res!375906 () Bool)

(assert (=> b!588122 (=> (not res!375906) (not e!335856))))

(assert (=> b!588122 (= res!375906 (and (= lt!266692 (Found!6081 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17634 a!2986) index!984) (select (arr!17634 a!2986) j!136))) (not (= (select (arr!17634 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588122 (= lt!266692 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17634 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53932 res!375899) b!588113))

(assert (= (and b!588113 res!375908) b!588115))

(assert (= (and b!588115 res!375907) b!588119))

(assert (= (and b!588119 res!375904) b!588121))

(assert (= (and b!588121 res!375902) b!588120))

(assert (= (and b!588120 res!375900) b!588117))

(assert (= (and b!588117 res!375901) b!588116))

(assert (= (and b!588116 res!375905) b!588118))

(assert (= (and b!588118 res!375903) b!588122))

(assert (= (and b!588122 res!375906) b!588114))

(assert (= (and b!588114 res!375898) b!588112))

(declare-fun m!566695 () Bool)

(assert (=> b!588121 m!566695))

(declare-fun m!566697 () Bool)

(assert (=> b!588119 m!566697))

(declare-fun m!566699 () Bool)

(assert (=> b!588115 m!566699))

(assert (=> b!588115 m!566699))

(declare-fun m!566701 () Bool)

(assert (=> b!588115 m!566701))

(declare-fun m!566703 () Bool)

(assert (=> b!588120 m!566703))

(declare-fun m!566705 () Bool)

(assert (=> b!588114 m!566705))

(declare-fun m!566707 () Bool)

(assert (=> b!588114 m!566707))

(assert (=> b!588114 m!566707))

(declare-fun m!566709 () Bool)

(assert (=> b!588114 m!566709))

(assert (=> b!588114 m!566699))

(declare-fun m!566711 () Bool)

(assert (=> b!588114 m!566711))

(assert (=> b!588114 m!566699))

(declare-fun m!566713 () Bool)

(assert (=> b!588114 m!566713))

(declare-fun m!566715 () Bool)

(assert (=> b!588114 m!566715))

(declare-fun m!566717 () Bool)

(assert (=> b!588117 m!566717))

(declare-fun m!566719 () Bool)

(assert (=> b!588118 m!566719))

(assert (=> b!588118 m!566711))

(declare-fun m!566721 () Bool)

(assert (=> b!588118 m!566721))

(declare-fun m!566723 () Bool)

(assert (=> b!588116 m!566723))

(declare-fun m!566725 () Bool)

(assert (=> start!53932 m!566725))

(declare-fun m!566727 () Bool)

(assert (=> start!53932 m!566727))

(declare-fun m!566729 () Bool)

(assert (=> b!588122 m!566729))

(assert (=> b!588122 m!566699))

(assert (=> b!588122 m!566699))

(declare-fun m!566731 () Bool)

(assert (=> b!588122 m!566731))

(push 1)

