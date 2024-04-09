; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58462 () Bool)

(assert start!58462)

(declare-fun b!645355 () Bool)

(declare-fun e!369862 () Bool)

(declare-fun e!369868 () Bool)

(assert (=> b!645355 (= e!369862 e!369868)))

(declare-fun res!418264 () Bool)

(assert (=> b!645355 (=> (not res!418264) (not e!369868))))

(declare-datatypes ((array!38434 0))(
  ( (array!38435 (arr!18425 (Array (_ BitVec 32) (_ BitVec 64))) (size!18789 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38434)

(declare-fun lt!299334 () array!38434)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645355 (= res!418264 (arrayContainsKey!0 lt!299334 (select (arr!18425 a!2986) j!136) j!136))))

(declare-fun b!645356 () Bool)

(declare-datatypes ((Unit!21904 0))(
  ( (Unit!21905) )
))
(declare-fun e!369858 () Unit!21904)

(declare-fun Unit!21906 () Unit!21904)

(assert (=> b!645356 (= e!369858 Unit!21906)))

(declare-fun lt!299329 () Unit!21904)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38434 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21904)

(assert (=> b!645356 (= lt!299329 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299334 (select (arr!18425 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645356 (arrayContainsKey!0 lt!299334 (select (arr!18425 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!299341 () Unit!21904)

(declare-datatypes ((List!12519 0))(
  ( (Nil!12516) (Cons!12515 (h!13560 (_ BitVec 64)) (t!18755 List!12519)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38434 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12519) Unit!21904)

(assert (=> b!645356 (= lt!299341 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12516))))

(declare-fun arrayNoDuplicates!0 (array!38434 (_ BitVec 32) List!12519) Bool)

(assert (=> b!645356 (arrayNoDuplicates!0 lt!299334 #b00000000000000000000000000000000 Nil!12516)))

(declare-fun lt!299337 () Unit!21904)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38434 (_ BitVec 32) (_ BitVec 32)) Unit!21904)

(assert (=> b!645356 (= lt!299337 (lemmaNoDuplicateFromThenFromBigger!0 lt!299334 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645356 (arrayNoDuplicates!0 lt!299334 j!136 Nil!12516)))

(declare-fun lt!299328 () Unit!21904)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38434 (_ BitVec 64) (_ BitVec 32) List!12519) Unit!21904)

(assert (=> b!645356 (= lt!299328 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299334 (select (arr!18425 a!2986) j!136) j!136 Nil!12516))))

(assert (=> b!645356 false))

(declare-fun b!645357 () Bool)

(declare-fun e!369854 () Bool)

(assert (=> b!645357 (= e!369854 true)))

(assert (=> b!645357 (arrayContainsKey!0 lt!299334 (select (arr!18425 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299340 () Unit!21904)

(assert (=> b!645357 (= lt!299340 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299334 (select (arr!18425 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!369859 () Bool)

(assert (=> b!645357 e!369859))

(declare-fun res!418251 () Bool)

(assert (=> b!645357 (=> (not res!418251) (not e!369859))))

(assert (=> b!645357 (= res!418251 (arrayContainsKey!0 lt!299334 (select (arr!18425 a!2986) j!136) j!136))))

(declare-fun b!645358 () Bool)

(declare-fun e!369856 () Bool)

(declare-datatypes ((SeekEntryResult!6872 0))(
  ( (MissingZero!6872 (index!29822 (_ BitVec 32))) (Found!6872 (index!29823 (_ BitVec 32))) (Intermediate!6872 (undefined!7684 Bool) (index!29824 (_ BitVec 32)) (x!58618 (_ BitVec 32))) (Undefined!6872) (MissingVacant!6872 (index!29825 (_ BitVec 32))) )
))
(declare-fun lt!299331 () SeekEntryResult!6872)

(declare-fun lt!299339 () SeekEntryResult!6872)

(assert (=> b!645358 (= e!369856 (= lt!299331 lt!299339))))

(declare-fun b!645359 () Bool)

(declare-fun res!418262 () Bool)

(declare-fun e!369855 () Bool)

(assert (=> b!645359 (=> (not res!418262) (not e!369855))))

(assert (=> b!645359 (= res!418262 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645360 () Bool)

(declare-fun e!369865 () Bool)

(declare-fun e!369864 () Bool)

(assert (=> b!645360 (= e!369865 (not e!369864))))

(declare-fun res!418252 () Bool)

(assert (=> b!645360 (=> res!418252 e!369864)))

(declare-fun lt!299335 () SeekEntryResult!6872)

(assert (=> b!645360 (= res!418252 (not (= lt!299335 (Found!6872 index!984))))))

(declare-fun lt!299343 () Unit!21904)

(declare-fun e!369860 () Unit!21904)

(assert (=> b!645360 (= lt!299343 e!369860)))

(declare-fun c!73921 () Bool)

(assert (=> b!645360 (= c!73921 (= lt!299335 Undefined!6872))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!299342 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38434 (_ BitVec 32)) SeekEntryResult!6872)

(assert (=> b!645360 (= lt!299335 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299342 lt!299334 mask!3053))))

(assert (=> b!645360 e!369856))

(declare-fun res!418256 () Bool)

(assert (=> b!645360 (=> (not res!418256) (not e!369856))))

(declare-fun lt!299336 () (_ BitVec 32))

(assert (=> b!645360 (= res!418256 (= lt!299339 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299336 vacantSpotIndex!68 lt!299342 lt!299334 mask!3053)))))

(assert (=> b!645360 (= lt!299339 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299336 vacantSpotIndex!68 (select (arr!18425 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645360 (= lt!299342 (select (store (arr!18425 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299333 () Unit!21904)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21904)

(assert (=> b!645360 (= lt!299333 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299336 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645360 (= lt!299336 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645361 () Bool)

(declare-fun res!418253 () Bool)

(declare-fun e!369863 () Bool)

(assert (=> b!645361 (=> (not res!418253) (not e!369863))))

(assert (=> b!645361 (= res!418253 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18425 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645362 () Bool)

(declare-fun e!369861 () Bool)

(assert (=> b!645362 (= e!369861 e!369854)))

(declare-fun res!418263 () Bool)

(assert (=> b!645362 (=> res!418263 e!369854)))

(assert (=> b!645362 (= res!418263 (bvsge index!984 j!136))))

(declare-fun lt!299332 () Unit!21904)

(assert (=> b!645362 (= lt!299332 e!369858)))

(declare-fun c!73922 () Bool)

(assert (=> b!645362 (= c!73922 (bvslt j!136 index!984))))

(declare-fun b!645363 () Bool)

(declare-fun res!418248 () Bool)

(assert (=> b!645363 (=> (not res!418248) (not e!369855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645363 (= res!418248 (validKeyInArray!0 k!1786))))

(declare-fun res!418254 () Bool)

(assert (=> start!58462 (=> (not res!418254) (not e!369855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58462 (= res!418254 (validMask!0 mask!3053))))

(assert (=> start!58462 e!369855))

(assert (=> start!58462 true))

(declare-fun array_inv!14199 (array!38434) Bool)

(assert (=> start!58462 (array_inv!14199 a!2986)))

(declare-fun b!645364 () Bool)

(declare-fun Unit!21907 () Unit!21904)

(assert (=> b!645364 (= e!369858 Unit!21907)))

(declare-fun b!645365 () Bool)

(declare-fun e!369867 () Bool)

(assert (=> b!645365 (= e!369867 e!369865)))

(declare-fun res!418247 () Bool)

(assert (=> b!645365 (=> (not res!418247) (not e!369865))))

(assert (=> b!645365 (= res!418247 (and (= lt!299331 (Found!6872 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18425 a!2986) index!984) (select (arr!18425 a!2986) j!136))) (not (= (select (arr!18425 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!645365 (= lt!299331 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18425 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645366 () Bool)

(assert (=> b!645366 (= e!369859 (arrayContainsKey!0 lt!299334 (select (arr!18425 a!2986) j!136) index!984))))

(declare-fun b!645367 () Bool)

(assert (=> b!645367 (= e!369855 e!369863)))

(declare-fun res!418261 () Bool)

(assert (=> b!645367 (=> (not res!418261) (not e!369863))))

(declare-fun lt!299338 () SeekEntryResult!6872)

(assert (=> b!645367 (= res!418261 (or (= lt!299338 (MissingZero!6872 i!1108)) (= lt!299338 (MissingVacant!6872 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38434 (_ BitVec 32)) SeekEntryResult!6872)

(assert (=> b!645367 (= lt!299338 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645368 () Bool)

(declare-fun res!418258 () Bool)

(assert (=> b!645368 (=> (not res!418258) (not e!369863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38434 (_ BitVec 32)) Bool)

(assert (=> b!645368 (= res!418258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645369 () Bool)

(assert (=> b!645369 (= e!369868 (arrayContainsKey!0 lt!299334 (select (arr!18425 a!2986) j!136) index!984))))

(declare-fun b!645370 () Bool)

(declare-fun res!418250 () Bool)

(assert (=> b!645370 (=> (not res!418250) (not e!369863))))

(assert (=> b!645370 (= res!418250 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12516))))

(declare-fun b!645371 () Bool)

(declare-fun Unit!21908 () Unit!21904)

(assert (=> b!645371 (= e!369860 Unit!21908)))

(assert (=> b!645371 false))

(declare-fun b!645372 () Bool)

(declare-fun res!418259 () Bool)

(assert (=> b!645372 (=> (not res!418259) (not e!369855))))

(assert (=> b!645372 (= res!418259 (validKeyInArray!0 (select (arr!18425 a!2986) j!136)))))

(declare-fun b!645373 () Bool)

(declare-fun e!369866 () Bool)

(assert (=> b!645373 (= e!369866 e!369862)))

(declare-fun res!418257 () Bool)

(assert (=> b!645373 (=> res!418257 e!369862)))

(declare-fun lt!299330 () (_ BitVec 64))

(assert (=> b!645373 (= res!418257 (or (not (= (select (arr!18425 a!2986) j!136) lt!299342)) (not (= (select (arr!18425 a!2986) j!136) lt!299330)) (bvsge j!136 index!984)))))

(declare-fun b!645374 () Bool)

(assert (=> b!645374 (= e!369863 e!369867)))

(declare-fun res!418265 () Bool)

(assert (=> b!645374 (=> (not res!418265) (not e!369867))))

(assert (=> b!645374 (= res!418265 (= (select (store (arr!18425 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645374 (= lt!299334 (array!38435 (store (arr!18425 a!2986) i!1108 k!1786) (size!18789 a!2986)))))

(declare-fun b!645375 () Bool)

(declare-fun res!418249 () Bool)

(assert (=> b!645375 (=> (not res!418249) (not e!369855))))

(assert (=> b!645375 (= res!418249 (and (= (size!18789 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18789 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18789 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645376 () Bool)

(declare-fun Unit!21909 () Unit!21904)

(assert (=> b!645376 (= e!369860 Unit!21909)))

(declare-fun b!645377 () Bool)

(assert (=> b!645377 (= e!369864 e!369861)))

(declare-fun res!418260 () Bool)

(assert (=> b!645377 (=> res!418260 e!369861)))

(assert (=> b!645377 (= res!418260 (or (not (= (select (arr!18425 a!2986) j!136) lt!299342)) (not (= (select (arr!18425 a!2986) j!136) lt!299330))))))

(assert (=> b!645377 e!369866))

(declare-fun res!418255 () Bool)

(assert (=> b!645377 (=> (not res!418255) (not e!369866))))

(assert (=> b!645377 (= res!418255 (= lt!299330 (select (arr!18425 a!2986) j!136)))))

(assert (=> b!645377 (= lt!299330 (select (store (arr!18425 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!58462 res!418254) b!645375))

(assert (= (and b!645375 res!418249) b!645372))

(assert (= (and b!645372 res!418259) b!645363))

(assert (= (and b!645363 res!418248) b!645359))

(assert (= (and b!645359 res!418262) b!645367))

(assert (= (and b!645367 res!418261) b!645368))

(assert (= (and b!645368 res!418258) b!645370))

(assert (= (and b!645370 res!418250) b!645361))

(assert (= (and b!645361 res!418253) b!645374))

(assert (= (and b!645374 res!418265) b!645365))

(assert (= (and b!645365 res!418247) b!645360))

(assert (= (and b!645360 res!418256) b!645358))

(assert (= (and b!645360 c!73921) b!645371))

(assert (= (and b!645360 (not c!73921)) b!645376))

(assert (= (and b!645360 (not res!418252)) b!645377))

(assert (= (and b!645377 res!418255) b!645373))

(assert (= (and b!645373 (not res!418257)) b!645355))

(assert (= (and b!645355 res!418264) b!645369))

(assert (= (and b!645377 (not res!418260)) b!645362))

(assert (= (and b!645362 c!73922) b!645356))

(assert (= (and b!645362 (not c!73922)) b!645364))

(assert (= (and b!645362 (not res!418263)) b!645357))

(assert (= (and b!645357 res!418251) b!645366))

(declare-fun m!618935 () Bool)

(assert (=> b!645377 m!618935))

(declare-fun m!618937 () Bool)

(assert (=> b!645377 m!618937))

(declare-fun m!618939 () Bool)

(assert (=> b!645377 m!618939))

(declare-fun m!618941 () Bool)

(assert (=> b!645365 m!618941))

(assert (=> b!645365 m!618935))

(assert (=> b!645365 m!618935))

(declare-fun m!618943 () Bool)

(assert (=> b!645365 m!618943))

(declare-fun m!618945 () Bool)

(assert (=> start!58462 m!618945))

(declare-fun m!618947 () Bool)

(assert (=> start!58462 m!618947))

(assert (=> b!645372 m!618935))

(assert (=> b!645372 m!618935))

(declare-fun m!618949 () Bool)

(assert (=> b!645372 m!618949))

(assert (=> b!645357 m!618935))

(assert (=> b!645357 m!618935))

(declare-fun m!618951 () Bool)

(assert (=> b!645357 m!618951))

(assert (=> b!645357 m!618935))

(declare-fun m!618953 () Bool)

(assert (=> b!645357 m!618953))

(assert (=> b!645357 m!618935))

(declare-fun m!618955 () Bool)

(assert (=> b!645357 m!618955))

(declare-fun m!618957 () Bool)

(assert (=> b!645370 m!618957))

(assert (=> b!645369 m!618935))

(assert (=> b!645369 m!618935))

(declare-fun m!618959 () Bool)

(assert (=> b!645369 m!618959))

(assert (=> b!645374 m!618937))

(declare-fun m!618961 () Bool)

(assert (=> b!645374 m!618961))

(declare-fun m!618963 () Bool)

(assert (=> b!645361 m!618963))

(assert (=> b!645355 m!618935))

(assert (=> b!645355 m!618935))

(assert (=> b!645355 m!618955))

(declare-fun m!618965 () Bool)

(assert (=> b!645363 m!618965))

(assert (=> b!645366 m!618935))

(assert (=> b!645366 m!618935))

(assert (=> b!645366 m!618959))

(declare-fun m!618967 () Bool)

(assert (=> b!645356 m!618967))

(assert (=> b!645356 m!618935))

(declare-fun m!618969 () Bool)

(assert (=> b!645356 m!618969))

(declare-fun m!618971 () Bool)

(assert (=> b!645356 m!618971))

(declare-fun m!618973 () Bool)

(assert (=> b!645356 m!618973))

(assert (=> b!645356 m!618935))

(declare-fun m!618975 () Bool)

(assert (=> b!645356 m!618975))

(declare-fun m!618977 () Bool)

(assert (=> b!645356 m!618977))

(assert (=> b!645356 m!618935))

(assert (=> b!645356 m!618935))

(declare-fun m!618979 () Bool)

(assert (=> b!645356 m!618979))

(assert (=> b!645373 m!618935))

(declare-fun m!618981 () Bool)

(assert (=> b!645360 m!618981))

(declare-fun m!618983 () Bool)

(assert (=> b!645360 m!618983))

(assert (=> b!645360 m!618935))

(assert (=> b!645360 m!618937))

(declare-fun m!618985 () Bool)

(assert (=> b!645360 m!618985))

(declare-fun m!618987 () Bool)

(assert (=> b!645360 m!618987))

(assert (=> b!645360 m!618935))

(declare-fun m!618989 () Bool)

(assert (=> b!645360 m!618989))

(declare-fun m!618991 () Bool)

(assert (=> b!645360 m!618991))

(declare-fun m!618993 () Bool)

(assert (=> b!645367 m!618993))

(declare-fun m!618995 () Bool)

(assert (=> b!645359 m!618995))

(declare-fun m!618997 () Bool)

(assert (=> b!645368 m!618997))

(push 1)

