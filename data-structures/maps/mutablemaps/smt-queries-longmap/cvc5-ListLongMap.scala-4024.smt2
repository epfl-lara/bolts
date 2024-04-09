; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54858 () Bool)

(assert start!54858)

(declare-fun b!599093 () Bool)

(declare-fun res!384259 () Bool)

(declare-fun e!342516 () Bool)

(assert (=> b!599093 (=> (not res!384259) (not e!342516))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599093 (= res!384259 (validKeyInArray!0 k!1786))))

(declare-fun b!599094 () Bool)

(declare-fun res!384274 () Bool)

(declare-fun e!342517 () Bool)

(assert (=> b!599094 (=> res!384274 e!342517)))

(declare-datatypes ((List!11878 0))(
  ( (Nil!11875) (Cons!11874 (h!12919 (_ BitVec 64)) (t!18114 List!11878)) )
))
(declare-fun contains!2963 (List!11878 (_ BitVec 64)) Bool)

(assert (=> b!599094 (= res!384274 (contains!2963 Nil!11875 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599095 () Bool)

(declare-fun res!384271 () Bool)

(assert (=> b!599095 (=> res!384271 e!342517)))

(declare-fun noDuplicate!277 (List!11878) Bool)

(assert (=> b!599095 (= res!384271 (not (noDuplicate!277 Nil!11875)))))

(declare-fun b!599096 () Bool)

(declare-fun e!342512 () Bool)

(declare-fun e!342508 () Bool)

(assert (=> b!599096 (= e!342512 e!342508)))

(declare-fun res!384276 () Bool)

(assert (=> b!599096 (=> res!384276 e!342508)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272365 () (_ BitVec 64))

(declare-fun lt!272367 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37056 0))(
  ( (array!37057 (arr!17784 (Array (_ BitVec 32) (_ BitVec 64))) (size!18148 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37056)

(assert (=> b!599096 (= res!384276 (or (not (= (select (arr!17784 a!2986) j!136) lt!272365)) (not (= (select (arr!17784 a!2986) j!136) lt!272367)) (bvsge j!136 index!984)))))

(declare-fun b!599097 () Bool)

(declare-fun res!384268 () Bool)

(assert (=> b!599097 (=> (not res!384268) (not e!342516))))

(assert (=> b!599097 (= res!384268 (validKeyInArray!0 (select (arr!17784 a!2986) j!136)))))

(declare-fun res!384265 () Bool)

(assert (=> start!54858 (=> (not res!384265) (not e!342516))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54858 (= res!384265 (validMask!0 mask!3053))))

(assert (=> start!54858 e!342516))

(assert (=> start!54858 true))

(declare-fun array_inv!13558 (array!37056) Bool)

(assert (=> start!54858 (array_inv!13558 a!2986)))

(declare-fun b!599098 () Bool)

(declare-fun e!342505 () Bool)

(assert (=> b!599098 (= e!342508 e!342505)))

(declare-fun res!384277 () Bool)

(assert (=> b!599098 (=> (not res!384277) (not e!342505))))

(declare-fun lt!272374 () array!37056)

(declare-fun arrayContainsKey!0 (array!37056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599098 (= res!384277 (arrayContainsKey!0 lt!272374 (select (arr!17784 a!2986) j!136) j!136))))

(declare-fun b!599099 () Bool)

(declare-fun res!384261 () Bool)

(assert (=> b!599099 (=> (not res!384261) (not e!342516))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599099 (= res!384261 (and (= (size!18148 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18148 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18148 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599100 () Bool)

(declare-fun e!342511 () Bool)

(declare-fun e!342507 () Bool)

(assert (=> b!599100 (= e!342511 e!342507)))

(declare-fun res!384263 () Bool)

(assert (=> b!599100 (=> (not res!384263) (not e!342507))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6231 0))(
  ( (MissingZero!6231 (index!27180 (_ BitVec 32))) (Found!6231 (index!27181 (_ BitVec 32))) (Intermediate!6231 (undefined!7043 Bool) (index!27182 (_ BitVec 32)) (x!56015 (_ BitVec 32))) (Undefined!6231) (MissingVacant!6231 (index!27183 (_ BitVec 32))) )
))
(declare-fun lt!272376 () SeekEntryResult!6231)

(assert (=> b!599100 (= res!384263 (and (= lt!272376 (Found!6231 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17784 a!2986) index!984) (select (arr!17784 a!2986) j!136))) (not (= (select (arr!17784 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37056 (_ BitVec 32)) SeekEntryResult!6231)

(assert (=> b!599100 (= lt!272376 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17784 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599101 () Bool)

(declare-fun res!384264 () Bool)

(assert (=> b!599101 (=> (not res!384264) (not e!342516))))

(assert (=> b!599101 (= res!384264 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599102 () Bool)

(declare-fun e!342510 () Bool)

(declare-fun e!342514 () Bool)

(assert (=> b!599102 (= e!342510 e!342514)))

(declare-fun res!384260 () Bool)

(assert (=> b!599102 (=> res!384260 e!342514)))

(assert (=> b!599102 (= res!384260 (or (not (= (select (arr!17784 a!2986) j!136) lt!272365)) (not (= (select (arr!17784 a!2986) j!136) lt!272367)) (bvsge j!136 index!984)))))

(assert (=> b!599102 e!342512))

(declare-fun res!384275 () Bool)

(assert (=> b!599102 (=> (not res!384275) (not e!342512))))

(assert (=> b!599102 (= res!384275 (= lt!272367 (select (arr!17784 a!2986) j!136)))))

(assert (=> b!599102 (= lt!272367 (select (store (arr!17784 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599103 () Bool)

(declare-fun res!384266 () Bool)

(declare-fun e!342506 () Bool)

(assert (=> b!599103 (=> (not res!384266) (not e!342506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37056 (_ BitVec 32)) Bool)

(assert (=> b!599103 (= res!384266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599104 () Bool)

(assert (=> b!599104 (= e!342507 (not e!342510))))

(declare-fun res!384273 () Bool)

(assert (=> b!599104 (=> res!384273 e!342510)))

(declare-fun lt!272371 () SeekEntryResult!6231)

(assert (=> b!599104 (= res!384273 (not (= lt!272371 (Found!6231 index!984))))))

(declare-datatypes ((Unit!18868 0))(
  ( (Unit!18869) )
))
(declare-fun lt!272364 () Unit!18868)

(declare-fun e!342513 () Unit!18868)

(assert (=> b!599104 (= lt!272364 e!342513)))

(declare-fun c!67784 () Bool)

(assert (=> b!599104 (= c!67784 (= lt!272371 Undefined!6231))))

(assert (=> b!599104 (= lt!272371 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272365 lt!272374 mask!3053))))

(declare-fun e!342515 () Bool)

(assert (=> b!599104 e!342515))

(declare-fun res!384269 () Bool)

(assert (=> b!599104 (=> (not res!384269) (not e!342515))))

(declare-fun lt!272373 () SeekEntryResult!6231)

(declare-fun lt!272369 () (_ BitVec 32))

(assert (=> b!599104 (= res!384269 (= lt!272373 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272369 vacantSpotIndex!68 lt!272365 lt!272374 mask!3053)))))

(assert (=> b!599104 (= lt!272373 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272369 vacantSpotIndex!68 (select (arr!17784 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599104 (= lt!272365 (select (store (arr!17784 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272363 () Unit!18868)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37056 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18868)

(assert (=> b!599104 (= lt!272363 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272369 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599104 (= lt!272369 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599105 () Bool)

(assert (=> b!599105 (= e!342514 e!342517)))

(declare-fun res!384272 () Bool)

(assert (=> b!599105 (=> res!384272 e!342517)))

(assert (=> b!599105 (= res!384272 (or (bvsge (size!18148 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18148 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!37056 (_ BitVec 32) List!11878) Bool)

(assert (=> b!599105 (arrayNoDuplicates!0 lt!272374 j!136 Nil!11875)))

(declare-fun lt!272368 () Unit!18868)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37056 (_ BitVec 32) (_ BitVec 32)) Unit!18868)

(assert (=> b!599105 (= lt!272368 (lemmaNoDuplicateFromThenFromBigger!0 lt!272374 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599105 (arrayNoDuplicates!0 lt!272374 #b00000000000000000000000000000000 Nil!11875)))

(declare-fun lt!272372 () Unit!18868)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37056 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11878) Unit!18868)

(assert (=> b!599105 (= lt!272372 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11875))))

(assert (=> b!599105 (arrayContainsKey!0 lt!272374 (select (arr!17784 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272370 () Unit!18868)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37056 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18868)

(assert (=> b!599105 (= lt!272370 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272374 (select (arr!17784 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599106 () Bool)

(assert (=> b!599106 (= e!342516 e!342506)))

(declare-fun res!384262 () Bool)

(assert (=> b!599106 (=> (not res!384262) (not e!342506))))

(declare-fun lt!272366 () SeekEntryResult!6231)

(assert (=> b!599106 (= res!384262 (or (= lt!272366 (MissingZero!6231 i!1108)) (= lt!272366 (MissingVacant!6231 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37056 (_ BitVec 32)) SeekEntryResult!6231)

(assert (=> b!599106 (= lt!272366 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599107 () Bool)

(declare-fun Unit!18870 () Unit!18868)

(assert (=> b!599107 (= e!342513 Unit!18870)))

(declare-fun b!599108 () Bool)

(declare-fun res!384267 () Bool)

(assert (=> b!599108 (=> (not res!384267) (not e!342506))))

(assert (=> b!599108 (= res!384267 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17784 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599109 () Bool)

(assert (=> b!599109 (= e!342517 true)))

(declare-fun lt!272375 () Bool)

(assert (=> b!599109 (= lt!272375 (contains!2963 Nil!11875 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599110 () Bool)

(declare-fun Unit!18871 () Unit!18868)

(assert (=> b!599110 (= e!342513 Unit!18871)))

(assert (=> b!599110 false))

(declare-fun b!599111 () Bool)

(declare-fun res!384278 () Bool)

(assert (=> b!599111 (=> (not res!384278) (not e!342506))))

(assert (=> b!599111 (= res!384278 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11875))))

(declare-fun b!599112 () Bool)

(assert (=> b!599112 (= e!342515 (= lt!272376 lt!272373))))

(declare-fun b!599113 () Bool)

(assert (=> b!599113 (= e!342505 (arrayContainsKey!0 lt!272374 (select (arr!17784 a!2986) j!136) index!984))))

(declare-fun b!599114 () Bool)

(assert (=> b!599114 (= e!342506 e!342511)))

(declare-fun res!384270 () Bool)

(assert (=> b!599114 (=> (not res!384270) (not e!342511))))

(assert (=> b!599114 (= res!384270 (= (select (store (arr!17784 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599114 (= lt!272374 (array!37057 (store (arr!17784 a!2986) i!1108 k!1786) (size!18148 a!2986)))))

(assert (= (and start!54858 res!384265) b!599099))

(assert (= (and b!599099 res!384261) b!599097))

(assert (= (and b!599097 res!384268) b!599093))

(assert (= (and b!599093 res!384259) b!599101))

(assert (= (and b!599101 res!384264) b!599106))

(assert (= (and b!599106 res!384262) b!599103))

(assert (= (and b!599103 res!384266) b!599111))

(assert (= (and b!599111 res!384278) b!599108))

(assert (= (and b!599108 res!384267) b!599114))

(assert (= (and b!599114 res!384270) b!599100))

(assert (= (and b!599100 res!384263) b!599104))

(assert (= (and b!599104 res!384269) b!599112))

(assert (= (and b!599104 c!67784) b!599110))

(assert (= (and b!599104 (not c!67784)) b!599107))

(assert (= (and b!599104 (not res!384273)) b!599102))

(assert (= (and b!599102 res!384275) b!599096))

(assert (= (and b!599096 (not res!384276)) b!599098))

(assert (= (and b!599098 res!384277) b!599113))

(assert (= (and b!599102 (not res!384260)) b!599105))

(assert (= (and b!599105 (not res!384272)) b!599095))

(assert (= (and b!599095 (not res!384271)) b!599094))

(assert (= (and b!599094 (not res!384274)) b!599109))

(declare-fun m!576399 () Bool)

(assert (=> b!599103 m!576399))

(declare-fun m!576401 () Bool)

(assert (=> b!599114 m!576401))

(declare-fun m!576403 () Bool)

(assert (=> b!599114 m!576403))

(declare-fun m!576405 () Bool)

(assert (=> b!599105 m!576405))

(declare-fun m!576407 () Bool)

(assert (=> b!599105 m!576407))

(assert (=> b!599105 m!576405))

(declare-fun m!576409 () Bool)

(assert (=> b!599105 m!576409))

(assert (=> b!599105 m!576405))

(declare-fun m!576411 () Bool)

(assert (=> b!599105 m!576411))

(declare-fun m!576413 () Bool)

(assert (=> b!599105 m!576413))

(declare-fun m!576415 () Bool)

(assert (=> b!599105 m!576415))

(declare-fun m!576417 () Bool)

(assert (=> b!599105 m!576417))

(assert (=> b!599113 m!576405))

(assert (=> b!599113 m!576405))

(declare-fun m!576419 () Bool)

(assert (=> b!599113 m!576419))

(assert (=> b!599102 m!576405))

(assert (=> b!599102 m!576401))

(declare-fun m!576421 () Bool)

(assert (=> b!599102 m!576421))

(declare-fun m!576423 () Bool)

(assert (=> b!599094 m!576423))

(declare-fun m!576425 () Bool)

(assert (=> b!599093 m!576425))

(declare-fun m!576427 () Bool)

(assert (=> b!599100 m!576427))

(assert (=> b!599100 m!576405))

(assert (=> b!599100 m!576405))

(declare-fun m!576429 () Bool)

(assert (=> b!599100 m!576429))

(assert (=> b!599097 m!576405))

(assert (=> b!599097 m!576405))

(declare-fun m!576431 () Bool)

(assert (=> b!599097 m!576431))

(assert (=> b!599096 m!576405))

(declare-fun m!576433 () Bool)

(assert (=> b!599106 m!576433))

(assert (=> b!599098 m!576405))

(assert (=> b!599098 m!576405))

(declare-fun m!576435 () Bool)

(assert (=> b!599098 m!576435))

(declare-fun m!576437 () Bool)

(assert (=> b!599108 m!576437))

(declare-fun m!576439 () Bool)

(assert (=> b!599111 m!576439))

(declare-fun m!576441 () Bool)

(assert (=> start!54858 m!576441))

(declare-fun m!576443 () Bool)

(assert (=> start!54858 m!576443))

(declare-fun m!576445 () Bool)

(assert (=> b!599101 m!576445))

(declare-fun m!576447 () Bool)

(assert (=> b!599104 m!576447))

(declare-fun m!576449 () Bool)

(assert (=> b!599104 m!576449))

(declare-fun m!576451 () Bool)

(assert (=> b!599104 m!576451))

(assert (=> b!599104 m!576405))

(assert (=> b!599104 m!576401))

(assert (=> b!599104 m!576405))

(declare-fun m!576453 () Bool)

(assert (=> b!599104 m!576453))

(declare-fun m!576455 () Bool)

(assert (=> b!599104 m!576455))

(declare-fun m!576457 () Bool)

(assert (=> b!599104 m!576457))

(declare-fun m!576459 () Bool)

(assert (=> b!599109 m!576459))

(declare-fun m!576461 () Bool)

(assert (=> b!599095 m!576461))

(push 1)

