; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58466 () Bool)

(assert start!58466)

(declare-fun b!645493 () Bool)

(declare-fun e!369949 () Bool)

(declare-fun e!369946 () Bool)

(assert (=> b!645493 (= e!369949 e!369946)))

(declare-fun res!418367 () Bool)

(assert (=> b!645493 (=> res!418367 e!369946)))

(declare-fun lt!299425 () (_ BitVec 64))

(declare-fun lt!299429 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38438 0))(
  ( (array!38439 (arr!18427 (Array (_ BitVec 32) (_ BitVec 64))) (size!18791 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38438)

(assert (=> b!645493 (= res!418367 (or (not (= (select (arr!18427 a!2986) j!136) lt!299429)) (not (= (select (arr!18427 a!2986) j!136) lt!299425)) (bvsge j!136 index!984)))))

(declare-fun b!645494 () Bool)

(declare-fun e!369956 () Bool)

(declare-fun e!369951 () Bool)

(assert (=> b!645494 (= e!369956 e!369951)))

(declare-fun res!418378 () Bool)

(assert (=> b!645494 (=> (not res!418378) (not e!369951))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!645494 (= res!418378 (= (select (store (arr!18427 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!299432 () array!38438)

(assert (=> b!645494 (= lt!299432 (array!38439 (store (arr!18427 a!2986) i!1108 k0!1786) (size!18791 a!2986)))))

(declare-fun b!645495 () Bool)

(declare-fun e!369957 () Bool)

(declare-fun arrayContainsKey!0 (array!38438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645495 (= e!369957 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) index!984))))

(declare-fun b!645496 () Bool)

(declare-fun e!369953 () Bool)

(assert (=> b!645496 (= e!369953 e!369956)))

(declare-fun res!418361 () Bool)

(assert (=> b!645496 (=> (not res!418361) (not e!369956))))

(declare-datatypes ((SeekEntryResult!6874 0))(
  ( (MissingZero!6874 (index!29830 (_ BitVec 32))) (Found!6874 (index!29831 (_ BitVec 32))) (Intermediate!6874 (undefined!7686 Bool) (index!29832 (_ BitVec 32)) (x!58628 (_ BitVec 32))) (Undefined!6874) (MissingVacant!6874 (index!29833 (_ BitVec 32))) )
))
(declare-fun lt!299424 () SeekEntryResult!6874)

(assert (=> b!645496 (= res!418361 (or (= lt!299424 (MissingZero!6874 i!1108)) (= lt!299424 (MissingVacant!6874 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38438 (_ BitVec 32)) SeekEntryResult!6874)

(assert (=> b!645496 (= lt!299424 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!418379 () Bool)

(assert (=> start!58466 (=> (not res!418379) (not e!369953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58466 (= res!418379 (validMask!0 mask!3053))))

(assert (=> start!58466 e!369953))

(assert (=> start!58466 true))

(declare-fun array_inv!14201 (array!38438) Bool)

(assert (=> start!58466 (array_inv!14201 a!2986)))

(declare-fun b!645497 () Bool)

(declare-datatypes ((Unit!21916 0))(
  ( (Unit!21917) )
))
(declare-fun e!369955 () Unit!21916)

(declare-fun Unit!21918 () Unit!21916)

(assert (=> b!645497 (= e!369955 Unit!21918)))

(assert (=> b!645497 false))

(declare-fun b!645498 () Bool)

(declare-fun res!418366 () Bool)

(assert (=> b!645498 (=> (not res!418366) (not e!369956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38438 (_ BitVec 32)) Bool)

(assert (=> b!645498 (= res!418366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645499 () Bool)

(declare-fun res!418364 () Bool)

(assert (=> b!645499 (=> (not res!418364) (not e!369953))))

(assert (=> b!645499 (= res!418364 (and (= (size!18791 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18791 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18791 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645500 () Bool)

(declare-fun res!418376 () Bool)

(assert (=> b!645500 (=> (not res!418376) (not e!369953))))

(assert (=> b!645500 (= res!418376 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645501 () Bool)

(declare-fun res!418373 () Bool)

(assert (=> b!645501 (=> (not res!418373) (not e!369956))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!645501 (= res!418373 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18427 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645502 () Bool)

(declare-fun e!369952 () Bool)

(declare-fun e!369954 () Bool)

(assert (=> b!645502 (= e!369952 e!369954)))

(declare-fun res!418375 () Bool)

(assert (=> b!645502 (=> res!418375 e!369954)))

(assert (=> b!645502 (= res!418375 (bvsge index!984 j!136))))

(declare-fun lt!299426 () Unit!21916)

(declare-fun e!369947 () Unit!21916)

(assert (=> b!645502 (= lt!299426 e!369947)))

(declare-fun c!73933 () Bool)

(assert (=> b!645502 (= c!73933 (bvslt j!136 index!984))))

(declare-fun b!645503 () Bool)

(declare-fun Unit!21919 () Unit!21916)

(assert (=> b!645503 (= e!369955 Unit!21919)))

(declare-fun b!645504 () Bool)

(declare-fun e!369950 () Bool)

(declare-fun e!369945 () Bool)

(assert (=> b!645504 (= e!369950 (not e!369945))))

(declare-fun res!418363 () Bool)

(assert (=> b!645504 (=> res!418363 e!369945)))

(declare-fun lt!299435 () SeekEntryResult!6874)

(assert (=> b!645504 (= res!418363 (not (= lt!299435 (Found!6874 index!984))))))

(declare-fun lt!299431 () Unit!21916)

(assert (=> b!645504 (= lt!299431 e!369955)))

(declare-fun c!73934 () Bool)

(assert (=> b!645504 (= c!73934 (= lt!299435 Undefined!6874))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38438 (_ BitVec 32)) SeekEntryResult!6874)

(assert (=> b!645504 (= lt!299435 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299429 lt!299432 mask!3053))))

(declare-fun e!369944 () Bool)

(assert (=> b!645504 e!369944))

(declare-fun res!418377 () Bool)

(assert (=> b!645504 (=> (not res!418377) (not e!369944))))

(declare-fun lt!299433 () (_ BitVec 32))

(declare-fun lt!299439 () SeekEntryResult!6874)

(assert (=> b!645504 (= res!418377 (= lt!299439 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 lt!299429 lt!299432 mask!3053)))))

(assert (=> b!645504 (= lt!299439 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645504 (= lt!299429 (select (store (arr!18427 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!299438 () Unit!21916)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21916)

(assert (=> b!645504 (= lt!299438 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645504 (= lt!299433 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!645505 () Bool)

(declare-fun res!418365 () Bool)

(assert (=> b!645505 (=> (not res!418365) (not e!369956))))

(declare-datatypes ((List!12521 0))(
  ( (Nil!12518) (Cons!12517 (h!13562 (_ BitVec 64)) (t!18757 List!12521)) )
))
(declare-fun arrayNoDuplicates!0 (array!38438 (_ BitVec 32) List!12521) Bool)

(assert (=> b!645505 (= res!418365 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12518))))

(declare-fun b!645506 () Bool)

(assert (=> b!645506 (= e!369951 e!369950)))

(declare-fun res!418374 () Bool)

(assert (=> b!645506 (=> (not res!418374) (not e!369950))))

(declare-fun lt!299437 () SeekEntryResult!6874)

(assert (=> b!645506 (= res!418374 (and (= lt!299437 (Found!6874 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18427 a!2986) index!984) (select (arr!18427 a!2986) j!136))) (not (= (select (arr!18427 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!645506 (= lt!299437 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645507 () Bool)

(declare-fun res!418368 () Bool)

(assert (=> b!645507 (=> (not res!418368) (not e!369953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645507 (= res!418368 (validKeyInArray!0 (select (arr!18427 a!2986) j!136)))))

(declare-fun b!645508 () Bool)

(assert (=> b!645508 (= e!369944 (= lt!299437 lt!299439))))

(declare-fun b!645509 () Bool)

(assert (=> b!645509 (= e!369946 e!369957)))

(declare-fun res!418371 () Bool)

(assert (=> b!645509 (=> (not res!418371) (not e!369957))))

(assert (=> b!645509 (= res!418371 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136))))

(declare-fun b!645510 () Bool)

(assert (=> b!645510 (= e!369945 e!369952)))

(declare-fun res!418362 () Bool)

(assert (=> b!645510 (=> res!418362 e!369952)))

(assert (=> b!645510 (= res!418362 (or (not (= (select (arr!18427 a!2986) j!136) lt!299429)) (not (= (select (arr!18427 a!2986) j!136) lt!299425))))))

(assert (=> b!645510 e!369949))

(declare-fun res!418370 () Bool)

(assert (=> b!645510 (=> (not res!418370) (not e!369949))))

(assert (=> b!645510 (= res!418370 (= lt!299425 (select (arr!18427 a!2986) j!136)))))

(assert (=> b!645510 (= lt!299425 (select (store (arr!18427 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!645511 () Bool)

(assert (=> b!645511 (= e!369954 (bvslt (size!18791 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!645511 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299427 () Unit!21916)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21916)

(assert (=> b!645511 (= lt!299427 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!369948 () Bool)

(assert (=> b!645511 e!369948))

(declare-fun res!418372 () Bool)

(assert (=> b!645511 (=> (not res!418372) (not e!369948))))

(assert (=> b!645511 (= res!418372 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136))))

(declare-fun b!645512 () Bool)

(declare-fun Unit!21920 () Unit!21916)

(assert (=> b!645512 (= e!369947 Unit!21920)))

(declare-fun b!645513 () Bool)

(assert (=> b!645513 (= e!369948 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) index!984))))

(declare-fun b!645514 () Bool)

(declare-fun res!418369 () Bool)

(assert (=> b!645514 (=> (not res!418369) (not e!369953))))

(assert (=> b!645514 (= res!418369 (validKeyInArray!0 k0!1786))))

(declare-fun b!645515 () Bool)

(declare-fun Unit!21921 () Unit!21916)

(assert (=> b!645515 (= e!369947 Unit!21921)))

(declare-fun lt!299430 () Unit!21916)

(assert (=> b!645515 (= lt!299430 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299432 (select (arr!18427 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!645515 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299428 () Unit!21916)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12521) Unit!21916)

(assert (=> b!645515 (= lt!299428 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12518))))

(assert (=> b!645515 (arrayNoDuplicates!0 lt!299432 #b00000000000000000000000000000000 Nil!12518)))

(declare-fun lt!299436 () Unit!21916)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38438 (_ BitVec 32) (_ BitVec 32)) Unit!21916)

(assert (=> b!645515 (= lt!299436 (lemmaNoDuplicateFromThenFromBigger!0 lt!299432 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645515 (arrayNoDuplicates!0 lt!299432 j!136 Nil!12518)))

(declare-fun lt!299434 () Unit!21916)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38438 (_ BitVec 64) (_ BitVec 32) List!12521) Unit!21916)

(assert (=> b!645515 (= lt!299434 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136 Nil!12518))))

(assert (=> b!645515 false))

(assert (= (and start!58466 res!418379) b!645499))

(assert (= (and b!645499 res!418364) b!645507))

(assert (= (and b!645507 res!418368) b!645514))

(assert (= (and b!645514 res!418369) b!645500))

(assert (= (and b!645500 res!418376) b!645496))

(assert (= (and b!645496 res!418361) b!645498))

(assert (= (and b!645498 res!418366) b!645505))

(assert (= (and b!645505 res!418365) b!645501))

(assert (= (and b!645501 res!418373) b!645494))

(assert (= (and b!645494 res!418378) b!645506))

(assert (= (and b!645506 res!418374) b!645504))

(assert (= (and b!645504 res!418377) b!645508))

(assert (= (and b!645504 c!73934) b!645497))

(assert (= (and b!645504 (not c!73934)) b!645503))

(assert (= (and b!645504 (not res!418363)) b!645510))

(assert (= (and b!645510 res!418370) b!645493))

(assert (= (and b!645493 (not res!418367)) b!645509))

(assert (= (and b!645509 res!418371) b!645495))

(assert (= (and b!645510 (not res!418362)) b!645502))

(assert (= (and b!645502 c!73933) b!645515))

(assert (= (and b!645502 (not c!73933)) b!645512))

(assert (= (and b!645502 (not res!418375)) b!645511))

(assert (= (and b!645511 res!418372) b!645513))

(declare-fun m!619063 () Bool)

(assert (=> b!645495 m!619063))

(assert (=> b!645495 m!619063))

(declare-fun m!619065 () Bool)

(assert (=> b!645495 m!619065))

(declare-fun m!619067 () Bool)

(assert (=> b!645514 m!619067))

(declare-fun m!619069 () Bool)

(assert (=> start!58466 m!619069))

(declare-fun m!619071 () Bool)

(assert (=> start!58466 m!619071))

(assert (=> b!645493 m!619063))

(declare-fun m!619073 () Bool)

(assert (=> b!645506 m!619073))

(assert (=> b!645506 m!619063))

(assert (=> b!645506 m!619063))

(declare-fun m!619075 () Bool)

(assert (=> b!645506 m!619075))

(declare-fun m!619077 () Bool)

(assert (=> b!645504 m!619077))

(declare-fun m!619079 () Bool)

(assert (=> b!645504 m!619079))

(assert (=> b!645504 m!619063))

(declare-fun m!619081 () Bool)

(assert (=> b!645504 m!619081))

(declare-fun m!619083 () Bool)

(assert (=> b!645504 m!619083))

(assert (=> b!645504 m!619063))

(declare-fun m!619085 () Bool)

(assert (=> b!645504 m!619085))

(declare-fun m!619087 () Bool)

(assert (=> b!645504 m!619087))

(declare-fun m!619089 () Bool)

(assert (=> b!645504 m!619089))

(assert (=> b!645515 m!619063))

(assert (=> b!645515 m!619063))

(declare-fun m!619091 () Bool)

(assert (=> b!645515 m!619091))

(declare-fun m!619093 () Bool)

(assert (=> b!645515 m!619093))

(declare-fun m!619095 () Bool)

(assert (=> b!645515 m!619095))

(assert (=> b!645515 m!619063))

(declare-fun m!619097 () Bool)

(assert (=> b!645515 m!619097))

(assert (=> b!645515 m!619063))

(declare-fun m!619099 () Bool)

(assert (=> b!645515 m!619099))

(declare-fun m!619101 () Bool)

(assert (=> b!645515 m!619101))

(declare-fun m!619103 () Bool)

(assert (=> b!645515 m!619103))

(assert (=> b!645510 m!619063))

(assert (=> b!645510 m!619081))

(declare-fun m!619105 () Bool)

(assert (=> b!645510 m!619105))

(assert (=> b!645507 m!619063))

(assert (=> b!645507 m!619063))

(declare-fun m!619107 () Bool)

(assert (=> b!645507 m!619107))

(assert (=> b!645513 m!619063))

(assert (=> b!645513 m!619063))

(assert (=> b!645513 m!619065))

(declare-fun m!619109 () Bool)

(assert (=> b!645501 m!619109))

(declare-fun m!619111 () Bool)

(assert (=> b!645498 m!619111))

(declare-fun m!619113 () Bool)

(assert (=> b!645505 m!619113))

(assert (=> b!645511 m!619063))

(assert (=> b!645511 m!619063))

(declare-fun m!619115 () Bool)

(assert (=> b!645511 m!619115))

(assert (=> b!645511 m!619063))

(declare-fun m!619117 () Bool)

(assert (=> b!645511 m!619117))

(assert (=> b!645511 m!619063))

(declare-fun m!619119 () Bool)

(assert (=> b!645511 m!619119))

(declare-fun m!619121 () Bool)

(assert (=> b!645500 m!619121))

(assert (=> b!645509 m!619063))

(assert (=> b!645509 m!619063))

(assert (=> b!645509 m!619119))

(declare-fun m!619123 () Bool)

(assert (=> b!645496 m!619123))

(assert (=> b!645494 m!619081))

(declare-fun m!619125 () Bool)

(assert (=> b!645494 m!619125))

(check-sat (not b!645498) (not b!645496) (not b!645500) (not b!645515) (not b!645513) (not b!645506) (not b!645507) (not b!645504) (not b!645511) (not b!645505) (not b!645495) (not start!58466) (not b!645514) (not b!645509))
(check-sat)
(get-model)

(declare-fun d!91093 () Bool)

(declare-fun res!418441 () Bool)

(declare-fun e!370008 () Bool)

(assert (=> d!91093 (=> res!418441 e!370008)))

(assert (=> d!91093 (= res!418441 (= (select (arr!18427 lt!299432) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18427 a!2986) j!136)))))

(assert (=> d!91093 (= (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!370008)))

(declare-fun b!645589 () Bool)

(declare-fun e!370009 () Bool)

(assert (=> b!645589 (= e!370008 e!370009)))

(declare-fun res!418442 () Bool)

(assert (=> b!645589 (=> (not res!418442) (not e!370009))))

(assert (=> b!645589 (= res!418442 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18791 lt!299432)))))

(declare-fun b!645590 () Bool)

(assert (=> b!645590 (= e!370009 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91093 (not res!418441)) b!645589))

(assert (= (and b!645589 res!418442) b!645590))

(declare-fun m!619191 () Bool)

(assert (=> d!91093 m!619191))

(assert (=> b!645590 m!619063))

(declare-fun m!619193 () Bool)

(assert (=> b!645590 m!619193))

(assert (=> b!645511 d!91093))

(declare-fun d!91095 () Bool)

(assert (=> d!91095 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299490 () Unit!21916)

(declare-fun choose!114 (array!38438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21916)

(assert (=> d!91095 (= lt!299490 (choose!114 lt!299432 (select (arr!18427 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91095 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91095 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!299490)))

(declare-fun bs!19289 () Bool)

(assert (= bs!19289 d!91095))

(assert (=> bs!19289 m!619063))

(assert (=> bs!19289 m!619115))

(assert (=> bs!19289 m!619063))

(declare-fun m!619195 () Bool)

(assert (=> bs!19289 m!619195))

(assert (=> b!645511 d!91095))

(declare-fun d!91097 () Bool)

(declare-fun res!418443 () Bool)

(declare-fun e!370010 () Bool)

(assert (=> d!91097 (=> res!418443 e!370010)))

(assert (=> d!91097 (= res!418443 (= (select (arr!18427 lt!299432) j!136) (select (arr!18427 a!2986) j!136)))))

(assert (=> d!91097 (= (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136) e!370010)))

(declare-fun b!645591 () Bool)

(declare-fun e!370011 () Bool)

(assert (=> b!645591 (= e!370010 e!370011)))

(declare-fun res!418444 () Bool)

(assert (=> b!645591 (=> (not res!418444) (not e!370011))))

(assert (=> b!645591 (= res!418444 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18791 lt!299432)))))

(declare-fun b!645592 () Bool)

(assert (=> b!645592 (= e!370011 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91097 (not res!418443)) b!645591))

(assert (= (and b!645591 res!418444) b!645592))

(declare-fun m!619197 () Bool)

(assert (=> d!91097 m!619197))

(assert (=> b!645592 m!619063))

(declare-fun m!619199 () Bool)

(assert (=> b!645592 m!619199))

(assert (=> b!645511 d!91097))

(declare-fun d!91099 () Bool)

(declare-fun res!418445 () Bool)

(declare-fun e!370012 () Bool)

(assert (=> d!91099 (=> res!418445 e!370012)))

(assert (=> d!91099 (= res!418445 (= (select (arr!18427 lt!299432) index!984) (select (arr!18427 a!2986) j!136)))))

(assert (=> d!91099 (= (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) index!984) e!370012)))

(declare-fun b!645593 () Bool)

(declare-fun e!370013 () Bool)

(assert (=> b!645593 (= e!370012 e!370013)))

(declare-fun res!418446 () Bool)

(assert (=> b!645593 (=> (not res!418446) (not e!370013))))

(assert (=> b!645593 (= res!418446 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18791 lt!299432)))))

(declare-fun b!645594 () Bool)

(assert (=> b!645594 (= e!370013 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91099 (not res!418445)) b!645593))

(assert (= (and b!645593 res!418446) b!645594))

(declare-fun m!619201 () Bool)

(assert (=> d!91099 m!619201))

(assert (=> b!645594 m!619063))

(declare-fun m!619203 () Bool)

(assert (=> b!645594 m!619203))

(assert (=> b!645513 d!91099))

(declare-fun d!91101 () Bool)

(assert (=> d!91101 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!645514 d!91101))

(declare-fun d!91103 () Bool)

(assert (=> d!91103 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58466 d!91103))

(declare-fun d!91105 () Bool)

(assert (=> d!91105 (= (array_inv!14201 a!2986) (bvsge (size!18791 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58466 d!91105))

(declare-fun d!91107 () Bool)

(declare-fun e!370016 () Bool)

(assert (=> d!91107 e!370016))

(declare-fun res!418449 () Bool)

(assert (=> d!91107 (=> (not res!418449) (not e!370016))))

(assert (=> d!91107 (= res!418449 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18791 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18791 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18791 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18791 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18791 a!2986))))))

(declare-fun lt!299493 () Unit!21916)

(declare-fun choose!9 (array!38438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21916)

(assert (=> d!91107 (= lt!299493 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91107 (validMask!0 mask!3053)))

(assert (=> d!91107 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 mask!3053) lt!299493)))

(declare-fun b!645597 () Bool)

(assert (=> b!645597 (= e!370016 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 (select (store (arr!18427 a!2986) i!1108 k0!1786) j!136) (array!38439 (store (arr!18427 a!2986) i!1108 k0!1786) (size!18791 a!2986)) mask!3053)))))

(assert (= (and d!91107 res!418449) b!645597))

(declare-fun m!619205 () Bool)

(assert (=> d!91107 m!619205))

(assert (=> d!91107 m!619069))

(assert (=> b!645597 m!619079))

(assert (=> b!645597 m!619063))

(assert (=> b!645597 m!619079))

(declare-fun m!619207 () Bool)

(assert (=> b!645597 m!619207))

(assert (=> b!645597 m!619081))

(assert (=> b!645597 m!619063))

(assert (=> b!645597 m!619085))

(assert (=> b!645504 d!91107))

(declare-fun e!370023 () SeekEntryResult!6874)

(declare-fun b!645610 () Bool)

(assert (=> b!645610 (= e!370023 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!299429 lt!299432 mask!3053))))

(declare-fun b!645611 () Bool)

(assert (=> b!645611 (= e!370023 (MissingVacant!6874 vacantSpotIndex!68))))

(declare-fun d!91109 () Bool)

(declare-fun lt!299499 () SeekEntryResult!6874)

(get-info :version)

(assert (=> d!91109 (and (or ((_ is Undefined!6874) lt!299499) (not ((_ is Found!6874) lt!299499)) (and (bvsge (index!29831 lt!299499) #b00000000000000000000000000000000) (bvslt (index!29831 lt!299499) (size!18791 lt!299432)))) (or ((_ is Undefined!6874) lt!299499) ((_ is Found!6874) lt!299499) (not ((_ is MissingVacant!6874) lt!299499)) (not (= (index!29833 lt!299499) vacantSpotIndex!68)) (and (bvsge (index!29833 lt!299499) #b00000000000000000000000000000000) (bvslt (index!29833 lt!299499) (size!18791 lt!299432)))) (or ((_ is Undefined!6874) lt!299499) (ite ((_ is Found!6874) lt!299499) (= (select (arr!18427 lt!299432) (index!29831 lt!299499)) lt!299429) (and ((_ is MissingVacant!6874) lt!299499) (= (index!29833 lt!299499) vacantSpotIndex!68) (= (select (arr!18427 lt!299432) (index!29833 lt!299499)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370025 () SeekEntryResult!6874)

(assert (=> d!91109 (= lt!299499 e!370025)))

(declare-fun c!73949 () Bool)

(assert (=> d!91109 (= c!73949 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!299498 () (_ BitVec 64))

(assert (=> d!91109 (= lt!299498 (select (arr!18427 lt!299432) index!984))))

(assert (=> d!91109 (validMask!0 mask!3053)))

(assert (=> d!91109 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299429 lt!299432 mask!3053) lt!299499)))

(declare-fun b!645612 () Bool)

(declare-fun c!73948 () Bool)

(assert (=> b!645612 (= c!73948 (= lt!299498 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!370024 () SeekEntryResult!6874)

(assert (=> b!645612 (= e!370024 e!370023)))

(declare-fun b!645613 () Bool)

(assert (=> b!645613 (= e!370025 Undefined!6874)))

(declare-fun b!645614 () Bool)

(assert (=> b!645614 (= e!370025 e!370024)))

(declare-fun c!73947 () Bool)

(assert (=> b!645614 (= c!73947 (= lt!299498 lt!299429))))

(declare-fun b!645615 () Bool)

(assert (=> b!645615 (= e!370024 (Found!6874 index!984))))

(assert (= (and d!91109 c!73949) b!645613))

(assert (= (and d!91109 (not c!73949)) b!645614))

(assert (= (and b!645614 c!73947) b!645615))

(assert (= (and b!645614 (not c!73947)) b!645612))

(assert (= (and b!645612 c!73948) b!645611))

(assert (= (and b!645612 (not c!73948)) b!645610))

(assert (=> b!645610 m!619077))

(assert (=> b!645610 m!619077))

(declare-fun m!619209 () Bool)

(assert (=> b!645610 m!619209))

(declare-fun m!619211 () Bool)

(assert (=> d!91109 m!619211))

(declare-fun m!619213 () Bool)

(assert (=> d!91109 m!619213))

(assert (=> d!91109 m!619201))

(assert (=> d!91109 m!619069))

(assert (=> b!645504 d!91109))

(declare-fun b!645616 () Bool)

(declare-fun e!370026 () SeekEntryResult!6874)

(assert (=> b!645616 (= e!370026 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!299433 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!299429 lt!299432 mask!3053))))

(declare-fun b!645617 () Bool)

(assert (=> b!645617 (= e!370026 (MissingVacant!6874 vacantSpotIndex!68))))

(declare-fun lt!299501 () SeekEntryResult!6874)

(declare-fun d!91111 () Bool)

(assert (=> d!91111 (and (or ((_ is Undefined!6874) lt!299501) (not ((_ is Found!6874) lt!299501)) (and (bvsge (index!29831 lt!299501) #b00000000000000000000000000000000) (bvslt (index!29831 lt!299501) (size!18791 lt!299432)))) (or ((_ is Undefined!6874) lt!299501) ((_ is Found!6874) lt!299501) (not ((_ is MissingVacant!6874) lt!299501)) (not (= (index!29833 lt!299501) vacantSpotIndex!68)) (and (bvsge (index!29833 lt!299501) #b00000000000000000000000000000000) (bvslt (index!29833 lt!299501) (size!18791 lt!299432)))) (or ((_ is Undefined!6874) lt!299501) (ite ((_ is Found!6874) lt!299501) (= (select (arr!18427 lt!299432) (index!29831 lt!299501)) lt!299429) (and ((_ is MissingVacant!6874) lt!299501) (= (index!29833 lt!299501) vacantSpotIndex!68) (= (select (arr!18427 lt!299432) (index!29833 lt!299501)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370028 () SeekEntryResult!6874)

(assert (=> d!91111 (= lt!299501 e!370028)))

(declare-fun c!73952 () Bool)

(assert (=> d!91111 (= c!73952 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!299500 () (_ BitVec 64))

(assert (=> d!91111 (= lt!299500 (select (arr!18427 lt!299432) lt!299433))))

(assert (=> d!91111 (validMask!0 mask!3053)))

(assert (=> d!91111 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 lt!299429 lt!299432 mask!3053) lt!299501)))

(declare-fun b!645618 () Bool)

(declare-fun c!73951 () Bool)

(assert (=> b!645618 (= c!73951 (= lt!299500 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!370027 () SeekEntryResult!6874)

(assert (=> b!645618 (= e!370027 e!370026)))

(declare-fun b!645619 () Bool)

(assert (=> b!645619 (= e!370028 Undefined!6874)))

(declare-fun b!645620 () Bool)

(assert (=> b!645620 (= e!370028 e!370027)))

(declare-fun c!73950 () Bool)

(assert (=> b!645620 (= c!73950 (= lt!299500 lt!299429))))

(declare-fun b!645621 () Bool)

(assert (=> b!645621 (= e!370027 (Found!6874 lt!299433))))

(assert (= (and d!91111 c!73952) b!645619))

(assert (= (and d!91111 (not c!73952)) b!645620))

(assert (= (and b!645620 c!73950) b!645621))

(assert (= (and b!645620 (not c!73950)) b!645618))

(assert (= (and b!645618 c!73951) b!645617))

(assert (= (and b!645618 (not c!73951)) b!645616))

(declare-fun m!619215 () Bool)

(assert (=> b!645616 m!619215))

(assert (=> b!645616 m!619215))

(declare-fun m!619217 () Bool)

(assert (=> b!645616 m!619217))

(declare-fun m!619219 () Bool)

(assert (=> d!91111 m!619219))

(declare-fun m!619221 () Bool)

(assert (=> d!91111 m!619221))

(declare-fun m!619223 () Bool)

(assert (=> d!91111 m!619223))

(assert (=> d!91111 m!619069))

(assert (=> b!645504 d!91111))

(declare-fun d!91113 () Bool)

(declare-fun lt!299504 () (_ BitVec 32))

(assert (=> d!91113 (and (bvsge lt!299504 #b00000000000000000000000000000000) (bvslt lt!299504 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91113 (= lt!299504 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91113 (validMask!0 mask!3053)))

(assert (=> d!91113 (= (nextIndex!0 index!984 x!910 mask!3053) lt!299504)))

(declare-fun bs!19290 () Bool)

(assert (= bs!19290 d!91113))

(declare-fun m!619225 () Bool)

(assert (=> bs!19290 m!619225))

(assert (=> bs!19290 m!619069))

(assert (=> b!645504 d!91113))

(declare-fun b!645622 () Bool)

(declare-fun e!370029 () SeekEntryResult!6874)

(assert (=> b!645622 (= e!370029 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!299433 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645623 () Bool)

(assert (=> b!645623 (= e!370029 (MissingVacant!6874 vacantSpotIndex!68))))

(declare-fun lt!299506 () SeekEntryResult!6874)

(declare-fun d!91117 () Bool)

(assert (=> d!91117 (and (or ((_ is Undefined!6874) lt!299506) (not ((_ is Found!6874) lt!299506)) (and (bvsge (index!29831 lt!299506) #b00000000000000000000000000000000) (bvslt (index!29831 lt!299506) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299506) ((_ is Found!6874) lt!299506) (not ((_ is MissingVacant!6874) lt!299506)) (not (= (index!29833 lt!299506) vacantSpotIndex!68)) (and (bvsge (index!29833 lt!299506) #b00000000000000000000000000000000) (bvslt (index!29833 lt!299506) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299506) (ite ((_ is Found!6874) lt!299506) (= (select (arr!18427 a!2986) (index!29831 lt!299506)) (select (arr!18427 a!2986) j!136)) (and ((_ is MissingVacant!6874) lt!299506) (= (index!29833 lt!299506) vacantSpotIndex!68) (= (select (arr!18427 a!2986) (index!29833 lt!299506)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370031 () SeekEntryResult!6874)

(assert (=> d!91117 (= lt!299506 e!370031)))

(declare-fun c!73955 () Bool)

(assert (=> d!91117 (= c!73955 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!299505 () (_ BitVec 64))

(assert (=> d!91117 (= lt!299505 (select (arr!18427 a!2986) lt!299433))))

(assert (=> d!91117 (validMask!0 mask!3053)))

(assert (=> d!91117 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299433 vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053) lt!299506)))

(declare-fun b!645624 () Bool)

(declare-fun c!73954 () Bool)

(assert (=> b!645624 (= c!73954 (= lt!299505 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!370030 () SeekEntryResult!6874)

(assert (=> b!645624 (= e!370030 e!370029)))

(declare-fun b!645625 () Bool)

(assert (=> b!645625 (= e!370031 Undefined!6874)))

(declare-fun b!645626 () Bool)

(assert (=> b!645626 (= e!370031 e!370030)))

(declare-fun c!73953 () Bool)

(assert (=> b!645626 (= c!73953 (= lt!299505 (select (arr!18427 a!2986) j!136)))))

(declare-fun b!645627 () Bool)

(assert (=> b!645627 (= e!370030 (Found!6874 lt!299433))))

(assert (= (and d!91117 c!73955) b!645625))

(assert (= (and d!91117 (not c!73955)) b!645626))

(assert (= (and b!645626 c!73953) b!645627))

(assert (= (and b!645626 (not c!73953)) b!645624))

(assert (= (and b!645624 c!73954) b!645623))

(assert (= (and b!645624 (not c!73954)) b!645622))

(assert (=> b!645622 m!619215))

(assert (=> b!645622 m!619215))

(assert (=> b!645622 m!619063))

(declare-fun m!619227 () Bool)

(assert (=> b!645622 m!619227))

(declare-fun m!619229 () Bool)

(assert (=> d!91117 m!619229))

(declare-fun m!619231 () Bool)

(assert (=> d!91117 m!619231))

(declare-fun m!619233 () Bool)

(assert (=> d!91117 m!619233))

(assert (=> d!91117 m!619069))

(assert (=> b!645504 d!91117))

(declare-fun d!91119 () Bool)

(assert (=> d!91119 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299507 () Unit!21916)

(assert (=> d!91119 (= lt!299507 (choose!114 lt!299432 (select (arr!18427 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91119 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91119 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299432 (select (arr!18427 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!299507)))

(declare-fun bs!19291 () Bool)

(assert (= bs!19291 d!91119))

(assert (=> bs!19291 m!619063))

(assert (=> bs!19291 m!619091))

(assert (=> bs!19291 m!619063))

(declare-fun m!619235 () Bool)

(assert (=> bs!19291 m!619235))

(assert (=> b!645515 d!91119))

(declare-fun d!91121 () Bool)

(assert (=> d!91121 (arrayNoDuplicates!0 lt!299432 j!136 Nil!12518)))

(declare-fun lt!299510 () Unit!21916)

(declare-fun choose!39 (array!38438 (_ BitVec 32) (_ BitVec 32)) Unit!21916)

(assert (=> d!91121 (= lt!299510 (choose!39 lt!299432 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91121 (bvslt (size!18791 lt!299432) #b01111111111111111111111111111111)))

(assert (=> d!91121 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!299432 #b00000000000000000000000000000000 j!136) lt!299510)))

(declare-fun bs!19292 () Bool)

(assert (= bs!19292 d!91121))

(assert (=> bs!19292 m!619095))

(declare-fun m!619237 () Bool)

(assert (=> bs!19292 m!619237))

(assert (=> b!645515 d!91121))

(declare-fun d!91125 () Bool)

(assert (=> d!91125 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18791 lt!299432)) (not (= (select (arr!18427 lt!299432) j!136) (select (arr!18427 a!2986) j!136))))))

(declare-fun lt!299513 () Unit!21916)

(declare-fun choose!21 (array!38438 (_ BitVec 64) (_ BitVec 32) List!12521) Unit!21916)

(assert (=> d!91125 (= lt!299513 (choose!21 lt!299432 (select (arr!18427 a!2986) j!136) j!136 Nil!12518))))

(assert (=> d!91125 (bvslt (size!18791 lt!299432) #b01111111111111111111111111111111)))

(assert (=> d!91125 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299432 (select (arr!18427 a!2986) j!136) j!136 Nil!12518) lt!299513)))

(declare-fun bs!19293 () Bool)

(assert (= bs!19293 d!91125))

(assert (=> bs!19293 m!619197))

(assert (=> bs!19293 m!619063))

(declare-fun m!619247 () Bool)

(assert (=> bs!19293 m!619247))

(assert (=> b!645515 d!91125))

(declare-fun d!91129 () Bool)

(declare-fun e!370054 () Bool)

(assert (=> d!91129 e!370054))

(declare-fun res!418469 () Bool)

(assert (=> d!91129 (=> (not res!418469) (not e!370054))))

(assert (=> d!91129 (= res!418469 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18791 a!2986))))))

(declare-fun lt!299516 () Unit!21916)

(declare-fun choose!41 (array!38438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12521) Unit!21916)

(assert (=> d!91129 (= lt!299516 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12518))))

(assert (=> d!91129 (bvslt (size!18791 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91129 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12518) lt!299516)))

(declare-fun b!645653 () Bool)

(assert (=> b!645653 (= e!370054 (arrayNoDuplicates!0 (array!38439 (store (arr!18427 a!2986) i!1108 k0!1786) (size!18791 a!2986)) #b00000000000000000000000000000000 Nil!12518))))

(assert (= (and d!91129 res!418469) b!645653))

(declare-fun m!619257 () Bool)

(assert (=> d!91129 m!619257))

(assert (=> b!645653 m!619081))

(declare-fun m!619259 () Bool)

(assert (=> b!645653 m!619259))

(assert (=> b!645515 d!91129))

(declare-fun bm!33632 () Bool)

(declare-fun c!73967 () Bool)

(declare-fun call!33635 () Bool)

(assert (=> bm!33632 (= call!33635 (arrayNoDuplicates!0 lt!299432 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73967 (Cons!12517 (select (arr!18427 lt!299432) j!136) Nil!12518) Nil!12518)))))

(declare-fun d!91137 () Bool)

(declare-fun res!418477 () Bool)

(declare-fun e!370071 () Bool)

(assert (=> d!91137 (=> res!418477 e!370071)))

(assert (=> d!91137 (= res!418477 (bvsge j!136 (size!18791 lt!299432)))))

(assert (=> d!91137 (= (arrayNoDuplicates!0 lt!299432 j!136 Nil!12518) e!370071)))

(declare-fun b!645676 () Bool)

(declare-fun e!370069 () Bool)

(assert (=> b!645676 (= e!370071 e!370069)))

(declare-fun res!418478 () Bool)

(assert (=> b!645676 (=> (not res!418478) (not e!370069))))

(declare-fun e!370070 () Bool)

(assert (=> b!645676 (= res!418478 (not e!370070))))

(declare-fun res!418476 () Bool)

(assert (=> b!645676 (=> (not res!418476) (not e!370070))))

(assert (=> b!645676 (= res!418476 (validKeyInArray!0 (select (arr!18427 lt!299432) j!136)))))

(declare-fun b!645677 () Bool)

(declare-fun e!370072 () Bool)

(assert (=> b!645677 (= e!370072 call!33635)))

(declare-fun b!645678 () Bool)

(assert (=> b!645678 (= e!370069 e!370072)))

(assert (=> b!645678 (= c!73967 (validKeyInArray!0 (select (arr!18427 lt!299432) j!136)))))

(declare-fun b!645679 () Bool)

(declare-fun contains!3149 (List!12521 (_ BitVec 64)) Bool)

(assert (=> b!645679 (= e!370070 (contains!3149 Nil!12518 (select (arr!18427 lt!299432) j!136)))))

(declare-fun b!645680 () Bool)

(assert (=> b!645680 (= e!370072 call!33635)))

(assert (= (and d!91137 (not res!418477)) b!645676))

(assert (= (and b!645676 res!418476) b!645679))

(assert (= (and b!645676 res!418478) b!645678))

(assert (= (and b!645678 c!73967) b!645677))

(assert (= (and b!645678 (not c!73967)) b!645680))

(assert (= (or b!645677 b!645680) bm!33632))

(assert (=> bm!33632 m!619197))

(declare-fun m!619261 () Bool)

(assert (=> bm!33632 m!619261))

(assert (=> b!645676 m!619197))

(assert (=> b!645676 m!619197))

(declare-fun m!619263 () Bool)

(assert (=> b!645676 m!619263))

(assert (=> b!645678 m!619197))

(assert (=> b!645678 m!619197))

(assert (=> b!645678 m!619263))

(assert (=> b!645679 m!619197))

(assert (=> b!645679 m!619197))

(declare-fun m!619265 () Bool)

(assert (=> b!645679 m!619265))

(assert (=> b!645515 d!91137))

(declare-fun bm!33633 () Bool)

(declare-fun call!33636 () Bool)

(declare-fun c!73968 () Bool)

(assert (=> bm!33633 (= call!33636 (arrayNoDuplicates!0 lt!299432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73968 (Cons!12517 (select (arr!18427 lt!299432) #b00000000000000000000000000000000) Nil!12518) Nil!12518)))))

(declare-fun d!91139 () Bool)

(declare-fun res!418480 () Bool)

(declare-fun e!370075 () Bool)

(assert (=> d!91139 (=> res!418480 e!370075)))

(assert (=> d!91139 (= res!418480 (bvsge #b00000000000000000000000000000000 (size!18791 lt!299432)))))

(assert (=> d!91139 (= (arrayNoDuplicates!0 lt!299432 #b00000000000000000000000000000000 Nil!12518) e!370075)))

(declare-fun b!645681 () Bool)

(declare-fun e!370073 () Bool)

(assert (=> b!645681 (= e!370075 e!370073)))

(declare-fun res!418481 () Bool)

(assert (=> b!645681 (=> (not res!418481) (not e!370073))))

(declare-fun e!370074 () Bool)

(assert (=> b!645681 (= res!418481 (not e!370074))))

(declare-fun res!418479 () Bool)

(assert (=> b!645681 (=> (not res!418479) (not e!370074))))

(assert (=> b!645681 (= res!418479 (validKeyInArray!0 (select (arr!18427 lt!299432) #b00000000000000000000000000000000)))))

(declare-fun b!645682 () Bool)

(declare-fun e!370076 () Bool)

(assert (=> b!645682 (= e!370076 call!33636)))

(declare-fun b!645683 () Bool)

(assert (=> b!645683 (= e!370073 e!370076)))

(assert (=> b!645683 (= c!73968 (validKeyInArray!0 (select (arr!18427 lt!299432) #b00000000000000000000000000000000)))))

(declare-fun b!645684 () Bool)

(assert (=> b!645684 (= e!370074 (contains!3149 Nil!12518 (select (arr!18427 lt!299432) #b00000000000000000000000000000000)))))

(declare-fun b!645685 () Bool)

(assert (=> b!645685 (= e!370076 call!33636)))

(assert (= (and d!91139 (not res!418480)) b!645681))

(assert (= (and b!645681 res!418479) b!645684))

(assert (= (and b!645681 res!418481) b!645683))

(assert (= (and b!645683 c!73968) b!645682))

(assert (= (and b!645683 (not c!73968)) b!645685))

(assert (= (or b!645682 b!645685) bm!33633))

(declare-fun m!619267 () Bool)

(assert (=> bm!33633 m!619267))

(declare-fun m!619269 () Bool)

(assert (=> bm!33633 m!619269))

(assert (=> b!645681 m!619267))

(assert (=> b!645681 m!619267))

(declare-fun m!619271 () Bool)

(assert (=> b!645681 m!619271))

(assert (=> b!645683 m!619267))

(assert (=> b!645683 m!619267))

(assert (=> b!645683 m!619271))

(assert (=> b!645684 m!619267))

(assert (=> b!645684 m!619267))

(declare-fun m!619273 () Bool)

(assert (=> b!645684 m!619273))

(assert (=> b!645515 d!91139))

(declare-fun d!91141 () Bool)

(declare-fun res!418482 () Bool)

(declare-fun e!370077 () Bool)

(assert (=> d!91141 (=> res!418482 e!370077)))

(assert (=> d!91141 (= res!418482 (= (select (arr!18427 lt!299432) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18427 a!2986) j!136)))))

(assert (=> d!91141 (= (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!370077)))

(declare-fun b!645686 () Bool)

(declare-fun e!370078 () Bool)

(assert (=> b!645686 (= e!370077 e!370078)))

(declare-fun res!418483 () Bool)

(assert (=> b!645686 (=> (not res!418483) (not e!370078))))

(assert (=> b!645686 (= res!418483 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18791 lt!299432)))))

(declare-fun b!645687 () Bool)

(assert (=> b!645687 (= e!370078 (arrayContainsKey!0 lt!299432 (select (arr!18427 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91141 (not res!418482)) b!645686))

(assert (= (and b!645686 res!418483) b!645687))

(declare-fun m!619275 () Bool)

(assert (=> d!91141 m!619275))

(assert (=> b!645687 m!619063))

(declare-fun m!619277 () Bool)

(assert (=> b!645687 m!619277))

(assert (=> b!645515 d!91141))

(declare-fun bm!33634 () Bool)

(declare-fun call!33637 () Bool)

(declare-fun c!73969 () Bool)

(assert (=> bm!33634 (= call!33637 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73969 (Cons!12517 (select (arr!18427 a!2986) #b00000000000000000000000000000000) Nil!12518) Nil!12518)))))

(declare-fun d!91143 () Bool)

(declare-fun res!418485 () Bool)

(declare-fun e!370081 () Bool)

(assert (=> d!91143 (=> res!418485 e!370081)))

(assert (=> d!91143 (= res!418485 (bvsge #b00000000000000000000000000000000 (size!18791 a!2986)))))

(assert (=> d!91143 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12518) e!370081)))

(declare-fun b!645688 () Bool)

(declare-fun e!370079 () Bool)

(assert (=> b!645688 (= e!370081 e!370079)))

(declare-fun res!418486 () Bool)

(assert (=> b!645688 (=> (not res!418486) (not e!370079))))

(declare-fun e!370080 () Bool)

(assert (=> b!645688 (= res!418486 (not e!370080))))

(declare-fun res!418484 () Bool)

(assert (=> b!645688 (=> (not res!418484) (not e!370080))))

(assert (=> b!645688 (= res!418484 (validKeyInArray!0 (select (arr!18427 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!645689 () Bool)

(declare-fun e!370082 () Bool)

(assert (=> b!645689 (= e!370082 call!33637)))

(declare-fun b!645690 () Bool)

(assert (=> b!645690 (= e!370079 e!370082)))

(assert (=> b!645690 (= c!73969 (validKeyInArray!0 (select (arr!18427 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!645691 () Bool)

(assert (=> b!645691 (= e!370080 (contains!3149 Nil!12518 (select (arr!18427 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!645692 () Bool)

(assert (=> b!645692 (= e!370082 call!33637)))

(assert (= (and d!91143 (not res!418485)) b!645688))

(assert (= (and b!645688 res!418484) b!645691))

(assert (= (and b!645688 res!418486) b!645690))

(assert (= (and b!645690 c!73969) b!645689))

(assert (= (and b!645690 (not c!73969)) b!645692))

(assert (= (or b!645689 b!645692) bm!33634))

(declare-fun m!619279 () Bool)

(assert (=> bm!33634 m!619279))

(declare-fun m!619281 () Bool)

(assert (=> bm!33634 m!619281))

(assert (=> b!645688 m!619279))

(assert (=> b!645688 m!619279))

(declare-fun m!619283 () Bool)

(assert (=> b!645688 m!619283))

(assert (=> b!645690 m!619279))

(assert (=> b!645690 m!619279))

(assert (=> b!645690 m!619283))

(assert (=> b!645691 m!619279))

(assert (=> b!645691 m!619279))

(declare-fun m!619285 () Bool)

(assert (=> b!645691 m!619285))

(assert (=> b!645505 d!91143))

(assert (=> b!645495 d!91099))

(declare-fun b!645699 () Bool)

(declare-fun e!370086 () SeekEntryResult!6874)

(assert (=> b!645699 (= e!370086 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645700 () Bool)

(assert (=> b!645700 (= e!370086 (MissingVacant!6874 vacantSpotIndex!68))))

(declare-fun lt!299524 () SeekEntryResult!6874)

(declare-fun d!91145 () Bool)

(assert (=> d!91145 (and (or ((_ is Undefined!6874) lt!299524) (not ((_ is Found!6874) lt!299524)) (and (bvsge (index!29831 lt!299524) #b00000000000000000000000000000000) (bvslt (index!29831 lt!299524) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299524) ((_ is Found!6874) lt!299524) (not ((_ is MissingVacant!6874) lt!299524)) (not (= (index!29833 lt!299524) vacantSpotIndex!68)) (and (bvsge (index!29833 lt!299524) #b00000000000000000000000000000000) (bvslt (index!29833 lt!299524) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299524) (ite ((_ is Found!6874) lt!299524) (= (select (arr!18427 a!2986) (index!29831 lt!299524)) (select (arr!18427 a!2986) j!136)) (and ((_ is MissingVacant!6874) lt!299524) (= (index!29833 lt!299524) vacantSpotIndex!68) (= (select (arr!18427 a!2986) (index!29833 lt!299524)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370088 () SeekEntryResult!6874)

(assert (=> d!91145 (= lt!299524 e!370088)))

(declare-fun c!73975 () Bool)

(assert (=> d!91145 (= c!73975 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!299523 () (_ BitVec 64))

(assert (=> d!91145 (= lt!299523 (select (arr!18427 a!2986) index!984))))

(assert (=> d!91145 (validMask!0 mask!3053)))

(assert (=> d!91145 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18427 a!2986) j!136) a!2986 mask!3053) lt!299524)))

(declare-fun b!645701 () Bool)

(declare-fun c!73974 () Bool)

(assert (=> b!645701 (= c!73974 (= lt!299523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!370087 () SeekEntryResult!6874)

(assert (=> b!645701 (= e!370087 e!370086)))

(declare-fun b!645702 () Bool)

(assert (=> b!645702 (= e!370088 Undefined!6874)))

(declare-fun b!645703 () Bool)

(assert (=> b!645703 (= e!370088 e!370087)))

(declare-fun c!73973 () Bool)

(assert (=> b!645703 (= c!73973 (= lt!299523 (select (arr!18427 a!2986) j!136)))))

(declare-fun b!645704 () Bool)

(assert (=> b!645704 (= e!370087 (Found!6874 index!984))))

(assert (= (and d!91145 c!73975) b!645702))

(assert (= (and d!91145 (not c!73975)) b!645703))

(assert (= (and b!645703 c!73973) b!645704))

(assert (= (and b!645703 (not c!73973)) b!645701))

(assert (= (and b!645701 c!73974) b!645700))

(assert (= (and b!645701 (not c!73974)) b!645699))

(assert (=> b!645699 m!619077))

(assert (=> b!645699 m!619077))

(assert (=> b!645699 m!619063))

(declare-fun m!619293 () Bool)

(assert (=> b!645699 m!619293))

(declare-fun m!619295 () Bool)

(assert (=> d!91145 m!619295))

(declare-fun m!619297 () Bool)

(assert (=> d!91145 m!619297))

(assert (=> d!91145 m!619073))

(assert (=> d!91145 m!619069))

(assert (=> b!645506 d!91145))

(declare-fun d!91151 () Bool)

(declare-fun lt!299551 () SeekEntryResult!6874)

(assert (=> d!91151 (and (or ((_ is Undefined!6874) lt!299551) (not ((_ is Found!6874) lt!299551)) (and (bvsge (index!29831 lt!299551) #b00000000000000000000000000000000) (bvslt (index!29831 lt!299551) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299551) ((_ is Found!6874) lt!299551) (not ((_ is MissingZero!6874) lt!299551)) (and (bvsge (index!29830 lt!299551) #b00000000000000000000000000000000) (bvslt (index!29830 lt!299551) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299551) ((_ is Found!6874) lt!299551) ((_ is MissingZero!6874) lt!299551) (not ((_ is MissingVacant!6874) lt!299551)) (and (bvsge (index!29833 lt!299551) #b00000000000000000000000000000000) (bvslt (index!29833 lt!299551) (size!18791 a!2986)))) (or ((_ is Undefined!6874) lt!299551) (ite ((_ is Found!6874) lt!299551) (= (select (arr!18427 a!2986) (index!29831 lt!299551)) k0!1786) (ite ((_ is MissingZero!6874) lt!299551) (= (select (arr!18427 a!2986) (index!29830 lt!299551)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6874) lt!299551) (= (select (arr!18427 a!2986) (index!29833 lt!299551)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!370128 () SeekEntryResult!6874)

(assert (=> d!91151 (= lt!299551 e!370128)))

(declare-fun c!73990 () Bool)

(declare-fun lt!299550 () SeekEntryResult!6874)

(assert (=> d!91151 (= c!73990 (and ((_ is Intermediate!6874) lt!299550) (undefined!7686 lt!299550)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38438 (_ BitVec 32)) SeekEntryResult!6874)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91151 (= lt!299550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91151 (validMask!0 mask!3053)))

(assert (=> d!91151 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!299551)))

(declare-fun e!370126 () SeekEntryResult!6874)

(declare-fun b!645754 () Bool)

(assert (=> b!645754 (= e!370126 (seekKeyOrZeroReturnVacant!0 (x!58628 lt!299550) (index!29832 lt!299550) (index!29832 lt!299550) k0!1786 a!2986 mask!3053))))

(declare-fun b!645755 () Bool)

(declare-fun e!370127 () SeekEntryResult!6874)

(assert (=> b!645755 (= e!370128 e!370127)))

(declare-fun lt!299549 () (_ BitVec 64))

(assert (=> b!645755 (= lt!299549 (select (arr!18427 a!2986) (index!29832 lt!299550)))))

(declare-fun c!73988 () Bool)

(assert (=> b!645755 (= c!73988 (= lt!299549 k0!1786))))

(declare-fun b!645756 () Bool)

(assert (=> b!645756 (= e!370127 (Found!6874 (index!29832 lt!299550)))))

(declare-fun b!645757 () Bool)

(assert (=> b!645757 (= e!370126 (MissingZero!6874 (index!29832 lt!299550)))))

(declare-fun b!645758 () Bool)

(assert (=> b!645758 (= e!370128 Undefined!6874)))

(declare-fun b!645759 () Bool)

(declare-fun c!73989 () Bool)

(assert (=> b!645759 (= c!73989 (= lt!299549 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645759 (= e!370127 e!370126)))

(assert (= (and d!91151 c!73990) b!645758))

(assert (= (and d!91151 (not c!73990)) b!645755))

(assert (= (and b!645755 c!73988) b!645756))

(assert (= (and b!645755 (not c!73988)) b!645759))

(assert (= (and b!645759 c!73989) b!645757))

(assert (= (and b!645759 (not c!73989)) b!645754))

(declare-fun m!619335 () Bool)

(assert (=> d!91151 m!619335))

(declare-fun m!619337 () Bool)

(assert (=> d!91151 m!619337))

(assert (=> d!91151 m!619069))

(declare-fun m!619339 () Bool)

(assert (=> d!91151 m!619339))

(declare-fun m!619341 () Bool)

(assert (=> d!91151 m!619341))

(assert (=> d!91151 m!619337))

(declare-fun m!619343 () Bool)

(assert (=> d!91151 m!619343))

(declare-fun m!619345 () Bool)

(assert (=> b!645754 m!619345))

(declare-fun m!619347 () Bool)

(assert (=> b!645755 m!619347))

(assert (=> b!645496 d!91151))

(declare-fun d!91173 () Bool)

(assert (=> d!91173 (= (validKeyInArray!0 (select (arr!18427 a!2986) j!136)) (and (not (= (select (arr!18427 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18427 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!645507 d!91173))

(declare-fun bm!33642 () Bool)

(declare-fun call!33645 () Bool)

(assert (=> bm!33642 (= call!33645 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!645787 () Bool)

(declare-fun e!370147 () Bool)

(declare-fun e!370148 () Bool)

(assert (=> b!645787 (= e!370147 e!370148)))

(declare-fun lt!299565 () (_ BitVec 64))

(assert (=> b!645787 (= lt!299565 (select (arr!18427 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!299564 () Unit!21916)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38438 (_ BitVec 64) (_ BitVec 32)) Unit!21916)

(assert (=> b!645787 (= lt!299564 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!299565 #b00000000000000000000000000000000))))

(assert (=> b!645787 (arrayContainsKey!0 a!2986 lt!299565 #b00000000000000000000000000000000)))

(declare-fun lt!299566 () Unit!21916)

(assert (=> b!645787 (= lt!299566 lt!299564)))

(declare-fun res!418520 () Bool)

(assert (=> b!645787 (= res!418520 (= (seekEntryOrOpen!0 (select (arr!18427 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6874 #b00000000000000000000000000000000)))))

(assert (=> b!645787 (=> (not res!418520) (not e!370148))))

(declare-fun b!645788 () Bool)

(assert (=> b!645788 (= e!370148 call!33645)))

(declare-fun d!91175 () Bool)

(declare-fun res!418519 () Bool)

(declare-fun e!370146 () Bool)

(assert (=> d!91175 (=> res!418519 e!370146)))

(assert (=> d!91175 (= res!418519 (bvsge #b00000000000000000000000000000000 (size!18791 a!2986)))))

(assert (=> d!91175 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!370146)))

(declare-fun b!645789 () Bool)

(assert (=> b!645789 (= e!370146 e!370147)))

(declare-fun c!74001 () Bool)

(assert (=> b!645789 (= c!74001 (validKeyInArray!0 (select (arr!18427 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!645790 () Bool)

(assert (=> b!645790 (= e!370147 call!33645)))

(assert (= (and d!91175 (not res!418519)) b!645789))

(assert (= (and b!645789 c!74001) b!645787))

(assert (= (and b!645789 (not c!74001)) b!645790))

(assert (= (and b!645787 res!418520) b!645788))

(assert (= (or b!645788 b!645790) bm!33642))

(declare-fun m!619373 () Bool)

(assert (=> bm!33642 m!619373))

(assert (=> b!645787 m!619279))

(declare-fun m!619375 () Bool)

(assert (=> b!645787 m!619375))

(declare-fun m!619377 () Bool)

(assert (=> b!645787 m!619377))

(assert (=> b!645787 m!619279))

(declare-fun m!619379 () Bool)

(assert (=> b!645787 m!619379))

(assert (=> b!645789 m!619279))

(assert (=> b!645789 m!619279))

(assert (=> b!645789 m!619283))

(assert (=> b!645498 d!91175))

(assert (=> b!645509 d!91097))

(declare-fun d!91183 () Bool)

(declare-fun res!418521 () Bool)

(declare-fun e!370149 () Bool)

(assert (=> d!91183 (=> res!418521 e!370149)))

(assert (=> d!91183 (= res!418521 (= (select (arr!18427 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!91183 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!370149)))

(declare-fun b!645791 () Bool)

(declare-fun e!370150 () Bool)

(assert (=> b!645791 (= e!370149 e!370150)))

(declare-fun res!418522 () Bool)

(assert (=> b!645791 (=> (not res!418522) (not e!370150))))

(assert (=> b!645791 (= res!418522 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18791 a!2986)))))

(declare-fun b!645792 () Bool)

(assert (=> b!645792 (= e!370150 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91183 (not res!418521)) b!645791))

(assert (= (and b!645791 res!418522) b!645792))

(assert (=> d!91183 m!619279))

(declare-fun m!619381 () Bool)

(assert (=> b!645792 m!619381))

(assert (=> b!645500 d!91183))

(check-sat (not b!645597) (not d!91119) (not b!645594) (not d!91125) (not d!91107) (not bm!33633) (not d!91095) (not b!645679) (not b!645683) (not b!645678) (not d!91111) (not b!645653) (not b!645792) (not b!645691) (not d!91121) (not b!645610) (not d!91129) (not b!645787) (not b!645687) (not b!645688) (not b!645681) (not b!645690) (not b!645684) (not b!645676) (not d!91145) (not b!645590) (not bm!33634) (not b!645789) (not b!645699) (not b!645616) (not d!91151) (not d!91113) (not b!645754) (not d!91117) (not b!645622) (not b!645592) (not d!91109) (not bm!33632) (not bm!33642))
(check-sat)
