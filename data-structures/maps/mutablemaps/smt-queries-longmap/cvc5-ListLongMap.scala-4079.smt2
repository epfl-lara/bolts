; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55980 () Bool)

(assert start!55980)

(declare-fun b!614086 () Bool)

(declare-datatypes ((Unit!19804 0))(
  ( (Unit!19805) )
))
(declare-fun e!352081 () Unit!19804)

(declare-fun Unit!19806 () Unit!19804)

(assert (=> b!614086 (= e!352081 Unit!19806)))

(declare-fun b!614087 () Bool)

(declare-fun res!395550 () Bool)

(declare-fun e!352070 () Bool)

(assert (=> b!614087 (=> res!395550 e!352070)))

(declare-datatypes ((List!12043 0))(
  ( (Nil!12040) (Cons!12039 (h!13084 (_ BitVec 64)) (t!18279 List!12043)) )
))
(declare-fun noDuplicate!370 (List!12043) Bool)

(assert (=> b!614087 (= res!395550 (not (noDuplicate!370 Nil!12040)))))

(declare-fun b!614088 () Bool)

(declare-fun res!395557 () Bool)

(declare-fun e!352073 () Bool)

(assert (=> b!614088 (=> (not res!395557) (not e!352073))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37413 0))(
  ( (array!37414 (arr!17949 (Array (_ BitVec 32) (_ BitVec 64))) (size!18313 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37413)

(assert (=> b!614088 (= res!395557 (and (= (size!18313 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18313 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18313 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614089 () Bool)

(declare-fun e!352082 () Bool)

(declare-fun lt!281739 () array!37413)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614089 (= e!352082 (arrayContainsKey!0 lt!281739 (select (arr!17949 a!2986) j!136) index!984))))

(declare-fun b!614090 () Bool)

(declare-fun e!352069 () Bool)

(assert (=> b!614090 (= e!352069 (arrayContainsKey!0 lt!281739 (select (arr!17949 a!2986) j!136) index!984))))

(declare-fun b!614091 () Bool)

(declare-fun res!395544 () Bool)

(assert (=> b!614091 (=> (not res!395544) (not e!352073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614091 (= res!395544 (validKeyInArray!0 (select (arr!17949 a!2986) j!136)))))

(declare-fun b!614092 () Bool)

(declare-fun e!352071 () Unit!19804)

(declare-fun Unit!19807 () Unit!19804)

(assert (=> b!614092 (= e!352071 Unit!19807)))

(declare-fun b!614093 () Bool)

(declare-fun res!395543 () Bool)

(assert (=> b!614093 (=> (not res!395543) (not e!352073))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!614093 (= res!395543 (validKeyInArray!0 k!1786))))

(declare-fun b!614094 () Bool)

(declare-fun e!352072 () Bool)

(declare-fun e!352078 () Bool)

(assert (=> b!614094 (= e!352072 e!352078)))

(declare-fun res!395561 () Bool)

(assert (=> b!614094 (=> res!395561 e!352078)))

(assert (=> b!614094 (= res!395561 (bvsge index!984 j!136))))

(declare-fun lt!281743 () Unit!19804)

(assert (=> b!614094 (= lt!281743 e!352071)))

(declare-fun c!69640 () Bool)

(assert (=> b!614094 (= c!69640 (bvslt j!136 index!984))))

(declare-fun b!614095 () Bool)

(declare-fun e!352083 () Bool)

(declare-fun e!352077 () Bool)

(assert (=> b!614095 (= e!352083 e!352077)))

(declare-fun res!395548 () Bool)

(assert (=> b!614095 (=> res!395548 e!352077)))

(declare-fun lt!281747 () (_ BitVec 64))

(declare-fun lt!281750 () (_ BitVec 64))

(assert (=> b!614095 (= res!395548 (or (not (= (select (arr!17949 a!2986) j!136) lt!281750)) (not (= (select (arr!17949 a!2986) j!136) lt!281747)) (bvsge j!136 index!984)))))

(declare-fun res!395560 () Bool)

(assert (=> start!55980 (=> (not res!395560) (not e!352073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55980 (= res!395560 (validMask!0 mask!3053))))

(assert (=> start!55980 e!352073))

(assert (=> start!55980 true))

(declare-fun array_inv!13723 (array!37413) Bool)

(assert (=> start!55980 (array_inv!13723 a!2986)))

(declare-fun b!614096 () Bool)

(assert (=> b!614096 (= e!352070 true)))

(declare-fun lt!281735 () Bool)

(declare-fun contains!3070 (List!12043 (_ BitVec 64)) Bool)

(assert (=> b!614096 (= lt!281735 (contains!3070 Nil!12040 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!614097 () Bool)

(declare-fun res!395541 () Bool)

(assert (=> b!614097 (=> res!395541 e!352070)))

(assert (=> b!614097 (= res!395541 (contains!3070 Nil!12040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!614098 () Bool)

(declare-fun Unit!19808 () Unit!19804)

(assert (=> b!614098 (= e!352081 Unit!19808)))

(assert (=> b!614098 false))

(declare-fun b!614099 () Bool)

(declare-fun res!395555 () Bool)

(declare-fun e!352084 () Bool)

(assert (=> b!614099 (=> (not res!395555) (not e!352084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37413 (_ BitVec 32)) Bool)

(assert (=> b!614099 (= res!395555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614100 () Bool)

(declare-fun res!395551 () Bool)

(assert (=> b!614100 (=> (not res!395551) (not e!352084))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!614100 (= res!395551 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17949 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614101 () Bool)

(declare-fun res!395552 () Bool)

(assert (=> b!614101 (=> (not res!395552) (not e!352084))))

(declare-fun arrayNoDuplicates!0 (array!37413 (_ BitVec 32) List!12043) Bool)

(assert (=> b!614101 (= res!395552 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12040))))

(declare-fun b!614102 () Bool)

(assert (=> b!614102 (= e!352078 e!352070)))

(declare-fun res!395545 () Bool)

(assert (=> b!614102 (=> res!395545 e!352070)))

(assert (=> b!614102 (= res!395545 (or (bvsge (size!18313 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18313 a!2986)) (bvsge index!984 (size!18313 a!2986))))))

(assert (=> b!614102 (arrayNoDuplicates!0 lt!281739 index!984 Nil!12040)))

(declare-fun lt!281751 () Unit!19804)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37413 (_ BitVec 32) (_ BitVec 32)) Unit!19804)

(assert (=> b!614102 (= lt!281751 (lemmaNoDuplicateFromThenFromBigger!0 lt!281739 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614102 (arrayNoDuplicates!0 lt!281739 #b00000000000000000000000000000000 Nil!12040)))

(declare-fun lt!281742 () Unit!19804)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37413 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12043) Unit!19804)

(assert (=> b!614102 (= lt!281742 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12040))))

(assert (=> b!614102 (arrayContainsKey!0 lt!281739 (select (arr!17949 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!281749 () Unit!19804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37413 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19804)

(assert (=> b!614102 (= lt!281749 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281739 (select (arr!17949 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614102 e!352069))

(declare-fun res!395549 () Bool)

(assert (=> b!614102 (=> (not res!395549) (not e!352069))))

(assert (=> b!614102 (= res!395549 (arrayContainsKey!0 lt!281739 (select (arr!17949 a!2986) j!136) j!136))))

(declare-fun b!614103 () Bool)

(declare-fun e!352076 () Bool)

(declare-datatypes ((SeekEntryResult!6396 0))(
  ( (MissingZero!6396 (index!27867 (_ BitVec 32))) (Found!6396 (index!27868 (_ BitVec 32))) (Intermediate!6396 (undefined!7208 Bool) (index!27869 (_ BitVec 32)) (x!56701 (_ BitVec 32))) (Undefined!6396) (MissingVacant!6396 (index!27870 (_ BitVec 32))) )
))
(declare-fun lt!281745 () SeekEntryResult!6396)

(declare-fun lt!281738 () SeekEntryResult!6396)

(assert (=> b!614103 (= e!352076 (= lt!281745 lt!281738))))

(declare-fun b!614104 () Bool)

(assert (=> b!614104 (= e!352077 e!352082)))

(declare-fun res!395546 () Bool)

(assert (=> b!614104 (=> (not res!395546) (not e!352082))))

(assert (=> b!614104 (= res!395546 (arrayContainsKey!0 lt!281739 (select (arr!17949 a!2986) j!136) j!136))))

(declare-fun b!614105 () Bool)

(declare-fun e!352080 () Bool)

(assert (=> b!614105 (= e!352080 e!352072)))

(declare-fun res!395540 () Bool)

(assert (=> b!614105 (=> res!395540 e!352072)))

(assert (=> b!614105 (= res!395540 (or (not (= (select (arr!17949 a!2986) j!136) lt!281750)) (not (= (select (arr!17949 a!2986) j!136) lt!281747))))))

(assert (=> b!614105 e!352083))

(declare-fun res!395553 () Bool)

(assert (=> b!614105 (=> (not res!395553) (not e!352083))))

(assert (=> b!614105 (= res!395553 (= lt!281747 (select (arr!17949 a!2986) j!136)))))

(assert (=> b!614105 (= lt!281747 (select (store (arr!17949 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!614106 () Bool)

(declare-fun e!352075 () Bool)

(assert (=> b!614106 (= e!352084 e!352075)))

(declare-fun res!395556 () Bool)

(assert (=> b!614106 (=> (not res!395556) (not e!352075))))

(assert (=> b!614106 (= res!395556 (= (select (store (arr!17949 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!614106 (= lt!281739 (array!37414 (store (arr!17949 a!2986) i!1108 k!1786) (size!18313 a!2986)))))

(declare-fun b!614107 () Bool)

(declare-fun e!352074 () Bool)

(assert (=> b!614107 (= e!352074 (not e!352080))))

(declare-fun res!395542 () Bool)

(assert (=> b!614107 (=> res!395542 e!352080)))

(declare-fun lt!281741 () SeekEntryResult!6396)

(assert (=> b!614107 (= res!395542 (not (= lt!281741 (Found!6396 index!984))))))

(declare-fun lt!281744 () Unit!19804)

(assert (=> b!614107 (= lt!281744 e!352081)))

(declare-fun c!69641 () Bool)

(assert (=> b!614107 (= c!69641 (= lt!281741 Undefined!6396))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37413 (_ BitVec 32)) SeekEntryResult!6396)

(assert (=> b!614107 (= lt!281741 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!281750 lt!281739 mask!3053))))

(assert (=> b!614107 e!352076))

(declare-fun res!395558 () Bool)

(assert (=> b!614107 (=> (not res!395558) (not e!352076))))

(declare-fun lt!281740 () (_ BitVec 32))

(assert (=> b!614107 (= res!395558 (= lt!281738 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281740 vacantSpotIndex!68 lt!281750 lt!281739 mask!3053)))))

(assert (=> b!614107 (= lt!281738 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281740 vacantSpotIndex!68 (select (arr!17949 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!614107 (= lt!281750 (select (store (arr!17949 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!281734 () Unit!19804)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19804)

(assert (=> b!614107 (= lt!281734 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!281740 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614107 (= lt!281740 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614108 () Bool)

(declare-fun Unit!19809 () Unit!19804)

(assert (=> b!614108 (= e!352071 Unit!19809)))

(declare-fun lt!281733 () Unit!19804)

(assert (=> b!614108 (= lt!281733 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281739 (select (arr!17949 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!614108 (arrayContainsKey!0 lt!281739 (select (arr!17949 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!281746 () Unit!19804)

(assert (=> b!614108 (= lt!281746 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12040))))

(assert (=> b!614108 (arrayNoDuplicates!0 lt!281739 #b00000000000000000000000000000000 Nil!12040)))

(declare-fun lt!281737 () Unit!19804)

(assert (=> b!614108 (= lt!281737 (lemmaNoDuplicateFromThenFromBigger!0 lt!281739 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614108 (arrayNoDuplicates!0 lt!281739 j!136 Nil!12040)))

(declare-fun lt!281736 () Unit!19804)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37413 (_ BitVec 64) (_ BitVec 32) List!12043) Unit!19804)

(assert (=> b!614108 (= lt!281736 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!281739 (select (arr!17949 a!2986) j!136) j!136 Nil!12040))))

(assert (=> b!614108 false))

(declare-fun b!614109 () Bool)

(assert (=> b!614109 (= e!352075 e!352074)))

(declare-fun res!395554 () Bool)

(assert (=> b!614109 (=> (not res!395554) (not e!352074))))

(assert (=> b!614109 (= res!395554 (and (= lt!281745 (Found!6396 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17949 a!2986) index!984) (select (arr!17949 a!2986) j!136))) (not (= (select (arr!17949 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!614109 (= lt!281745 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17949 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614110 () Bool)

(declare-fun res!395547 () Bool)

(assert (=> b!614110 (=> (not res!395547) (not e!352073))))

(assert (=> b!614110 (= res!395547 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614111 () Bool)

(assert (=> b!614111 (= e!352073 e!352084)))

(declare-fun res!395559 () Bool)

(assert (=> b!614111 (=> (not res!395559) (not e!352084))))

(declare-fun lt!281748 () SeekEntryResult!6396)

(assert (=> b!614111 (= res!395559 (or (= lt!281748 (MissingZero!6396 i!1108)) (= lt!281748 (MissingVacant!6396 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37413 (_ BitVec 32)) SeekEntryResult!6396)

(assert (=> b!614111 (= lt!281748 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!55980 res!395560) b!614088))

(assert (= (and b!614088 res!395557) b!614091))

(assert (= (and b!614091 res!395544) b!614093))

(assert (= (and b!614093 res!395543) b!614110))

(assert (= (and b!614110 res!395547) b!614111))

(assert (= (and b!614111 res!395559) b!614099))

(assert (= (and b!614099 res!395555) b!614101))

(assert (= (and b!614101 res!395552) b!614100))

(assert (= (and b!614100 res!395551) b!614106))

(assert (= (and b!614106 res!395556) b!614109))

(assert (= (and b!614109 res!395554) b!614107))

(assert (= (and b!614107 res!395558) b!614103))

(assert (= (and b!614107 c!69641) b!614098))

(assert (= (and b!614107 (not c!69641)) b!614086))

(assert (= (and b!614107 (not res!395542)) b!614105))

(assert (= (and b!614105 res!395553) b!614095))

(assert (= (and b!614095 (not res!395548)) b!614104))

(assert (= (and b!614104 res!395546) b!614089))

(assert (= (and b!614105 (not res!395540)) b!614094))

(assert (= (and b!614094 c!69640) b!614108))

(assert (= (and b!614094 (not c!69640)) b!614092))

(assert (= (and b!614094 (not res!395561)) b!614102))

(assert (= (and b!614102 res!395549) b!614090))

(assert (= (and b!614102 (not res!395545)) b!614087))

(assert (= (and b!614087 (not res!395550)) b!614097))

(assert (= (and b!614097 (not res!395541)) b!614096))

(declare-fun m!590379 () Bool)

(assert (=> b!614111 m!590379))

(declare-fun m!590381 () Bool)

(assert (=> b!614096 m!590381))

(declare-fun m!590383 () Bool)

(assert (=> b!614100 m!590383))

(declare-fun m!590385 () Bool)

(assert (=> b!614093 m!590385))

(declare-fun m!590387 () Bool)

(assert (=> b!614097 m!590387))

(declare-fun m!590389 () Bool)

(assert (=> b!614106 m!590389))

(declare-fun m!590391 () Bool)

(assert (=> b!614106 m!590391))

(declare-fun m!590393 () Bool)

(assert (=> b!614104 m!590393))

(assert (=> b!614104 m!590393))

(declare-fun m!590395 () Bool)

(assert (=> b!614104 m!590395))

(assert (=> b!614095 m!590393))

(declare-fun m!590397 () Bool)

(assert (=> b!614109 m!590397))

(assert (=> b!614109 m!590393))

(assert (=> b!614109 m!590393))

(declare-fun m!590399 () Bool)

(assert (=> b!614109 m!590399))

(declare-fun m!590401 () Bool)

(assert (=> b!614107 m!590401))

(assert (=> b!614107 m!590393))

(declare-fun m!590403 () Bool)

(assert (=> b!614107 m!590403))

(assert (=> b!614107 m!590389))

(declare-fun m!590405 () Bool)

(assert (=> b!614107 m!590405))

(assert (=> b!614107 m!590393))

(declare-fun m!590407 () Bool)

(assert (=> b!614107 m!590407))

(declare-fun m!590409 () Bool)

(assert (=> b!614107 m!590409))

(declare-fun m!590411 () Bool)

(assert (=> b!614107 m!590411))

(assert (=> b!614091 m!590393))

(assert (=> b!614091 m!590393))

(declare-fun m!590413 () Bool)

(assert (=> b!614091 m!590413))

(declare-fun m!590415 () Bool)

(assert (=> start!55980 m!590415))

(declare-fun m!590417 () Bool)

(assert (=> start!55980 m!590417))

(declare-fun m!590419 () Bool)

(assert (=> b!614099 m!590419))

(declare-fun m!590421 () Bool)

(assert (=> b!614101 m!590421))

(declare-fun m!590423 () Bool)

(assert (=> b!614087 m!590423))

(assert (=> b!614089 m!590393))

(assert (=> b!614089 m!590393))

(declare-fun m!590425 () Bool)

(assert (=> b!614089 m!590425))

(declare-fun m!590427 () Bool)

(assert (=> b!614110 m!590427))

(assert (=> b!614105 m!590393))

(assert (=> b!614105 m!590389))

(declare-fun m!590429 () Bool)

(assert (=> b!614105 m!590429))

(assert (=> b!614090 m!590393))

(assert (=> b!614090 m!590393))

(assert (=> b!614090 m!590425))

(assert (=> b!614108 m!590393))

(declare-fun m!590431 () Bool)

(assert (=> b!614108 m!590431))

(declare-fun m!590433 () Bool)

(assert (=> b!614108 m!590433))

(assert (=> b!614108 m!590393))

(declare-fun m!590435 () Bool)

(assert (=> b!614108 m!590435))

(declare-fun m!590437 () Bool)

(assert (=> b!614108 m!590437))

(assert (=> b!614108 m!590393))

(declare-fun m!590439 () Bool)

(assert (=> b!614108 m!590439))

(declare-fun m!590441 () Bool)

(assert (=> b!614108 m!590441))

(assert (=> b!614108 m!590393))

(declare-fun m!590443 () Bool)

(assert (=> b!614108 m!590443))

(declare-fun m!590445 () Bool)

(assert (=> b!614102 m!590445))

(declare-fun m!590447 () Bool)

(assert (=> b!614102 m!590447))

(assert (=> b!614102 m!590393))

(declare-fun m!590449 () Bool)

(assert (=> b!614102 m!590449))

(assert (=> b!614102 m!590393))

(declare-fun m!590451 () Bool)

(assert (=> b!614102 m!590451))

(assert (=> b!614102 m!590393))

(assert (=> b!614102 m!590395))

(assert (=> b!614102 m!590437))

(assert (=> b!614102 m!590393))

(assert (=> b!614102 m!590439))

(push 1)

