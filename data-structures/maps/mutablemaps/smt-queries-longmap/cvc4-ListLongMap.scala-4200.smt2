; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57370 () Bool)

(assert start!57370)

(declare-fun b!634754 () Bool)

(declare-fun e!363021 () Bool)

(declare-fun e!363022 () Bool)

(assert (=> b!634754 (= e!363021 e!363022)))

(declare-fun res!410752 () Bool)

(assert (=> b!634754 (=> res!410752 e!363022)))

(declare-fun lt!293526 () (_ BitVec 64))

(declare-fun lt!293517 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38179 0))(
  ( (array!38180 (arr!18314 (Array (_ BitVec 32) (_ BitVec 64))) (size!18678 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38179)

(assert (=> b!634754 (= res!410752 (or (not (= (select (arr!18314 a!2986) j!136) lt!293526)) (not (= (select (arr!18314 a!2986) j!136) lt!293517)) (bvsge j!136 index!984)))))

(declare-fun e!363028 () Bool)

(assert (=> b!634754 e!363028))

(declare-fun res!410751 () Bool)

(assert (=> b!634754 (=> (not res!410751) (not e!363028))))

(assert (=> b!634754 (= res!410751 (= lt!293517 (select (arr!18314 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!634754 (= lt!293517 (select (store (arr!18314 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!634755 () Bool)

(declare-datatypes ((Unit!21402 0))(
  ( (Unit!21403) )
))
(declare-fun e!363018 () Unit!21402)

(declare-fun Unit!21404 () Unit!21402)

(assert (=> b!634755 (= e!363018 Unit!21404)))

(declare-fun b!634756 () Bool)

(declare-fun res!410746 () Bool)

(declare-fun e!363020 () Bool)

(assert (=> b!634756 (=> (not res!410746) (not e!363020))))

(declare-datatypes ((List!12408 0))(
  ( (Nil!12405) (Cons!12404 (h!13449 (_ BitVec 64)) (t!18644 List!12408)) )
))
(declare-fun arrayNoDuplicates!0 (array!38179 (_ BitVec 32) List!12408) Bool)

(assert (=> b!634756 (= res!410746 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12405))))

(declare-fun b!634757 () Bool)

(declare-fun lt!293524 () array!38179)

(declare-fun e!363024 () Bool)

(declare-fun arrayContainsKey!0 (array!38179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634757 (= e!363024 (arrayContainsKey!0 lt!293524 (select (arr!18314 a!2986) j!136) index!984))))

(declare-fun b!634759 () Bool)

(declare-fun res!410761 () Bool)

(declare-fun e!363017 () Bool)

(assert (=> b!634759 (=> (not res!410761) (not e!363017))))

(assert (=> b!634759 (= res!410761 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634760 () Bool)

(declare-fun e!363026 () Bool)

(assert (=> b!634760 (= e!363020 e!363026)))

(declare-fun res!410747 () Bool)

(assert (=> b!634760 (=> (not res!410747) (not e!363026))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!634760 (= res!410747 (= (select (store (arr!18314 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634760 (= lt!293524 (array!38180 (store (arr!18314 a!2986) i!1108 k!1786) (size!18678 a!2986)))))

(declare-fun b!634761 () Bool)

(declare-fun res!410754 () Bool)

(assert (=> b!634761 (=> (not res!410754) (not e!363020))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38179 (_ BitVec 32)) Bool)

(assert (=> b!634761 (= res!410754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634762 () Bool)

(declare-fun e!363025 () Bool)

(declare-datatypes ((SeekEntryResult!6761 0))(
  ( (MissingZero!6761 (index!29345 (_ BitVec 32))) (Found!6761 (index!29346 (_ BitVec 32))) (Intermediate!6761 (undefined!7573 Bool) (index!29347 (_ BitVec 32)) (x!58112 (_ BitVec 32))) (Undefined!6761) (MissingVacant!6761 (index!29348 (_ BitVec 32))) )
))
(declare-fun lt!293516 () SeekEntryResult!6761)

(declare-fun lt!293518 () SeekEntryResult!6761)

(assert (=> b!634762 (= e!363025 (= lt!293516 lt!293518))))

(declare-fun b!634763 () Bool)

(declare-fun res!410757 () Bool)

(assert (=> b!634763 (=> (not res!410757) (not e!363017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634763 (= res!410757 (validKeyInArray!0 k!1786))))

(declare-fun b!634764 () Bool)

(declare-fun e!363019 () Bool)

(assert (=> b!634764 (= e!363026 e!363019)))

(declare-fun res!410748 () Bool)

(assert (=> b!634764 (=> (not res!410748) (not e!363019))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!634764 (= res!410748 (and (= lt!293516 (Found!6761 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18314 a!2986) index!984) (select (arr!18314 a!2986) j!136))) (not (= (select (arr!18314 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38179 (_ BitVec 32)) SeekEntryResult!6761)

(assert (=> b!634764 (= lt!293516 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18314 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634765 () Bool)

(declare-fun e!363023 () Bool)

(assert (=> b!634765 (= e!363028 e!363023)))

(declare-fun res!410755 () Bool)

(assert (=> b!634765 (=> res!410755 e!363023)))

(assert (=> b!634765 (= res!410755 (or (not (= (select (arr!18314 a!2986) j!136) lt!293526)) (not (= (select (arr!18314 a!2986) j!136) lt!293517)) (bvsge j!136 index!984)))))

(declare-fun b!634766 () Bool)

(declare-fun res!410753 () Bool)

(assert (=> b!634766 (=> (not res!410753) (not e!363017))))

(assert (=> b!634766 (= res!410753 (validKeyInArray!0 (select (arr!18314 a!2986) j!136)))))

(declare-fun b!634767 () Bool)

(declare-fun res!410762 () Bool)

(assert (=> b!634767 (=> (not res!410762) (not e!363017))))

(assert (=> b!634767 (= res!410762 (and (= (size!18678 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18678 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18678 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634768 () Bool)

(assert (=> b!634768 (= e!363019 (not e!363021))))

(declare-fun res!410756 () Bool)

(assert (=> b!634768 (=> res!410756 e!363021)))

(declare-fun lt!293519 () SeekEntryResult!6761)

(assert (=> b!634768 (= res!410756 (not (= lt!293519 (Found!6761 index!984))))))

(declare-fun lt!293523 () Unit!21402)

(assert (=> b!634768 (= lt!293523 e!363018)))

(declare-fun c!72371 () Bool)

(assert (=> b!634768 (= c!72371 (= lt!293519 Undefined!6761))))

(assert (=> b!634768 (= lt!293519 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293526 lt!293524 mask!3053))))

(assert (=> b!634768 e!363025))

(declare-fun res!410749 () Bool)

(assert (=> b!634768 (=> (not res!410749) (not e!363025))))

(declare-fun lt!293525 () (_ BitVec 32))

(assert (=> b!634768 (= res!410749 (= lt!293518 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293525 vacantSpotIndex!68 lt!293526 lt!293524 mask!3053)))))

(assert (=> b!634768 (= lt!293518 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293525 vacantSpotIndex!68 (select (arr!18314 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634768 (= lt!293526 (select (store (arr!18314 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293521 () Unit!21402)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21402)

(assert (=> b!634768 (= lt!293521 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293525 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634768 (= lt!293525 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634769 () Bool)

(assert (=> b!634769 (= e!363023 e!363024)))

(declare-fun res!410759 () Bool)

(assert (=> b!634769 (=> (not res!410759) (not e!363024))))

(assert (=> b!634769 (= res!410759 (arrayContainsKey!0 lt!293524 (select (arr!18314 a!2986) j!136) j!136))))

(declare-fun b!634770 () Bool)

(assert (=> b!634770 (= e!363017 e!363020)))

(declare-fun res!410758 () Bool)

(assert (=> b!634770 (=> (not res!410758) (not e!363020))))

(declare-fun lt!293522 () SeekEntryResult!6761)

(assert (=> b!634770 (= res!410758 (or (= lt!293522 (MissingZero!6761 i!1108)) (= lt!293522 (MissingVacant!6761 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38179 (_ BitVec 32)) SeekEntryResult!6761)

(assert (=> b!634770 (= lt!293522 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!410750 () Bool)

(assert (=> start!57370 (=> (not res!410750) (not e!363017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57370 (= res!410750 (validMask!0 mask!3053))))

(assert (=> start!57370 e!363017))

(assert (=> start!57370 true))

(declare-fun array_inv!14088 (array!38179) Bool)

(assert (=> start!57370 (array_inv!14088 a!2986)))

(declare-fun b!634758 () Bool)

(declare-fun Unit!21405 () Unit!21402)

(assert (=> b!634758 (= e!363018 Unit!21405)))

(assert (=> b!634758 false))

(declare-fun b!634771 () Bool)

(declare-fun res!410760 () Bool)

(assert (=> b!634771 (=> (not res!410760) (not e!363020))))

(assert (=> b!634771 (= res!410760 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18314 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634772 () Bool)

(assert (=> b!634772 (= e!363022 true)))

(assert (=> b!634772 (arrayContainsKey!0 lt!293524 (select (arr!18314 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293520 () Unit!21402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38179 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21402)

(assert (=> b!634772 (= lt!293520 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293524 (select (arr!18314 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!57370 res!410750) b!634767))

(assert (= (and b!634767 res!410762) b!634766))

(assert (= (and b!634766 res!410753) b!634763))

(assert (= (and b!634763 res!410757) b!634759))

(assert (= (and b!634759 res!410761) b!634770))

(assert (= (and b!634770 res!410758) b!634761))

(assert (= (and b!634761 res!410754) b!634756))

(assert (= (and b!634756 res!410746) b!634771))

(assert (= (and b!634771 res!410760) b!634760))

(assert (= (and b!634760 res!410747) b!634764))

(assert (= (and b!634764 res!410748) b!634768))

(assert (= (and b!634768 res!410749) b!634762))

(assert (= (and b!634768 c!72371) b!634758))

(assert (= (and b!634768 (not c!72371)) b!634755))

(assert (= (and b!634768 (not res!410756)) b!634754))

(assert (= (and b!634754 res!410751) b!634765))

(assert (= (and b!634765 (not res!410755)) b!634769))

(assert (= (and b!634769 res!410759) b!634757))

(assert (= (and b!634754 (not res!410752)) b!634772))

(declare-fun m!609247 () Bool)

(assert (=> b!634754 m!609247))

(declare-fun m!609249 () Bool)

(assert (=> b!634754 m!609249))

(declare-fun m!609251 () Bool)

(assert (=> b!634754 m!609251))

(declare-fun m!609253 () Bool)

(assert (=> b!634764 m!609253))

(assert (=> b!634764 m!609247))

(assert (=> b!634764 m!609247))

(declare-fun m!609255 () Bool)

(assert (=> b!634764 m!609255))

(declare-fun m!609257 () Bool)

(assert (=> b!634763 m!609257))

(declare-fun m!609259 () Bool)

(assert (=> b!634768 m!609259))

(assert (=> b!634768 m!609247))

(assert (=> b!634768 m!609249))

(assert (=> b!634768 m!609247))

(declare-fun m!609261 () Bool)

(assert (=> b!634768 m!609261))

(declare-fun m!609263 () Bool)

(assert (=> b!634768 m!609263))

(declare-fun m!609265 () Bool)

(assert (=> b!634768 m!609265))

(declare-fun m!609267 () Bool)

(assert (=> b!634768 m!609267))

(declare-fun m!609269 () Bool)

(assert (=> b!634768 m!609269))

(assert (=> b!634757 m!609247))

(assert (=> b!634757 m!609247))

(declare-fun m!609271 () Bool)

(assert (=> b!634757 m!609271))

(assert (=> b!634760 m!609249))

(declare-fun m!609273 () Bool)

(assert (=> b!634760 m!609273))

(declare-fun m!609275 () Bool)

(assert (=> b!634761 m!609275))

(declare-fun m!609277 () Bool)

(assert (=> b!634759 m!609277))

(assert (=> b!634769 m!609247))

(assert (=> b!634769 m!609247))

(declare-fun m!609279 () Bool)

(assert (=> b!634769 m!609279))

(declare-fun m!609281 () Bool)

(assert (=> b!634756 m!609281))

(declare-fun m!609283 () Bool)

(assert (=> start!57370 m!609283))

(declare-fun m!609285 () Bool)

(assert (=> start!57370 m!609285))

(assert (=> b!634765 m!609247))

(declare-fun m!609287 () Bool)

(assert (=> b!634770 m!609287))

(assert (=> b!634766 m!609247))

(assert (=> b!634766 m!609247))

(declare-fun m!609289 () Bool)

(assert (=> b!634766 m!609289))

(assert (=> b!634772 m!609247))

(assert (=> b!634772 m!609247))

(declare-fun m!609291 () Bool)

(assert (=> b!634772 m!609291))

(assert (=> b!634772 m!609247))

(declare-fun m!609293 () Bool)

(assert (=> b!634772 m!609293))

(declare-fun m!609295 () Bool)

(assert (=> b!634771 m!609295))

(push 1)

