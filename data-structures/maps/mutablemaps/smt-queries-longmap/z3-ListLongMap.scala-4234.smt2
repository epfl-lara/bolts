; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58358 () Bool)

(assert start!58358)

(declare-fun b!644338 () Bool)

(declare-fun e!369194 () Bool)

(declare-fun e!369190 () Bool)

(assert (=> b!644338 (= e!369194 e!369190)))

(declare-fun res!417571 () Bool)

(assert (=> b!644338 (=> (not res!417571) (not e!369190))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6862 0))(
  ( (MissingZero!6862 (index!29779 (_ BitVec 32))) (Found!6862 (index!29780 (_ BitVec 32))) (Intermediate!6862 (undefined!7674 Bool) (index!29781 (_ BitVec 32)) (x!58575 (_ BitVec 32))) (Undefined!6862) (MissingVacant!6862 (index!29782 (_ BitVec 32))) )
))
(declare-fun lt!298717 () SeekEntryResult!6862)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38411 0))(
  ( (array!38412 (arr!18415 (Array (_ BitVec 32) (_ BitVec 64))) (size!18779 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38411)

(assert (=> b!644338 (= res!417571 (and (= lt!298717 (Found!6862 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18415 a!2986) index!984) (select (arr!18415 a!2986) j!136))) (not (= (select (arr!18415 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38411 (_ BitVec 32)) SeekEntryResult!6862)

(assert (=> b!644338 (= lt!298717 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!417578 () Bool)

(declare-fun e!369196 () Bool)

(assert (=> start!58358 (=> (not res!417578) (not e!369196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58358 (= res!417578 (validMask!0 mask!3053))))

(assert (=> start!58358 e!369196))

(assert (=> start!58358 true))

(declare-fun array_inv!14189 (array!38411) Bool)

(assert (=> start!58358 (array_inv!14189 a!2986)))

(declare-fun b!644339 () Bool)

(declare-fun e!369189 () Bool)

(declare-fun lt!298720 () SeekEntryResult!6862)

(assert (=> b!644339 (= e!369189 (= lt!298717 lt!298720))))

(declare-fun b!644340 () Bool)

(declare-fun res!417570 () Bool)

(assert (=> b!644340 (=> (not res!417570) (not e!369196))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644340 (= res!417570 (validKeyInArray!0 k0!1786))))

(declare-fun b!644341 () Bool)

(declare-fun res!417569 () Bool)

(declare-fun e!369188 () Bool)

(assert (=> b!644341 (=> (not res!417569) (not e!369188))))

(assert (=> b!644341 (= res!417569 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18415 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644342 () Bool)

(declare-fun res!417575 () Bool)

(assert (=> b!644342 (=> (not res!417575) (not e!369188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38411 (_ BitVec 32)) Bool)

(assert (=> b!644342 (= res!417575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644343 () Bool)

(declare-fun e!369195 () Bool)

(declare-fun e!369191 () Bool)

(assert (=> b!644343 (= e!369195 e!369191)))

(declare-fun res!417574 () Bool)

(assert (=> b!644343 (=> res!417574 e!369191)))

(declare-fun lt!298729 () (_ BitVec 64))

(declare-fun lt!298725 () (_ BitVec 64))

(assert (=> b!644343 (= res!417574 (or (not (= (select (arr!18415 a!2986) j!136) lt!298729)) (not (= (select (arr!18415 a!2986) j!136) lt!298725))))))

(declare-fun e!369186 () Bool)

(assert (=> b!644343 e!369186))

(declare-fun res!417577 () Bool)

(assert (=> b!644343 (=> (not res!417577) (not e!369186))))

(assert (=> b!644343 (= res!417577 (= lt!298725 (select (arr!18415 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!644343 (= lt!298725 (select (store (arr!18415 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!644344 () Bool)

(declare-datatypes ((Unit!21844 0))(
  ( (Unit!21845) )
))
(declare-fun e!369192 () Unit!21844)

(declare-fun Unit!21846 () Unit!21844)

(assert (=> b!644344 (= e!369192 Unit!21846)))

(assert (=> b!644344 false))

(declare-fun b!644345 () Bool)

(declare-fun e!369193 () Bool)

(declare-fun lt!298722 () array!38411)

(declare-fun arrayContainsKey!0 (array!38411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644345 (= e!369193 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) index!984))))

(declare-fun b!644346 () Bool)

(declare-fun res!417560 () Bool)

(assert (=> b!644346 (=> (not res!417560) (not e!369196))))

(assert (=> b!644346 (= res!417560 (validKeyInArray!0 (select (arr!18415 a!2986) j!136)))))

(declare-fun b!644347 () Bool)

(assert (=> b!644347 (= e!369190 (not e!369195))))

(declare-fun res!417572 () Bool)

(assert (=> b!644347 (=> res!417572 e!369195)))

(declare-fun lt!298724 () SeekEntryResult!6862)

(assert (=> b!644347 (= res!417572 (not (= lt!298724 (Found!6862 index!984))))))

(declare-fun lt!298731 () Unit!21844)

(assert (=> b!644347 (= lt!298731 e!369192)))

(declare-fun c!73757 () Bool)

(assert (=> b!644347 (= c!73757 (= lt!298724 Undefined!6862))))

(assert (=> b!644347 (= lt!298724 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298729 lt!298722 mask!3053))))

(assert (=> b!644347 e!369189))

(declare-fun res!417568 () Bool)

(assert (=> b!644347 (=> (not res!417568) (not e!369189))))

(declare-fun lt!298730 () (_ BitVec 32))

(assert (=> b!644347 (= res!417568 (= lt!298720 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 lt!298729 lt!298722 mask!3053)))))

(assert (=> b!644347 (= lt!298720 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!644347 (= lt!298729 (select (store (arr!18415 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!298723 () Unit!21844)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21844)

(assert (=> b!644347 (= lt!298723 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644347 (= lt!298730 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644348 () Bool)

(declare-fun e!369183 () Bool)

(assert (=> b!644348 (= e!369183 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvslt (size!18779 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!644348 e!369193))

(declare-fun res!417562 () Bool)

(assert (=> b!644348 (=> (not res!417562) (not e!369193))))

(assert (=> b!644348 (= res!417562 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) j!136))))

(declare-fun b!644349 () Bool)

(assert (=> b!644349 (= e!369188 e!369194)))

(declare-fun res!417576 () Bool)

(assert (=> b!644349 (=> (not res!417576) (not e!369194))))

(assert (=> b!644349 (= res!417576 (= (select (store (arr!18415 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644349 (= lt!298722 (array!38412 (store (arr!18415 a!2986) i!1108 k0!1786) (size!18779 a!2986)))))

(declare-fun b!644350 () Bool)

(declare-fun Unit!21847 () Unit!21844)

(assert (=> b!644350 (= e!369192 Unit!21847)))

(declare-fun b!644351 () Bool)

(assert (=> b!644351 (= e!369191 e!369183)))

(declare-fun res!417565 () Bool)

(assert (=> b!644351 (=> res!417565 e!369183)))

(assert (=> b!644351 (= res!417565 (bvsge index!984 j!136))))

(declare-fun lt!298727 () Unit!21844)

(declare-fun e!369184 () Unit!21844)

(assert (=> b!644351 (= lt!298727 e!369184)))

(declare-fun c!73756 () Bool)

(assert (=> b!644351 (= c!73756 (bvslt j!136 index!984))))

(declare-fun b!644352 () Bool)

(declare-fun e!369187 () Bool)

(assert (=> b!644352 (= e!369187 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) index!984))))

(declare-fun b!644353 () Bool)

(declare-fun Unit!21848 () Unit!21844)

(assert (=> b!644353 (= e!369184 Unit!21848)))

(declare-fun b!644354 () Bool)

(declare-fun res!417563 () Bool)

(assert (=> b!644354 (=> (not res!417563) (not e!369196))))

(assert (=> b!644354 (= res!417563 (and (= (size!18779 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18779 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18779 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644355 () Bool)

(assert (=> b!644355 (= e!369196 e!369188)))

(declare-fun res!417567 () Bool)

(assert (=> b!644355 (=> (not res!417567) (not e!369188))))

(declare-fun lt!298726 () SeekEntryResult!6862)

(assert (=> b!644355 (= res!417567 (or (= lt!298726 (MissingZero!6862 i!1108)) (= lt!298726 (MissingVacant!6862 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38411 (_ BitVec 32)) SeekEntryResult!6862)

(assert (=> b!644355 (= lt!298726 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!644356 () Bool)

(declare-fun e!369182 () Bool)

(assert (=> b!644356 (= e!369186 e!369182)))

(declare-fun res!417561 () Bool)

(assert (=> b!644356 (=> res!417561 e!369182)))

(assert (=> b!644356 (= res!417561 (or (not (= (select (arr!18415 a!2986) j!136) lt!298729)) (not (= (select (arr!18415 a!2986) j!136) lt!298725)) (bvsge j!136 index!984)))))

(declare-fun b!644357 () Bool)

(declare-fun Unit!21849 () Unit!21844)

(assert (=> b!644357 (= e!369184 Unit!21849)))

(declare-fun lt!298721 () Unit!21844)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38411 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21844)

(assert (=> b!644357 (= lt!298721 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298722 (select (arr!18415 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644357 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298728 () Unit!21844)

(declare-datatypes ((List!12509 0))(
  ( (Nil!12506) (Cons!12505 (h!13550 (_ BitVec 64)) (t!18745 List!12509)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38411 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12509) Unit!21844)

(assert (=> b!644357 (= lt!298728 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12506))))

(declare-fun arrayNoDuplicates!0 (array!38411 (_ BitVec 32) List!12509) Bool)

(assert (=> b!644357 (arrayNoDuplicates!0 lt!298722 #b00000000000000000000000000000000 Nil!12506)))

(declare-fun lt!298719 () Unit!21844)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38411 (_ BitVec 32) (_ BitVec 32)) Unit!21844)

(assert (=> b!644357 (= lt!298719 (lemmaNoDuplicateFromThenFromBigger!0 lt!298722 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644357 (arrayNoDuplicates!0 lt!298722 j!136 Nil!12506)))

(declare-fun lt!298718 () Unit!21844)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38411 (_ BitVec 64) (_ BitVec 32) List!12509) Unit!21844)

(assert (=> b!644357 (= lt!298718 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298722 (select (arr!18415 a!2986) j!136) j!136 Nil!12506))))

(assert (=> b!644357 false))

(declare-fun b!644358 () Bool)

(declare-fun res!417566 () Bool)

(assert (=> b!644358 (=> (not res!417566) (not e!369188))))

(assert (=> b!644358 (= res!417566 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12506))))

(declare-fun b!644359 () Bool)

(declare-fun res!417564 () Bool)

(assert (=> b!644359 (=> (not res!417564) (not e!369196))))

(assert (=> b!644359 (= res!417564 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644360 () Bool)

(assert (=> b!644360 (= e!369182 e!369187)))

(declare-fun res!417573 () Bool)

(assert (=> b!644360 (=> (not res!417573) (not e!369187))))

(assert (=> b!644360 (= res!417573 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) j!136))))

(assert (= (and start!58358 res!417578) b!644354))

(assert (= (and b!644354 res!417563) b!644346))

(assert (= (and b!644346 res!417560) b!644340))

(assert (= (and b!644340 res!417570) b!644359))

(assert (= (and b!644359 res!417564) b!644355))

(assert (= (and b!644355 res!417567) b!644342))

(assert (= (and b!644342 res!417575) b!644358))

(assert (= (and b!644358 res!417566) b!644341))

(assert (= (and b!644341 res!417569) b!644349))

(assert (= (and b!644349 res!417576) b!644338))

(assert (= (and b!644338 res!417571) b!644347))

(assert (= (and b!644347 res!417568) b!644339))

(assert (= (and b!644347 c!73757) b!644344))

(assert (= (and b!644347 (not c!73757)) b!644350))

(assert (= (and b!644347 (not res!417572)) b!644343))

(assert (= (and b!644343 res!417577) b!644356))

(assert (= (and b!644356 (not res!417561)) b!644360))

(assert (= (and b!644360 res!417573) b!644352))

(assert (= (and b!644343 (not res!417574)) b!644351))

(assert (= (and b!644351 c!73756) b!644357))

(assert (= (and b!644351 (not c!73756)) b!644353))

(assert (= (and b!644351 (not res!417565)) b!644348))

(assert (= (and b!644348 res!417562) b!644345))

(declare-fun m!618003 () Bool)

(assert (=> b!644341 m!618003))

(declare-fun m!618005 () Bool)

(assert (=> b!644359 m!618005))

(declare-fun m!618007 () Bool)

(assert (=> b!644346 m!618007))

(assert (=> b!644346 m!618007))

(declare-fun m!618009 () Bool)

(assert (=> b!644346 m!618009))

(declare-fun m!618011 () Bool)

(assert (=> start!58358 m!618011))

(declare-fun m!618013 () Bool)

(assert (=> start!58358 m!618013))

(assert (=> b!644360 m!618007))

(assert (=> b!644360 m!618007))

(declare-fun m!618015 () Bool)

(assert (=> b!644360 m!618015))

(assert (=> b!644352 m!618007))

(assert (=> b!644352 m!618007))

(declare-fun m!618017 () Bool)

(assert (=> b!644352 m!618017))

(declare-fun m!618019 () Bool)

(assert (=> b!644347 m!618019))

(declare-fun m!618021 () Bool)

(assert (=> b!644347 m!618021))

(declare-fun m!618023 () Bool)

(assert (=> b!644347 m!618023))

(assert (=> b!644347 m!618007))

(declare-fun m!618025 () Bool)

(assert (=> b!644347 m!618025))

(declare-fun m!618027 () Bool)

(assert (=> b!644347 m!618027))

(assert (=> b!644347 m!618007))

(declare-fun m!618029 () Bool)

(assert (=> b!644347 m!618029))

(declare-fun m!618031 () Bool)

(assert (=> b!644347 m!618031))

(assert (=> b!644356 m!618007))

(declare-fun m!618033 () Bool)

(assert (=> b!644342 m!618033))

(assert (=> b!644357 m!618007))

(assert (=> b!644357 m!618007))

(declare-fun m!618035 () Bool)

(assert (=> b!644357 m!618035))

(declare-fun m!618037 () Bool)

(assert (=> b!644357 m!618037))

(assert (=> b!644357 m!618007))

(declare-fun m!618039 () Bool)

(assert (=> b!644357 m!618039))

(declare-fun m!618041 () Bool)

(assert (=> b!644357 m!618041))

(declare-fun m!618043 () Bool)

(assert (=> b!644357 m!618043))

(assert (=> b!644357 m!618007))

(declare-fun m!618045 () Bool)

(assert (=> b!644357 m!618045))

(declare-fun m!618047 () Bool)

(assert (=> b!644357 m!618047))

(declare-fun m!618049 () Bool)

(assert (=> b!644338 m!618049))

(assert (=> b!644338 m!618007))

(assert (=> b!644338 m!618007))

(declare-fun m!618051 () Bool)

(assert (=> b!644338 m!618051))

(assert (=> b!644343 m!618007))

(assert (=> b!644343 m!618027))

(declare-fun m!618053 () Bool)

(assert (=> b!644343 m!618053))

(declare-fun m!618055 () Bool)

(assert (=> b!644340 m!618055))

(assert (=> b!644345 m!618007))

(assert (=> b!644345 m!618007))

(assert (=> b!644345 m!618017))

(assert (=> b!644348 m!618007))

(assert (=> b!644348 m!618007))

(assert (=> b!644348 m!618015))

(declare-fun m!618057 () Bool)

(assert (=> b!644355 m!618057))

(declare-fun m!618059 () Bool)

(assert (=> b!644358 m!618059))

(assert (=> b!644349 m!618027))

(declare-fun m!618061 () Bool)

(assert (=> b!644349 m!618061))

(check-sat (not b!644352) (not b!644359) (not b!644342) (not b!644345) (not b!644347) (not b!644360) (not b!644338) (not b!644340) (not b!644358) (not b!644355) (not b!644348) (not start!58358) (not b!644357) (not b!644346))
(check-sat)
(get-model)

(declare-fun bm!33605 () Bool)

(declare-fun c!73766 () Bool)

(declare-fun call!33608 () Bool)

(assert (=> bm!33605 (= call!33608 (arrayNoDuplicates!0 lt!298722 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73766 (Cons!12505 (select (arr!18415 lt!298722) j!136) Nil!12506) Nil!12506)))))

(declare-fun b!644440 () Bool)

(declare-fun e!369251 () Bool)

(declare-fun e!369250 () Bool)

(assert (=> b!644440 (= e!369251 e!369250)))

(assert (=> b!644440 (= c!73766 (validKeyInArray!0 (select (arr!18415 lt!298722) j!136)))))

(declare-fun b!644441 () Bool)

(assert (=> b!644441 (= e!369250 call!33608)))

(declare-fun b!644443 () Bool)

(declare-fun e!369252 () Bool)

(declare-fun contains!3147 (List!12509 (_ BitVec 64)) Bool)

(assert (=> b!644443 (= e!369252 (contains!3147 Nil!12506 (select (arr!18415 lt!298722) j!136)))))

(declare-fun b!644444 () Bool)

(assert (=> b!644444 (= e!369250 call!33608)))

(declare-fun b!644442 () Bool)

(declare-fun e!369253 () Bool)

(assert (=> b!644442 (= e!369253 e!369251)))

(declare-fun res!417643 () Bool)

(assert (=> b!644442 (=> (not res!417643) (not e!369251))))

(assert (=> b!644442 (= res!417643 (not e!369252))))

(declare-fun res!417642 () Bool)

(assert (=> b!644442 (=> (not res!417642) (not e!369252))))

(assert (=> b!644442 (= res!417642 (validKeyInArray!0 (select (arr!18415 lt!298722) j!136)))))

(declare-fun d!90947 () Bool)

(declare-fun res!417644 () Bool)

(assert (=> d!90947 (=> res!417644 e!369253)))

(assert (=> d!90947 (= res!417644 (bvsge j!136 (size!18779 lt!298722)))))

(assert (=> d!90947 (= (arrayNoDuplicates!0 lt!298722 j!136 Nil!12506) e!369253)))

(assert (= (and d!90947 (not res!417644)) b!644442))

(assert (= (and b!644442 res!417642) b!644443))

(assert (= (and b!644442 res!417643) b!644440))

(assert (= (and b!644440 c!73766) b!644444))

(assert (= (and b!644440 (not c!73766)) b!644441))

(assert (= (or b!644444 b!644441) bm!33605))

(declare-fun m!618123 () Bool)

(assert (=> bm!33605 m!618123))

(declare-fun m!618125 () Bool)

(assert (=> bm!33605 m!618125))

(assert (=> b!644440 m!618123))

(assert (=> b!644440 m!618123))

(declare-fun m!618127 () Bool)

(assert (=> b!644440 m!618127))

(assert (=> b!644443 m!618123))

(assert (=> b!644443 m!618123))

(declare-fun m!618129 () Bool)

(assert (=> b!644443 m!618129))

(assert (=> b!644442 m!618123))

(assert (=> b!644442 m!618123))

(assert (=> b!644442 m!618127))

(assert (=> b!644357 d!90947))

(declare-fun bm!33606 () Bool)

(declare-fun call!33609 () Bool)

(declare-fun c!73767 () Bool)

(assert (=> bm!33606 (= call!33609 (arrayNoDuplicates!0 lt!298722 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73767 (Cons!12505 (select (arr!18415 lt!298722) #b00000000000000000000000000000000) Nil!12506) Nil!12506)))))

(declare-fun b!644445 () Bool)

(declare-fun e!369255 () Bool)

(declare-fun e!369254 () Bool)

(assert (=> b!644445 (= e!369255 e!369254)))

(assert (=> b!644445 (= c!73767 (validKeyInArray!0 (select (arr!18415 lt!298722) #b00000000000000000000000000000000)))))

(declare-fun b!644446 () Bool)

(assert (=> b!644446 (= e!369254 call!33609)))

(declare-fun b!644448 () Bool)

(declare-fun e!369256 () Bool)

(assert (=> b!644448 (= e!369256 (contains!3147 Nil!12506 (select (arr!18415 lt!298722) #b00000000000000000000000000000000)))))

(declare-fun b!644449 () Bool)

(assert (=> b!644449 (= e!369254 call!33609)))

(declare-fun b!644447 () Bool)

(declare-fun e!369257 () Bool)

(assert (=> b!644447 (= e!369257 e!369255)))

(declare-fun res!417646 () Bool)

(assert (=> b!644447 (=> (not res!417646) (not e!369255))))

(assert (=> b!644447 (= res!417646 (not e!369256))))

(declare-fun res!417645 () Bool)

(assert (=> b!644447 (=> (not res!417645) (not e!369256))))

(assert (=> b!644447 (= res!417645 (validKeyInArray!0 (select (arr!18415 lt!298722) #b00000000000000000000000000000000)))))

(declare-fun d!90949 () Bool)

(declare-fun res!417647 () Bool)

(assert (=> d!90949 (=> res!417647 e!369257)))

(assert (=> d!90949 (= res!417647 (bvsge #b00000000000000000000000000000000 (size!18779 lt!298722)))))

(assert (=> d!90949 (= (arrayNoDuplicates!0 lt!298722 #b00000000000000000000000000000000 Nil!12506) e!369257)))

(assert (= (and d!90949 (not res!417647)) b!644447))

(assert (= (and b!644447 res!417645) b!644448))

(assert (= (and b!644447 res!417646) b!644445))

(assert (= (and b!644445 c!73767) b!644449))

(assert (= (and b!644445 (not c!73767)) b!644446))

(assert (= (or b!644449 b!644446) bm!33606))

(declare-fun m!618131 () Bool)

(assert (=> bm!33606 m!618131))

(declare-fun m!618133 () Bool)

(assert (=> bm!33606 m!618133))

(assert (=> b!644445 m!618131))

(assert (=> b!644445 m!618131))

(declare-fun m!618135 () Bool)

(assert (=> b!644445 m!618135))

(assert (=> b!644448 m!618131))

(assert (=> b!644448 m!618131))

(declare-fun m!618137 () Bool)

(assert (=> b!644448 m!618137))

(assert (=> b!644447 m!618131))

(assert (=> b!644447 m!618131))

(assert (=> b!644447 m!618135))

(assert (=> b!644357 d!90949))

(declare-fun d!90951 () Bool)

(assert (=> d!90951 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18779 lt!298722)) (not (= (select (arr!18415 lt!298722) j!136) (select (arr!18415 a!2986) j!136))))))

(declare-fun lt!298779 () Unit!21844)

(declare-fun choose!21 (array!38411 (_ BitVec 64) (_ BitVec 32) List!12509) Unit!21844)

(assert (=> d!90951 (= lt!298779 (choose!21 lt!298722 (select (arr!18415 a!2986) j!136) j!136 Nil!12506))))

(assert (=> d!90951 (bvslt (size!18779 lt!298722) #b01111111111111111111111111111111)))

(assert (=> d!90951 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298722 (select (arr!18415 a!2986) j!136) j!136 Nil!12506) lt!298779)))

(declare-fun bs!19265 () Bool)

(assert (= bs!19265 d!90951))

(assert (=> bs!19265 m!618123))

(assert (=> bs!19265 m!618007))

(declare-fun m!618139 () Bool)

(assert (=> bs!19265 m!618139))

(assert (=> b!644357 d!90951))

(declare-fun d!90953 () Bool)

(declare-fun res!417652 () Bool)

(declare-fun e!369262 () Bool)

(assert (=> d!90953 (=> res!417652 e!369262)))

(assert (=> d!90953 (= res!417652 (= (select (arr!18415 lt!298722) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18415 a!2986) j!136)))))

(assert (=> d!90953 (= (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!369262)))

(declare-fun b!644454 () Bool)

(declare-fun e!369263 () Bool)

(assert (=> b!644454 (= e!369262 e!369263)))

(declare-fun res!417653 () Bool)

(assert (=> b!644454 (=> (not res!417653) (not e!369263))))

(assert (=> b!644454 (= res!417653 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18779 lt!298722)))))

(declare-fun b!644455 () Bool)

(assert (=> b!644455 (= e!369263 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90953 (not res!417652)) b!644454))

(assert (= (and b!644454 res!417653) b!644455))

(declare-fun m!618141 () Bool)

(assert (=> d!90953 m!618141))

(assert (=> b!644455 m!618007))

(declare-fun m!618143 () Bool)

(assert (=> b!644455 m!618143))

(assert (=> b!644357 d!90953))

(declare-fun d!90955 () Bool)

(declare-fun e!369266 () Bool)

(assert (=> d!90955 e!369266))

(declare-fun res!417656 () Bool)

(assert (=> d!90955 (=> (not res!417656) (not e!369266))))

(assert (=> d!90955 (= res!417656 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18779 a!2986))))))

(declare-fun lt!298782 () Unit!21844)

(declare-fun choose!41 (array!38411 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12509) Unit!21844)

(assert (=> d!90955 (= lt!298782 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12506))))

(assert (=> d!90955 (bvslt (size!18779 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90955 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12506) lt!298782)))

(declare-fun b!644458 () Bool)

(assert (=> b!644458 (= e!369266 (arrayNoDuplicates!0 (array!38412 (store (arr!18415 a!2986) i!1108 k0!1786) (size!18779 a!2986)) #b00000000000000000000000000000000 Nil!12506))))

(assert (= (and d!90955 res!417656) b!644458))

(declare-fun m!618145 () Bool)

(assert (=> d!90955 m!618145))

(assert (=> b!644458 m!618027))

(declare-fun m!618147 () Bool)

(assert (=> b!644458 m!618147))

(assert (=> b!644357 d!90955))

(declare-fun d!90957 () Bool)

(assert (=> d!90957 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298785 () Unit!21844)

(declare-fun choose!114 (array!38411 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21844)

(assert (=> d!90957 (= lt!298785 (choose!114 lt!298722 (select (arr!18415 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90957 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90957 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298722 (select (arr!18415 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!298785)))

(declare-fun bs!19266 () Bool)

(assert (= bs!19266 d!90957))

(assert (=> bs!19266 m!618007))

(assert (=> bs!19266 m!618035))

(assert (=> bs!19266 m!618007))

(declare-fun m!618149 () Bool)

(assert (=> bs!19266 m!618149))

(assert (=> b!644357 d!90957))

(declare-fun d!90959 () Bool)

(assert (=> d!90959 (arrayNoDuplicates!0 lt!298722 j!136 Nil!12506)))

(declare-fun lt!298788 () Unit!21844)

(declare-fun choose!39 (array!38411 (_ BitVec 32) (_ BitVec 32)) Unit!21844)

(assert (=> d!90959 (= lt!298788 (choose!39 lt!298722 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90959 (bvslt (size!18779 lt!298722) #b01111111111111111111111111111111)))

(assert (=> d!90959 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!298722 #b00000000000000000000000000000000 j!136) lt!298788)))

(declare-fun bs!19267 () Bool)

(assert (= bs!19267 d!90959))

(assert (=> bs!19267 m!618047))

(declare-fun m!618151 () Bool)

(assert (=> bs!19267 m!618151))

(assert (=> b!644357 d!90959))

(declare-fun d!90961 () Bool)

(assert (=> d!90961 (= (validKeyInArray!0 (select (arr!18415 a!2986) j!136)) (and (not (= (select (arr!18415 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18415 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!644346 d!90961))

(declare-fun b!644471 () Bool)

(declare-fun e!369275 () SeekEntryResult!6862)

(assert (=> b!644471 (= e!369275 (Found!6862 index!984))))

(declare-fun d!90963 () Bool)

(declare-fun lt!298793 () SeekEntryResult!6862)

(get-info :version)

(assert (=> d!90963 (and (or ((_ is Undefined!6862) lt!298793) (not ((_ is Found!6862) lt!298793)) (and (bvsge (index!29780 lt!298793) #b00000000000000000000000000000000) (bvslt (index!29780 lt!298793) (size!18779 lt!298722)))) (or ((_ is Undefined!6862) lt!298793) ((_ is Found!6862) lt!298793) (not ((_ is MissingVacant!6862) lt!298793)) (not (= (index!29782 lt!298793) vacantSpotIndex!68)) (and (bvsge (index!29782 lt!298793) #b00000000000000000000000000000000) (bvslt (index!29782 lt!298793) (size!18779 lt!298722)))) (or ((_ is Undefined!6862) lt!298793) (ite ((_ is Found!6862) lt!298793) (= (select (arr!18415 lt!298722) (index!29780 lt!298793)) lt!298729) (and ((_ is MissingVacant!6862) lt!298793) (= (index!29782 lt!298793) vacantSpotIndex!68) (= (select (arr!18415 lt!298722) (index!29782 lt!298793)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!369273 () SeekEntryResult!6862)

(assert (=> d!90963 (= lt!298793 e!369273)))

(declare-fun c!73774 () Bool)

(assert (=> d!90963 (= c!73774 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!298794 () (_ BitVec 64))

(assert (=> d!90963 (= lt!298794 (select (arr!18415 lt!298722) index!984))))

(assert (=> d!90963 (validMask!0 mask!3053)))

(assert (=> d!90963 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298729 lt!298722 mask!3053) lt!298793)))

(declare-fun b!644472 () Bool)

(declare-fun c!73775 () Bool)

(assert (=> b!644472 (= c!73775 (= lt!298794 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!369274 () SeekEntryResult!6862)

(assert (=> b!644472 (= e!369275 e!369274)))

(declare-fun b!644473 () Bool)

(assert (=> b!644473 (= e!369274 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!298729 lt!298722 mask!3053))))

(declare-fun b!644474 () Bool)

(assert (=> b!644474 (= e!369273 e!369275)))

(declare-fun c!73776 () Bool)

(assert (=> b!644474 (= c!73776 (= lt!298794 lt!298729))))

(declare-fun b!644475 () Bool)

(assert (=> b!644475 (= e!369274 (MissingVacant!6862 vacantSpotIndex!68))))

(declare-fun b!644476 () Bool)

(assert (=> b!644476 (= e!369273 Undefined!6862)))

(assert (= (and d!90963 c!73774) b!644476))

(assert (= (and d!90963 (not c!73774)) b!644474))

(assert (= (and b!644474 c!73776) b!644471))

(assert (= (and b!644474 (not c!73776)) b!644472))

(assert (= (and b!644472 c!73775) b!644475))

(assert (= (and b!644472 (not c!73775)) b!644473))

(declare-fun m!618153 () Bool)

(assert (=> d!90963 m!618153))

(declare-fun m!618155 () Bool)

(assert (=> d!90963 m!618155))

(declare-fun m!618157 () Bool)

(assert (=> d!90963 m!618157))

(assert (=> d!90963 m!618011))

(assert (=> b!644473 m!618021))

(assert (=> b!644473 m!618021))

(declare-fun m!618159 () Bool)

(assert (=> b!644473 m!618159))

(assert (=> b!644347 d!90963))

(declare-fun b!644477 () Bool)

(declare-fun e!369278 () SeekEntryResult!6862)

(assert (=> b!644477 (= e!369278 (Found!6862 lt!298730))))

(declare-fun d!90965 () Bool)

(declare-fun lt!298795 () SeekEntryResult!6862)

(assert (=> d!90965 (and (or ((_ is Undefined!6862) lt!298795) (not ((_ is Found!6862) lt!298795)) (and (bvsge (index!29780 lt!298795) #b00000000000000000000000000000000) (bvslt (index!29780 lt!298795) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298795) ((_ is Found!6862) lt!298795) (not ((_ is MissingVacant!6862) lt!298795)) (not (= (index!29782 lt!298795) vacantSpotIndex!68)) (and (bvsge (index!29782 lt!298795) #b00000000000000000000000000000000) (bvslt (index!29782 lt!298795) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298795) (ite ((_ is Found!6862) lt!298795) (= (select (arr!18415 a!2986) (index!29780 lt!298795)) (select (arr!18415 a!2986) j!136)) (and ((_ is MissingVacant!6862) lt!298795) (= (index!29782 lt!298795) vacantSpotIndex!68) (= (select (arr!18415 a!2986) (index!29782 lt!298795)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!369276 () SeekEntryResult!6862)

(assert (=> d!90965 (= lt!298795 e!369276)))

(declare-fun c!73777 () Bool)

(assert (=> d!90965 (= c!73777 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!298796 () (_ BitVec 64))

(assert (=> d!90965 (= lt!298796 (select (arr!18415 a!2986) lt!298730))))

(assert (=> d!90965 (validMask!0 mask!3053)))

(assert (=> d!90965 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053) lt!298795)))

(declare-fun b!644478 () Bool)

(declare-fun c!73778 () Bool)

(assert (=> b!644478 (= c!73778 (= lt!298796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!369277 () SeekEntryResult!6862)

(assert (=> b!644478 (= e!369278 e!369277)))

(declare-fun b!644479 () Bool)

(assert (=> b!644479 (= e!369277 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!298730 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644480 () Bool)

(assert (=> b!644480 (= e!369276 e!369278)))

(declare-fun c!73779 () Bool)

(assert (=> b!644480 (= c!73779 (= lt!298796 (select (arr!18415 a!2986) j!136)))))

(declare-fun b!644481 () Bool)

(assert (=> b!644481 (= e!369277 (MissingVacant!6862 vacantSpotIndex!68))))

(declare-fun b!644482 () Bool)

(assert (=> b!644482 (= e!369276 Undefined!6862)))

(assert (= (and d!90965 c!73777) b!644482))

(assert (= (and d!90965 (not c!73777)) b!644480))

(assert (= (and b!644480 c!73779) b!644477))

(assert (= (and b!644480 (not c!73779)) b!644478))

(assert (= (and b!644478 c!73778) b!644481))

(assert (= (and b!644478 (not c!73778)) b!644479))

(declare-fun m!618161 () Bool)

(assert (=> d!90965 m!618161))

(declare-fun m!618163 () Bool)

(assert (=> d!90965 m!618163))

(declare-fun m!618165 () Bool)

(assert (=> d!90965 m!618165))

(assert (=> d!90965 m!618011))

(declare-fun m!618167 () Bool)

(assert (=> b!644479 m!618167))

(assert (=> b!644479 m!618167))

(assert (=> b!644479 m!618007))

(declare-fun m!618169 () Bool)

(assert (=> b!644479 m!618169))

(assert (=> b!644347 d!90965))

(declare-fun b!644483 () Bool)

(declare-fun e!369281 () SeekEntryResult!6862)

(assert (=> b!644483 (= e!369281 (Found!6862 lt!298730))))

(declare-fun d!90967 () Bool)

(declare-fun lt!298797 () SeekEntryResult!6862)

(assert (=> d!90967 (and (or ((_ is Undefined!6862) lt!298797) (not ((_ is Found!6862) lt!298797)) (and (bvsge (index!29780 lt!298797) #b00000000000000000000000000000000) (bvslt (index!29780 lt!298797) (size!18779 lt!298722)))) (or ((_ is Undefined!6862) lt!298797) ((_ is Found!6862) lt!298797) (not ((_ is MissingVacant!6862) lt!298797)) (not (= (index!29782 lt!298797) vacantSpotIndex!68)) (and (bvsge (index!29782 lt!298797) #b00000000000000000000000000000000) (bvslt (index!29782 lt!298797) (size!18779 lt!298722)))) (or ((_ is Undefined!6862) lt!298797) (ite ((_ is Found!6862) lt!298797) (= (select (arr!18415 lt!298722) (index!29780 lt!298797)) lt!298729) (and ((_ is MissingVacant!6862) lt!298797) (= (index!29782 lt!298797) vacantSpotIndex!68) (= (select (arr!18415 lt!298722) (index!29782 lt!298797)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!369279 () SeekEntryResult!6862)

(assert (=> d!90967 (= lt!298797 e!369279)))

(declare-fun c!73780 () Bool)

(assert (=> d!90967 (= c!73780 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!298798 () (_ BitVec 64))

(assert (=> d!90967 (= lt!298798 (select (arr!18415 lt!298722) lt!298730))))

(assert (=> d!90967 (validMask!0 mask!3053)))

(assert (=> d!90967 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 lt!298729 lt!298722 mask!3053) lt!298797)))

(declare-fun b!644484 () Bool)

(declare-fun c!73781 () Bool)

(assert (=> b!644484 (= c!73781 (= lt!298798 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!369280 () SeekEntryResult!6862)

(assert (=> b!644484 (= e!369281 e!369280)))

(declare-fun b!644485 () Bool)

(assert (=> b!644485 (= e!369280 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!298730 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!298729 lt!298722 mask!3053))))

(declare-fun b!644486 () Bool)

(assert (=> b!644486 (= e!369279 e!369281)))

(declare-fun c!73782 () Bool)

(assert (=> b!644486 (= c!73782 (= lt!298798 lt!298729))))

(declare-fun b!644487 () Bool)

(assert (=> b!644487 (= e!369280 (MissingVacant!6862 vacantSpotIndex!68))))

(declare-fun b!644488 () Bool)

(assert (=> b!644488 (= e!369279 Undefined!6862)))

(assert (= (and d!90967 c!73780) b!644488))

(assert (= (and d!90967 (not c!73780)) b!644486))

(assert (= (and b!644486 c!73782) b!644483))

(assert (= (and b!644486 (not c!73782)) b!644484))

(assert (= (and b!644484 c!73781) b!644487))

(assert (= (and b!644484 (not c!73781)) b!644485))

(declare-fun m!618171 () Bool)

(assert (=> d!90967 m!618171))

(declare-fun m!618173 () Bool)

(assert (=> d!90967 m!618173))

(declare-fun m!618175 () Bool)

(assert (=> d!90967 m!618175))

(assert (=> d!90967 m!618011))

(assert (=> b!644485 m!618167))

(assert (=> b!644485 m!618167))

(declare-fun m!618177 () Bool)

(assert (=> b!644485 m!618177))

(assert (=> b!644347 d!90967))

(declare-fun d!90969 () Bool)

(declare-fun e!369292 () Bool)

(assert (=> d!90969 e!369292))

(declare-fun res!417665 () Bool)

(assert (=> d!90969 (=> (not res!417665) (not e!369292))))

(assert (=> d!90969 (= res!417665 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18779 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18779 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18779 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18779 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18779 a!2986))))))

(declare-fun lt!298801 () Unit!21844)

(declare-fun choose!9 (array!38411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21844)

(assert (=> d!90969 (= lt!298801 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90969 (validMask!0 mask!3053)))

(assert (=> d!90969 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 mask!3053) lt!298801)))

(declare-fun b!644501 () Bool)

(assert (=> b!644501 (= e!369292 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298730 vacantSpotIndex!68 (select (store (arr!18415 a!2986) i!1108 k0!1786) j!136) (array!38412 (store (arr!18415 a!2986) i!1108 k0!1786) (size!18779 a!2986)) mask!3053)))))

(assert (= (and d!90969 res!417665) b!644501))

(declare-fun m!618179 () Bool)

(assert (=> d!90969 m!618179))

(assert (=> d!90969 m!618011))

(assert (=> b!644501 m!618007))

(assert (=> b!644501 m!618023))

(declare-fun m!618181 () Bool)

(assert (=> b!644501 m!618181))

(assert (=> b!644501 m!618007))

(assert (=> b!644501 m!618029))

(assert (=> b!644501 m!618023))

(assert (=> b!644501 m!618027))

(assert (=> b!644347 d!90969))

(declare-fun d!90975 () Bool)

(declare-fun lt!298804 () (_ BitVec 32))

(assert (=> d!90975 (and (bvsge lt!298804 #b00000000000000000000000000000000) (bvslt lt!298804 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90975 (= lt!298804 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90975 (validMask!0 mask!3053)))

(assert (=> d!90975 (= (nextIndex!0 index!984 x!910 mask!3053) lt!298804)))

(declare-fun bs!19268 () Bool)

(assert (= bs!19268 d!90975))

(declare-fun m!618191 () Bool)

(assert (=> bs!19268 m!618191))

(assert (=> bs!19268 m!618011))

(assert (=> b!644347 d!90975))

(declare-fun d!90979 () Bool)

(declare-fun res!417669 () Bool)

(declare-fun e!369297 () Bool)

(assert (=> d!90979 (=> res!417669 e!369297)))

(assert (=> d!90979 (= res!417669 (= (select (arr!18415 lt!298722) index!984) (select (arr!18415 a!2986) j!136)))))

(assert (=> d!90979 (= (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) index!984) e!369297)))

(declare-fun b!644507 () Bool)

(declare-fun e!369298 () Bool)

(assert (=> b!644507 (= e!369297 e!369298)))

(declare-fun res!417670 () Bool)

(assert (=> b!644507 (=> (not res!417670) (not e!369298))))

(assert (=> b!644507 (= res!417670 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18779 lt!298722)))))

(declare-fun b!644508 () Bool)

(assert (=> b!644508 (= e!369298 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90979 (not res!417669)) b!644507))

(assert (= (and b!644507 res!417670) b!644508))

(assert (=> d!90979 m!618157))

(assert (=> b!644508 m!618007))

(declare-fun m!618193 () Bool)

(assert (=> b!644508 m!618193))

(assert (=> b!644345 d!90979))

(declare-fun b!644509 () Bool)

(declare-fun e!369301 () SeekEntryResult!6862)

(assert (=> b!644509 (= e!369301 (Found!6862 index!984))))

(declare-fun d!90981 () Bool)

(declare-fun lt!298805 () SeekEntryResult!6862)

(assert (=> d!90981 (and (or ((_ is Undefined!6862) lt!298805) (not ((_ is Found!6862) lt!298805)) (and (bvsge (index!29780 lt!298805) #b00000000000000000000000000000000) (bvslt (index!29780 lt!298805) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298805) ((_ is Found!6862) lt!298805) (not ((_ is MissingVacant!6862) lt!298805)) (not (= (index!29782 lt!298805) vacantSpotIndex!68)) (and (bvsge (index!29782 lt!298805) #b00000000000000000000000000000000) (bvslt (index!29782 lt!298805) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298805) (ite ((_ is Found!6862) lt!298805) (= (select (arr!18415 a!2986) (index!29780 lt!298805)) (select (arr!18415 a!2986) j!136)) (and ((_ is MissingVacant!6862) lt!298805) (= (index!29782 lt!298805) vacantSpotIndex!68) (= (select (arr!18415 a!2986) (index!29782 lt!298805)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!369299 () SeekEntryResult!6862)

(assert (=> d!90981 (= lt!298805 e!369299)))

(declare-fun c!73786 () Bool)

(assert (=> d!90981 (= c!73786 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!298806 () (_ BitVec 64))

(assert (=> d!90981 (= lt!298806 (select (arr!18415 a!2986) index!984))))

(assert (=> d!90981 (validMask!0 mask!3053)))

(assert (=> d!90981 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053) lt!298805)))

(declare-fun b!644510 () Bool)

(declare-fun c!73787 () Bool)

(assert (=> b!644510 (= c!73787 (= lt!298806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!369300 () SeekEntryResult!6862)

(assert (=> b!644510 (= e!369301 e!369300)))

(declare-fun b!644511 () Bool)

(assert (=> b!644511 (= e!369300 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18415 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644512 () Bool)

(assert (=> b!644512 (= e!369299 e!369301)))

(declare-fun c!73788 () Bool)

(assert (=> b!644512 (= c!73788 (= lt!298806 (select (arr!18415 a!2986) j!136)))))

(declare-fun b!644513 () Bool)

(assert (=> b!644513 (= e!369300 (MissingVacant!6862 vacantSpotIndex!68))))

(declare-fun b!644514 () Bool)

(assert (=> b!644514 (= e!369299 Undefined!6862)))

(assert (= (and d!90981 c!73786) b!644514))

(assert (= (and d!90981 (not c!73786)) b!644512))

(assert (= (and b!644512 c!73788) b!644509))

(assert (= (and b!644512 (not c!73788)) b!644510))

(assert (= (and b!644510 c!73787) b!644513))

(assert (= (and b!644510 (not c!73787)) b!644511))

(declare-fun m!618195 () Bool)

(assert (=> d!90981 m!618195))

(declare-fun m!618197 () Bool)

(assert (=> d!90981 m!618197))

(assert (=> d!90981 m!618049))

(assert (=> d!90981 m!618011))

(assert (=> b!644511 m!618021))

(assert (=> b!644511 m!618021))

(assert (=> b!644511 m!618007))

(declare-fun m!618199 () Bool)

(assert (=> b!644511 m!618199))

(assert (=> b!644338 d!90981))

(declare-fun d!90983 () Bool)

(declare-fun res!417671 () Bool)

(declare-fun e!369302 () Bool)

(assert (=> d!90983 (=> res!417671 e!369302)))

(assert (=> d!90983 (= res!417671 (= (select (arr!18415 lt!298722) j!136) (select (arr!18415 a!2986) j!136)))))

(assert (=> d!90983 (= (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) j!136) e!369302)))

(declare-fun b!644515 () Bool)

(declare-fun e!369303 () Bool)

(assert (=> b!644515 (= e!369302 e!369303)))

(declare-fun res!417672 () Bool)

(assert (=> b!644515 (=> (not res!417672) (not e!369303))))

(assert (=> b!644515 (= res!417672 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18779 lt!298722)))))

(declare-fun b!644516 () Bool)

(assert (=> b!644516 (= e!369303 (arrayContainsKey!0 lt!298722 (select (arr!18415 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90983 (not res!417671)) b!644515))

(assert (= (and b!644515 res!417672) b!644516))

(assert (=> d!90983 m!618123))

(assert (=> b!644516 m!618007))

(declare-fun m!618203 () Bool)

(assert (=> b!644516 m!618203))

(assert (=> b!644360 d!90983))

(declare-fun bm!33610 () Bool)

(declare-fun call!33613 () Bool)

(declare-fun c!73789 () Bool)

(assert (=> bm!33610 (= call!33613 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73789 (Cons!12505 (select (arr!18415 a!2986) #b00000000000000000000000000000000) Nil!12506) Nil!12506)))))

(declare-fun b!644517 () Bool)

(declare-fun e!369305 () Bool)

(declare-fun e!369304 () Bool)

(assert (=> b!644517 (= e!369305 e!369304)))

(assert (=> b!644517 (= c!73789 (validKeyInArray!0 (select (arr!18415 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!644518 () Bool)

(assert (=> b!644518 (= e!369304 call!33613)))

(declare-fun b!644520 () Bool)

(declare-fun e!369306 () Bool)

(assert (=> b!644520 (= e!369306 (contains!3147 Nil!12506 (select (arr!18415 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!644521 () Bool)

(assert (=> b!644521 (= e!369304 call!33613)))

(declare-fun b!644519 () Bool)

(declare-fun e!369307 () Bool)

(assert (=> b!644519 (= e!369307 e!369305)))

(declare-fun res!417674 () Bool)

(assert (=> b!644519 (=> (not res!417674) (not e!369305))))

(assert (=> b!644519 (= res!417674 (not e!369306))))

(declare-fun res!417673 () Bool)

(assert (=> b!644519 (=> (not res!417673) (not e!369306))))

(assert (=> b!644519 (= res!417673 (validKeyInArray!0 (select (arr!18415 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90987 () Bool)

(declare-fun res!417675 () Bool)

(assert (=> d!90987 (=> res!417675 e!369307)))

(assert (=> d!90987 (= res!417675 (bvsge #b00000000000000000000000000000000 (size!18779 a!2986)))))

(assert (=> d!90987 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12506) e!369307)))

(assert (= (and d!90987 (not res!417675)) b!644519))

(assert (= (and b!644519 res!417673) b!644520))

(assert (= (and b!644519 res!417674) b!644517))

(assert (= (and b!644517 c!73789) b!644521))

(assert (= (and b!644517 (not c!73789)) b!644518))

(assert (= (or b!644521 b!644518) bm!33610))

(declare-fun m!618205 () Bool)

(assert (=> bm!33610 m!618205))

(declare-fun m!618207 () Bool)

(assert (=> bm!33610 m!618207))

(assert (=> b!644517 m!618205))

(assert (=> b!644517 m!618205))

(declare-fun m!618209 () Bool)

(assert (=> b!644517 m!618209))

(assert (=> b!644520 m!618205))

(assert (=> b!644520 m!618205))

(declare-fun m!618211 () Bool)

(assert (=> b!644520 m!618211))

(assert (=> b!644519 m!618205))

(assert (=> b!644519 m!618205))

(assert (=> b!644519 m!618209))

(assert (=> b!644358 d!90987))

(declare-fun d!90989 () Bool)

(declare-fun res!417676 () Bool)

(declare-fun e!369308 () Bool)

(assert (=> d!90989 (=> res!417676 e!369308)))

(assert (=> d!90989 (= res!417676 (= (select (arr!18415 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90989 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!369308)))

(declare-fun b!644522 () Bool)

(declare-fun e!369309 () Bool)

(assert (=> b!644522 (= e!369308 e!369309)))

(declare-fun res!417677 () Bool)

(assert (=> b!644522 (=> (not res!417677) (not e!369309))))

(assert (=> b!644522 (= res!417677 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18779 a!2986)))))

(declare-fun b!644523 () Bool)

(assert (=> b!644523 (= e!369309 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90989 (not res!417676)) b!644522))

(assert (= (and b!644522 res!417677) b!644523))

(assert (=> d!90989 m!618205))

(declare-fun m!618213 () Bool)

(assert (=> b!644523 m!618213))

(assert (=> b!644359 d!90989))

(assert (=> b!644348 d!90983))

(declare-fun d!90991 () Bool)

(assert (=> d!90991 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58358 d!90991))

(declare-fun d!91001 () Bool)

(assert (=> d!91001 (= (array_inv!14189 a!2986) (bvsge (size!18779 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58358 d!91001))

(assert (=> b!644352 d!90979))

(declare-fun d!91003 () Bool)

(assert (=> d!91003 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!644340 d!91003))

(declare-fun b!644580 () Bool)

(declare-fun c!73812 () Bool)

(declare-fun lt!298839 () (_ BitVec 64))

(assert (=> b!644580 (= c!73812 (= lt!298839 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!369346 () SeekEntryResult!6862)

(declare-fun e!369345 () SeekEntryResult!6862)

(assert (=> b!644580 (= e!369346 e!369345)))

(declare-fun lt!298837 () SeekEntryResult!6862)

(declare-fun b!644581 () Bool)

(assert (=> b!644581 (= e!369345 (seekKeyOrZeroReturnVacant!0 (x!58575 lt!298837) (index!29781 lt!298837) (index!29781 lt!298837) k0!1786 a!2986 mask!3053))))

(declare-fun b!644582 () Bool)

(assert (=> b!644582 (= e!369345 (MissingZero!6862 (index!29781 lt!298837)))))

(declare-fun b!644583 () Bool)

(assert (=> b!644583 (= e!369346 (Found!6862 (index!29781 lt!298837)))))

(declare-fun d!91005 () Bool)

(declare-fun lt!298838 () SeekEntryResult!6862)

(assert (=> d!91005 (and (or ((_ is Undefined!6862) lt!298838) (not ((_ is Found!6862) lt!298838)) (and (bvsge (index!29780 lt!298838) #b00000000000000000000000000000000) (bvslt (index!29780 lt!298838) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298838) ((_ is Found!6862) lt!298838) (not ((_ is MissingZero!6862) lt!298838)) (and (bvsge (index!29779 lt!298838) #b00000000000000000000000000000000) (bvslt (index!29779 lt!298838) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298838) ((_ is Found!6862) lt!298838) ((_ is MissingZero!6862) lt!298838) (not ((_ is MissingVacant!6862) lt!298838)) (and (bvsge (index!29782 lt!298838) #b00000000000000000000000000000000) (bvslt (index!29782 lt!298838) (size!18779 a!2986)))) (or ((_ is Undefined!6862) lt!298838) (ite ((_ is Found!6862) lt!298838) (= (select (arr!18415 a!2986) (index!29780 lt!298838)) k0!1786) (ite ((_ is MissingZero!6862) lt!298838) (= (select (arr!18415 a!2986) (index!29779 lt!298838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6862) lt!298838) (= (select (arr!18415 a!2986) (index!29782 lt!298838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!369344 () SeekEntryResult!6862)

(assert (=> d!91005 (= lt!298838 e!369344)))

(declare-fun c!73814 () Bool)

(assert (=> d!91005 (= c!73814 (and ((_ is Intermediate!6862) lt!298837) (undefined!7674 lt!298837)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38411 (_ BitVec 32)) SeekEntryResult!6862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91005 (= lt!298837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91005 (validMask!0 mask!3053)))

(assert (=> d!91005 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!298838)))

(declare-fun b!644584 () Bool)

(assert (=> b!644584 (= e!369344 e!369346)))

(assert (=> b!644584 (= lt!298839 (select (arr!18415 a!2986) (index!29781 lt!298837)))))

(declare-fun c!73813 () Bool)

(assert (=> b!644584 (= c!73813 (= lt!298839 k0!1786))))

(declare-fun b!644585 () Bool)

(assert (=> b!644585 (= e!369344 Undefined!6862)))

(assert (= (and d!91005 c!73814) b!644585))

(assert (= (and d!91005 (not c!73814)) b!644584))

(assert (= (and b!644584 c!73813) b!644583))

(assert (= (and b!644584 (not c!73813)) b!644580))

(assert (= (and b!644580 c!73812) b!644582))

(assert (= (and b!644580 (not c!73812)) b!644581))

(declare-fun m!618241 () Bool)

(assert (=> b!644581 m!618241))

(declare-fun m!618243 () Bool)

(assert (=> d!91005 m!618243))

(declare-fun m!618245 () Bool)

(assert (=> d!91005 m!618245))

(declare-fun m!618247 () Bool)

(assert (=> d!91005 m!618247))

(declare-fun m!618249 () Bool)

(assert (=> d!91005 m!618249))

(assert (=> d!91005 m!618011))

(assert (=> d!91005 m!618247))

(declare-fun m!618251 () Bool)

(assert (=> d!91005 m!618251))

(declare-fun m!618253 () Bool)

(assert (=> b!644584 m!618253))

(assert (=> b!644355 d!91005))

(declare-fun b!644618 () Bool)

(declare-fun e!369365 () Bool)

(declare-fun e!369367 () Bool)

(assert (=> b!644618 (= e!369365 e!369367)))

(declare-fun c!73829 () Bool)

(assert (=> b!644618 (= c!73829 (validKeyInArray!0 (select (arr!18415 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!644619 () Bool)

(declare-fun call!33617 () Bool)

(assert (=> b!644619 (= e!369367 call!33617)))

(declare-fun bm!33614 () Bool)

(assert (=> bm!33614 (= call!33617 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!644620 () Bool)

(declare-fun e!369366 () Bool)

(assert (=> b!644620 (= e!369366 call!33617)))

(declare-fun b!644621 () Bool)

(assert (=> b!644621 (= e!369367 e!369366)))

(declare-fun lt!298858 () (_ BitVec 64))

(assert (=> b!644621 (= lt!298858 (select (arr!18415 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!298859 () Unit!21844)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38411 (_ BitVec 64) (_ BitVec 32)) Unit!21844)

(assert (=> b!644621 (= lt!298859 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!298858 #b00000000000000000000000000000000))))

(assert (=> b!644621 (arrayContainsKey!0 a!2986 lt!298858 #b00000000000000000000000000000000)))

(declare-fun lt!298860 () Unit!21844)

(assert (=> b!644621 (= lt!298860 lt!298859)))

(declare-fun res!417695 () Bool)

(assert (=> b!644621 (= res!417695 (= (seekEntryOrOpen!0 (select (arr!18415 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6862 #b00000000000000000000000000000000)))))

(assert (=> b!644621 (=> (not res!417695) (not e!369366))))

(declare-fun d!91011 () Bool)

(declare-fun res!417694 () Bool)

(assert (=> d!91011 (=> res!417694 e!369365)))

(assert (=> d!91011 (= res!417694 (bvsge #b00000000000000000000000000000000 (size!18779 a!2986)))))

(assert (=> d!91011 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!369365)))

(assert (= (and d!91011 (not res!417694)) b!644618))

(assert (= (and b!644618 c!73829) b!644621))

(assert (= (and b!644618 (not c!73829)) b!644619))

(assert (= (and b!644621 res!417695) b!644620))

(assert (= (or b!644620 b!644619) bm!33614))

(assert (=> b!644618 m!618205))

(assert (=> b!644618 m!618205))

(assert (=> b!644618 m!618209))

(declare-fun m!618269 () Bool)

(assert (=> bm!33614 m!618269))

(assert (=> b!644621 m!618205))

(declare-fun m!618273 () Bool)

(assert (=> b!644621 m!618273))

(declare-fun m!618275 () Bool)

(assert (=> b!644621 m!618275))

(assert (=> b!644621 m!618205))

(declare-fun m!618279 () Bool)

(assert (=> b!644621 m!618279))

(assert (=> b!644342 d!91011))

(check-sat (not d!90965) (not b!644479) (not d!90951) (not b!644443) (not b!644511) (not b!644445) (not b!644508) (not b!644523) (not b!644501) (not b!644442) (not b!644581) (not b!644458) (not b!644519) (not b!644618) (not b!644516) (not d!90959) (not b!644455) (not bm!33605) (not bm!33610) (not b!644448) (not d!91005) (not d!90981) (not b!644473) (not d!90957) (not d!90955) (not b!644440) (not d!90967) (not d!90969) (not b!644621) (not b!644485) (not d!90975) (not bm!33614) (not d!90963) (not b!644447) (not b!644517) (not b!644520) (not bm!33606))
(check-sat)
