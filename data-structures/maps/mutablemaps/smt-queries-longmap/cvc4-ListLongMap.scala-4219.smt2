; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57928 () Bool)

(assert start!57928)

(declare-fun b!640155 () Bool)

(declare-fun e!366451 () Bool)

(declare-datatypes ((SeekEntryResult!6818 0))(
  ( (MissingZero!6818 (index!29591 (_ BitVec 32))) (Found!6818 (index!29592 (_ BitVec 32))) (Intermediate!6818 (undefined!7630 Bool) (index!29593 (_ BitVec 32)) (x!58375 (_ BitVec 32))) (Undefined!6818) (MissingVacant!6818 (index!29594 (_ BitVec 32))) )
))
(declare-fun lt!296298 () SeekEntryResult!6818)

(declare-fun lt!296294 () SeekEntryResult!6818)

(assert (=> b!640155 (= e!366451 (= lt!296298 lt!296294))))

(declare-fun b!640156 () Bool)

(declare-fun e!366446 () Bool)

(assert (=> b!640156 (= e!366446 true)))

(declare-datatypes ((array!38311 0))(
  ( (array!38312 (arr!18371 (Array (_ BitVec 32) (_ BitVec 64))) (size!18735 (_ BitVec 32))) )
))
(declare-fun lt!296290 () array!38311)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((List!12465 0))(
  ( (Nil!12462) (Cons!12461 (h!13506 (_ BitVec 64)) (t!18701 List!12465)) )
))
(declare-fun arrayNoDuplicates!0 (array!38311 (_ BitVec 32) List!12465) Bool)

(assert (=> b!640156 (arrayNoDuplicates!0 lt!296290 j!136 Nil!12462)))

(declare-datatypes ((Unit!21630 0))(
  ( (Unit!21631) )
))
(declare-fun lt!296291 () Unit!21630)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38311 (_ BitVec 32) (_ BitVec 32)) Unit!21630)

(assert (=> b!640156 (= lt!296291 (lemmaNoDuplicateFromThenFromBigger!0 lt!296290 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640156 (arrayNoDuplicates!0 lt!296290 #b00000000000000000000000000000000 Nil!12462)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!296289 () Unit!21630)

(declare-fun a!2986 () array!38311)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38311 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12465) Unit!21630)

(assert (=> b!640156 (= lt!296289 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12462))))

(declare-fun arrayContainsKey!0 (array!38311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640156 (arrayContainsKey!0 lt!296290 (select (arr!18371 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296295 () Unit!21630)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38311 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21630)

(assert (=> b!640156 (= lt!296295 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296290 (select (arr!18371 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640157 () Bool)

(declare-fun e!366448 () Bool)

(declare-fun e!366450 () Bool)

(assert (=> b!640157 (= e!366448 e!366450)))

(declare-fun res!414604 () Bool)

(assert (=> b!640157 (=> (not res!414604) (not e!366450))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!640157 (= res!414604 (and (= lt!296298 (Found!6818 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18371 a!2986) index!984) (select (arr!18371 a!2986) j!136))) (not (= (select (arr!18371 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38311 (_ BitVec 32)) SeekEntryResult!6818)

(assert (=> b!640157 (= lt!296298 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18371 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640158 () Bool)

(declare-fun res!414603 () Bool)

(declare-fun e!366457 () Bool)

(assert (=> b!640158 (=> (not res!414603) (not e!366457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640158 (= res!414603 (validKeyInArray!0 k!1786))))

(declare-fun b!640159 () Bool)

(declare-fun e!366455 () Unit!21630)

(declare-fun Unit!21632 () Unit!21630)

(assert (=> b!640159 (= e!366455 Unit!21632)))

(assert (=> b!640159 false))

(declare-fun b!640160 () Bool)

(declare-fun e!366447 () Bool)

(assert (=> b!640160 (= e!366447 e!366448)))

(declare-fun res!414608 () Bool)

(assert (=> b!640160 (=> (not res!414608) (not e!366448))))

(assert (=> b!640160 (= res!414608 (= (select (store (arr!18371 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640160 (= lt!296290 (array!38312 (store (arr!18371 a!2986) i!1108 k!1786) (size!18735 a!2986)))))

(declare-fun b!640161 () Bool)

(declare-fun res!414599 () Bool)

(assert (=> b!640161 (=> (not res!414599) (not e!366457))))

(assert (=> b!640161 (= res!414599 (and (= (size!18735 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18735 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18735 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640162 () Bool)

(declare-fun e!366449 () Bool)

(assert (=> b!640162 (= e!366450 (not e!366449))))

(declare-fun res!414611 () Bool)

(assert (=> b!640162 (=> res!414611 e!366449)))

(declare-fun lt!296292 () SeekEntryResult!6818)

(assert (=> b!640162 (= res!414611 (not (= lt!296292 (Found!6818 index!984))))))

(declare-fun lt!296296 () Unit!21630)

(assert (=> b!640162 (= lt!296296 e!366455)))

(declare-fun c!73145 () Bool)

(assert (=> b!640162 (= c!73145 (= lt!296292 Undefined!6818))))

(declare-fun lt!296293 () (_ BitVec 64))

(assert (=> b!640162 (= lt!296292 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296293 lt!296290 mask!3053))))

(assert (=> b!640162 e!366451))

(declare-fun res!414610 () Bool)

(assert (=> b!640162 (=> (not res!414610) (not e!366451))))

(declare-fun lt!296288 () (_ BitVec 32))

(assert (=> b!640162 (= res!414610 (= lt!296294 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296288 vacantSpotIndex!68 lt!296293 lt!296290 mask!3053)))))

(assert (=> b!640162 (= lt!296294 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296288 vacantSpotIndex!68 (select (arr!18371 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640162 (= lt!296293 (select (store (arr!18371 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296286 () Unit!21630)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38311 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21630)

(assert (=> b!640162 (= lt!296286 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296288 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640162 (= lt!296288 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640163 () Bool)

(declare-fun res!414613 () Bool)

(assert (=> b!640163 (=> (not res!414613) (not e!366457))))

(assert (=> b!640163 (= res!414613 (validKeyInArray!0 (select (arr!18371 a!2986) j!136)))))

(declare-fun b!640154 () Bool)

(declare-fun res!414605 () Bool)

(assert (=> b!640154 (=> (not res!414605) (not e!366447))))

(assert (=> b!640154 (= res!414605 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12462))))

(declare-fun res!414606 () Bool)

(assert (=> start!57928 (=> (not res!414606) (not e!366457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57928 (= res!414606 (validMask!0 mask!3053))))

(assert (=> start!57928 e!366457))

(assert (=> start!57928 true))

(declare-fun array_inv!14145 (array!38311) Bool)

(assert (=> start!57928 (array_inv!14145 a!2986)))

(declare-fun b!640164 () Bool)

(declare-fun res!414601 () Bool)

(assert (=> b!640164 (=> (not res!414601) (not e!366447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38311 (_ BitVec 32)) Bool)

(assert (=> b!640164 (= res!414601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640165 () Bool)

(declare-fun res!414612 () Bool)

(assert (=> b!640165 (=> (not res!414612) (not e!366447))))

(assert (=> b!640165 (= res!414612 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18371 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640166 () Bool)

(assert (=> b!640166 (= e!366457 e!366447)))

(declare-fun res!414600 () Bool)

(assert (=> b!640166 (=> (not res!414600) (not e!366447))))

(declare-fun lt!296297 () SeekEntryResult!6818)

(assert (=> b!640166 (= res!414600 (or (= lt!296297 (MissingZero!6818 i!1108)) (= lt!296297 (MissingVacant!6818 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38311 (_ BitVec 32)) SeekEntryResult!6818)

(assert (=> b!640166 (= lt!296297 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640167 () Bool)

(declare-fun e!366453 () Bool)

(declare-fun e!366456 () Bool)

(assert (=> b!640167 (= e!366453 e!366456)))

(declare-fun res!414602 () Bool)

(assert (=> b!640167 (=> (not res!414602) (not e!366456))))

(assert (=> b!640167 (= res!414602 (arrayContainsKey!0 lt!296290 (select (arr!18371 a!2986) j!136) j!136))))

(declare-fun b!640168 () Bool)

(declare-fun Unit!21633 () Unit!21630)

(assert (=> b!640168 (= e!366455 Unit!21633)))

(declare-fun b!640169 () Bool)

(declare-fun res!414609 () Bool)

(assert (=> b!640169 (=> (not res!414609) (not e!366457))))

(assert (=> b!640169 (= res!414609 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640170 () Bool)

(assert (=> b!640170 (= e!366456 (arrayContainsKey!0 lt!296290 (select (arr!18371 a!2986) j!136) index!984))))

(declare-fun b!640171 () Bool)

(assert (=> b!640171 (= e!366449 e!366446)))

(declare-fun res!414614 () Bool)

(assert (=> b!640171 (=> res!414614 e!366446)))

(declare-fun lt!296287 () (_ BitVec 64))

(assert (=> b!640171 (= res!414614 (or (not (= (select (arr!18371 a!2986) j!136) lt!296293)) (not (= (select (arr!18371 a!2986) j!136) lt!296287)) (bvsge j!136 index!984)))))

(declare-fun e!366452 () Bool)

(assert (=> b!640171 e!366452))

(declare-fun res!414607 () Bool)

(assert (=> b!640171 (=> (not res!414607) (not e!366452))))

(assert (=> b!640171 (= res!414607 (= lt!296287 (select (arr!18371 a!2986) j!136)))))

(assert (=> b!640171 (= lt!296287 (select (store (arr!18371 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640172 () Bool)

(assert (=> b!640172 (= e!366452 e!366453)))

(declare-fun res!414598 () Bool)

(assert (=> b!640172 (=> res!414598 e!366453)))

(assert (=> b!640172 (= res!414598 (or (not (= (select (arr!18371 a!2986) j!136) lt!296293)) (not (= (select (arr!18371 a!2986) j!136) lt!296287)) (bvsge j!136 index!984)))))

(assert (= (and start!57928 res!414606) b!640161))

(assert (= (and b!640161 res!414599) b!640163))

(assert (= (and b!640163 res!414613) b!640158))

(assert (= (and b!640158 res!414603) b!640169))

(assert (= (and b!640169 res!414609) b!640166))

(assert (= (and b!640166 res!414600) b!640164))

(assert (= (and b!640164 res!414601) b!640154))

(assert (= (and b!640154 res!414605) b!640165))

(assert (= (and b!640165 res!414612) b!640160))

(assert (= (and b!640160 res!414608) b!640157))

(assert (= (and b!640157 res!414604) b!640162))

(assert (= (and b!640162 res!414610) b!640155))

(assert (= (and b!640162 c!73145) b!640159))

(assert (= (and b!640162 (not c!73145)) b!640168))

(assert (= (and b!640162 (not res!414611)) b!640171))

(assert (= (and b!640171 res!414607) b!640172))

(assert (= (and b!640172 (not res!414598)) b!640167))

(assert (= (and b!640167 res!414602) b!640170))

(assert (= (and b!640171 (not res!414614)) b!640156))

(declare-fun m!614057 () Bool)

(assert (=> b!640158 m!614057))

(declare-fun m!614059 () Bool)

(assert (=> b!640169 m!614059))

(declare-fun m!614061 () Bool)

(assert (=> b!640156 m!614061))

(declare-fun m!614063 () Bool)

(assert (=> b!640156 m!614063))

(assert (=> b!640156 m!614061))

(declare-fun m!614065 () Bool)

(assert (=> b!640156 m!614065))

(assert (=> b!640156 m!614061))

(declare-fun m!614067 () Bool)

(assert (=> b!640156 m!614067))

(declare-fun m!614069 () Bool)

(assert (=> b!640156 m!614069))

(declare-fun m!614071 () Bool)

(assert (=> b!640156 m!614071))

(declare-fun m!614073 () Bool)

(assert (=> b!640156 m!614073))

(assert (=> b!640170 m!614061))

(assert (=> b!640170 m!614061))

(declare-fun m!614075 () Bool)

(assert (=> b!640170 m!614075))

(declare-fun m!614077 () Bool)

(assert (=> b!640165 m!614077))

(declare-fun m!614079 () Bool)

(assert (=> b!640164 m!614079))

(assert (=> b!640167 m!614061))

(assert (=> b!640167 m!614061))

(declare-fun m!614081 () Bool)

(assert (=> b!640167 m!614081))

(declare-fun m!614083 () Bool)

(assert (=> b!640162 m!614083))

(declare-fun m!614085 () Bool)

(assert (=> b!640162 m!614085))

(assert (=> b!640162 m!614061))

(declare-fun m!614087 () Bool)

(assert (=> b!640162 m!614087))

(assert (=> b!640162 m!614061))

(declare-fun m!614089 () Bool)

(assert (=> b!640162 m!614089))

(declare-fun m!614091 () Bool)

(assert (=> b!640162 m!614091))

(declare-fun m!614093 () Bool)

(assert (=> b!640162 m!614093))

(declare-fun m!614095 () Bool)

(assert (=> b!640162 m!614095))

(assert (=> b!640163 m!614061))

(assert (=> b!640163 m!614061))

(declare-fun m!614097 () Bool)

(assert (=> b!640163 m!614097))

(assert (=> b!640172 m!614061))

(declare-fun m!614099 () Bool)

(assert (=> b!640166 m!614099))

(assert (=> b!640160 m!614089))

(declare-fun m!614101 () Bool)

(assert (=> b!640160 m!614101))

(declare-fun m!614103 () Bool)

(assert (=> b!640154 m!614103))

(declare-fun m!614105 () Bool)

(assert (=> b!640157 m!614105))

(assert (=> b!640157 m!614061))

(assert (=> b!640157 m!614061))

(declare-fun m!614107 () Bool)

(assert (=> b!640157 m!614107))

(declare-fun m!614109 () Bool)

(assert (=> start!57928 m!614109))

(declare-fun m!614111 () Bool)

(assert (=> start!57928 m!614111))

(assert (=> b!640171 m!614061))

(assert (=> b!640171 m!614089))

(declare-fun m!614113 () Bool)

(assert (=> b!640171 m!614113))

(push 1)

