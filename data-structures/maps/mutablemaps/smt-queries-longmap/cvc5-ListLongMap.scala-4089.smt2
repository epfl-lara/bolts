; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56040 () Bool)

(assert start!56040)

(declare-fun b!616289 () Bool)

(declare-fun res!397097 () Bool)

(declare-fun e!353386 () Bool)

(assert (=> b!616289 (=> (not res!397097) (not e!353386))))

(declare-datatypes ((array!37473 0))(
  ( (array!37474 (arr!17979 (Array (_ BitVec 32) (_ BitVec 64))) (size!18343 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37473)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616289 (= res!397097 (validKeyInArray!0 (select (arr!17979 a!2986) j!136)))))

(declare-fun b!616290 () Bool)

(declare-datatypes ((Unit!20080 0))(
  ( (Unit!20081) )
))
(declare-fun e!353384 () Unit!20080)

(declare-fun Unit!20082 () Unit!20080)

(assert (=> b!616290 (= e!353384 Unit!20082)))

(declare-fun res!397089 () Bool)

(assert (=> start!56040 (=> (not res!397089) (not e!353386))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56040 (= res!397089 (validMask!0 mask!3053))))

(assert (=> start!56040 e!353386))

(assert (=> start!56040 true))

(declare-fun array_inv!13753 (array!37473) Bool)

(assert (=> start!56040 (array_inv!13753 a!2986)))

(declare-fun b!616291 () Bool)

(declare-fun e!353374 () Bool)

(assert (=> b!616291 (= e!353386 e!353374)))

(declare-fun res!397103 () Bool)

(assert (=> b!616291 (=> (not res!397103) (not e!353374))))

(declare-datatypes ((SeekEntryResult!6426 0))(
  ( (MissingZero!6426 (index!27987 (_ BitVec 32))) (Found!6426 (index!27988 (_ BitVec 32))) (Intermediate!6426 (undefined!7238 Bool) (index!27989 (_ BitVec 32)) (x!56811 (_ BitVec 32))) (Undefined!6426) (MissingVacant!6426 (index!27990 (_ BitVec 32))) )
))
(declare-fun lt!283530 () SeekEntryResult!6426)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!616291 (= res!397103 (or (= lt!283530 (MissingZero!6426 i!1108)) (= lt!283530 (MissingVacant!6426 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37473 (_ BitVec 32)) SeekEntryResult!6426)

(assert (=> b!616291 (= lt!283530 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616292 () Bool)

(declare-fun e!353373 () Bool)

(assert (=> b!616292 (= e!353373 true)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616292 (= (select (store (arr!17979 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun e!353375 () Bool)

(declare-fun b!616293 () Bool)

(declare-fun lt!283524 () array!37473)

(declare-fun arrayContainsKey!0 (array!37473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616293 (= e!353375 (arrayContainsKey!0 lt!283524 (select (arr!17979 a!2986) j!136) index!984))))

(declare-fun b!616294 () Bool)

(declare-fun res!397099 () Bool)

(assert (=> b!616294 (= res!397099 (bvsge j!136 index!984))))

(declare-fun e!353372 () Bool)

(assert (=> b!616294 (=> res!397099 e!353372)))

(declare-fun e!353383 () Bool)

(assert (=> b!616294 (= e!353383 e!353372)))

(declare-fun res!397095 () Bool)

(declare-fun b!616295 () Bool)

(assert (=> b!616295 (= res!397095 (arrayContainsKey!0 lt!283524 (select (arr!17979 a!2986) j!136) j!136))))

(declare-fun e!353376 () Bool)

(assert (=> b!616295 (=> (not res!397095) (not e!353376))))

(assert (=> b!616295 (= e!353372 e!353376)))

(declare-fun b!616296 () Bool)

(declare-fun res!397088 () Bool)

(assert (=> b!616296 (=> (not res!397088) (not e!353386))))

(assert (=> b!616296 (= res!397088 (validKeyInArray!0 k!1786))))

(declare-fun b!616297 () Bool)

(declare-fun res!397094 () Bool)

(assert (=> b!616297 (=> (not res!397094) (not e!353386))))

(assert (=> b!616297 (= res!397094 (and (= (size!18343 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18343 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18343 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616298 () Bool)

(declare-fun e!353381 () Bool)

(declare-fun e!353379 () Bool)

(assert (=> b!616298 (= e!353381 e!353379)))

(declare-fun res!397091 () Bool)

(assert (=> b!616298 (=> (not res!397091) (not e!353379))))

(declare-fun lt!283521 () SeekEntryResult!6426)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616298 (= res!397091 (and (= lt!283521 (Found!6426 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17979 a!2986) index!984) (select (arr!17979 a!2986) j!136))) (not (= (select (arr!17979 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37473 (_ BitVec 32)) SeekEntryResult!6426)

(assert (=> b!616298 (= lt!283521 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17979 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616299 () Bool)

(assert (=> b!616299 false))

(declare-fun lt!283529 () Unit!20080)

(declare-datatypes ((List!12073 0))(
  ( (Nil!12070) (Cons!12069 (h!13114 (_ BitVec 64)) (t!18309 List!12073)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37473 (_ BitVec 64) (_ BitVec 32) List!12073) Unit!20080)

(assert (=> b!616299 (= lt!283529 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283524 (select (arr!17979 a!2986) j!136) index!984 Nil!12070))))

(declare-fun arrayNoDuplicates!0 (array!37473 (_ BitVec 32) List!12073) Bool)

(assert (=> b!616299 (arrayNoDuplicates!0 lt!283524 index!984 Nil!12070)))

(declare-fun lt!283522 () Unit!20080)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37473 (_ BitVec 32) (_ BitVec 32)) Unit!20080)

(assert (=> b!616299 (= lt!283522 (lemmaNoDuplicateFromThenFromBigger!0 lt!283524 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616299 (arrayNoDuplicates!0 lt!283524 #b00000000000000000000000000000000 Nil!12070)))

(declare-fun lt!283531 () Unit!20080)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37473 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12073) Unit!20080)

(assert (=> b!616299 (= lt!283531 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12070))))

(assert (=> b!616299 (arrayContainsKey!0 lt!283524 (select (arr!17979 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283523 () Unit!20080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37473 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20080)

(assert (=> b!616299 (= lt!283523 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283524 (select (arr!17979 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616299 e!353375))

(declare-fun res!397100 () Bool)

(assert (=> b!616299 (=> (not res!397100) (not e!353375))))

(assert (=> b!616299 (= res!397100 (arrayContainsKey!0 lt!283524 (select (arr!17979 a!2986) j!136) j!136))))

(declare-fun e!353382 () Unit!20080)

(declare-fun Unit!20083 () Unit!20080)

(assert (=> b!616299 (= e!353382 Unit!20083)))

(declare-fun b!616300 () Bool)

(declare-fun e!353378 () Unit!20080)

(declare-fun Unit!20084 () Unit!20080)

(assert (=> b!616300 (= e!353378 Unit!20084)))

(declare-fun b!616301 () Bool)

(declare-fun e!353385 () Unit!20080)

(declare-fun Unit!20085 () Unit!20080)

(assert (=> b!616301 (= e!353385 Unit!20085)))

(declare-fun b!616302 () Bool)

(assert (=> b!616302 (= e!353379 (not e!353373))))

(declare-fun res!397098 () Bool)

(assert (=> b!616302 (=> res!397098 e!353373)))

(declare-fun lt!283536 () SeekEntryResult!6426)

(assert (=> b!616302 (= res!397098 (not (= lt!283536 (MissingVacant!6426 vacantSpotIndex!68))))))

(declare-fun lt!283518 () Unit!20080)

(assert (=> b!616302 (= lt!283518 e!353384)))

(declare-fun c!69968 () Bool)

(assert (=> b!616302 (= c!69968 (= lt!283536 (Found!6426 index!984)))))

(declare-fun lt!283517 () Unit!20080)

(assert (=> b!616302 (= lt!283517 e!353385)))

(declare-fun c!69970 () Bool)

(assert (=> b!616302 (= c!69970 (= lt!283536 Undefined!6426))))

(declare-fun lt!283534 () (_ BitVec 64))

(assert (=> b!616302 (= lt!283536 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283534 lt!283524 mask!3053))))

(declare-fun e!353377 () Bool)

(assert (=> b!616302 e!353377))

(declare-fun res!397093 () Bool)

(assert (=> b!616302 (=> (not res!397093) (not e!353377))))

(declare-fun lt!283519 () (_ BitVec 32))

(declare-fun lt!283532 () SeekEntryResult!6426)

(assert (=> b!616302 (= res!397093 (= lt!283532 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283519 vacantSpotIndex!68 lt!283534 lt!283524 mask!3053)))))

(assert (=> b!616302 (= lt!283532 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283519 vacantSpotIndex!68 (select (arr!17979 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616302 (= lt!283534 (select (store (arr!17979 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283520 () Unit!20080)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37473 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20080)

(assert (=> b!616302 (= lt!283520 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283519 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616302 (= lt!283519 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616303 () Bool)

(assert (=> b!616303 (= e!353377 (= lt!283521 lt!283532))))

(declare-fun b!616304 () Bool)

(declare-fun res!397096 () Bool)

(assert (=> b!616304 (=> (not res!397096) (not e!353374))))

(assert (=> b!616304 (= res!397096 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12070))))

(declare-fun b!616305 () Bool)

(declare-fun Unit!20086 () Unit!20080)

(assert (=> b!616305 (= e!353382 Unit!20086)))

(declare-fun b!616306 () Bool)

(declare-fun res!397101 () Bool)

(assert (=> b!616306 (=> (not res!397101) (not e!353386))))

(assert (=> b!616306 (= res!397101 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616307 () Bool)

(assert (=> b!616307 false))

(declare-fun lt!283527 () Unit!20080)

(assert (=> b!616307 (= lt!283527 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283524 (select (arr!17979 a!2986) j!136) j!136 Nil!12070))))

(assert (=> b!616307 (arrayNoDuplicates!0 lt!283524 j!136 Nil!12070)))

(declare-fun lt!283535 () Unit!20080)

(assert (=> b!616307 (= lt!283535 (lemmaNoDuplicateFromThenFromBigger!0 lt!283524 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616307 (arrayNoDuplicates!0 lt!283524 #b00000000000000000000000000000000 Nil!12070)))

(declare-fun lt!283525 () Unit!20080)

(assert (=> b!616307 (= lt!283525 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12070))))

(assert (=> b!616307 (arrayContainsKey!0 lt!283524 (select (arr!17979 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283526 () Unit!20080)

(assert (=> b!616307 (= lt!283526 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283524 (select (arr!17979 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20087 () Unit!20080)

(assert (=> b!616307 (= e!353378 Unit!20087)))

(declare-fun b!616308 () Bool)

(declare-fun Unit!20088 () Unit!20080)

(assert (=> b!616308 (= e!353385 Unit!20088)))

(assert (=> b!616308 false))

(declare-fun b!616309 () Bool)

(declare-fun res!397092 () Bool)

(assert (=> b!616309 (=> (not res!397092) (not e!353374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37473 (_ BitVec 32)) Bool)

(assert (=> b!616309 (= res!397092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616310 () Bool)

(declare-fun Unit!20089 () Unit!20080)

(assert (=> b!616310 (= e!353384 Unit!20089)))

(declare-fun res!397090 () Bool)

(assert (=> b!616310 (= res!397090 (= (select (store (arr!17979 a!2986) i!1108 k!1786) index!984) (select (arr!17979 a!2986) j!136)))))

(assert (=> b!616310 (=> (not res!397090) (not e!353383))))

(assert (=> b!616310 e!353383))

(declare-fun c!69969 () Bool)

(assert (=> b!616310 (= c!69969 (bvslt j!136 index!984))))

(declare-fun lt!283528 () Unit!20080)

(assert (=> b!616310 (= lt!283528 e!353378)))

(declare-fun c!69971 () Bool)

(assert (=> b!616310 (= c!69971 (bvslt index!984 j!136))))

(declare-fun lt!283533 () Unit!20080)

(assert (=> b!616310 (= lt!283533 e!353382)))

(assert (=> b!616310 false))

(declare-fun b!616311 () Bool)

(declare-fun res!397102 () Bool)

(assert (=> b!616311 (=> (not res!397102) (not e!353374))))

(assert (=> b!616311 (= res!397102 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17979 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616312 () Bool)

(assert (=> b!616312 (= e!353374 e!353381)))

(declare-fun res!397087 () Bool)

(assert (=> b!616312 (=> (not res!397087) (not e!353381))))

(assert (=> b!616312 (= res!397087 (= (select (store (arr!17979 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616312 (= lt!283524 (array!37474 (store (arr!17979 a!2986) i!1108 k!1786) (size!18343 a!2986)))))

(declare-fun b!616313 () Bool)

(assert (=> b!616313 (= e!353376 (arrayContainsKey!0 lt!283524 (select (arr!17979 a!2986) j!136) index!984))))

(assert (= (and start!56040 res!397089) b!616297))

(assert (= (and b!616297 res!397094) b!616289))

(assert (= (and b!616289 res!397097) b!616296))

(assert (= (and b!616296 res!397088) b!616306))

(assert (= (and b!616306 res!397101) b!616291))

(assert (= (and b!616291 res!397103) b!616309))

(assert (= (and b!616309 res!397092) b!616304))

(assert (= (and b!616304 res!397096) b!616311))

(assert (= (and b!616311 res!397102) b!616312))

(assert (= (and b!616312 res!397087) b!616298))

(assert (= (and b!616298 res!397091) b!616302))

(assert (= (and b!616302 res!397093) b!616303))

(assert (= (and b!616302 c!69970) b!616308))

(assert (= (and b!616302 (not c!69970)) b!616301))

(assert (= (and b!616302 c!69968) b!616310))

(assert (= (and b!616302 (not c!69968)) b!616290))

(assert (= (and b!616310 res!397090) b!616294))

(assert (= (and b!616294 (not res!397099)) b!616295))

(assert (= (and b!616295 res!397095) b!616313))

(assert (= (and b!616310 c!69969) b!616307))

(assert (= (and b!616310 (not c!69969)) b!616300))

(assert (= (and b!616310 c!69971) b!616299))

(assert (= (and b!616310 (not c!69971)) b!616305))

(assert (= (and b!616299 res!397100) b!616293))

(assert (= (and b!616302 (not res!397098)) b!616292))

(declare-fun m!592509 () Bool)

(assert (=> b!616304 m!592509))

(declare-fun m!592511 () Bool)

(assert (=> b!616295 m!592511))

(assert (=> b!616295 m!592511))

(declare-fun m!592513 () Bool)

(assert (=> b!616295 m!592513))

(declare-fun m!592515 () Bool)

(assert (=> b!616306 m!592515))

(declare-fun m!592517 () Bool)

(assert (=> b!616296 m!592517))

(declare-fun m!592519 () Bool)

(assert (=> b!616309 m!592519))

(assert (=> b!616313 m!592511))

(assert (=> b!616313 m!592511))

(declare-fun m!592521 () Bool)

(assert (=> b!616313 m!592521))

(assert (=> b!616307 m!592511))

(declare-fun m!592523 () Bool)

(assert (=> b!616307 m!592523))

(declare-fun m!592525 () Bool)

(assert (=> b!616307 m!592525))

(declare-fun m!592527 () Bool)

(assert (=> b!616307 m!592527))

(assert (=> b!616307 m!592511))

(assert (=> b!616307 m!592511))

(declare-fun m!592529 () Bool)

(assert (=> b!616307 m!592529))

(declare-fun m!592531 () Bool)

(assert (=> b!616307 m!592531))

(assert (=> b!616307 m!592511))

(declare-fun m!592533 () Bool)

(assert (=> b!616307 m!592533))

(declare-fun m!592535 () Bool)

(assert (=> b!616307 m!592535))

(declare-fun m!592537 () Bool)

(assert (=> b!616311 m!592537))

(assert (=> b!616289 m!592511))

(assert (=> b!616289 m!592511))

(declare-fun m!592539 () Bool)

(assert (=> b!616289 m!592539))

(declare-fun m!592541 () Bool)

(assert (=> b!616312 m!592541))

(declare-fun m!592543 () Bool)

(assert (=> b!616312 m!592543))

(assert (=> b!616310 m!592541))

(declare-fun m!592545 () Bool)

(assert (=> b!616310 m!592545))

(assert (=> b!616310 m!592511))

(declare-fun m!592547 () Bool)

(assert (=> b!616302 m!592547))

(declare-fun m!592549 () Bool)

(assert (=> b!616302 m!592549))

(declare-fun m!592551 () Bool)

(assert (=> b!616302 m!592551))

(assert (=> b!616302 m!592541))

(declare-fun m!592553 () Bool)

(assert (=> b!616302 m!592553))

(assert (=> b!616302 m!592511))

(declare-fun m!592555 () Bool)

(assert (=> b!616302 m!592555))

(assert (=> b!616302 m!592511))

(declare-fun m!592557 () Bool)

(assert (=> b!616302 m!592557))

(declare-fun m!592559 () Bool)

(assert (=> start!56040 m!592559))

(declare-fun m!592561 () Bool)

(assert (=> start!56040 m!592561))

(assert (=> b!616293 m!592511))

(assert (=> b!616293 m!592511))

(assert (=> b!616293 m!592521))

(assert (=> b!616299 m!592511))

(declare-fun m!592563 () Bool)

(assert (=> b!616299 m!592563))

(assert (=> b!616299 m!592525))

(assert (=> b!616299 m!592511))

(declare-fun m!592565 () Bool)

(assert (=> b!616299 m!592565))

(assert (=> b!616299 m!592511))

(declare-fun m!592567 () Bool)

(assert (=> b!616299 m!592567))

(declare-fun m!592569 () Bool)

(assert (=> b!616299 m!592569))

(declare-fun m!592571 () Bool)

(assert (=> b!616299 m!592571))

(assert (=> b!616299 m!592511))

(assert (=> b!616299 m!592511))

(assert (=> b!616299 m!592513))

(assert (=> b!616299 m!592535))

(assert (=> b!616292 m!592541))

(assert (=> b!616292 m!592545))

(declare-fun m!592573 () Bool)

(assert (=> b!616298 m!592573))

(assert (=> b!616298 m!592511))

(assert (=> b!616298 m!592511))

(declare-fun m!592575 () Bool)

(assert (=> b!616298 m!592575))

(declare-fun m!592577 () Bool)

(assert (=> b!616291 m!592577))

(push 1)

