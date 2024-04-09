; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57836 () Bool)

(assert start!57836)

(declare-fun b!639428 () Bool)

(declare-fun res!414128 () Bool)

(declare-fun e!365979 () Bool)

(assert (=> b!639428 (=> (not res!414128) (not e!365979))))

(declare-datatypes ((array!38294 0))(
  ( (array!38295 (arr!18364 (Array (_ BitVec 32) (_ BitVec 64))) (size!18728 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38294)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639428 (= res!414128 (validKeyInArray!0 (select (arr!18364 a!2986) j!136)))))

(declare-fun b!639430 () Bool)

(declare-fun e!365975 () Bool)

(declare-datatypes ((SeekEntryResult!6811 0))(
  ( (MissingZero!6811 (index!29560 (_ BitVec 32))) (Found!6811 (index!29561 (_ BitVec 32))) (Intermediate!6811 (undefined!7623 Bool) (index!29562 (_ BitVec 32)) (x!58343 (_ BitVec 32))) (Undefined!6811) (MissingVacant!6811 (index!29563 (_ BitVec 32))) )
))
(declare-fun lt!295883 () SeekEntryResult!6811)

(declare-fun lt!295888 () SeekEntryResult!6811)

(assert (=> b!639430 (= e!365975 (= lt!295883 lt!295888))))

(declare-fun b!639431 () Bool)

(declare-fun e!365973 () Bool)

(declare-fun e!365974 () Bool)

(assert (=> b!639431 (= e!365973 e!365974)))

(declare-fun res!414136 () Bool)

(assert (=> b!639431 (=> (not res!414136) (not e!365974))))

(declare-fun lt!295887 () array!38294)

(declare-fun arrayContainsKey!0 (array!38294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639431 (= res!414136 (arrayContainsKey!0 lt!295887 (select (arr!18364 a!2986) j!136) j!136))))

(declare-fun b!639432 () Bool)

(declare-fun e!365982 () Bool)

(declare-fun e!365980 () Bool)

(assert (=> b!639432 (= e!365982 e!365980)))

(declare-fun res!414131 () Bool)

(assert (=> b!639432 (=> (not res!414131) (not e!365980))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!639432 (= res!414131 (= (select (store (arr!18364 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639432 (= lt!295887 (array!38295 (store (arr!18364 a!2986) i!1108 k0!1786) (size!18728 a!2986)))))

(declare-fun b!639433 () Bool)

(declare-fun e!365976 () Bool)

(assert (=> b!639433 (= e!365980 e!365976)))

(declare-fun res!414124 () Bool)

(assert (=> b!639433 (=> (not res!414124) (not e!365976))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!639433 (= res!414124 (and (= lt!295883 (Found!6811 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18364 a!2986) index!984) (select (arr!18364 a!2986) j!136))) (not (= (select (arr!18364 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38294 (_ BitVec 32)) SeekEntryResult!6811)

(assert (=> b!639433 (= lt!295883 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18364 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639434 () Bool)

(declare-datatypes ((Unit!21602 0))(
  ( (Unit!21603) )
))
(declare-fun e!365978 () Unit!21602)

(declare-fun Unit!21604 () Unit!21602)

(assert (=> b!639434 (= e!365978 Unit!21604)))

(assert (=> b!639434 false))

(declare-fun b!639435 () Bool)

(declare-fun e!365977 () Bool)

(assert (=> b!639435 (= e!365976 (not e!365977))))

(declare-fun res!414132 () Bool)

(assert (=> b!639435 (=> res!414132 e!365977)))

(declare-fun lt!295882 () SeekEntryResult!6811)

(assert (=> b!639435 (= res!414132 (not (= lt!295882 (Found!6811 index!984))))))

(declare-fun lt!295884 () Unit!21602)

(assert (=> b!639435 (= lt!295884 e!365978)))

(declare-fun c!73019 () Bool)

(assert (=> b!639435 (= c!73019 (= lt!295882 Undefined!6811))))

(declare-fun lt!295886 () (_ BitVec 64))

(assert (=> b!639435 (= lt!295882 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295886 lt!295887 mask!3053))))

(assert (=> b!639435 e!365975))

(declare-fun res!414130 () Bool)

(assert (=> b!639435 (=> (not res!414130) (not e!365975))))

(declare-fun lt!295892 () (_ BitVec 32))

(assert (=> b!639435 (= res!414130 (= lt!295888 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295892 vacantSpotIndex!68 lt!295886 lt!295887 mask!3053)))))

(assert (=> b!639435 (= lt!295888 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295892 vacantSpotIndex!68 (select (arr!18364 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639435 (= lt!295886 (select (store (arr!18364 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295890 () Unit!21602)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38294 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21602)

(assert (=> b!639435 (= lt!295890 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295892 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639435 (= lt!295892 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639436 () Bool)

(declare-fun res!414129 () Bool)

(assert (=> b!639436 (=> (not res!414129) (not e!365982))))

(declare-datatypes ((List!12458 0))(
  ( (Nil!12455) (Cons!12454 (h!13499 (_ BitVec 64)) (t!18694 List!12458)) )
))
(declare-fun arrayNoDuplicates!0 (array!38294 (_ BitVec 32) List!12458) Bool)

(assert (=> b!639436 (= res!414129 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12455))))

(declare-fun b!639437 () Bool)

(declare-fun res!414140 () Bool)

(assert (=> b!639437 (=> (not res!414140) (not e!365982))))

(assert (=> b!639437 (= res!414140 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18364 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639438 () Bool)

(declare-fun res!414126 () Bool)

(assert (=> b!639438 (=> (not res!414126) (not e!365979))))

(assert (=> b!639438 (= res!414126 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639429 () Bool)

(assert (=> b!639429 (= e!365979 e!365982)))

(declare-fun res!414138 () Bool)

(assert (=> b!639429 (=> (not res!414138) (not e!365982))))

(declare-fun lt!295891 () SeekEntryResult!6811)

(assert (=> b!639429 (= res!414138 (or (= lt!295891 (MissingZero!6811 i!1108)) (= lt!295891 (MissingVacant!6811 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38294 (_ BitVec 32)) SeekEntryResult!6811)

(assert (=> b!639429 (= lt!295891 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!414139 () Bool)

(assert (=> start!57836 (=> (not res!414139) (not e!365979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57836 (= res!414139 (validMask!0 mask!3053))))

(assert (=> start!57836 e!365979))

(assert (=> start!57836 true))

(declare-fun array_inv!14138 (array!38294) Bool)

(assert (=> start!57836 (array_inv!14138 a!2986)))

(declare-fun b!639439 () Bool)

(declare-fun e!365972 () Bool)

(assert (=> b!639439 (= e!365972 true)))

(assert (=> b!639439 (arrayNoDuplicates!0 lt!295887 #b00000000000000000000000000000000 Nil!12455)))

(declare-fun lt!295893 () Unit!21602)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38294 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12458) Unit!21602)

(assert (=> b!639439 (= lt!295893 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12455))))

(assert (=> b!639439 (arrayContainsKey!0 lt!295887 (select (arr!18364 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295885 () Unit!21602)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38294 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21602)

(assert (=> b!639439 (= lt!295885 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295887 (select (arr!18364 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639440 () Bool)

(declare-fun Unit!21605 () Unit!21602)

(assert (=> b!639440 (= e!365978 Unit!21605)))

(declare-fun b!639441 () Bool)

(declare-fun res!414134 () Bool)

(assert (=> b!639441 (=> (not res!414134) (not e!365982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38294 (_ BitVec 32)) Bool)

(assert (=> b!639441 (= res!414134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639442 () Bool)

(declare-fun res!414127 () Bool)

(assert (=> b!639442 (=> (not res!414127) (not e!365979))))

(assert (=> b!639442 (= res!414127 (validKeyInArray!0 k0!1786))))

(declare-fun b!639443 () Bool)

(declare-fun e!365983 () Bool)

(assert (=> b!639443 (= e!365983 e!365973)))

(declare-fun res!414135 () Bool)

(assert (=> b!639443 (=> res!414135 e!365973)))

(declare-fun lt!295889 () (_ BitVec 64))

(assert (=> b!639443 (= res!414135 (or (not (= (select (arr!18364 a!2986) j!136) lt!295886)) (not (= (select (arr!18364 a!2986) j!136) lt!295889)) (bvsge j!136 index!984)))))

(declare-fun b!639444 () Bool)

(assert (=> b!639444 (= e!365977 e!365972)))

(declare-fun res!414133 () Bool)

(assert (=> b!639444 (=> res!414133 e!365972)))

(assert (=> b!639444 (= res!414133 (or (not (= (select (arr!18364 a!2986) j!136) lt!295886)) (not (= (select (arr!18364 a!2986) j!136) lt!295889)) (bvsge j!136 index!984)))))

(assert (=> b!639444 e!365983))

(declare-fun res!414125 () Bool)

(assert (=> b!639444 (=> (not res!414125) (not e!365983))))

(assert (=> b!639444 (= res!414125 (= lt!295889 (select (arr!18364 a!2986) j!136)))))

(assert (=> b!639444 (= lt!295889 (select (store (arr!18364 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!639445 () Bool)

(declare-fun res!414137 () Bool)

(assert (=> b!639445 (=> (not res!414137) (not e!365979))))

(assert (=> b!639445 (= res!414137 (and (= (size!18728 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18728 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18728 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639446 () Bool)

(assert (=> b!639446 (= e!365974 (arrayContainsKey!0 lt!295887 (select (arr!18364 a!2986) j!136) index!984))))

(assert (= (and start!57836 res!414139) b!639445))

(assert (= (and b!639445 res!414137) b!639428))

(assert (= (and b!639428 res!414128) b!639442))

(assert (= (and b!639442 res!414127) b!639438))

(assert (= (and b!639438 res!414126) b!639429))

(assert (= (and b!639429 res!414138) b!639441))

(assert (= (and b!639441 res!414134) b!639436))

(assert (= (and b!639436 res!414129) b!639437))

(assert (= (and b!639437 res!414140) b!639432))

(assert (= (and b!639432 res!414131) b!639433))

(assert (= (and b!639433 res!414124) b!639435))

(assert (= (and b!639435 res!414130) b!639430))

(assert (= (and b!639435 c!73019) b!639434))

(assert (= (and b!639435 (not c!73019)) b!639440))

(assert (= (and b!639435 (not res!414132)) b!639444))

(assert (= (and b!639444 res!414125) b!639443))

(assert (= (and b!639443 (not res!414135)) b!639431))

(assert (= (and b!639431 res!414136) b!639446))

(assert (= (and b!639444 (not res!414133)) b!639439))

(declare-fun m!613353 () Bool)

(assert (=> b!639443 m!613353))

(declare-fun m!613355 () Bool)

(assert (=> start!57836 m!613355))

(declare-fun m!613357 () Bool)

(assert (=> start!57836 m!613357))

(declare-fun m!613359 () Bool)

(assert (=> b!639432 m!613359))

(declare-fun m!613361 () Bool)

(assert (=> b!639432 m!613361))

(declare-fun m!613363 () Bool)

(assert (=> b!639438 m!613363))

(declare-fun m!613365 () Bool)

(assert (=> b!639437 m!613365))

(declare-fun m!613367 () Bool)

(assert (=> b!639441 m!613367))

(declare-fun m!613369 () Bool)

(assert (=> b!639435 m!613369))

(declare-fun m!613371 () Bool)

(assert (=> b!639435 m!613371))

(assert (=> b!639435 m!613353))

(declare-fun m!613373 () Bool)

(assert (=> b!639435 m!613373))

(assert (=> b!639435 m!613353))

(assert (=> b!639435 m!613359))

(declare-fun m!613375 () Bool)

(assert (=> b!639435 m!613375))

(declare-fun m!613377 () Bool)

(assert (=> b!639435 m!613377))

(declare-fun m!613379 () Bool)

(assert (=> b!639435 m!613379))

(assert (=> b!639428 m!613353))

(assert (=> b!639428 m!613353))

(declare-fun m!613381 () Bool)

(assert (=> b!639428 m!613381))

(declare-fun m!613383 () Bool)

(assert (=> b!639429 m!613383))

(declare-fun m!613385 () Bool)

(assert (=> b!639442 m!613385))

(declare-fun m!613387 () Bool)

(assert (=> b!639433 m!613387))

(assert (=> b!639433 m!613353))

(assert (=> b!639433 m!613353))

(declare-fun m!613389 () Bool)

(assert (=> b!639433 m!613389))

(assert (=> b!639446 m!613353))

(assert (=> b!639446 m!613353))

(declare-fun m!613391 () Bool)

(assert (=> b!639446 m!613391))

(assert (=> b!639444 m!613353))

(assert (=> b!639444 m!613359))

(declare-fun m!613393 () Bool)

(assert (=> b!639444 m!613393))

(declare-fun m!613395 () Bool)

(assert (=> b!639436 m!613395))

(assert (=> b!639431 m!613353))

(assert (=> b!639431 m!613353))

(declare-fun m!613397 () Bool)

(assert (=> b!639431 m!613397))

(assert (=> b!639439 m!613353))

(declare-fun m!613399 () Bool)

(assert (=> b!639439 m!613399))

(assert (=> b!639439 m!613353))

(declare-fun m!613401 () Bool)

(assert (=> b!639439 m!613401))

(assert (=> b!639439 m!613353))

(declare-fun m!613403 () Bool)

(assert (=> b!639439 m!613403))

(declare-fun m!613405 () Bool)

(assert (=> b!639439 m!613405))

(check-sat (not b!639429) (not b!639428) (not b!639436) (not b!639438) (not b!639442) (not b!639435) (not b!639446) (not start!57836) (not b!639441) (not b!639433) (not b!639439) (not b!639431))
(check-sat)
