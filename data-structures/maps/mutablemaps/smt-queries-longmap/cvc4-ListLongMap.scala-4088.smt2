; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56038 () Bool)

(assert start!56038)

(declare-datatypes ((array!37471 0))(
  ( (array!37472 (arr!17978 (Array (_ BitVec 32) (_ BitVec 64))) (size!18342 (_ BitVec 32))) )
))
(declare-fun lt!283458 () array!37471)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!616215 () Bool)

(declare-fun res!397045 () Bool)

(declare-fun a!2986 () array!37471)

(declare-fun arrayContainsKey!0 (array!37471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616215 (= res!397045 (arrayContainsKey!0 lt!283458 (select (arr!17978 a!2986) j!136) j!136))))

(declare-fun e!353338 () Bool)

(assert (=> b!616215 (=> (not res!397045) (not e!353338))))

(declare-fun e!353330 () Bool)

(assert (=> b!616215 (= e!353330 e!353338)))

(declare-fun b!616216 () Bool)

(declare-fun e!353335 () Bool)

(declare-datatypes ((SeekEntryResult!6425 0))(
  ( (MissingZero!6425 (index!27983 (_ BitVec 32))) (Found!6425 (index!27984 (_ BitVec 32))) (Intermediate!6425 (undefined!7237 Bool) (index!27985 (_ BitVec 32)) (x!56802 (_ BitVec 32))) (Undefined!6425) (MissingVacant!6425 (index!27986 (_ BitVec 32))) )
))
(declare-fun lt!283459 () SeekEntryResult!6425)

(declare-fun lt!283463 () SeekEntryResult!6425)

(assert (=> b!616216 (= e!353335 (= lt!283459 lt!283463))))

(declare-fun b!616217 () Bool)

(declare-fun res!397041 () Bool)

(declare-fun e!353336 () Bool)

(assert (=> b!616217 (=> (not res!397041) (not e!353336))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37471 (_ BitVec 32)) Bool)

(assert (=> b!616217 (= res!397041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616218 () Bool)

(declare-fun e!353329 () Bool)

(declare-fun e!353327 () Bool)

(assert (=> b!616218 (= e!353329 e!353327)))

(declare-fun res!397052 () Bool)

(assert (=> b!616218 (=> (not res!397052) (not e!353327))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616218 (= res!397052 (and (= lt!283459 (Found!6425 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17978 a!2986) index!984) (select (arr!17978 a!2986) j!136))) (not (= (select (arr!17978 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37471 (_ BitVec 32)) SeekEntryResult!6425)

(assert (=> b!616218 (= lt!283459 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17978 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616219 () Bool)

(declare-fun e!353331 () Bool)

(declare-fun lt!283473 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616219 (= e!353331 (validKeyInArray!0 lt!283473))))

(declare-fun b!616220 () Bool)

(declare-datatypes ((Unit!20070 0))(
  ( (Unit!20071) )
))
(declare-fun e!353341 () Unit!20070)

(declare-fun Unit!20072 () Unit!20070)

(assert (=> b!616220 (= e!353341 Unit!20072)))

(declare-fun b!616221 () Bool)

(declare-fun res!397043 () Bool)

(declare-fun e!353339 () Bool)

(assert (=> b!616221 (=> (not res!397043) (not e!353339))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!616221 (= res!397043 (and (= (size!18342 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18342 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18342 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616222 () Bool)

(assert (=> b!616222 false))

(declare-fun lt!283467 () Unit!20070)

(declare-datatypes ((List!12072 0))(
  ( (Nil!12069) (Cons!12068 (h!13113 (_ BitVec 64)) (t!18308 List!12072)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37471 (_ BitVec 64) (_ BitVec 32) List!12072) Unit!20070)

(assert (=> b!616222 (= lt!283467 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283458 (select (arr!17978 a!2986) j!136) j!136 Nil!12069))))

(declare-fun arrayNoDuplicates!0 (array!37471 (_ BitVec 32) List!12072) Bool)

(assert (=> b!616222 (arrayNoDuplicates!0 lt!283458 j!136 Nil!12069)))

(declare-fun lt!283472 () Unit!20070)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37471 (_ BitVec 32) (_ BitVec 32)) Unit!20070)

(assert (=> b!616222 (= lt!283472 (lemmaNoDuplicateFromThenFromBigger!0 lt!283458 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616222 (arrayNoDuplicates!0 lt!283458 #b00000000000000000000000000000000 Nil!12069)))

(declare-fun lt!283465 () Unit!20070)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37471 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12072) Unit!20070)

(assert (=> b!616222 (= lt!283465 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12069))))

(assert (=> b!616222 (arrayContainsKey!0 lt!283458 (select (arr!17978 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283469 () Unit!20070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37471 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20070)

(assert (=> b!616222 (= lt!283469 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283458 (select (arr!17978 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353340 () Unit!20070)

(declare-fun Unit!20073 () Unit!20070)

(assert (=> b!616222 (= e!353340 Unit!20073)))

(declare-fun b!616223 () Bool)

(declare-fun res!397049 () Bool)

(assert (=> b!616223 (=> (not res!397049) (not e!353339))))

(assert (=> b!616223 (= res!397049 (validKeyInArray!0 (select (arr!17978 a!2986) j!136)))))

(declare-fun res!397037 () Bool)

(assert (=> start!56038 (=> (not res!397037) (not e!353339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56038 (= res!397037 (validMask!0 mask!3053))))

(assert (=> start!56038 e!353339))

(assert (=> start!56038 true))

(declare-fun array_inv!13752 (array!37471) Bool)

(assert (=> start!56038 (array_inv!13752 a!2986)))

(declare-fun b!616214 () Bool)

(declare-fun Unit!20074 () Unit!20070)

(assert (=> b!616214 (= e!353340 Unit!20074)))

(declare-fun b!616224 () Bool)

(declare-fun Unit!20075 () Unit!20070)

(assert (=> b!616224 (= e!353341 Unit!20075)))

(assert (=> b!616224 false))

(declare-fun b!616225 () Bool)

(declare-fun e!353333 () Unit!20070)

(declare-fun Unit!20076 () Unit!20070)

(assert (=> b!616225 (= e!353333 Unit!20076)))

(declare-fun b!616226 () Bool)

(declare-fun e!353332 () Unit!20070)

(declare-fun Unit!20077 () Unit!20070)

(assert (=> b!616226 (= e!353332 Unit!20077)))

(declare-fun b!616227 () Bool)

(assert (=> b!616227 (= e!353339 e!353336)))

(declare-fun res!397044 () Bool)

(assert (=> b!616227 (=> (not res!397044) (not e!353336))))

(declare-fun lt!283464 () SeekEntryResult!6425)

(assert (=> b!616227 (= res!397044 (or (= lt!283464 (MissingZero!6425 i!1108)) (= lt!283464 (MissingVacant!6425 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37471 (_ BitVec 32)) SeekEntryResult!6425)

(assert (=> b!616227 (= lt!283464 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616228 () Bool)

(declare-fun res!397039 () Bool)

(assert (=> b!616228 (=> (not res!397039) (not e!353339))))

(assert (=> b!616228 (= res!397039 (validKeyInArray!0 k!1786))))

(declare-fun b!616229 () Bool)

(declare-fun res!397040 () Bool)

(assert (=> b!616229 (= res!397040 (bvsge j!136 index!984))))

(assert (=> b!616229 (=> res!397040 e!353330)))

(declare-fun e!353334 () Bool)

(assert (=> b!616229 (= e!353334 e!353330)))

(declare-fun b!616230 () Bool)

(declare-fun res!397036 () Bool)

(assert (=> b!616230 (=> (not res!397036) (not e!353336))))

(assert (=> b!616230 (= res!397036 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12069))))

(declare-fun b!616231 () Bool)

(assert (=> b!616231 false))

(declare-fun lt!283461 () Unit!20070)

(assert (=> b!616231 (= lt!283461 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283458 (select (arr!17978 a!2986) j!136) index!984 Nil!12069))))

(assert (=> b!616231 (arrayNoDuplicates!0 lt!283458 index!984 Nil!12069)))

(declare-fun lt!283476 () Unit!20070)

(assert (=> b!616231 (= lt!283476 (lemmaNoDuplicateFromThenFromBigger!0 lt!283458 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616231 (arrayNoDuplicates!0 lt!283458 #b00000000000000000000000000000000 Nil!12069)))

(declare-fun lt!283460 () Unit!20070)

(assert (=> b!616231 (= lt!283460 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12069))))

(assert (=> b!616231 (arrayContainsKey!0 lt!283458 (select (arr!17978 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283457 () Unit!20070)

(assert (=> b!616231 (= lt!283457 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283458 (select (arr!17978 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353337 () Bool)

(assert (=> b!616231 e!353337))

(declare-fun res!397051 () Bool)

(assert (=> b!616231 (=> (not res!397051) (not e!353337))))

(assert (=> b!616231 (= res!397051 (arrayContainsKey!0 lt!283458 (select (arr!17978 a!2986) j!136) j!136))))

(declare-fun Unit!20078 () Unit!20070)

(assert (=> b!616231 (= e!353333 Unit!20078)))

(declare-fun b!616232 () Bool)

(declare-fun res!397038 () Bool)

(assert (=> b!616232 (=> (not res!397038) (not e!353339))))

(assert (=> b!616232 (= res!397038 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616233 () Bool)

(assert (=> b!616233 (= e!353338 (arrayContainsKey!0 lt!283458 (select (arr!17978 a!2986) j!136) index!984))))

(declare-fun b!616234 () Bool)

(declare-fun res!397047 () Bool)

(assert (=> b!616234 (=> (not res!397047) (not e!353336))))

(assert (=> b!616234 (= res!397047 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17978 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616235 () Bool)

(assert (=> b!616235 (= e!353337 (arrayContainsKey!0 lt!283458 (select (arr!17978 a!2986) j!136) index!984))))

(declare-fun b!616236 () Bool)

(declare-fun Unit!20079 () Unit!20070)

(assert (=> b!616236 (= e!353332 Unit!20079)))

(declare-fun res!397048 () Bool)

(assert (=> b!616236 (= res!397048 (= (select (store (arr!17978 a!2986) i!1108 k!1786) index!984) (select (arr!17978 a!2986) j!136)))))

(assert (=> b!616236 (=> (not res!397048) (not e!353334))))

(assert (=> b!616236 e!353334))

(declare-fun c!69957 () Bool)

(assert (=> b!616236 (= c!69957 (bvslt j!136 index!984))))

(declare-fun lt!283470 () Unit!20070)

(assert (=> b!616236 (= lt!283470 e!353340)))

(declare-fun c!69959 () Bool)

(assert (=> b!616236 (= c!69959 (bvslt index!984 j!136))))

(declare-fun lt!283471 () Unit!20070)

(assert (=> b!616236 (= lt!283471 e!353333)))

(assert (=> b!616236 false))

(declare-fun b!616237 () Bool)

(assert (=> b!616237 (= e!353327 (not e!353331))))

(declare-fun res!397046 () Bool)

(assert (=> b!616237 (=> res!397046 e!353331)))

(assert (=> b!616237 (= res!397046 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun lt!283462 () Unit!20070)

(assert (=> b!616237 (= lt!283462 e!353332)))

(declare-fun c!69958 () Bool)

(declare-fun lt!283466 () SeekEntryResult!6425)

(assert (=> b!616237 (= c!69958 (= lt!283466 (Found!6425 index!984)))))

(declare-fun lt!283475 () Unit!20070)

(assert (=> b!616237 (= lt!283475 e!353341)))

(declare-fun c!69956 () Bool)

(assert (=> b!616237 (= c!69956 (= lt!283466 Undefined!6425))))

(assert (=> b!616237 (= lt!283466 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283473 lt!283458 mask!3053))))

(assert (=> b!616237 e!353335))

(declare-fun res!397050 () Bool)

(assert (=> b!616237 (=> (not res!397050) (not e!353335))))

(declare-fun lt!283468 () (_ BitVec 32))

(assert (=> b!616237 (= res!397050 (= lt!283463 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283468 vacantSpotIndex!68 lt!283473 lt!283458 mask!3053)))))

(assert (=> b!616237 (= lt!283463 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283468 vacantSpotIndex!68 (select (arr!17978 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616237 (= lt!283473 (select (store (arr!17978 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283474 () Unit!20070)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37471 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20070)

(assert (=> b!616237 (= lt!283474 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283468 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616237 (= lt!283468 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616238 () Bool)

(assert (=> b!616238 (= e!353336 e!353329)))

(declare-fun res!397042 () Bool)

(assert (=> b!616238 (=> (not res!397042) (not e!353329))))

(assert (=> b!616238 (= res!397042 (= (select (store (arr!17978 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616238 (= lt!283458 (array!37472 (store (arr!17978 a!2986) i!1108 k!1786) (size!18342 a!2986)))))

(assert (= (and start!56038 res!397037) b!616221))

(assert (= (and b!616221 res!397043) b!616223))

(assert (= (and b!616223 res!397049) b!616228))

(assert (= (and b!616228 res!397039) b!616232))

(assert (= (and b!616232 res!397038) b!616227))

(assert (= (and b!616227 res!397044) b!616217))

(assert (= (and b!616217 res!397041) b!616230))

(assert (= (and b!616230 res!397036) b!616234))

(assert (= (and b!616234 res!397047) b!616238))

(assert (= (and b!616238 res!397042) b!616218))

(assert (= (and b!616218 res!397052) b!616237))

(assert (= (and b!616237 res!397050) b!616216))

(assert (= (and b!616237 c!69956) b!616224))

(assert (= (and b!616237 (not c!69956)) b!616220))

(assert (= (and b!616237 c!69958) b!616236))

(assert (= (and b!616237 (not c!69958)) b!616226))

(assert (= (and b!616236 res!397048) b!616229))

(assert (= (and b!616229 (not res!397040)) b!616215))

(assert (= (and b!616215 res!397045) b!616233))

(assert (= (and b!616236 c!69957) b!616222))

(assert (= (and b!616236 (not c!69957)) b!616214))

(assert (= (and b!616236 c!69959) b!616231))

(assert (= (and b!616236 (not c!69959)) b!616225))

(assert (= (and b!616231 res!397051) b!616235))

(assert (= (and b!616237 (not res!397046)) b!616219))

(declare-fun m!592437 () Bool)

(assert (=> b!616238 m!592437))

(declare-fun m!592439 () Bool)

(assert (=> b!616238 m!592439))

(declare-fun m!592441 () Bool)

(assert (=> b!616215 m!592441))

(assert (=> b!616215 m!592441))

(declare-fun m!592443 () Bool)

(assert (=> b!616215 m!592443))

(declare-fun m!592445 () Bool)

(assert (=> b!616232 m!592445))

(declare-fun m!592447 () Bool)

(assert (=> b!616217 m!592447))

(assert (=> b!616235 m!592441))

(assert (=> b!616235 m!592441))

(declare-fun m!592449 () Bool)

(assert (=> b!616235 m!592449))

(declare-fun m!592451 () Bool)

(assert (=> b!616222 m!592451))

(assert (=> b!616222 m!592441))

(assert (=> b!616222 m!592441))

(declare-fun m!592453 () Bool)

(assert (=> b!616222 m!592453))

(assert (=> b!616222 m!592441))

(declare-fun m!592455 () Bool)

(assert (=> b!616222 m!592455))

(declare-fun m!592457 () Bool)

(assert (=> b!616222 m!592457))

(declare-fun m!592459 () Bool)

(assert (=> b!616222 m!592459))

(assert (=> b!616222 m!592441))

(declare-fun m!592461 () Bool)

(assert (=> b!616222 m!592461))

(declare-fun m!592463 () Bool)

(assert (=> b!616222 m!592463))

(declare-fun m!592465 () Bool)

(assert (=> b!616228 m!592465))

(assert (=> b!616223 m!592441))

(assert (=> b!616223 m!592441))

(declare-fun m!592467 () Bool)

(assert (=> b!616223 m!592467))

(declare-fun m!592469 () Bool)

(assert (=> b!616227 m!592469))

(assert (=> b!616233 m!592441))

(assert (=> b!616233 m!592441))

(assert (=> b!616233 m!592449))

(declare-fun m!592471 () Bool)

(assert (=> b!616237 m!592471))

(assert (=> b!616237 m!592441))

(declare-fun m!592473 () Bool)

(assert (=> b!616237 m!592473))

(assert (=> b!616237 m!592437))

(declare-fun m!592475 () Bool)

(assert (=> b!616237 m!592475))

(declare-fun m!592477 () Bool)

(assert (=> b!616237 m!592477))

(assert (=> b!616237 m!592441))

(declare-fun m!592479 () Bool)

(assert (=> b!616237 m!592479))

(declare-fun m!592481 () Bool)

(assert (=> b!616237 m!592481))

(declare-fun m!592483 () Bool)

(assert (=> b!616234 m!592483))

(assert (=> b!616231 m!592441))

(assert (=> b!616231 m!592443))

(assert (=> b!616231 m!592451))

(assert (=> b!616231 m!592441))

(declare-fun m!592485 () Bool)

(assert (=> b!616231 m!592485))

(assert (=> b!616231 m!592441))

(declare-fun m!592487 () Bool)

(assert (=> b!616231 m!592487))

(assert (=> b!616231 m!592463))

(declare-fun m!592489 () Bool)

(assert (=> b!616231 m!592489))

(assert (=> b!616231 m!592441))

(declare-fun m!592491 () Bool)

(assert (=> b!616231 m!592491))

(assert (=> b!616231 m!592441))

(declare-fun m!592493 () Bool)

(assert (=> b!616231 m!592493))

(declare-fun m!592495 () Bool)

(assert (=> start!56038 m!592495))

(declare-fun m!592497 () Bool)

(assert (=> start!56038 m!592497))

(declare-fun m!592499 () Bool)

(assert (=> b!616219 m!592499))

(assert (=> b!616236 m!592437))

(declare-fun m!592501 () Bool)

(assert (=> b!616236 m!592501))

(assert (=> b!616236 m!592441))

(declare-fun m!592503 () Bool)

(assert (=> b!616230 m!592503))

(declare-fun m!592505 () Bool)

(assert (=> b!616218 m!592505))

(assert (=> b!616218 m!592441))

(assert (=> b!616218 m!592441))

(declare-fun m!592507 () Bool)

(assert (=> b!616218 m!592507))

(push 1)

(assert (not b!616215))

(assert (not b!616232))

(assert (not b!616235))

(assert (not b!616222))

(assert (not start!56038))

(assert (not b!616219))

(assert (not b!616237))

(assert (not b!616227))

(assert (not b!616233))

(assert (not b!616231))

(assert (not b!616228))

(assert (not b!616218))

(assert (not b!616217))

(assert (not b!616230))

(assert (not b!616223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

