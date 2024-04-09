; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55612 () Bool)

(assert start!55612)

(declare-fun res!392094 () Bool)

(declare-fun e!349037 () Bool)

(assert (=> start!55612 (=> (not res!392094) (not e!349037))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55612 (= res!392094 (validMask!0 mask!3053))))

(assert (=> start!55612 e!349037))

(assert (=> start!55612 true))

(declare-datatypes ((array!37306 0))(
  ( (array!37307 (arr!17900 (Array (_ BitVec 32) (_ BitVec 64))) (size!18264 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37306)

(declare-fun array_inv!13674 (array!37306) Bool)

(assert (=> start!55612 (array_inv!13674 a!2986)))

(declare-fun b!609411 () Bool)

(declare-datatypes ((Unit!19510 0))(
  ( (Unit!19511) )
))
(declare-fun e!349035 () Unit!19510)

(declare-fun Unit!19512 () Unit!19510)

(assert (=> b!609411 (= e!349035 Unit!19512)))

(declare-fun b!609412 () Bool)

(declare-fun e!349039 () Bool)

(declare-fun e!349041 () Bool)

(assert (=> b!609412 (= e!349039 e!349041)))

(declare-fun res!392092 () Bool)

(assert (=> b!609412 (=> res!392092 e!349041)))

(assert (=> b!609412 (= res!392092 (or (bvsge (size!18264 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18264 a!2986))))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278666 () array!37306)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609412 (arrayContainsKey!0 lt!278666 (select (arr!17900 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278653 () Unit!19510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37306 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19510)

(assert (=> b!609412 (= lt!278653 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278666 (select (arr!17900 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!349030 () Bool)

(assert (=> b!609412 e!349030))

(declare-fun res!392088 () Bool)

(assert (=> b!609412 (=> (not res!392088) (not e!349030))))

(assert (=> b!609412 (= res!392088 (arrayContainsKey!0 lt!278666 (select (arr!17900 a!2986) j!136) j!136))))

(declare-fun b!609413 () Bool)

(declare-fun res!392093 () Bool)

(assert (=> b!609413 (=> (not res!392093) (not e!349037))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609413 (= res!392093 (validKeyInArray!0 k!1786))))

(declare-fun b!609414 () Bool)

(declare-fun e!349034 () Bool)

(assert (=> b!609414 (= e!349037 e!349034)))

(declare-fun res!392085 () Bool)

(assert (=> b!609414 (=> (not res!392085) (not e!349034))))

(declare-datatypes ((SeekEntryResult!6347 0))(
  ( (MissingZero!6347 (index!27662 (_ BitVec 32))) (Found!6347 (index!27663 (_ BitVec 32))) (Intermediate!6347 (undefined!7159 Bool) (index!27664 (_ BitVec 32)) (x!56489 (_ BitVec 32))) (Undefined!6347) (MissingVacant!6347 (index!27665 (_ BitVec 32))) )
))
(declare-fun lt!278655 () SeekEntryResult!6347)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!609414 (= res!392085 (or (= lt!278655 (MissingZero!6347 i!1108)) (= lt!278655 (MissingVacant!6347 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37306 (_ BitVec 32)) SeekEntryResult!6347)

(assert (=> b!609414 (= lt!278655 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609415 () Bool)

(declare-fun e!349028 () Bool)

(assert (=> b!609415 (= e!349034 e!349028)))

(declare-fun res!392084 () Bool)

(assert (=> b!609415 (=> (not res!392084) (not e!349028))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!609415 (= res!392084 (= (select (store (arr!17900 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609415 (= lt!278666 (array!37307 (store (arr!17900 a!2986) i!1108 k!1786) (size!18264 a!2986)))))

(declare-fun b!609416 () Bool)

(declare-fun Unit!19513 () Unit!19510)

(assert (=> b!609416 (= e!349035 Unit!19513)))

(declare-fun lt!278664 () Unit!19510)

(assert (=> b!609416 (= lt!278664 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278666 (select (arr!17900 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609416 (arrayContainsKey!0 lt!278666 (select (arr!17900 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278657 () Unit!19510)

(declare-datatypes ((List!11994 0))(
  ( (Nil!11991) (Cons!11990 (h!13035 (_ BitVec 64)) (t!18230 List!11994)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37306 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11994) Unit!19510)

(assert (=> b!609416 (= lt!278657 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11991))))

(declare-fun arrayNoDuplicates!0 (array!37306 (_ BitVec 32) List!11994) Bool)

(assert (=> b!609416 (arrayNoDuplicates!0 lt!278666 #b00000000000000000000000000000000 Nil!11991)))

(declare-fun lt!278651 () Unit!19510)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37306 (_ BitVec 32) (_ BitVec 32)) Unit!19510)

(assert (=> b!609416 (= lt!278651 (lemmaNoDuplicateFromThenFromBigger!0 lt!278666 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609416 (arrayNoDuplicates!0 lt!278666 j!136 Nil!11991)))

(declare-fun lt!278663 () Unit!19510)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37306 (_ BitVec 64) (_ BitVec 32) List!11994) Unit!19510)

(assert (=> b!609416 (= lt!278663 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278666 (select (arr!17900 a!2986) j!136) j!136 Nil!11991))))

(assert (=> b!609416 false))

(declare-fun b!609417 () Bool)

(declare-fun e!349038 () Unit!19510)

(declare-fun Unit!19514 () Unit!19510)

(assert (=> b!609417 (= e!349038 Unit!19514)))

(declare-fun b!609418 () Bool)

(assert (=> b!609418 (= e!349041 true)))

(declare-fun lt!278656 () Bool)

(declare-fun contains!3040 (List!11994 (_ BitVec 64)) Bool)

(assert (=> b!609418 (= lt!278656 (contains!3040 Nil!11991 k!1786))))

(declare-fun b!609419 () Bool)

(declare-fun e!349029 () Bool)

(declare-fun e!349027 () Bool)

(assert (=> b!609419 (= e!349029 e!349027)))

(declare-fun res!392086 () Bool)

(assert (=> b!609419 (=> res!392086 e!349027)))

(declare-fun lt!278659 () (_ BitVec 64))

(declare-fun lt!278661 () (_ BitVec 64))

(assert (=> b!609419 (= res!392086 (or (not (= (select (arr!17900 a!2986) j!136) lt!278661)) (not (= (select (arr!17900 a!2986) j!136) lt!278659))))))

(declare-fun e!349036 () Bool)

(assert (=> b!609419 e!349036))

(declare-fun res!392105 () Bool)

(assert (=> b!609419 (=> (not res!392105) (not e!349036))))

(assert (=> b!609419 (= res!392105 (= lt!278659 (select (arr!17900 a!2986) j!136)))))

(assert (=> b!609419 (= lt!278659 (select (store (arr!17900 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609420 () Bool)

(declare-fun Unit!19515 () Unit!19510)

(assert (=> b!609420 (= e!349038 Unit!19515)))

(assert (=> b!609420 false))

(declare-fun e!349031 () Bool)

(declare-fun b!609421 () Bool)

(assert (=> b!609421 (= e!349031 (arrayContainsKey!0 lt!278666 (select (arr!17900 a!2986) j!136) index!984))))

(declare-fun b!609422 () Bool)

(declare-fun e!349032 () Bool)

(assert (=> b!609422 (= e!349032 (not e!349029))))

(declare-fun res!392098 () Bool)

(assert (=> b!609422 (=> res!392098 e!349029)))

(declare-fun lt!278662 () SeekEntryResult!6347)

(assert (=> b!609422 (= res!392098 (not (= lt!278662 (Found!6347 index!984))))))

(declare-fun lt!278658 () Unit!19510)

(assert (=> b!609422 (= lt!278658 e!349038)))

(declare-fun c!69032 () Bool)

(assert (=> b!609422 (= c!69032 (= lt!278662 Undefined!6347))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37306 (_ BitVec 32)) SeekEntryResult!6347)

(assert (=> b!609422 (= lt!278662 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278661 lt!278666 mask!3053))))

(declare-fun e!349042 () Bool)

(assert (=> b!609422 e!349042))

(declare-fun res!392091 () Bool)

(assert (=> b!609422 (=> (not res!392091) (not e!349042))))

(declare-fun lt!278654 () (_ BitVec 32))

(declare-fun lt!278660 () SeekEntryResult!6347)

(assert (=> b!609422 (= res!392091 (= lt!278660 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278654 vacantSpotIndex!68 lt!278661 lt!278666 mask!3053)))))

(assert (=> b!609422 (= lt!278660 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278654 vacantSpotIndex!68 (select (arr!17900 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609422 (= lt!278661 (select (store (arr!17900 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278667 () Unit!19510)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37306 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19510)

(assert (=> b!609422 (= lt!278667 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278654 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609422 (= lt!278654 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609423 () Bool)

(assert (=> b!609423 (= e!349027 e!349039)))

(declare-fun res!392087 () Bool)

(assert (=> b!609423 (=> res!392087 e!349039)))

(assert (=> b!609423 (= res!392087 (bvsge index!984 j!136))))

(declare-fun lt!278665 () Unit!19510)

(assert (=> b!609423 (= lt!278665 e!349035)))

(declare-fun c!69031 () Bool)

(assert (=> b!609423 (= c!69031 (bvslt j!136 index!984))))

(declare-fun b!609424 () Bool)

(declare-fun res!392090 () Bool)

(assert (=> b!609424 (=> (not res!392090) (not e!349034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37306 (_ BitVec 32)) Bool)

(assert (=> b!609424 (= res!392090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609425 () Bool)

(declare-fun res!392102 () Bool)

(assert (=> b!609425 (=> (not res!392102) (not e!349037))))

(assert (=> b!609425 (= res!392102 (and (= (size!18264 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18264 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18264 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609426 () Bool)

(declare-fun res!392103 () Bool)

(assert (=> b!609426 (=> (not res!392103) (not e!349037))))

(assert (=> b!609426 (= res!392103 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609427 () Bool)

(declare-fun res!392083 () Bool)

(assert (=> b!609427 (=> (not res!392083) (not e!349034))))

(assert (=> b!609427 (= res!392083 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17900 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609428 () Bool)

(declare-fun res!392099 () Bool)

(assert (=> b!609428 (=> res!392099 e!349041)))

(declare-fun noDuplicate!342 (List!11994) Bool)

(assert (=> b!609428 (= res!392099 (not (noDuplicate!342 Nil!11991)))))

(declare-fun b!609429 () Bool)

(declare-fun e!349033 () Bool)

(assert (=> b!609429 (= e!349036 e!349033)))

(declare-fun res!392089 () Bool)

(assert (=> b!609429 (=> res!392089 e!349033)))

(assert (=> b!609429 (= res!392089 (or (not (= (select (arr!17900 a!2986) j!136) lt!278661)) (not (= (select (arr!17900 a!2986) j!136) lt!278659)) (bvsge j!136 index!984)))))

(declare-fun b!609430 () Bool)

(assert (=> b!609430 (= e!349033 e!349031)))

(declare-fun res!392096 () Bool)

(assert (=> b!609430 (=> (not res!392096) (not e!349031))))

(assert (=> b!609430 (= res!392096 (arrayContainsKey!0 lt!278666 (select (arr!17900 a!2986) j!136) j!136))))

(declare-fun b!609431 () Bool)

(declare-fun lt!278652 () SeekEntryResult!6347)

(assert (=> b!609431 (= e!349042 (= lt!278652 lt!278660))))

(declare-fun b!609432 () Bool)

(declare-fun res!392104 () Bool)

(assert (=> b!609432 (=> (not res!392104) (not e!349037))))

(assert (=> b!609432 (= res!392104 (validKeyInArray!0 (select (arr!17900 a!2986) j!136)))))

(declare-fun b!609433 () Bool)

(declare-fun res!392101 () Bool)

(assert (=> b!609433 (=> (not res!392101) (not e!349034))))

(assert (=> b!609433 (= res!392101 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11991))))

(declare-fun b!609434 () Bool)

(declare-fun res!392097 () Bool)

(assert (=> b!609434 (=> res!392097 e!349041)))

(assert (=> b!609434 (= res!392097 (contains!3040 Nil!11991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609435 () Bool)

(declare-fun res!392095 () Bool)

(assert (=> b!609435 (=> res!392095 e!349041)))

(assert (=> b!609435 (= res!392095 (contains!3040 Nil!11991 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609436 () Bool)

(assert (=> b!609436 (= e!349028 e!349032)))

(declare-fun res!392100 () Bool)

(assert (=> b!609436 (=> (not res!392100) (not e!349032))))

(assert (=> b!609436 (= res!392100 (and (= lt!278652 (Found!6347 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17900 a!2986) index!984) (select (arr!17900 a!2986) j!136))) (not (= (select (arr!17900 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609436 (= lt!278652 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17900 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609437 () Bool)

(assert (=> b!609437 (= e!349030 (arrayContainsKey!0 lt!278666 (select (arr!17900 a!2986) j!136) index!984))))

(assert (= (and start!55612 res!392094) b!609425))

(assert (= (and b!609425 res!392102) b!609432))

(assert (= (and b!609432 res!392104) b!609413))

(assert (= (and b!609413 res!392093) b!609426))

(assert (= (and b!609426 res!392103) b!609414))

(assert (= (and b!609414 res!392085) b!609424))

(assert (= (and b!609424 res!392090) b!609433))

(assert (= (and b!609433 res!392101) b!609427))

(assert (= (and b!609427 res!392083) b!609415))

(assert (= (and b!609415 res!392084) b!609436))

(assert (= (and b!609436 res!392100) b!609422))

(assert (= (and b!609422 res!392091) b!609431))

(assert (= (and b!609422 c!69032) b!609420))

(assert (= (and b!609422 (not c!69032)) b!609417))

(assert (= (and b!609422 (not res!392098)) b!609419))

(assert (= (and b!609419 res!392105) b!609429))

(assert (= (and b!609429 (not res!392089)) b!609430))

(assert (= (and b!609430 res!392096) b!609421))

(assert (= (and b!609419 (not res!392086)) b!609423))

(assert (= (and b!609423 c!69031) b!609416))

(assert (= (and b!609423 (not c!69031)) b!609411))

(assert (= (and b!609423 (not res!392087)) b!609412))

(assert (= (and b!609412 res!392088) b!609437))

(assert (= (and b!609412 (not res!392092)) b!609428))

(assert (= (and b!609428 (not res!392099)) b!609434))

(assert (= (and b!609434 (not res!392097)) b!609435))

(assert (= (and b!609435 (not res!392095)) b!609418))

(declare-fun m!585957 () Bool)

(assert (=> b!609421 m!585957))

(assert (=> b!609421 m!585957))

(declare-fun m!585959 () Bool)

(assert (=> b!609421 m!585959))

(declare-fun m!585961 () Bool)

(assert (=> b!609433 m!585961))

(declare-fun m!585963 () Bool)

(assert (=> b!609414 m!585963))

(declare-fun m!585965 () Bool)

(assert (=> start!55612 m!585965))

(declare-fun m!585967 () Bool)

(assert (=> start!55612 m!585967))

(declare-fun m!585969 () Bool)

(assert (=> b!609426 m!585969))

(assert (=> b!609416 m!585957))

(declare-fun m!585971 () Bool)

(assert (=> b!609416 m!585971))

(assert (=> b!609416 m!585957))

(declare-fun m!585973 () Bool)

(assert (=> b!609416 m!585973))

(assert (=> b!609416 m!585957))

(declare-fun m!585975 () Bool)

(assert (=> b!609416 m!585975))

(assert (=> b!609416 m!585957))

(declare-fun m!585977 () Bool)

(assert (=> b!609416 m!585977))

(declare-fun m!585979 () Bool)

(assert (=> b!609416 m!585979))

(declare-fun m!585981 () Bool)

(assert (=> b!609416 m!585981))

(declare-fun m!585983 () Bool)

(assert (=> b!609416 m!585983))

(assert (=> b!609429 m!585957))

(declare-fun m!585985 () Bool)

(assert (=> b!609428 m!585985))

(declare-fun m!585987 () Bool)

(assert (=> b!609435 m!585987))

(assert (=> b!609419 m!585957))

(declare-fun m!585989 () Bool)

(assert (=> b!609419 m!585989))

(declare-fun m!585991 () Bool)

(assert (=> b!609419 m!585991))

(declare-fun m!585993 () Bool)

(assert (=> b!609424 m!585993))

(declare-fun m!585995 () Bool)

(assert (=> b!609418 m!585995))

(assert (=> b!609415 m!585989))

(declare-fun m!585997 () Bool)

(assert (=> b!609415 m!585997))

(declare-fun m!585999 () Bool)

(assert (=> b!609422 m!585999))

(declare-fun m!586001 () Bool)

(assert (=> b!609422 m!586001))

(declare-fun m!586003 () Bool)

(assert (=> b!609422 m!586003))

(assert (=> b!609422 m!585957))

(assert (=> b!609422 m!585989))

(assert (=> b!609422 m!585957))

(declare-fun m!586005 () Bool)

(assert (=> b!609422 m!586005))

(declare-fun m!586007 () Bool)

(assert (=> b!609422 m!586007))

(declare-fun m!586009 () Bool)

(assert (=> b!609422 m!586009))

(assert (=> b!609412 m!585957))

(assert (=> b!609412 m!585957))

(declare-fun m!586011 () Bool)

(assert (=> b!609412 m!586011))

(assert (=> b!609412 m!585957))

(declare-fun m!586013 () Bool)

(assert (=> b!609412 m!586013))

(assert (=> b!609412 m!585957))

(declare-fun m!586015 () Bool)

(assert (=> b!609412 m!586015))

(declare-fun m!586017 () Bool)

(assert (=> b!609434 m!586017))

(assert (=> b!609432 m!585957))

(assert (=> b!609432 m!585957))

(declare-fun m!586019 () Bool)

(assert (=> b!609432 m!586019))

(declare-fun m!586021 () Bool)

(assert (=> b!609436 m!586021))

(assert (=> b!609436 m!585957))

(assert (=> b!609436 m!585957))

(declare-fun m!586023 () Bool)

(assert (=> b!609436 m!586023))

(assert (=> b!609437 m!585957))

(assert (=> b!609437 m!585957))

(assert (=> b!609437 m!585959))

(assert (=> b!609430 m!585957))

(assert (=> b!609430 m!585957))

(assert (=> b!609430 m!586015))

(declare-fun m!586025 () Bool)

(assert (=> b!609427 m!586025))

(declare-fun m!586027 () Bool)

(assert (=> b!609413 m!586027))

(push 1)

