; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55964 () Bool)

(assert start!55964)

(declare-fun b!613462 () Bool)

(declare-fun res!395031 () Bool)

(declare-fun e!351687 () Bool)

(assert (=> b!613462 (=> (not res!395031) (not e!351687))))

(declare-datatypes ((array!37397 0))(
  ( (array!37398 (arr!17941 (Array (_ BitVec 32) (_ BitVec 64))) (size!18305 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37397)

(declare-datatypes ((List!12035 0))(
  ( (Nil!12032) (Cons!12031 (h!13076 (_ BitVec 64)) (t!18271 List!12035)) )
))
(declare-fun arrayNoDuplicates!0 (array!37397 (_ BitVec 32) List!12035) Bool)

(assert (=> b!613462 (= res!395031 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12032))))

(declare-fun b!613463 () Bool)

(declare-fun res!395024 () Bool)

(assert (=> b!613463 (=> (not res!395024) (not e!351687))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!613463 (= res!395024 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17941 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!613464 () Bool)

(declare-fun res!395025 () Bool)

(declare-fun e!351686 () Bool)

(assert (=> b!613464 (=> (not res!395025) (not e!351686))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!613464 (= res!395025 (validKeyInArray!0 (select (arr!17941 a!2986) j!136)))))

(declare-fun b!613465 () Bool)

(declare-fun e!351696 () Bool)

(declare-fun e!351691 () Bool)

(assert (=> b!613465 (= e!351696 e!351691)))

(declare-fun res!395026 () Bool)

(assert (=> b!613465 (=> res!395026 e!351691)))

(declare-fun lt!281287 () (_ BitVec 64))

(declare-fun lt!281277 () (_ BitVec 64))

(assert (=> b!613465 (= res!395026 (or (not (= (select (arr!17941 a!2986) j!136) lt!281277)) (not (= (select (arr!17941 a!2986) j!136) lt!281287)) (bvsge j!136 index!984)))))

(declare-fun b!613467 () Bool)

(declare-fun res!395028 () Bool)

(assert (=> b!613467 (=> (not res!395028) (not e!351686))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!613467 (= res!395028 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun e!351700 () Bool)

(declare-fun lt!281293 () array!37397)

(declare-fun b!613468 () Bool)

(assert (=> b!613468 (= e!351700 (arrayContainsKey!0 lt!281293 (select (arr!17941 a!2986) j!136) index!984))))

(declare-fun b!613469 () Bool)

(declare-fun e!351697 () Bool)

(declare-fun e!351689 () Bool)

(assert (=> b!613469 (= e!351697 e!351689)))

(declare-fun res!395020 () Bool)

(assert (=> b!613469 (=> res!395020 e!351689)))

(assert (=> b!613469 (= res!395020 (or (not (= (select (arr!17941 a!2986) j!136) lt!281277)) (not (= (select (arr!17941 a!2986) j!136) lt!281287))))))

(assert (=> b!613469 e!351696))

(declare-fun res!395016 () Bool)

(assert (=> b!613469 (=> (not res!395016) (not e!351696))))

(assert (=> b!613469 (= res!395016 (= lt!281287 (select (arr!17941 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!613469 (= lt!281287 (select (store (arr!17941 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!613470 () Bool)

(declare-fun e!351685 () Bool)

(assert (=> b!613470 (= e!351687 e!351685)))

(declare-fun res!395014 () Bool)

(assert (=> b!613470 (=> (not res!395014) (not e!351685))))

(assert (=> b!613470 (= res!395014 (= (select (store (arr!17941 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!613470 (= lt!281293 (array!37398 (store (arr!17941 a!2986) i!1108 k0!1786) (size!18305 a!2986)))))

(declare-fun b!613471 () Bool)

(declare-fun e!351694 () Bool)

(assert (=> b!613471 (= e!351694 (arrayContainsKey!0 lt!281293 (select (arr!17941 a!2986) j!136) index!984))))

(declare-fun b!613472 () Bool)

(assert (=> b!613472 (= e!351691 e!351700)))

(declare-fun res!395030 () Bool)

(assert (=> b!613472 (=> (not res!395030) (not e!351700))))

(assert (=> b!613472 (= res!395030 (arrayContainsKey!0 lt!281293 (select (arr!17941 a!2986) j!136) j!136))))

(declare-fun b!613473 () Bool)

(declare-datatypes ((Unit!19756 0))(
  ( (Unit!19757) )
))
(declare-fun e!351692 () Unit!19756)

(declare-fun Unit!19758 () Unit!19756)

(assert (=> b!613473 (= e!351692 Unit!19758)))

(declare-fun b!613474 () Bool)

(declare-fun res!395013 () Bool)

(assert (=> b!613474 (=> (not res!395013) (not e!351686))))

(assert (=> b!613474 (= res!395013 (validKeyInArray!0 k0!1786))))

(declare-fun b!613475 () Bool)

(declare-fun res!395021 () Bool)

(declare-fun e!351693 () Bool)

(assert (=> b!613475 (=> res!395021 e!351693)))

(declare-fun noDuplicate!362 (List!12035) Bool)

(assert (=> b!613475 (= res!395021 (not (noDuplicate!362 Nil!12032)))))

(declare-fun b!613476 () Bool)

(assert (=> b!613476 (= e!351686 e!351687)))

(declare-fun res!395012 () Bool)

(assert (=> b!613476 (=> (not res!395012) (not e!351687))))

(declare-datatypes ((SeekEntryResult!6388 0))(
  ( (MissingZero!6388 (index!27835 (_ BitVec 32))) (Found!6388 (index!27836 (_ BitVec 32))) (Intermediate!6388 (undefined!7200 Bool) (index!27837 (_ BitVec 32)) (x!56669 (_ BitVec 32))) (Undefined!6388) (MissingVacant!6388 (index!27838 (_ BitVec 32))) )
))
(declare-fun lt!281283 () SeekEntryResult!6388)

(assert (=> b!613476 (= res!395012 (or (= lt!281283 (MissingZero!6388 i!1108)) (= lt!281283 (MissingVacant!6388 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37397 (_ BitVec 32)) SeekEntryResult!6388)

(assert (=> b!613476 (= lt!281283 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!613477 () Bool)

(declare-fun Unit!19759 () Unit!19756)

(assert (=> b!613477 (= e!351692 Unit!19759)))

(declare-fun lt!281290 () Unit!19756)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37397 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19756)

(assert (=> b!613477 (= lt!281290 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281293 (select (arr!17941 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!613477 (arrayContainsKey!0 lt!281293 (select (arr!17941 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!281280 () Unit!19756)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37397 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12035) Unit!19756)

(assert (=> b!613477 (= lt!281280 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12032))))

(assert (=> b!613477 (arrayNoDuplicates!0 lt!281293 #b00000000000000000000000000000000 Nil!12032)))

(declare-fun lt!281294 () Unit!19756)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37397 (_ BitVec 32) (_ BitVec 32)) Unit!19756)

(assert (=> b!613477 (= lt!281294 (lemmaNoDuplicateFromThenFromBigger!0 lt!281293 #b00000000000000000000000000000000 j!136))))

(assert (=> b!613477 (arrayNoDuplicates!0 lt!281293 j!136 Nil!12032)))

(declare-fun lt!281281 () Unit!19756)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37397 (_ BitVec 64) (_ BitVec 32) List!12035) Unit!19756)

(assert (=> b!613477 (= lt!281281 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!281293 (select (arr!17941 a!2986) j!136) j!136 Nil!12032))))

(assert (=> b!613477 false))

(declare-fun b!613478 () Bool)

(declare-fun e!351699 () Unit!19756)

(declare-fun Unit!19760 () Unit!19756)

(assert (=> b!613478 (= e!351699 Unit!19760)))

(assert (=> b!613478 false))

(declare-fun b!613479 () Bool)

(declare-fun Unit!19761 () Unit!19756)

(assert (=> b!613479 (= e!351699 Unit!19761)))

(declare-fun res!395033 () Bool)

(assert (=> start!55964 (=> (not res!395033) (not e!351686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55964 (= res!395033 (validMask!0 mask!3053))))

(assert (=> start!55964 e!351686))

(assert (=> start!55964 true))

(declare-fun array_inv!13715 (array!37397) Bool)

(assert (=> start!55964 (array_inv!13715 a!2986)))

(declare-fun b!613466 () Bool)

(declare-fun e!351698 () Bool)

(assert (=> b!613466 (= e!351685 e!351698)))

(declare-fun res!395022 () Bool)

(assert (=> b!613466 (=> (not res!395022) (not e!351698))))

(declare-fun lt!281295 () SeekEntryResult!6388)

(assert (=> b!613466 (= res!395022 (and (= lt!281295 (Found!6388 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17941 a!2986) index!984) (select (arr!17941 a!2986) j!136))) (not (= (select (arr!17941 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37397 (_ BitVec 32)) SeekEntryResult!6388)

(assert (=> b!613466 (= lt!281295 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17941 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!613480 () Bool)

(declare-fun res!395015 () Bool)

(assert (=> b!613480 (=> (not res!395015) (not e!351686))))

(assert (=> b!613480 (= res!395015 (and (= (size!18305 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18305 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18305 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!613481 () Bool)

(declare-fun e!351695 () Bool)

(assert (=> b!613481 (= e!351689 e!351695)))

(declare-fun res!395018 () Bool)

(assert (=> b!613481 (=> res!395018 e!351695)))

(assert (=> b!613481 (= res!395018 (bvsge index!984 j!136))))

(declare-fun lt!281285 () Unit!19756)

(assert (=> b!613481 (= lt!281285 e!351692)))

(declare-fun c!69592 () Bool)

(assert (=> b!613481 (= c!69592 (bvslt j!136 index!984))))

(declare-fun b!613482 () Bool)

(assert (=> b!613482 (= e!351693 true)))

(declare-fun lt!281292 () Bool)

(declare-fun contains!3062 (List!12035 (_ BitVec 64)) Bool)

(assert (=> b!613482 (= lt!281292 (contains!3062 Nil!12032 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613483 () Bool)

(declare-fun e!351688 () Bool)

(declare-fun lt!281288 () SeekEntryResult!6388)

(assert (=> b!613483 (= e!351688 (= lt!281295 lt!281288))))

(declare-fun b!613484 () Bool)

(declare-fun res!395032 () Bool)

(assert (=> b!613484 (=> res!395032 e!351693)))

(assert (=> b!613484 (= res!395032 (contains!3062 Nil!12032 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613485 () Bool)

(assert (=> b!613485 (= e!351698 (not e!351697))))

(declare-fun res!395029 () Bool)

(assert (=> b!613485 (=> res!395029 e!351697)))

(declare-fun lt!281282 () SeekEntryResult!6388)

(assert (=> b!613485 (= res!395029 (not (= lt!281282 (Found!6388 index!984))))))

(declare-fun lt!281289 () Unit!19756)

(assert (=> b!613485 (= lt!281289 e!351699)))

(declare-fun c!69593 () Bool)

(assert (=> b!613485 (= c!69593 (= lt!281282 Undefined!6388))))

(assert (=> b!613485 (= lt!281282 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!281277 lt!281293 mask!3053))))

(assert (=> b!613485 e!351688))

(declare-fun res!395027 () Bool)

(assert (=> b!613485 (=> (not res!395027) (not e!351688))))

(declare-fun lt!281279 () (_ BitVec 32))

(assert (=> b!613485 (= res!395027 (= lt!281288 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281279 vacantSpotIndex!68 lt!281277 lt!281293 mask!3053)))))

(assert (=> b!613485 (= lt!281288 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281279 vacantSpotIndex!68 (select (arr!17941 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!613485 (= lt!281277 (select (store (arr!17941 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!281278 () Unit!19756)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19756)

(assert (=> b!613485 (= lt!281278 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!281279 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!613485 (= lt!281279 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!613486 () Bool)

(assert (=> b!613486 (= e!351695 e!351693)))

(declare-fun res!395019 () Bool)

(assert (=> b!613486 (=> res!395019 e!351693)))

(assert (=> b!613486 (= res!395019 (or (bvsge (size!18305 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18305 a!2986)) (bvsge index!984 (size!18305 a!2986))))))

(assert (=> b!613486 (arrayNoDuplicates!0 lt!281293 index!984 Nil!12032)))

(declare-fun lt!281286 () Unit!19756)

(assert (=> b!613486 (= lt!281286 (lemmaNoDuplicateFromThenFromBigger!0 lt!281293 #b00000000000000000000000000000000 index!984))))

(assert (=> b!613486 (arrayNoDuplicates!0 lt!281293 #b00000000000000000000000000000000 Nil!12032)))

(declare-fun lt!281284 () Unit!19756)

(assert (=> b!613486 (= lt!281284 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12032))))

(assert (=> b!613486 (arrayContainsKey!0 lt!281293 (select (arr!17941 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!281291 () Unit!19756)

(assert (=> b!613486 (= lt!281291 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281293 (select (arr!17941 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!613486 e!351694))

(declare-fun res!395017 () Bool)

(assert (=> b!613486 (=> (not res!395017) (not e!351694))))

(assert (=> b!613486 (= res!395017 (arrayContainsKey!0 lt!281293 (select (arr!17941 a!2986) j!136) j!136))))

(declare-fun b!613487 () Bool)

(declare-fun res!395023 () Bool)

(assert (=> b!613487 (=> (not res!395023) (not e!351687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37397 (_ BitVec 32)) Bool)

(assert (=> b!613487 (= res!395023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!55964 res!395033) b!613480))

(assert (= (and b!613480 res!395015) b!613464))

(assert (= (and b!613464 res!395025) b!613474))

(assert (= (and b!613474 res!395013) b!613467))

(assert (= (and b!613467 res!395028) b!613476))

(assert (= (and b!613476 res!395012) b!613487))

(assert (= (and b!613487 res!395023) b!613462))

(assert (= (and b!613462 res!395031) b!613463))

(assert (= (and b!613463 res!395024) b!613470))

(assert (= (and b!613470 res!395014) b!613466))

(assert (= (and b!613466 res!395022) b!613485))

(assert (= (and b!613485 res!395027) b!613483))

(assert (= (and b!613485 c!69593) b!613478))

(assert (= (and b!613485 (not c!69593)) b!613479))

(assert (= (and b!613485 (not res!395029)) b!613469))

(assert (= (and b!613469 res!395016) b!613465))

(assert (= (and b!613465 (not res!395026)) b!613472))

(assert (= (and b!613472 res!395030) b!613468))

(assert (= (and b!613469 (not res!395020)) b!613481))

(assert (= (and b!613481 c!69592) b!613477))

(assert (= (and b!613481 (not c!69592)) b!613473))

(assert (= (and b!613481 (not res!395018)) b!613486))

(assert (= (and b!613486 res!395017) b!613471))

(assert (= (and b!613486 (not res!395019)) b!613475))

(assert (= (and b!613475 (not res!395021)) b!613484))

(assert (= (and b!613484 (not res!395032)) b!613482))

(declare-fun m!589787 () Bool)

(assert (=> start!55964 m!589787))

(declare-fun m!589789 () Bool)

(assert (=> start!55964 m!589789))

(declare-fun m!589791 () Bool)

(assert (=> b!613470 m!589791))

(declare-fun m!589793 () Bool)

(assert (=> b!613470 m!589793))

(declare-fun m!589795 () Bool)

(assert (=> b!613463 m!589795))

(declare-fun m!589797 () Bool)

(assert (=> b!613476 m!589797))

(declare-fun m!589799 () Bool)

(assert (=> b!613477 m!589799))

(declare-fun m!589801 () Bool)

(assert (=> b!613477 m!589801))

(assert (=> b!613477 m!589799))

(declare-fun m!589803 () Bool)

(assert (=> b!613477 m!589803))

(declare-fun m!589805 () Bool)

(assert (=> b!613477 m!589805))

(assert (=> b!613477 m!589799))

(declare-fun m!589807 () Bool)

(assert (=> b!613477 m!589807))

(declare-fun m!589809 () Bool)

(assert (=> b!613477 m!589809))

(assert (=> b!613477 m!589799))

(declare-fun m!589811 () Bool)

(assert (=> b!613477 m!589811))

(declare-fun m!589813 () Bool)

(assert (=> b!613477 m!589813))

(declare-fun m!589815 () Bool)

(assert (=> b!613466 m!589815))

(assert (=> b!613466 m!589799))

(assert (=> b!613466 m!589799))

(declare-fun m!589817 () Bool)

(assert (=> b!613466 m!589817))

(declare-fun m!589819 () Bool)

(assert (=> b!613485 m!589819))

(declare-fun m!589821 () Bool)

(assert (=> b!613485 m!589821))

(assert (=> b!613485 m!589799))

(assert (=> b!613485 m!589791))

(declare-fun m!589823 () Bool)

(assert (=> b!613485 m!589823))

(declare-fun m!589825 () Bool)

(assert (=> b!613485 m!589825))

(declare-fun m!589827 () Bool)

(assert (=> b!613485 m!589827))

(assert (=> b!613485 m!589799))

(declare-fun m!589829 () Bool)

(assert (=> b!613485 m!589829))

(assert (=> b!613465 m!589799))

(assert (=> b!613486 m!589799))

(declare-fun m!589831 () Bool)

(assert (=> b!613486 m!589831))

(assert (=> b!613486 m!589799))

(assert (=> b!613486 m!589801))

(declare-fun m!589833 () Bool)

(assert (=> b!613486 m!589833))

(declare-fun m!589835 () Bool)

(assert (=> b!613486 m!589835))

(assert (=> b!613486 m!589809))

(assert (=> b!613486 m!589799))

(declare-fun m!589837 () Bool)

(assert (=> b!613486 m!589837))

(assert (=> b!613486 m!589799))

(declare-fun m!589839 () Bool)

(assert (=> b!613486 m!589839))

(assert (=> b!613464 m!589799))

(assert (=> b!613464 m!589799))

(declare-fun m!589841 () Bool)

(assert (=> b!613464 m!589841))

(declare-fun m!589843 () Bool)

(assert (=> b!613467 m!589843))

(declare-fun m!589845 () Bool)

(assert (=> b!613482 m!589845))

(declare-fun m!589847 () Bool)

(assert (=> b!613487 m!589847))

(declare-fun m!589849 () Bool)

(assert (=> b!613474 m!589849))

(declare-fun m!589851 () Bool)

(assert (=> b!613484 m!589851))

(declare-fun m!589853 () Bool)

(assert (=> b!613475 m!589853))

(assert (=> b!613471 m!589799))

(assert (=> b!613471 m!589799))

(declare-fun m!589855 () Bool)

(assert (=> b!613471 m!589855))

(assert (=> b!613469 m!589799))

(assert (=> b!613469 m!589791))

(declare-fun m!589857 () Bool)

(assert (=> b!613469 m!589857))

(declare-fun m!589859 () Bool)

(assert (=> b!613462 m!589859))

(assert (=> b!613468 m!589799))

(assert (=> b!613468 m!589799))

(assert (=> b!613468 m!589855))

(assert (=> b!613472 m!589799))

(assert (=> b!613472 m!589799))

(assert (=> b!613472 m!589831))

(check-sat (not b!613482) (not b!613475) (not b!613476) (not b!613464) (not b!613474) (not b!613468) (not start!55964) (not b!613485) (not b!613477) (not b!613484) (not b!613462) (not b!613471) (not b!613487) (not b!613472) (not b!613467) (not b!613486) (not b!613466))
(check-sat)
