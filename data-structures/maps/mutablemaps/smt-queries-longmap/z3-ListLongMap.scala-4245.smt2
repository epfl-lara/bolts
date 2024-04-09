; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58874 () Bool)

(assert start!58874)

(declare-fun b!648510 () Bool)

(declare-fun e!371973 () Bool)

(declare-fun e!371969 () Bool)

(assert (=> b!648510 (= e!371973 e!371969)))

(declare-fun res!420303 () Bool)

(assert (=> b!648510 (=> (not res!420303) (not e!371969))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38492 0))(
  ( (array!38493 (arr!18448 (Array (_ BitVec 32) (_ BitVec 64))) (size!18812 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38492)

(assert (=> b!648510 (= res!420303 (= (select (store (arr!18448 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!301065 () array!38492)

(assert (=> b!648510 (= lt!301065 (array!38493 (store (arr!18448 a!2986) i!1108 k0!1786) (size!18812 a!2986)))))

(declare-fun b!648511 () Bool)

(declare-fun res!420304 () Bool)

(declare-fun e!371965 () Bool)

(assert (=> b!648511 (=> res!420304 e!371965)))

(declare-datatypes ((List!12542 0))(
  ( (Nil!12539) (Cons!12538 (h!13583 (_ BitVec 64)) (t!18778 List!12542)) )
))
(declare-fun noDuplicate!425 (List!12542) Bool)

(assert (=> b!648511 (= res!420304 (not (noDuplicate!425 Nil!12539)))))

(declare-fun b!648512 () Bool)

(declare-datatypes ((Unit!22042 0))(
  ( (Unit!22043) )
))
(declare-fun e!371960 () Unit!22042)

(declare-fun Unit!22044 () Unit!22042)

(assert (=> b!648512 (= e!371960 Unit!22044)))

(assert (=> b!648512 false))

(declare-fun b!648513 () Bool)

(declare-fun e!371972 () Bool)

(declare-fun e!371974 () Bool)

(assert (=> b!648513 (= e!371972 (not e!371974))))

(declare-fun res!420292 () Bool)

(assert (=> b!648513 (=> res!420292 e!371974)))

(declare-datatypes ((SeekEntryResult!6895 0))(
  ( (MissingZero!6895 (index!29926 (_ BitVec 32))) (Found!6895 (index!29927 (_ BitVec 32))) (Intermediate!6895 (undefined!7707 Bool) (index!29928 (_ BitVec 32)) (x!58741 (_ BitVec 32))) (Undefined!6895) (MissingVacant!6895 (index!29929 (_ BitVec 32))) )
))
(declare-fun lt!301076 () SeekEntryResult!6895)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!648513 (= res!420292 (not (= lt!301076 (Found!6895 index!984))))))

(declare-fun lt!301074 () Unit!22042)

(assert (=> b!648513 (= lt!301074 e!371960)))

(declare-fun c!74479 () Bool)

(assert (=> b!648513 (= c!74479 (= lt!301076 Undefined!6895))))

(declare-fun lt!301061 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38492 (_ BitVec 32)) SeekEntryResult!6895)

(assert (=> b!648513 (= lt!301076 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301061 lt!301065 mask!3053))))

(declare-fun e!371961 () Bool)

(assert (=> b!648513 e!371961))

(declare-fun res!420298 () Bool)

(assert (=> b!648513 (=> (not res!420298) (not e!371961))))

(declare-fun lt!301062 () (_ BitVec 32))

(declare-fun lt!301066 () SeekEntryResult!6895)

(assert (=> b!648513 (= res!420298 (= lt!301066 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301062 vacantSpotIndex!68 lt!301061 lt!301065 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!648513 (= lt!301066 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301062 vacantSpotIndex!68 (select (arr!18448 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648513 (= lt!301061 (select (store (arr!18448 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!301064 () Unit!22042)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38492 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22042)

(assert (=> b!648513 (= lt!301064 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301062 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648513 (= lt!301062 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648514 () Bool)

(assert (=> b!648514 (= e!371969 e!371972)))

(declare-fun res!420305 () Bool)

(assert (=> b!648514 (=> (not res!420305) (not e!371972))))

(declare-fun lt!301067 () SeekEntryResult!6895)

(assert (=> b!648514 (= res!420305 (and (= lt!301067 (Found!6895 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18448 a!2986) index!984) (select (arr!18448 a!2986) j!136))) (not (= (select (arr!18448 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!648514 (= lt!301067 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18448 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648515 () Bool)

(declare-fun res!420287 () Bool)

(assert (=> b!648515 (=> (not res!420287) (not e!371973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38492 (_ BitVec 32)) Bool)

(assert (=> b!648515 (= res!420287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648516 () Bool)

(declare-fun e!371964 () Unit!22042)

(declare-fun Unit!22045 () Unit!22042)

(assert (=> b!648516 (= e!371964 Unit!22045)))

(declare-fun lt!301063 () Unit!22042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38492 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22042)

(assert (=> b!648516 (= lt!301063 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301065 (select (arr!18448 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648516 (arrayContainsKey!0 lt!301065 (select (arr!18448 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301068 () Unit!22042)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38492 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12542) Unit!22042)

(assert (=> b!648516 (= lt!301068 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12539))))

(declare-fun arrayNoDuplicates!0 (array!38492 (_ BitVec 32) List!12542) Bool)

(assert (=> b!648516 (arrayNoDuplicates!0 lt!301065 #b00000000000000000000000000000000 Nil!12539)))

(declare-fun lt!301071 () Unit!22042)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38492 (_ BitVec 32) (_ BitVec 32)) Unit!22042)

(assert (=> b!648516 (= lt!301071 (lemmaNoDuplicateFromThenFromBigger!0 lt!301065 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648516 (arrayNoDuplicates!0 lt!301065 j!136 Nil!12539)))

(declare-fun lt!301073 () Unit!22042)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38492 (_ BitVec 64) (_ BitVec 32) List!12542) Unit!22042)

(assert (=> b!648516 (= lt!301073 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301065 (select (arr!18448 a!2986) j!136) j!136 Nil!12539))))

(assert (=> b!648516 false))

(declare-fun b!648517 () Bool)

(declare-fun res!420295 () Bool)

(declare-fun e!371966 () Bool)

(assert (=> b!648517 (=> (not res!420295) (not e!371966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648517 (= res!420295 (validKeyInArray!0 (select (arr!18448 a!2986) j!136)))))

(declare-fun b!648518 () Bool)

(declare-fun e!371962 () Bool)

(declare-fun e!371971 () Bool)

(assert (=> b!648518 (= e!371962 e!371971)))

(declare-fun res!420300 () Bool)

(assert (=> b!648518 (=> res!420300 e!371971)))

(assert (=> b!648518 (= res!420300 (bvsge index!984 j!136))))

(declare-fun lt!301070 () Unit!22042)

(assert (=> b!648518 (= lt!301070 e!371964)))

(declare-fun c!74480 () Bool)

(assert (=> b!648518 (= c!74480 (bvslt j!136 index!984))))

(declare-fun b!648519 () Bool)

(assert (=> b!648519 (= e!371971 e!371965)))

(declare-fun res!420299 () Bool)

(assert (=> b!648519 (=> res!420299 e!371965)))

(assert (=> b!648519 (= res!420299 (or (bvsge (size!18812 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18812 a!2986))))))

(assert (=> b!648519 (arrayContainsKey!0 lt!301065 (select (arr!18448 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301077 () Unit!22042)

(assert (=> b!648519 (= lt!301077 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301065 (select (arr!18448 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!371963 () Bool)

(assert (=> b!648519 e!371963))

(declare-fun res!420290 () Bool)

(assert (=> b!648519 (=> (not res!420290) (not e!371963))))

(assert (=> b!648519 (= res!420290 (arrayContainsKey!0 lt!301065 (select (arr!18448 a!2986) j!136) j!136))))

(declare-fun b!648520 () Bool)

(declare-fun res!420286 () Bool)

(assert (=> b!648520 (=> (not res!420286) (not e!371973))))

(assert (=> b!648520 (= res!420286 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12539))))

(declare-fun b!648521 () Bool)

(assert (=> b!648521 (= e!371966 e!371973)))

(declare-fun res!420302 () Bool)

(assert (=> b!648521 (=> (not res!420302) (not e!371973))))

(declare-fun lt!301069 () SeekEntryResult!6895)

(assert (=> b!648521 (= res!420302 (or (= lt!301069 (MissingZero!6895 i!1108)) (= lt!301069 (MissingVacant!6895 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38492 (_ BitVec 32)) SeekEntryResult!6895)

(assert (=> b!648521 (= lt!301069 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!648522 () Bool)

(declare-fun res!420291 () Bool)

(assert (=> b!648522 (=> (not res!420291) (not e!371966))))

(assert (=> b!648522 (= res!420291 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648523 () Bool)

(declare-fun e!371968 () Bool)

(assert (=> b!648523 (= e!371968 (arrayContainsKey!0 lt!301065 (select (arr!18448 a!2986) j!136) index!984))))

(declare-fun b!648524 () Bool)

(assert (=> b!648524 (= e!371974 e!371962)))

(declare-fun res!420294 () Bool)

(assert (=> b!648524 (=> res!420294 e!371962)))

(declare-fun lt!301075 () (_ BitVec 64))

(assert (=> b!648524 (= res!420294 (or (not (= (select (arr!18448 a!2986) j!136) lt!301061)) (not (= (select (arr!18448 a!2986) j!136) lt!301075))))))

(declare-fun e!371970 () Bool)

(assert (=> b!648524 e!371970))

(declare-fun res!420307 () Bool)

(assert (=> b!648524 (=> (not res!420307) (not e!371970))))

(assert (=> b!648524 (= res!420307 (= lt!301075 (select (arr!18448 a!2986) j!136)))))

(assert (=> b!648524 (= lt!301075 (select (store (arr!18448 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!648525 () Bool)

(declare-fun res!420306 () Bool)

(assert (=> b!648525 (=> res!420306 e!371965)))

(declare-fun contains!3165 (List!12542 (_ BitVec 64)) Bool)

(assert (=> b!648525 (= res!420306 (contains!3165 Nil!12539 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648526 () Bool)

(declare-fun res!420297 () Bool)

(assert (=> b!648526 (=> res!420297 e!371965)))

(assert (=> b!648526 (= res!420297 (contains!3165 Nil!12539 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648527 () Bool)

(declare-fun res!420296 () Bool)

(assert (=> b!648527 (=> (not res!420296) (not e!371966))))

(assert (=> b!648527 (= res!420296 (and (= (size!18812 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18812 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18812 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648528 () Bool)

(declare-fun e!371959 () Bool)

(assert (=> b!648528 (= e!371959 e!371968)))

(declare-fun res!420308 () Bool)

(assert (=> b!648528 (=> (not res!420308) (not e!371968))))

(assert (=> b!648528 (= res!420308 (arrayContainsKey!0 lt!301065 (select (arr!18448 a!2986) j!136) j!136))))

(declare-fun b!648529 () Bool)

(assert (=> b!648529 (= e!371965 true)))

(declare-fun lt!301072 () Bool)

(assert (=> b!648529 (= lt!301072 (contains!3165 Nil!12539 k0!1786))))

(declare-fun b!648531 () Bool)

(declare-fun Unit!22046 () Unit!22042)

(assert (=> b!648531 (= e!371960 Unit!22046)))

(declare-fun b!648530 () Bool)

(declare-fun res!420293 () Bool)

(assert (=> b!648530 (=> (not res!420293) (not e!371966))))

(assert (=> b!648530 (= res!420293 (validKeyInArray!0 k0!1786))))

(declare-fun res!420289 () Bool)

(assert (=> start!58874 (=> (not res!420289) (not e!371966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58874 (= res!420289 (validMask!0 mask!3053))))

(assert (=> start!58874 e!371966))

(assert (=> start!58874 true))

(declare-fun array_inv!14222 (array!38492) Bool)

(assert (=> start!58874 (array_inv!14222 a!2986)))

(declare-fun b!648532 () Bool)

(declare-fun res!420301 () Bool)

(assert (=> b!648532 (=> (not res!420301) (not e!371973))))

(assert (=> b!648532 (= res!420301 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18448 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648533 () Bool)

(assert (=> b!648533 (= e!371961 (= lt!301067 lt!301066))))

(declare-fun b!648534 () Bool)

(assert (=> b!648534 (= e!371963 (arrayContainsKey!0 lt!301065 (select (arr!18448 a!2986) j!136) index!984))))

(declare-fun b!648535 () Bool)

(assert (=> b!648535 (= e!371970 e!371959)))

(declare-fun res!420288 () Bool)

(assert (=> b!648535 (=> res!420288 e!371959)))

(assert (=> b!648535 (= res!420288 (or (not (= (select (arr!18448 a!2986) j!136) lt!301061)) (not (= (select (arr!18448 a!2986) j!136) lt!301075)) (bvsge j!136 index!984)))))

(declare-fun b!648536 () Bool)

(declare-fun Unit!22047 () Unit!22042)

(assert (=> b!648536 (= e!371964 Unit!22047)))

(assert (= (and start!58874 res!420289) b!648527))

(assert (= (and b!648527 res!420296) b!648517))

(assert (= (and b!648517 res!420295) b!648530))

(assert (= (and b!648530 res!420293) b!648522))

(assert (= (and b!648522 res!420291) b!648521))

(assert (= (and b!648521 res!420302) b!648515))

(assert (= (and b!648515 res!420287) b!648520))

(assert (= (and b!648520 res!420286) b!648532))

(assert (= (and b!648532 res!420301) b!648510))

(assert (= (and b!648510 res!420303) b!648514))

(assert (= (and b!648514 res!420305) b!648513))

(assert (= (and b!648513 res!420298) b!648533))

(assert (= (and b!648513 c!74479) b!648512))

(assert (= (and b!648513 (not c!74479)) b!648531))

(assert (= (and b!648513 (not res!420292)) b!648524))

(assert (= (and b!648524 res!420307) b!648535))

(assert (= (and b!648535 (not res!420288)) b!648528))

(assert (= (and b!648528 res!420308) b!648523))

(assert (= (and b!648524 (not res!420294)) b!648518))

(assert (= (and b!648518 c!74480) b!648516))

(assert (= (and b!648518 (not c!74480)) b!648536))

(assert (= (and b!648518 (not res!420300)) b!648519))

(assert (= (and b!648519 res!420290) b!648534))

(assert (= (and b!648519 (not res!420299)) b!648511))

(assert (= (and b!648511 (not res!420304)) b!648525))

(assert (= (and b!648525 (not res!420306)) b!648526))

(assert (= (and b!648526 (not res!420297)) b!648529))

(declare-fun m!621915 () Bool)

(assert (=> b!648522 m!621915))

(declare-fun m!621917 () Bool)

(assert (=> b!648521 m!621917))

(declare-fun m!621919 () Bool)

(assert (=> b!648516 m!621919))

(declare-fun m!621921 () Bool)

(assert (=> b!648516 m!621921))

(assert (=> b!648516 m!621921))

(declare-fun m!621923 () Bool)

(assert (=> b!648516 m!621923))

(assert (=> b!648516 m!621921))

(declare-fun m!621925 () Bool)

(assert (=> b!648516 m!621925))

(assert (=> b!648516 m!621921))

(declare-fun m!621927 () Bool)

(assert (=> b!648516 m!621927))

(declare-fun m!621929 () Bool)

(assert (=> b!648516 m!621929))

(declare-fun m!621931 () Bool)

(assert (=> b!648516 m!621931))

(declare-fun m!621933 () Bool)

(assert (=> b!648516 m!621933))

(assert (=> b!648517 m!621921))

(assert (=> b!648517 m!621921))

(declare-fun m!621935 () Bool)

(assert (=> b!648517 m!621935))

(declare-fun m!621937 () Bool)

(assert (=> b!648513 m!621937))

(assert (=> b!648513 m!621921))

(declare-fun m!621939 () Bool)

(assert (=> b!648513 m!621939))

(declare-fun m!621941 () Bool)

(assert (=> b!648513 m!621941))

(declare-fun m!621943 () Bool)

(assert (=> b!648513 m!621943))

(declare-fun m!621945 () Bool)

(assert (=> b!648513 m!621945))

(declare-fun m!621947 () Bool)

(assert (=> b!648513 m!621947))

(assert (=> b!648513 m!621921))

(declare-fun m!621949 () Bool)

(assert (=> b!648513 m!621949))

(assert (=> b!648535 m!621921))

(assert (=> b!648510 m!621939))

(declare-fun m!621951 () Bool)

(assert (=> b!648510 m!621951))

(declare-fun m!621953 () Bool)

(assert (=> b!648532 m!621953))

(declare-fun m!621955 () Bool)

(assert (=> b!648530 m!621955))

(declare-fun m!621957 () Bool)

(assert (=> b!648514 m!621957))

(assert (=> b!648514 m!621921))

(assert (=> b!648514 m!621921))

(declare-fun m!621959 () Bool)

(assert (=> b!648514 m!621959))

(declare-fun m!621961 () Bool)

(assert (=> b!648526 m!621961))

(assert (=> b!648534 m!621921))

(assert (=> b!648534 m!621921))

(declare-fun m!621963 () Bool)

(assert (=> b!648534 m!621963))

(declare-fun m!621965 () Bool)

(assert (=> b!648520 m!621965))

(declare-fun m!621967 () Bool)

(assert (=> b!648525 m!621967))

(declare-fun m!621969 () Bool)

(assert (=> b!648529 m!621969))

(declare-fun m!621971 () Bool)

(assert (=> start!58874 m!621971))

(declare-fun m!621973 () Bool)

(assert (=> start!58874 m!621973))

(declare-fun m!621975 () Bool)

(assert (=> b!648515 m!621975))

(assert (=> b!648524 m!621921))

(assert (=> b!648524 m!621939))

(declare-fun m!621977 () Bool)

(assert (=> b!648524 m!621977))

(assert (=> b!648528 m!621921))

(assert (=> b!648528 m!621921))

(declare-fun m!621979 () Bool)

(assert (=> b!648528 m!621979))

(declare-fun m!621981 () Bool)

(assert (=> b!648511 m!621981))

(assert (=> b!648519 m!621921))

(assert (=> b!648519 m!621921))

(declare-fun m!621983 () Bool)

(assert (=> b!648519 m!621983))

(assert (=> b!648519 m!621921))

(declare-fun m!621985 () Bool)

(assert (=> b!648519 m!621985))

(assert (=> b!648519 m!621921))

(assert (=> b!648519 m!621979))

(assert (=> b!648523 m!621921))

(assert (=> b!648523 m!621921))

(assert (=> b!648523 m!621963))

(check-sat (not b!648534) (not b!648525) (not b!648515) (not b!648529) (not b!648513) (not b!648526) (not start!58874) (not b!648523) (not b!648516) (not b!648517) (not b!648511) (not b!648528) (not b!648519) (not b!648530) (not b!648522) (not b!648520) (not b!648514) (not b!648521))
(check-sat)
