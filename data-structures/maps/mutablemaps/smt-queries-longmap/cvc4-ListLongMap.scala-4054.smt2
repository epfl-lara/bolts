; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55564 () Bool)

(assert start!55564)

(declare-fun b!607467 () Bool)

(declare-fun res!390438 () Bool)

(declare-fun e!347885 () Bool)

(assert (=> b!607467 (=> (not res!390438) (not e!347885))))

(declare-datatypes ((array!37258 0))(
  ( (array!37259 (arr!17876 (Array (_ BitVec 32) (_ BitVec 64))) (size!18240 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37258)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37258 (_ BitVec 32)) Bool)

(assert (=> b!607467 (= res!390438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!347875 () Bool)

(declare-fun lt!277435 () array!37258)

(declare-fun b!607468 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607468 (= e!347875 (arrayContainsKey!0 lt!277435 (select (arr!17876 a!2986) j!136) index!984))))

(declare-fun b!607469 () Bool)

(declare-fun res!390435 () Bool)

(assert (=> b!607469 (=> (not res!390435) (not e!347885))))

(declare-datatypes ((List!11970 0))(
  ( (Nil!11967) (Cons!11966 (h!13011 (_ BitVec 64)) (t!18206 List!11970)) )
))
(declare-fun arrayNoDuplicates!0 (array!37258 (_ BitVec 32) List!11970) Bool)

(assert (=> b!607469 (= res!390435 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11967))))

(declare-fun b!607471 () Bool)

(declare-fun e!347886 () Bool)

(assert (=> b!607471 (= e!347886 e!347885)))

(declare-fun res!390428 () Bool)

(assert (=> b!607471 (=> (not res!390428) (not e!347885))))

(declare-datatypes ((SeekEntryResult!6323 0))(
  ( (MissingZero!6323 (index!27566 (_ BitVec 32))) (Found!6323 (index!27567 (_ BitVec 32))) (Intermediate!6323 (undefined!7135 Bool) (index!27568 (_ BitVec 32)) (x!56401 (_ BitVec 32))) (Undefined!6323) (MissingVacant!6323 (index!27569 (_ BitVec 32))) )
))
(declare-fun lt!277441 () SeekEntryResult!6323)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!607471 (= res!390428 (or (= lt!277441 (MissingZero!6323 i!1108)) (= lt!277441 (MissingVacant!6323 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37258 (_ BitVec 32)) SeekEntryResult!6323)

(assert (=> b!607471 (= lt!277441 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607472 () Bool)

(declare-fun e!347878 () Bool)

(declare-fun e!347882 () Bool)

(assert (=> b!607472 (= e!347878 e!347882)))

(declare-fun res!390447 () Bool)

(assert (=> b!607472 (=> (not res!390447) (not e!347882))))

(declare-fun lt!277443 () SeekEntryResult!6323)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!607472 (= res!390447 (and (= lt!277443 (Found!6323 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17876 a!2986) index!984) (select (arr!17876 a!2986) j!136))) (not (= (select (arr!17876 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37258 (_ BitVec 32)) SeekEntryResult!6323)

(assert (=> b!607472 (= lt!277443 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17876 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607473 () Bool)

(declare-fun e!347876 () Bool)

(assert (=> b!607473 (= e!347882 (not e!347876))))

(declare-fun res!390437 () Bool)

(assert (=> b!607473 (=> res!390437 e!347876)))

(declare-fun lt!277439 () SeekEntryResult!6323)

(assert (=> b!607473 (= res!390437 (not (= lt!277439 (Found!6323 index!984))))))

(declare-datatypes ((Unit!19366 0))(
  ( (Unit!19367) )
))
(declare-fun lt!277433 () Unit!19366)

(declare-fun e!347880 () Unit!19366)

(assert (=> b!607473 (= lt!277433 e!347880)))

(declare-fun c!68887 () Bool)

(assert (=> b!607473 (= c!68887 (= lt!277439 Undefined!6323))))

(declare-fun lt!277432 () (_ BitVec 64))

(assert (=> b!607473 (= lt!277439 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277432 lt!277435 mask!3053))))

(declare-fun e!347888 () Bool)

(assert (=> b!607473 e!347888))

(declare-fun res!390440 () Bool)

(assert (=> b!607473 (=> (not res!390440) (not e!347888))))

(declare-fun lt!277429 () SeekEntryResult!6323)

(declare-fun lt!277437 () (_ BitVec 32))

(assert (=> b!607473 (= res!390440 (= lt!277429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277437 vacantSpotIndex!68 lt!277432 lt!277435 mask!3053)))))

(assert (=> b!607473 (= lt!277429 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277437 vacantSpotIndex!68 (select (arr!17876 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!607473 (= lt!277432 (select (store (arr!17876 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277430 () Unit!19366)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19366)

(assert (=> b!607473 (= lt!277430 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277437 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607473 (= lt!277437 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607474 () Bool)

(declare-fun res!390433 () Bool)

(assert (=> b!607474 (=> (not res!390433) (not e!347886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607474 (= res!390433 (validKeyInArray!0 k!1786))))

(declare-fun b!607475 () Bool)

(declare-fun res!390431 () Bool)

(assert (=> b!607475 (=> (not res!390431) (not e!347886))))

(assert (=> b!607475 (= res!390431 (and (= (size!18240 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18240 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18240 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607476 () Bool)

(declare-fun e!347889 () Bool)

(assert (=> b!607476 (= e!347889 (arrayContainsKey!0 lt!277435 (select (arr!17876 a!2986) j!136) index!984))))

(declare-fun b!607477 () Bool)

(declare-fun Unit!19368 () Unit!19366)

(assert (=> b!607477 (= e!347880 Unit!19368)))

(assert (=> b!607477 false))

(declare-fun b!607478 () Bool)

(declare-fun e!347884 () Bool)

(declare-fun e!347883 () Bool)

(assert (=> b!607478 (= e!347884 e!347883)))

(declare-fun res!390443 () Bool)

(assert (=> b!607478 (=> res!390443 e!347883)))

(assert (=> b!607478 (= res!390443 (or (bvsge (size!18240 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18240 a!2986))))))

(assert (=> b!607478 (arrayContainsKey!0 lt!277435 (select (arr!17876 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277428 () Unit!19366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37258 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19366)

(assert (=> b!607478 (= lt!277428 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277435 (select (arr!17876 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607478 e!347875))

(declare-fun res!390429 () Bool)

(assert (=> b!607478 (=> (not res!390429) (not e!347875))))

(assert (=> b!607478 (= res!390429 (arrayContainsKey!0 lt!277435 (select (arr!17876 a!2986) j!136) j!136))))

(declare-fun b!607479 () Bool)

(declare-fun e!347881 () Bool)

(assert (=> b!607479 (= e!347881 e!347884)))

(declare-fun res!390442 () Bool)

(assert (=> b!607479 (=> res!390442 e!347884)))

(assert (=> b!607479 (= res!390442 (bvsge index!984 j!136))))

(declare-fun lt!277427 () Unit!19366)

(declare-fun e!347890 () Unit!19366)

(assert (=> b!607479 (= lt!277427 e!347890)))

(declare-fun c!68888 () Bool)

(assert (=> b!607479 (= c!68888 (bvslt j!136 index!984))))

(declare-fun b!607480 () Bool)

(declare-fun Unit!19369 () Unit!19366)

(assert (=> b!607480 (= e!347890 Unit!19369)))

(declare-fun b!607481 () Bool)

(declare-fun Unit!19370 () Unit!19366)

(assert (=> b!607481 (= e!347890 Unit!19370)))

(declare-fun lt!277440 () Unit!19366)

(assert (=> b!607481 (= lt!277440 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277435 (select (arr!17876 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607481 (arrayContainsKey!0 lt!277435 (select (arr!17876 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277434 () Unit!19366)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37258 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11970) Unit!19366)

(assert (=> b!607481 (= lt!277434 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11967))))

(assert (=> b!607481 (arrayNoDuplicates!0 lt!277435 #b00000000000000000000000000000000 Nil!11967)))

(declare-fun lt!277442 () Unit!19366)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37258 (_ BitVec 32) (_ BitVec 32)) Unit!19366)

(assert (=> b!607481 (= lt!277442 (lemmaNoDuplicateFromThenFromBigger!0 lt!277435 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607481 (arrayNoDuplicates!0 lt!277435 j!136 Nil!11967)))

(declare-fun lt!277438 () Unit!19366)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37258 (_ BitVec 64) (_ BitVec 32) List!11970) Unit!19366)

(assert (=> b!607481 (= lt!277438 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277435 (select (arr!17876 a!2986) j!136) j!136 Nil!11967))))

(assert (=> b!607481 false))

(declare-fun b!607482 () Bool)

(declare-fun res!390434 () Bool)

(assert (=> b!607482 (=> res!390434 e!347883)))

(declare-fun noDuplicate!318 (List!11970) Bool)

(assert (=> b!607482 (= res!390434 (not (noDuplicate!318 Nil!11967)))))

(declare-fun b!607483 () Bool)

(assert (=> b!607483 (= e!347876 e!347881)))

(declare-fun res!390448 () Bool)

(assert (=> b!607483 (=> res!390448 e!347881)))

(declare-fun lt!277436 () (_ BitVec 64))

(assert (=> b!607483 (= res!390448 (or (not (= (select (arr!17876 a!2986) j!136) lt!277432)) (not (= (select (arr!17876 a!2986) j!136) lt!277436))))))

(declare-fun e!347877 () Bool)

(assert (=> b!607483 e!347877))

(declare-fun res!390445 () Bool)

(assert (=> b!607483 (=> (not res!390445) (not e!347877))))

(assert (=> b!607483 (= res!390445 (= lt!277436 (select (arr!17876 a!2986) j!136)))))

(assert (=> b!607483 (= lt!277436 (select (store (arr!17876 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607484 () Bool)

(declare-fun res!390430 () Bool)

(assert (=> b!607484 (=> res!390430 e!347883)))

(declare-fun contains!3016 (List!11970 (_ BitVec 64)) Bool)

(assert (=> b!607484 (= res!390430 (contains!3016 Nil!11967 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607470 () Bool)

(declare-fun res!390449 () Bool)

(assert (=> b!607470 (=> (not res!390449) (not e!347886))))

(assert (=> b!607470 (= res!390449 (validKeyInArray!0 (select (arr!17876 a!2986) j!136)))))

(declare-fun res!390446 () Bool)

(assert (=> start!55564 (=> (not res!390446) (not e!347886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55564 (= res!390446 (validMask!0 mask!3053))))

(assert (=> start!55564 e!347886))

(assert (=> start!55564 true))

(declare-fun array_inv!13650 (array!37258) Bool)

(assert (=> start!55564 (array_inv!13650 a!2986)))

(declare-fun b!607485 () Bool)

(assert (=> b!607485 (= e!347888 (= lt!277443 lt!277429))))

(declare-fun b!607486 () Bool)

(assert (=> b!607486 (= e!347883 true)))

(declare-fun lt!277431 () Bool)

(assert (=> b!607486 (= lt!277431 (contains!3016 Nil!11967 k!1786))))

(declare-fun b!607487 () Bool)

(declare-fun Unit!19371 () Unit!19366)

(assert (=> b!607487 (= e!347880 Unit!19371)))

(declare-fun b!607488 () Bool)

(declare-fun res!390432 () Bool)

(assert (=> b!607488 (=> (not res!390432) (not e!347886))))

(assert (=> b!607488 (= res!390432 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607489 () Bool)

(declare-fun e!347887 () Bool)

(assert (=> b!607489 (= e!347877 e!347887)))

(declare-fun res!390436 () Bool)

(assert (=> b!607489 (=> res!390436 e!347887)))

(assert (=> b!607489 (= res!390436 (or (not (= (select (arr!17876 a!2986) j!136) lt!277432)) (not (= (select (arr!17876 a!2986) j!136) lt!277436)) (bvsge j!136 index!984)))))

(declare-fun b!607490 () Bool)

(declare-fun res!390444 () Bool)

(assert (=> b!607490 (=> (not res!390444) (not e!347885))))

(assert (=> b!607490 (= res!390444 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17876 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607491 () Bool)

(assert (=> b!607491 (= e!347885 e!347878)))

(declare-fun res!390427 () Bool)

(assert (=> b!607491 (=> (not res!390427) (not e!347878))))

(assert (=> b!607491 (= res!390427 (= (select (store (arr!17876 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607491 (= lt!277435 (array!37259 (store (arr!17876 a!2986) i!1108 k!1786) (size!18240 a!2986)))))

(declare-fun b!607492 () Bool)

(declare-fun res!390439 () Bool)

(assert (=> b!607492 (=> res!390439 e!347883)))

(assert (=> b!607492 (= res!390439 (contains!3016 Nil!11967 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607493 () Bool)

(assert (=> b!607493 (= e!347887 e!347889)))

(declare-fun res!390441 () Bool)

(assert (=> b!607493 (=> (not res!390441) (not e!347889))))

(assert (=> b!607493 (= res!390441 (arrayContainsKey!0 lt!277435 (select (arr!17876 a!2986) j!136) j!136))))

(assert (= (and start!55564 res!390446) b!607475))

(assert (= (and b!607475 res!390431) b!607470))

(assert (= (and b!607470 res!390449) b!607474))

(assert (= (and b!607474 res!390433) b!607488))

(assert (= (and b!607488 res!390432) b!607471))

(assert (= (and b!607471 res!390428) b!607467))

(assert (= (and b!607467 res!390438) b!607469))

(assert (= (and b!607469 res!390435) b!607490))

(assert (= (and b!607490 res!390444) b!607491))

(assert (= (and b!607491 res!390427) b!607472))

(assert (= (and b!607472 res!390447) b!607473))

(assert (= (and b!607473 res!390440) b!607485))

(assert (= (and b!607473 c!68887) b!607477))

(assert (= (and b!607473 (not c!68887)) b!607487))

(assert (= (and b!607473 (not res!390437)) b!607483))

(assert (= (and b!607483 res!390445) b!607489))

(assert (= (and b!607489 (not res!390436)) b!607493))

(assert (= (and b!607493 res!390441) b!607476))

(assert (= (and b!607483 (not res!390448)) b!607479))

(assert (= (and b!607479 c!68888) b!607481))

(assert (= (and b!607479 (not c!68888)) b!607480))

(assert (= (and b!607479 (not res!390442)) b!607478))

(assert (= (and b!607478 res!390429) b!607468))

(assert (= (and b!607478 (not res!390443)) b!607482))

(assert (= (and b!607482 (not res!390434)) b!607492))

(assert (= (and b!607492 (not res!390439)) b!607484))

(assert (= (and b!607484 (not res!390430)) b!607486))

(declare-fun m!584229 () Bool)

(assert (=> b!607489 m!584229))

(assert (=> b!607478 m!584229))

(assert (=> b!607478 m!584229))

(declare-fun m!584231 () Bool)

(assert (=> b!607478 m!584231))

(assert (=> b!607478 m!584229))

(declare-fun m!584233 () Bool)

(assert (=> b!607478 m!584233))

(assert (=> b!607478 m!584229))

(declare-fun m!584235 () Bool)

(assert (=> b!607478 m!584235))

(declare-fun m!584237 () Bool)

(assert (=> start!55564 m!584237))

(declare-fun m!584239 () Bool)

(assert (=> start!55564 m!584239))

(declare-fun m!584241 () Bool)

(assert (=> b!607474 m!584241))

(declare-fun m!584243 () Bool)

(assert (=> b!607484 m!584243))

(declare-fun m!584245 () Bool)

(assert (=> b!607467 m!584245))

(declare-fun m!584247 () Bool)

(assert (=> b!607492 m!584247))

(declare-fun m!584249 () Bool)

(assert (=> b!607471 m!584249))

(assert (=> b!607476 m!584229))

(assert (=> b!607476 m!584229))

(declare-fun m!584251 () Bool)

(assert (=> b!607476 m!584251))

(declare-fun m!584253 () Bool)

(assert (=> b!607473 m!584253))

(declare-fun m!584255 () Bool)

(assert (=> b!607473 m!584255))

(assert (=> b!607473 m!584229))

(declare-fun m!584257 () Bool)

(assert (=> b!607473 m!584257))

(declare-fun m!584259 () Bool)

(assert (=> b!607473 m!584259))

(declare-fun m!584261 () Bool)

(assert (=> b!607473 m!584261))

(declare-fun m!584263 () Bool)

(assert (=> b!607473 m!584263))

(assert (=> b!607473 m!584229))

(declare-fun m!584265 () Bool)

(assert (=> b!607473 m!584265))

(declare-fun m!584267 () Bool)

(assert (=> b!607472 m!584267))

(assert (=> b!607472 m!584229))

(assert (=> b!607472 m!584229))

(declare-fun m!584269 () Bool)

(assert (=> b!607472 m!584269))

(assert (=> b!607483 m!584229))

(assert (=> b!607483 m!584257))

(declare-fun m!584271 () Bool)

(assert (=> b!607483 m!584271))

(assert (=> b!607470 m!584229))

(assert (=> b!607470 m!584229))

(declare-fun m!584273 () Bool)

(assert (=> b!607470 m!584273))

(declare-fun m!584275 () Bool)

(assert (=> b!607486 m!584275))

(declare-fun m!584277 () Bool)

(assert (=> b!607469 m!584277))

(declare-fun m!584279 () Bool)

(assert (=> b!607490 m!584279))

(assert (=> b!607493 m!584229))

(assert (=> b!607493 m!584229))

(assert (=> b!607493 m!584235))

(assert (=> b!607481 m!584229))

(declare-fun m!584281 () Bool)

(assert (=> b!607481 m!584281))

(assert (=> b!607481 m!584229))

(declare-fun m!584283 () Bool)

(assert (=> b!607481 m!584283))

(declare-fun m!584285 () Bool)

(assert (=> b!607481 m!584285))

(declare-fun m!584287 () Bool)

(assert (=> b!607481 m!584287))

(assert (=> b!607481 m!584229))

(declare-fun m!584289 () Bool)

(assert (=> b!607481 m!584289))

(assert (=> b!607481 m!584229))

(declare-fun m!584291 () Bool)

(assert (=> b!607481 m!584291))

(declare-fun m!584293 () Bool)

(assert (=> b!607481 m!584293))

(declare-fun m!584295 () Bool)

(assert (=> b!607488 m!584295))

(declare-fun m!584297 () Bool)

(assert (=> b!607482 m!584297))

(assert (=> b!607491 m!584257))

(declare-fun m!584299 () Bool)

(assert (=> b!607491 m!584299))

(assert (=> b!607468 m!584229))

(assert (=> b!607468 m!584229))

(assert (=> b!607468 m!584251))

(push 1)

