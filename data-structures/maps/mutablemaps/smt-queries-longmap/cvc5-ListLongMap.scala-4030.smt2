; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54894 () Bool)

(assert start!54894)

(declare-fun b!600281 () Bool)

(declare-fun res!385354 () Bool)

(declare-fun e!343219 () Bool)

(assert (=> b!600281 (=> res!385354 e!343219)))

(declare-datatypes ((List!11896 0))(
  ( (Nil!11893) (Cons!11892 (h!12937 (_ BitVec 64)) (t!18132 List!11896)) )
))
(declare-fun noDuplicate!295 (List!11896) Bool)

(assert (=> b!600281 (= res!385354 (not (noDuplicate!295 Nil!11893)))))

(declare-fun b!600282 () Bool)

(declare-fun e!343217 () Bool)

(declare-fun e!343214 () Bool)

(assert (=> b!600282 (= e!343217 e!343214)))

(declare-fun res!385345 () Bool)

(assert (=> b!600282 (=> res!385345 e!343214)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!273130 () (_ BitVec 64))

(declare-fun lt!273126 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37092 0))(
  ( (array!37093 (arr!17802 (Array (_ BitVec 32) (_ BitVec 64))) (size!18166 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37092)

(assert (=> b!600282 (= res!385345 (or (not (= (select (arr!17802 a!2986) j!136) lt!273126)) (not (= (select (arr!17802 a!2986) j!136) lt!273130)) (bvsge j!136 index!984)))))

(declare-fun b!600283 () Bool)

(declare-fun res!385346 () Bool)

(declare-fun e!343218 () Bool)

(assert (=> b!600283 (=> (not res!385346) (not e!343218))))

(declare-fun arrayNoDuplicates!0 (array!37092 (_ BitVec 32) List!11896) Bool)

(assert (=> b!600283 (= res!385346 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11893))))

(declare-fun b!600284 () Bool)

(declare-fun res!385351 () Bool)

(declare-fun e!343212 () Bool)

(assert (=> b!600284 (=> (not res!385351) (not e!343212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600284 (= res!385351 (validKeyInArray!0 (select (arr!17802 a!2986) j!136)))))

(declare-fun b!600285 () Bool)

(declare-fun e!343210 () Bool)

(declare-fun e!343215 () Bool)

(assert (=> b!600285 (= e!343210 e!343215)))

(declare-fun res!385343 () Bool)

(assert (=> b!600285 (=> res!385343 e!343215)))

(assert (=> b!600285 (= res!385343 (or (not (= (select (arr!17802 a!2986) j!136) lt!273126)) (not (= (select (arr!17802 a!2986) j!136) lt!273130)) (bvsge j!136 index!984)))))

(assert (=> b!600285 e!343217))

(declare-fun res!385347 () Bool)

(assert (=> b!600285 (=> (not res!385347) (not e!343217))))

(assert (=> b!600285 (= res!385347 (= lt!273130 (select (arr!17802 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!600285 (= lt!273130 (select (store (arr!17802 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600286 () Bool)

(declare-fun res!385341 () Bool)

(assert (=> b!600286 (=> (not res!385341) (not e!343212))))

(declare-fun arrayContainsKey!0 (array!37092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600286 (= res!385341 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600287 () Bool)

(assert (=> b!600287 (= e!343212 e!343218)))

(declare-fun res!385356 () Bool)

(assert (=> b!600287 (=> (not res!385356) (not e!343218))))

(declare-datatypes ((SeekEntryResult!6249 0))(
  ( (MissingZero!6249 (index!27252 (_ BitVec 32))) (Found!6249 (index!27253 (_ BitVec 32))) (Intermediate!6249 (undefined!7061 Bool) (index!27254 (_ BitVec 32)) (x!56081 (_ BitVec 32))) (Undefined!6249) (MissingVacant!6249 (index!27255 (_ BitVec 32))) )
))
(declare-fun lt!273124 () SeekEntryResult!6249)

(assert (=> b!600287 (= res!385356 (or (= lt!273124 (MissingZero!6249 i!1108)) (= lt!273124 (MissingVacant!6249 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37092 (_ BitVec 32)) SeekEntryResult!6249)

(assert (=> b!600287 (= lt!273124 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600288 () Bool)

(declare-fun e!343207 () Bool)

(declare-fun e!343208 () Bool)

(assert (=> b!600288 (= e!343207 e!343208)))

(declare-fun res!385348 () Bool)

(assert (=> b!600288 (=> (not res!385348) (not e!343208))))

(declare-fun lt!273120 () SeekEntryResult!6249)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600288 (= res!385348 (and (= lt!273120 (Found!6249 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17802 a!2986) index!984) (select (arr!17802 a!2986) j!136))) (not (= (select (arr!17802 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37092 (_ BitVec 32)) SeekEntryResult!6249)

(assert (=> b!600288 (= lt!273120 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17802 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600289 () Bool)

(declare-fun res!385339 () Bool)

(assert (=> b!600289 (=> (not res!385339) (not e!343218))))

(assert (=> b!600289 (= res!385339 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17802 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600290 () Bool)

(declare-fun res!385342 () Bool)

(assert (=> b!600290 (=> (not res!385342) (not e!343212))))

(assert (=> b!600290 (= res!385342 (validKeyInArray!0 k!1786))))

(declare-fun res!385353 () Bool)

(assert (=> start!54894 (=> (not res!385353) (not e!343212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54894 (= res!385353 (validMask!0 mask!3053))))

(assert (=> start!54894 e!343212))

(assert (=> start!54894 true))

(declare-fun array_inv!13576 (array!37092) Bool)

(assert (=> start!54894 (array_inv!13576 a!2986)))

(declare-fun b!600291 () Bool)

(assert (=> b!600291 (= e!343208 (not e!343210))))

(declare-fun res!385340 () Bool)

(assert (=> b!600291 (=> res!385340 e!343210)))

(declare-fun lt!273125 () SeekEntryResult!6249)

(assert (=> b!600291 (= res!385340 (not (= lt!273125 (Found!6249 index!984))))))

(declare-datatypes ((Unit!18940 0))(
  ( (Unit!18941) )
))
(declare-fun lt!273119 () Unit!18940)

(declare-fun e!343209 () Unit!18940)

(assert (=> b!600291 (= lt!273119 e!343209)))

(declare-fun c!67838 () Bool)

(assert (=> b!600291 (= c!67838 (= lt!273125 Undefined!6249))))

(declare-fun lt!273123 () array!37092)

(assert (=> b!600291 (= lt!273125 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273126 lt!273123 mask!3053))))

(declare-fun e!343211 () Bool)

(assert (=> b!600291 e!343211))

(declare-fun res!385350 () Bool)

(assert (=> b!600291 (=> (not res!385350) (not e!343211))))

(declare-fun lt!273122 () SeekEntryResult!6249)

(declare-fun lt!273132 () (_ BitVec 32))

(assert (=> b!600291 (= res!385350 (= lt!273122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273132 vacantSpotIndex!68 lt!273126 lt!273123 mask!3053)))))

(assert (=> b!600291 (= lt!273122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273132 vacantSpotIndex!68 (select (arr!17802 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600291 (= lt!273126 (select (store (arr!17802 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273121 () Unit!18940)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37092 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18940)

(assert (=> b!600291 (= lt!273121 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273132 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600291 (= lt!273132 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600292 () Bool)

(declare-fun res!385344 () Bool)

(assert (=> b!600292 (=> (not res!385344) (not e!343218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37092 (_ BitVec 32)) Bool)

(assert (=> b!600292 (= res!385344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600293 () Bool)

(declare-fun Unit!18942 () Unit!18940)

(assert (=> b!600293 (= e!343209 Unit!18942)))

(declare-fun b!600294 () Bool)

(declare-fun e!343213 () Bool)

(assert (=> b!600294 (= e!343214 e!343213)))

(declare-fun res!385349 () Bool)

(assert (=> b!600294 (=> (not res!385349) (not e!343213))))

(assert (=> b!600294 (= res!385349 (arrayContainsKey!0 lt!273123 (select (arr!17802 a!2986) j!136) j!136))))

(declare-fun b!600295 () Bool)

(assert (=> b!600295 (= e!343218 e!343207)))

(declare-fun res!385358 () Bool)

(assert (=> b!600295 (=> (not res!385358) (not e!343207))))

(assert (=> b!600295 (= res!385358 (= (select (store (arr!17802 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600295 (= lt!273123 (array!37093 (store (arr!17802 a!2986) i!1108 k!1786) (size!18166 a!2986)))))

(declare-fun b!600296 () Bool)

(assert (=> b!600296 (= e!343213 (arrayContainsKey!0 lt!273123 (select (arr!17802 a!2986) j!136) index!984))))

(declare-fun b!600297 () Bool)

(declare-fun res!385355 () Bool)

(assert (=> b!600297 (=> (not res!385355) (not e!343212))))

(assert (=> b!600297 (= res!385355 (and (= (size!18166 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18166 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18166 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600298 () Bool)

(assert (=> b!600298 (= e!343215 e!343219)))

(declare-fun res!385357 () Bool)

(assert (=> b!600298 (=> res!385357 e!343219)))

(assert (=> b!600298 (= res!385357 (or (bvsge (size!18166 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18166 a!2986))))))

(assert (=> b!600298 (arrayNoDuplicates!0 lt!273123 j!136 Nil!11893)))

(declare-fun lt!273127 () Unit!18940)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37092 (_ BitVec 32) (_ BitVec 32)) Unit!18940)

(assert (=> b!600298 (= lt!273127 (lemmaNoDuplicateFromThenFromBigger!0 lt!273123 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600298 (arrayNoDuplicates!0 lt!273123 #b00000000000000000000000000000000 Nil!11893)))

(declare-fun lt!273131 () Unit!18940)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37092 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11896) Unit!18940)

(assert (=> b!600298 (= lt!273131 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11893))))

(assert (=> b!600298 (arrayContainsKey!0 lt!273123 (select (arr!17802 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273129 () Unit!18940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37092 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18940)

(assert (=> b!600298 (= lt!273129 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273123 (select (arr!17802 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600299 () Bool)

(declare-fun Unit!18943 () Unit!18940)

(assert (=> b!600299 (= e!343209 Unit!18943)))

(assert (=> b!600299 false))

(declare-fun b!600300 () Bool)

(assert (=> b!600300 (= e!343219 true)))

(declare-fun lt!273128 () Bool)

(declare-fun contains!2981 (List!11896 (_ BitVec 64)) Bool)

(assert (=> b!600300 (= lt!273128 (contains!2981 Nil!11893 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600301 () Bool)

(assert (=> b!600301 (= e!343211 (= lt!273120 lt!273122))))

(declare-fun b!600302 () Bool)

(declare-fun res!385352 () Bool)

(assert (=> b!600302 (=> res!385352 e!343219)))

(assert (=> b!600302 (= res!385352 (contains!2981 Nil!11893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!54894 res!385353) b!600297))

(assert (= (and b!600297 res!385355) b!600284))

(assert (= (and b!600284 res!385351) b!600290))

(assert (= (and b!600290 res!385342) b!600286))

(assert (= (and b!600286 res!385341) b!600287))

(assert (= (and b!600287 res!385356) b!600292))

(assert (= (and b!600292 res!385344) b!600283))

(assert (= (and b!600283 res!385346) b!600289))

(assert (= (and b!600289 res!385339) b!600295))

(assert (= (and b!600295 res!385358) b!600288))

(assert (= (and b!600288 res!385348) b!600291))

(assert (= (and b!600291 res!385350) b!600301))

(assert (= (and b!600291 c!67838) b!600299))

(assert (= (and b!600291 (not c!67838)) b!600293))

(assert (= (and b!600291 (not res!385340)) b!600285))

(assert (= (and b!600285 res!385347) b!600282))

(assert (= (and b!600282 (not res!385345)) b!600294))

(assert (= (and b!600294 res!385349) b!600296))

(assert (= (and b!600285 (not res!385343)) b!600298))

(assert (= (and b!600298 (not res!385357)) b!600281))

(assert (= (and b!600281 (not res!385354)) b!600302))

(assert (= (and b!600302 (not res!385352)) b!600300))

(declare-fun m!577551 () Bool)

(assert (=> b!600283 m!577551))

(declare-fun m!577553 () Bool)

(assert (=> b!600292 m!577553))

(declare-fun m!577555 () Bool)

(assert (=> b!600298 m!577555))

(declare-fun m!577557 () Bool)

(assert (=> b!600298 m!577557))

(declare-fun m!577559 () Bool)

(assert (=> b!600298 m!577559))

(declare-fun m!577561 () Bool)

(assert (=> b!600298 m!577561))

(assert (=> b!600298 m!577555))

(declare-fun m!577563 () Bool)

(assert (=> b!600298 m!577563))

(declare-fun m!577565 () Bool)

(assert (=> b!600298 m!577565))

(assert (=> b!600298 m!577555))

(declare-fun m!577567 () Bool)

(assert (=> b!600298 m!577567))

(declare-fun m!577569 () Bool)

(assert (=> b!600291 m!577569))

(declare-fun m!577571 () Bool)

(assert (=> b!600291 m!577571))

(declare-fun m!577573 () Bool)

(assert (=> b!600291 m!577573))

(assert (=> b!600291 m!577555))

(declare-fun m!577575 () Bool)

(assert (=> b!600291 m!577575))

(declare-fun m!577577 () Bool)

(assert (=> b!600291 m!577577))

(declare-fun m!577579 () Bool)

(assert (=> b!600291 m!577579))

(assert (=> b!600291 m!577555))

(declare-fun m!577581 () Bool)

(assert (=> b!600291 m!577581))

(assert (=> b!600284 m!577555))

(assert (=> b!600284 m!577555))

(declare-fun m!577583 () Bool)

(assert (=> b!600284 m!577583))

(assert (=> b!600295 m!577575))

(declare-fun m!577585 () Bool)

(assert (=> b!600295 m!577585))

(declare-fun m!577587 () Bool)

(assert (=> b!600286 m!577587))

(assert (=> b!600285 m!577555))

(assert (=> b!600285 m!577575))

(declare-fun m!577589 () Bool)

(assert (=> b!600285 m!577589))

(declare-fun m!577591 () Bool)

(assert (=> b!600289 m!577591))

(declare-fun m!577593 () Bool)

(assert (=> b!600287 m!577593))

(assert (=> b!600294 m!577555))

(assert (=> b!600294 m!577555))

(declare-fun m!577595 () Bool)

(assert (=> b!600294 m!577595))

(declare-fun m!577597 () Bool)

(assert (=> b!600290 m!577597))

(declare-fun m!577599 () Bool)

(assert (=> b!600300 m!577599))

(declare-fun m!577601 () Bool)

(assert (=> b!600281 m!577601))

(declare-fun m!577603 () Bool)

(assert (=> b!600302 m!577603))

(declare-fun m!577605 () Bool)

(assert (=> b!600288 m!577605))

(assert (=> b!600288 m!577555))

(assert (=> b!600288 m!577555))

(declare-fun m!577607 () Bool)

(assert (=> b!600288 m!577607))

(assert (=> b!600296 m!577555))

(assert (=> b!600296 m!577555))

(declare-fun m!577609 () Bool)

(assert (=> b!600296 m!577609))

(assert (=> b!600282 m!577555))

(declare-fun m!577611 () Bool)

(assert (=> start!54894 m!577611))

(declare-fun m!577613 () Bool)

(assert (=> start!54894 m!577613))

(push 1)

