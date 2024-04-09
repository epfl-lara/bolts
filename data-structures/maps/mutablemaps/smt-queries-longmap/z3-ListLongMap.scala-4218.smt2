; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57842 () Bool)

(assert start!57842)

(declare-fun b!639600 () Bool)

(declare-fun e!366080 () Bool)

(declare-fun e!366083 () Bool)

(assert (=> b!639600 (= e!366080 e!366083)))

(declare-fun res!414284 () Bool)

(assert (=> b!639600 (=> (not res!414284) (not e!366083))))

(declare-datatypes ((SeekEntryResult!6814 0))(
  ( (MissingZero!6814 (index!29572 (_ BitVec 32))) (Found!6814 (index!29573 (_ BitVec 32))) (Intermediate!6814 (undefined!7626 Bool) (index!29574 (_ BitVec 32)) (x!58354 (_ BitVec 32))) (Undefined!6814) (MissingVacant!6814 (index!29575 (_ BitVec 32))) )
))
(declare-fun lt!296006 () SeekEntryResult!6814)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38300 0))(
  ( (array!38301 (arr!18367 (Array (_ BitVec 32) (_ BitVec 64))) (size!18731 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38300)

(assert (=> b!639600 (= res!414284 (and (= lt!296006 (Found!6814 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18367 a!2986) index!984) (select (arr!18367 a!2986) j!136))) (not (= (select (arr!18367 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38300 (_ BitVec 32)) SeekEntryResult!6814)

(assert (=> b!639600 (= lt!296006 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639601 () Bool)

(declare-fun e!366087 () Bool)

(assert (=> b!639601 (= e!366083 (not e!366087))))

(declare-fun res!414293 () Bool)

(assert (=> b!639601 (=> res!414293 e!366087)))

(declare-fun lt!295999 () SeekEntryResult!6814)

(assert (=> b!639601 (= res!414293 (not (= lt!295999 (Found!6814 index!984))))))

(declare-datatypes ((Unit!21614 0))(
  ( (Unit!21615) )
))
(declare-fun lt!296005 () Unit!21614)

(declare-fun e!366084 () Unit!21614)

(assert (=> b!639601 (= lt!296005 e!366084)))

(declare-fun c!73028 () Bool)

(assert (=> b!639601 (= c!73028 (= lt!295999 Undefined!6814))))

(declare-fun lt!295997 () (_ BitVec 64))

(declare-fun lt!296003 () array!38300)

(assert (=> b!639601 (= lt!295999 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295997 lt!296003 mask!3053))))

(declare-fun e!366085 () Bool)

(assert (=> b!639601 e!366085))

(declare-fun res!414285 () Bool)

(assert (=> b!639601 (=> (not res!414285) (not e!366085))))

(declare-fun lt!296002 () SeekEntryResult!6814)

(declare-fun lt!296007 () (_ BitVec 32))

(assert (=> b!639601 (= res!414285 (= lt!296002 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 lt!295997 lt!296003 mask!3053)))))

(assert (=> b!639601 (= lt!296002 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!639601 (= lt!295997 (select (store (arr!18367 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296000 () Unit!21614)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38300 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21614)

(assert (=> b!639601 (= lt!296000 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639601 (= lt!296007 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639602 () Bool)

(declare-fun e!366090 () Bool)

(declare-fun arrayContainsKey!0 (array!38300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639602 (= e!366090 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) index!984))))

(declare-fun b!639603 () Bool)

(declare-fun res!414286 () Bool)

(declare-fun e!366088 () Bool)

(assert (=> b!639603 (=> (not res!414286) (not e!366088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38300 (_ BitVec 32)) Bool)

(assert (=> b!639603 (= res!414286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639604 () Bool)

(assert (=> b!639604 (= e!366088 e!366080)))

(declare-fun res!414283 () Bool)

(assert (=> b!639604 (=> (not res!414283) (not e!366080))))

(assert (=> b!639604 (= res!414283 (= (select (store (arr!18367 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639604 (= lt!296003 (array!38301 (store (arr!18367 a!2986) i!1108 k0!1786) (size!18731 a!2986)))))

(declare-fun b!639605 () Bool)

(declare-fun res!414281 () Bool)

(assert (=> b!639605 (=> (not res!414281) (not e!366088))))

(declare-datatypes ((List!12461 0))(
  ( (Nil!12458) (Cons!12457 (h!13502 (_ BitVec 64)) (t!18697 List!12461)) )
))
(declare-fun arrayNoDuplicates!0 (array!38300 (_ BitVec 32) List!12461) Bool)

(assert (=> b!639605 (= res!414281 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12458))))

(declare-fun b!639606 () Bool)

(declare-fun e!366081 () Bool)

(assert (=> b!639606 (= e!366081 e!366090)))

(declare-fun res!414278 () Bool)

(assert (=> b!639606 (=> (not res!414278) (not e!366090))))

(assert (=> b!639606 (= res!414278 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) j!136))))

(declare-fun b!639607 () Bool)

(declare-fun res!414290 () Bool)

(declare-fun e!366091 () Bool)

(assert (=> b!639607 (=> (not res!414290) (not e!366091))))

(assert (=> b!639607 (= res!414290 (and (= (size!18731 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18731 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18731 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639599 () Bool)

(declare-fun res!414282 () Bool)

(assert (=> b!639599 (=> (not res!414282) (not e!366088))))

(assert (=> b!639599 (= res!414282 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18367 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!414288 () Bool)

(assert (=> start!57842 (=> (not res!414288) (not e!366091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57842 (= res!414288 (validMask!0 mask!3053))))

(assert (=> start!57842 e!366091))

(assert (=> start!57842 true))

(declare-fun array_inv!14141 (array!38300) Bool)

(assert (=> start!57842 (array_inv!14141 a!2986)))

(declare-fun b!639608 () Bool)

(assert (=> b!639608 (= e!366085 (= lt!296006 lt!296002))))

(declare-fun b!639609 () Bool)

(declare-fun Unit!21616 () Unit!21614)

(assert (=> b!639609 (= e!366084 Unit!21616)))

(assert (=> b!639609 false))

(declare-fun b!639610 () Bool)

(declare-fun res!414289 () Bool)

(assert (=> b!639610 (=> (not res!414289) (not e!366091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639610 (= res!414289 (validKeyInArray!0 (select (arr!18367 a!2986) j!136)))))

(declare-fun b!639611 () Bool)

(declare-fun e!366086 () Bool)

(assert (=> b!639611 (= e!366087 e!366086)))

(declare-fun res!414280 () Bool)

(assert (=> b!639611 (=> res!414280 e!366086)))

(declare-fun lt!295996 () (_ BitVec 64))

(assert (=> b!639611 (= res!414280 (or (not (= (select (arr!18367 a!2986) j!136) lt!295997)) (not (= (select (arr!18367 a!2986) j!136) lt!295996)) (bvsge j!136 index!984)))))

(declare-fun e!366089 () Bool)

(assert (=> b!639611 e!366089))

(declare-fun res!414291 () Bool)

(assert (=> b!639611 (=> (not res!414291) (not e!366089))))

(assert (=> b!639611 (= res!414291 (= lt!295996 (select (arr!18367 a!2986) j!136)))))

(assert (=> b!639611 (= lt!295996 (select (store (arr!18367 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!639612 () Bool)

(assert (=> b!639612 (= e!366091 e!366088)))

(declare-fun res!414292 () Bool)

(assert (=> b!639612 (=> (not res!414292) (not e!366088))))

(declare-fun lt!296001 () SeekEntryResult!6814)

(assert (=> b!639612 (= res!414292 (or (= lt!296001 (MissingZero!6814 i!1108)) (= lt!296001 (MissingVacant!6814 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38300 (_ BitVec 32)) SeekEntryResult!6814)

(assert (=> b!639612 (= lt!296001 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!639613 () Bool)

(declare-fun res!414277 () Bool)

(assert (=> b!639613 (=> (not res!414277) (not e!366091))))

(assert (=> b!639613 (= res!414277 (validKeyInArray!0 k0!1786))))

(declare-fun b!639614 () Bool)

(declare-fun Unit!21617 () Unit!21614)

(assert (=> b!639614 (= e!366084 Unit!21617)))

(declare-fun b!639615 () Bool)

(assert (=> b!639615 (= e!366089 e!366081)))

(declare-fun res!414287 () Bool)

(assert (=> b!639615 (=> res!414287 e!366081)))

(assert (=> b!639615 (= res!414287 (or (not (= (select (arr!18367 a!2986) j!136) lt!295997)) (not (= (select (arr!18367 a!2986) j!136) lt!295996)) (bvsge j!136 index!984)))))

(declare-fun b!639616 () Bool)

(declare-fun res!414279 () Bool)

(assert (=> b!639616 (=> (not res!414279) (not e!366091))))

(assert (=> b!639616 (= res!414279 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639617 () Bool)

(assert (=> b!639617 (= e!366086 (bvslt (size!18731 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!639617 (arrayNoDuplicates!0 lt!296003 j!136 Nil!12458)))

(declare-fun lt!295995 () Unit!21614)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38300 (_ BitVec 32) (_ BitVec 32)) Unit!21614)

(assert (=> b!639617 (= lt!295995 (lemmaNoDuplicateFromThenFromBigger!0 lt!296003 #b00000000000000000000000000000000 j!136))))

(assert (=> b!639617 (arrayNoDuplicates!0 lt!296003 #b00000000000000000000000000000000 Nil!12458)))

(declare-fun lt!296004 () Unit!21614)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12461) Unit!21614)

(assert (=> b!639617 (= lt!296004 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12458))))

(assert (=> b!639617 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295998 () Unit!21614)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21614)

(assert (=> b!639617 (= lt!295998 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296003 (select (arr!18367 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!57842 res!414288) b!639607))

(assert (= (and b!639607 res!414290) b!639610))

(assert (= (and b!639610 res!414289) b!639613))

(assert (= (and b!639613 res!414277) b!639616))

(assert (= (and b!639616 res!414279) b!639612))

(assert (= (and b!639612 res!414292) b!639603))

(assert (= (and b!639603 res!414286) b!639605))

(assert (= (and b!639605 res!414281) b!639599))

(assert (= (and b!639599 res!414282) b!639604))

(assert (= (and b!639604 res!414283) b!639600))

(assert (= (and b!639600 res!414284) b!639601))

(assert (= (and b!639601 res!414285) b!639608))

(assert (= (and b!639601 c!73028) b!639609))

(assert (= (and b!639601 (not c!73028)) b!639614))

(assert (= (and b!639601 (not res!414293)) b!639611))

(assert (= (and b!639611 res!414291) b!639615))

(assert (= (and b!639615 (not res!414287)) b!639606))

(assert (= (and b!639606 res!414278) b!639602))

(assert (= (and b!639611 (not res!414280)) b!639617))

(declare-fun m!613519 () Bool)

(assert (=> b!639601 m!613519))

(declare-fun m!613521 () Bool)

(assert (=> b!639601 m!613521))

(declare-fun m!613523 () Bool)

(assert (=> b!639601 m!613523))

(declare-fun m!613525 () Bool)

(assert (=> b!639601 m!613525))

(assert (=> b!639601 m!613523))

(declare-fun m!613527 () Bool)

(assert (=> b!639601 m!613527))

(declare-fun m!613529 () Bool)

(assert (=> b!639601 m!613529))

(declare-fun m!613531 () Bool)

(assert (=> b!639601 m!613531))

(declare-fun m!613533 () Bool)

(assert (=> b!639601 m!613533))

(declare-fun m!613535 () Bool)

(assert (=> b!639605 m!613535))

(declare-fun m!613537 () Bool)

(assert (=> b!639616 m!613537))

(declare-fun m!613539 () Bool)

(assert (=> b!639599 m!613539))

(assert (=> b!639602 m!613523))

(assert (=> b!639602 m!613523))

(declare-fun m!613541 () Bool)

(assert (=> b!639602 m!613541))

(declare-fun m!613543 () Bool)

(assert (=> b!639603 m!613543))

(declare-fun m!613545 () Bool)

(assert (=> b!639600 m!613545))

(assert (=> b!639600 m!613523))

(assert (=> b!639600 m!613523))

(declare-fun m!613547 () Bool)

(assert (=> b!639600 m!613547))

(assert (=> b!639615 m!613523))

(declare-fun m!613549 () Bool)

(assert (=> b!639613 m!613549))

(declare-fun m!613551 () Bool)

(assert (=> start!57842 m!613551))

(declare-fun m!613553 () Bool)

(assert (=> start!57842 m!613553))

(declare-fun m!613555 () Bool)

(assert (=> b!639612 m!613555))

(assert (=> b!639617 m!613523))

(declare-fun m!613557 () Bool)

(assert (=> b!639617 m!613557))

(declare-fun m!613559 () Bool)

(assert (=> b!639617 m!613559))

(assert (=> b!639617 m!613523))

(declare-fun m!613561 () Bool)

(assert (=> b!639617 m!613561))

(assert (=> b!639617 m!613523))

(declare-fun m!613563 () Bool)

(assert (=> b!639617 m!613563))

(declare-fun m!613565 () Bool)

(assert (=> b!639617 m!613565))

(declare-fun m!613567 () Bool)

(assert (=> b!639617 m!613567))

(assert (=> b!639611 m!613523))

(assert (=> b!639611 m!613529))

(declare-fun m!613569 () Bool)

(assert (=> b!639611 m!613569))

(assert (=> b!639610 m!613523))

(assert (=> b!639610 m!613523))

(declare-fun m!613571 () Bool)

(assert (=> b!639610 m!613571))

(assert (=> b!639604 m!613529))

(declare-fun m!613573 () Bool)

(assert (=> b!639604 m!613573))

(assert (=> b!639606 m!613523))

(assert (=> b!639606 m!613523))

(declare-fun m!613575 () Bool)

(assert (=> b!639606 m!613575))

(check-sat (not b!639605) (not b!639603) (not start!57842) (not b!639610) (not b!639602) (not b!639612) (not b!639617) (not b!639613) (not b!639606) (not b!639616) (not b!639600) (not b!639601))
(check-sat)
(get-model)

(declare-fun b!639687 () Bool)

(declare-fun c!73038 () Bool)

(declare-fun lt!296053 () (_ BitVec 64))

(assert (=> b!639687 (= c!73038 (= lt!296053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!366134 () SeekEntryResult!6814)

(declare-fun e!366135 () SeekEntryResult!6814)

(assert (=> b!639687 (= e!366134 e!366135)))

(declare-fun lt!296055 () SeekEntryResult!6814)

(declare-fun b!639688 () Bool)

(assert (=> b!639688 (= e!366135 (seekKeyOrZeroReturnVacant!0 (x!58354 lt!296055) (index!29574 lt!296055) (index!29574 lt!296055) k0!1786 a!2986 mask!3053))))

(declare-fun d!90219 () Bool)

(declare-fun lt!296054 () SeekEntryResult!6814)

(get-info :version)

(assert (=> d!90219 (and (or ((_ is Undefined!6814) lt!296054) (not ((_ is Found!6814) lt!296054)) (and (bvsge (index!29573 lt!296054) #b00000000000000000000000000000000) (bvslt (index!29573 lt!296054) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296054) ((_ is Found!6814) lt!296054) (not ((_ is MissingZero!6814) lt!296054)) (and (bvsge (index!29572 lt!296054) #b00000000000000000000000000000000) (bvslt (index!29572 lt!296054) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296054) ((_ is Found!6814) lt!296054) ((_ is MissingZero!6814) lt!296054) (not ((_ is MissingVacant!6814) lt!296054)) (and (bvsge (index!29575 lt!296054) #b00000000000000000000000000000000) (bvslt (index!29575 lt!296054) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296054) (ite ((_ is Found!6814) lt!296054) (= (select (arr!18367 a!2986) (index!29573 lt!296054)) k0!1786) (ite ((_ is MissingZero!6814) lt!296054) (= (select (arr!18367 a!2986) (index!29572 lt!296054)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6814) lt!296054) (= (select (arr!18367 a!2986) (index!29575 lt!296054)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!366136 () SeekEntryResult!6814)

(assert (=> d!90219 (= lt!296054 e!366136)))

(declare-fun c!73040 () Bool)

(assert (=> d!90219 (= c!73040 (and ((_ is Intermediate!6814) lt!296055) (undefined!7626 lt!296055)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38300 (_ BitVec 32)) SeekEntryResult!6814)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90219 (= lt!296055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90219 (validMask!0 mask!3053)))

(assert (=> d!90219 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!296054)))

(declare-fun b!639689 () Bool)

(assert (=> b!639689 (= e!366136 e!366134)))

(assert (=> b!639689 (= lt!296053 (select (arr!18367 a!2986) (index!29574 lt!296055)))))

(declare-fun c!73039 () Bool)

(assert (=> b!639689 (= c!73039 (= lt!296053 k0!1786))))

(declare-fun b!639690 () Bool)

(assert (=> b!639690 (= e!366136 Undefined!6814)))

(declare-fun b!639691 () Bool)

(assert (=> b!639691 (= e!366135 (MissingZero!6814 (index!29574 lt!296055)))))

(declare-fun b!639692 () Bool)

(assert (=> b!639692 (= e!366134 (Found!6814 (index!29574 lt!296055)))))

(assert (= (and d!90219 c!73040) b!639690))

(assert (= (and d!90219 (not c!73040)) b!639689))

(assert (= (and b!639689 c!73039) b!639692))

(assert (= (and b!639689 (not c!73039)) b!639687))

(assert (= (and b!639687 c!73038) b!639691))

(assert (= (and b!639687 (not c!73038)) b!639688))

(declare-fun m!613635 () Bool)

(assert (=> b!639688 m!613635))

(declare-fun m!613637 () Bool)

(assert (=> d!90219 m!613637))

(declare-fun m!613639 () Bool)

(assert (=> d!90219 m!613639))

(declare-fun m!613641 () Bool)

(assert (=> d!90219 m!613641))

(assert (=> d!90219 m!613551))

(declare-fun m!613643 () Bool)

(assert (=> d!90219 m!613643))

(assert (=> d!90219 m!613639))

(declare-fun m!613645 () Bool)

(assert (=> d!90219 m!613645))

(declare-fun m!613647 () Bool)

(assert (=> b!639689 m!613647))

(assert (=> b!639612 d!90219))

(declare-fun b!639705 () Bool)

(declare-fun e!366144 () SeekEntryResult!6814)

(assert (=> b!639705 (= e!366144 (Found!6814 lt!296007))))

(declare-fun b!639706 () Bool)

(declare-fun e!366143 () SeekEntryResult!6814)

(assert (=> b!639706 (= e!366143 (MissingVacant!6814 vacantSpotIndex!68))))

(declare-fun b!639707 () Bool)

(declare-fun e!366145 () SeekEntryResult!6814)

(assert (=> b!639707 (= e!366145 Undefined!6814)))

(declare-fun b!639708 () Bool)

(declare-fun c!73047 () Bool)

(declare-fun lt!296060 () (_ BitVec 64))

(assert (=> b!639708 (= c!73047 (= lt!296060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639708 (= e!366144 e!366143)))

(declare-fun b!639710 () Bool)

(assert (=> b!639710 (= e!366145 e!366144)))

(declare-fun c!73048 () Bool)

(assert (=> b!639710 (= c!73048 (= lt!296060 (select (arr!18367 a!2986) j!136)))))

(declare-fun d!90221 () Bool)

(declare-fun lt!296061 () SeekEntryResult!6814)

(assert (=> d!90221 (and (or ((_ is Undefined!6814) lt!296061) (not ((_ is Found!6814) lt!296061)) (and (bvsge (index!29573 lt!296061) #b00000000000000000000000000000000) (bvslt (index!29573 lt!296061) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296061) ((_ is Found!6814) lt!296061) (not ((_ is MissingVacant!6814) lt!296061)) (not (= (index!29575 lt!296061) vacantSpotIndex!68)) (and (bvsge (index!29575 lt!296061) #b00000000000000000000000000000000) (bvslt (index!29575 lt!296061) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296061) (ite ((_ is Found!6814) lt!296061) (= (select (arr!18367 a!2986) (index!29573 lt!296061)) (select (arr!18367 a!2986) j!136)) (and ((_ is MissingVacant!6814) lt!296061) (= (index!29575 lt!296061) vacantSpotIndex!68) (= (select (arr!18367 a!2986) (index!29575 lt!296061)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90221 (= lt!296061 e!366145)))

(declare-fun c!73049 () Bool)

(assert (=> d!90221 (= c!73049 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90221 (= lt!296060 (select (arr!18367 a!2986) lt!296007))))

(assert (=> d!90221 (validMask!0 mask!3053)))

(assert (=> d!90221 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053) lt!296061)))

(declare-fun b!639709 () Bool)

(assert (=> b!639709 (= e!366143 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296007 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!90221 c!73049) b!639707))

(assert (= (and d!90221 (not c!73049)) b!639710))

(assert (= (and b!639710 c!73048) b!639705))

(assert (= (and b!639710 (not c!73048)) b!639708))

(assert (= (and b!639708 c!73047) b!639706))

(assert (= (and b!639708 (not c!73047)) b!639709))

(declare-fun m!613649 () Bool)

(assert (=> d!90221 m!613649))

(declare-fun m!613651 () Bool)

(assert (=> d!90221 m!613651))

(declare-fun m!613653 () Bool)

(assert (=> d!90221 m!613653))

(assert (=> d!90221 m!613551))

(declare-fun m!613655 () Bool)

(assert (=> b!639709 m!613655))

(assert (=> b!639709 m!613655))

(assert (=> b!639709 m!613523))

(declare-fun m!613657 () Bool)

(assert (=> b!639709 m!613657))

(assert (=> b!639601 d!90221))

(declare-fun d!90223 () Bool)

(declare-fun e!366154 () Bool)

(assert (=> d!90223 e!366154))

(declare-fun res!414351 () Bool)

(assert (=> d!90223 (=> (not res!414351) (not e!366154))))

(assert (=> d!90223 (= res!414351 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18731 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18731 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18731 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18731 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18731 a!2986))))))

(declare-fun lt!296070 () Unit!21614)

(declare-fun choose!9 (array!38300 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21614)

(assert (=> d!90223 (= lt!296070 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90223 (validMask!0 mask!3053)))

(assert (=> d!90223 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 mask!3053) lt!296070)))

(declare-fun b!639721 () Bool)

(assert (=> b!639721 (= e!366154 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 (select (store (arr!18367 a!2986) i!1108 k0!1786) j!136) (array!38301 (store (arr!18367 a!2986) i!1108 k0!1786) (size!18731 a!2986)) mask!3053)))))

(assert (= (and d!90223 res!414351) b!639721))

(declare-fun m!613659 () Bool)

(assert (=> d!90223 m!613659))

(assert (=> d!90223 m!613551))

(assert (=> b!639721 m!613521))

(declare-fun m!613661 () Bool)

(assert (=> b!639721 m!613661))

(assert (=> b!639721 m!613521))

(assert (=> b!639721 m!613523))

(assert (=> b!639721 m!613525))

(assert (=> b!639721 m!613523))

(assert (=> b!639721 m!613529))

(assert (=> b!639601 d!90223))

(declare-fun d!90229 () Bool)

(declare-fun lt!296076 () (_ BitVec 32))

(assert (=> d!90229 (and (bvsge lt!296076 #b00000000000000000000000000000000) (bvslt lt!296076 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90229 (= lt!296076 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90229 (validMask!0 mask!3053)))

(assert (=> d!90229 (= (nextIndex!0 index!984 x!910 mask!3053) lt!296076)))

(declare-fun bs!19166 () Bool)

(assert (= bs!19166 d!90229))

(declare-fun m!613675 () Bool)

(assert (=> bs!19166 m!613675))

(assert (=> bs!19166 m!613551))

(assert (=> b!639601 d!90229))

(declare-fun b!639736 () Bool)

(declare-fun e!366167 () SeekEntryResult!6814)

(assert (=> b!639736 (= e!366167 (Found!6814 lt!296007))))

(declare-fun b!639737 () Bool)

(declare-fun e!366166 () SeekEntryResult!6814)

(assert (=> b!639737 (= e!366166 (MissingVacant!6814 vacantSpotIndex!68))))

(declare-fun b!639738 () Bool)

(declare-fun e!366168 () SeekEntryResult!6814)

(assert (=> b!639738 (= e!366168 Undefined!6814)))

(declare-fun b!639739 () Bool)

(declare-fun c!73055 () Bool)

(declare-fun lt!296077 () (_ BitVec 64))

(assert (=> b!639739 (= c!73055 (= lt!296077 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639739 (= e!366167 e!366166)))

(declare-fun b!639741 () Bool)

(assert (=> b!639741 (= e!366168 e!366167)))

(declare-fun c!73056 () Bool)

(assert (=> b!639741 (= c!73056 (= lt!296077 lt!295997))))

(declare-fun d!90233 () Bool)

(declare-fun lt!296078 () SeekEntryResult!6814)

(assert (=> d!90233 (and (or ((_ is Undefined!6814) lt!296078) (not ((_ is Found!6814) lt!296078)) (and (bvsge (index!29573 lt!296078) #b00000000000000000000000000000000) (bvslt (index!29573 lt!296078) (size!18731 lt!296003)))) (or ((_ is Undefined!6814) lt!296078) ((_ is Found!6814) lt!296078) (not ((_ is MissingVacant!6814) lt!296078)) (not (= (index!29575 lt!296078) vacantSpotIndex!68)) (and (bvsge (index!29575 lt!296078) #b00000000000000000000000000000000) (bvslt (index!29575 lt!296078) (size!18731 lt!296003)))) (or ((_ is Undefined!6814) lt!296078) (ite ((_ is Found!6814) lt!296078) (= (select (arr!18367 lt!296003) (index!29573 lt!296078)) lt!295997) (and ((_ is MissingVacant!6814) lt!296078) (= (index!29575 lt!296078) vacantSpotIndex!68) (= (select (arr!18367 lt!296003) (index!29575 lt!296078)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90233 (= lt!296078 e!366168)))

(declare-fun c!73057 () Bool)

(assert (=> d!90233 (= c!73057 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90233 (= lt!296077 (select (arr!18367 lt!296003) lt!296007))))

(assert (=> d!90233 (validMask!0 mask!3053)))

(assert (=> d!90233 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296007 vacantSpotIndex!68 lt!295997 lt!296003 mask!3053) lt!296078)))

(declare-fun b!639740 () Bool)

(assert (=> b!639740 (= e!366166 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296007 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!295997 lt!296003 mask!3053))))

(assert (= (and d!90233 c!73057) b!639738))

(assert (= (and d!90233 (not c!73057)) b!639741))

(assert (= (and b!639741 c!73056) b!639736))

(assert (= (and b!639741 (not c!73056)) b!639739))

(assert (= (and b!639739 c!73055) b!639737))

(assert (= (and b!639739 (not c!73055)) b!639740))

(declare-fun m!613677 () Bool)

(assert (=> d!90233 m!613677))

(declare-fun m!613679 () Bool)

(assert (=> d!90233 m!613679))

(declare-fun m!613681 () Bool)

(assert (=> d!90233 m!613681))

(assert (=> d!90233 m!613551))

(assert (=> b!639740 m!613655))

(assert (=> b!639740 m!613655))

(declare-fun m!613683 () Bool)

(assert (=> b!639740 m!613683))

(assert (=> b!639601 d!90233))

(declare-fun b!639746 () Bool)

(declare-fun e!366174 () SeekEntryResult!6814)

(assert (=> b!639746 (= e!366174 (Found!6814 index!984))))

(declare-fun b!639747 () Bool)

(declare-fun e!366173 () SeekEntryResult!6814)

(assert (=> b!639747 (= e!366173 (MissingVacant!6814 vacantSpotIndex!68))))

(declare-fun b!639748 () Bool)

(declare-fun e!366175 () SeekEntryResult!6814)

(assert (=> b!639748 (= e!366175 Undefined!6814)))

(declare-fun b!639749 () Bool)

(declare-fun c!73058 () Bool)

(declare-fun lt!296079 () (_ BitVec 64))

(assert (=> b!639749 (= c!73058 (= lt!296079 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639749 (= e!366174 e!366173)))

(declare-fun b!639751 () Bool)

(assert (=> b!639751 (= e!366175 e!366174)))

(declare-fun c!73059 () Bool)

(assert (=> b!639751 (= c!73059 (= lt!296079 lt!295997))))

(declare-fun lt!296080 () SeekEntryResult!6814)

(declare-fun d!90235 () Bool)

(assert (=> d!90235 (and (or ((_ is Undefined!6814) lt!296080) (not ((_ is Found!6814) lt!296080)) (and (bvsge (index!29573 lt!296080) #b00000000000000000000000000000000) (bvslt (index!29573 lt!296080) (size!18731 lt!296003)))) (or ((_ is Undefined!6814) lt!296080) ((_ is Found!6814) lt!296080) (not ((_ is MissingVacant!6814) lt!296080)) (not (= (index!29575 lt!296080) vacantSpotIndex!68)) (and (bvsge (index!29575 lt!296080) #b00000000000000000000000000000000) (bvslt (index!29575 lt!296080) (size!18731 lt!296003)))) (or ((_ is Undefined!6814) lt!296080) (ite ((_ is Found!6814) lt!296080) (= (select (arr!18367 lt!296003) (index!29573 lt!296080)) lt!295997) (and ((_ is MissingVacant!6814) lt!296080) (= (index!29575 lt!296080) vacantSpotIndex!68) (= (select (arr!18367 lt!296003) (index!29575 lt!296080)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90235 (= lt!296080 e!366175)))

(declare-fun c!73060 () Bool)

(assert (=> d!90235 (= c!73060 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90235 (= lt!296079 (select (arr!18367 lt!296003) index!984))))

(assert (=> d!90235 (validMask!0 mask!3053)))

(assert (=> d!90235 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295997 lt!296003 mask!3053) lt!296080)))

(declare-fun b!639750 () Bool)

(assert (=> b!639750 (= e!366173 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!295997 lt!296003 mask!3053))))

(assert (= (and d!90235 c!73060) b!639748))

(assert (= (and d!90235 (not c!73060)) b!639751))

(assert (= (and b!639751 c!73059) b!639746))

(assert (= (and b!639751 (not c!73059)) b!639749))

(assert (= (and b!639749 c!73058) b!639747))

(assert (= (and b!639749 (not c!73058)) b!639750))

(declare-fun m!613685 () Bool)

(assert (=> d!90235 m!613685))

(declare-fun m!613687 () Bool)

(assert (=> d!90235 m!613687))

(declare-fun m!613689 () Bool)

(assert (=> d!90235 m!613689))

(assert (=> d!90235 m!613551))

(assert (=> b!639750 m!613519))

(assert (=> b!639750 m!613519))

(declare-fun m!613691 () Bool)

(assert (=> b!639750 m!613691))

(assert (=> b!639601 d!90235))

(declare-fun d!90237 () Bool)

(declare-fun res!414373 () Bool)

(declare-fun e!366186 () Bool)

(assert (=> d!90237 (=> res!414373 e!366186)))

(assert (=> d!90237 (= res!414373 (= (select (arr!18367 lt!296003) index!984) (select (arr!18367 a!2986) j!136)))))

(assert (=> d!90237 (= (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) index!984) e!366186)))

(declare-fun b!639763 () Bool)

(declare-fun e!366187 () Bool)

(assert (=> b!639763 (= e!366186 e!366187)))

(declare-fun res!414374 () Bool)

(assert (=> b!639763 (=> (not res!414374) (not e!366187))))

(assert (=> b!639763 (= res!414374 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18731 lt!296003)))))

(declare-fun b!639764 () Bool)

(assert (=> b!639764 (= e!366187 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90237 (not res!414373)) b!639763))

(assert (= (and b!639763 res!414374) b!639764))

(assert (=> d!90237 m!613689))

(assert (=> b!639764 m!613523))

(declare-fun m!613703 () Bool)

(assert (=> b!639764 m!613703))

(assert (=> b!639602 d!90237))

(declare-fun d!90245 () Bool)

(assert (=> d!90245 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57842 d!90245))

(declare-fun d!90251 () Bool)

(assert (=> d!90251 (= (array_inv!14141 a!2986) (bvsge (size!18731 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57842 d!90251))

(declare-fun b!639792 () Bool)

(declare-fun e!366210 () SeekEntryResult!6814)

(assert (=> b!639792 (= e!366210 (Found!6814 index!984))))

(declare-fun b!639793 () Bool)

(declare-fun e!366209 () SeekEntryResult!6814)

(assert (=> b!639793 (= e!366209 (MissingVacant!6814 vacantSpotIndex!68))))

(declare-fun b!639794 () Bool)

(declare-fun e!366211 () SeekEntryResult!6814)

(assert (=> b!639794 (= e!366211 Undefined!6814)))

(declare-fun b!639795 () Bool)

(declare-fun c!73068 () Bool)

(declare-fun lt!296092 () (_ BitVec 64))

(assert (=> b!639795 (= c!73068 (= lt!296092 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639795 (= e!366210 e!366209)))

(declare-fun b!639797 () Bool)

(assert (=> b!639797 (= e!366211 e!366210)))

(declare-fun c!73069 () Bool)

(assert (=> b!639797 (= c!73069 (= lt!296092 (select (arr!18367 a!2986) j!136)))))

(declare-fun d!90253 () Bool)

(declare-fun lt!296093 () SeekEntryResult!6814)

(assert (=> d!90253 (and (or ((_ is Undefined!6814) lt!296093) (not ((_ is Found!6814) lt!296093)) (and (bvsge (index!29573 lt!296093) #b00000000000000000000000000000000) (bvslt (index!29573 lt!296093) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296093) ((_ is Found!6814) lt!296093) (not ((_ is MissingVacant!6814) lt!296093)) (not (= (index!29575 lt!296093) vacantSpotIndex!68)) (and (bvsge (index!29575 lt!296093) #b00000000000000000000000000000000) (bvslt (index!29575 lt!296093) (size!18731 a!2986)))) (or ((_ is Undefined!6814) lt!296093) (ite ((_ is Found!6814) lt!296093) (= (select (arr!18367 a!2986) (index!29573 lt!296093)) (select (arr!18367 a!2986) j!136)) (and ((_ is MissingVacant!6814) lt!296093) (= (index!29575 lt!296093) vacantSpotIndex!68) (= (select (arr!18367 a!2986) (index!29575 lt!296093)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90253 (= lt!296093 e!366211)))

(declare-fun c!73070 () Bool)

(assert (=> d!90253 (= c!73070 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90253 (= lt!296092 (select (arr!18367 a!2986) index!984))))

(assert (=> d!90253 (validMask!0 mask!3053)))

(assert (=> d!90253 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053) lt!296093)))

(declare-fun b!639796 () Bool)

(assert (=> b!639796 (= e!366209 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18367 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!90253 c!73070) b!639794))

(assert (= (and d!90253 (not c!73070)) b!639797))

(assert (= (and b!639797 c!73069) b!639792))

(assert (= (and b!639797 (not c!73069)) b!639795))

(assert (= (and b!639795 c!73068) b!639793))

(assert (= (and b!639795 (not c!73068)) b!639796))

(declare-fun m!613719 () Bool)

(assert (=> d!90253 m!613719))

(declare-fun m!613721 () Bool)

(assert (=> d!90253 m!613721))

(assert (=> d!90253 m!613545))

(assert (=> d!90253 m!613551))

(assert (=> b!639796 m!613519))

(assert (=> b!639796 m!613519))

(assert (=> b!639796 m!613523))

(declare-fun m!613723 () Bool)

(assert (=> b!639796 m!613723))

(assert (=> b!639600 d!90253))

(declare-fun d!90257 () Bool)

(assert (=> d!90257 (= (validKeyInArray!0 (select (arr!18367 a!2986) j!136)) (and (not (= (select (arr!18367 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18367 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!639610 d!90257))

(declare-fun d!90259 () Bool)

(assert (=> d!90259 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296097 () Unit!21614)

(declare-fun choose!114 (array!38300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21614)

(assert (=> d!90259 (= lt!296097 (choose!114 lt!296003 (select (arr!18367 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90259 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90259 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296003 (select (arr!18367 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!296097)))

(declare-fun bs!19168 () Bool)

(assert (= bs!19168 d!90259))

(assert (=> bs!19168 m!613523))

(assert (=> bs!19168 m!613561))

(assert (=> bs!19168 m!613523))

(declare-fun m!613729 () Bool)

(assert (=> bs!19168 m!613729))

(assert (=> b!639617 d!90259))

(declare-fun d!90263 () Bool)

(declare-fun res!414396 () Bool)

(declare-fun e!366218 () Bool)

(assert (=> d!90263 (=> res!414396 e!366218)))

(assert (=> d!90263 (= res!414396 (= (select (arr!18367 lt!296003) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18367 a!2986) j!136)))))

(assert (=> d!90263 (= (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!366218)))

(declare-fun b!639804 () Bool)

(declare-fun e!366219 () Bool)

(assert (=> b!639804 (= e!366218 e!366219)))

(declare-fun res!414397 () Bool)

(assert (=> b!639804 (=> (not res!414397) (not e!366219))))

(assert (=> b!639804 (= res!414397 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18731 lt!296003)))))

(declare-fun b!639805 () Bool)

(assert (=> b!639805 (= e!366219 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90263 (not res!414396)) b!639804))

(assert (= (and b!639804 res!414397) b!639805))

(declare-fun m!613731 () Bool)

(assert (=> d!90263 m!613731))

(assert (=> b!639805 m!613523))

(declare-fun m!613733 () Bool)

(assert (=> b!639805 m!613733))

(assert (=> b!639617 d!90263))

(declare-fun bm!33498 () Bool)

(declare-fun call!33501 () Bool)

(declare-fun c!73083 () Bool)

(assert (=> bm!33498 (= call!33501 (arrayNoDuplicates!0 lt!296003 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73083 (Cons!12457 (select (arr!18367 lt!296003) #b00000000000000000000000000000000) Nil!12458) Nil!12458)))))

(declare-fun b!639842 () Bool)

(declare-fun e!366244 () Bool)

(declare-fun e!366246 () Bool)

(assert (=> b!639842 (= e!366244 e!366246)))

(assert (=> b!639842 (= c!73083 (validKeyInArray!0 (select (arr!18367 lt!296003) #b00000000000000000000000000000000)))))

(declare-fun b!639843 () Bool)

(assert (=> b!639843 (= e!366246 call!33501)))

(declare-fun b!639844 () Bool)

(declare-fun e!366247 () Bool)

(declare-fun contains!3126 (List!12461 (_ BitVec 64)) Bool)

(assert (=> b!639844 (= e!366247 (contains!3126 Nil!12458 (select (arr!18367 lt!296003) #b00000000000000000000000000000000)))))

(declare-fun b!639846 () Bool)

(declare-fun e!366245 () Bool)

(assert (=> b!639846 (= e!366245 e!366244)))

(declare-fun res!414410 () Bool)

(assert (=> b!639846 (=> (not res!414410) (not e!366244))))

(assert (=> b!639846 (= res!414410 (not e!366247))))

(declare-fun res!414411 () Bool)

(assert (=> b!639846 (=> (not res!414411) (not e!366247))))

(assert (=> b!639846 (= res!414411 (validKeyInArray!0 (select (arr!18367 lt!296003) #b00000000000000000000000000000000)))))

(declare-fun b!639845 () Bool)

(assert (=> b!639845 (= e!366246 call!33501)))

(declare-fun d!90265 () Bool)

(declare-fun res!414412 () Bool)

(assert (=> d!90265 (=> res!414412 e!366245)))

(assert (=> d!90265 (= res!414412 (bvsge #b00000000000000000000000000000000 (size!18731 lt!296003)))))

(assert (=> d!90265 (= (arrayNoDuplicates!0 lt!296003 #b00000000000000000000000000000000 Nil!12458) e!366245)))

(assert (= (and d!90265 (not res!414412)) b!639846))

(assert (= (and b!639846 res!414411) b!639844))

(assert (= (and b!639846 res!414410) b!639842))

(assert (= (and b!639842 c!73083) b!639845))

(assert (= (and b!639842 (not c!73083)) b!639843))

(assert (= (or b!639845 b!639843) bm!33498))

(declare-fun m!613755 () Bool)

(assert (=> bm!33498 m!613755))

(declare-fun m!613757 () Bool)

(assert (=> bm!33498 m!613757))

(assert (=> b!639842 m!613755))

(assert (=> b!639842 m!613755))

(declare-fun m!613759 () Bool)

(assert (=> b!639842 m!613759))

(assert (=> b!639844 m!613755))

(assert (=> b!639844 m!613755))

(declare-fun m!613763 () Bool)

(assert (=> b!639844 m!613763))

(assert (=> b!639846 m!613755))

(assert (=> b!639846 m!613755))

(assert (=> b!639846 m!613759))

(assert (=> b!639617 d!90265))

(declare-fun d!90275 () Bool)

(assert (=> d!90275 (arrayNoDuplicates!0 lt!296003 j!136 Nil!12458)))

(declare-fun lt!296117 () Unit!21614)

(declare-fun choose!39 (array!38300 (_ BitVec 32) (_ BitVec 32)) Unit!21614)

(assert (=> d!90275 (= lt!296117 (choose!39 lt!296003 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90275 (bvslt (size!18731 lt!296003) #b01111111111111111111111111111111)))

(assert (=> d!90275 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!296003 #b00000000000000000000000000000000 j!136) lt!296117)))

(declare-fun bs!19171 () Bool)

(assert (= bs!19171 d!90275))

(assert (=> bs!19171 m!613559))

(declare-fun m!613785 () Bool)

(assert (=> bs!19171 m!613785))

(assert (=> b!639617 d!90275))

(declare-fun d!90283 () Bool)

(declare-fun e!366257 () Bool)

(assert (=> d!90283 e!366257))

(declare-fun res!414418 () Bool)

(assert (=> d!90283 (=> (not res!414418) (not e!366257))))

(assert (=> d!90283 (= res!414418 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18731 a!2986))))))

(declare-fun lt!296120 () Unit!21614)

(declare-fun choose!41 (array!38300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12461) Unit!21614)

(assert (=> d!90283 (= lt!296120 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12458))))

(assert (=> d!90283 (bvslt (size!18731 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90283 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12458) lt!296120)))

(declare-fun b!639860 () Bool)

(assert (=> b!639860 (= e!366257 (arrayNoDuplicates!0 (array!38301 (store (arr!18367 a!2986) i!1108 k0!1786) (size!18731 a!2986)) #b00000000000000000000000000000000 Nil!12458))))

(assert (= (and d!90283 res!414418) b!639860))

(declare-fun m!613787 () Bool)

(assert (=> d!90283 m!613787))

(assert (=> b!639860 m!613529))

(declare-fun m!613789 () Bool)

(assert (=> b!639860 m!613789))

(assert (=> b!639617 d!90283))

(declare-fun call!33503 () Bool)

(declare-fun c!73088 () Bool)

(declare-fun bm!33500 () Bool)

(assert (=> bm!33500 (= call!33503 (arrayNoDuplicates!0 lt!296003 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73088 (Cons!12457 (select (arr!18367 lt!296003) j!136) Nil!12458) Nil!12458)))))

(declare-fun b!639861 () Bool)

(declare-fun e!366258 () Bool)

(declare-fun e!366260 () Bool)

(assert (=> b!639861 (= e!366258 e!366260)))

(assert (=> b!639861 (= c!73088 (validKeyInArray!0 (select (arr!18367 lt!296003) j!136)))))

(declare-fun b!639862 () Bool)

(assert (=> b!639862 (= e!366260 call!33503)))

(declare-fun b!639863 () Bool)

(declare-fun e!366261 () Bool)

(assert (=> b!639863 (= e!366261 (contains!3126 Nil!12458 (select (arr!18367 lt!296003) j!136)))))

(declare-fun b!639865 () Bool)

(declare-fun e!366259 () Bool)

(assert (=> b!639865 (= e!366259 e!366258)))

(declare-fun res!414419 () Bool)

(assert (=> b!639865 (=> (not res!414419) (not e!366258))))

(assert (=> b!639865 (= res!414419 (not e!366261))))

(declare-fun res!414420 () Bool)

(assert (=> b!639865 (=> (not res!414420) (not e!366261))))

(assert (=> b!639865 (= res!414420 (validKeyInArray!0 (select (arr!18367 lt!296003) j!136)))))

(declare-fun b!639864 () Bool)

(assert (=> b!639864 (= e!366260 call!33503)))

(declare-fun d!90285 () Bool)

(declare-fun res!414421 () Bool)

(assert (=> d!90285 (=> res!414421 e!366259)))

(assert (=> d!90285 (= res!414421 (bvsge j!136 (size!18731 lt!296003)))))

(assert (=> d!90285 (= (arrayNoDuplicates!0 lt!296003 j!136 Nil!12458) e!366259)))

(assert (= (and d!90285 (not res!414421)) b!639865))

(assert (= (and b!639865 res!414420) b!639863))

(assert (= (and b!639865 res!414419) b!639861))

(assert (= (and b!639861 c!73088) b!639864))

(assert (= (and b!639861 (not c!73088)) b!639862))

(assert (= (or b!639864 b!639862) bm!33500))

(declare-fun m!613791 () Bool)

(assert (=> bm!33500 m!613791))

(declare-fun m!613793 () Bool)

(assert (=> bm!33500 m!613793))

(assert (=> b!639861 m!613791))

(assert (=> b!639861 m!613791))

(declare-fun m!613795 () Bool)

(assert (=> b!639861 m!613795))

(assert (=> b!639863 m!613791))

(assert (=> b!639863 m!613791))

(declare-fun m!613797 () Bool)

(assert (=> b!639863 m!613797))

(assert (=> b!639865 m!613791))

(assert (=> b!639865 m!613791))

(assert (=> b!639865 m!613795))

(assert (=> b!639617 d!90285))

(declare-fun d!90287 () Bool)

(declare-fun res!414422 () Bool)

(declare-fun e!366262 () Bool)

(assert (=> d!90287 (=> res!414422 e!366262)))

(assert (=> d!90287 (= res!414422 (= (select (arr!18367 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90287 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!366262)))

(declare-fun b!639866 () Bool)

(declare-fun e!366263 () Bool)

(assert (=> b!639866 (= e!366262 e!366263)))

(declare-fun res!414423 () Bool)

(assert (=> b!639866 (=> (not res!414423) (not e!366263))))

(assert (=> b!639866 (= res!414423 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18731 a!2986)))))

(declare-fun b!639867 () Bool)

(assert (=> b!639867 (= e!366263 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90287 (not res!414422)) b!639866))

(assert (= (and b!639866 res!414423) b!639867))

(declare-fun m!613799 () Bool)

(assert (=> d!90287 m!613799))

(declare-fun m!613801 () Bool)

(assert (=> b!639867 m!613801))

(assert (=> b!639616 d!90287))

(declare-fun bm!33501 () Bool)

(declare-fun call!33504 () Bool)

(declare-fun c!73089 () Bool)

(assert (=> bm!33501 (= call!33504 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73089 (Cons!12457 (select (arr!18367 a!2986) #b00000000000000000000000000000000) Nil!12458) Nil!12458)))))

(declare-fun b!639868 () Bool)

(declare-fun e!366264 () Bool)

(declare-fun e!366266 () Bool)

(assert (=> b!639868 (= e!366264 e!366266)))

(assert (=> b!639868 (= c!73089 (validKeyInArray!0 (select (arr!18367 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639869 () Bool)

(assert (=> b!639869 (= e!366266 call!33504)))

(declare-fun b!639870 () Bool)

(declare-fun e!366267 () Bool)

(assert (=> b!639870 (= e!366267 (contains!3126 Nil!12458 (select (arr!18367 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639872 () Bool)

(declare-fun e!366265 () Bool)

(assert (=> b!639872 (= e!366265 e!366264)))

(declare-fun res!414424 () Bool)

(assert (=> b!639872 (=> (not res!414424) (not e!366264))))

(assert (=> b!639872 (= res!414424 (not e!366267))))

(declare-fun res!414425 () Bool)

(assert (=> b!639872 (=> (not res!414425) (not e!366267))))

(assert (=> b!639872 (= res!414425 (validKeyInArray!0 (select (arr!18367 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639871 () Bool)

(assert (=> b!639871 (= e!366266 call!33504)))

(declare-fun d!90289 () Bool)

(declare-fun res!414426 () Bool)

(assert (=> d!90289 (=> res!414426 e!366265)))

(assert (=> d!90289 (= res!414426 (bvsge #b00000000000000000000000000000000 (size!18731 a!2986)))))

(assert (=> d!90289 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12458) e!366265)))

(assert (= (and d!90289 (not res!414426)) b!639872))

(assert (= (and b!639872 res!414425) b!639870))

(assert (= (and b!639872 res!414424) b!639868))

(assert (= (and b!639868 c!73089) b!639871))

(assert (= (and b!639868 (not c!73089)) b!639869))

(assert (= (or b!639871 b!639869) bm!33501))

(assert (=> bm!33501 m!613799))

(declare-fun m!613803 () Bool)

(assert (=> bm!33501 m!613803))

(assert (=> b!639868 m!613799))

(assert (=> b!639868 m!613799))

(declare-fun m!613805 () Bool)

(assert (=> b!639868 m!613805))

(assert (=> b!639870 m!613799))

(assert (=> b!639870 m!613799))

(declare-fun m!613807 () Bool)

(assert (=> b!639870 m!613807))

(assert (=> b!639872 m!613799))

(assert (=> b!639872 m!613799))

(assert (=> b!639872 m!613805))

(assert (=> b!639605 d!90289))

(declare-fun d!90291 () Bool)

(declare-fun res!414427 () Bool)

(declare-fun e!366268 () Bool)

(assert (=> d!90291 (=> res!414427 e!366268)))

(assert (=> d!90291 (= res!414427 (= (select (arr!18367 lt!296003) j!136) (select (arr!18367 a!2986) j!136)))))

(assert (=> d!90291 (= (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) j!136) e!366268)))

(declare-fun b!639873 () Bool)

(declare-fun e!366269 () Bool)

(assert (=> b!639873 (= e!366268 e!366269)))

(declare-fun res!414428 () Bool)

(assert (=> b!639873 (=> (not res!414428) (not e!366269))))

(assert (=> b!639873 (= res!414428 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18731 lt!296003)))))

(declare-fun b!639874 () Bool)

(assert (=> b!639874 (= e!366269 (arrayContainsKey!0 lt!296003 (select (arr!18367 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90291 (not res!414427)) b!639873))

(assert (= (and b!639873 res!414428) b!639874))

(assert (=> d!90291 m!613791))

(assert (=> b!639874 m!613523))

(declare-fun m!613809 () Bool)

(assert (=> b!639874 m!613809))

(assert (=> b!639606 d!90291))

(declare-fun d!90293 () Bool)

(assert (=> d!90293 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!639613 d!90293))

(declare-fun bm!33504 () Bool)

(declare-fun call!33507 () Bool)

(assert (=> bm!33504 (= call!33507 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!639912 () Bool)

(declare-fun e!366293 () Bool)

(assert (=> b!639912 (= e!366293 call!33507)))

(declare-fun b!639913 () Bool)

(declare-fun e!366294 () Bool)

(assert (=> b!639913 (= e!366294 e!366293)))

(declare-fun c!73104 () Bool)

(assert (=> b!639913 (= c!73104 (validKeyInArray!0 (select (arr!18367 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639914 () Bool)

(declare-fun e!366295 () Bool)

(assert (=> b!639914 (= e!366295 call!33507)))

(declare-fun d!90295 () Bool)

(declare-fun res!414438 () Bool)

(assert (=> d!90295 (=> res!414438 e!366294)))

(assert (=> d!90295 (= res!414438 (bvsge #b00000000000000000000000000000000 (size!18731 a!2986)))))

(assert (=> d!90295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!366294)))

(declare-fun b!639915 () Bool)

(assert (=> b!639915 (= e!366293 e!366295)))

(declare-fun lt!296141 () (_ BitVec 64))

(assert (=> b!639915 (= lt!296141 (select (arr!18367 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!296142 () Unit!21614)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38300 (_ BitVec 64) (_ BitVec 32)) Unit!21614)

(assert (=> b!639915 (= lt!296142 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!296141 #b00000000000000000000000000000000))))

(assert (=> b!639915 (arrayContainsKey!0 a!2986 lt!296141 #b00000000000000000000000000000000)))

(declare-fun lt!296140 () Unit!21614)

(assert (=> b!639915 (= lt!296140 lt!296142)))

(declare-fun res!414439 () Bool)

(assert (=> b!639915 (= res!414439 (= (seekEntryOrOpen!0 (select (arr!18367 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6814 #b00000000000000000000000000000000)))))

(assert (=> b!639915 (=> (not res!414439) (not e!366295))))

(assert (= (and d!90295 (not res!414438)) b!639913))

(assert (= (and b!639913 c!73104) b!639915))

(assert (= (and b!639913 (not c!73104)) b!639912))

(assert (= (and b!639915 res!414439) b!639914))

(assert (= (or b!639914 b!639912) bm!33504))

(declare-fun m!613831 () Bool)

(assert (=> bm!33504 m!613831))

(assert (=> b!639913 m!613799))

(assert (=> b!639913 m!613799))

(assert (=> b!639913 m!613805))

(assert (=> b!639915 m!613799))

(declare-fun m!613833 () Bool)

(assert (=> b!639915 m!613833))

(declare-fun m!613835 () Bool)

(assert (=> b!639915 m!613835))

(assert (=> b!639915 m!613799))

(declare-fun m!613837 () Bool)

(assert (=> b!639915 m!613837))

(assert (=> b!639603 d!90295))

(check-sat (not d!90235) (not bm!33501) (not b!639764) (not b!639865) (not b!639861) (not d!90275) (not b!639709) (not b!639844) (not b!639842) (not bm!33498) (not b!639805) (not bm!33500) (not b!639863) (not d!90229) (not d!90283) (not d!90253) (not bm!33504) (not b!639846) (not b!639860) (not b!639872) (not b!639867) (not d!90221) (not b!639913) (not b!639740) (not d!90219) (not d!90223) (not b!639750) (not d!90259) (not d!90233) (not b!639874) (not b!639870) (not b!639796) (not b!639915) (not b!639721) (not b!639868) (not b!639688))
(check-sat)
