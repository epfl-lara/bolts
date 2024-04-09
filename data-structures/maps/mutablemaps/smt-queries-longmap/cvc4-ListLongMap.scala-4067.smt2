; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55912 () Bool)

(assert start!55912)

(declare-fun b!611545 () Bool)

(declare-fun res!393411 () Bool)

(declare-fun e!350478 () Bool)

(assert (=> b!611545 (=> (not res!393411) (not e!350478))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37345 0))(
  ( (array!37346 (arr!17915 (Array (_ BitVec 32) (_ BitVec 64))) (size!18279 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37345)

(assert (=> b!611545 (= res!393411 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17915 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611546 () Bool)

(declare-fun e!350474 () Bool)

(declare-fun e!350479 () Bool)

(assert (=> b!611546 (= e!350474 e!350479)))

(declare-fun res!393421 () Bool)

(assert (=> b!611546 (=> (not res!393421) (not e!350479))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6362 0))(
  ( (MissingZero!6362 (index!27731 (_ BitVec 32))) (Found!6362 (index!27732 (_ BitVec 32))) (Intermediate!6362 (undefined!7174 Bool) (index!27733 (_ BitVec 32)) (x!56571 (_ BitVec 32))) (Undefined!6362) (MissingVacant!6362 (index!27734 (_ BitVec 32))) )
))
(declare-fun lt!279875 () SeekEntryResult!6362)

(assert (=> b!611546 (= res!393421 (and (= lt!279875 (Found!6362 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17915 a!2986) index!984) (select (arr!17915 a!2986) j!136))) (not (= (select (arr!17915 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37345 (_ BitVec 32)) SeekEntryResult!6362)

(assert (=> b!611546 (= lt!279875 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17915 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611547 () Bool)

(declare-fun e!350487 () Bool)

(assert (=> b!611547 (= e!350487 true)))

(declare-fun lt!279871 () array!37345)

(declare-datatypes ((List!12009 0))(
  ( (Nil!12006) (Cons!12005 (h!13050 (_ BitVec 64)) (t!18245 List!12009)) )
))
(declare-fun arrayNoDuplicates!0 (array!37345 (_ BitVec 32) List!12009) Bool)

(assert (=> b!611547 (arrayNoDuplicates!0 lt!279871 #b00000000000000000000000000000000 Nil!12006)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((Unit!19600 0))(
  ( (Unit!19601) )
))
(declare-fun lt!279880 () Unit!19600)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37345 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12009) Unit!19600)

(assert (=> b!611547 (= lt!279880 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12006))))

(declare-fun arrayContainsKey!0 (array!37345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611547 (arrayContainsKey!0 lt!279871 (select (arr!17915 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279870 () Unit!19600)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37345 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19600)

(assert (=> b!611547 (= lt!279870 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279871 (select (arr!17915 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350476 () Bool)

(assert (=> b!611547 e!350476))

(declare-fun res!393425 () Bool)

(assert (=> b!611547 (=> (not res!393425) (not e!350476))))

(assert (=> b!611547 (= res!393425 (arrayContainsKey!0 lt!279871 (select (arr!17915 a!2986) j!136) j!136))))

(declare-fun b!611548 () Bool)

(declare-fun e!350483 () Bool)

(assert (=> b!611548 (= e!350483 e!350487)))

(declare-fun res!393416 () Bool)

(assert (=> b!611548 (=> res!393416 e!350487)))

(assert (=> b!611548 (= res!393416 (bvsge index!984 j!136))))

(declare-fun lt!279879 () Unit!19600)

(declare-fun e!350475 () Unit!19600)

(assert (=> b!611548 (= lt!279879 e!350475)))

(declare-fun c!69437 () Bool)

(assert (=> b!611548 (= c!69437 (bvslt j!136 index!984))))

(declare-fun b!611549 () Bool)

(declare-fun Unit!19602 () Unit!19600)

(assert (=> b!611549 (= e!350475 Unit!19602)))

(declare-fun b!611550 () Bool)

(declare-fun e!350480 () Bool)

(declare-fun lt!279881 () SeekEntryResult!6362)

(assert (=> b!611550 (= e!350480 (= lt!279875 lt!279881))))

(declare-fun b!611551 () Bool)

(declare-fun e!350477 () Unit!19600)

(declare-fun Unit!19603 () Unit!19600)

(assert (=> b!611551 (= e!350477 Unit!19603)))

(assert (=> b!611551 false))

(declare-fun b!611552 () Bool)

(declare-fun res!393422 () Bool)

(declare-fun e!350484 () Bool)

(assert (=> b!611552 (=> (not res!393422) (not e!350484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611552 (= res!393422 (validKeyInArray!0 k!1786))))

(declare-fun b!611553 () Bool)

(declare-fun Unit!19604 () Unit!19600)

(assert (=> b!611553 (= e!350475 Unit!19604)))

(declare-fun lt!279873 () Unit!19600)

(assert (=> b!611553 (= lt!279873 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279871 (select (arr!17915 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611553 (arrayContainsKey!0 lt!279871 (select (arr!17915 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279874 () Unit!19600)

(assert (=> b!611553 (= lt!279874 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12006))))

(assert (=> b!611553 (arrayNoDuplicates!0 lt!279871 #b00000000000000000000000000000000 Nil!12006)))

(declare-fun lt!279877 () Unit!19600)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37345 (_ BitVec 32) (_ BitVec 32)) Unit!19600)

(assert (=> b!611553 (= lt!279877 (lemmaNoDuplicateFromThenFromBigger!0 lt!279871 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611553 (arrayNoDuplicates!0 lt!279871 j!136 Nil!12006)))

(declare-fun lt!279872 () Unit!19600)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37345 (_ BitVec 64) (_ BitVec 32) List!12009) Unit!19600)

(assert (=> b!611553 (= lt!279872 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279871 (select (arr!17915 a!2986) j!136) j!136 Nil!12006))))

(assert (=> b!611553 false))

(declare-fun e!350488 () Bool)

(declare-fun b!611554 () Bool)

(assert (=> b!611554 (= e!350488 (arrayContainsKey!0 lt!279871 (select (arr!17915 a!2986) j!136) index!984))))

(declare-fun b!611555 () Bool)

(assert (=> b!611555 (= e!350478 e!350474)))

(declare-fun res!393407 () Bool)

(assert (=> b!611555 (=> (not res!393407) (not e!350474))))

(assert (=> b!611555 (= res!393407 (= (select (store (arr!17915 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611555 (= lt!279871 (array!37346 (store (arr!17915 a!2986) i!1108 k!1786) (size!18279 a!2986)))))

(declare-fun b!611556 () Bool)

(declare-fun Unit!19605 () Unit!19600)

(assert (=> b!611556 (= e!350477 Unit!19605)))

(declare-fun b!611557 () Bool)

(assert (=> b!611557 (= e!350484 e!350478)))

(declare-fun res!393414 () Bool)

(assert (=> b!611557 (=> (not res!393414) (not e!350478))))

(declare-fun lt!279869 () SeekEntryResult!6362)

(assert (=> b!611557 (= res!393414 (or (= lt!279869 (MissingZero!6362 i!1108)) (= lt!279869 (MissingVacant!6362 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37345 (_ BitVec 32)) SeekEntryResult!6362)

(assert (=> b!611557 (= lt!279869 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!611558 () Bool)

(declare-fun e!350486 () Bool)

(assert (=> b!611558 (= e!350486 e!350483)))

(declare-fun res!393415 () Bool)

(assert (=> b!611558 (=> res!393415 e!350483)))

(declare-fun lt!279884 () (_ BitVec 64))

(declare-fun lt!279882 () (_ BitVec 64))

(assert (=> b!611558 (= res!393415 (or (not (= (select (arr!17915 a!2986) j!136) lt!279882)) (not (= (select (arr!17915 a!2986) j!136) lt!279884))))))

(declare-fun e!350481 () Bool)

(assert (=> b!611558 e!350481))

(declare-fun res!393408 () Bool)

(assert (=> b!611558 (=> (not res!393408) (not e!350481))))

(assert (=> b!611558 (= res!393408 (= lt!279884 (select (arr!17915 a!2986) j!136)))))

(assert (=> b!611558 (= lt!279884 (select (store (arr!17915 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!611559 () Bool)

(declare-fun res!393417 () Bool)

(assert (=> b!611559 (=> (not res!393417) (not e!350478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37345 (_ BitVec 32)) Bool)

(assert (=> b!611559 (= res!393417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!393419 () Bool)

(assert (=> start!55912 (=> (not res!393419) (not e!350484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55912 (= res!393419 (validMask!0 mask!3053))))

(assert (=> start!55912 e!350484))

(assert (=> start!55912 true))

(declare-fun array_inv!13689 (array!37345) Bool)

(assert (=> start!55912 (array_inv!13689 a!2986)))

(declare-fun b!611560 () Bool)

(assert (=> b!611560 (= e!350476 (arrayContainsKey!0 lt!279871 (select (arr!17915 a!2986) j!136) index!984))))

(declare-fun b!611561 () Bool)

(declare-fun res!393418 () Bool)

(assert (=> b!611561 (=> (not res!393418) (not e!350478))))

(assert (=> b!611561 (= res!393418 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12006))))

(declare-fun b!611562 () Bool)

(declare-fun res!393413 () Bool)

(assert (=> b!611562 (=> (not res!393413) (not e!350484))))

(assert (=> b!611562 (= res!393413 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611563 () Bool)

(declare-fun res!393423 () Bool)

(assert (=> b!611563 (=> (not res!393423) (not e!350484))))

(assert (=> b!611563 (= res!393423 (and (= (size!18279 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18279 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18279 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611564 () Bool)

(declare-fun e!350482 () Bool)

(assert (=> b!611564 (= e!350482 e!350488)))

(declare-fun res!393420 () Bool)

(assert (=> b!611564 (=> (not res!393420) (not e!350488))))

(assert (=> b!611564 (= res!393420 (arrayContainsKey!0 lt!279871 (select (arr!17915 a!2986) j!136) j!136))))

(declare-fun b!611565 () Bool)

(assert (=> b!611565 (= e!350479 (not e!350486))))

(declare-fun res!393410 () Bool)

(assert (=> b!611565 (=> res!393410 e!350486)))

(declare-fun lt!279878 () SeekEntryResult!6362)

(assert (=> b!611565 (= res!393410 (not (= lt!279878 (Found!6362 index!984))))))

(declare-fun lt!279883 () Unit!19600)

(assert (=> b!611565 (= lt!279883 e!350477)))

(declare-fun c!69436 () Bool)

(assert (=> b!611565 (= c!69436 (= lt!279878 Undefined!6362))))

(assert (=> b!611565 (= lt!279878 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279882 lt!279871 mask!3053))))

(assert (=> b!611565 e!350480))

(declare-fun res!393412 () Bool)

(assert (=> b!611565 (=> (not res!393412) (not e!350480))))

(declare-fun lt!279885 () (_ BitVec 32))

(assert (=> b!611565 (= res!393412 (= lt!279881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279885 vacantSpotIndex!68 lt!279882 lt!279871 mask!3053)))))

(assert (=> b!611565 (= lt!279881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279885 vacantSpotIndex!68 (select (arr!17915 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611565 (= lt!279882 (select (store (arr!17915 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279876 () Unit!19600)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37345 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19600)

(assert (=> b!611565 (= lt!279876 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279885 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611565 (= lt!279885 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611566 () Bool)

(assert (=> b!611566 (= e!350481 e!350482)))

(declare-fun res!393424 () Bool)

(assert (=> b!611566 (=> res!393424 e!350482)))

(assert (=> b!611566 (= res!393424 (or (not (= (select (arr!17915 a!2986) j!136) lt!279882)) (not (= (select (arr!17915 a!2986) j!136) lt!279884)) (bvsge j!136 index!984)))))

(declare-fun b!611567 () Bool)

(declare-fun res!393409 () Bool)

(assert (=> b!611567 (=> (not res!393409) (not e!350484))))

(assert (=> b!611567 (= res!393409 (validKeyInArray!0 (select (arr!17915 a!2986) j!136)))))

(assert (= (and start!55912 res!393419) b!611563))

(assert (= (and b!611563 res!393423) b!611567))

(assert (= (and b!611567 res!393409) b!611552))

(assert (= (and b!611552 res!393422) b!611562))

(assert (= (and b!611562 res!393413) b!611557))

(assert (= (and b!611557 res!393414) b!611559))

(assert (= (and b!611559 res!393417) b!611561))

(assert (= (and b!611561 res!393418) b!611545))

(assert (= (and b!611545 res!393411) b!611555))

(assert (= (and b!611555 res!393407) b!611546))

(assert (= (and b!611546 res!393421) b!611565))

(assert (= (and b!611565 res!393412) b!611550))

(assert (= (and b!611565 c!69436) b!611551))

(assert (= (and b!611565 (not c!69436)) b!611556))

(assert (= (and b!611565 (not res!393410)) b!611558))

(assert (= (and b!611558 res!393408) b!611566))

(assert (= (and b!611566 (not res!393424)) b!611564))

(assert (= (and b!611564 res!393420) b!611554))

(assert (= (and b!611558 (not res!393415)) b!611548))

(assert (= (and b!611548 c!69437) b!611553))

(assert (= (and b!611548 (not c!69437)) b!611549))

(assert (= (and b!611548 (not res!393416)) b!611547))

(assert (= (and b!611547 res!393425) b!611560))

(declare-fun m!587993 () Bool)

(assert (=> b!611545 m!587993))

(declare-fun m!587995 () Bool)

(assert (=> b!611562 m!587995))

(declare-fun m!587997 () Bool)

(assert (=> b!611565 m!587997))

(declare-fun m!587999 () Bool)

(assert (=> b!611565 m!587999))

(assert (=> b!611565 m!587999))

(declare-fun m!588001 () Bool)

(assert (=> b!611565 m!588001))

(declare-fun m!588003 () Bool)

(assert (=> b!611565 m!588003))

(declare-fun m!588005 () Bool)

(assert (=> b!611565 m!588005))

(declare-fun m!588007 () Bool)

(assert (=> b!611565 m!588007))

(declare-fun m!588009 () Bool)

(assert (=> b!611565 m!588009))

(declare-fun m!588011 () Bool)

(assert (=> b!611565 m!588011))

(declare-fun m!588013 () Bool)

(assert (=> b!611559 m!588013))

(declare-fun m!588015 () Bool)

(assert (=> b!611561 m!588015))

(assert (=> b!611558 m!587999))

(assert (=> b!611558 m!588009))

(declare-fun m!588017 () Bool)

(assert (=> b!611558 m!588017))

(assert (=> b!611564 m!587999))

(assert (=> b!611564 m!587999))

(declare-fun m!588019 () Bool)

(assert (=> b!611564 m!588019))

(assert (=> b!611566 m!587999))

(declare-fun m!588021 () Bool)

(assert (=> start!55912 m!588021))

(declare-fun m!588023 () Bool)

(assert (=> start!55912 m!588023))

(assert (=> b!611555 m!588009))

(declare-fun m!588025 () Bool)

(assert (=> b!611555 m!588025))

(declare-fun m!588027 () Bool)

(assert (=> b!611557 m!588027))

(assert (=> b!611547 m!587999))

(declare-fun m!588029 () Bool)

(assert (=> b!611547 m!588029))

(assert (=> b!611547 m!587999))

(declare-fun m!588031 () Bool)

(assert (=> b!611547 m!588031))

(assert (=> b!611547 m!587999))

(declare-fun m!588033 () Bool)

(assert (=> b!611547 m!588033))

(assert (=> b!611547 m!587999))

(assert (=> b!611547 m!588019))

(declare-fun m!588035 () Bool)

(assert (=> b!611547 m!588035))

(assert (=> b!611560 m!587999))

(assert (=> b!611560 m!587999))

(declare-fun m!588037 () Bool)

(assert (=> b!611560 m!588037))

(assert (=> b!611567 m!587999))

(assert (=> b!611567 m!587999))

(declare-fun m!588039 () Bool)

(assert (=> b!611567 m!588039))

(assert (=> b!611553 m!588031))

(declare-fun m!588041 () Bool)

(assert (=> b!611553 m!588041))

(assert (=> b!611553 m!588035))

(assert (=> b!611553 m!587999))

(assert (=> b!611553 m!587999))

(declare-fun m!588043 () Bool)

(assert (=> b!611553 m!588043))

(assert (=> b!611553 m!587999))

(declare-fun m!588045 () Bool)

(assert (=> b!611553 m!588045))

(declare-fun m!588047 () Bool)

(assert (=> b!611553 m!588047))

(assert (=> b!611553 m!587999))

(declare-fun m!588049 () Bool)

(assert (=> b!611553 m!588049))

(declare-fun m!588051 () Bool)

(assert (=> b!611552 m!588051))

(assert (=> b!611554 m!587999))

(assert (=> b!611554 m!587999))

(assert (=> b!611554 m!588037))

(declare-fun m!588053 () Bool)

(assert (=> b!611546 m!588053))

(assert (=> b!611546 m!587999))

(assert (=> b!611546 m!587999))

(declare-fun m!588055 () Bool)

(assert (=> b!611546 m!588055))

(push 1)

