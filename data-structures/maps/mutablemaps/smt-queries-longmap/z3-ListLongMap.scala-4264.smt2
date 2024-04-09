; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59342 () Bool)

(assert start!59342)

(declare-fun b!654095 () Bool)

(declare-datatypes ((Unit!22384 0))(
  ( (Unit!22385) )
))
(declare-fun e!375619 () Unit!22384)

(declare-fun Unit!22386 () Unit!22384)

(assert (=> b!654095 (= e!375619 Unit!22386)))

(declare-fun b!654096 () Bool)

(declare-fun res!424346 () Bool)

(declare-fun e!375613 () Bool)

(assert (=> b!654096 (=> (not res!424346) (not e!375613))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38618 0))(
  ( (array!38619 (arr!18505 (Array (_ BitVec 32) (_ BitVec 64))) (size!18869 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38618)

(assert (=> b!654096 (= res!424346 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18505 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654097 () Bool)

(declare-fun res!424338 () Bool)

(declare-fun e!375621 () Bool)

(assert (=> b!654097 (=> (not res!424338) (not e!375621))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654097 (= res!424338 (validKeyInArray!0 (select (arr!18505 a!2986) j!136)))))

(declare-fun b!654098 () Bool)

(declare-fun e!375608 () Bool)

(declare-fun e!375612 () Bool)

(assert (=> b!654098 (= e!375608 e!375612)))

(declare-fun res!424331 () Bool)

(assert (=> b!654098 (=> (not res!424331) (not e!375612))))

(declare-datatypes ((SeekEntryResult!6952 0))(
  ( (MissingZero!6952 (index!30166 (_ BitVec 32))) (Found!6952 (index!30167 (_ BitVec 32))) (Intermediate!6952 (undefined!7764 Bool) (index!30168 (_ BitVec 32)) (x!58986 (_ BitVec 32))) (Undefined!6952) (MissingVacant!6952 (index!30169 (_ BitVec 32))) )
))
(declare-fun lt!304699 () SeekEntryResult!6952)

(assert (=> b!654098 (= res!424331 (and (= lt!304699 (Found!6952 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18505 a!2986) index!984) (select (arr!18505 a!2986) j!136))) (not (= (select (arr!18505 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38618 (_ BitVec 32)) SeekEntryResult!6952)

(assert (=> b!654098 (= lt!304699 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18505 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654099 () Bool)

(declare-fun e!375615 () Unit!22384)

(declare-fun Unit!22387 () Unit!22384)

(assert (=> b!654099 (= e!375615 Unit!22387)))

(declare-fun lt!304700 () array!38618)

(declare-fun lt!304704 () Unit!22384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38618 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22384)

(assert (=> b!654099 (= lt!304704 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304700 (select (arr!18505 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654099 (arrayContainsKey!0 lt!304700 (select (arr!18505 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!304698 () Unit!22384)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!12599 0))(
  ( (Nil!12596) (Cons!12595 (h!13640 (_ BitVec 64)) (t!18835 List!12599)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38618 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12599) Unit!22384)

(assert (=> b!654099 (= lt!304698 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12596))))

(declare-fun arrayNoDuplicates!0 (array!38618 (_ BitVec 32) List!12599) Bool)

(assert (=> b!654099 (arrayNoDuplicates!0 lt!304700 #b00000000000000000000000000000000 Nil!12596)))

(declare-fun lt!304697 () Unit!22384)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38618 (_ BitVec 32) (_ BitVec 32)) Unit!22384)

(assert (=> b!654099 (= lt!304697 (lemmaNoDuplicateFromThenFromBigger!0 lt!304700 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654099 (arrayNoDuplicates!0 lt!304700 j!136 Nil!12596)))

(declare-fun lt!304695 () Unit!22384)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38618 (_ BitVec 64) (_ BitVec 32) List!12599) Unit!22384)

(assert (=> b!654099 (= lt!304695 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304700 (select (arr!18505 a!2986) j!136) j!136 Nil!12596))))

(assert (=> b!654099 false))

(declare-fun b!654100 () Bool)

(declare-fun res!424343 () Bool)

(assert (=> b!654100 (=> (not res!424343) (not e!375613))))

(assert (=> b!654100 (= res!424343 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12596))))

(declare-fun b!654101 () Bool)

(declare-fun Unit!22388 () Unit!22384)

(assert (=> b!654101 (= e!375615 Unit!22388)))

(declare-fun b!654102 () Bool)

(declare-fun e!375616 () Bool)

(assert (=> b!654102 (= e!375612 (not e!375616))))

(declare-fun res!424344 () Bool)

(assert (=> b!654102 (=> res!424344 e!375616)))

(declare-fun lt!304694 () SeekEntryResult!6952)

(assert (=> b!654102 (= res!424344 (not (= lt!304694 (Found!6952 index!984))))))

(declare-fun lt!304686 () Unit!22384)

(assert (=> b!654102 (= lt!304686 e!375619)))

(declare-fun c!75251 () Bool)

(assert (=> b!654102 (= c!75251 (= lt!304694 Undefined!6952))))

(declare-fun lt!304690 () (_ BitVec 64))

(assert (=> b!654102 (= lt!304694 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304690 lt!304700 mask!3053))))

(declare-fun e!375620 () Bool)

(assert (=> b!654102 e!375620))

(declare-fun res!424336 () Bool)

(assert (=> b!654102 (=> (not res!424336) (not e!375620))))

(declare-fun lt!304692 () SeekEntryResult!6952)

(declare-fun lt!304689 () (_ BitVec 32))

(assert (=> b!654102 (= res!424336 (= lt!304692 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304689 vacantSpotIndex!68 lt!304690 lt!304700 mask!3053)))))

(assert (=> b!654102 (= lt!304692 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304689 vacantSpotIndex!68 (select (arr!18505 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654102 (= lt!304690 (select (store (arr!18505 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!304691 () Unit!22384)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38618 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22384)

(assert (=> b!654102 (= lt!304691 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304689 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654102 (= lt!304689 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654103 () Bool)

(declare-fun res!424345 () Bool)

(assert (=> b!654103 (=> (not res!424345) (not e!375621))))

(assert (=> b!654103 (= res!424345 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654104 () Bool)

(declare-fun e!375617 () Bool)

(assert (=> b!654104 (= e!375616 e!375617)))

(declare-fun res!424337 () Bool)

(assert (=> b!654104 (=> res!424337 e!375617)))

(declare-fun lt!304688 () (_ BitVec 64))

(assert (=> b!654104 (= res!424337 (or (not (= (select (arr!18505 a!2986) j!136) lt!304690)) (not (= (select (arr!18505 a!2986) j!136) lt!304688))))))

(declare-fun e!375622 () Bool)

(assert (=> b!654104 e!375622))

(declare-fun res!424334 () Bool)

(assert (=> b!654104 (=> (not res!424334) (not e!375622))))

(assert (=> b!654104 (= res!424334 (= lt!304688 (select (arr!18505 a!2986) j!136)))))

(assert (=> b!654104 (= lt!304688 (select (store (arr!18505 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!654105 () Bool)

(declare-fun e!375609 () Bool)

(assert (=> b!654105 (= e!375617 e!375609)))

(declare-fun res!424342 () Bool)

(assert (=> b!654105 (=> res!424342 e!375609)))

(assert (=> b!654105 (= res!424342 (bvsge index!984 j!136))))

(declare-fun lt!304702 () Unit!22384)

(assert (=> b!654105 (= lt!304702 e!375615)))

(declare-fun c!75250 () Bool)

(assert (=> b!654105 (= c!75250 (bvslt j!136 index!984))))

(declare-fun b!654106 () Bool)

(assert (=> b!654106 (= e!375620 (= lt!304699 lt!304692))))

(declare-fun res!424340 () Bool)

(assert (=> start!59342 (=> (not res!424340) (not e!375621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59342 (= res!424340 (validMask!0 mask!3053))))

(assert (=> start!59342 e!375621))

(assert (=> start!59342 true))

(declare-fun array_inv!14279 (array!38618) Bool)

(assert (=> start!59342 (array_inv!14279 a!2986)))

(declare-fun b!654094 () Bool)

(assert (=> b!654094 (= e!375613 e!375608)))

(declare-fun res!424339 () Bool)

(assert (=> b!654094 (=> (not res!424339) (not e!375608))))

(assert (=> b!654094 (= res!424339 (= (select (store (arr!18505 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654094 (= lt!304700 (array!38619 (store (arr!18505 a!2986) i!1108 k0!1786) (size!18869 a!2986)))))

(declare-fun b!654107 () Bool)

(assert (=> b!654107 (= e!375609 true)))

(assert (=> b!654107 false))

(declare-fun lt!304703 () Unit!22384)

(assert (=> b!654107 (= lt!304703 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304700 (select (arr!18505 a!2986) j!136) index!984 Nil!12596))))

(assert (=> b!654107 (arrayNoDuplicates!0 lt!304700 index!984 Nil!12596)))

(declare-fun lt!304693 () Unit!22384)

(assert (=> b!654107 (= lt!304693 (lemmaNoDuplicateFromThenFromBigger!0 lt!304700 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654107 (arrayNoDuplicates!0 lt!304700 #b00000000000000000000000000000000 Nil!12596)))

(declare-fun lt!304696 () Unit!22384)

(assert (=> b!654107 (= lt!304696 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12596))))

(assert (=> b!654107 (arrayContainsKey!0 lt!304700 (select (arr!18505 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304701 () Unit!22384)

(assert (=> b!654107 (= lt!304701 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304700 (select (arr!18505 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!375618 () Bool)

(assert (=> b!654107 e!375618))

(declare-fun res!424335 () Bool)

(assert (=> b!654107 (=> (not res!424335) (not e!375618))))

(assert (=> b!654107 (= res!424335 (arrayContainsKey!0 lt!304700 (select (arr!18505 a!2986) j!136) j!136))))

(declare-fun b!654108 () Bool)

(declare-fun res!424341 () Bool)

(assert (=> b!654108 (=> (not res!424341) (not e!375621))))

(assert (=> b!654108 (= res!424341 (and (= (size!18869 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18869 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18869 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654109 () Bool)

(declare-fun res!424328 () Bool)

(assert (=> b!654109 (=> (not res!424328) (not e!375621))))

(assert (=> b!654109 (= res!424328 (validKeyInArray!0 k0!1786))))

(declare-fun b!654110 () Bool)

(declare-fun res!424332 () Bool)

(assert (=> b!654110 (=> (not res!424332) (not e!375613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38618 (_ BitVec 32)) Bool)

(assert (=> b!654110 (= res!424332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654111 () Bool)

(declare-fun Unit!22389 () Unit!22384)

(assert (=> b!654111 (= e!375619 Unit!22389)))

(assert (=> b!654111 false))

(declare-fun b!654112 () Bool)

(declare-fun e!375614 () Bool)

(assert (=> b!654112 (= e!375622 e!375614)))

(declare-fun res!424329 () Bool)

(assert (=> b!654112 (=> res!424329 e!375614)))

(assert (=> b!654112 (= res!424329 (or (not (= (select (arr!18505 a!2986) j!136) lt!304690)) (not (= (select (arr!18505 a!2986) j!136) lt!304688)) (bvsge j!136 index!984)))))

(declare-fun b!654113 () Bool)

(declare-fun e!375611 () Bool)

(assert (=> b!654113 (= e!375611 (arrayContainsKey!0 lt!304700 (select (arr!18505 a!2986) j!136) index!984))))

(declare-fun b!654114 () Bool)

(assert (=> b!654114 (= e!375618 (arrayContainsKey!0 lt!304700 (select (arr!18505 a!2986) j!136) index!984))))

(declare-fun b!654115 () Bool)

(assert (=> b!654115 (= e!375621 e!375613)))

(declare-fun res!424330 () Bool)

(assert (=> b!654115 (=> (not res!424330) (not e!375613))))

(declare-fun lt!304687 () SeekEntryResult!6952)

(assert (=> b!654115 (= res!424330 (or (= lt!304687 (MissingZero!6952 i!1108)) (= lt!304687 (MissingVacant!6952 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38618 (_ BitVec 32)) SeekEntryResult!6952)

(assert (=> b!654115 (= lt!304687 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!654116 () Bool)

(assert (=> b!654116 (= e!375614 e!375611)))

(declare-fun res!424333 () Bool)

(assert (=> b!654116 (=> (not res!424333) (not e!375611))))

(assert (=> b!654116 (= res!424333 (arrayContainsKey!0 lt!304700 (select (arr!18505 a!2986) j!136) j!136))))

(assert (= (and start!59342 res!424340) b!654108))

(assert (= (and b!654108 res!424341) b!654097))

(assert (= (and b!654097 res!424338) b!654109))

(assert (= (and b!654109 res!424328) b!654103))

(assert (= (and b!654103 res!424345) b!654115))

(assert (= (and b!654115 res!424330) b!654110))

(assert (= (and b!654110 res!424332) b!654100))

(assert (= (and b!654100 res!424343) b!654096))

(assert (= (and b!654096 res!424346) b!654094))

(assert (= (and b!654094 res!424339) b!654098))

(assert (= (and b!654098 res!424331) b!654102))

(assert (= (and b!654102 res!424336) b!654106))

(assert (= (and b!654102 c!75251) b!654111))

(assert (= (and b!654102 (not c!75251)) b!654095))

(assert (= (and b!654102 (not res!424344)) b!654104))

(assert (= (and b!654104 res!424334) b!654112))

(assert (= (and b!654112 (not res!424329)) b!654116))

(assert (= (and b!654116 res!424333) b!654113))

(assert (= (and b!654104 (not res!424337)) b!654105))

(assert (= (and b!654105 c!75250) b!654099))

(assert (= (and b!654105 (not c!75250)) b!654101))

(assert (= (and b!654105 (not res!424342)) b!654107))

(assert (= (and b!654107 res!424335) b!654114))

(declare-fun m!627271 () Bool)

(assert (=> b!654102 m!627271))

(declare-fun m!627273 () Bool)

(assert (=> b!654102 m!627273))

(declare-fun m!627275 () Bool)

(assert (=> b!654102 m!627275))

(declare-fun m!627277 () Bool)

(assert (=> b!654102 m!627277))

(declare-fun m!627279 () Bool)

(assert (=> b!654102 m!627279))

(declare-fun m!627281 () Bool)

(assert (=> b!654102 m!627281))

(assert (=> b!654102 m!627275))

(declare-fun m!627283 () Bool)

(assert (=> b!654102 m!627283))

(declare-fun m!627285 () Bool)

(assert (=> b!654102 m!627285))

(declare-fun m!627287 () Bool)

(assert (=> b!654098 m!627287))

(assert (=> b!654098 m!627275))

(assert (=> b!654098 m!627275))

(declare-fun m!627289 () Bool)

(assert (=> b!654098 m!627289))

(assert (=> b!654094 m!627285))

(declare-fun m!627291 () Bool)

(assert (=> b!654094 m!627291))

(assert (=> b!654114 m!627275))

(assert (=> b!654114 m!627275))

(declare-fun m!627293 () Bool)

(assert (=> b!654114 m!627293))

(assert (=> b!654112 m!627275))

(declare-fun m!627295 () Bool)

(assert (=> b!654110 m!627295))

(assert (=> b!654113 m!627275))

(assert (=> b!654113 m!627275))

(assert (=> b!654113 m!627293))

(declare-fun m!627297 () Bool)

(assert (=> b!654100 m!627297))

(declare-fun m!627299 () Bool)

(assert (=> b!654099 m!627299))

(declare-fun m!627301 () Bool)

(assert (=> b!654099 m!627301))

(assert (=> b!654099 m!627275))

(assert (=> b!654099 m!627275))

(declare-fun m!627303 () Bool)

(assert (=> b!654099 m!627303))

(assert (=> b!654099 m!627275))

(declare-fun m!627305 () Bool)

(assert (=> b!654099 m!627305))

(declare-fun m!627307 () Bool)

(assert (=> b!654099 m!627307))

(assert (=> b!654099 m!627275))

(declare-fun m!627309 () Bool)

(assert (=> b!654099 m!627309))

(declare-fun m!627311 () Bool)

(assert (=> b!654099 m!627311))

(declare-fun m!627313 () Bool)

(assert (=> start!59342 m!627313))

(declare-fun m!627315 () Bool)

(assert (=> start!59342 m!627315))

(assert (=> b!654097 m!627275))

(assert (=> b!654097 m!627275))

(declare-fun m!627317 () Bool)

(assert (=> b!654097 m!627317))

(declare-fun m!627319 () Bool)

(assert (=> b!654096 m!627319))

(declare-fun m!627321 () Bool)

(assert (=> b!654115 m!627321))

(assert (=> b!654116 m!627275))

(assert (=> b!654116 m!627275))

(declare-fun m!627323 () Bool)

(assert (=> b!654116 m!627323))

(assert (=> b!654104 m!627275))

(assert (=> b!654104 m!627285))

(declare-fun m!627325 () Bool)

(assert (=> b!654104 m!627325))

(assert (=> b!654107 m!627299))

(assert (=> b!654107 m!627275))

(declare-fun m!627327 () Bool)

(assert (=> b!654107 m!627327))

(assert (=> b!654107 m!627275))

(declare-fun m!627329 () Bool)

(assert (=> b!654107 m!627329))

(assert (=> b!654107 m!627275))

(declare-fun m!627331 () Bool)

(assert (=> b!654107 m!627331))

(declare-fun m!627333 () Bool)

(assert (=> b!654107 m!627333))

(assert (=> b!654107 m!627275))

(assert (=> b!654107 m!627323))

(assert (=> b!654107 m!627275))

(declare-fun m!627335 () Bool)

(assert (=> b!654107 m!627335))

(assert (=> b!654107 m!627307))

(declare-fun m!627337 () Bool)

(assert (=> b!654109 m!627337))

(declare-fun m!627339 () Bool)

(assert (=> b!654103 m!627339))

(check-sat (not b!654114) (not b!654116) (not b!654100) (not b!654098) (not b!654103) (not b!654113) (not b!654097) (not b!654115) (not b!654110) (not b!654109) (not b!654102) (not start!59342) (not b!654099) (not b!654107))
(check-sat)
