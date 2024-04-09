; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58664 () Bool)

(assert start!58664)

(declare-fun b!647029 () Bool)

(declare-fun e!370977 () Bool)

(declare-datatypes ((List!12533 0))(
  ( (Nil!12530) (Cons!12529 (h!13574 (_ BitVec 64)) (t!18769 List!12533)) )
))
(declare-fun contains!3156 (List!12533 (_ BitVec 64)) Bool)

(assert (=> b!647029 (= e!370977 (not (contains!3156 Nil!12530 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647030 () Bool)

(declare-datatypes ((Unit!21988 0))(
  ( (Unit!21989) )
))
(declare-fun e!370988 () Unit!21988)

(declare-fun Unit!21990 () Unit!21988)

(assert (=> b!647030 (= e!370988 Unit!21990)))

(declare-datatypes ((array!38468 0))(
  ( (array!38469 (arr!18439 (Array (_ BitVec 32) (_ BitVec 64))) (size!18803 (_ BitVec 32))) )
))
(declare-fun lt!300305 () array!38468)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!300301 () Unit!21988)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38468)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38468 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21988)

(assert (=> b!647030 (= lt!300301 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300305 (select (arr!18439 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!647030 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!300299 () Unit!21988)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38468 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12533) Unit!21988)

(assert (=> b!647030 (= lt!300299 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12530))))

(declare-fun arrayNoDuplicates!0 (array!38468 (_ BitVec 32) List!12533) Bool)

(assert (=> b!647030 (arrayNoDuplicates!0 lt!300305 #b00000000000000000000000000000000 Nil!12530)))

(declare-fun lt!300294 () Unit!21988)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38468 (_ BitVec 32) (_ BitVec 32)) Unit!21988)

(assert (=> b!647030 (= lt!300294 (lemmaNoDuplicateFromThenFromBigger!0 lt!300305 #b00000000000000000000000000000000 j!136))))

(assert (=> b!647030 (arrayNoDuplicates!0 lt!300305 j!136 Nil!12530)))

(declare-fun lt!300306 () Unit!21988)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38468 (_ BitVec 64) (_ BitVec 32) List!12533) Unit!21988)

(assert (=> b!647030 (= lt!300306 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136 Nil!12530))))

(assert (=> b!647030 false))

(declare-fun b!647031 () Bool)

(declare-fun Unit!21991 () Unit!21988)

(assert (=> b!647031 (= e!370988 Unit!21991)))

(declare-fun res!419346 () Bool)

(declare-fun e!370987 () Bool)

(assert (=> start!58664 (=> (not res!419346) (not e!370987))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58664 (= res!419346 (validMask!0 mask!3053))))

(assert (=> start!58664 e!370987))

(assert (=> start!58664 true))

(declare-fun array_inv!14213 (array!38468) Bool)

(assert (=> start!58664 (array_inv!14213 a!2986)))

(declare-fun b!647032 () Bool)

(declare-fun e!370982 () Bool)

(declare-fun e!370981 () Bool)

(assert (=> b!647032 (= e!370982 e!370981)))

(declare-fun res!419349 () Bool)

(assert (=> b!647032 (=> (not res!419349) (not e!370981))))

(assert (=> b!647032 (= res!419349 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136))))

(declare-fun b!647033 () Bool)

(declare-fun res!419350 () Bool)

(declare-fun e!370979 () Bool)

(assert (=> b!647033 (=> (not res!419350) (not e!370979))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!647033 (= res!419350 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18439 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647034 () Bool)

(declare-fun res!419353 () Bool)

(assert (=> b!647034 (=> (not res!419353) (not e!370979))))

(assert (=> b!647034 (= res!419353 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12530))))

(declare-fun b!647035 () Bool)

(declare-fun e!370991 () Bool)

(declare-datatypes ((SeekEntryResult!6886 0))(
  ( (MissingZero!6886 (index!29884 (_ BitVec 32))) (Found!6886 (index!29885 (_ BitVec 32))) (Intermediate!6886 (undefined!7698 Bool) (index!29886 (_ BitVec 32)) (x!58690 (_ BitVec 32))) (Undefined!6886) (MissingVacant!6886 (index!29887 (_ BitVec 32))) )
))
(declare-fun lt!300296 () SeekEntryResult!6886)

(declare-fun lt!300297 () SeekEntryResult!6886)

(assert (=> b!647035 (= e!370991 (= lt!300296 lt!300297))))

(declare-fun b!647036 () Bool)

(declare-fun res!419351 () Bool)

(assert (=> b!647036 (=> (not res!419351) (not e!370987))))

(assert (=> b!647036 (= res!419351 (and (= (size!18803 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18803 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18803 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!647037 () Bool)

(declare-fun res!419343 () Bool)

(assert (=> b!647037 (=> (not res!419343) (not e!370987))))

(assert (=> b!647037 (= res!419343 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!647038 () Bool)

(declare-fun e!370984 () Bool)

(declare-fun e!370985 () Bool)

(assert (=> b!647038 (= e!370984 e!370985)))

(declare-fun res!419335 () Bool)

(assert (=> b!647038 (=> res!419335 e!370985)))

(assert (=> b!647038 (= res!419335 (bvsge index!984 j!136))))

(declare-fun lt!300298 () Unit!21988)

(assert (=> b!647038 (= lt!300298 e!370988)))

(declare-fun c!74216 () Bool)

(assert (=> b!647038 (= c!74216 (bvslt j!136 index!984))))

(declare-fun b!647039 () Bool)

(assert (=> b!647039 (= e!370981 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) index!984))))

(declare-fun b!647040 () Bool)

(declare-fun e!370986 () Unit!21988)

(declare-fun Unit!21992 () Unit!21988)

(assert (=> b!647040 (= e!370986 Unit!21992)))

(assert (=> b!647040 false))

(declare-fun b!647041 () Bool)

(declare-fun res!419352 () Bool)

(assert (=> b!647041 (=> (not res!419352) (not e!370987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!647041 (= res!419352 (validKeyInArray!0 (select (arr!18439 a!2986) j!136)))))

(declare-fun b!647042 () Bool)

(declare-fun e!370990 () Bool)

(assert (=> b!647042 (= e!370990 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) index!984))))

(declare-fun b!647043 () Bool)

(declare-fun e!370980 () Bool)

(assert (=> b!647043 (= e!370980 e!370984)))

(declare-fun res!419354 () Bool)

(assert (=> b!647043 (=> res!419354 e!370984)))

(declare-fun lt!300304 () (_ BitVec 64))

(declare-fun lt!300307 () (_ BitVec 64))

(assert (=> b!647043 (= res!419354 (or (not (= (select (arr!18439 a!2986) j!136) lt!300304)) (not (= (select (arr!18439 a!2986) j!136) lt!300307))))))

(declare-fun e!370978 () Bool)

(assert (=> b!647043 e!370978))

(declare-fun res!419333 () Bool)

(assert (=> b!647043 (=> (not res!419333) (not e!370978))))

(assert (=> b!647043 (= res!419333 (= lt!300307 (select (arr!18439 a!2986) j!136)))))

(assert (=> b!647043 (= lt!300307 (select (store (arr!18439 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!647044 () Bool)

(assert (=> b!647044 (= e!370978 e!370982)))

(declare-fun res!419341 () Bool)

(assert (=> b!647044 (=> res!419341 e!370982)))

(assert (=> b!647044 (= res!419341 (or (not (= (select (arr!18439 a!2986) j!136) lt!300304)) (not (= (select (arr!18439 a!2986) j!136) lt!300307)) (bvsge j!136 index!984)))))

(declare-fun b!647045 () Bool)

(declare-fun res!419345 () Bool)

(assert (=> b!647045 (=> (not res!419345) (not e!370979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38468 (_ BitVec 32)) Bool)

(assert (=> b!647045 (= res!419345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!647046 () Bool)

(declare-fun e!370983 () Bool)

(assert (=> b!647046 (= e!370979 e!370983)))

(declare-fun res!419339 () Bool)

(assert (=> b!647046 (=> (not res!419339) (not e!370983))))

(assert (=> b!647046 (= res!419339 (= (select (store (arr!18439 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647046 (= lt!300305 (array!38469 (store (arr!18439 a!2986) i!1108 k0!1786) (size!18803 a!2986)))))

(declare-fun b!647047 () Bool)

(declare-fun Unit!21993 () Unit!21988)

(assert (=> b!647047 (= e!370986 Unit!21993)))

(declare-fun b!647048 () Bool)

(declare-fun res!419340 () Bool)

(declare-fun e!370993 () Bool)

(assert (=> b!647048 (=> res!419340 e!370993)))

(declare-fun noDuplicate!416 (List!12533) Bool)

(assert (=> b!647048 (= res!419340 (not (noDuplicate!416 Nil!12530)))))

(declare-fun b!647049 () Bool)

(declare-fun res!419337 () Bool)

(assert (=> b!647049 (=> (not res!419337) (not e!370987))))

(assert (=> b!647049 (= res!419337 (validKeyInArray!0 k0!1786))))

(declare-fun b!647050 () Bool)

(assert (=> b!647050 (= e!370985 e!370993)))

(declare-fun res!419348 () Bool)

(assert (=> b!647050 (=> res!419348 e!370993)))

(assert (=> b!647050 (= res!419348 (or (bvsge (size!18803 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18803 a!2986))))))

(assert (=> b!647050 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300309 () Unit!21988)

(assert (=> b!647050 (= lt!300309 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!647050 e!370990))

(declare-fun res!419344 () Bool)

(assert (=> b!647050 (=> (not res!419344) (not e!370990))))

(assert (=> b!647050 (= res!419344 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136))))

(declare-fun b!647051 () Bool)

(declare-fun e!370992 () Bool)

(assert (=> b!647051 (= e!370983 e!370992)))

(declare-fun res!419338 () Bool)

(assert (=> b!647051 (=> (not res!419338) (not e!370992))))

(assert (=> b!647051 (= res!419338 (and (= lt!300296 (Found!6886 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18439 a!2986) index!984) (select (arr!18439 a!2986) j!136))) (not (= (select (arr!18439 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38468 (_ BitVec 32)) SeekEntryResult!6886)

(assert (=> b!647051 (= lt!300296 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647052 () Bool)

(assert (=> b!647052 (= e!370993 e!370977)))

(declare-fun res!419336 () Bool)

(assert (=> b!647052 (=> (not res!419336) (not e!370977))))

(assert (=> b!647052 (= res!419336 (not (contains!3156 Nil!12530 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647053 () Bool)

(assert (=> b!647053 (= e!370987 e!370979)))

(declare-fun res!419334 () Bool)

(assert (=> b!647053 (=> (not res!419334) (not e!370979))))

(declare-fun lt!300295 () SeekEntryResult!6886)

(assert (=> b!647053 (= res!419334 (or (= lt!300295 (MissingZero!6886 i!1108)) (= lt!300295 (MissingVacant!6886 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38468 (_ BitVec 32)) SeekEntryResult!6886)

(assert (=> b!647053 (= lt!300295 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!647054 () Bool)

(assert (=> b!647054 (= e!370992 (not e!370980))))

(declare-fun res!419347 () Bool)

(assert (=> b!647054 (=> res!419347 e!370980)))

(declare-fun lt!300303 () SeekEntryResult!6886)

(assert (=> b!647054 (= res!419347 (not (= lt!300303 (Found!6886 index!984))))))

(declare-fun lt!300302 () Unit!21988)

(assert (=> b!647054 (= lt!300302 e!370986)))

(declare-fun c!74215 () Bool)

(assert (=> b!647054 (= c!74215 (= lt!300303 Undefined!6886))))

(assert (=> b!647054 (= lt!300303 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300304 lt!300305 mask!3053))))

(assert (=> b!647054 e!370991))

(declare-fun res!419342 () Bool)

(assert (=> b!647054 (=> (not res!419342) (not e!370991))))

(declare-fun lt!300308 () (_ BitVec 32))

(assert (=> b!647054 (= res!419342 (= lt!300297 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 lt!300304 lt!300305 mask!3053)))))

(assert (=> b!647054 (= lt!300297 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!647054 (= lt!300304 (select (store (arr!18439 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!300300 () Unit!21988)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21988)

(assert (=> b!647054 (= lt!300300 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!647054 (= lt!300308 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!58664 res!419346) b!647036))

(assert (= (and b!647036 res!419351) b!647041))

(assert (= (and b!647041 res!419352) b!647049))

(assert (= (and b!647049 res!419337) b!647037))

(assert (= (and b!647037 res!419343) b!647053))

(assert (= (and b!647053 res!419334) b!647045))

(assert (= (and b!647045 res!419345) b!647034))

(assert (= (and b!647034 res!419353) b!647033))

(assert (= (and b!647033 res!419350) b!647046))

(assert (= (and b!647046 res!419339) b!647051))

(assert (= (and b!647051 res!419338) b!647054))

(assert (= (and b!647054 res!419342) b!647035))

(assert (= (and b!647054 c!74215) b!647040))

(assert (= (and b!647054 (not c!74215)) b!647047))

(assert (= (and b!647054 (not res!419347)) b!647043))

(assert (= (and b!647043 res!419333) b!647044))

(assert (= (and b!647044 (not res!419341)) b!647032))

(assert (= (and b!647032 res!419349) b!647039))

(assert (= (and b!647043 (not res!419354)) b!647038))

(assert (= (and b!647038 c!74216) b!647030))

(assert (= (and b!647038 (not c!74216)) b!647031))

(assert (= (and b!647038 (not res!419335)) b!647050))

(assert (= (and b!647050 res!419344) b!647042))

(assert (= (and b!647050 (not res!419348)) b!647048))

(assert (= (and b!647048 (not res!419340)) b!647052))

(assert (= (and b!647052 res!419336) b!647029))

(declare-fun m!620515 () Bool)

(assert (=> b!647039 m!620515))

(assert (=> b!647039 m!620515))

(declare-fun m!620517 () Bool)

(assert (=> b!647039 m!620517))

(declare-fun m!620519 () Bool)

(assert (=> b!647034 m!620519))

(declare-fun m!620521 () Bool)

(assert (=> b!647029 m!620521))

(declare-fun m!620523 () Bool)

(assert (=> start!58664 m!620523))

(declare-fun m!620525 () Bool)

(assert (=> start!58664 m!620525))

(declare-fun m!620527 () Bool)

(assert (=> b!647053 m!620527))

(declare-fun m!620529 () Bool)

(assert (=> b!647054 m!620529))

(declare-fun m!620531 () Bool)

(assert (=> b!647054 m!620531))

(declare-fun m!620533 () Bool)

(assert (=> b!647054 m!620533))

(assert (=> b!647054 m!620515))

(declare-fun m!620535 () Bool)

(assert (=> b!647054 m!620535))

(declare-fun m!620537 () Bool)

(assert (=> b!647054 m!620537))

(assert (=> b!647054 m!620515))

(declare-fun m!620539 () Bool)

(assert (=> b!647054 m!620539))

(declare-fun m!620541 () Bool)

(assert (=> b!647054 m!620541))

(declare-fun m!620543 () Bool)

(assert (=> b!647049 m!620543))

(assert (=> b!647043 m!620515))

(assert (=> b!647043 m!620541))

(declare-fun m!620545 () Bool)

(assert (=> b!647043 m!620545))

(assert (=> b!647030 m!620515))

(declare-fun m!620547 () Bool)

(assert (=> b!647030 m!620547))

(declare-fun m!620549 () Bool)

(assert (=> b!647030 m!620549))

(declare-fun m!620551 () Bool)

(assert (=> b!647030 m!620551))

(declare-fun m!620553 () Bool)

(assert (=> b!647030 m!620553))

(assert (=> b!647030 m!620515))

(declare-fun m!620555 () Bool)

(assert (=> b!647030 m!620555))

(declare-fun m!620557 () Bool)

(assert (=> b!647030 m!620557))

(assert (=> b!647030 m!620515))

(assert (=> b!647030 m!620515))

(declare-fun m!620559 () Bool)

(assert (=> b!647030 m!620559))

(assert (=> b!647042 m!620515))

(assert (=> b!647042 m!620515))

(assert (=> b!647042 m!620517))

(assert (=> b!647046 m!620541))

(declare-fun m!620561 () Bool)

(assert (=> b!647046 m!620561))

(assert (=> b!647044 m!620515))

(declare-fun m!620563 () Bool)

(assert (=> b!647051 m!620563))

(assert (=> b!647051 m!620515))

(assert (=> b!647051 m!620515))

(declare-fun m!620565 () Bool)

(assert (=> b!647051 m!620565))

(assert (=> b!647032 m!620515))

(assert (=> b!647032 m!620515))

(declare-fun m!620567 () Bool)

(assert (=> b!647032 m!620567))

(assert (=> b!647041 m!620515))

(assert (=> b!647041 m!620515))

(declare-fun m!620569 () Bool)

(assert (=> b!647041 m!620569))

(declare-fun m!620571 () Bool)

(assert (=> b!647037 m!620571))

(declare-fun m!620573 () Bool)

(assert (=> b!647045 m!620573))

(declare-fun m!620575 () Bool)

(assert (=> b!647052 m!620575))

(declare-fun m!620577 () Bool)

(assert (=> b!647048 m!620577))

(assert (=> b!647050 m!620515))

(assert (=> b!647050 m!620515))

(declare-fun m!620579 () Bool)

(assert (=> b!647050 m!620579))

(assert (=> b!647050 m!620515))

(declare-fun m!620581 () Bool)

(assert (=> b!647050 m!620581))

(assert (=> b!647050 m!620515))

(assert (=> b!647050 m!620567))

(declare-fun m!620583 () Bool)

(assert (=> b!647033 m!620583))

(check-sat (not b!647050) (not b!647029) (not b!647048) (not b!647045) (not b!647032) (not start!58664) (not b!647034) (not b!647054) (not b!647051) (not b!647042) (not b!647049) (not b!647030) (not b!647052) (not b!647039) (not b!647037) (not b!647053) (not b!647041))
(check-sat)
(get-model)

(declare-fun d!91407 () Bool)

(declare-fun res!419425 () Bool)

(declare-fun e!371049 () Bool)

(assert (=> d!91407 (=> res!419425 e!371049)))

(assert (=> d!91407 (= res!419425 (= (select (arr!18439 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!91407 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!371049)))

(declare-fun b!647137 () Bool)

(declare-fun e!371050 () Bool)

(assert (=> b!647137 (= e!371049 e!371050)))

(declare-fun res!419426 () Bool)

(assert (=> b!647137 (=> (not res!419426) (not e!371050))))

(assert (=> b!647137 (= res!419426 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18803 a!2986)))))

(declare-fun b!647138 () Bool)

(assert (=> b!647138 (= e!371050 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91407 (not res!419425)) b!647137))

(assert (= (and b!647137 res!419426) b!647138))

(declare-fun m!620655 () Bool)

(assert (=> d!91407 m!620655))

(declare-fun m!620657 () Bool)

(assert (=> b!647138 m!620657))

(assert (=> b!647037 d!91407))

(declare-fun d!91409 () Bool)

(declare-fun res!419431 () Bool)

(declare-fun e!371055 () Bool)

(assert (=> d!91409 (=> res!419431 e!371055)))

(get-info :version)

(assert (=> d!91409 (= res!419431 ((_ is Nil!12530) Nil!12530))))

(assert (=> d!91409 (= (noDuplicate!416 Nil!12530) e!371055)))

(declare-fun b!647143 () Bool)

(declare-fun e!371056 () Bool)

(assert (=> b!647143 (= e!371055 e!371056)))

(declare-fun res!419432 () Bool)

(assert (=> b!647143 (=> (not res!419432) (not e!371056))))

(assert (=> b!647143 (= res!419432 (not (contains!3156 (t!18769 Nil!12530) (h!13574 Nil!12530))))))

(declare-fun b!647144 () Bool)

(assert (=> b!647144 (= e!371056 (noDuplicate!416 (t!18769 Nil!12530)))))

(assert (= (and d!91409 (not res!419431)) b!647143))

(assert (= (and b!647143 res!419432) b!647144))

(declare-fun m!620659 () Bool)

(assert (=> b!647143 m!620659))

(declare-fun m!620661 () Bool)

(assert (=> b!647144 m!620661))

(assert (=> b!647048 d!91409))

(declare-fun d!91411 () Bool)

(assert (=> d!91411 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!647049 d!91411))

(declare-fun d!91413 () Bool)

(declare-fun res!419433 () Bool)

(declare-fun e!371057 () Bool)

(assert (=> d!91413 (=> res!419433 e!371057)))

(assert (=> d!91413 (= res!419433 (= (select (arr!18439 lt!300305) index!984) (select (arr!18439 a!2986) j!136)))))

(assert (=> d!91413 (= (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) index!984) e!371057)))

(declare-fun b!647145 () Bool)

(declare-fun e!371058 () Bool)

(assert (=> b!647145 (= e!371057 e!371058)))

(declare-fun res!419434 () Bool)

(assert (=> b!647145 (=> (not res!419434) (not e!371058))))

(assert (=> b!647145 (= res!419434 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18803 lt!300305)))))

(declare-fun b!647146 () Bool)

(assert (=> b!647146 (= e!371058 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91413 (not res!419433)) b!647145))

(assert (= (and b!647145 res!419434) b!647146))

(declare-fun m!620663 () Bool)

(assert (=> d!91413 m!620663))

(assert (=> b!647146 m!620515))

(declare-fun m!620665 () Bool)

(assert (=> b!647146 m!620665))

(assert (=> b!647039 d!91413))

(declare-fun d!91415 () Bool)

(declare-fun res!419435 () Bool)

(declare-fun e!371059 () Bool)

(assert (=> d!91415 (=> res!419435 e!371059)))

(assert (=> d!91415 (= res!419435 (= (select (arr!18439 lt!300305) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18439 a!2986) j!136)))))

(assert (=> d!91415 (= (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!371059)))

(declare-fun b!647147 () Bool)

(declare-fun e!371060 () Bool)

(assert (=> b!647147 (= e!371059 e!371060)))

(declare-fun res!419436 () Bool)

(assert (=> b!647147 (=> (not res!419436) (not e!371060))))

(assert (=> b!647147 (= res!419436 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18803 lt!300305)))))

(declare-fun b!647148 () Bool)

(assert (=> b!647148 (= e!371060 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91415 (not res!419435)) b!647147))

(assert (= (and b!647147 res!419436) b!647148))

(declare-fun m!620667 () Bool)

(assert (=> d!91415 m!620667))

(assert (=> b!647148 m!620515))

(declare-fun m!620669 () Bool)

(assert (=> b!647148 m!620669))

(assert (=> b!647050 d!91415))

(declare-fun d!91417 () Bool)

(assert (=> d!91417 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300360 () Unit!21988)

(declare-fun choose!114 (array!38468 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21988)

(assert (=> d!91417 (= lt!300360 (choose!114 lt!300305 (select (arr!18439 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91417 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91417 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!300360)))

(declare-fun bs!19331 () Bool)

(assert (= bs!19331 d!91417))

(assert (=> bs!19331 m!620515))

(assert (=> bs!19331 m!620579))

(assert (=> bs!19331 m!620515))

(declare-fun m!620671 () Bool)

(assert (=> bs!19331 m!620671))

(assert (=> b!647050 d!91417))

(declare-fun d!91419 () Bool)

(declare-fun res!419437 () Bool)

(declare-fun e!371061 () Bool)

(assert (=> d!91419 (=> res!419437 e!371061)))

(assert (=> d!91419 (= res!419437 (= (select (arr!18439 lt!300305) j!136) (select (arr!18439 a!2986) j!136)))))

(assert (=> d!91419 (= (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136) e!371061)))

(declare-fun b!647149 () Bool)

(declare-fun e!371062 () Bool)

(assert (=> b!647149 (= e!371061 e!371062)))

(declare-fun res!419438 () Bool)

(assert (=> b!647149 (=> (not res!419438) (not e!371062))))

(assert (=> b!647149 (= res!419438 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18803 lt!300305)))))

(declare-fun b!647150 () Bool)

(assert (=> b!647150 (= e!371062 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91419 (not res!419437)) b!647149))

(assert (= (and b!647149 res!419438) b!647150))

(declare-fun m!620673 () Bool)

(assert (=> d!91419 m!620673))

(assert (=> b!647150 m!620515))

(declare-fun m!620675 () Bool)

(assert (=> b!647150 m!620675))

(assert (=> b!647050 d!91419))

(declare-fun b!647159 () Bool)

(declare-fun e!371071 () Bool)

(declare-fun e!371069 () Bool)

(assert (=> b!647159 (= e!371071 e!371069)))

(declare-fun lt!300369 () (_ BitVec 64))

(assert (=> b!647159 (= lt!300369 (select (arr!18439 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!300368 () Unit!21988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38468 (_ BitVec 64) (_ BitVec 32)) Unit!21988)

(assert (=> b!647159 (= lt!300368 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!300369 #b00000000000000000000000000000000))))

(assert (=> b!647159 (arrayContainsKey!0 a!2986 lt!300369 #b00000000000000000000000000000000)))

(declare-fun lt!300367 () Unit!21988)

(assert (=> b!647159 (= lt!300367 lt!300368)))

(declare-fun res!419443 () Bool)

(assert (=> b!647159 (= res!419443 (= (seekEntryOrOpen!0 (select (arr!18439 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6886 #b00000000000000000000000000000000)))))

(assert (=> b!647159 (=> (not res!419443) (not e!371069))))

(declare-fun b!647160 () Bool)

(declare-fun call!33680 () Bool)

(assert (=> b!647160 (= e!371069 call!33680)))

(declare-fun bm!33677 () Bool)

(assert (=> bm!33677 (= call!33680 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!647161 () Bool)

(declare-fun e!371070 () Bool)

(assert (=> b!647161 (= e!371070 e!371071)))

(declare-fun c!74225 () Bool)

(assert (=> b!647161 (= c!74225 (validKeyInArray!0 (select (arr!18439 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91421 () Bool)

(declare-fun res!419444 () Bool)

(assert (=> d!91421 (=> res!419444 e!371070)))

(assert (=> d!91421 (= res!419444 (bvsge #b00000000000000000000000000000000 (size!18803 a!2986)))))

(assert (=> d!91421 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!371070)))

(declare-fun b!647162 () Bool)

(assert (=> b!647162 (= e!371071 call!33680)))

(assert (= (and d!91421 (not res!419444)) b!647161))

(assert (= (and b!647161 c!74225) b!647159))

(assert (= (and b!647161 (not c!74225)) b!647162))

(assert (= (and b!647159 res!419443) b!647160))

(assert (= (or b!647160 b!647162) bm!33677))

(assert (=> b!647159 m!620655))

(declare-fun m!620677 () Bool)

(assert (=> b!647159 m!620677))

(declare-fun m!620679 () Bool)

(assert (=> b!647159 m!620679))

(assert (=> b!647159 m!620655))

(declare-fun m!620681 () Bool)

(assert (=> b!647159 m!620681))

(declare-fun m!620683 () Bool)

(assert (=> bm!33677 m!620683))

(assert (=> b!647161 m!620655))

(assert (=> b!647161 m!620655))

(declare-fun m!620685 () Bool)

(assert (=> b!647161 m!620685))

(assert (=> b!647045 d!91421))

(declare-fun b!647175 () Bool)

(declare-fun c!74232 () Bool)

(declare-fun lt!300377 () (_ BitVec 64))

(assert (=> b!647175 (= c!74232 (= lt!300377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371078 () SeekEntryResult!6886)

(declare-fun e!371080 () SeekEntryResult!6886)

(assert (=> b!647175 (= e!371078 e!371080)))

(declare-fun b!647176 () Bool)

(declare-fun lt!300376 () SeekEntryResult!6886)

(assert (=> b!647176 (= e!371078 (Found!6886 (index!29886 lt!300376)))))

(declare-fun b!647177 () Bool)

(assert (=> b!647177 (= e!371080 (seekKeyOrZeroReturnVacant!0 (x!58690 lt!300376) (index!29886 lt!300376) (index!29886 lt!300376) k0!1786 a!2986 mask!3053))))

(declare-fun b!647178 () Bool)

(assert (=> b!647178 (= e!371080 (MissingZero!6886 (index!29886 lt!300376)))))

(declare-fun d!91423 () Bool)

(declare-fun lt!300378 () SeekEntryResult!6886)

(assert (=> d!91423 (and (or ((_ is Undefined!6886) lt!300378) (not ((_ is Found!6886) lt!300378)) (and (bvsge (index!29885 lt!300378) #b00000000000000000000000000000000) (bvslt (index!29885 lt!300378) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300378) ((_ is Found!6886) lt!300378) (not ((_ is MissingZero!6886) lt!300378)) (and (bvsge (index!29884 lt!300378) #b00000000000000000000000000000000) (bvslt (index!29884 lt!300378) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300378) ((_ is Found!6886) lt!300378) ((_ is MissingZero!6886) lt!300378) (not ((_ is MissingVacant!6886) lt!300378)) (and (bvsge (index!29887 lt!300378) #b00000000000000000000000000000000) (bvslt (index!29887 lt!300378) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300378) (ite ((_ is Found!6886) lt!300378) (= (select (arr!18439 a!2986) (index!29885 lt!300378)) k0!1786) (ite ((_ is MissingZero!6886) lt!300378) (= (select (arr!18439 a!2986) (index!29884 lt!300378)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6886) lt!300378) (= (select (arr!18439 a!2986) (index!29887 lt!300378)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!371079 () SeekEntryResult!6886)

(assert (=> d!91423 (= lt!300378 e!371079)))

(declare-fun c!74233 () Bool)

(assert (=> d!91423 (= c!74233 (and ((_ is Intermediate!6886) lt!300376) (undefined!7698 lt!300376)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38468 (_ BitVec 32)) SeekEntryResult!6886)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91423 (= lt!300376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91423 (validMask!0 mask!3053)))

(assert (=> d!91423 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!300378)))

(declare-fun b!647179 () Bool)

(assert (=> b!647179 (= e!371079 Undefined!6886)))

(declare-fun b!647180 () Bool)

(assert (=> b!647180 (= e!371079 e!371078)))

(assert (=> b!647180 (= lt!300377 (select (arr!18439 a!2986) (index!29886 lt!300376)))))

(declare-fun c!74234 () Bool)

(assert (=> b!647180 (= c!74234 (= lt!300377 k0!1786))))

(assert (= (and d!91423 c!74233) b!647179))

(assert (= (and d!91423 (not c!74233)) b!647180))

(assert (= (and b!647180 c!74234) b!647176))

(assert (= (and b!647180 (not c!74234)) b!647175))

(assert (= (and b!647175 c!74232) b!647178))

(assert (= (and b!647175 (not c!74232)) b!647177))

(declare-fun m!620687 () Bool)

(assert (=> b!647177 m!620687))

(declare-fun m!620689 () Bool)

(assert (=> d!91423 m!620689))

(declare-fun m!620691 () Bool)

(assert (=> d!91423 m!620691))

(assert (=> d!91423 m!620523))

(assert (=> d!91423 m!620689))

(declare-fun m!620693 () Bool)

(assert (=> d!91423 m!620693))

(declare-fun m!620695 () Bool)

(assert (=> d!91423 m!620695))

(declare-fun m!620697 () Bool)

(assert (=> d!91423 m!620697))

(declare-fun m!620699 () Bool)

(assert (=> b!647180 m!620699))

(assert (=> b!647053 d!91423))

(assert (=> b!647032 d!91419))

(declare-fun b!647199 () Bool)

(declare-fun e!371095 () SeekEntryResult!6886)

(assert (=> b!647199 (= e!371095 (MissingVacant!6886 vacantSpotIndex!68))))

(declare-fun b!647200 () Bool)

(declare-fun e!371094 () SeekEntryResult!6886)

(assert (=> b!647200 (= e!371094 Undefined!6886)))

(declare-fun lt!300384 () SeekEntryResult!6886)

(declare-fun d!91425 () Bool)

(assert (=> d!91425 (and (or ((_ is Undefined!6886) lt!300384) (not ((_ is Found!6886) lt!300384)) (and (bvsge (index!29885 lt!300384) #b00000000000000000000000000000000) (bvslt (index!29885 lt!300384) (size!18803 lt!300305)))) (or ((_ is Undefined!6886) lt!300384) ((_ is Found!6886) lt!300384) (not ((_ is MissingVacant!6886) lt!300384)) (not (= (index!29887 lt!300384) vacantSpotIndex!68)) (and (bvsge (index!29887 lt!300384) #b00000000000000000000000000000000) (bvslt (index!29887 lt!300384) (size!18803 lt!300305)))) (or ((_ is Undefined!6886) lt!300384) (ite ((_ is Found!6886) lt!300384) (= (select (arr!18439 lt!300305) (index!29885 lt!300384)) lt!300304) (and ((_ is MissingVacant!6886) lt!300384) (= (index!29887 lt!300384) vacantSpotIndex!68) (= (select (arr!18439 lt!300305) (index!29887 lt!300384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91425 (= lt!300384 e!371094)))

(declare-fun c!74242 () Bool)

(assert (=> d!91425 (= c!74242 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300383 () (_ BitVec 64))

(assert (=> d!91425 (= lt!300383 (select (arr!18439 lt!300305) index!984))))

(assert (=> d!91425 (validMask!0 mask!3053)))

(assert (=> d!91425 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300304 lt!300305 mask!3053) lt!300384)))

(declare-fun b!647201 () Bool)

(declare-fun c!74243 () Bool)

(assert (=> b!647201 (= c!74243 (= lt!300383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371093 () SeekEntryResult!6886)

(assert (=> b!647201 (= e!371093 e!371095)))

(declare-fun b!647202 () Bool)

(assert (=> b!647202 (= e!371095 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300304 lt!300305 mask!3053))))

(declare-fun b!647203 () Bool)

(assert (=> b!647203 (= e!371093 (Found!6886 index!984))))

(declare-fun b!647204 () Bool)

(assert (=> b!647204 (= e!371094 e!371093)))

(declare-fun c!74241 () Bool)

(assert (=> b!647204 (= c!74241 (= lt!300383 lt!300304))))

(assert (= (and d!91425 c!74242) b!647200))

(assert (= (and d!91425 (not c!74242)) b!647204))

(assert (= (and b!647204 c!74241) b!647203))

(assert (= (and b!647204 (not c!74241)) b!647201))

(assert (= (and b!647201 c!74243) b!647199))

(assert (= (and b!647201 (not c!74243)) b!647202))

(declare-fun m!620705 () Bool)

(assert (=> d!91425 m!620705))

(declare-fun m!620707 () Bool)

(assert (=> d!91425 m!620707))

(assert (=> d!91425 m!620663))

(assert (=> d!91425 m!620523))

(assert (=> b!647202 m!620531))

(assert (=> b!647202 m!620531))

(declare-fun m!620709 () Bool)

(assert (=> b!647202 m!620709))

(assert (=> b!647054 d!91425))

(declare-fun b!647205 () Bool)

(declare-fun e!371098 () SeekEntryResult!6886)

(assert (=> b!647205 (= e!371098 (MissingVacant!6886 vacantSpotIndex!68))))

(declare-fun b!647206 () Bool)

(declare-fun e!371097 () SeekEntryResult!6886)

(assert (=> b!647206 (= e!371097 Undefined!6886)))

(declare-fun lt!300386 () SeekEntryResult!6886)

(declare-fun d!91433 () Bool)

(assert (=> d!91433 (and (or ((_ is Undefined!6886) lt!300386) (not ((_ is Found!6886) lt!300386)) (and (bvsge (index!29885 lt!300386) #b00000000000000000000000000000000) (bvslt (index!29885 lt!300386) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300386) ((_ is Found!6886) lt!300386) (not ((_ is MissingVacant!6886) lt!300386)) (not (= (index!29887 lt!300386) vacantSpotIndex!68)) (and (bvsge (index!29887 lt!300386) #b00000000000000000000000000000000) (bvslt (index!29887 lt!300386) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300386) (ite ((_ is Found!6886) lt!300386) (= (select (arr!18439 a!2986) (index!29885 lt!300386)) (select (arr!18439 a!2986) j!136)) (and ((_ is MissingVacant!6886) lt!300386) (= (index!29887 lt!300386) vacantSpotIndex!68) (= (select (arr!18439 a!2986) (index!29887 lt!300386)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91433 (= lt!300386 e!371097)))

(declare-fun c!74245 () Bool)

(assert (=> d!91433 (= c!74245 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300385 () (_ BitVec 64))

(assert (=> d!91433 (= lt!300385 (select (arr!18439 a!2986) lt!300308))))

(assert (=> d!91433 (validMask!0 mask!3053)))

(assert (=> d!91433 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053) lt!300386)))

(declare-fun b!647207 () Bool)

(declare-fun c!74246 () Bool)

(assert (=> b!647207 (= c!74246 (= lt!300385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371096 () SeekEntryResult!6886)

(assert (=> b!647207 (= e!371096 e!371098)))

(declare-fun b!647208 () Bool)

(assert (=> b!647208 (= e!371098 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300308 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647209 () Bool)

(assert (=> b!647209 (= e!371096 (Found!6886 lt!300308))))

(declare-fun b!647210 () Bool)

(assert (=> b!647210 (= e!371097 e!371096)))

(declare-fun c!74244 () Bool)

(assert (=> b!647210 (= c!74244 (= lt!300385 (select (arr!18439 a!2986) j!136)))))

(assert (= (and d!91433 c!74245) b!647206))

(assert (= (and d!91433 (not c!74245)) b!647210))

(assert (= (and b!647210 c!74244) b!647209))

(assert (= (and b!647210 (not c!74244)) b!647207))

(assert (= (and b!647207 c!74246) b!647205))

(assert (= (and b!647207 (not c!74246)) b!647208))

(declare-fun m!620711 () Bool)

(assert (=> d!91433 m!620711))

(declare-fun m!620713 () Bool)

(assert (=> d!91433 m!620713))

(declare-fun m!620715 () Bool)

(assert (=> d!91433 m!620715))

(assert (=> d!91433 m!620523))

(declare-fun m!620717 () Bool)

(assert (=> b!647208 m!620717))

(assert (=> b!647208 m!620717))

(assert (=> b!647208 m!620515))

(declare-fun m!620719 () Bool)

(assert (=> b!647208 m!620719))

(assert (=> b!647054 d!91433))

(declare-fun d!91435 () Bool)

(declare-fun lt!300392 () (_ BitVec 32))

(assert (=> d!91435 (and (bvsge lt!300392 #b00000000000000000000000000000000) (bvslt lt!300392 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91435 (= lt!300392 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91435 (validMask!0 mask!3053)))

(assert (=> d!91435 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300392)))

(declare-fun bs!19332 () Bool)

(assert (= bs!19332 d!91435))

(declare-fun m!620727 () Bool)

(assert (=> bs!19332 m!620727))

(assert (=> bs!19332 m!620523))

(assert (=> b!647054 d!91435))

(declare-fun d!91439 () Bool)

(declare-fun e!371119 () Bool)

(assert (=> d!91439 e!371119))

(declare-fun res!419459 () Bool)

(assert (=> d!91439 (=> (not res!419459) (not e!371119))))

(assert (=> d!91439 (= res!419459 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18803 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18803 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18803 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18803 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18803 a!2986))))))

(declare-fun lt!300403 () Unit!21988)

(declare-fun choose!9 (array!38468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21988)

(assert (=> d!91439 (= lt!300403 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91439 (validMask!0 mask!3053)))

(assert (=> d!91439 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 mask!3053) lt!300403)))

(declare-fun b!647243 () Bool)

(assert (=> b!647243 (= e!371119 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 (select (store (arr!18439 a!2986) i!1108 k0!1786) j!136) (array!38469 (store (arr!18439 a!2986) i!1108 k0!1786) (size!18803 a!2986)) mask!3053)))))

(assert (= (and d!91439 res!419459) b!647243))

(declare-fun m!620747 () Bool)

(assert (=> d!91439 m!620747))

(assert (=> d!91439 m!620523))

(assert (=> b!647243 m!620515))

(assert (=> b!647243 m!620515))

(assert (=> b!647243 m!620539))

(assert (=> b!647243 m!620533))

(assert (=> b!647243 m!620533))

(declare-fun m!620749 () Bool)

(assert (=> b!647243 m!620749))

(assert (=> b!647243 m!620541))

(assert (=> b!647054 d!91439))

(declare-fun b!647244 () Bool)

(declare-fun e!371122 () SeekEntryResult!6886)

(assert (=> b!647244 (= e!371122 (MissingVacant!6886 vacantSpotIndex!68))))

(declare-fun b!647245 () Bool)

(declare-fun e!371121 () SeekEntryResult!6886)

(assert (=> b!647245 (= e!371121 Undefined!6886)))

(declare-fun d!91447 () Bool)

(declare-fun lt!300405 () SeekEntryResult!6886)

(assert (=> d!91447 (and (or ((_ is Undefined!6886) lt!300405) (not ((_ is Found!6886) lt!300405)) (and (bvsge (index!29885 lt!300405) #b00000000000000000000000000000000) (bvslt (index!29885 lt!300405) (size!18803 lt!300305)))) (or ((_ is Undefined!6886) lt!300405) ((_ is Found!6886) lt!300405) (not ((_ is MissingVacant!6886) lt!300405)) (not (= (index!29887 lt!300405) vacantSpotIndex!68)) (and (bvsge (index!29887 lt!300405) #b00000000000000000000000000000000) (bvslt (index!29887 lt!300405) (size!18803 lt!300305)))) (or ((_ is Undefined!6886) lt!300405) (ite ((_ is Found!6886) lt!300405) (= (select (arr!18439 lt!300305) (index!29885 lt!300405)) lt!300304) (and ((_ is MissingVacant!6886) lt!300405) (= (index!29887 lt!300405) vacantSpotIndex!68) (= (select (arr!18439 lt!300305) (index!29887 lt!300405)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91447 (= lt!300405 e!371121)))

(declare-fun c!74260 () Bool)

(assert (=> d!91447 (= c!74260 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300404 () (_ BitVec 64))

(assert (=> d!91447 (= lt!300404 (select (arr!18439 lt!300305) lt!300308))))

(assert (=> d!91447 (validMask!0 mask!3053)))

(assert (=> d!91447 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300308 vacantSpotIndex!68 lt!300304 lt!300305 mask!3053) lt!300405)))

(declare-fun b!647246 () Bool)

(declare-fun c!74261 () Bool)

(assert (=> b!647246 (= c!74261 (= lt!300404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371120 () SeekEntryResult!6886)

(assert (=> b!647246 (= e!371120 e!371122)))

(declare-fun b!647247 () Bool)

(assert (=> b!647247 (= e!371122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300308 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300304 lt!300305 mask!3053))))

(declare-fun b!647248 () Bool)

(assert (=> b!647248 (= e!371120 (Found!6886 lt!300308))))

(declare-fun b!647249 () Bool)

(assert (=> b!647249 (= e!371121 e!371120)))

(declare-fun c!74259 () Bool)

(assert (=> b!647249 (= c!74259 (= lt!300404 lt!300304))))

(assert (= (and d!91447 c!74260) b!647245))

(assert (= (and d!91447 (not c!74260)) b!647249))

(assert (= (and b!647249 c!74259) b!647248))

(assert (= (and b!647249 (not c!74259)) b!647246))

(assert (= (and b!647246 c!74261) b!647244))

(assert (= (and b!647246 (not c!74261)) b!647247))

(declare-fun m!620751 () Bool)

(assert (=> d!91447 m!620751))

(declare-fun m!620753 () Bool)

(assert (=> d!91447 m!620753))

(declare-fun m!620755 () Bool)

(assert (=> d!91447 m!620755))

(assert (=> d!91447 m!620523))

(assert (=> b!647247 m!620717))

(assert (=> b!647247 m!620717))

(declare-fun m!620757 () Bool)

(assert (=> b!647247 m!620757))

(assert (=> b!647054 d!91447))

(declare-fun b!647278 () Bool)

(declare-fun e!371141 () Bool)

(assert (=> b!647278 (= e!371141 (contains!3156 Nil!12530 (select (arr!18439 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647280 () Bool)

(declare-fun e!371142 () Bool)

(declare-fun call!33683 () Bool)

(assert (=> b!647280 (= e!371142 call!33683)))

(declare-fun bm!33680 () Bool)

(declare-fun c!74273 () Bool)

(assert (=> bm!33680 (= call!33683 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74273 (Cons!12529 (select (arr!18439 a!2986) #b00000000000000000000000000000000) Nil!12530) Nil!12530)))))

(declare-fun b!647279 () Bool)

(assert (=> b!647279 (= e!371142 call!33683)))

(declare-fun d!91449 () Bool)

(declare-fun res!419466 () Bool)

(declare-fun e!371143 () Bool)

(assert (=> d!91449 (=> res!419466 e!371143)))

(assert (=> d!91449 (= res!419466 (bvsge #b00000000000000000000000000000000 (size!18803 a!2986)))))

(assert (=> d!91449 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12530) e!371143)))

(declare-fun b!647281 () Bool)

(declare-fun e!371140 () Bool)

(assert (=> b!647281 (= e!371140 e!371142)))

(assert (=> b!647281 (= c!74273 (validKeyInArray!0 (select (arr!18439 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647282 () Bool)

(assert (=> b!647282 (= e!371143 e!371140)))

(declare-fun res!419467 () Bool)

(assert (=> b!647282 (=> (not res!419467) (not e!371140))))

(assert (=> b!647282 (= res!419467 (not e!371141))))

(declare-fun res!419468 () Bool)

(assert (=> b!647282 (=> (not res!419468) (not e!371141))))

(assert (=> b!647282 (= res!419468 (validKeyInArray!0 (select (arr!18439 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91449 (not res!419466)) b!647282))

(assert (= (and b!647282 res!419468) b!647278))

(assert (= (and b!647282 res!419467) b!647281))

(assert (= (and b!647281 c!74273) b!647279))

(assert (= (and b!647281 (not c!74273)) b!647280))

(assert (= (or b!647279 b!647280) bm!33680))

(assert (=> b!647278 m!620655))

(assert (=> b!647278 m!620655))

(declare-fun m!620773 () Bool)

(assert (=> b!647278 m!620773))

(assert (=> bm!33680 m!620655))

(declare-fun m!620775 () Bool)

(assert (=> bm!33680 m!620775))

(assert (=> b!647281 m!620655))

(assert (=> b!647281 m!620655))

(assert (=> b!647281 m!620685))

(assert (=> b!647282 m!620655))

(assert (=> b!647282 m!620655))

(assert (=> b!647282 m!620685))

(assert (=> b!647034 d!91449))

(declare-fun d!91453 () Bool)

(declare-fun lt!300420 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!250 (List!12533) (InoxSet (_ BitVec 64)))

(assert (=> d!91453 (= lt!300420 (select (content!250 Nil!12530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371152 () Bool)

(assert (=> d!91453 (= lt!300420 e!371152)))

(declare-fun res!419477 () Bool)

(assert (=> d!91453 (=> (not res!419477) (not e!371152))))

(assert (=> d!91453 (= res!419477 ((_ is Cons!12529) Nil!12530))))

(assert (=> d!91453 (= (contains!3156 Nil!12530 #b1000000000000000000000000000000000000000000000000000000000000000) lt!300420)))

(declare-fun b!647290 () Bool)

(declare-fun e!371151 () Bool)

(assert (=> b!647290 (= e!371152 e!371151)))

(declare-fun res!419476 () Bool)

(assert (=> b!647290 (=> res!419476 e!371151)))

(assert (=> b!647290 (= res!419476 (= (h!13574 Nil!12530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647291 () Bool)

(assert (=> b!647291 (= e!371151 (contains!3156 (t!18769 Nil!12530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!91453 res!419477) b!647290))

(assert (= (and b!647290 (not res!419476)) b!647291))

(declare-fun m!620779 () Bool)

(assert (=> d!91453 m!620779))

(declare-fun m!620781 () Bool)

(assert (=> d!91453 m!620781))

(declare-fun m!620783 () Bool)

(assert (=> b!647291 m!620783))

(assert (=> b!647029 d!91453))

(declare-fun d!91455 () Bool)

(assert (=> d!91455 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58664 d!91455))

(declare-fun d!91469 () Bool)

(assert (=> d!91469 (= (array_inv!14213 a!2986) (bvsge (size!18803 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58664 d!91469))

(declare-fun b!647318 () Bool)

(declare-fun e!371172 () SeekEntryResult!6886)

(assert (=> b!647318 (= e!371172 (MissingVacant!6886 vacantSpotIndex!68))))

(declare-fun b!647319 () Bool)

(declare-fun e!371171 () SeekEntryResult!6886)

(assert (=> b!647319 (= e!371171 Undefined!6886)))

(declare-fun d!91471 () Bool)

(declare-fun lt!300434 () SeekEntryResult!6886)

(assert (=> d!91471 (and (or ((_ is Undefined!6886) lt!300434) (not ((_ is Found!6886) lt!300434)) (and (bvsge (index!29885 lt!300434) #b00000000000000000000000000000000) (bvslt (index!29885 lt!300434) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300434) ((_ is Found!6886) lt!300434) (not ((_ is MissingVacant!6886) lt!300434)) (not (= (index!29887 lt!300434) vacantSpotIndex!68)) (and (bvsge (index!29887 lt!300434) #b00000000000000000000000000000000) (bvslt (index!29887 lt!300434) (size!18803 a!2986)))) (or ((_ is Undefined!6886) lt!300434) (ite ((_ is Found!6886) lt!300434) (= (select (arr!18439 a!2986) (index!29885 lt!300434)) (select (arr!18439 a!2986) j!136)) (and ((_ is MissingVacant!6886) lt!300434) (= (index!29887 lt!300434) vacantSpotIndex!68) (= (select (arr!18439 a!2986) (index!29887 lt!300434)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91471 (= lt!300434 e!371171)))

(declare-fun c!74284 () Bool)

(assert (=> d!91471 (= c!74284 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300433 () (_ BitVec 64))

(assert (=> d!91471 (= lt!300433 (select (arr!18439 a!2986) index!984))))

(assert (=> d!91471 (validMask!0 mask!3053)))

(assert (=> d!91471 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053) lt!300434)))

(declare-fun b!647320 () Bool)

(declare-fun c!74285 () Bool)

(assert (=> b!647320 (= c!74285 (= lt!300433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371170 () SeekEntryResult!6886)

(assert (=> b!647320 (= e!371170 e!371172)))

(declare-fun b!647321 () Bool)

(assert (=> b!647321 (= e!371172 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18439 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647322 () Bool)

(assert (=> b!647322 (= e!371170 (Found!6886 index!984))))

(declare-fun b!647323 () Bool)

(assert (=> b!647323 (= e!371171 e!371170)))

(declare-fun c!74283 () Bool)

(assert (=> b!647323 (= c!74283 (= lt!300433 (select (arr!18439 a!2986) j!136)))))

(assert (= (and d!91471 c!74284) b!647319))

(assert (= (and d!91471 (not c!74284)) b!647323))

(assert (= (and b!647323 c!74283) b!647322))

(assert (= (and b!647323 (not c!74283)) b!647320))

(assert (= (and b!647320 c!74285) b!647318))

(assert (= (and b!647320 (not c!74285)) b!647321))

(declare-fun m!620807 () Bool)

(assert (=> d!91471 m!620807))

(declare-fun m!620809 () Bool)

(assert (=> d!91471 m!620809))

(assert (=> d!91471 m!620563))

(assert (=> d!91471 m!620523))

(assert (=> b!647321 m!620531))

(assert (=> b!647321 m!620531))

(assert (=> b!647321 m!620515))

(declare-fun m!620811 () Bool)

(assert (=> b!647321 m!620811))

(assert (=> b!647051 d!91471))

(declare-fun d!91473 () Bool)

(declare-fun res!419486 () Bool)

(declare-fun e!371176 () Bool)

(assert (=> d!91473 (=> res!419486 e!371176)))

(assert (=> d!91473 (= res!419486 (= (select (arr!18439 lt!300305) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18439 a!2986) j!136)))))

(assert (=> d!91473 (= (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!371176)))

(declare-fun b!647330 () Bool)

(declare-fun e!371177 () Bool)

(assert (=> b!647330 (= e!371176 e!371177)))

(declare-fun res!419487 () Bool)

(assert (=> b!647330 (=> (not res!419487) (not e!371177))))

(assert (=> b!647330 (= res!419487 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18803 lt!300305)))))

(declare-fun b!647331 () Bool)

(assert (=> b!647331 (= e!371177 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91473 (not res!419486)) b!647330))

(assert (= (and b!647330 res!419487) b!647331))

(declare-fun m!620813 () Bool)

(assert (=> d!91473 m!620813))

(assert (=> b!647331 m!620515))

(declare-fun m!620817 () Bool)

(assert (=> b!647331 m!620817))

(assert (=> b!647030 d!91473))

(declare-fun b!647332 () Bool)

(declare-fun e!371179 () Bool)

(assert (=> b!647332 (= e!371179 (contains!3156 Nil!12530 (select (arr!18439 lt!300305) j!136)))))

(declare-fun b!647334 () Bool)

(declare-fun e!371180 () Bool)

(declare-fun call!33684 () Bool)

(assert (=> b!647334 (= e!371180 call!33684)))

(declare-fun c!74289 () Bool)

(declare-fun bm!33681 () Bool)

(assert (=> bm!33681 (= call!33684 (arrayNoDuplicates!0 lt!300305 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74289 (Cons!12529 (select (arr!18439 lt!300305) j!136) Nil!12530) Nil!12530)))))

(declare-fun b!647333 () Bool)

(assert (=> b!647333 (= e!371180 call!33684)))

(declare-fun d!91475 () Bool)

(declare-fun res!419488 () Bool)

(declare-fun e!371181 () Bool)

(assert (=> d!91475 (=> res!419488 e!371181)))

(assert (=> d!91475 (= res!419488 (bvsge j!136 (size!18803 lt!300305)))))

(assert (=> d!91475 (= (arrayNoDuplicates!0 lt!300305 j!136 Nil!12530) e!371181)))

(declare-fun b!647335 () Bool)

(declare-fun e!371178 () Bool)

(assert (=> b!647335 (= e!371178 e!371180)))

(assert (=> b!647335 (= c!74289 (validKeyInArray!0 (select (arr!18439 lt!300305) j!136)))))

(declare-fun b!647336 () Bool)

(assert (=> b!647336 (= e!371181 e!371178)))

(declare-fun res!419489 () Bool)

(assert (=> b!647336 (=> (not res!419489) (not e!371178))))

(assert (=> b!647336 (= res!419489 (not e!371179))))

(declare-fun res!419490 () Bool)

(assert (=> b!647336 (=> (not res!419490) (not e!371179))))

(assert (=> b!647336 (= res!419490 (validKeyInArray!0 (select (arr!18439 lt!300305) j!136)))))

(assert (= (and d!91475 (not res!419488)) b!647336))

(assert (= (and b!647336 res!419490) b!647332))

(assert (= (and b!647336 res!419489) b!647335))

(assert (= (and b!647335 c!74289) b!647333))

(assert (= (and b!647335 (not c!74289)) b!647334))

(assert (= (or b!647333 b!647334) bm!33681))

(assert (=> b!647332 m!620673))

(assert (=> b!647332 m!620673))

(declare-fun m!620827 () Bool)

(assert (=> b!647332 m!620827))

(assert (=> bm!33681 m!620673))

(declare-fun m!620829 () Bool)

(assert (=> bm!33681 m!620829))

(assert (=> b!647335 m!620673))

(assert (=> b!647335 m!620673))

(declare-fun m!620833 () Bool)

(assert (=> b!647335 m!620833))

(assert (=> b!647336 m!620673))

(assert (=> b!647336 m!620673))

(assert (=> b!647336 m!620833))

(assert (=> b!647030 d!91475))

(declare-fun b!647343 () Bool)

(declare-fun e!371186 () Bool)

(assert (=> b!647343 (= e!371186 (contains!3156 Nil!12530 (select (arr!18439 lt!300305) #b00000000000000000000000000000000)))))

(declare-fun b!647345 () Bool)

(declare-fun e!371187 () Bool)

(declare-fun call!33685 () Bool)

(assert (=> b!647345 (= e!371187 call!33685)))

(declare-fun bm!33682 () Bool)

(declare-fun c!74293 () Bool)

(assert (=> bm!33682 (= call!33685 (arrayNoDuplicates!0 lt!300305 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74293 (Cons!12529 (select (arr!18439 lt!300305) #b00000000000000000000000000000000) Nil!12530) Nil!12530)))))

(declare-fun b!647344 () Bool)

(assert (=> b!647344 (= e!371187 call!33685)))

(declare-fun d!91479 () Bool)

(declare-fun res!419491 () Bool)

(declare-fun e!371188 () Bool)

(assert (=> d!91479 (=> res!419491 e!371188)))

(assert (=> d!91479 (= res!419491 (bvsge #b00000000000000000000000000000000 (size!18803 lt!300305)))))

(assert (=> d!91479 (= (arrayNoDuplicates!0 lt!300305 #b00000000000000000000000000000000 Nil!12530) e!371188)))

(declare-fun b!647346 () Bool)

(declare-fun e!371185 () Bool)

(assert (=> b!647346 (= e!371185 e!371187)))

(assert (=> b!647346 (= c!74293 (validKeyInArray!0 (select (arr!18439 lt!300305) #b00000000000000000000000000000000)))))

(declare-fun b!647347 () Bool)

(assert (=> b!647347 (= e!371188 e!371185)))

(declare-fun res!419492 () Bool)

(assert (=> b!647347 (=> (not res!419492) (not e!371185))))

(assert (=> b!647347 (= res!419492 (not e!371186))))

(declare-fun res!419493 () Bool)

(assert (=> b!647347 (=> (not res!419493) (not e!371186))))

(assert (=> b!647347 (= res!419493 (validKeyInArray!0 (select (arr!18439 lt!300305) #b00000000000000000000000000000000)))))

(assert (= (and d!91479 (not res!419491)) b!647347))

(assert (= (and b!647347 res!419493) b!647343))

(assert (= (and b!647347 res!419492) b!647346))

(assert (= (and b!647346 c!74293) b!647344))

(assert (= (and b!647346 (not c!74293)) b!647345))

(assert (= (or b!647344 b!647345) bm!33682))

(declare-fun m!620841 () Bool)

(assert (=> b!647343 m!620841))

(assert (=> b!647343 m!620841))

(declare-fun m!620843 () Bool)

(assert (=> b!647343 m!620843))

(assert (=> bm!33682 m!620841))

(declare-fun m!620845 () Bool)

(assert (=> bm!33682 m!620845))

(assert (=> b!647346 m!620841))

(assert (=> b!647346 m!620841))

(declare-fun m!620847 () Bool)

(assert (=> b!647346 m!620847))

(assert (=> b!647347 m!620841))

(assert (=> b!647347 m!620841))

(assert (=> b!647347 m!620847))

(assert (=> b!647030 d!91479))

(declare-fun d!91483 () Bool)

(assert (=> d!91483 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18803 lt!300305)) (not (= (select (arr!18439 lt!300305) j!136) (select (arr!18439 a!2986) j!136))))))

(declare-fun lt!300447 () Unit!21988)

(declare-fun choose!21 (array!38468 (_ BitVec 64) (_ BitVec 32) List!12533) Unit!21988)

(assert (=> d!91483 (= lt!300447 (choose!21 lt!300305 (select (arr!18439 a!2986) j!136) j!136 Nil!12530))))

(assert (=> d!91483 (bvslt (size!18803 lt!300305) #b01111111111111111111111111111111)))

(assert (=> d!91483 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300305 (select (arr!18439 a!2986) j!136) j!136 Nil!12530) lt!300447)))

(declare-fun bs!19335 () Bool)

(assert (= bs!19335 d!91483))

(assert (=> bs!19335 m!620673))

(assert (=> bs!19335 m!620515))

(declare-fun m!620849 () Bool)

(assert (=> bs!19335 m!620849))

(assert (=> b!647030 d!91483))

(declare-fun d!91485 () Bool)

(declare-fun e!371200 () Bool)

(assert (=> d!91485 e!371200))

(declare-fun res!419502 () Bool)

(assert (=> d!91485 (=> (not res!419502) (not e!371200))))

(assert (=> d!91485 (= res!419502 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18803 a!2986))))))

(declare-fun lt!300453 () Unit!21988)

(declare-fun choose!41 (array!38468 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12533) Unit!21988)

(assert (=> d!91485 (= lt!300453 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12530))))

(assert (=> d!91485 (bvslt (size!18803 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91485 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12530) lt!300453)))

(declare-fun b!647362 () Bool)

(assert (=> b!647362 (= e!371200 (arrayNoDuplicates!0 (array!38469 (store (arr!18439 a!2986) i!1108 k0!1786) (size!18803 a!2986)) #b00000000000000000000000000000000 Nil!12530))))

(assert (= (and d!91485 res!419502) b!647362))

(declare-fun m!620863 () Bool)

(assert (=> d!91485 m!620863))

(assert (=> b!647362 m!620541))

(declare-fun m!620865 () Bool)

(assert (=> b!647362 m!620865))

(assert (=> b!647030 d!91485))

(declare-fun d!91489 () Bool)

(assert (=> d!91489 (arrayNoDuplicates!0 lt!300305 j!136 Nil!12530)))

(declare-fun lt!300458 () Unit!21988)

(declare-fun choose!39 (array!38468 (_ BitVec 32) (_ BitVec 32)) Unit!21988)

(assert (=> d!91489 (= lt!300458 (choose!39 lt!300305 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91489 (bvslt (size!18803 lt!300305) #b01111111111111111111111111111111)))

(assert (=> d!91489 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300305 #b00000000000000000000000000000000 j!136) lt!300458)))

(declare-fun bs!19336 () Bool)

(assert (= bs!19336 d!91489))

(assert (=> bs!19336 m!620551))

(declare-fun m!620867 () Bool)

(assert (=> bs!19336 m!620867))

(assert (=> b!647030 d!91489))

(declare-fun d!91491 () Bool)

(assert (=> d!91491 (arrayContainsKey!0 lt!300305 (select (arr!18439 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300459 () Unit!21988)

(assert (=> d!91491 (= lt!300459 (choose!114 lt!300305 (select (arr!18439 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91491 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91491 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300305 (select (arr!18439 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300459)))

(declare-fun bs!19337 () Bool)

(assert (= bs!19337 d!91491))

(assert (=> bs!19337 m!620515))

(assert (=> bs!19337 m!620559))

(assert (=> bs!19337 m!620515))

(declare-fun m!620869 () Bool)

(assert (=> bs!19337 m!620869))

(assert (=> b!647030 d!91491))

(declare-fun d!91493 () Bool)

(assert (=> d!91493 (= (validKeyInArray!0 (select (arr!18439 a!2986) j!136)) (and (not (= (select (arr!18439 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18439 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!647041 d!91493))

(declare-fun d!91495 () Bool)

(declare-fun lt!300460 () Bool)

(assert (=> d!91495 (= lt!300460 (select (content!250 Nil!12530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371204 () Bool)

(assert (=> d!91495 (= lt!300460 e!371204)))

(declare-fun res!419506 () Bool)

(assert (=> d!91495 (=> (not res!419506) (not e!371204))))

(assert (=> d!91495 (= res!419506 ((_ is Cons!12529) Nil!12530))))

(assert (=> d!91495 (= (contains!3156 Nil!12530 #b0000000000000000000000000000000000000000000000000000000000000000) lt!300460)))

(declare-fun b!647365 () Bool)

(declare-fun e!371203 () Bool)

(assert (=> b!647365 (= e!371204 e!371203)))

(declare-fun res!419505 () Bool)

(assert (=> b!647365 (=> res!419505 e!371203)))

(assert (=> b!647365 (= res!419505 (= (h!13574 Nil!12530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647366 () Bool)

(assert (=> b!647366 (= e!371203 (contains!3156 (t!18769 Nil!12530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!91495 res!419506) b!647365))

(assert (= (and b!647365 (not res!419505)) b!647366))

(assert (=> d!91495 m!620779))

(declare-fun m!620871 () Bool)

(assert (=> d!91495 m!620871))

(declare-fun m!620873 () Bool)

(assert (=> b!647366 m!620873))

(assert (=> b!647052 d!91495))

(assert (=> b!647042 d!91413))

(check-sat (not b!647282) (not bm!33680) (not b!647281) (not b!647138) (not b!647208) (not b!647291) (not bm!33677) (not b!647146) (not b!647362) (not d!91485) (not d!91425) (not b!647148) (not b!647202) (not d!91439) (not b!647347) (not b!647144) (not d!91423) (not b!647343) (not b!647335) (not b!647159) (not b!647243) (not bm!33681) (not b!647177) (not b!647247) (not b!647150) (not b!647366) (not b!647346) (not d!91491) (not b!647331) (not b!647332) (not d!91453) (not d!91495) (not bm!33682) (not d!91435) (not b!647278) (not d!91433) (not d!91471) (not d!91447) (not d!91483) (not b!647336) (not d!91417) (not d!91489) (not b!647161) (not b!647143) (not b!647321))
(check-sat)
