; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59624 () Bool)

(assert start!59624)

(declare-fun b!658944 () Bool)

(declare-fun e!378565 () Bool)

(declare-fun e!378558 () Bool)

(assert (=> b!658944 (= e!378565 e!378558)))

(declare-fun res!427444 () Bool)

(assert (=> b!658944 (=> (not res!427444) (not e!378558))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7009 0))(
  ( (MissingZero!7009 (index!30400 (_ BitVec 32))) (Found!7009 (index!30401 (_ BitVec 32))) (Intermediate!7009 (undefined!7821 Bool) (index!30402 (_ BitVec 32)) (x!59213 (_ BitVec 32))) (Undefined!7009) (MissingVacant!7009 (index!30403 (_ BitVec 32))) )
))
(declare-fun lt!308420 () SeekEntryResult!7009)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38738 0))(
  ( (array!38739 (arr!18562 (Array (_ BitVec 32) (_ BitVec 64))) (size!18926 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38738)

(assert (=> b!658944 (= res!427444 (and (= lt!308420 (Found!7009 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18562 a!2986) index!984) (select (arr!18562 a!2986) j!136))) (not (= (select (arr!18562 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38738 (_ BitVec 32)) SeekEntryResult!7009)

(assert (=> b!658944 (= lt!308420 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658945 () Bool)

(declare-fun res!427443 () Bool)

(declare-fun e!378570 () Bool)

(assert (=> b!658945 (=> (not res!427443) (not e!378570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38738 (_ BitVec 32)) Bool)

(assert (=> b!658945 (= res!427443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658946 () Bool)

(declare-datatypes ((Unit!22934 0))(
  ( (Unit!22935) )
))
(declare-fun e!378568 () Unit!22934)

(declare-fun Unit!22936 () Unit!22934)

(assert (=> b!658946 (= e!378568 Unit!22936)))

(assert (=> b!658946 false))

(declare-fun b!658947 () Bool)

(declare-fun Unit!22937 () Unit!22934)

(assert (=> b!658947 (= e!378568 Unit!22937)))

(declare-fun b!658948 () Bool)

(assert (=> b!658948 (= e!378570 e!378565)))

(declare-fun res!427437 () Bool)

(assert (=> b!658948 (=> (not res!427437) (not e!378565))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!658948 (= res!427437 (= (select (store (arr!18562 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!308421 () array!38738)

(assert (=> b!658948 (= lt!308421 (array!38739 (store (arr!18562 a!2986) i!1108 k0!1786) (size!18926 a!2986)))))

(declare-fun b!658949 () Bool)

(declare-fun e!378563 () Bool)

(assert (=> b!658949 (= e!378563 e!378570)))

(declare-fun res!427436 () Bool)

(assert (=> b!658949 (=> (not res!427436) (not e!378570))))

(declare-fun lt!308409 () SeekEntryResult!7009)

(assert (=> b!658949 (= res!427436 (or (= lt!308409 (MissingZero!7009 i!1108)) (= lt!308409 (MissingVacant!7009 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38738 (_ BitVec 32)) SeekEntryResult!7009)

(assert (=> b!658949 (= lt!308409 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!658950 () Bool)

(assert (=> b!658950 false))

(declare-fun lt!308416 () Unit!22934)

(declare-datatypes ((List!12656 0))(
  ( (Nil!12653) (Cons!12652 (h!13697 (_ BitVec 64)) (t!18892 List!12656)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38738 (_ BitVec 64) (_ BitVec 32) List!12656) Unit!22934)

(assert (=> b!658950 (= lt!308416 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136 Nil!12653))))

(declare-fun arrayNoDuplicates!0 (array!38738 (_ BitVec 32) List!12656) Bool)

(assert (=> b!658950 (arrayNoDuplicates!0 lt!308421 j!136 Nil!12653)))

(declare-fun lt!308417 () Unit!22934)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38738 (_ BitVec 32) (_ BitVec 32)) Unit!22934)

(assert (=> b!658950 (= lt!308417 (lemmaNoDuplicateFromThenFromBigger!0 lt!308421 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658950 (arrayNoDuplicates!0 lt!308421 #b00000000000000000000000000000000 Nil!12653)))

(declare-fun lt!308423 () Unit!22934)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12656) Unit!22934)

(assert (=> b!658950 (= lt!308423 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12653))))

(declare-fun arrayContainsKey!0 (array!38738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658950 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308412 () Unit!22934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22934)

(assert (=> b!658950 (= lt!308412 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!378564 () Unit!22934)

(declare-fun Unit!22938 () Unit!22934)

(assert (=> b!658950 (= e!378564 Unit!22938)))

(declare-fun b!658951 () Bool)

(declare-fun res!427432 () Bool)

(assert (=> b!658951 (=> (not res!427432) (not e!378570))))

(assert (=> b!658951 (= res!427432 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12653))))

(declare-fun b!658952 () Bool)

(declare-fun e!378569 () Unit!22934)

(declare-fun Unit!22939 () Unit!22934)

(assert (=> b!658952 (= e!378569 Unit!22939)))

(declare-fun b!658953 () Bool)

(declare-fun e!378567 () Bool)

(assert (=> b!658953 (= e!378567 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984))))

(declare-fun b!658954 () Bool)

(declare-fun e!378559 () Unit!22934)

(declare-fun Unit!22940 () Unit!22934)

(assert (=> b!658954 (= e!378559 Unit!22940)))

(declare-fun b!658955 () Bool)

(declare-fun res!427438 () Bool)

(assert (=> b!658955 (=> (not res!427438) (not e!378563))))

(assert (=> b!658955 (= res!427438 (and (= (size!18926 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18926 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18926 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!308408 () SeekEntryResult!7009)

(declare-fun b!658956 () Bool)

(assert (=> b!658956 (= e!378558 (not (or (= lt!308408 (MissingVacant!7009 vacantSpotIndex!68)) (= lt!308420 lt!308408))))))

(declare-fun lt!308411 () Unit!22934)

(assert (=> b!658956 (= lt!308411 e!378569)))

(declare-fun c!76126 () Bool)

(assert (=> b!658956 (= c!76126 (= lt!308408 (Found!7009 index!984)))))

(declare-fun lt!308414 () Unit!22934)

(assert (=> b!658956 (= lt!308414 e!378568)))

(declare-fun c!76124 () Bool)

(assert (=> b!658956 (= c!76124 (= lt!308408 Undefined!7009))))

(declare-fun lt!308425 () (_ BitVec 64))

(assert (=> b!658956 (= lt!308408 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308425 lt!308421 mask!3053))))

(declare-fun e!378571 () Bool)

(assert (=> b!658956 e!378571))

(declare-fun res!427442 () Bool)

(assert (=> b!658956 (=> (not res!427442) (not e!378571))))

(declare-fun lt!308413 () SeekEntryResult!7009)

(declare-fun lt!308419 () (_ BitVec 32))

(assert (=> b!658956 (= res!427442 (= lt!308413 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 lt!308425 lt!308421 mask!3053)))))

(assert (=> b!658956 (= lt!308413 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658956 (= lt!308425 (select (store (arr!18562 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!308427 () Unit!22934)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38738 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22934)

(assert (=> b!658956 (= lt!308427 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658956 (= lt!308419 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658957 () Bool)

(declare-fun res!427440 () Bool)

(assert (=> b!658957 (=> (not res!427440) (not e!378563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658957 (= res!427440 (validKeyInArray!0 k0!1786))))

(declare-fun res!427439 () Bool)

(assert (=> start!59624 (=> (not res!427439) (not e!378563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59624 (= res!427439 (validMask!0 mask!3053))))

(assert (=> start!59624 e!378563))

(assert (=> start!59624 true))

(declare-fun array_inv!14336 (array!38738) Bool)

(assert (=> start!59624 (array_inv!14336 a!2986)))

(declare-fun b!658958 () Bool)

(assert (=> b!658958 (= e!378571 (= lt!308420 lt!308413))))

(declare-fun b!658959 () Bool)

(declare-fun res!427441 () Bool)

(assert (=> b!658959 (=> (not res!427441) (not e!378563))))

(assert (=> b!658959 (= res!427441 (validKeyInArray!0 (select (arr!18562 a!2986) j!136)))))

(declare-fun b!658960 () Bool)

(declare-fun res!427445 () Bool)

(assert (=> b!658960 (=> (not res!427445) (not e!378570))))

(assert (=> b!658960 (= res!427445 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18562 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658961 () Bool)

(assert (=> b!658961 false))

(declare-fun lt!308418 () Unit!22934)

(assert (=> b!658961 (= lt!308418 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984 Nil!12653))))

(assert (=> b!658961 (arrayNoDuplicates!0 lt!308421 index!984 Nil!12653)))

(declare-fun lt!308422 () Unit!22934)

(assert (=> b!658961 (= lt!308422 (lemmaNoDuplicateFromThenFromBigger!0 lt!308421 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658961 (arrayNoDuplicates!0 lt!308421 #b00000000000000000000000000000000 Nil!12653)))

(declare-fun lt!308424 () Unit!22934)

(assert (=> b!658961 (= lt!308424 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12653))))

(assert (=> b!658961 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308410 () Unit!22934)

(assert (=> b!658961 (= lt!308410 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378561 () Bool)

(assert (=> b!658961 e!378561))

(declare-fun res!427435 () Bool)

(assert (=> b!658961 (=> (not res!427435) (not e!378561))))

(assert (=> b!658961 (= res!427435 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136))))

(declare-fun Unit!22941 () Unit!22934)

(assert (=> b!658961 (= e!378559 Unit!22941)))

(declare-fun b!658962 () Bool)

(declare-fun res!427433 () Bool)

(assert (=> b!658962 (= res!427433 (bvsge j!136 index!984))))

(declare-fun e!378560 () Bool)

(assert (=> b!658962 (=> res!427433 e!378560)))

(declare-fun e!378566 () Bool)

(assert (=> b!658962 (= e!378566 e!378560)))

(declare-fun b!658963 () Bool)

(declare-fun Unit!22942 () Unit!22934)

(assert (=> b!658963 (= e!378564 Unit!22942)))

(declare-fun b!658964 () Bool)

(assert (=> b!658964 (= e!378561 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984))))

(declare-fun res!427431 () Bool)

(declare-fun b!658965 () Bool)

(assert (=> b!658965 (= res!427431 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136))))

(assert (=> b!658965 (=> (not res!427431) (not e!378567))))

(assert (=> b!658965 (= e!378560 e!378567)))

(declare-fun b!658966 () Bool)

(declare-fun Unit!22943 () Unit!22934)

(assert (=> b!658966 (= e!378569 Unit!22943)))

(declare-fun res!427430 () Bool)

(assert (=> b!658966 (= res!427430 (= (select (store (arr!18562 a!2986) i!1108 k0!1786) index!984) (select (arr!18562 a!2986) j!136)))))

(assert (=> b!658966 (=> (not res!427430) (not e!378566))))

(assert (=> b!658966 e!378566))

(declare-fun c!76125 () Bool)

(assert (=> b!658966 (= c!76125 (bvslt j!136 index!984))))

(declare-fun lt!308426 () Unit!22934)

(assert (=> b!658966 (= lt!308426 e!378564)))

(declare-fun c!76127 () Bool)

(assert (=> b!658966 (= c!76127 (bvslt index!984 j!136))))

(declare-fun lt!308415 () Unit!22934)

(assert (=> b!658966 (= lt!308415 e!378559)))

(assert (=> b!658966 false))

(declare-fun b!658967 () Bool)

(declare-fun res!427434 () Bool)

(assert (=> b!658967 (=> (not res!427434) (not e!378563))))

(assert (=> b!658967 (= res!427434 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!59624 res!427439) b!658955))

(assert (= (and b!658955 res!427438) b!658959))

(assert (= (and b!658959 res!427441) b!658957))

(assert (= (and b!658957 res!427440) b!658967))

(assert (= (and b!658967 res!427434) b!658949))

(assert (= (and b!658949 res!427436) b!658945))

(assert (= (and b!658945 res!427443) b!658951))

(assert (= (and b!658951 res!427432) b!658960))

(assert (= (and b!658960 res!427445) b!658948))

(assert (= (and b!658948 res!427437) b!658944))

(assert (= (and b!658944 res!427444) b!658956))

(assert (= (and b!658956 res!427442) b!658958))

(assert (= (and b!658956 c!76124) b!658946))

(assert (= (and b!658956 (not c!76124)) b!658947))

(assert (= (and b!658956 c!76126) b!658966))

(assert (= (and b!658956 (not c!76126)) b!658952))

(assert (= (and b!658966 res!427430) b!658962))

(assert (= (and b!658962 (not res!427433)) b!658965))

(assert (= (and b!658965 res!427431) b!658953))

(assert (= (and b!658966 c!76125) b!658950))

(assert (= (and b!658966 (not c!76125)) b!658963))

(assert (= (and b!658966 c!76127) b!658961))

(assert (= (and b!658966 (not c!76127)) b!658954))

(assert (= (and b!658961 res!427435) b!658964))

(declare-fun m!631981 () Bool)

(assert (=> b!658944 m!631981))

(declare-fun m!631983 () Bool)

(assert (=> b!658944 m!631983))

(assert (=> b!658944 m!631983))

(declare-fun m!631985 () Bool)

(assert (=> b!658944 m!631985))

(declare-fun m!631987 () Bool)

(assert (=> b!658956 m!631987))

(assert (=> b!658956 m!631983))

(declare-fun m!631989 () Bool)

(assert (=> b!658956 m!631989))

(declare-fun m!631991 () Bool)

(assert (=> b!658956 m!631991))

(declare-fun m!631993 () Bool)

(assert (=> b!658956 m!631993))

(assert (=> b!658956 m!631983))

(declare-fun m!631995 () Bool)

(assert (=> b!658956 m!631995))

(declare-fun m!631997 () Bool)

(assert (=> b!658956 m!631997))

(declare-fun m!631999 () Bool)

(assert (=> b!658956 m!631999))

(assert (=> b!658966 m!631989))

(declare-fun m!632001 () Bool)

(assert (=> b!658966 m!632001))

(assert (=> b!658966 m!631983))

(declare-fun m!632003 () Bool)

(assert (=> b!658949 m!632003))

(declare-fun m!632005 () Bool)

(assert (=> b!658961 m!632005))

(assert (=> b!658961 m!631983))

(assert (=> b!658961 m!631983))

(declare-fun m!632007 () Bool)

(assert (=> b!658961 m!632007))

(assert (=> b!658961 m!631983))

(declare-fun m!632009 () Bool)

(assert (=> b!658961 m!632009))

(declare-fun m!632011 () Bool)

(assert (=> b!658961 m!632011))

(assert (=> b!658961 m!631983))

(declare-fun m!632013 () Bool)

(assert (=> b!658961 m!632013))

(assert (=> b!658961 m!631983))

(declare-fun m!632015 () Bool)

(assert (=> b!658961 m!632015))

(declare-fun m!632017 () Bool)

(assert (=> b!658961 m!632017))

(declare-fun m!632019 () Bool)

(assert (=> b!658961 m!632019))

(declare-fun m!632021 () Bool)

(assert (=> b!658951 m!632021))

(declare-fun m!632023 () Bool)

(assert (=> start!59624 m!632023))

(declare-fun m!632025 () Bool)

(assert (=> start!59624 m!632025))

(declare-fun m!632027 () Bool)

(assert (=> b!658960 m!632027))

(assert (=> b!658959 m!631983))

(assert (=> b!658959 m!631983))

(declare-fun m!632029 () Bool)

(assert (=> b!658959 m!632029))

(declare-fun m!632031 () Bool)

(assert (=> b!658967 m!632031))

(assert (=> b!658950 m!632005))

(assert (=> b!658950 m!631983))

(assert (=> b!658950 m!631983))

(declare-fun m!632033 () Bool)

(assert (=> b!658950 m!632033))

(assert (=> b!658950 m!631983))

(declare-fun m!632035 () Bool)

(assert (=> b!658950 m!632035))

(declare-fun m!632037 () Bool)

(assert (=> b!658950 m!632037))

(declare-fun m!632039 () Bool)

(assert (=> b!658950 m!632039))

(assert (=> b!658950 m!631983))

(declare-fun m!632041 () Bool)

(assert (=> b!658950 m!632041))

(assert (=> b!658950 m!632019))

(assert (=> b!658964 m!631983))

(assert (=> b!658964 m!631983))

(declare-fun m!632043 () Bool)

(assert (=> b!658964 m!632043))

(declare-fun m!632045 () Bool)

(assert (=> b!658945 m!632045))

(declare-fun m!632047 () Bool)

(assert (=> b!658957 m!632047))

(assert (=> b!658948 m!631989))

(declare-fun m!632049 () Bool)

(assert (=> b!658948 m!632049))

(assert (=> b!658965 m!631983))

(assert (=> b!658965 m!631983))

(assert (=> b!658965 m!632013))

(assert (=> b!658953 m!631983))

(assert (=> b!658953 m!631983))

(assert (=> b!658953 m!632043))

(check-sat (not b!658957) (not b!658959) (not b!658949) (not b!658950) (not b!658945) (not b!658944) (not b!658964) (not b!658956) (not b!658965) (not b!658967) (not b!658953) (not b!658961) (not start!59624) (not b!658951))
(check-sat)
(get-model)

(declare-fun d!92827 () Bool)

(assert (=> d!92827 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!658957 d!92827))

(declare-fun d!92829 () Bool)

(assert (=> d!92829 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59624 d!92829))

(declare-fun d!92831 () Bool)

(assert (=> d!92831 (= (array_inv!14336 a!2986) (bvsge (size!18926 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59624 d!92831))

(declare-fun d!92833 () Bool)

(declare-fun e!378616 () Bool)

(assert (=> d!92833 e!378616))

(declare-fun res!427496 () Bool)

(assert (=> d!92833 (=> (not res!427496) (not e!378616))))

(assert (=> d!92833 (= res!427496 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18926 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18926 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18926 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18926 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18926 a!2986))))))

(declare-fun lt!308490 () Unit!22934)

(declare-fun choose!9 (array!38738 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22934)

(assert (=> d!92833 (= lt!308490 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92833 (validMask!0 mask!3053)))

(assert (=> d!92833 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 mask!3053) lt!308490)))

(declare-fun b!659042 () Bool)

(assert (=> b!659042 (= e!378616 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 (select (store (arr!18562 a!2986) i!1108 k0!1786) j!136) (array!38739 (store (arr!18562 a!2986) i!1108 k0!1786) (size!18926 a!2986)) mask!3053)))))

(assert (= (and d!92833 res!427496) b!659042))

(declare-fun m!632121 () Bool)

(assert (=> d!92833 m!632121))

(assert (=> d!92833 m!632023))

(assert (=> b!659042 m!631983))

(assert (=> b!659042 m!631987))

(declare-fun m!632123 () Bool)

(assert (=> b!659042 m!632123))

(assert (=> b!659042 m!631989))

(assert (=> b!659042 m!631983))

(assert (=> b!659042 m!631995))

(assert (=> b!659042 m!631987))

(assert (=> b!658956 d!92833))

(declare-fun b!659055 () Bool)

(declare-fun c!76147 () Bool)

(declare-fun lt!308495 () (_ BitVec 64))

(assert (=> b!659055 (= c!76147 (= lt!308495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!378623 () SeekEntryResult!7009)

(declare-fun e!378624 () SeekEntryResult!7009)

(assert (=> b!659055 (= e!378623 e!378624)))

(declare-fun b!659056 () Bool)

(assert (=> b!659056 (= e!378624 (MissingVacant!7009 vacantSpotIndex!68))))

(declare-fun d!92835 () Bool)

(declare-fun lt!308496 () SeekEntryResult!7009)

(get-info :version)

(assert (=> d!92835 (and (or ((_ is Undefined!7009) lt!308496) (not ((_ is Found!7009) lt!308496)) (and (bvsge (index!30401 lt!308496) #b00000000000000000000000000000000) (bvslt (index!30401 lt!308496) (size!18926 lt!308421)))) (or ((_ is Undefined!7009) lt!308496) ((_ is Found!7009) lt!308496) (not ((_ is MissingVacant!7009) lt!308496)) (not (= (index!30403 lt!308496) vacantSpotIndex!68)) (and (bvsge (index!30403 lt!308496) #b00000000000000000000000000000000) (bvslt (index!30403 lt!308496) (size!18926 lt!308421)))) (or ((_ is Undefined!7009) lt!308496) (ite ((_ is Found!7009) lt!308496) (= (select (arr!18562 lt!308421) (index!30401 lt!308496)) lt!308425) (and ((_ is MissingVacant!7009) lt!308496) (= (index!30403 lt!308496) vacantSpotIndex!68) (= (select (arr!18562 lt!308421) (index!30403 lt!308496)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!378625 () SeekEntryResult!7009)

(assert (=> d!92835 (= lt!308496 e!378625)))

(declare-fun c!76146 () Bool)

(assert (=> d!92835 (= c!76146 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92835 (= lt!308495 (select (arr!18562 lt!308421) index!984))))

(assert (=> d!92835 (validMask!0 mask!3053)))

(assert (=> d!92835 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308425 lt!308421 mask!3053) lt!308496)))

(declare-fun b!659057 () Bool)

(assert (=> b!659057 (= e!378624 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!308425 lt!308421 mask!3053))))

(declare-fun b!659058 () Bool)

(assert (=> b!659058 (= e!378625 Undefined!7009)))

(declare-fun b!659059 () Bool)

(assert (=> b!659059 (= e!378623 (Found!7009 index!984))))

(declare-fun b!659060 () Bool)

(assert (=> b!659060 (= e!378625 e!378623)))

(declare-fun c!76148 () Bool)

(assert (=> b!659060 (= c!76148 (= lt!308495 lt!308425))))

(assert (= (and d!92835 c!76146) b!659058))

(assert (= (and d!92835 (not c!76146)) b!659060))

(assert (= (and b!659060 c!76148) b!659059))

(assert (= (and b!659060 (not c!76148)) b!659055))

(assert (= (and b!659055 c!76147) b!659056))

(assert (= (and b!659055 (not c!76147)) b!659057))

(declare-fun m!632125 () Bool)

(assert (=> d!92835 m!632125))

(declare-fun m!632127 () Bool)

(assert (=> d!92835 m!632127))

(declare-fun m!632129 () Bool)

(assert (=> d!92835 m!632129))

(assert (=> d!92835 m!632023))

(assert (=> b!659057 m!631997))

(assert (=> b!659057 m!631997))

(declare-fun m!632131 () Bool)

(assert (=> b!659057 m!632131))

(assert (=> b!658956 d!92835))

(declare-fun b!659061 () Bool)

(declare-fun c!76150 () Bool)

(declare-fun lt!308497 () (_ BitVec 64))

(assert (=> b!659061 (= c!76150 (= lt!308497 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!378626 () SeekEntryResult!7009)

(declare-fun e!378627 () SeekEntryResult!7009)

(assert (=> b!659061 (= e!378626 e!378627)))

(declare-fun b!659062 () Bool)

(assert (=> b!659062 (= e!378627 (MissingVacant!7009 vacantSpotIndex!68))))

(declare-fun lt!308498 () SeekEntryResult!7009)

(declare-fun d!92839 () Bool)

(assert (=> d!92839 (and (or ((_ is Undefined!7009) lt!308498) (not ((_ is Found!7009) lt!308498)) (and (bvsge (index!30401 lt!308498) #b00000000000000000000000000000000) (bvslt (index!30401 lt!308498) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308498) ((_ is Found!7009) lt!308498) (not ((_ is MissingVacant!7009) lt!308498)) (not (= (index!30403 lt!308498) vacantSpotIndex!68)) (and (bvsge (index!30403 lt!308498) #b00000000000000000000000000000000) (bvslt (index!30403 lt!308498) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308498) (ite ((_ is Found!7009) lt!308498) (= (select (arr!18562 a!2986) (index!30401 lt!308498)) (select (arr!18562 a!2986) j!136)) (and ((_ is MissingVacant!7009) lt!308498) (= (index!30403 lt!308498) vacantSpotIndex!68) (= (select (arr!18562 a!2986) (index!30403 lt!308498)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!378628 () SeekEntryResult!7009)

(assert (=> d!92839 (= lt!308498 e!378628)))

(declare-fun c!76149 () Bool)

(assert (=> d!92839 (= c!76149 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92839 (= lt!308497 (select (arr!18562 a!2986) lt!308419))))

(assert (=> d!92839 (validMask!0 mask!3053)))

(assert (=> d!92839 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053) lt!308498)))

(declare-fun b!659063 () Bool)

(assert (=> b!659063 (= e!378627 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!308419 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!659064 () Bool)

(assert (=> b!659064 (= e!378628 Undefined!7009)))

(declare-fun b!659065 () Bool)

(assert (=> b!659065 (= e!378626 (Found!7009 lt!308419))))

(declare-fun b!659066 () Bool)

(assert (=> b!659066 (= e!378628 e!378626)))

(declare-fun c!76151 () Bool)

(assert (=> b!659066 (= c!76151 (= lt!308497 (select (arr!18562 a!2986) j!136)))))

(assert (= (and d!92839 c!76149) b!659064))

(assert (= (and d!92839 (not c!76149)) b!659066))

(assert (= (and b!659066 c!76151) b!659065))

(assert (= (and b!659066 (not c!76151)) b!659061))

(assert (= (and b!659061 c!76150) b!659062))

(assert (= (and b!659061 (not c!76150)) b!659063))

(declare-fun m!632133 () Bool)

(assert (=> d!92839 m!632133))

(declare-fun m!632135 () Bool)

(assert (=> d!92839 m!632135))

(declare-fun m!632137 () Bool)

(assert (=> d!92839 m!632137))

(assert (=> d!92839 m!632023))

(declare-fun m!632139 () Bool)

(assert (=> b!659063 m!632139))

(assert (=> b!659063 m!632139))

(assert (=> b!659063 m!631983))

(declare-fun m!632141 () Bool)

(assert (=> b!659063 m!632141))

(assert (=> b!658956 d!92839))

(declare-fun d!92841 () Bool)

(declare-fun lt!308501 () (_ BitVec 32))

(assert (=> d!92841 (and (bvsge lt!308501 #b00000000000000000000000000000000) (bvslt lt!308501 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92841 (= lt!308501 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92841 (validMask!0 mask!3053)))

(assert (=> d!92841 (= (nextIndex!0 index!984 x!910 mask!3053) lt!308501)))

(declare-fun bs!19595 () Bool)

(assert (= bs!19595 d!92841))

(declare-fun m!632143 () Bool)

(assert (=> bs!19595 m!632143))

(assert (=> bs!19595 m!632023))

(assert (=> b!658956 d!92841))

(declare-fun b!659067 () Bool)

(declare-fun c!76153 () Bool)

(declare-fun lt!308502 () (_ BitVec 64))

(assert (=> b!659067 (= c!76153 (= lt!308502 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!378629 () SeekEntryResult!7009)

(declare-fun e!378630 () SeekEntryResult!7009)

(assert (=> b!659067 (= e!378629 e!378630)))

(declare-fun b!659068 () Bool)

(assert (=> b!659068 (= e!378630 (MissingVacant!7009 vacantSpotIndex!68))))

(declare-fun lt!308503 () SeekEntryResult!7009)

(declare-fun d!92843 () Bool)

(assert (=> d!92843 (and (or ((_ is Undefined!7009) lt!308503) (not ((_ is Found!7009) lt!308503)) (and (bvsge (index!30401 lt!308503) #b00000000000000000000000000000000) (bvslt (index!30401 lt!308503) (size!18926 lt!308421)))) (or ((_ is Undefined!7009) lt!308503) ((_ is Found!7009) lt!308503) (not ((_ is MissingVacant!7009) lt!308503)) (not (= (index!30403 lt!308503) vacantSpotIndex!68)) (and (bvsge (index!30403 lt!308503) #b00000000000000000000000000000000) (bvslt (index!30403 lt!308503) (size!18926 lt!308421)))) (or ((_ is Undefined!7009) lt!308503) (ite ((_ is Found!7009) lt!308503) (= (select (arr!18562 lt!308421) (index!30401 lt!308503)) lt!308425) (and ((_ is MissingVacant!7009) lt!308503) (= (index!30403 lt!308503) vacantSpotIndex!68) (= (select (arr!18562 lt!308421) (index!30403 lt!308503)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!378631 () SeekEntryResult!7009)

(assert (=> d!92843 (= lt!308503 e!378631)))

(declare-fun c!76152 () Bool)

(assert (=> d!92843 (= c!76152 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92843 (= lt!308502 (select (arr!18562 lt!308421) lt!308419))))

(assert (=> d!92843 (validMask!0 mask!3053)))

(assert (=> d!92843 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308419 vacantSpotIndex!68 lt!308425 lt!308421 mask!3053) lt!308503)))

(declare-fun b!659069 () Bool)

(assert (=> b!659069 (= e!378630 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!308419 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!308425 lt!308421 mask!3053))))

(declare-fun b!659070 () Bool)

(assert (=> b!659070 (= e!378631 Undefined!7009)))

(declare-fun b!659071 () Bool)

(assert (=> b!659071 (= e!378629 (Found!7009 lt!308419))))

(declare-fun b!659072 () Bool)

(assert (=> b!659072 (= e!378631 e!378629)))

(declare-fun c!76154 () Bool)

(assert (=> b!659072 (= c!76154 (= lt!308502 lt!308425))))

(assert (= (and d!92843 c!76152) b!659070))

(assert (= (and d!92843 (not c!76152)) b!659072))

(assert (= (and b!659072 c!76154) b!659071))

(assert (= (and b!659072 (not c!76154)) b!659067))

(assert (= (and b!659067 c!76153) b!659068))

(assert (= (and b!659067 (not c!76153)) b!659069))

(declare-fun m!632145 () Bool)

(assert (=> d!92843 m!632145))

(declare-fun m!632147 () Bool)

(assert (=> d!92843 m!632147))

(declare-fun m!632149 () Bool)

(assert (=> d!92843 m!632149))

(assert (=> d!92843 m!632023))

(assert (=> b!659069 m!632139))

(assert (=> b!659069 m!632139))

(declare-fun m!632151 () Bool)

(assert (=> b!659069 m!632151))

(assert (=> b!658956 d!92843))

(declare-fun bm!33884 () Bool)

(declare-fun call!33887 () Bool)

(assert (=> bm!33884 (= call!33887 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!659082 () Bool)

(declare-fun e!378640 () Bool)

(assert (=> b!659082 (= e!378640 call!33887)))

(declare-fun d!92845 () Bool)

(declare-fun res!427502 () Bool)

(declare-fun e!378638 () Bool)

(assert (=> d!92845 (=> res!427502 e!378638)))

(assert (=> d!92845 (= res!427502 (bvsge #b00000000000000000000000000000000 (size!18926 a!2986)))))

(assert (=> d!92845 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!378638)))

(declare-fun b!659081 () Bool)

(declare-fun e!378639 () Bool)

(assert (=> b!659081 (= e!378639 call!33887)))

(declare-fun b!659083 () Bool)

(assert (=> b!659083 (= e!378640 e!378639)))

(declare-fun lt!308510 () (_ BitVec 64))

(assert (=> b!659083 (= lt!308510 (select (arr!18562 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!308512 () Unit!22934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38738 (_ BitVec 64) (_ BitVec 32)) Unit!22934)

(assert (=> b!659083 (= lt!308512 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!308510 #b00000000000000000000000000000000))))

(assert (=> b!659083 (arrayContainsKey!0 a!2986 lt!308510 #b00000000000000000000000000000000)))

(declare-fun lt!308511 () Unit!22934)

(assert (=> b!659083 (= lt!308511 lt!308512)))

(declare-fun res!427501 () Bool)

(assert (=> b!659083 (= res!427501 (= (seekEntryOrOpen!0 (select (arr!18562 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!7009 #b00000000000000000000000000000000)))))

(assert (=> b!659083 (=> (not res!427501) (not e!378639))))

(declare-fun b!659084 () Bool)

(assert (=> b!659084 (= e!378638 e!378640)))

(declare-fun c!76157 () Bool)

(assert (=> b!659084 (= c!76157 (validKeyInArray!0 (select (arr!18562 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!92845 (not res!427502)) b!659084))

(assert (= (and b!659084 c!76157) b!659083))

(assert (= (and b!659084 (not c!76157)) b!659082))

(assert (= (and b!659083 res!427501) b!659081))

(assert (= (or b!659081 b!659082) bm!33884))

(declare-fun m!632153 () Bool)

(assert (=> bm!33884 m!632153))

(declare-fun m!632155 () Bool)

(assert (=> b!659083 m!632155))

(declare-fun m!632157 () Bool)

(assert (=> b!659083 m!632157))

(declare-fun m!632159 () Bool)

(assert (=> b!659083 m!632159))

(assert (=> b!659083 m!632155))

(declare-fun m!632161 () Bool)

(assert (=> b!659083 m!632161))

(assert (=> b!659084 m!632155))

(assert (=> b!659084 m!632155))

(declare-fun m!632163 () Bool)

(assert (=> b!659084 m!632163))

(assert (=> b!658945 d!92845))

(declare-fun d!92847 () Bool)

(declare-fun res!427507 () Bool)

(declare-fun e!378645 () Bool)

(assert (=> d!92847 (=> res!427507 e!378645)))

(assert (=> d!92847 (= res!427507 (= (select (arr!18562 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!92847 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!378645)))

(declare-fun b!659089 () Bool)

(declare-fun e!378646 () Bool)

(assert (=> b!659089 (= e!378645 e!378646)))

(declare-fun res!427508 () Bool)

(assert (=> b!659089 (=> (not res!427508) (not e!378646))))

(assert (=> b!659089 (= res!427508 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18926 a!2986)))))

(declare-fun b!659090 () Bool)

(assert (=> b!659090 (= e!378646 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92847 (not res!427507)) b!659089))

(assert (= (and b!659089 res!427508) b!659090))

(assert (=> d!92847 m!632155))

(declare-fun m!632165 () Bool)

(assert (=> b!659090 m!632165))

(assert (=> b!658967 d!92847))

(declare-fun b!659091 () Bool)

(declare-fun c!76159 () Bool)

(declare-fun lt!308513 () (_ BitVec 64))

(assert (=> b!659091 (= c!76159 (= lt!308513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!378647 () SeekEntryResult!7009)

(declare-fun e!378648 () SeekEntryResult!7009)

(assert (=> b!659091 (= e!378647 e!378648)))

(declare-fun b!659092 () Bool)

(assert (=> b!659092 (= e!378648 (MissingVacant!7009 vacantSpotIndex!68))))

(declare-fun lt!308514 () SeekEntryResult!7009)

(declare-fun d!92849 () Bool)

(assert (=> d!92849 (and (or ((_ is Undefined!7009) lt!308514) (not ((_ is Found!7009) lt!308514)) (and (bvsge (index!30401 lt!308514) #b00000000000000000000000000000000) (bvslt (index!30401 lt!308514) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308514) ((_ is Found!7009) lt!308514) (not ((_ is MissingVacant!7009) lt!308514)) (not (= (index!30403 lt!308514) vacantSpotIndex!68)) (and (bvsge (index!30403 lt!308514) #b00000000000000000000000000000000) (bvslt (index!30403 lt!308514) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308514) (ite ((_ is Found!7009) lt!308514) (= (select (arr!18562 a!2986) (index!30401 lt!308514)) (select (arr!18562 a!2986) j!136)) (and ((_ is MissingVacant!7009) lt!308514) (= (index!30403 lt!308514) vacantSpotIndex!68) (= (select (arr!18562 a!2986) (index!30403 lt!308514)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!378649 () SeekEntryResult!7009)

(assert (=> d!92849 (= lt!308514 e!378649)))

(declare-fun c!76158 () Bool)

(assert (=> d!92849 (= c!76158 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92849 (= lt!308513 (select (arr!18562 a!2986) index!984))))

(assert (=> d!92849 (validMask!0 mask!3053)))

(assert (=> d!92849 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053) lt!308514)))

(declare-fun b!659093 () Bool)

(assert (=> b!659093 (= e!378648 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18562 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!659094 () Bool)

(assert (=> b!659094 (= e!378649 Undefined!7009)))

(declare-fun b!659095 () Bool)

(assert (=> b!659095 (= e!378647 (Found!7009 index!984))))

(declare-fun b!659096 () Bool)

(assert (=> b!659096 (= e!378649 e!378647)))

(declare-fun c!76160 () Bool)

(assert (=> b!659096 (= c!76160 (= lt!308513 (select (arr!18562 a!2986) j!136)))))

(assert (= (and d!92849 c!76158) b!659094))

(assert (= (and d!92849 (not c!76158)) b!659096))

(assert (= (and b!659096 c!76160) b!659095))

(assert (= (and b!659096 (not c!76160)) b!659091))

(assert (= (and b!659091 c!76159) b!659092))

(assert (= (and b!659091 (not c!76159)) b!659093))

(declare-fun m!632167 () Bool)

(assert (=> d!92849 m!632167))

(declare-fun m!632169 () Bool)

(assert (=> d!92849 m!632169))

(assert (=> d!92849 m!631981))

(assert (=> d!92849 m!632023))

(assert (=> b!659093 m!631997))

(assert (=> b!659093 m!631997))

(assert (=> b!659093 m!631983))

(declare-fun m!632171 () Bool)

(assert (=> b!659093 m!632171))

(assert (=> b!658944 d!92849))

(declare-fun d!92851 () Bool)

(declare-fun res!427509 () Bool)

(declare-fun e!378650 () Bool)

(assert (=> d!92851 (=> res!427509 e!378650)))

(assert (=> d!92851 (= res!427509 (= (select (arr!18562 lt!308421) j!136) (select (arr!18562 a!2986) j!136)))))

(assert (=> d!92851 (= (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136) e!378650)))

(declare-fun b!659097 () Bool)

(declare-fun e!378651 () Bool)

(assert (=> b!659097 (= e!378650 e!378651)))

(declare-fun res!427510 () Bool)

(assert (=> b!659097 (=> (not res!427510) (not e!378651))))

(assert (=> b!659097 (= res!427510 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18926 lt!308421)))))

(declare-fun b!659098 () Bool)

(assert (=> b!659098 (= e!378651 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92851 (not res!427509)) b!659097))

(assert (= (and b!659097 res!427510) b!659098))

(declare-fun m!632173 () Bool)

(assert (=> d!92851 m!632173))

(assert (=> b!659098 m!631983))

(declare-fun m!632175 () Bool)

(assert (=> b!659098 m!632175))

(assert (=> b!658965 d!92851))

(declare-fun d!92853 () Bool)

(declare-fun res!427511 () Bool)

(declare-fun e!378652 () Bool)

(assert (=> d!92853 (=> res!427511 e!378652)))

(assert (=> d!92853 (= res!427511 (= (select (arr!18562 lt!308421) index!984) (select (arr!18562 a!2986) j!136)))))

(assert (=> d!92853 (= (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984) e!378652)))

(declare-fun b!659099 () Bool)

(declare-fun e!378653 () Bool)

(assert (=> b!659099 (= e!378652 e!378653)))

(declare-fun res!427512 () Bool)

(assert (=> b!659099 (=> (not res!427512) (not e!378653))))

(assert (=> b!659099 (= res!427512 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18926 lt!308421)))))

(declare-fun b!659100 () Bool)

(assert (=> b!659100 (= e!378653 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92853 (not res!427511)) b!659099))

(assert (= (and b!659099 res!427512) b!659100))

(assert (=> d!92853 m!632129))

(assert (=> b!659100 m!631983))

(declare-fun m!632177 () Bool)

(assert (=> b!659100 m!632177))

(assert (=> b!658964 d!92853))

(assert (=> b!658953 d!92853))

(declare-fun d!92855 () Bool)

(declare-fun res!427513 () Bool)

(declare-fun e!378654 () Bool)

(assert (=> d!92855 (=> res!427513 e!378654)))

(assert (=> d!92855 (= res!427513 (= (select (arr!18562 lt!308421) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18562 a!2986) j!136)))))

(assert (=> d!92855 (= (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!378654)))

(declare-fun b!659101 () Bool)

(declare-fun e!378655 () Bool)

(assert (=> b!659101 (= e!378654 e!378655)))

(declare-fun res!427514 () Bool)

(assert (=> b!659101 (=> (not res!427514) (not e!378655))))

(assert (=> b!659101 (= res!427514 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18926 lt!308421)))))

(declare-fun b!659102 () Bool)

(assert (=> b!659102 (= e!378655 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92855 (not res!427513)) b!659101))

(assert (= (and b!659101 res!427514) b!659102))

(declare-fun m!632179 () Bool)

(assert (=> d!92855 m!632179))

(assert (=> b!659102 m!631983))

(declare-fun m!632181 () Bool)

(assert (=> b!659102 m!632181))

(assert (=> b!658961 d!92855))

(declare-fun d!92857 () Bool)

(assert (=> d!92857 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18926 lt!308421)) (not (= (select (arr!18562 lt!308421) index!984) (select (arr!18562 a!2986) j!136))))))

(declare-fun lt!308523 () Unit!22934)

(declare-fun choose!21 (array!38738 (_ BitVec 64) (_ BitVec 32) List!12656) Unit!22934)

(assert (=> d!92857 (= lt!308523 (choose!21 lt!308421 (select (arr!18562 a!2986) j!136) index!984 Nil!12653))))

(assert (=> d!92857 (bvslt (size!18926 lt!308421) #b01111111111111111111111111111111)))

(assert (=> d!92857 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984 Nil!12653) lt!308523)))

(declare-fun bs!19596 () Bool)

(assert (= bs!19596 d!92857))

(assert (=> bs!19596 m!632129))

(assert (=> bs!19596 m!631983))

(declare-fun m!632183 () Bool)

(assert (=> bs!19596 m!632183))

(assert (=> b!658961 d!92857))

(assert (=> b!658961 d!92851))

(declare-fun d!92861 () Bool)

(assert (=> d!92861 (arrayNoDuplicates!0 lt!308421 index!984 Nil!12653)))

(declare-fun lt!308526 () Unit!22934)

(declare-fun choose!39 (array!38738 (_ BitVec 32) (_ BitVec 32)) Unit!22934)

(assert (=> d!92861 (= lt!308526 (choose!39 lt!308421 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92861 (bvslt (size!18926 lt!308421) #b01111111111111111111111111111111)))

(assert (=> d!92861 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!308421 #b00000000000000000000000000000000 index!984) lt!308526)))

(declare-fun bs!19597 () Bool)

(assert (= bs!19597 d!92861))

(assert (=> bs!19597 m!632011))

(declare-fun m!632185 () Bool)

(assert (=> bs!19597 m!632185))

(assert (=> b!658961 d!92861))

(declare-fun b!659147 () Bool)

(declare-fun e!378690 () Bool)

(declare-fun contains!3198 (List!12656 (_ BitVec 64)) Bool)

(assert (=> b!659147 (= e!378690 (contains!3198 Nil!12653 (select (arr!18562 lt!308421) index!984)))))

(declare-fun b!659148 () Bool)

(declare-fun e!378691 () Bool)

(declare-fun call!33890 () Bool)

(assert (=> b!659148 (= e!378691 call!33890)))

(declare-fun b!659149 () Bool)

(declare-fun e!378689 () Bool)

(assert (=> b!659149 (= e!378689 e!378691)))

(declare-fun c!76172 () Bool)

(assert (=> b!659149 (= c!76172 (validKeyInArray!0 (select (arr!18562 lt!308421) index!984)))))

(declare-fun b!659150 () Bool)

(declare-fun e!378692 () Bool)

(assert (=> b!659150 (= e!378692 e!378689)))

(declare-fun res!427539 () Bool)

(assert (=> b!659150 (=> (not res!427539) (not e!378689))))

(assert (=> b!659150 (= res!427539 (not e!378690))))

(declare-fun res!427538 () Bool)

(assert (=> b!659150 (=> (not res!427538) (not e!378690))))

(assert (=> b!659150 (= res!427538 (validKeyInArray!0 (select (arr!18562 lt!308421) index!984)))))

(declare-fun d!92863 () Bool)

(declare-fun res!427537 () Bool)

(assert (=> d!92863 (=> res!427537 e!378692)))

(assert (=> d!92863 (= res!427537 (bvsge index!984 (size!18926 lt!308421)))))

(assert (=> d!92863 (= (arrayNoDuplicates!0 lt!308421 index!984 Nil!12653) e!378692)))

(declare-fun bm!33887 () Bool)

(assert (=> bm!33887 (= call!33890 (arrayNoDuplicates!0 lt!308421 (bvadd index!984 #b00000000000000000000000000000001) (ite c!76172 (Cons!12652 (select (arr!18562 lt!308421) index!984) Nil!12653) Nil!12653)))))

(declare-fun b!659151 () Bool)

(assert (=> b!659151 (= e!378691 call!33890)))

(assert (= (and d!92863 (not res!427537)) b!659150))

(assert (= (and b!659150 res!427538) b!659147))

(assert (= (and b!659150 res!427539) b!659149))

(assert (= (and b!659149 c!76172) b!659148))

(assert (= (and b!659149 (not c!76172)) b!659151))

(assert (= (or b!659148 b!659151) bm!33887))

(assert (=> b!659147 m!632129))

(assert (=> b!659147 m!632129))

(declare-fun m!632217 () Bool)

(assert (=> b!659147 m!632217))

(assert (=> b!659149 m!632129))

(assert (=> b!659149 m!632129))

(declare-fun m!632219 () Bool)

(assert (=> b!659149 m!632219))

(assert (=> b!659150 m!632129))

(assert (=> b!659150 m!632129))

(assert (=> b!659150 m!632219))

(assert (=> bm!33887 m!632129))

(declare-fun m!632223 () Bool)

(assert (=> bm!33887 m!632223))

(assert (=> b!658961 d!92863))

(declare-fun d!92877 () Bool)

(assert (=> d!92877 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308540 () Unit!22934)

(declare-fun choose!114 (array!38738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22934)

(assert (=> d!92877 (= lt!308540 (choose!114 lt!308421 (select (arr!18562 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92877 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92877 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!308540)))

(declare-fun bs!19600 () Bool)

(assert (= bs!19600 d!92877))

(assert (=> bs!19600 m!631983))

(assert (=> bs!19600 m!632015))

(assert (=> bs!19600 m!631983))

(declare-fun m!632227 () Bool)

(assert (=> bs!19600 m!632227))

(assert (=> b!658961 d!92877))

(declare-fun b!659152 () Bool)

(declare-fun e!378694 () Bool)

(assert (=> b!659152 (= e!378694 (contains!3198 Nil!12653 (select (arr!18562 lt!308421) #b00000000000000000000000000000000)))))

(declare-fun b!659153 () Bool)

(declare-fun e!378695 () Bool)

(declare-fun call!33891 () Bool)

(assert (=> b!659153 (= e!378695 call!33891)))

(declare-fun b!659154 () Bool)

(declare-fun e!378693 () Bool)

(assert (=> b!659154 (= e!378693 e!378695)))

(declare-fun c!76173 () Bool)

(assert (=> b!659154 (= c!76173 (validKeyInArray!0 (select (arr!18562 lt!308421) #b00000000000000000000000000000000)))))

(declare-fun b!659155 () Bool)

(declare-fun e!378696 () Bool)

(assert (=> b!659155 (= e!378696 e!378693)))

(declare-fun res!427542 () Bool)

(assert (=> b!659155 (=> (not res!427542) (not e!378693))))

(assert (=> b!659155 (= res!427542 (not e!378694))))

(declare-fun res!427541 () Bool)

(assert (=> b!659155 (=> (not res!427541) (not e!378694))))

(assert (=> b!659155 (= res!427541 (validKeyInArray!0 (select (arr!18562 lt!308421) #b00000000000000000000000000000000)))))

(declare-fun d!92881 () Bool)

(declare-fun res!427540 () Bool)

(assert (=> d!92881 (=> res!427540 e!378696)))

(assert (=> d!92881 (= res!427540 (bvsge #b00000000000000000000000000000000 (size!18926 lt!308421)))))

(assert (=> d!92881 (= (arrayNoDuplicates!0 lt!308421 #b00000000000000000000000000000000 Nil!12653) e!378696)))

(declare-fun bm!33888 () Bool)

(assert (=> bm!33888 (= call!33891 (arrayNoDuplicates!0 lt!308421 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!76173 (Cons!12652 (select (arr!18562 lt!308421) #b00000000000000000000000000000000) Nil!12653) Nil!12653)))))

(declare-fun b!659156 () Bool)

(assert (=> b!659156 (= e!378695 call!33891)))

(assert (= (and d!92881 (not res!427540)) b!659155))

(assert (= (and b!659155 res!427541) b!659152))

(assert (= (and b!659155 res!427542) b!659154))

(assert (= (and b!659154 c!76173) b!659153))

(assert (= (and b!659154 (not c!76173)) b!659156))

(assert (= (or b!659153 b!659156) bm!33888))

(declare-fun m!632233 () Bool)

(assert (=> b!659152 m!632233))

(assert (=> b!659152 m!632233))

(declare-fun m!632235 () Bool)

(assert (=> b!659152 m!632235))

(assert (=> b!659154 m!632233))

(assert (=> b!659154 m!632233))

(declare-fun m!632237 () Bool)

(assert (=> b!659154 m!632237))

(assert (=> b!659155 m!632233))

(assert (=> b!659155 m!632233))

(assert (=> b!659155 m!632237))

(assert (=> bm!33888 m!632233))

(declare-fun m!632239 () Bool)

(assert (=> bm!33888 m!632239))

(assert (=> b!658961 d!92881))

(declare-fun d!92885 () Bool)

(declare-fun e!378699 () Bool)

(assert (=> d!92885 e!378699))

(declare-fun res!427545 () Bool)

(assert (=> d!92885 (=> (not res!427545) (not e!378699))))

(assert (=> d!92885 (= res!427545 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18926 a!2986))))))

(declare-fun lt!308552 () Unit!22934)

(declare-fun choose!41 (array!38738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12656) Unit!22934)

(assert (=> d!92885 (= lt!308552 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12653))))

(assert (=> d!92885 (bvslt (size!18926 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92885 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12653) lt!308552)))

(declare-fun b!659159 () Bool)

(assert (=> b!659159 (= e!378699 (arrayNoDuplicates!0 (array!38739 (store (arr!18562 a!2986) i!1108 k0!1786) (size!18926 a!2986)) #b00000000000000000000000000000000 Nil!12653))))

(assert (= (and d!92885 res!427545) b!659159))

(declare-fun m!632247 () Bool)

(assert (=> d!92885 m!632247))

(assert (=> b!659159 m!631989))

(declare-fun m!632249 () Bool)

(assert (=> b!659159 m!632249))

(assert (=> b!658961 d!92885))

(declare-fun b!659160 () Bool)

(declare-fun e!378701 () Bool)

(assert (=> b!659160 (= e!378701 (contains!3198 Nil!12653 (select (arr!18562 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!659161 () Bool)

(declare-fun e!378702 () Bool)

(declare-fun call!33892 () Bool)

(assert (=> b!659161 (= e!378702 call!33892)))

(declare-fun b!659162 () Bool)

(declare-fun e!378700 () Bool)

(assert (=> b!659162 (= e!378700 e!378702)))

(declare-fun c!76174 () Bool)

(assert (=> b!659162 (= c!76174 (validKeyInArray!0 (select (arr!18562 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!659163 () Bool)

(declare-fun e!378703 () Bool)

(assert (=> b!659163 (= e!378703 e!378700)))

(declare-fun res!427548 () Bool)

(assert (=> b!659163 (=> (not res!427548) (not e!378700))))

(assert (=> b!659163 (= res!427548 (not e!378701))))

(declare-fun res!427547 () Bool)

(assert (=> b!659163 (=> (not res!427547) (not e!378701))))

(assert (=> b!659163 (= res!427547 (validKeyInArray!0 (select (arr!18562 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92891 () Bool)

(declare-fun res!427546 () Bool)

(assert (=> d!92891 (=> res!427546 e!378703)))

(assert (=> d!92891 (= res!427546 (bvsge #b00000000000000000000000000000000 (size!18926 a!2986)))))

(assert (=> d!92891 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12653) e!378703)))

(declare-fun bm!33889 () Bool)

(assert (=> bm!33889 (= call!33892 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!76174 (Cons!12652 (select (arr!18562 a!2986) #b00000000000000000000000000000000) Nil!12653) Nil!12653)))))

(declare-fun b!659164 () Bool)

(assert (=> b!659164 (= e!378702 call!33892)))

(assert (= (and d!92891 (not res!427546)) b!659163))

(assert (= (and b!659163 res!427547) b!659160))

(assert (= (and b!659163 res!427548) b!659162))

(assert (= (and b!659162 c!76174) b!659161))

(assert (= (and b!659162 (not c!76174)) b!659164))

(assert (= (or b!659161 b!659164) bm!33889))

(assert (=> b!659160 m!632155))

(assert (=> b!659160 m!632155))

(declare-fun m!632253 () Bool)

(assert (=> b!659160 m!632253))

(assert (=> b!659162 m!632155))

(assert (=> b!659162 m!632155))

(assert (=> b!659162 m!632163))

(assert (=> b!659163 m!632155))

(assert (=> b!659163 m!632155))

(assert (=> b!659163 m!632163))

(assert (=> bm!33889 m!632155))

(declare-fun m!632255 () Bool)

(assert (=> bm!33889 m!632255))

(assert (=> b!658951 d!92891))

(declare-fun b!659242 () Bool)

(declare-fun e!378764 () SeekEntryResult!7009)

(declare-fun e!378765 () SeekEntryResult!7009)

(assert (=> b!659242 (= e!378764 e!378765)))

(declare-fun lt!308576 () (_ BitVec 64))

(declare-fun lt!308577 () SeekEntryResult!7009)

(assert (=> b!659242 (= lt!308576 (select (arr!18562 a!2986) (index!30402 lt!308577)))))

(declare-fun c!76195 () Bool)

(assert (=> b!659242 (= c!76195 (= lt!308576 k0!1786))))

(declare-fun b!659243 () Bool)

(declare-fun e!378763 () SeekEntryResult!7009)

(assert (=> b!659243 (= e!378763 (MissingZero!7009 (index!30402 lt!308577)))))

(declare-fun b!659244 () Bool)

(assert (=> b!659244 (= e!378764 Undefined!7009)))

(declare-fun b!659245 () Bool)

(declare-fun c!76194 () Bool)

(assert (=> b!659245 (= c!76194 (= lt!308576 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!659245 (= e!378765 e!378763)))

(declare-fun d!92895 () Bool)

(declare-fun lt!308578 () SeekEntryResult!7009)

(assert (=> d!92895 (and (or ((_ is Undefined!7009) lt!308578) (not ((_ is Found!7009) lt!308578)) (and (bvsge (index!30401 lt!308578) #b00000000000000000000000000000000) (bvslt (index!30401 lt!308578) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308578) ((_ is Found!7009) lt!308578) (not ((_ is MissingZero!7009) lt!308578)) (and (bvsge (index!30400 lt!308578) #b00000000000000000000000000000000) (bvslt (index!30400 lt!308578) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308578) ((_ is Found!7009) lt!308578) ((_ is MissingZero!7009) lt!308578) (not ((_ is MissingVacant!7009) lt!308578)) (and (bvsge (index!30403 lt!308578) #b00000000000000000000000000000000) (bvslt (index!30403 lt!308578) (size!18926 a!2986)))) (or ((_ is Undefined!7009) lt!308578) (ite ((_ is Found!7009) lt!308578) (= (select (arr!18562 a!2986) (index!30401 lt!308578)) k0!1786) (ite ((_ is MissingZero!7009) lt!308578) (= (select (arr!18562 a!2986) (index!30400 lt!308578)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7009) lt!308578) (= (select (arr!18562 a!2986) (index!30403 lt!308578)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92895 (= lt!308578 e!378764)))

(declare-fun c!76193 () Bool)

(assert (=> d!92895 (= c!76193 (and ((_ is Intermediate!7009) lt!308577) (undefined!7821 lt!308577)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38738 (_ BitVec 32)) SeekEntryResult!7009)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92895 (= lt!308577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!92895 (validMask!0 mask!3053)))

(assert (=> d!92895 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!308578)))

(declare-fun b!659246 () Bool)

(assert (=> b!659246 (= e!378763 (seekKeyOrZeroReturnVacant!0 (x!59213 lt!308577) (index!30402 lt!308577) (index!30402 lt!308577) k0!1786 a!2986 mask!3053))))

(declare-fun b!659247 () Bool)

(assert (=> b!659247 (= e!378765 (Found!7009 (index!30402 lt!308577)))))

(assert (= (and d!92895 c!76193) b!659244))

(assert (= (and d!92895 (not c!76193)) b!659242))

(assert (= (and b!659242 c!76195) b!659247))

(assert (= (and b!659242 (not c!76195)) b!659245))

(assert (= (and b!659245 c!76194) b!659243))

(assert (= (and b!659245 (not c!76194)) b!659246))

(declare-fun m!632321 () Bool)

(assert (=> b!659242 m!632321))

(declare-fun m!632323 () Bool)

(assert (=> d!92895 m!632323))

(declare-fun m!632325 () Bool)

(assert (=> d!92895 m!632325))

(assert (=> d!92895 m!632325))

(declare-fun m!632327 () Bool)

(assert (=> d!92895 m!632327))

(declare-fun m!632329 () Bool)

(assert (=> d!92895 m!632329))

(assert (=> d!92895 m!632023))

(declare-fun m!632331 () Bool)

(assert (=> d!92895 m!632331))

(declare-fun m!632333 () Bool)

(assert (=> b!659246 m!632333))

(assert (=> b!658949 d!92895))

(declare-fun d!92919 () Bool)

(assert (=> d!92919 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18926 lt!308421)) (not (= (select (arr!18562 lt!308421) j!136) (select (arr!18562 a!2986) j!136))))))

(declare-fun lt!308580 () Unit!22934)

(assert (=> d!92919 (= lt!308580 (choose!21 lt!308421 (select (arr!18562 a!2986) j!136) j!136 Nil!12653))))

(assert (=> d!92919 (bvslt (size!18926 lt!308421) #b01111111111111111111111111111111)))

(assert (=> d!92919 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308421 (select (arr!18562 a!2986) j!136) j!136 Nil!12653) lt!308580)))

(declare-fun bs!19608 () Bool)

(assert (= bs!19608 d!92919))

(assert (=> bs!19608 m!632173))

(assert (=> bs!19608 m!631983))

(declare-fun m!632339 () Bool)

(assert (=> bs!19608 m!632339))

(assert (=> b!658950 d!92919))

(declare-fun d!92925 () Bool)

(assert (=> d!92925 (arrayNoDuplicates!0 lt!308421 j!136 Nil!12653)))

(declare-fun lt!308582 () Unit!22934)

(assert (=> d!92925 (= lt!308582 (choose!39 lt!308421 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92925 (bvslt (size!18926 lt!308421) #b01111111111111111111111111111111)))

(assert (=> d!92925 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!308421 #b00000000000000000000000000000000 j!136) lt!308582)))

(declare-fun bs!19609 () Bool)

(assert (= bs!19609 d!92925))

(assert (=> bs!19609 m!632037))

(declare-fun m!632341 () Bool)

(assert (=> bs!19609 m!632341))

(assert (=> b!658950 d!92925))

(declare-fun d!92927 () Bool)

(assert (=> d!92927 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308583 () Unit!22934)

(assert (=> d!92927 (= lt!308583 (choose!114 lt!308421 (select (arr!18562 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92927 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92927 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308421 (select (arr!18562 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!308583)))

(declare-fun bs!19610 () Bool)

(assert (= bs!19610 d!92927))

(assert (=> bs!19610 m!631983))

(assert (=> bs!19610 m!632035))

(assert (=> bs!19610 m!631983))

(declare-fun m!632343 () Bool)

(assert (=> bs!19610 m!632343))

(assert (=> b!658950 d!92927))

(declare-fun b!659250 () Bool)

(declare-fun e!378769 () Bool)

(assert (=> b!659250 (= e!378769 (contains!3198 Nil!12653 (select (arr!18562 lt!308421) j!136)))))

(declare-fun b!659251 () Bool)

(declare-fun e!378770 () Bool)

(declare-fun call!33905 () Bool)

(assert (=> b!659251 (= e!378770 call!33905)))

(declare-fun b!659252 () Bool)

(declare-fun e!378768 () Bool)

(assert (=> b!659252 (= e!378768 e!378770)))

(declare-fun c!76196 () Bool)

(assert (=> b!659252 (= c!76196 (validKeyInArray!0 (select (arr!18562 lt!308421) j!136)))))

(declare-fun b!659253 () Bool)

(declare-fun e!378771 () Bool)

(assert (=> b!659253 (= e!378771 e!378768)))

(declare-fun res!427594 () Bool)

(assert (=> b!659253 (=> (not res!427594) (not e!378768))))

(assert (=> b!659253 (= res!427594 (not e!378769))))

(declare-fun res!427593 () Bool)

(assert (=> b!659253 (=> (not res!427593) (not e!378769))))

(assert (=> b!659253 (= res!427593 (validKeyInArray!0 (select (arr!18562 lt!308421) j!136)))))

(declare-fun d!92929 () Bool)

(declare-fun res!427592 () Bool)

(assert (=> d!92929 (=> res!427592 e!378771)))

(assert (=> d!92929 (= res!427592 (bvsge j!136 (size!18926 lt!308421)))))

(assert (=> d!92929 (= (arrayNoDuplicates!0 lt!308421 j!136 Nil!12653) e!378771)))

(declare-fun bm!33902 () Bool)

(assert (=> bm!33902 (= call!33905 (arrayNoDuplicates!0 lt!308421 (bvadd j!136 #b00000000000000000000000000000001) (ite c!76196 (Cons!12652 (select (arr!18562 lt!308421) j!136) Nil!12653) Nil!12653)))))

(declare-fun b!659254 () Bool)

(assert (=> b!659254 (= e!378770 call!33905)))

(assert (= (and d!92929 (not res!427592)) b!659253))

(assert (= (and b!659253 res!427593) b!659250))

(assert (= (and b!659253 res!427594) b!659252))

(assert (= (and b!659252 c!76196) b!659251))

(assert (= (and b!659252 (not c!76196)) b!659254))

(assert (= (or b!659251 b!659254) bm!33902))

(assert (=> b!659250 m!632173))

(assert (=> b!659250 m!632173))

(declare-fun m!632345 () Bool)

(assert (=> b!659250 m!632345))

(assert (=> b!659252 m!632173))

(assert (=> b!659252 m!632173))

(declare-fun m!632347 () Bool)

(assert (=> b!659252 m!632347))

(assert (=> b!659253 m!632173))

(assert (=> b!659253 m!632173))

(assert (=> b!659253 m!632347))

(assert (=> bm!33902 m!632173))

(declare-fun m!632349 () Bool)

(assert (=> bm!33902 m!632349))

(assert (=> b!658950 d!92929))

(assert (=> b!658950 d!92881))

(declare-fun d!92931 () Bool)

(declare-fun res!427595 () Bool)

(declare-fun e!378772 () Bool)

(assert (=> d!92931 (=> res!427595 e!378772)))

(assert (=> d!92931 (= res!427595 (= (select (arr!18562 lt!308421) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18562 a!2986) j!136)))))

(assert (=> d!92931 (= (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!378772)))

(declare-fun b!659255 () Bool)

(declare-fun e!378773 () Bool)

(assert (=> b!659255 (= e!378772 e!378773)))

(declare-fun res!427596 () Bool)

(assert (=> b!659255 (=> (not res!427596) (not e!378773))))

(assert (=> b!659255 (= res!427596 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18926 lt!308421)))))

(declare-fun b!659256 () Bool)

(assert (=> b!659256 (= e!378773 (arrayContainsKey!0 lt!308421 (select (arr!18562 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92931 (not res!427595)) b!659255))

(assert (= (and b!659255 res!427596) b!659256))

(declare-fun m!632351 () Bool)

(assert (=> d!92931 m!632351))

(assert (=> b!659256 m!631983))

(declare-fun m!632353 () Bool)

(assert (=> b!659256 m!632353))

(assert (=> b!658950 d!92931))

(assert (=> b!658950 d!92885))

(declare-fun d!92933 () Bool)

(assert (=> d!92933 (= (validKeyInArray!0 (select (arr!18562 a!2986) j!136)) (and (not (= (select (arr!18562 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18562 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!658959 d!92933))

(check-sat (not b!659093) (not b!659150) (not bm!33887) (not b!659252) (not b!659042) (not bm!33884) (not d!92885) (not d!92833) (not b!659253) (not d!92861) (not d!92839) (not b!659063) (not d!92849) (not b!659246) (not d!92843) (not b!659102) (not b!659100) (not bm!33888) (not d!92835) (not d!92841) (not b!659155) (not b!659057) (not d!92895) (not d!92927) (not d!92919) (not b!659256) (not b!659083) (not d!92925) (not b!659159) (not b!659162) (not b!659090) (not b!659163) (not b!659154) (not b!659147) (not b!659160) (not bm!33889) (not b!659069) (not d!92857) (not bm!33902) (not b!659250) (not b!659084) (not b!659149) (not b!659098) (not b!659152) (not d!92877))
(check-sat)
