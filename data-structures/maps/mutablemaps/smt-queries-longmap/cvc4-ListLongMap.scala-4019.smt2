; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54832 () Bool)

(assert start!54832)

(declare-fun b!598346 () Bool)

(declare-fun e!342035 () Bool)

(declare-fun e!342037 () Bool)

(assert (=> b!598346 (= e!342035 e!342037)))

(declare-fun res!383594 () Bool)

(assert (=> b!598346 (=> (not res!383594) (not e!342037))))

(declare-datatypes ((SeekEntryResult!6218 0))(
  ( (MissingZero!6218 (index!27128 (_ BitVec 32))) (Found!6218 (index!27129 (_ BitVec 32))) (Intermediate!6218 (undefined!7030 Bool) (index!27130 (_ BitVec 32)) (x!55962 (_ BitVec 32))) (Undefined!6218) (MissingVacant!6218 (index!27131 (_ BitVec 32))) )
))
(declare-fun lt!271893 () SeekEntryResult!6218)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598346 (= res!383594 (or (= lt!271893 (MissingZero!6218 i!1108)) (= lt!271893 (MissingVacant!6218 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37030 0))(
  ( (array!37031 (arr!17771 (Array (_ BitVec 32) (_ BitVec 64))) (size!18135 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37030)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37030 (_ BitVec 32)) SeekEntryResult!6218)

(assert (=> b!598346 (= lt!271893 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598347 () Bool)

(declare-fun res!383598 () Bool)

(assert (=> b!598347 (=> (not res!383598) (not e!342037))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!598347 (= res!383598 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17771 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598348 () Bool)

(declare-datatypes ((Unit!18816 0))(
  ( (Unit!18817) )
))
(declare-fun e!342043 () Unit!18816)

(declare-fun Unit!18818 () Unit!18816)

(assert (=> b!598348 (= e!342043 Unit!18818)))

(assert (=> b!598348 false))

(declare-fun b!598349 () Bool)

(declare-fun e!342038 () Bool)

(assert (=> b!598349 (= e!342038 true)))

(declare-fun lt!271891 () array!37030)

(declare-datatypes ((List!11865 0))(
  ( (Nil!11862) (Cons!11861 (h!12906 (_ BitVec 64)) (t!18101 List!11865)) )
))
(declare-fun arrayNoDuplicates!0 (array!37030 (_ BitVec 32) List!11865) Bool)

(assert (=> b!598349 (arrayNoDuplicates!0 lt!271891 #b00000000000000000000000000000000 Nil!11862)))

(declare-fun lt!271901 () Unit!18816)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37030 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11865) Unit!18816)

(assert (=> b!598349 (= lt!271901 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11862))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598349 (arrayContainsKey!0 lt!271891 (select (arr!17771 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271899 () Unit!18816)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37030 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18816)

(assert (=> b!598349 (= lt!271899 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271891 (select (arr!17771 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598350 () Bool)

(declare-fun res!383601 () Bool)

(assert (=> b!598350 (=> (not res!383601) (not e!342035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598350 (= res!383601 (validKeyInArray!0 (select (arr!17771 a!2986) j!136)))))

(declare-fun b!598351 () Bool)

(declare-fun e!342041 () Bool)

(declare-fun lt!271895 () SeekEntryResult!6218)

(declare-fun lt!271896 () SeekEntryResult!6218)

(assert (=> b!598351 (= e!342041 (= lt!271895 lt!271896))))

(declare-fun b!598352 () Bool)

(declare-fun e!342039 () Bool)

(declare-fun e!342042 () Bool)

(assert (=> b!598352 (= e!342039 e!342042)))

(declare-fun res!383606 () Bool)

(assert (=> b!598352 (=> (not res!383606) (not e!342042))))

(assert (=> b!598352 (= res!383606 (and (= lt!271895 (Found!6218 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17771 a!2986) index!984) (select (arr!17771 a!2986) j!136))) (not (= (select (arr!17771 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37030 (_ BitVec 32)) SeekEntryResult!6218)

(assert (=> b!598352 (= lt!271895 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17771 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598353 () Bool)

(declare-fun e!342044 () Bool)

(assert (=> b!598353 (= e!342042 (not e!342044))))

(declare-fun res!383592 () Bool)

(assert (=> b!598353 (=> res!383592 e!342044)))

(declare-fun lt!271898 () SeekEntryResult!6218)

(assert (=> b!598353 (= res!383592 (not (= lt!271898 (Found!6218 index!984))))))

(declare-fun lt!271902 () Unit!18816)

(assert (=> b!598353 (= lt!271902 e!342043)))

(declare-fun c!67745 () Bool)

(assert (=> b!598353 (= c!67745 (= lt!271898 Undefined!6218))))

(declare-fun lt!271900 () (_ BitVec 64))

(assert (=> b!598353 (= lt!271898 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271900 lt!271891 mask!3053))))

(assert (=> b!598353 e!342041))

(declare-fun res!383599 () Bool)

(assert (=> b!598353 (=> (not res!383599) (not e!342041))))

(declare-fun lt!271894 () (_ BitVec 32))

(assert (=> b!598353 (= res!383599 (= lt!271896 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271894 vacantSpotIndex!68 lt!271900 lt!271891 mask!3053)))))

(assert (=> b!598353 (= lt!271896 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271894 vacantSpotIndex!68 (select (arr!17771 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598353 (= lt!271900 (select (store (arr!17771 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271892 () Unit!18816)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37030 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18816)

(assert (=> b!598353 (= lt!271892 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271894 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598353 (= lt!271894 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598354 () Bool)

(declare-fun e!342046 () Bool)

(declare-fun e!342045 () Bool)

(assert (=> b!598354 (= e!342046 e!342045)))

(declare-fun res!383596 () Bool)

(assert (=> b!598354 (=> res!383596 e!342045)))

(declare-fun lt!271897 () (_ BitVec 64))

(assert (=> b!598354 (= res!383596 (or (not (= (select (arr!17771 a!2986) j!136) lt!271900)) (not (= (select (arr!17771 a!2986) j!136) lt!271897)) (bvsge j!136 index!984)))))

(declare-fun b!598355 () Bool)

(assert (=> b!598355 (= e!342044 e!342038)))

(declare-fun res!383600 () Bool)

(assert (=> b!598355 (=> res!383600 e!342038)))

(assert (=> b!598355 (= res!383600 (or (not (= (select (arr!17771 a!2986) j!136) lt!271900)) (not (= (select (arr!17771 a!2986) j!136) lt!271897)) (bvsge j!136 index!984)))))

(assert (=> b!598355 e!342046))

(declare-fun res!383595 () Bool)

(assert (=> b!598355 (=> (not res!383595) (not e!342046))))

(assert (=> b!598355 (= res!383595 (= lt!271897 (select (arr!17771 a!2986) j!136)))))

(assert (=> b!598355 (= lt!271897 (select (store (arr!17771 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598356 () Bool)

(declare-fun e!342040 () Bool)

(assert (=> b!598356 (= e!342040 (arrayContainsKey!0 lt!271891 (select (arr!17771 a!2986) j!136) index!984))))

(declare-fun b!598357 () Bool)

(declare-fun res!383591 () Bool)

(assert (=> b!598357 (=> (not res!383591) (not e!342035))))

(assert (=> b!598357 (= res!383591 (validKeyInArray!0 k!1786))))

(declare-fun b!598359 () Bool)

(declare-fun res!383597 () Bool)

(assert (=> b!598359 (=> (not res!383597) (not e!342037))))

(assert (=> b!598359 (= res!383597 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11862))))

(declare-fun b!598360 () Bool)

(declare-fun res!383590 () Bool)

(assert (=> b!598360 (=> (not res!383590) (not e!342037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37030 (_ BitVec 32)) Bool)

(assert (=> b!598360 (= res!383590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598361 () Bool)

(declare-fun Unit!18819 () Unit!18816)

(assert (=> b!598361 (= e!342043 Unit!18819)))

(declare-fun b!598362 () Bool)

(assert (=> b!598362 (= e!342037 e!342039)))

(declare-fun res!383593 () Bool)

(assert (=> b!598362 (=> (not res!383593) (not e!342039))))

(assert (=> b!598362 (= res!383593 (= (select (store (arr!17771 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598362 (= lt!271891 (array!37031 (store (arr!17771 a!2986) i!1108 k!1786) (size!18135 a!2986)))))

(declare-fun b!598363 () Bool)

(declare-fun res!383605 () Bool)

(assert (=> b!598363 (=> (not res!383605) (not e!342035))))

(assert (=> b!598363 (= res!383605 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598364 () Bool)

(declare-fun res!383603 () Bool)

(assert (=> b!598364 (=> (not res!383603) (not e!342035))))

(assert (=> b!598364 (= res!383603 (and (= (size!18135 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18135 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18135 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598358 () Bool)

(assert (=> b!598358 (= e!342045 e!342040)))

(declare-fun res!383604 () Bool)

(assert (=> b!598358 (=> (not res!383604) (not e!342040))))

(assert (=> b!598358 (= res!383604 (arrayContainsKey!0 lt!271891 (select (arr!17771 a!2986) j!136) j!136))))

(declare-fun res!383602 () Bool)

(assert (=> start!54832 (=> (not res!383602) (not e!342035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54832 (= res!383602 (validMask!0 mask!3053))))

(assert (=> start!54832 e!342035))

(assert (=> start!54832 true))

(declare-fun array_inv!13545 (array!37030) Bool)

(assert (=> start!54832 (array_inv!13545 a!2986)))

(assert (= (and start!54832 res!383602) b!598364))

(assert (= (and b!598364 res!383603) b!598350))

(assert (= (and b!598350 res!383601) b!598357))

(assert (= (and b!598357 res!383591) b!598363))

(assert (= (and b!598363 res!383605) b!598346))

(assert (= (and b!598346 res!383594) b!598360))

(assert (= (and b!598360 res!383590) b!598359))

(assert (= (and b!598359 res!383597) b!598347))

(assert (= (and b!598347 res!383598) b!598362))

(assert (= (and b!598362 res!383593) b!598352))

(assert (= (and b!598352 res!383606) b!598353))

(assert (= (and b!598353 res!383599) b!598351))

(assert (= (and b!598353 c!67745) b!598348))

(assert (= (and b!598353 (not c!67745)) b!598361))

(assert (= (and b!598353 (not res!383592)) b!598355))

(assert (= (and b!598355 res!383595) b!598354))

(assert (= (and b!598354 (not res!383596)) b!598358))

(assert (= (and b!598358 res!383604) b!598356))

(assert (= (and b!598355 (not res!383600)) b!598349))

(declare-fun m!575697 () Bool)

(assert (=> b!598358 m!575697))

(assert (=> b!598358 m!575697))

(declare-fun m!575699 () Bool)

(assert (=> b!598358 m!575699))

(declare-fun m!575701 () Bool)

(assert (=> b!598357 m!575701))

(declare-fun m!575703 () Bool)

(assert (=> b!598362 m!575703))

(declare-fun m!575705 () Bool)

(assert (=> b!598362 m!575705))

(assert (=> b!598350 m!575697))

(assert (=> b!598350 m!575697))

(declare-fun m!575707 () Bool)

(assert (=> b!598350 m!575707))

(declare-fun m!575709 () Bool)

(assert (=> b!598346 m!575709))

(declare-fun m!575711 () Bool)

(assert (=> b!598347 m!575711))

(assert (=> b!598355 m!575697))

(assert (=> b!598355 m!575703))

(declare-fun m!575713 () Bool)

(assert (=> b!598355 m!575713))

(assert (=> b!598354 m!575697))

(declare-fun m!575715 () Bool)

(assert (=> b!598363 m!575715))

(declare-fun m!575717 () Bool)

(assert (=> b!598359 m!575717))

(declare-fun m!575719 () Bool)

(assert (=> start!54832 m!575719))

(declare-fun m!575721 () Bool)

(assert (=> start!54832 m!575721))

(assert (=> b!598349 m!575697))

(declare-fun m!575723 () Bool)

(assert (=> b!598349 m!575723))

(declare-fun m!575725 () Bool)

(assert (=> b!598349 m!575725))

(declare-fun m!575727 () Bool)

(assert (=> b!598349 m!575727))

(assert (=> b!598349 m!575697))

(declare-fun m!575729 () Bool)

(assert (=> b!598349 m!575729))

(assert (=> b!598349 m!575697))

(declare-fun m!575731 () Bool)

(assert (=> b!598360 m!575731))

(declare-fun m!575733 () Bool)

(assert (=> b!598352 m!575733))

(assert (=> b!598352 m!575697))

(assert (=> b!598352 m!575697))

(declare-fun m!575735 () Bool)

(assert (=> b!598352 m!575735))

(assert (=> b!598356 m!575697))

(assert (=> b!598356 m!575697))

(declare-fun m!575737 () Bool)

(assert (=> b!598356 m!575737))

(declare-fun m!575739 () Bool)

(assert (=> b!598353 m!575739))

(assert (=> b!598353 m!575697))

(declare-fun m!575741 () Bool)

(assert (=> b!598353 m!575741))

(assert (=> b!598353 m!575703))

(declare-fun m!575743 () Bool)

(assert (=> b!598353 m!575743))

(declare-fun m!575745 () Bool)

(assert (=> b!598353 m!575745))

(declare-fun m!575747 () Bool)

(assert (=> b!598353 m!575747))

(declare-fun m!575749 () Bool)

(assert (=> b!598353 m!575749))

(assert (=> b!598353 m!575697))

(push 1)

