; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58568 () Bool)

(assert start!58568)

(declare-fun b!646452 () Bool)

(declare-fun e!370582 () Bool)

(declare-datatypes ((SeekEntryResult!6883 0))(
  ( (MissingZero!6883 (index!29869 (_ BitVec 32))) (Found!6883 (index!29870 (_ BitVec 32))) (Intermediate!6883 (undefined!7695 Bool) (index!29871 (_ BitVec 32)) (x!58670 (_ BitVec 32))) (Undefined!6883) (MissingVacant!6883 (index!29872 (_ BitVec 32))) )
))
(declare-fun lt!300004 () SeekEntryResult!6883)

(declare-fun lt!300009 () SeekEntryResult!6883)

(assert (=> b!646452 (= e!370582 (= lt!300004 lt!300009))))

(declare-fun b!646453 () Bool)

(declare-fun res!419006 () Bool)

(declare-fun e!370587 () Bool)

(assert (=> b!646453 (=> (not res!419006) (not e!370587))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38459 0))(
  ( (array!38460 (arr!18436 (Array (_ BitVec 32) (_ BitVec 64))) (size!18800 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38459)

(assert (=> b!646453 (= res!419006 (and (= (size!18800 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18800 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18800 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646454 () Bool)

(declare-fun e!370583 () Bool)

(declare-fun e!370590 () Bool)

(assert (=> b!646454 (= e!370583 e!370590)))

(declare-fun res!419003 () Bool)

(assert (=> b!646454 (=> (not res!419003) (not e!370590))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!646454 (= res!419003 (and (= lt!300004 (Found!6883 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18436 a!2986) index!984) (select (arr!18436 a!2986) j!136))) (not (= (select (arr!18436 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38459 (_ BitVec 32)) SeekEntryResult!6883)

(assert (=> b!646454 (= lt!300004 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646455 () Bool)

(declare-fun e!370593 () Bool)

(assert (=> b!646455 (= e!370593 e!370583)))

(declare-fun res!419004 () Bool)

(assert (=> b!646455 (=> (not res!419004) (not e!370583))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!646455 (= res!419004 (= (select (store (arr!18436 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!300007 () array!38459)

(assert (=> b!646455 (= lt!300007 (array!38460 (store (arr!18436 a!2986) i!1108 k0!1786) (size!18800 a!2986)))))

(declare-fun b!646456 () Bool)

(declare-datatypes ((Unit!21970 0))(
  ( (Unit!21971) )
))
(declare-fun e!370589 () Unit!21970)

(declare-fun Unit!21972 () Unit!21970)

(assert (=> b!646456 (= e!370589 Unit!21972)))

(declare-fun b!646457 () Bool)

(declare-fun e!370594 () Bool)

(declare-datatypes ((List!12530 0))(
  ( (Nil!12527) (Cons!12526 (h!13571 (_ BitVec 64)) (t!18766 List!12530)) )
))
(declare-fun noDuplicate!413 (List!12530) Bool)

(assert (=> b!646457 (= e!370594 (noDuplicate!413 Nil!12527))))

(declare-fun b!646458 () Bool)

(declare-fun res!419007 () Bool)

(assert (=> b!646458 (=> (not res!419007) (not e!370593))))

(assert (=> b!646458 (= res!419007 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18436 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646460 () Bool)

(declare-fun e!370595 () Unit!21970)

(declare-fun Unit!21973 () Unit!21970)

(assert (=> b!646460 (= e!370595 Unit!21973)))

(declare-fun lt!300010 () Unit!21970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38459 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21970)

(assert (=> b!646460 (= lt!300010 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300007 (select (arr!18436 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646460 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300013 () Unit!21970)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38459 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12530) Unit!21970)

(assert (=> b!646460 (= lt!300013 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12527))))

(declare-fun arrayNoDuplicates!0 (array!38459 (_ BitVec 32) List!12530) Bool)

(assert (=> b!646460 (arrayNoDuplicates!0 lt!300007 #b00000000000000000000000000000000 Nil!12527)))

(declare-fun lt!300015 () Unit!21970)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38459 (_ BitVec 32) (_ BitVec 32)) Unit!21970)

(assert (=> b!646460 (= lt!300015 (lemmaNoDuplicateFromThenFromBigger!0 lt!300007 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646460 (arrayNoDuplicates!0 lt!300007 j!136 Nil!12527)))

(declare-fun lt!300018 () Unit!21970)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38459 (_ BitVec 64) (_ BitVec 32) List!12530) Unit!21970)

(assert (=> b!646460 (= lt!300018 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136 Nil!12527))))

(assert (=> b!646460 false))

(declare-fun b!646461 () Bool)

(declare-fun res!419012 () Bool)

(assert (=> b!646461 (=> (not res!419012) (not e!370587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646461 (= res!419012 (validKeyInArray!0 k0!1786))))

(declare-fun b!646462 () Bool)

(declare-fun e!370586 () Bool)

(assert (=> b!646462 (= e!370586 e!370594)))

(declare-fun res!419016 () Bool)

(assert (=> b!646462 (=> res!419016 e!370594)))

(assert (=> b!646462 (= res!419016 (or (bvsge (size!18800 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18800 a!2986))))))

(assert (=> b!646462 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300012 () Unit!21970)

(assert (=> b!646462 (= lt!300012 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!370596 () Bool)

(assert (=> b!646462 e!370596))

(declare-fun res!419009 () Bool)

(assert (=> b!646462 (=> (not res!419009) (not e!370596))))

(assert (=> b!646462 (= res!419009 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136))))

(declare-fun b!646463 () Bool)

(declare-fun res!419019 () Bool)

(assert (=> b!646463 (=> (not res!419019) (not e!370593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38459 (_ BitVec 32)) Bool)

(assert (=> b!646463 (= res!419019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!370591 () Bool)

(declare-fun b!646464 () Bool)

(assert (=> b!646464 (= e!370591 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) index!984))))

(declare-fun b!646465 () Bool)

(declare-fun res!419014 () Bool)

(assert (=> b!646465 (=> (not res!419014) (not e!370587))))

(assert (=> b!646465 (= res!419014 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646466 () Bool)

(declare-fun e!370585 () Bool)

(assert (=> b!646466 (= e!370590 (not e!370585))))

(declare-fun res!419018 () Bool)

(assert (=> b!646466 (=> res!419018 e!370585)))

(declare-fun lt!300014 () SeekEntryResult!6883)

(assert (=> b!646466 (= res!419018 (not (= lt!300014 (Found!6883 index!984))))))

(declare-fun lt!300005 () Unit!21970)

(assert (=> b!646466 (= lt!300005 e!370589)))

(declare-fun c!74093 () Bool)

(assert (=> b!646466 (= c!74093 (= lt!300014 Undefined!6883))))

(declare-fun lt!300008 () (_ BitVec 64))

(assert (=> b!646466 (= lt!300014 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300008 lt!300007 mask!3053))))

(assert (=> b!646466 e!370582))

(declare-fun res!419008 () Bool)

(assert (=> b!646466 (=> (not res!419008) (not e!370582))))

(declare-fun lt!300016 () (_ BitVec 32))

(assert (=> b!646466 (= res!419008 (= lt!300009 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 lt!300008 lt!300007 mask!3053)))))

(assert (=> b!646466 (= lt!300009 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646466 (= lt!300008 (select (store (arr!18436 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!300011 () Unit!21970)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21970)

(assert (=> b!646466 (= lt!300011 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646466 (= lt!300016 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646467 () Bool)

(assert (=> b!646467 (= e!370587 e!370593)))

(declare-fun res!419010 () Bool)

(assert (=> b!646467 (=> (not res!419010) (not e!370593))))

(declare-fun lt!300006 () SeekEntryResult!6883)

(assert (=> b!646467 (= res!419010 (or (= lt!300006 (MissingZero!6883 i!1108)) (= lt!300006 (MissingVacant!6883 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38459 (_ BitVec 32)) SeekEntryResult!6883)

(assert (=> b!646467 (= lt!300006 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!646468 () Bool)

(declare-fun res!419017 () Bool)

(assert (=> b!646468 (=> (not res!419017) (not e!370587))))

(assert (=> b!646468 (= res!419017 (validKeyInArray!0 (select (arr!18436 a!2986) j!136)))))

(declare-fun b!646469 () Bool)

(declare-fun e!370584 () Bool)

(assert (=> b!646469 (= e!370584 e!370591)))

(declare-fun res!419021 () Bool)

(assert (=> b!646469 (=> (not res!419021) (not e!370591))))

(assert (=> b!646469 (= res!419021 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136))))

(declare-fun b!646470 () Bool)

(declare-fun res!419020 () Bool)

(assert (=> b!646470 (=> (not res!419020) (not e!370593))))

(assert (=> b!646470 (= res!419020 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12527))))

(declare-fun b!646471 () Bool)

(declare-fun e!370588 () Bool)

(assert (=> b!646471 (= e!370588 e!370586)))

(declare-fun res!419002 () Bool)

(assert (=> b!646471 (=> res!419002 e!370586)))

(assert (=> b!646471 (= res!419002 (bvsge index!984 j!136))))

(declare-fun lt!300003 () Unit!21970)

(assert (=> b!646471 (= lt!300003 e!370595)))

(declare-fun c!74092 () Bool)

(assert (=> b!646471 (= c!74092 (bvslt j!136 index!984))))

(declare-fun b!646472 () Bool)

(declare-fun Unit!21974 () Unit!21970)

(assert (=> b!646472 (= e!370589 Unit!21974)))

(assert (=> b!646472 false))

(declare-fun b!646473 () Bool)

(assert (=> b!646473 (= e!370585 e!370588)))

(declare-fun res!419015 () Bool)

(assert (=> b!646473 (=> res!419015 e!370588)))

(declare-fun lt!300017 () (_ BitVec 64))

(assert (=> b!646473 (= res!419015 (or (not (= (select (arr!18436 a!2986) j!136) lt!300008)) (not (= (select (arr!18436 a!2986) j!136) lt!300017))))))

(declare-fun e!370592 () Bool)

(assert (=> b!646473 e!370592))

(declare-fun res!419011 () Bool)

(assert (=> b!646473 (=> (not res!419011) (not e!370592))))

(assert (=> b!646473 (= res!419011 (= lt!300017 (select (arr!18436 a!2986) j!136)))))

(assert (=> b!646473 (= lt!300017 (select (store (arr!18436 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!646474 () Bool)

(assert (=> b!646474 (= e!370592 e!370584)))

(declare-fun res!419005 () Bool)

(assert (=> b!646474 (=> res!419005 e!370584)))

(assert (=> b!646474 (= res!419005 (or (not (= (select (arr!18436 a!2986) j!136) lt!300008)) (not (= (select (arr!18436 a!2986) j!136) lt!300017)) (bvsge j!136 index!984)))))

(declare-fun b!646475 () Bool)

(declare-fun Unit!21975 () Unit!21970)

(assert (=> b!646475 (= e!370595 Unit!21975)))

(declare-fun b!646459 () Bool)

(assert (=> b!646459 (= e!370596 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) index!984))))

(declare-fun res!419013 () Bool)

(assert (=> start!58568 (=> (not res!419013) (not e!370587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58568 (= res!419013 (validMask!0 mask!3053))))

(assert (=> start!58568 e!370587))

(assert (=> start!58568 true))

(declare-fun array_inv!14210 (array!38459) Bool)

(assert (=> start!58568 (array_inv!14210 a!2986)))

(assert (= (and start!58568 res!419013) b!646453))

(assert (= (and b!646453 res!419006) b!646468))

(assert (= (and b!646468 res!419017) b!646461))

(assert (= (and b!646461 res!419012) b!646465))

(assert (= (and b!646465 res!419014) b!646467))

(assert (= (and b!646467 res!419010) b!646463))

(assert (= (and b!646463 res!419019) b!646470))

(assert (= (and b!646470 res!419020) b!646458))

(assert (= (and b!646458 res!419007) b!646455))

(assert (= (and b!646455 res!419004) b!646454))

(assert (= (and b!646454 res!419003) b!646466))

(assert (= (and b!646466 res!419008) b!646452))

(assert (= (and b!646466 c!74093) b!646472))

(assert (= (and b!646466 (not c!74093)) b!646456))

(assert (= (and b!646466 (not res!419018)) b!646473))

(assert (= (and b!646473 res!419011) b!646474))

(assert (= (and b!646474 (not res!419005)) b!646469))

(assert (= (and b!646469 res!419021) b!646464))

(assert (= (and b!646473 (not res!419015)) b!646471))

(assert (= (and b!646471 c!74092) b!646460))

(assert (= (and b!646471 (not c!74092)) b!646475))

(assert (= (and b!646471 (not res!419002)) b!646462))

(assert (= (and b!646462 res!419009) b!646459))

(assert (= (and b!646462 (not res!419016)) b!646457))

(declare-fun m!619971 () Bool)

(assert (=> b!646458 m!619971))

(declare-fun m!619973 () Bool)

(assert (=> b!646470 m!619973))

(declare-fun m!619975 () Bool)

(assert (=> b!646464 m!619975))

(assert (=> b!646464 m!619975))

(declare-fun m!619977 () Bool)

(assert (=> b!646464 m!619977))

(declare-fun m!619979 () Bool)

(assert (=> start!58568 m!619979))

(declare-fun m!619981 () Bool)

(assert (=> start!58568 m!619981))

(assert (=> b!646459 m!619975))

(assert (=> b!646459 m!619975))

(assert (=> b!646459 m!619977))

(declare-fun m!619983 () Bool)

(assert (=> b!646466 m!619983))

(assert (=> b!646466 m!619975))

(declare-fun m!619985 () Bool)

(assert (=> b!646466 m!619985))

(assert (=> b!646466 m!619975))

(declare-fun m!619987 () Bool)

(assert (=> b!646466 m!619987))

(declare-fun m!619989 () Bool)

(assert (=> b!646466 m!619989))

(declare-fun m!619991 () Bool)

(assert (=> b!646466 m!619991))

(declare-fun m!619993 () Bool)

(assert (=> b!646466 m!619993))

(declare-fun m!619995 () Bool)

(assert (=> b!646466 m!619995))

(declare-fun m!619997 () Bool)

(assert (=> b!646454 m!619997))

(assert (=> b!646454 m!619975))

(assert (=> b!646454 m!619975))

(declare-fun m!619999 () Bool)

(assert (=> b!646454 m!619999))

(assert (=> b!646460 m!619975))

(declare-fun m!620001 () Bool)

(assert (=> b!646460 m!620001))

(assert (=> b!646460 m!619975))

(declare-fun m!620003 () Bool)

(assert (=> b!646460 m!620003))

(assert (=> b!646460 m!619975))

(declare-fun m!620005 () Bool)

(assert (=> b!646460 m!620005))

(declare-fun m!620007 () Bool)

(assert (=> b!646460 m!620007))

(assert (=> b!646460 m!619975))

(declare-fun m!620009 () Bool)

(assert (=> b!646460 m!620009))

(declare-fun m!620011 () Bool)

(assert (=> b!646460 m!620011))

(declare-fun m!620013 () Bool)

(assert (=> b!646460 m!620013))

(declare-fun m!620015 () Bool)

(assert (=> b!646457 m!620015))

(assert (=> b!646469 m!619975))

(assert (=> b!646469 m!619975))

(declare-fun m!620017 () Bool)

(assert (=> b!646469 m!620017))

(assert (=> b!646474 m!619975))

(assert (=> b!646455 m!619987))

(declare-fun m!620019 () Bool)

(assert (=> b!646455 m!620019))

(declare-fun m!620021 () Bool)

(assert (=> b!646467 m!620021))

(declare-fun m!620023 () Bool)

(assert (=> b!646461 m!620023))

(assert (=> b!646462 m!619975))

(assert (=> b!646462 m!619975))

(declare-fun m!620025 () Bool)

(assert (=> b!646462 m!620025))

(assert (=> b!646462 m!619975))

(declare-fun m!620027 () Bool)

(assert (=> b!646462 m!620027))

(assert (=> b!646462 m!619975))

(assert (=> b!646462 m!620017))

(declare-fun m!620029 () Bool)

(assert (=> b!646463 m!620029))

(assert (=> b!646473 m!619975))

(assert (=> b!646473 m!619987))

(declare-fun m!620031 () Bool)

(assert (=> b!646473 m!620031))

(declare-fun m!620033 () Bool)

(assert (=> b!646465 m!620033))

(assert (=> b!646468 m!619975))

(assert (=> b!646468 m!619975))

(declare-fun m!620035 () Bool)

(assert (=> b!646468 m!620035))

(check-sat (not b!646463) (not b!646470) (not b!646465) (not b!646461) (not b!646457) (not b!646468) (not b!646464) (not start!58568) (not b!646460) (not b!646469) (not b!646462) (not b!646454) (not b!646466) (not b!646459) (not b!646467))
(check-sat)
(get-model)

(declare-fun d!91249 () Bool)

(declare-fun res!419086 () Bool)

(declare-fun e!370650 () Bool)

(assert (=> d!91249 (=> res!419086 e!370650)))

(assert (=> d!91249 (= res!419086 (= (select (arr!18436 lt!300007) j!136) (select (arr!18436 a!2986) j!136)))))

(assert (=> d!91249 (= (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136) e!370650)))

(declare-fun b!646552 () Bool)

(declare-fun e!370651 () Bool)

(assert (=> b!646552 (= e!370650 e!370651)))

(declare-fun res!419087 () Bool)

(assert (=> b!646552 (=> (not res!419087) (not e!370651))))

(assert (=> b!646552 (= res!419087 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18800 lt!300007)))))

(declare-fun b!646553 () Bool)

(assert (=> b!646553 (= e!370651 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91249 (not res!419086)) b!646552))

(assert (= (and b!646552 res!419087) b!646553))

(declare-fun m!620103 () Bool)

(assert (=> d!91249 m!620103))

(assert (=> b!646553 m!619975))

(declare-fun m!620105 () Bool)

(assert (=> b!646553 m!620105))

(assert (=> b!646469 d!91249))

(declare-fun d!91251 () Bool)

(assert (=> d!91251 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18800 lt!300007)) (not (= (select (arr!18436 lt!300007) j!136) (select (arr!18436 a!2986) j!136))))))

(declare-fun lt!300069 () Unit!21970)

(declare-fun choose!21 (array!38459 (_ BitVec 64) (_ BitVec 32) List!12530) Unit!21970)

(assert (=> d!91251 (= lt!300069 (choose!21 lt!300007 (select (arr!18436 a!2986) j!136) j!136 Nil!12527))))

(assert (=> d!91251 (bvslt (size!18800 lt!300007) #b01111111111111111111111111111111)))

(assert (=> d!91251 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136 Nil!12527) lt!300069)))

(declare-fun bs!19313 () Bool)

(assert (= bs!19313 d!91251))

(assert (=> bs!19313 m!620103))

(assert (=> bs!19313 m!619975))

(declare-fun m!620107 () Bool)

(assert (=> bs!19313 m!620107))

(assert (=> b!646460 d!91251))

(declare-fun b!646564 () Bool)

(declare-fun e!370663 () Bool)

(declare-fun e!370660 () Bool)

(assert (=> b!646564 (= e!370663 e!370660)))

(declare-fun res!419096 () Bool)

(assert (=> b!646564 (=> (not res!419096) (not e!370660))))

(declare-fun e!370661 () Bool)

(assert (=> b!646564 (= res!419096 (not e!370661))))

(declare-fun res!419094 () Bool)

(assert (=> b!646564 (=> (not res!419094) (not e!370661))))

(assert (=> b!646564 (= res!419094 (validKeyInArray!0 (select (arr!18436 lt!300007) #b00000000000000000000000000000000)))))

(declare-fun d!91253 () Bool)

(declare-fun res!419095 () Bool)

(assert (=> d!91253 (=> res!419095 e!370663)))

(assert (=> d!91253 (= res!419095 (bvsge #b00000000000000000000000000000000 (size!18800 lt!300007)))))

(assert (=> d!91253 (= (arrayNoDuplicates!0 lt!300007 #b00000000000000000000000000000000 Nil!12527) e!370663)))

(declare-fun b!646565 () Bool)

(declare-fun e!370662 () Bool)

(assert (=> b!646565 (= e!370660 e!370662)))

(declare-fun c!74102 () Bool)

(assert (=> b!646565 (= c!74102 (validKeyInArray!0 (select (arr!18436 lt!300007) #b00000000000000000000000000000000)))))

(declare-fun b!646566 () Bool)

(declare-fun call!33656 () Bool)

(assert (=> b!646566 (= e!370662 call!33656)))

(declare-fun bm!33653 () Bool)

(assert (=> bm!33653 (= call!33656 (arrayNoDuplicates!0 lt!300007 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74102 (Cons!12526 (select (arr!18436 lt!300007) #b00000000000000000000000000000000) Nil!12527) Nil!12527)))))

(declare-fun b!646567 () Bool)

(declare-fun contains!3152 (List!12530 (_ BitVec 64)) Bool)

(assert (=> b!646567 (= e!370661 (contains!3152 Nil!12527 (select (arr!18436 lt!300007) #b00000000000000000000000000000000)))))

(declare-fun b!646568 () Bool)

(assert (=> b!646568 (= e!370662 call!33656)))

(assert (= (and d!91253 (not res!419095)) b!646564))

(assert (= (and b!646564 res!419094) b!646567))

(assert (= (and b!646564 res!419096) b!646565))

(assert (= (and b!646565 c!74102) b!646568))

(assert (= (and b!646565 (not c!74102)) b!646566))

(assert (= (or b!646568 b!646566) bm!33653))

(declare-fun m!620109 () Bool)

(assert (=> b!646564 m!620109))

(assert (=> b!646564 m!620109))

(declare-fun m!620111 () Bool)

(assert (=> b!646564 m!620111))

(assert (=> b!646565 m!620109))

(assert (=> b!646565 m!620109))

(assert (=> b!646565 m!620111))

(assert (=> bm!33653 m!620109))

(declare-fun m!620113 () Bool)

(assert (=> bm!33653 m!620113))

(assert (=> b!646567 m!620109))

(assert (=> b!646567 m!620109))

(declare-fun m!620115 () Bool)

(assert (=> b!646567 m!620115))

(assert (=> b!646460 d!91253))

(declare-fun b!646569 () Bool)

(declare-fun e!370667 () Bool)

(declare-fun e!370664 () Bool)

(assert (=> b!646569 (= e!370667 e!370664)))

(declare-fun res!419099 () Bool)

(assert (=> b!646569 (=> (not res!419099) (not e!370664))))

(declare-fun e!370665 () Bool)

(assert (=> b!646569 (= res!419099 (not e!370665))))

(declare-fun res!419097 () Bool)

(assert (=> b!646569 (=> (not res!419097) (not e!370665))))

(assert (=> b!646569 (= res!419097 (validKeyInArray!0 (select (arr!18436 lt!300007) j!136)))))

(declare-fun d!91255 () Bool)

(declare-fun res!419098 () Bool)

(assert (=> d!91255 (=> res!419098 e!370667)))

(assert (=> d!91255 (= res!419098 (bvsge j!136 (size!18800 lt!300007)))))

(assert (=> d!91255 (= (arrayNoDuplicates!0 lt!300007 j!136 Nil!12527) e!370667)))

(declare-fun b!646570 () Bool)

(declare-fun e!370666 () Bool)

(assert (=> b!646570 (= e!370664 e!370666)))

(declare-fun c!74103 () Bool)

(assert (=> b!646570 (= c!74103 (validKeyInArray!0 (select (arr!18436 lt!300007) j!136)))))

(declare-fun b!646571 () Bool)

(declare-fun call!33657 () Bool)

(assert (=> b!646571 (= e!370666 call!33657)))

(declare-fun bm!33654 () Bool)

(assert (=> bm!33654 (= call!33657 (arrayNoDuplicates!0 lt!300007 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74103 (Cons!12526 (select (arr!18436 lt!300007) j!136) Nil!12527) Nil!12527)))))

(declare-fun b!646572 () Bool)

(assert (=> b!646572 (= e!370665 (contains!3152 Nil!12527 (select (arr!18436 lt!300007) j!136)))))

(declare-fun b!646573 () Bool)

(assert (=> b!646573 (= e!370666 call!33657)))

(assert (= (and d!91255 (not res!419098)) b!646569))

(assert (= (and b!646569 res!419097) b!646572))

(assert (= (and b!646569 res!419099) b!646570))

(assert (= (and b!646570 c!74103) b!646573))

(assert (= (and b!646570 (not c!74103)) b!646571))

(assert (= (or b!646573 b!646571) bm!33654))

(assert (=> b!646569 m!620103))

(assert (=> b!646569 m!620103))

(declare-fun m!620117 () Bool)

(assert (=> b!646569 m!620117))

(assert (=> b!646570 m!620103))

(assert (=> b!646570 m!620103))

(assert (=> b!646570 m!620117))

(assert (=> bm!33654 m!620103))

(declare-fun m!620119 () Bool)

(assert (=> bm!33654 m!620119))

(assert (=> b!646572 m!620103))

(assert (=> b!646572 m!620103))

(declare-fun m!620121 () Bool)

(assert (=> b!646572 m!620121))

(assert (=> b!646460 d!91255))

(declare-fun d!91257 () Bool)

(declare-fun res!419100 () Bool)

(declare-fun e!370668 () Bool)

(assert (=> d!91257 (=> res!419100 e!370668)))

(assert (=> d!91257 (= res!419100 (= (select (arr!18436 lt!300007) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18436 a!2986) j!136)))))

(assert (=> d!91257 (= (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!370668)))

(declare-fun b!646574 () Bool)

(declare-fun e!370669 () Bool)

(assert (=> b!646574 (= e!370668 e!370669)))

(declare-fun res!419101 () Bool)

(assert (=> b!646574 (=> (not res!419101) (not e!370669))))

(assert (=> b!646574 (= res!419101 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18800 lt!300007)))))

(declare-fun b!646575 () Bool)

(assert (=> b!646575 (= e!370669 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91257 (not res!419100)) b!646574))

(assert (= (and b!646574 res!419101) b!646575))

(declare-fun m!620123 () Bool)

(assert (=> d!91257 m!620123))

(assert (=> b!646575 m!619975))

(declare-fun m!620125 () Bool)

(assert (=> b!646575 m!620125))

(assert (=> b!646460 d!91257))

(declare-fun d!91259 () Bool)

(declare-fun e!370672 () Bool)

(assert (=> d!91259 e!370672))

(declare-fun res!419104 () Bool)

(assert (=> d!91259 (=> (not res!419104) (not e!370672))))

(assert (=> d!91259 (= res!419104 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18800 a!2986))))))

(declare-fun lt!300072 () Unit!21970)

(declare-fun choose!41 (array!38459 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12530) Unit!21970)

(assert (=> d!91259 (= lt!300072 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12527))))

(assert (=> d!91259 (bvslt (size!18800 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91259 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12527) lt!300072)))

(declare-fun b!646578 () Bool)

(assert (=> b!646578 (= e!370672 (arrayNoDuplicates!0 (array!38460 (store (arr!18436 a!2986) i!1108 k0!1786) (size!18800 a!2986)) #b00000000000000000000000000000000 Nil!12527))))

(assert (= (and d!91259 res!419104) b!646578))

(declare-fun m!620127 () Bool)

(assert (=> d!91259 m!620127))

(assert (=> b!646578 m!619987))

(declare-fun m!620129 () Bool)

(assert (=> b!646578 m!620129))

(assert (=> b!646460 d!91259))

(declare-fun d!91261 () Bool)

(assert (=> d!91261 (arrayNoDuplicates!0 lt!300007 j!136 Nil!12527)))

(declare-fun lt!300075 () Unit!21970)

(declare-fun choose!39 (array!38459 (_ BitVec 32) (_ BitVec 32)) Unit!21970)

(assert (=> d!91261 (= lt!300075 (choose!39 lt!300007 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91261 (bvslt (size!18800 lt!300007) #b01111111111111111111111111111111)))

(assert (=> d!91261 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300007 #b00000000000000000000000000000000 j!136) lt!300075)))

(declare-fun bs!19314 () Bool)

(assert (= bs!19314 d!91261))

(assert (=> bs!19314 m!620007))

(declare-fun m!620131 () Bool)

(assert (=> bs!19314 m!620131))

(assert (=> b!646460 d!91261))

(declare-fun d!91263 () Bool)

(assert (=> d!91263 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300078 () Unit!21970)

(declare-fun choose!114 (array!38459 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21970)

(assert (=> d!91263 (= lt!300078 (choose!114 lt!300007 (select (arr!18436 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91263 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91263 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300007 (select (arr!18436 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300078)))

(declare-fun bs!19315 () Bool)

(assert (= bs!19315 d!91263))

(assert (=> bs!19315 m!619975))

(assert (=> bs!19315 m!620005))

(assert (=> bs!19315 m!619975))

(declare-fun m!620133 () Bool)

(assert (=> bs!19315 m!620133))

(assert (=> b!646460 d!91263))

(declare-fun b!646579 () Bool)

(declare-fun e!370676 () Bool)

(declare-fun e!370673 () Bool)

(assert (=> b!646579 (= e!370676 e!370673)))

(declare-fun res!419107 () Bool)

(assert (=> b!646579 (=> (not res!419107) (not e!370673))))

(declare-fun e!370674 () Bool)

(assert (=> b!646579 (= res!419107 (not e!370674))))

(declare-fun res!419105 () Bool)

(assert (=> b!646579 (=> (not res!419105) (not e!370674))))

(assert (=> b!646579 (= res!419105 (validKeyInArray!0 (select (arr!18436 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91265 () Bool)

(declare-fun res!419106 () Bool)

(assert (=> d!91265 (=> res!419106 e!370676)))

(assert (=> d!91265 (= res!419106 (bvsge #b00000000000000000000000000000000 (size!18800 a!2986)))))

(assert (=> d!91265 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12527) e!370676)))

(declare-fun b!646580 () Bool)

(declare-fun e!370675 () Bool)

(assert (=> b!646580 (= e!370673 e!370675)))

(declare-fun c!74104 () Bool)

(assert (=> b!646580 (= c!74104 (validKeyInArray!0 (select (arr!18436 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646581 () Bool)

(declare-fun call!33658 () Bool)

(assert (=> b!646581 (= e!370675 call!33658)))

(declare-fun bm!33655 () Bool)

(assert (=> bm!33655 (= call!33658 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74104 (Cons!12526 (select (arr!18436 a!2986) #b00000000000000000000000000000000) Nil!12527) Nil!12527)))))

(declare-fun b!646582 () Bool)

(assert (=> b!646582 (= e!370674 (contains!3152 Nil!12527 (select (arr!18436 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646583 () Bool)

(assert (=> b!646583 (= e!370675 call!33658)))

(assert (= (and d!91265 (not res!419106)) b!646579))

(assert (= (and b!646579 res!419105) b!646582))

(assert (= (and b!646579 res!419107) b!646580))

(assert (= (and b!646580 c!74104) b!646583))

(assert (= (and b!646580 (not c!74104)) b!646581))

(assert (= (or b!646583 b!646581) bm!33655))

(declare-fun m!620135 () Bool)

(assert (=> b!646579 m!620135))

(assert (=> b!646579 m!620135))

(declare-fun m!620137 () Bool)

(assert (=> b!646579 m!620137))

(assert (=> b!646580 m!620135))

(assert (=> b!646580 m!620135))

(assert (=> b!646580 m!620137))

(assert (=> bm!33655 m!620135))

(declare-fun m!620139 () Bool)

(assert (=> bm!33655 m!620139))

(assert (=> b!646582 m!620135))

(assert (=> b!646582 m!620135))

(declare-fun m!620141 () Bool)

(assert (=> b!646582 m!620141))

(assert (=> b!646470 d!91265))

(declare-fun d!91267 () Bool)

(declare-fun res!419108 () Bool)

(declare-fun e!370677 () Bool)

(assert (=> d!91267 (=> res!419108 e!370677)))

(assert (=> d!91267 (= res!419108 (= (select (arr!18436 lt!300007) index!984) (select (arr!18436 a!2986) j!136)))))

(assert (=> d!91267 (= (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) index!984) e!370677)))

(declare-fun b!646584 () Bool)

(declare-fun e!370678 () Bool)

(assert (=> b!646584 (= e!370677 e!370678)))

(declare-fun res!419109 () Bool)

(assert (=> b!646584 (=> (not res!419109) (not e!370678))))

(assert (=> b!646584 (= res!419109 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18800 lt!300007)))))

(declare-fun b!646585 () Bool)

(assert (=> b!646585 (= e!370678 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91267 (not res!419108)) b!646584))

(assert (= (and b!646584 res!419109) b!646585))

(declare-fun m!620143 () Bool)

(assert (=> d!91267 m!620143))

(assert (=> b!646585 m!619975))

(declare-fun m!620145 () Bool)

(assert (=> b!646585 m!620145))

(assert (=> b!646459 d!91267))

(declare-fun b!646619 () Bool)

(declare-fun e!370705 () SeekEntryResult!6883)

(assert (=> b!646619 (= e!370705 (MissingVacant!6883 vacantSpotIndex!68))))

(declare-fun d!91269 () Bool)

(declare-fun lt!300083 () SeekEntryResult!6883)

(get-info :version)

(assert (=> d!91269 (and (or ((_ is Undefined!6883) lt!300083) (not ((_ is Found!6883) lt!300083)) (and (bvsge (index!29870 lt!300083) #b00000000000000000000000000000000) (bvslt (index!29870 lt!300083) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300083) ((_ is Found!6883) lt!300083) (not ((_ is MissingVacant!6883) lt!300083)) (not (= (index!29872 lt!300083) vacantSpotIndex!68)) (and (bvsge (index!29872 lt!300083) #b00000000000000000000000000000000) (bvslt (index!29872 lt!300083) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300083) (ite ((_ is Found!6883) lt!300083) (= (select (arr!18436 a!2986) (index!29870 lt!300083)) (select (arr!18436 a!2986) j!136)) (and ((_ is MissingVacant!6883) lt!300083) (= (index!29872 lt!300083) vacantSpotIndex!68) (= (select (arr!18436 a!2986) (index!29872 lt!300083)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370704 () SeekEntryResult!6883)

(assert (=> d!91269 (= lt!300083 e!370704)))

(declare-fun c!74115 () Bool)

(assert (=> d!91269 (= c!74115 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300084 () (_ BitVec 64))

(assert (=> d!91269 (= lt!300084 (select (arr!18436 a!2986) lt!300016))))

(assert (=> d!91269 (validMask!0 mask!3053)))

(assert (=> d!91269 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053) lt!300083)))

(declare-fun b!646620 () Bool)

(assert (=> b!646620 (= e!370704 Undefined!6883)))

(declare-fun b!646621 () Bool)

(declare-fun e!370703 () SeekEntryResult!6883)

(assert (=> b!646621 (= e!370704 e!370703)))

(declare-fun c!74114 () Bool)

(assert (=> b!646621 (= c!74114 (= lt!300084 (select (arr!18436 a!2986) j!136)))))

(declare-fun b!646622 () Bool)

(declare-fun c!74116 () Bool)

(assert (=> b!646622 (= c!74116 (= lt!300084 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646622 (= e!370703 e!370705)))

(declare-fun b!646623 () Bool)

(assert (=> b!646623 (= e!370703 (Found!6883 lt!300016))))

(declare-fun b!646624 () Bool)

(assert (=> b!646624 (= e!370705 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300016 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!91269 c!74115) b!646620))

(assert (= (and d!91269 (not c!74115)) b!646621))

(assert (= (and b!646621 c!74114) b!646623))

(assert (= (and b!646621 (not c!74114)) b!646622))

(assert (= (and b!646622 c!74116) b!646619))

(assert (= (and b!646622 (not c!74116)) b!646624))

(declare-fun m!620159 () Bool)

(assert (=> d!91269 m!620159))

(declare-fun m!620161 () Bool)

(assert (=> d!91269 m!620161))

(declare-fun m!620163 () Bool)

(assert (=> d!91269 m!620163))

(assert (=> d!91269 m!619979))

(declare-fun m!620165 () Bool)

(assert (=> b!646624 m!620165))

(assert (=> b!646624 m!620165))

(assert (=> b!646624 m!619975))

(declare-fun m!620167 () Bool)

(assert (=> b!646624 m!620167))

(assert (=> b!646466 d!91269))

(declare-fun b!646637 () Bool)

(declare-fun e!370718 () SeekEntryResult!6883)

(assert (=> b!646637 (= e!370718 (MissingVacant!6883 vacantSpotIndex!68))))

(declare-fun d!91281 () Bool)

(declare-fun lt!300085 () SeekEntryResult!6883)

(assert (=> d!91281 (and (or ((_ is Undefined!6883) lt!300085) (not ((_ is Found!6883) lt!300085)) (and (bvsge (index!29870 lt!300085) #b00000000000000000000000000000000) (bvslt (index!29870 lt!300085) (size!18800 lt!300007)))) (or ((_ is Undefined!6883) lt!300085) ((_ is Found!6883) lt!300085) (not ((_ is MissingVacant!6883) lt!300085)) (not (= (index!29872 lt!300085) vacantSpotIndex!68)) (and (bvsge (index!29872 lt!300085) #b00000000000000000000000000000000) (bvslt (index!29872 lt!300085) (size!18800 lt!300007)))) (or ((_ is Undefined!6883) lt!300085) (ite ((_ is Found!6883) lt!300085) (= (select (arr!18436 lt!300007) (index!29870 lt!300085)) lt!300008) (and ((_ is MissingVacant!6883) lt!300085) (= (index!29872 lt!300085) vacantSpotIndex!68) (= (select (arr!18436 lt!300007) (index!29872 lt!300085)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370717 () SeekEntryResult!6883)

(assert (=> d!91281 (= lt!300085 e!370717)))

(declare-fun c!74120 () Bool)

(assert (=> d!91281 (= c!74120 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300086 () (_ BitVec 64))

(assert (=> d!91281 (= lt!300086 (select (arr!18436 lt!300007) index!984))))

(assert (=> d!91281 (validMask!0 mask!3053)))

(assert (=> d!91281 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300008 lt!300007 mask!3053) lt!300085)))

(declare-fun b!646638 () Bool)

(assert (=> b!646638 (= e!370717 Undefined!6883)))

(declare-fun b!646639 () Bool)

(declare-fun e!370716 () SeekEntryResult!6883)

(assert (=> b!646639 (= e!370717 e!370716)))

(declare-fun c!74119 () Bool)

(assert (=> b!646639 (= c!74119 (= lt!300086 lt!300008))))

(declare-fun b!646640 () Bool)

(declare-fun c!74121 () Bool)

(assert (=> b!646640 (= c!74121 (= lt!300086 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646640 (= e!370716 e!370718)))

(declare-fun b!646641 () Bool)

(assert (=> b!646641 (= e!370716 (Found!6883 index!984))))

(declare-fun b!646642 () Bool)

(assert (=> b!646642 (= e!370718 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300008 lt!300007 mask!3053))))

(assert (= (and d!91281 c!74120) b!646638))

(assert (= (and d!91281 (not c!74120)) b!646639))

(assert (= (and b!646639 c!74119) b!646641))

(assert (= (and b!646639 (not c!74119)) b!646640))

(assert (= (and b!646640 c!74121) b!646637))

(assert (= (and b!646640 (not c!74121)) b!646642))

(declare-fun m!620169 () Bool)

(assert (=> d!91281 m!620169))

(declare-fun m!620171 () Bool)

(assert (=> d!91281 m!620171))

(assert (=> d!91281 m!620143))

(assert (=> d!91281 m!619979))

(assert (=> b!646642 m!619983))

(assert (=> b!646642 m!619983))

(declare-fun m!620173 () Bool)

(assert (=> b!646642 m!620173))

(assert (=> b!646466 d!91281))

(declare-fun d!91283 () Bool)

(declare-fun e!370745 () Bool)

(assert (=> d!91283 e!370745))

(declare-fun res!419157 () Bool)

(assert (=> d!91283 (=> (not res!419157) (not e!370745))))

(assert (=> d!91283 (= res!419157 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18800 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18800 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18800 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18800 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18800 a!2986))))))

(declare-fun lt!300101 () Unit!21970)

(declare-fun choose!9 (array!38459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21970)

(assert (=> d!91283 (= lt!300101 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91283 (validMask!0 mask!3053)))

(assert (=> d!91283 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 mask!3053) lt!300101)))

(declare-fun b!646671 () Bool)

(assert (=> b!646671 (= e!370745 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 (select (store (arr!18436 a!2986) i!1108 k0!1786) j!136) (array!38460 (store (arr!18436 a!2986) i!1108 k0!1786) (size!18800 a!2986)) mask!3053)))))

(assert (= (and d!91283 res!419157) b!646671))

(declare-fun m!620219 () Bool)

(assert (=> d!91283 m!620219))

(assert (=> d!91283 m!619979))

(assert (=> b!646671 m!619987))

(assert (=> b!646671 m!619993))

(declare-fun m!620221 () Bool)

(assert (=> b!646671 m!620221))

(assert (=> b!646671 m!619993))

(assert (=> b!646671 m!619975))

(assert (=> b!646671 m!619985))

(assert (=> b!646671 m!619975))

(assert (=> b!646466 d!91283))

(declare-fun b!646672 () Bool)

(declare-fun e!370748 () SeekEntryResult!6883)

(assert (=> b!646672 (= e!370748 (MissingVacant!6883 vacantSpotIndex!68))))

(declare-fun lt!300102 () SeekEntryResult!6883)

(declare-fun d!91309 () Bool)

(assert (=> d!91309 (and (or ((_ is Undefined!6883) lt!300102) (not ((_ is Found!6883) lt!300102)) (and (bvsge (index!29870 lt!300102) #b00000000000000000000000000000000) (bvslt (index!29870 lt!300102) (size!18800 lt!300007)))) (or ((_ is Undefined!6883) lt!300102) ((_ is Found!6883) lt!300102) (not ((_ is MissingVacant!6883) lt!300102)) (not (= (index!29872 lt!300102) vacantSpotIndex!68)) (and (bvsge (index!29872 lt!300102) #b00000000000000000000000000000000) (bvslt (index!29872 lt!300102) (size!18800 lt!300007)))) (or ((_ is Undefined!6883) lt!300102) (ite ((_ is Found!6883) lt!300102) (= (select (arr!18436 lt!300007) (index!29870 lt!300102)) lt!300008) (and ((_ is MissingVacant!6883) lt!300102) (= (index!29872 lt!300102) vacantSpotIndex!68) (= (select (arr!18436 lt!300007) (index!29872 lt!300102)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370747 () SeekEntryResult!6883)

(assert (=> d!91309 (= lt!300102 e!370747)))

(declare-fun c!74125 () Bool)

(assert (=> d!91309 (= c!74125 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300103 () (_ BitVec 64))

(assert (=> d!91309 (= lt!300103 (select (arr!18436 lt!300007) lt!300016))))

(assert (=> d!91309 (validMask!0 mask!3053)))

(assert (=> d!91309 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300016 vacantSpotIndex!68 lt!300008 lt!300007 mask!3053) lt!300102)))

(declare-fun b!646673 () Bool)

(assert (=> b!646673 (= e!370747 Undefined!6883)))

(declare-fun b!646674 () Bool)

(declare-fun e!370746 () SeekEntryResult!6883)

(assert (=> b!646674 (= e!370747 e!370746)))

(declare-fun c!74124 () Bool)

(assert (=> b!646674 (= c!74124 (= lt!300103 lt!300008))))

(declare-fun b!646675 () Bool)

(declare-fun c!74126 () Bool)

(assert (=> b!646675 (= c!74126 (= lt!300103 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646675 (= e!370746 e!370748)))

(declare-fun b!646676 () Bool)

(assert (=> b!646676 (= e!370746 (Found!6883 lt!300016))))

(declare-fun b!646677 () Bool)

(assert (=> b!646677 (= e!370748 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300016 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300008 lt!300007 mask!3053))))

(assert (= (and d!91309 c!74125) b!646673))

(assert (= (and d!91309 (not c!74125)) b!646674))

(assert (= (and b!646674 c!74124) b!646676))

(assert (= (and b!646674 (not c!74124)) b!646675))

(assert (= (and b!646675 c!74126) b!646672))

(assert (= (and b!646675 (not c!74126)) b!646677))

(declare-fun m!620223 () Bool)

(assert (=> d!91309 m!620223))

(declare-fun m!620225 () Bool)

(assert (=> d!91309 m!620225))

(declare-fun m!620227 () Bool)

(assert (=> d!91309 m!620227))

(assert (=> d!91309 m!619979))

(assert (=> b!646677 m!620165))

(assert (=> b!646677 m!620165))

(declare-fun m!620229 () Bool)

(assert (=> b!646677 m!620229))

(assert (=> b!646466 d!91309))

(declare-fun d!91311 () Bool)

(declare-fun lt!300113 () (_ BitVec 32))

(assert (=> d!91311 (and (bvsge lt!300113 #b00000000000000000000000000000000) (bvslt lt!300113 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91311 (= lt!300113 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91311 (validMask!0 mask!3053)))

(assert (=> d!91311 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300113)))

(declare-fun bs!19320 () Bool)

(assert (= bs!19320 d!91311))

(declare-fun m!620243 () Bool)

(assert (=> bs!19320 m!620243))

(assert (=> bs!19320 m!619979))

(assert (=> b!646466 d!91311))

(declare-fun d!91317 () Bool)

(assert (=> d!91317 (= (validKeyInArray!0 (select (arr!18436 a!2986) j!136)) (and (not (= (select (arr!18436 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18436 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646468 d!91317))

(declare-fun d!91319 () Bool)

(declare-fun res!419172 () Bool)

(declare-fun e!370773 () Bool)

(assert (=> d!91319 (=> res!419172 e!370773)))

(assert (=> d!91319 (= res!419172 ((_ is Nil!12527) Nil!12527))))

(assert (=> d!91319 (= (noDuplicate!413 Nil!12527) e!370773)))

(declare-fun b!646712 () Bool)

(declare-fun e!370774 () Bool)

(assert (=> b!646712 (= e!370773 e!370774)))

(declare-fun res!419173 () Bool)

(assert (=> b!646712 (=> (not res!419173) (not e!370774))))

(assert (=> b!646712 (= res!419173 (not (contains!3152 (t!18766 Nil!12527) (h!13571 Nil!12527))))))

(declare-fun b!646713 () Bool)

(assert (=> b!646713 (= e!370774 (noDuplicate!413 (t!18766 Nil!12527)))))

(assert (= (and d!91319 (not res!419172)) b!646712))

(assert (= (and b!646712 res!419173) b!646713))

(declare-fun m!620251 () Bool)

(assert (=> b!646712 m!620251))

(declare-fun m!620255 () Bool)

(assert (=> b!646713 m!620255))

(assert (=> b!646457 d!91319))

(declare-fun b!646787 () Bool)

(declare-fun e!370816 () SeekEntryResult!6883)

(declare-fun e!370814 () SeekEntryResult!6883)

(assert (=> b!646787 (= e!370816 e!370814)))

(declare-fun lt!300149 () (_ BitVec 64))

(declare-fun lt!300150 () SeekEntryResult!6883)

(assert (=> b!646787 (= lt!300149 (select (arr!18436 a!2986) (index!29871 lt!300150)))))

(declare-fun c!74172 () Bool)

(assert (=> b!646787 (= c!74172 (= lt!300149 k0!1786))))

(declare-fun d!91323 () Bool)

(declare-fun lt!300151 () SeekEntryResult!6883)

(assert (=> d!91323 (and (or ((_ is Undefined!6883) lt!300151) (not ((_ is Found!6883) lt!300151)) (and (bvsge (index!29870 lt!300151) #b00000000000000000000000000000000) (bvslt (index!29870 lt!300151) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300151) ((_ is Found!6883) lt!300151) (not ((_ is MissingZero!6883) lt!300151)) (and (bvsge (index!29869 lt!300151) #b00000000000000000000000000000000) (bvslt (index!29869 lt!300151) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300151) ((_ is Found!6883) lt!300151) ((_ is MissingZero!6883) lt!300151) (not ((_ is MissingVacant!6883) lt!300151)) (and (bvsge (index!29872 lt!300151) #b00000000000000000000000000000000) (bvslt (index!29872 lt!300151) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300151) (ite ((_ is Found!6883) lt!300151) (= (select (arr!18436 a!2986) (index!29870 lt!300151)) k0!1786) (ite ((_ is MissingZero!6883) lt!300151) (= (select (arr!18436 a!2986) (index!29869 lt!300151)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6883) lt!300151) (= (select (arr!18436 a!2986) (index!29872 lt!300151)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91323 (= lt!300151 e!370816)))

(declare-fun c!74171 () Bool)

(assert (=> d!91323 (= c!74171 (and ((_ is Intermediate!6883) lt!300150) (undefined!7695 lt!300150)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38459 (_ BitVec 32)) SeekEntryResult!6883)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91323 (= lt!300150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91323 (validMask!0 mask!3053)))

(assert (=> d!91323 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!300151)))

(declare-fun e!370815 () SeekEntryResult!6883)

(declare-fun b!646788 () Bool)

(assert (=> b!646788 (= e!370815 (seekKeyOrZeroReturnVacant!0 (x!58670 lt!300150) (index!29871 lt!300150) (index!29871 lt!300150) k0!1786 a!2986 mask!3053))))

(declare-fun b!646789 () Bool)

(assert (=> b!646789 (= e!370816 Undefined!6883)))

(declare-fun b!646790 () Bool)

(declare-fun c!74173 () Bool)

(assert (=> b!646790 (= c!74173 (= lt!300149 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646790 (= e!370814 e!370815)))

(declare-fun b!646791 () Bool)

(assert (=> b!646791 (= e!370814 (Found!6883 (index!29871 lt!300150)))))

(declare-fun b!646792 () Bool)

(assert (=> b!646792 (= e!370815 (MissingZero!6883 (index!29871 lt!300150)))))

(assert (= (and d!91323 c!74171) b!646789))

(assert (= (and d!91323 (not c!74171)) b!646787))

(assert (= (and b!646787 c!74172) b!646791))

(assert (= (and b!646787 (not c!74172)) b!646790))

(assert (= (and b!646790 c!74173) b!646792))

(assert (= (and b!646790 (not c!74173)) b!646788))

(declare-fun m!620313 () Bool)

(assert (=> b!646787 m!620313))

(declare-fun m!620317 () Bool)

(assert (=> d!91323 m!620317))

(declare-fun m!620319 () Bool)

(assert (=> d!91323 m!620319))

(declare-fun m!620323 () Bool)

(assert (=> d!91323 m!620323))

(declare-fun m!620325 () Bool)

(assert (=> d!91323 m!620325))

(declare-fun m!620327 () Bool)

(assert (=> d!91323 m!620327))

(assert (=> d!91323 m!619979))

(assert (=> d!91323 m!620325))

(declare-fun m!620331 () Bool)

(assert (=> b!646788 m!620331))

(assert (=> b!646467 d!91323))

(assert (=> b!646464 d!91267))

(declare-fun b!646816 () Bool)

(declare-fun e!370838 () Bool)

(declare-fun e!370837 () Bool)

(assert (=> b!646816 (= e!370838 e!370837)))

(declare-fun c!74177 () Bool)

(assert (=> b!646816 (= c!74177 (validKeyInArray!0 (select (arr!18436 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646817 () Bool)

(declare-fun call!33671 () Bool)

(assert (=> b!646817 (= e!370837 call!33671)))

(declare-fun bm!33668 () Bool)

(assert (=> bm!33668 (= call!33671 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!646819 () Bool)

(declare-fun e!370839 () Bool)

(assert (=> b!646819 (= e!370837 e!370839)))

(declare-fun lt!300170 () (_ BitVec 64))

(assert (=> b!646819 (= lt!300170 (select (arr!18436 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!300168 () Unit!21970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38459 (_ BitVec 64) (_ BitVec 32)) Unit!21970)

(assert (=> b!646819 (= lt!300168 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!300170 #b00000000000000000000000000000000))))

(assert (=> b!646819 (arrayContainsKey!0 a!2986 lt!300170 #b00000000000000000000000000000000)))

(declare-fun lt!300169 () Unit!21970)

(assert (=> b!646819 (= lt!300169 lt!300168)))

(declare-fun res!419197 () Bool)

(assert (=> b!646819 (= res!419197 (= (seekEntryOrOpen!0 (select (arr!18436 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6883 #b00000000000000000000000000000000)))))

(assert (=> b!646819 (=> (not res!419197) (not e!370839))))

(declare-fun b!646818 () Bool)

(assert (=> b!646818 (= e!370839 call!33671)))

(declare-fun d!91343 () Bool)

(declare-fun res!419196 () Bool)

(assert (=> d!91343 (=> res!419196 e!370838)))

(assert (=> d!91343 (= res!419196 (bvsge #b00000000000000000000000000000000 (size!18800 a!2986)))))

(assert (=> d!91343 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!370838)))

(assert (= (and d!91343 (not res!419196)) b!646816))

(assert (= (and b!646816 c!74177) b!646819))

(assert (= (and b!646816 (not c!74177)) b!646817))

(assert (= (and b!646819 res!419197) b!646818))

(assert (= (or b!646818 b!646817) bm!33668))

(assert (=> b!646816 m!620135))

(assert (=> b!646816 m!620135))

(assert (=> b!646816 m!620137))

(declare-fun m!620353 () Bool)

(assert (=> bm!33668 m!620353))

(assert (=> b!646819 m!620135))

(declare-fun m!620355 () Bool)

(assert (=> b!646819 m!620355))

(declare-fun m!620357 () Bool)

(assert (=> b!646819 m!620357))

(assert (=> b!646819 m!620135))

(declare-fun m!620359 () Bool)

(assert (=> b!646819 m!620359))

(assert (=> b!646463 d!91343))

(declare-fun d!91359 () Bool)

(declare-fun res!419198 () Bool)

(declare-fun e!370840 () Bool)

(assert (=> d!91359 (=> res!419198 e!370840)))

(assert (=> d!91359 (= res!419198 (= (select (arr!18436 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!91359 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!370840)))

(declare-fun b!646820 () Bool)

(declare-fun e!370841 () Bool)

(assert (=> b!646820 (= e!370840 e!370841)))

(declare-fun res!419199 () Bool)

(assert (=> b!646820 (=> (not res!419199) (not e!370841))))

(assert (=> b!646820 (= res!419199 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18800 a!2986)))))

(declare-fun b!646821 () Bool)

(assert (=> b!646821 (= e!370841 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91359 (not res!419198)) b!646820))

(assert (= (and b!646820 res!419199) b!646821))

(assert (=> d!91359 m!620135))

(declare-fun m!620361 () Bool)

(assert (=> b!646821 m!620361))

(assert (=> b!646465 d!91359))

(declare-fun d!91361 () Bool)

(assert (=> d!91361 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58568 d!91361))

(declare-fun d!91371 () Bool)

(assert (=> d!91371 (= (array_inv!14210 a!2986) (bvsge (size!18800 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58568 d!91371))

(declare-fun b!646826 () Bool)

(declare-fun e!370846 () SeekEntryResult!6883)

(assert (=> b!646826 (= e!370846 (MissingVacant!6883 vacantSpotIndex!68))))

(declare-fun lt!300171 () SeekEntryResult!6883)

(declare-fun d!91373 () Bool)

(assert (=> d!91373 (and (or ((_ is Undefined!6883) lt!300171) (not ((_ is Found!6883) lt!300171)) (and (bvsge (index!29870 lt!300171) #b00000000000000000000000000000000) (bvslt (index!29870 lt!300171) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300171) ((_ is Found!6883) lt!300171) (not ((_ is MissingVacant!6883) lt!300171)) (not (= (index!29872 lt!300171) vacantSpotIndex!68)) (and (bvsge (index!29872 lt!300171) #b00000000000000000000000000000000) (bvslt (index!29872 lt!300171) (size!18800 a!2986)))) (or ((_ is Undefined!6883) lt!300171) (ite ((_ is Found!6883) lt!300171) (= (select (arr!18436 a!2986) (index!29870 lt!300171)) (select (arr!18436 a!2986) j!136)) (and ((_ is MissingVacant!6883) lt!300171) (= (index!29872 lt!300171) vacantSpotIndex!68) (= (select (arr!18436 a!2986) (index!29872 lt!300171)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370845 () SeekEntryResult!6883)

(assert (=> d!91373 (= lt!300171 e!370845)))

(declare-fun c!74179 () Bool)

(assert (=> d!91373 (= c!74179 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300172 () (_ BitVec 64))

(assert (=> d!91373 (= lt!300172 (select (arr!18436 a!2986) index!984))))

(assert (=> d!91373 (validMask!0 mask!3053)))

(assert (=> d!91373 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053) lt!300171)))

(declare-fun b!646827 () Bool)

(assert (=> b!646827 (= e!370845 Undefined!6883)))

(declare-fun b!646828 () Bool)

(declare-fun e!370844 () SeekEntryResult!6883)

(assert (=> b!646828 (= e!370845 e!370844)))

(declare-fun c!74178 () Bool)

(assert (=> b!646828 (= c!74178 (= lt!300172 (select (arr!18436 a!2986) j!136)))))

(declare-fun b!646829 () Bool)

(declare-fun c!74180 () Bool)

(assert (=> b!646829 (= c!74180 (= lt!300172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646829 (= e!370844 e!370846)))

(declare-fun b!646830 () Bool)

(assert (=> b!646830 (= e!370844 (Found!6883 index!984))))

(declare-fun b!646831 () Bool)

(assert (=> b!646831 (= e!370846 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18436 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!91373 c!74179) b!646827))

(assert (= (and d!91373 (not c!74179)) b!646828))

(assert (= (and b!646828 c!74178) b!646830))

(assert (= (and b!646828 (not c!74178)) b!646829))

(assert (= (and b!646829 c!74180) b!646826))

(assert (= (and b!646829 (not c!74180)) b!646831))

(declare-fun m!620363 () Bool)

(assert (=> d!91373 m!620363))

(declare-fun m!620365 () Bool)

(assert (=> d!91373 m!620365))

(assert (=> d!91373 m!619997))

(assert (=> d!91373 m!619979))

(assert (=> b!646831 m!619983))

(assert (=> b!646831 m!619983))

(assert (=> b!646831 m!619975))

(declare-fun m!620367 () Bool)

(assert (=> b!646831 m!620367))

(assert (=> b!646454 d!91373))

(declare-fun d!91375 () Bool)

(assert (=> d!91375 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646461 d!91375))

(declare-fun d!91377 () Bool)

(declare-fun res!419204 () Bool)

(declare-fun e!370851 () Bool)

(assert (=> d!91377 (=> res!419204 e!370851)))

(assert (=> d!91377 (= res!419204 (= (select (arr!18436 lt!300007) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18436 a!2986) j!136)))))

(assert (=> d!91377 (= (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!370851)))

(declare-fun b!646836 () Bool)

(declare-fun e!370852 () Bool)

(assert (=> b!646836 (= e!370851 e!370852)))

(declare-fun res!419205 () Bool)

(assert (=> b!646836 (=> (not res!419205) (not e!370852))))

(assert (=> b!646836 (= res!419205 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18800 lt!300007)))))

(declare-fun b!646837 () Bool)

(assert (=> b!646837 (= e!370852 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91377 (not res!419204)) b!646836))

(assert (= (and b!646836 res!419205) b!646837))

(declare-fun m!620369 () Bool)

(assert (=> d!91377 m!620369))

(assert (=> b!646837 m!619975))

(declare-fun m!620371 () Bool)

(assert (=> b!646837 m!620371))

(assert (=> b!646462 d!91377))

(declare-fun d!91379 () Bool)

(assert (=> d!91379 (arrayContainsKey!0 lt!300007 (select (arr!18436 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300179 () Unit!21970)

(assert (=> d!91379 (= lt!300179 (choose!114 lt!300007 (select (arr!18436 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91379 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91379 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300007 (select (arr!18436 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!300179)))

(declare-fun bs!19325 () Bool)

(assert (= bs!19325 d!91379))

(assert (=> bs!19325 m!619975))

(assert (=> bs!19325 m!620025))

(assert (=> bs!19325 m!619975))

(declare-fun m!620373 () Bool)

(assert (=> bs!19325 m!620373))

(assert (=> b!646462 d!91379))

(assert (=> b!646462 d!91249))

(check-sat (not bm!33654) (not bm!33655) (not bm!33668) (not b!646572) (not d!91269) (not b!646565) (not d!91379) (not b!646582) (not b!646567) (not b!646788) (not b!646553) (not b!646677) (not b!646642) (not b!646712) (not d!91263) (not b!646821) (not b!646578) (not d!91261) (not b!646569) (not d!91281) (not b!646575) (not d!91309) (not b!646831) (not d!91373) (not d!91259) (not b!646580) (not b!646564) (not b!646585) (not bm!33653) (not b!646713) (not b!646816) (not d!91311) (not b!646579) (not b!646837) (not b!646671) (not d!91323) (not b!646570) (not d!91251) (not b!646624) (not b!646819) (not d!91283))
(check-sat)
