; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57444 () Bool)

(assert start!57444)

(declare-fun b!635271 () Bool)

(declare-fun e!363361 () Bool)

(assert (=> b!635271 (= e!363361 true)))

(declare-datatypes ((array!38190 0))(
  ( (array!38191 (arr!18318 (Array (_ BitVec 32) (_ BitVec 64))) (size!18682 (_ BitVec 32))) )
))
(declare-fun lt!293771 () array!38190)

(declare-fun a!2986 () array!38190)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635271 (arrayContainsKey!0 lt!293771 (select (arr!18318 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21418 0))(
  ( (Unit!21419) )
))
(declare-fun lt!293774 () Unit!21418)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38190 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21418)

(assert (=> b!635271 (= lt!293774 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293771 (select (arr!18318 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635272 () Bool)

(declare-fun e!363358 () Bool)

(assert (=> b!635272 (= e!363358 e!363361)))

(declare-fun res!411053 () Bool)

(assert (=> b!635272 (=> res!411053 e!363361)))

(declare-fun lt!293769 () (_ BitVec 64))

(declare-fun lt!293766 () (_ BitVec 64))

(assert (=> b!635272 (= res!411053 (or (not (= (select (arr!18318 a!2986) j!136) lt!293766)) (not (= (select (arr!18318 a!2986) j!136) lt!293769)) (bvsge j!136 index!984)))))

(declare-fun e!363357 () Bool)

(assert (=> b!635272 e!363357))

(declare-fun res!411051 () Bool)

(assert (=> b!635272 (=> (not res!411051) (not e!363357))))

(assert (=> b!635272 (= res!411051 (= lt!293769 (select (arr!18318 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!635272 (= lt!293769 (select (store (arr!18318 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!635273 () Bool)

(declare-fun e!363359 () Bool)

(declare-fun e!363354 () Bool)

(assert (=> b!635273 (= e!363359 e!363354)))

(declare-fun res!411050 () Bool)

(assert (=> b!635273 (=> (not res!411050) (not e!363354))))

(declare-datatypes ((SeekEntryResult!6765 0))(
  ( (MissingZero!6765 (index!29364 (_ BitVec 32))) (Found!6765 (index!29365 (_ BitVec 32))) (Intermediate!6765 (undefined!7577 Bool) (index!29366 (_ BitVec 32)) (x!58141 (_ BitVec 32))) (Undefined!6765) (MissingVacant!6765 (index!29367 (_ BitVec 32))) )
))
(declare-fun lt!293770 () SeekEntryResult!6765)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!635273 (= res!411050 (and (= lt!293770 (Found!6765 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18318 a!2986) index!984) (select (arr!18318 a!2986) j!136))) (not (= (select (arr!18318 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38190 (_ BitVec 32)) SeekEntryResult!6765)

(assert (=> b!635273 (= lt!293770 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18318 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635274 () Bool)

(declare-fun res!411052 () Bool)

(declare-fun e!363351 () Bool)

(assert (=> b!635274 (=> (not res!411052) (not e!363351))))

(assert (=> b!635274 (= res!411052 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635275 () Bool)

(declare-fun res!411047 () Bool)

(declare-fun e!363355 () Bool)

(assert (=> b!635275 (=> (not res!411047) (not e!363355))))

(declare-datatypes ((List!12412 0))(
  ( (Nil!12409) (Cons!12408 (h!13453 (_ BitVec 64)) (t!18648 List!12412)) )
))
(declare-fun arrayNoDuplicates!0 (array!38190 (_ BitVec 32) List!12412) Bool)

(assert (=> b!635275 (= res!411047 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12409))))

(declare-fun b!635276 () Bool)

(assert (=> b!635276 (= e!363354 (not e!363358))))

(declare-fun res!411054 () Bool)

(assert (=> b!635276 (=> res!411054 e!363358)))

(declare-fun lt!293765 () SeekEntryResult!6765)

(assert (=> b!635276 (= res!411054 (not (= lt!293765 (Found!6765 index!984))))))

(declare-fun lt!293775 () Unit!21418)

(declare-fun e!363353 () Unit!21418)

(assert (=> b!635276 (= lt!293775 e!363353)))

(declare-fun c!72482 () Bool)

(assert (=> b!635276 (= c!72482 (= lt!293765 Undefined!6765))))

(assert (=> b!635276 (= lt!293765 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293766 lt!293771 mask!3053))))

(declare-fun e!363356 () Bool)

(assert (=> b!635276 e!363356))

(declare-fun res!411044 () Bool)

(assert (=> b!635276 (=> (not res!411044) (not e!363356))))

(declare-fun lt!293772 () (_ BitVec 32))

(declare-fun lt!293767 () SeekEntryResult!6765)

(assert (=> b!635276 (= res!411044 (= lt!293767 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293772 vacantSpotIndex!68 lt!293766 lt!293771 mask!3053)))))

(assert (=> b!635276 (= lt!293767 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293772 vacantSpotIndex!68 (select (arr!18318 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635276 (= lt!293766 (select (store (arr!18318 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293773 () Unit!21418)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38190 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21418)

(assert (=> b!635276 (= lt!293773 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293772 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635276 (= lt!293772 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635277 () Bool)

(declare-fun res!411049 () Bool)

(assert (=> b!635277 (=> (not res!411049) (not e!363351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635277 (= res!411049 (validKeyInArray!0 (select (arr!18318 a!2986) j!136)))))

(declare-fun b!635270 () Bool)

(assert (=> b!635270 (= e!363355 e!363359)))

(declare-fun res!411046 () Bool)

(assert (=> b!635270 (=> (not res!411046) (not e!363359))))

(assert (=> b!635270 (= res!411046 (= (select (store (arr!18318 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635270 (= lt!293771 (array!38191 (store (arr!18318 a!2986) i!1108 k!1786) (size!18682 a!2986)))))

(declare-fun res!411041 () Bool)

(assert (=> start!57444 (=> (not res!411041) (not e!363351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57444 (= res!411041 (validMask!0 mask!3053))))

(assert (=> start!57444 e!363351))

(assert (=> start!57444 true))

(declare-fun array_inv!14092 (array!38190) Bool)

(assert (=> start!57444 (array_inv!14092 a!2986)))

(declare-fun e!363352 () Bool)

(declare-fun b!635278 () Bool)

(assert (=> b!635278 (= e!363352 (arrayContainsKey!0 lt!293771 (select (arr!18318 a!2986) j!136) index!984))))

(declare-fun b!635279 () Bool)

(declare-fun e!363350 () Bool)

(assert (=> b!635279 (= e!363357 e!363350)))

(declare-fun res!411042 () Bool)

(assert (=> b!635279 (=> res!411042 e!363350)))

(assert (=> b!635279 (= res!411042 (or (not (= (select (arr!18318 a!2986) j!136) lt!293766)) (not (= (select (arr!18318 a!2986) j!136) lt!293769)) (bvsge j!136 index!984)))))

(declare-fun b!635280 () Bool)

(declare-fun Unit!21420 () Unit!21418)

(assert (=> b!635280 (= e!363353 Unit!21420)))

(declare-fun b!635281 () Bool)

(declare-fun res!411045 () Bool)

(assert (=> b!635281 (=> (not res!411045) (not e!363351))))

(assert (=> b!635281 (= res!411045 (validKeyInArray!0 k!1786))))

(declare-fun b!635282 () Bool)

(assert (=> b!635282 (= e!363351 e!363355)))

(declare-fun res!411055 () Bool)

(assert (=> b!635282 (=> (not res!411055) (not e!363355))))

(declare-fun lt!293768 () SeekEntryResult!6765)

(assert (=> b!635282 (= res!411055 (or (= lt!293768 (MissingZero!6765 i!1108)) (= lt!293768 (MissingVacant!6765 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38190 (_ BitVec 32)) SeekEntryResult!6765)

(assert (=> b!635282 (= lt!293768 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!635283 () Bool)

(declare-fun res!411040 () Bool)

(assert (=> b!635283 (=> (not res!411040) (not e!363351))))

(assert (=> b!635283 (= res!411040 (and (= (size!18682 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18682 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18682 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635284 () Bool)

(declare-fun res!411056 () Bool)

(assert (=> b!635284 (=> (not res!411056) (not e!363355))))

(assert (=> b!635284 (= res!411056 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18318 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635285 () Bool)

(declare-fun Unit!21421 () Unit!21418)

(assert (=> b!635285 (= e!363353 Unit!21421)))

(assert (=> b!635285 false))

(declare-fun b!635286 () Bool)

(assert (=> b!635286 (= e!363350 e!363352)))

(declare-fun res!411048 () Bool)

(assert (=> b!635286 (=> (not res!411048) (not e!363352))))

(assert (=> b!635286 (= res!411048 (arrayContainsKey!0 lt!293771 (select (arr!18318 a!2986) j!136) j!136))))

(declare-fun b!635287 () Bool)

(declare-fun res!411043 () Bool)

(assert (=> b!635287 (=> (not res!411043) (not e!363355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38190 (_ BitVec 32)) Bool)

(assert (=> b!635287 (= res!411043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635288 () Bool)

(assert (=> b!635288 (= e!363356 (= lt!293770 lt!293767))))

(assert (= (and start!57444 res!411041) b!635283))

(assert (= (and b!635283 res!411040) b!635277))

(assert (= (and b!635277 res!411049) b!635281))

(assert (= (and b!635281 res!411045) b!635274))

(assert (= (and b!635274 res!411052) b!635282))

(assert (= (and b!635282 res!411055) b!635287))

(assert (= (and b!635287 res!411043) b!635275))

(assert (= (and b!635275 res!411047) b!635284))

(assert (= (and b!635284 res!411056) b!635270))

(assert (= (and b!635270 res!411046) b!635273))

(assert (= (and b!635273 res!411050) b!635276))

(assert (= (and b!635276 res!411044) b!635288))

(assert (= (and b!635276 c!72482) b!635285))

(assert (= (and b!635276 (not c!72482)) b!635280))

(assert (= (and b!635276 (not res!411054)) b!635272))

(assert (= (and b!635272 res!411051) b!635279))

(assert (= (and b!635279 (not res!411042)) b!635286))

(assert (= (and b!635286 res!411048) b!635278))

(assert (= (and b!635272 (not res!411053)) b!635271))

(declare-fun m!609693 () Bool)

(assert (=> b!635273 m!609693))

(declare-fun m!609695 () Bool)

(assert (=> b!635273 m!609695))

(assert (=> b!635273 m!609695))

(declare-fun m!609697 () Bool)

(assert (=> b!635273 m!609697))

(assert (=> b!635272 m!609695))

(declare-fun m!609699 () Bool)

(assert (=> b!635272 m!609699))

(declare-fun m!609701 () Bool)

(assert (=> b!635272 m!609701))

(declare-fun m!609703 () Bool)

(assert (=> b!635276 m!609703))

(declare-fun m!609705 () Bool)

(assert (=> b!635276 m!609705))

(declare-fun m!609707 () Bool)

(assert (=> b!635276 m!609707))

(assert (=> b!635276 m!609695))

(assert (=> b!635276 m!609699))

(assert (=> b!635276 m!609695))

(declare-fun m!609709 () Bool)

(assert (=> b!635276 m!609709))

(declare-fun m!609711 () Bool)

(assert (=> b!635276 m!609711))

(declare-fun m!609713 () Bool)

(assert (=> b!635276 m!609713))

(declare-fun m!609715 () Bool)

(assert (=> b!635282 m!609715))

(assert (=> b!635277 m!609695))

(assert (=> b!635277 m!609695))

(declare-fun m!609717 () Bool)

(assert (=> b!635277 m!609717))

(declare-fun m!609719 () Bool)

(assert (=> b!635274 m!609719))

(assert (=> b!635278 m!609695))

(assert (=> b!635278 m!609695))

(declare-fun m!609721 () Bool)

(assert (=> b!635278 m!609721))

(assert (=> b!635279 m!609695))

(declare-fun m!609723 () Bool)

(assert (=> start!57444 m!609723))

(declare-fun m!609725 () Bool)

(assert (=> start!57444 m!609725))

(assert (=> b!635271 m!609695))

(assert (=> b!635271 m!609695))

(declare-fun m!609727 () Bool)

(assert (=> b!635271 m!609727))

(assert (=> b!635271 m!609695))

(declare-fun m!609729 () Bool)

(assert (=> b!635271 m!609729))

(declare-fun m!609731 () Bool)

(assert (=> b!635284 m!609731))

(declare-fun m!609733 () Bool)

(assert (=> b!635275 m!609733))

(declare-fun m!609735 () Bool)

(assert (=> b!635287 m!609735))

(declare-fun m!609737 () Bool)

(assert (=> b!635281 m!609737))

(assert (=> b!635286 m!609695))

(assert (=> b!635286 m!609695))

(declare-fun m!609739 () Bool)

(assert (=> b!635286 m!609739))

(assert (=> b!635270 m!609699))

(declare-fun m!609741 () Bool)

(assert (=> b!635270 m!609741))

(push 1)

