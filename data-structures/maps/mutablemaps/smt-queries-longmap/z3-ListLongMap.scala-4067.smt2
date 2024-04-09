; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55910 () Bool)

(assert start!55910)

(declare-fun b!611476 () Bool)

(declare-fun res!393353 () Bool)

(declare-fun e!350429 () Bool)

(assert (=> b!611476 (=> (not res!393353) (not e!350429))))

(declare-datatypes ((array!37343 0))(
  ( (array!37344 (arr!17914 (Array (_ BitVec 32) (_ BitVec 64))) (size!18278 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37343)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611476 (= res!393353 (validKeyInArray!0 (select (arr!17914 a!2986) j!136)))))

(declare-fun b!611477 () Bool)

(declare-fun res!393357 () Bool)

(declare-fun e!350434 () Bool)

(assert (=> b!611477 (=> (not res!393357) (not e!350434))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!611477 (= res!393357 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17914 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611478 () Bool)

(declare-fun e!350433 () Bool)

(declare-fun lt!279828 () array!37343)

(declare-fun arrayContainsKey!0 (array!37343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611478 (= e!350433 (arrayContainsKey!0 lt!279828 (select (arr!17914 a!2986) j!136) index!984))))

(declare-fun b!611479 () Bool)

(declare-fun e!350443 () Bool)

(assert (=> b!611479 (= e!350434 e!350443)))

(declare-fun res!393365 () Bool)

(assert (=> b!611479 (=> (not res!393365) (not e!350443))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!611479 (= res!393365 (= (select (store (arr!17914 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611479 (= lt!279828 (array!37344 (store (arr!17914 a!2986) i!1108 k0!1786) (size!18278 a!2986)))))

(declare-fun b!611480 () Bool)

(declare-datatypes ((Unit!19594 0))(
  ( (Unit!19595) )
))
(declare-fun e!350435 () Unit!19594)

(declare-fun Unit!19596 () Unit!19594)

(assert (=> b!611480 (= e!350435 Unit!19596)))

(assert (=> b!611480 false))

(declare-fun b!611481 () Bool)

(declare-fun e!350437 () Bool)

(declare-fun e!350442 () Bool)

(assert (=> b!611481 (= e!350437 e!350442)))

(declare-fun res!393354 () Bool)

(assert (=> b!611481 (=> res!393354 e!350442)))

(declare-fun lt!279820 () (_ BitVec 64))

(declare-fun lt!279832 () (_ BitVec 64))

(assert (=> b!611481 (= res!393354 (or (not (= (select (arr!17914 a!2986) j!136) lt!279832)) (not (= (select (arr!17914 a!2986) j!136) lt!279820))))))

(declare-fun e!350431 () Bool)

(assert (=> b!611481 e!350431))

(declare-fun res!393363 () Bool)

(assert (=> b!611481 (=> (not res!393363) (not e!350431))))

(assert (=> b!611481 (= res!393363 (= lt!279820 (select (arr!17914 a!2986) j!136)))))

(assert (=> b!611481 (= lt!279820 (select (store (arr!17914 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!611482 () Bool)

(declare-fun res!393366 () Bool)

(assert (=> b!611482 (=> (not res!393366) (not e!350429))))

(assert (=> b!611482 (= res!393366 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611483 () Bool)

(declare-fun e!350436 () Bool)

(assert (=> b!611483 (= e!350442 e!350436)))

(declare-fun res!393367 () Bool)

(assert (=> b!611483 (=> res!393367 e!350436)))

(assert (=> b!611483 (= res!393367 (bvsge index!984 j!136))))

(declare-fun lt!279833 () Unit!19594)

(declare-fun e!350440 () Unit!19594)

(assert (=> b!611483 (= lt!279833 e!350440)))

(declare-fun c!69430 () Bool)

(assert (=> b!611483 (= c!69430 (bvslt j!136 index!984))))

(declare-fun b!611484 () Bool)

(declare-fun e!350439 () Bool)

(assert (=> b!611484 (= e!350439 (arrayContainsKey!0 lt!279828 (select (arr!17914 a!2986) j!136) index!984))))

(declare-fun b!611485 () Bool)

(declare-fun e!350430 () Bool)

(assert (=> b!611485 (= e!350430 e!350439)))

(declare-fun res!393360 () Bool)

(assert (=> b!611485 (=> (not res!393360) (not e!350439))))

(assert (=> b!611485 (= res!393360 (arrayContainsKey!0 lt!279828 (select (arr!17914 a!2986) j!136) j!136))))

(declare-fun b!611486 () Bool)

(declare-fun Unit!19597 () Unit!19594)

(assert (=> b!611486 (= e!350440 Unit!19597)))

(declare-fun b!611487 () Bool)

(declare-fun e!350432 () Bool)

(assert (=> b!611487 (= e!350432 (not e!350437))))

(declare-fun res!393356 () Bool)

(assert (=> b!611487 (=> res!393356 e!350437)))

(declare-datatypes ((SeekEntryResult!6361 0))(
  ( (MissingZero!6361 (index!27727 (_ BitVec 32))) (Found!6361 (index!27728 (_ BitVec 32))) (Intermediate!6361 (undefined!7173 Bool) (index!27729 (_ BitVec 32)) (x!56570 (_ BitVec 32))) (Undefined!6361) (MissingVacant!6361 (index!27730 (_ BitVec 32))) )
))
(declare-fun lt!279831 () SeekEntryResult!6361)

(assert (=> b!611487 (= res!393356 (not (= lt!279831 (Found!6361 index!984))))))

(declare-fun lt!279827 () Unit!19594)

(assert (=> b!611487 (= lt!279827 e!350435)))

(declare-fun c!69431 () Bool)

(assert (=> b!611487 (= c!69431 (= lt!279831 Undefined!6361))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37343 (_ BitVec 32)) SeekEntryResult!6361)

(assert (=> b!611487 (= lt!279831 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279832 lt!279828 mask!3053))))

(declare-fun e!350441 () Bool)

(assert (=> b!611487 e!350441))

(declare-fun res!393358 () Bool)

(assert (=> b!611487 (=> (not res!393358) (not e!350441))))

(declare-fun lt!279823 () (_ BitVec 32))

(declare-fun lt!279830 () SeekEntryResult!6361)

(assert (=> b!611487 (= res!393358 (= lt!279830 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279823 vacantSpotIndex!68 lt!279832 lt!279828 mask!3053)))))

(assert (=> b!611487 (= lt!279830 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279823 vacantSpotIndex!68 (select (arr!17914 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611487 (= lt!279832 (select (store (arr!17914 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!279822 () Unit!19594)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37343 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19594)

(assert (=> b!611487 (= lt!279822 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279823 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611487 (= lt!279823 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611488 () Bool)

(declare-fun res!393362 () Bool)

(assert (=> b!611488 (=> (not res!393362) (not e!350429))))

(assert (=> b!611488 (= res!393362 (validKeyInArray!0 k0!1786))))

(declare-fun res!393368 () Bool)

(assert (=> start!55910 (=> (not res!393368) (not e!350429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55910 (= res!393368 (validMask!0 mask!3053))))

(assert (=> start!55910 e!350429))

(assert (=> start!55910 true))

(declare-fun array_inv!13688 (array!37343) Bool)

(assert (=> start!55910 (array_inv!13688 a!2986)))

(declare-fun b!611489 () Bool)

(declare-fun res!393364 () Bool)

(assert (=> b!611489 (=> (not res!393364) (not e!350434))))

(declare-datatypes ((List!12008 0))(
  ( (Nil!12005) (Cons!12004 (h!13049 (_ BitVec 64)) (t!18244 List!12008)) )
))
(declare-fun arrayNoDuplicates!0 (array!37343 (_ BitVec 32) List!12008) Bool)

(assert (=> b!611489 (= res!393364 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12005))))

(declare-fun b!611490 () Bool)

(declare-fun res!393350 () Bool)

(assert (=> b!611490 (=> (not res!393350) (not e!350434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37343 (_ BitVec 32)) Bool)

(assert (=> b!611490 (= res!393350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611491 () Bool)

(assert (=> b!611491 (= e!350443 e!350432)))

(declare-fun res!393355 () Bool)

(assert (=> b!611491 (=> (not res!393355) (not e!350432))))

(declare-fun lt!279834 () SeekEntryResult!6361)

(assert (=> b!611491 (= res!393355 (and (= lt!279834 (Found!6361 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17914 a!2986) index!984) (select (arr!17914 a!2986) j!136))) (not (= (select (arr!17914 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!611491 (= lt!279834 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17914 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611492 () Bool)

(assert (=> b!611492 (= e!350436 true)))

(assert (=> b!611492 (arrayNoDuplicates!0 lt!279828 #b00000000000000000000000000000000 Nil!12005)))

(declare-fun lt!279824 () Unit!19594)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37343 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12008) Unit!19594)

(assert (=> b!611492 (= lt!279824 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12005))))

(assert (=> b!611492 (arrayContainsKey!0 lt!279828 (select (arr!17914 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279818 () Unit!19594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37343 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19594)

(assert (=> b!611492 (= lt!279818 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279828 (select (arr!17914 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!611492 e!350433))

(declare-fun res!393361 () Bool)

(assert (=> b!611492 (=> (not res!393361) (not e!350433))))

(assert (=> b!611492 (= res!393361 (arrayContainsKey!0 lt!279828 (select (arr!17914 a!2986) j!136) j!136))))

(declare-fun b!611493 () Bool)

(declare-fun res!393352 () Bool)

(assert (=> b!611493 (=> (not res!393352) (not e!350429))))

(assert (=> b!611493 (= res!393352 (and (= (size!18278 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18278 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18278 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611494 () Bool)

(declare-fun Unit!19598 () Unit!19594)

(assert (=> b!611494 (= e!350440 Unit!19598)))

(declare-fun lt!279826 () Unit!19594)

(assert (=> b!611494 (= lt!279826 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279828 (select (arr!17914 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611494 (arrayContainsKey!0 lt!279828 (select (arr!17914 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279821 () Unit!19594)

(assert (=> b!611494 (= lt!279821 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12005))))

(assert (=> b!611494 (arrayNoDuplicates!0 lt!279828 #b00000000000000000000000000000000 Nil!12005)))

(declare-fun lt!279829 () Unit!19594)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37343 (_ BitVec 32) (_ BitVec 32)) Unit!19594)

(assert (=> b!611494 (= lt!279829 (lemmaNoDuplicateFromThenFromBigger!0 lt!279828 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611494 (arrayNoDuplicates!0 lt!279828 j!136 Nil!12005)))

(declare-fun lt!279825 () Unit!19594)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37343 (_ BitVec 64) (_ BitVec 32) List!12008) Unit!19594)

(assert (=> b!611494 (= lt!279825 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279828 (select (arr!17914 a!2986) j!136) j!136 Nil!12005))))

(assert (=> b!611494 false))

(declare-fun b!611495 () Bool)

(assert (=> b!611495 (= e!350429 e!350434)))

(declare-fun res!393351 () Bool)

(assert (=> b!611495 (=> (not res!393351) (not e!350434))))

(declare-fun lt!279819 () SeekEntryResult!6361)

(assert (=> b!611495 (= res!393351 (or (= lt!279819 (MissingZero!6361 i!1108)) (= lt!279819 (MissingVacant!6361 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37343 (_ BitVec 32)) SeekEntryResult!6361)

(assert (=> b!611495 (= lt!279819 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!611496 () Bool)

(declare-fun Unit!19599 () Unit!19594)

(assert (=> b!611496 (= e!350435 Unit!19599)))

(declare-fun b!611497 () Bool)

(assert (=> b!611497 (= e!350441 (= lt!279834 lt!279830))))

(declare-fun b!611498 () Bool)

(assert (=> b!611498 (= e!350431 e!350430)))

(declare-fun res!393359 () Bool)

(assert (=> b!611498 (=> res!393359 e!350430)))

(assert (=> b!611498 (= res!393359 (or (not (= (select (arr!17914 a!2986) j!136) lt!279832)) (not (= (select (arr!17914 a!2986) j!136) lt!279820)) (bvsge j!136 index!984)))))

(assert (= (and start!55910 res!393368) b!611493))

(assert (= (and b!611493 res!393352) b!611476))

(assert (= (and b!611476 res!393353) b!611488))

(assert (= (and b!611488 res!393362) b!611482))

(assert (= (and b!611482 res!393366) b!611495))

(assert (= (and b!611495 res!393351) b!611490))

(assert (= (and b!611490 res!393350) b!611489))

(assert (= (and b!611489 res!393364) b!611477))

(assert (= (and b!611477 res!393357) b!611479))

(assert (= (and b!611479 res!393365) b!611491))

(assert (= (and b!611491 res!393355) b!611487))

(assert (= (and b!611487 res!393358) b!611497))

(assert (= (and b!611487 c!69431) b!611480))

(assert (= (and b!611487 (not c!69431)) b!611496))

(assert (= (and b!611487 (not res!393356)) b!611481))

(assert (= (and b!611481 res!393363) b!611498))

(assert (= (and b!611498 (not res!393359)) b!611485))

(assert (= (and b!611485 res!393360) b!611484))

(assert (= (and b!611481 (not res!393354)) b!611483))

(assert (= (and b!611483 c!69430) b!611494))

(assert (= (and b!611483 (not c!69430)) b!611486))

(assert (= (and b!611483 (not res!393367)) b!611492))

(assert (= (and b!611492 res!393361) b!611478))

(declare-fun m!587929 () Bool)

(assert (=> b!611490 m!587929))

(declare-fun m!587931 () Bool)

(assert (=> b!611482 m!587931))

(declare-fun m!587933 () Bool)

(assert (=> b!611481 m!587933))

(declare-fun m!587935 () Bool)

(assert (=> b!611481 m!587935))

(declare-fun m!587937 () Bool)

(assert (=> b!611481 m!587937))

(assert (=> b!611476 m!587933))

(assert (=> b!611476 m!587933))

(declare-fun m!587939 () Bool)

(assert (=> b!611476 m!587939))

(assert (=> b!611498 m!587933))

(assert (=> b!611484 m!587933))

(assert (=> b!611484 m!587933))

(declare-fun m!587941 () Bool)

(assert (=> b!611484 m!587941))

(declare-fun m!587943 () Bool)

(assert (=> b!611495 m!587943))

(declare-fun m!587945 () Bool)

(assert (=> b!611494 m!587945))

(assert (=> b!611494 m!587933))

(declare-fun m!587947 () Bool)

(assert (=> b!611494 m!587947))

(assert (=> b!611494 m!587933))

(declare-fun m!587949 () Bool)

(assert (=> b!611494 m!587949))

(declare-fun m!587951 () Bool)

(assert (=> b!611494 m!587951))

(assert (=> b!611494 m!587933))

(declare-fun m!587953 () Bool)

(assert (=> b!611494 m!587953))

(declare-fun m!587955 () Bool)

(assert (=> b!611494 m!587955))

(assert (=> b!611494 m!587933))

(declare-fun m!587957 () Bool)

(assert (=> b!611494 m!587957))

(declare-fun m!587959 () Bool)

(assert (=> start!55910 m!587959))

(declare-fun m!587961 () Bool)

(assert (=> start!55910 m!587961))

(declare-fun m!587963 () Bool)

(assert (=> b!611488 m!587963))

(assert (=> b!611492 m!587933))

(declare-fun m!587965 () Bool)

(assert (=> b!611492 m!587965))

(assert (=> b!611492 m!587933))

(declare-fun m!587967 () Bool)

(assert (=> b!611492 m!587967))

(assert (=> b!611492 m!587933))

(declare-fun m!587969 () Bool)

(assert (=> b!611492 m!587969))

(assert (=> b!611492 m!587955))

(assert (=> b!611492 m!587933))

(assert (=> b!611492 m!587957))

(declare-fun m!587971 () Bool)

(assert (=> b!611489 m!587971))

(assert (=> b!611479 m!587935))

(declare-fun m!587973 () Bool)

(assert (=> b!611479 m!587973))

(assert (=> b!611485 m!587933))

(assert (=> b!611485 m!587933))

(assert (=> b!611485 m!587965))

(declare-fun m!587975 () Bool)

(assert (=> b!611491 m!587975))

(assert (=> b!611491 m!587933))

(assert (=> b!611491 m!587933))

(declare-fun m!587977 () Bool)

(assert (=> b!611491 m!587977))

(assert (=> b!611478 m!587933))

(assert (=> b!611478 m!587933))

(assert (=> b!611478 m!587941))

(declare-fun m!587979 () Bool)

(assert (=> b!611487 m!587979))

(declare-fun m!587981 () Bool)

(assert (=> b!611487 m!587981))

(assert (=> b!611487 m!587933))

(assert (=> b!611487 m!587933))

(declare-fun m!587983 () Bool)

(assert (=> b!611487 m!587983))

(assert (=> b!611487 m!587935))

(declare-fun m!587985 () Bool)

(assert (=> b!611487 m!587985))

(declare-fun m!587987 () Bool)

(assert (=> b!611487 m!587987))

(declare-fun m!587989 () Bool)

(assert (=> b!611487 m!587989))

(declare-fun m!587991 () Bool)

(assert (=> b!611477 m!587991))

(check-sat (not b!611494) (not b!611495) (not b!611482) (not b!611476) (not b!611484) (not start!55910) (not b!611489) (not b!611487) (not b!611478) (not b!611490) (not b!611485) (not b!611492) (not b!611488) (not b!611491))
(check-sat)
