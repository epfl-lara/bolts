; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54864 () Bool)

(assert start!54864)

(declare-fun b!599291 () Bool)

(declare-fun res!384453 () Bool)

(declare-fun e!342631 () Bool)

(assert (=> b!599291 (=> (not res!384453) (not e!342631))))

(declare-datatypes ((array!37062 0))(
  ( (array!37063 (arr!17787 (Array (_ BitVec 32) (_ BitVec 64))) (size!18151 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37062)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37062 (_ BitVec 32)) Bool)

(assert (=> b!599291 (= res!384453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599292 () Bool)

(declare-fun e!342622 () Bool)

(assert (=> b!599292 (= e!342622 e!342631)))

(declare-fun res!384442 () Bool)

(assert (=> b!599292 (=> (not res!384442) (not e!342631))))

(declare-datatypes ((SeekEntryResult!6234 0))(
  ( (MissingZero!6234 (index!27192 (_ BitVec 32))) (Found!6234 (index!27193 (_ BitVec 32))) (Intermediate!6234 (undefined!7046 Bool) (index!27194 (_ BitVec 32)) (x!56026 (_ BitVec 32))) (Undefined!6234) (MissingVacant!6234 (index!27195 (_ BitVec 32))) )
))
(declare-fun lt!272491 () SeekEntryResult!6234)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599292 (= res!384442 (or (= lt!272491 (MissingZero!6234 i!1108)) (= lt!272491 (MissingVacant!6234 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37062 (_ BitVec 32)) SeekEntryResult!6234)

(assert (=> b!599292 (= lt!272491 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599293 () Bool)

(declare-fun e!342633 () Bool)

(assert (=> b!599293 (= e!342631 e!342633)))

(declare-fun res!384440 () Bool)

(assert (=> b!599293 (=> (not res!384440) (not e!342633))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!599293 (= res!384440 (= (select (store (arr!17787 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272501 () array!37062)

(assert (=> b!599293 (= lt!272501 (array!37063 (store (arr!17787 a!2986) i!1108 k!1786) (size!18151 a!2986)))))

(declare-fun b!599294 () Bool)

(declare-fun res!384455 () Bool)

(declare-fun e!342629 () Bool)

(assert (=> b!599294 (=> res!384455 e!342629)))

(declare-datatypes ((List!11881 0))(
  ( (Nil!11878) (Cons!11877 (h!12922 (_ BitVec 64)) (t!18117 List!11881)) )
))
(declare-fun contains!2966 (List!11881 (_ BitVec 64)) Bool)

(assert (=> b!599294 (= res!384455 (contains!2966 Nil!11878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599295 () Bool)

(declare-fun e!342634 () Bool)

(declare-fun e!342627 () Bool)

(assert (=> b!599295 (= e!342634 e!342627)))

(declare-fun res!384445 () Bool)

(assert (=> b!599295 (=> res!384445 e!342627)))

(declare-fun lt!272490 () (_ BitVec 64))

(declare-fun lt!272493 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599295 (= res!384445 (or (not (= (select (arr!17787 a!2986) j!136) lt!272493)) (not (= (select (arr!17787 a!2986) j!136) lt!272490)) (bvsge j!136 index!984)))))

(declare-fun b!599296 () Bool)

(declare-fun e!342626 () Bool)

(declare-fun e!342632 () Bool)

(assert (=> b!599296 (= e!342626 e!342632)))

(declare-fun res!384448 () Bool)

(assert (=> b!599296 (=> res!384448 e!342632)))

(assert (=> b!599296 (= res!384448 (or (not (= (select (arr!17787 a!2986) j!136) lt!272493)) (not (= (select (arr!17787 a!2986) j!136) lt!272490)) (bvsge j!136 index!984)))))

(assert (=> b!599296 e!342634))

(declare-fun res!384456 () Bool)

(assert (=> b!599296 (=> (not res!384456) (not e!342634))))

(assert (=> b!599296 (= res!384456 (= lt!272490 (select (arr!17787 a!2986) j!136)))))

(assert (=> b!599296 (= lt!272490 (select (store (arr!17787 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599297 () Bool)

(declare-fun res!384447 () Bool)

(assert (=> b!599297 (=> (not res!384447) (not e!342631))))

(declare-fun arrayNoDuplicates!0 (array!37062 (_ BitVec 32) List!11881) Bool)

(assert (=> b!599297 (= res!384447 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11878))))

(declare-fun b!599298 () Bool)

(declare-fun res!384458 () Bool)

(assert (=> b!599298 (=> (not res!384458) (not e!342622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599298 (= res!384458 (validKeyInArray!0 k!1786))))

(declare-fun e!342624 () Bool)

(declare-fun b!599299 () Bool)

(declare-fun arrayContainsKey!0 (array!37062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599299 (= e!342624 (arrayContainsKey!0 lt!272501 (select (arr!17787 a!2986) j!136) index!984))))

(declare-fun b!599300 () Bool)

(assert (=> b!599300 (= e!342627 e!342624)))

(declare-fun res!384444 () Bool)

(assert (=> b!599300 (=> (not res!384444) (not e!342624))))

(assert (=> b!599300 (= res!384444 (arrayContainsKey!0 lt!272501 (select (arr!17787 a!2986) j!136) j!136))))

(declare-fun b!599301 () Bool)

(declare-fun res!384454 () Bool)

(assert (=> b!599301 (=> (not res!384454) (not e!342622))))

(assert (=> b!599301 (= res!384454 (validKeyInArray!0 (select (arr!17787 a!2986) j!136)))))

(declare-fun b!599302 () Bool)

(declare-datatypes ((Unit!18880 0))(
  ( (Unit!18881) )
))
(declare-fun e!342625 () Unit!18880)

(declare-fun Unit!18882 () Unit!18880)

(assert (=> b!599302 (= e!342625 Unit!18882)))

(declare-fun b!599303 () Bool)

(declare-fun res!384451 () Bool)

(assert (=> b!599303 (=> (not res!384451) (not e!342622))))

(assert (=> b!599303 (= res!384451 (and (= (size!18151 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18151 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18151 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599304 () Bool)

(declare-fun res!384439 () Bool)

(assert (=> b!599304 (=> res!384439 e!342629)))

(declare-fun noDuplicate!280 (List!11881) Bool)

(assert (=> b!599304 (= res!384439 (not (noDuplicate!280 Nil!11878)))))

(declare-fun b!599305 () Bool)

(declare-fun e!342630 () Bool)

(assert (=> b!599305 (= e!342630 (not e!342626))))

(declare-fun res!384446 () Bool)

(assert (=> b!599305 (=> res!384446 e!342626)))

(declare-fun lt!272498 () SeekEntryResult!6234)

(assert (=> b!599305 (= res!384446 (not (= lt!272498 (Found!6234 index!984))))))

(declare-fun lt!272489 () Unit!18880)

(assert (=> b!599305 (= lt!272489 e!342625)))

(declare-fun c!67793 () Bool)

(assert (=> b!599305 (= c!67793 (= lt!272498 Undefined!6234))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37062 (_ BitVec 32)) SeekEntryResult!6234)

(assert (=> b!599305 (= lt!272498 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272493 lt!272501 mask!3053))))

(declare-fun e!342628 () Bool)

(assert (=> b!599305 e!342628))

(declare-fun res!384452 () Bool)

(assert (=> b!599305 (=> (not res!384452) (not e!342628))))

(declare-fun lt!272495 () (_ BitVec 32))

(declare-fun lt!272502 () SeekEntryResult!6234)

(assert (=> b!599305 (= res!384452 (= lt!272502 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272495 vacantSpotIndex!68 lt!272493 lt!272501 mask!3053)))))

(assert (=> b!599305 (= lt!272502 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272495 vacantSpotIndex!68 (select (arr!17787 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599305 (= lt!272493 (select (store (arr!17787 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272500 () Unit!18880)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37062 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18880)

(assert (=> b!599305 (= lt!272500 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272495 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599305 (= lt!272495 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!384450 () Bool)

(assert (=> start!54864 (=> (not res!384450) (not e!342622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54864 (= res!384450 (validMask!0 mask!3053))))

(assert (=> start!54864 e!342622))

(assert (=> start!54864 true))

(declare-fun array_inv!13561 (array!37062) Bool)

(assert (=> start!54864 (array_inv!13561 a!2986)))

(declare-fun b!599306 () Bool)

(declare-fun res!384457 () Bool)

(assert (=> b!599306 (=> (not res!384457) (not e!342631))))

(assert (=> b!599306 (= res!384457 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17787 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599307 () Bool)

(assert (=> b!599307 (= e!342633 e!342630)))

(declare-fun res!384443 () Bool)

(assert (=> b!599307 (=> (not res!384443) (not e!342630))))

(declare-fun lt!272499 () SeekEntryResult!6234)

(assert (=> b!599307 (= res!384443 (and (= lt!272499 (Found!6234 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17787 a!2986) index!984) (select (arr!17787 a!2986) j!136))) (not (= (select (arr!17787 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599307 (= lt!272499 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17787 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599308 () Bool)

(assert (=> b!599308 (= e!342629 true)))

(declare-fun lt!272497 () Bool)

(assert (=> b!599308 (= lt!272497 (contains!2966 Nil!11878 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599309 () Bool)

(declare-fun Unit!18883 () Unit!18880)

(assert (=> b!599309 (= e!342625 Unit!18883)))

(assert (=> b!599309 false))

(declare-fun b!599310 () Bool)

(assert (=> b!599310 (= e!342628 (= lt!272499 lt!272502))))

(declare-fun b!599311 () Bool)

(declare-fun res!384441 () Bool)

(assert (=> b!599311 (=> (not res!384441) (not e!342622))))

(assert (=> b!599311 (= res!384441 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599312 () Bool)

(assert (=> b!599312 (= e!342632 e!342629)))

(declare-fun res!384449 () Bool)

(assert (=> b!599312 (=> res!384449 e!342629)))

(assert (=> b!599312 (= res!384449 (or (bvsge (size!18151 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18151 a!2986))))))

(assert (=> b!599312 (arrayNoDuplicates!0 lt!272501 j!136 Nil!11878)))

(declare-fun lt!272494 () Unit!18880)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37062 (_ BitVec 32) (_ BitVec 32)) Unit!18880)

(assert (=> b!599312 (= lt!272494 (lemmaNoDuplicateFromThenFromBigger!0 lt!272501 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599312 (arrayNoDuplicates!0 lt!272501 #b00000000000000000000000000000000 Nil!11878)))

(declare-fun lt!272492 () Unit!18880)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37062 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11881) Unit!18880)

(assert (=> b!599312 (= lt!272492 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11878))))

(assert (=> b!599312 (arrayContainsKey!0 lt!272501 (select (arr!17787 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272496 () Unit!18880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37062 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18880)

(assert (=> b!599312 (= lt!272496 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272501 (select (arr!17787 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!54864 res!384450) b!599303))

(assert (= (and b!599303 res!384451) b!599301))

(assert (= (and b!599301 res!384454) b!599298))

(assert (= (and b!599298 res!384458) b!599311))

(assert (= (and b!599311 res!384441) b!599292))

(assert (= (and b!599292 res!384442) b!599291))

(assert (= (and b!599291 res!384453) b!599297))

(assert (= (and b!599297 res!384447) b!599306))

(assert (= (and b!599306 res!384457) b!599293))

(assert (= (and b!599293 res!384440) b!599307))

(assert (= (and b!599307 res!384443) b!599305))

(assert (= (and b!599305 res!384452) b!599310))

(assert (= (and b!599305 c!67793) b!599309))

(assert (= (and b!599305 (not c!67793)) b!599302))

(assert (= (and b!599305 (not res!384446)) b!599296))

(assert (= (and b!599296 res!384456) b!599295))

(assert (= (and b!599295 (not res!384445)) b!599300))

(assert (= (and b!599300 res!384444) b!599299))

(assert (= (and b!599296 (not res!384448)) b!599312))

(assert (= (and b!599312 (not res!384449)) b!599304))

(assert (= (and b!599304 (not res!384439)) b!599294))

(assert (= (and b!599294 (not res!384455)) b!599308))

(declare-fun m!576591 () Bool)

(assert (=> b!599298 m!576591))

(declare-fun m!576593 () Bool)

(assert (=> b!599308 m!576593))

(declare-fun m!576595 () Bool)

(assert (=> b!599307 m!576595))

(declare-fun m!576597 () Bool)

(assert (=> b!599307 m!576597))

(assert (=> b!599307 m!576597))

(declare-fun m!576599 () Bool)

(assert (=> b!599307 m!576599))

(declare-fun m!576601 () Bool)

(assert (=> b!599312 m!576601))

(assert (=> b!599312 m!576597))

(declare-fun m!576603 () Bool)

(assert (=> b!599312 m!576603))

(assert (=> b!599312 m!576597))

(assert (=> b!599312 m!576597))

(declare-fun m!576605 () Bool)

(assert (=> b!599312 m!576605))

(declare-fun m!576607 () Bool)

(assert (=> b!599312 m!576607))

(declare-fun m!576609 () Bool)

(assert (=> b!599312 m!576609))

(declare-fun m!576611 () Bool)

(assert (=> b!599312 m!576611))

(declare-fun m!576613 () Bool)

(assert (=> b!599305 m!576613))

(declare-fun m!576615 () Bool)

(assert (=> b!599305 m!576615))

(declare-fun m!576617 () Bool)

(assert (=> b!599305 m!576617))

(declare-fun m!576619 () Bool)

(assert (=> b!599305 m!576619))

(declare-fun m!576621 () Bool)

(assert (=> b!599305 m!576621))

(assert (=> b!599305 m!576597))

(declare-fun m!576623 () Bool)

(assert (=> b!599305 m!576623))

(assert (=> b!599305 m!576597))

(declare-fun m!576625 () Bool)

(assert (=> b!599305 m!576625))

(assert (=> b!599301 m!576597))

(assert (=> b!599301 m!576597))

(declare-fun m!576627 () Bool)

(assert (=> b!599301 m!576627))

(assert (=> b!599296 m!576597))

(assert (=> b!599296 m!576615))

(declare-fun m!576629 () Bool)

(assert (=> b!599296 m!576629))

(assert (=> b!599300 m!576597))

(assert (=> b!599300 m!576597))

(declare-fun m!576631 () Bool)

(assert (=> b!599300 m!576631))

(declare-fun m!576633 () Bool)

(assert (=> b!599304 m!576633))

(declare-fun m!576635 () Bool)

(assert (=> b!599311 m!576635))

(assert (=> b!599299 m!576597))

(assert (=> b!599299 m!576597))

(declare-fun m!576637 () Bool)

(assert (=> b!599299 m!576637))

(declare-fun m!576639 () Bool)

(assert (=> start!54864 m!576639))

(declare-fun m!576641 () Bool)

(assert (=> start!54864 m!576641))

(declare-fun m!576643 () Bool)

(assert (=> b!599297 m!576643))

(declare-fun m!576645 () Bool)

(assert (=> b!599306 m!576645))

(declare-fun m!576647 () Bool)

(assert (=> b!599292 m!576647))

(assert (=> b!599293 m!576615))

(declare-fun m!576649 () Bool)

(assert (=> b!599293 m!576649))

(declare-fun m!576651 () Bool)

(assert (=> b!599291 m!576651))

(declare-fun m!576653 () Bool)

(assert (=> b!599294 m!576653))

(assert (=> b!599295 m!576597))

(push 1)

