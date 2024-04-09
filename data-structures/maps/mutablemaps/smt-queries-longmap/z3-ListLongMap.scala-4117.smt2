; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56210 () Bool)

(assert start!56210)

(declare-fun b!622552 () Bool)

(declare-fun e!357087 () Bool)

(declare-fun e!357095 () Bool)

(assert (=> b!622552 (= e!357087 e!357095)))

(declare-fun res!401319 () Bool)

(assert (=> b!622552 (=> (not res!401319) (not e!357095))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37643 0))(
  ( (array!37644 (arr!18064 (Array (_ BitVec 32) (_ BitVec 64))) (size!18428 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37643)

(assert (=> b!622552 (= res!401319 (= (select (store (arr!18064 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!288619 () array!37643)

(assert (=> b!622552 (= lt!288619 (array!37644 (store (arr!18064 a!2986) i!1108 k0!1786) (size!18428 a!2986)))))

(declare-fun b!622553 () Bool)

(declare-fun res!401318 () Bool)

(declare-fun e!357084 () Bool)

(assert (=> b!622553 (=> (not res!401318) (not e!357084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622553 (= res!401318 (validKeyInArray!0 k0!1786))))

(declare-fun b!622554 () Bool)

(declare-fun res!401321 () Bool)

(assert (=> b!622554 (=> (not res!401321) (not e!357084))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!622554 (= res!401321 (and (= (size!18428 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18428 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18428 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622555 () Bool)

(declare-fun res!401320 () Bool)

(assert (=> b!622555 (=> (not res!401320) (not e!357087))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!622555 (= res!401320 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18064 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622556 () Bool)

(declare-datatypes ((Unit!20930 0))(
  ( (Unit!20931) )
))
(declare-fun e!357092 () Unit!20930)

(declare-fun Unit!20932 () Unit!20930)

(assert (=> b!622556 (= e!357092 Unit!20932)))

(declare-fun b!622557 () Bool)

(declare-fun e!357086 () Unit!20930)

(declare-fun Unit!20933 () Unit!20930)

(assert (=> b!622557 (= e!357086 Unit!20933)))

(declare-fun b!622558 () Bool)

(declare-fun res!401313 () Bool)

(assert (=> b!622558 (=> (not res!401313) (not e!357087))))

(declare-datatypes ((List!12158 0))(
  ( (Nil!12155) (Cons!12154 (h!13199 (_ BitVec 64)) (t!18394 List!12158)) )
))
(declare-fun arrayNoDuplicates!0 (array!37643 (_ BitVec 32) List!12158) Bool)

(assert (=> b!622558 (= res!401313 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12155))))

(declare-fun b!622559 () Bool)

(declare-fun e!357085 () Bool)

(declare-fun arrayContainsKey!0 (array!37643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622559 (= e!357085 (arrayContainsKey!0 lt!288619 (select (arr!18064 a!2986) j!136) index!984))))

(declare-fun b!622560 () Bool)

(declare-fun e!357097 () Bool)

(declare-datatypes ((SeekEntryResult!6511 0))(
  ( (MissingZero!6511 (index!28327 (_ BitVec 32))) (Found!6511 (index!28328 (_ BitVec 32))) (Intermediate!6511 (undefined!7323 Bool) (index!28329 (_ BitVec 32)) (x!57120 (_ BitVec 32))) (Undefined!6511) (MissingVacant!6511 (index!28330 (_ BitVec 32))) )
))
(declare-fun lt!288627 () SeekEntryResult!6511)

(declare-fun lt!288623 () SeekEntryResult!6511)

(assert (=> b!622560 (= e!357097 (= lt!288627 lt!288623))))

(declare-fun res!401312 () Bool)

(declare-fun b!622561 () Bool)

(assert (=> b!622561 (= res!401312 (arrayContainsKey!0 lt!288619 (select (arr!18064 a!2986) j!136) j!136))))

(assert (=> b!622561 (=> (not res!401312) (not e!357085))))

(declare-fun e!357088 () Bool)

(assert (=> b!622561 (= e!357088 e!357085)))

(declare-fun b!622562 () Bool)

(declare-fun res!401309 () Bool)

(assert (=> b!622562 (=> (not res!401309) (not e!357084))))

(assert (=> b!622562 (= res!401309 (validKeyInArray!0 (select (arr!18064 a!2986) j!136)))))

(declare-fun b!622563 () Bool)

(assert (=> b!622563 false))

(declare-fun lt!288634 () Unit!20930)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37643 (_ BitVec 64) (_ BitVec 32) List!12158) Unit!20930)

(assert (=> b!622563 (= lt!288634 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288619 (select (arr!18064 a!2986) j!136) j!136 Nil!12155))))

(assert (=> b!622563 (arrayNoDuplicates!0 lt!288619 j!136 Nil!12155)))

(declare-fun lt!288624 () Unit!20930)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37643 (_ BitVec 32) (_ BitVec 32)) Unit!20930)

(assert (=> b!622563 (= lt!288624 (lemmaNoDuplicateFromThenFromBigger!0 lt!288619 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622563 (arrayNoDuplicates!0 lt!288619 #b00000000000000000000000000000000 Nil!12155)))

(declare-fun lt!288617 () Unit!20930)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37643 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12158) Unit!20930)

(assert (=> b!622563 (= lt!288617 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12155))))

(assert (=> b!622563 (arrayContainsKey!0 lt!288619 (select (arr!18064 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288630 () Unit!20930)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37643 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20930)

(assert (=> b!622563 (= lt!288630 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288619 (select (arr!18064 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357091 () Unit!20930)

(declare-fun Unit!20934 () Unit!20930)

(assert (=> b!622563 (= e!357091 Unit!20934)))

(declare-fun b!622564 () Bool)

(declare-fun res!401316 () Bool)

(assert (=> b!622564 (= res!401316 (bvsge j!136 index!984))))

(assert (=> b!622564 (=> res!401316 e!357088)))

(declare-fun e!357094 () Bool)

(assert (=> b!622564 (= e!357094 e!357088)))

(declare-fun res!401311 () Bool)

(assert (=> start!56210 (=> (not res!401311) (not e!357084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56210 (= res!401311 (validMask!0 mask!3053))))

(assert (=> start!56210 e!357084))

(assert (=> start!56210 true))

(declare-fun array_inv!13838 (array!37643) Bool)

(assert (=> start!56210 (array_inv!13838 a!2986)))

(declare-fun b!622551 () Bool)

(declare-fun e!357096 () Unit!20930)

(declare-fun Unit!20935 () Unit!20930)

(assert (=> b!622551 (= e!357096 Unit!20935)))

(declare-fun b!622565 () Bool)

(declare-fun e!357090 () Bool)

(assert (=> b!622565 (= e!357090 (arrayContainsKey!0 lt!288619 (select (arr!18064 a!2986) j!136) index!984))))

(declare-fun b!622566 () Bool)

(declare-fun Unit!20936 () Unit!20930)

(assert (=> b!622566 (= e!357096 Unit!20936)))

(assert (=> b!622566 false))

(declare-fun b!622567 () Bool)

(assert (=> b!622567 false))

(declare-fun lt!288626 () Unit!20930)

(assert (=> b!622567 (= lt!288626 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288619 (select (arr!18064 a!2986) j!136) index!984 Nil!12155))))

(assert (=> b!622567 (arrayNoDuplicates!0 lt!288619 index!984 Nil!12155)))

(declare-fun lt!288628 () Unit!20930)

(assert (=> b!622567 (= lt!288628 (lemmaNoDuplicateFromThenFromBigger!0 lt!288619 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622567 (arrayNoDuplicates!0 lt!288619 #b00000000000000000000000000000000 Nil!12155)))

(declare-fun lt!288631 () Unit!20930)

(assert (=> b!622567 (= lt!288631 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12155))))

(assert (=> b!622567 (arrayContainsKey!0 lt!288619 (select (arr!18064 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288629 () Unit!20930)

(assert (=> b!622567 (= lt!288629 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288619 (select (arr!18064 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622567 e!357090))

(declare-fun res!401310 () Bool)

(assert (=> b!622567 (=> (not res!401310) (not e!357090))))

(assert (=> b!622567 (= res!401310 (arrayContainsKey!0 lt!288619 (select (arr!18064 a!2986) j!136) j!136))))

(declare-fun Unit!20937 () Unit!20930)

(assert (=> b!622567 (= e!357092 Unit!20937)))

(declare-fun b!622568 () Bool)

(declare-fun res!401323 () Bool)

(assert (=> b!622568 (=> (not res!401323) (not e!357084))))

(assert (=> b!622568 (= res!401323 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622569 () Bool)

(declare-fun e!357089 () Bool)

(assert (=> b!622569 (= e!357089 (not true))))

(declare-fun lt!288633 () Unit!20930)

(assert (=> b!622569 (= lt!288633 e!357086)))

(declare-fun c!70990 () Bool)

(declare-fun lt!288618 () SeekEntryResult!6511)

(assert (=> b!622569 (= c!70990 (= lt!288618 (Found!6511 index!984)))))

(declare-fun lt!288635 () Unit!20930)

(assert (=> b!622569 (= lt!288635 e!357096)))

(declare-fun c!70989 () Bool)

(assert (=> b!622569 (= c!70989 (= lt!288618 Undefined!6511))))

(declare-fun lt!288621 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37643 (_ BitVec 32)) SeekEntryResult!6511)

(assert (=> b!622569 (= lt!288618 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288621 lt!288619 mask!3053))))

(assert (=> b!622569 e!357097))

(declare-fun res!401315 () Bool)

(assert (=> b!622569 (=> (not res!401315) (not e!357097))))

(declare-fun lt!288625 () (_ BitVec 32))

(assert (=> b!622569 (= res!401315 (= lt!288623 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288625 vacantSpotIndex!68 lt!288621 lt!288619 mask!3053)))))

(assert (=> b!622569 (= lt!288623 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288625 vacantSpotIndex!68 (select (arr!18064 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622569 (= lt!288621 (select (store (arr!18064 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!288636 () Unit!20930)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20930)

(assert (=> b!622569 (= lt!288636 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288625 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622569 (= lt!288625 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622570 () Bool)

(assert (=> b!622570 (= e!357084 e!357087)))

(declare-fun res!401322 () Bool)

(assert (=> b!622570 (=> (not res!401322) (not e!357087))))

(declare-fun lt!288632 () SeekEntryResult!6511)

(assert (=> b!622570 (= res!401322 (or (= lt!288632 (MissingZero!6511 i!1108)) (= lt!288632 (MissingVacant!6511 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37643 (_ BitVec 32)) SeekEntryResult!6511)

(assert (=> b!622570 (= lt!288632 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!622571 () Bool)

(declare-fun res!401317 () Bool)

(assert (=> b!622571 (=> (not res!401317) (not e!357087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37643 (_ BitVec 32)) Bool)

(assert (=> b!622571 (= res!401317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!622572 () Bool)

(declare-fun Unit!20938 () Unit!20930)

(assert (=> b!622572 (= e!357091 Unit!20938)))

(declare-fun b!622573 () Bool)

(assert (=> b!622573 (= e!357095 e!357089)))

(declare-fun res!401324 () Bool)

(assert (=> b!622573 (=> (not res!401324) (not e!357089))))

(assert (=> b!622573 (= res!401324 (and (= lt!288627 (Found!6511 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18064 a!2986) index!984) (select (arr!18064 a!2986) j!136))) (not (= (select (arr!18064 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!622573 (= lt!288627 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18064 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622574 () Bool)

(declare-fun Unit!20939 () Unit!20930)

(assert (=> b!622574 (= e!357086 Unit!20939)))

(declare-fun res!401314 () Bool)

(assert (=> b!622574 (= res!401314 (= (select (store (arr!18064 a!2986) i!1108 k0!1786) index!984) (select (arr!18064 a!2986) j!136)))))

(assert (=> b!622574 (=> (not res!401314) (not e!357094))))

(assert (=> b!622574 e!357094))

(declare-fun c!70988 () Bool)

(assert (=> b!622574 (= c!70988 (bvslt j!136 index!984))))

(declare-fun lt!288620 () Unit!20930)

(assert (=> b!622574 (= lt!288620 e!357091)))

(declare-fun c!70991 () Bool)

(assert (=> b!622574 (= c!70991 (bvslt index!984 j!136))))

(declare-fun lt!288622 () Unit!20930)

(assert (=> b!622574 (= lt!288622 e!357092)))

(assert (=> b!622574 false))

(assert (= (and start!56210 res!401311) b!622554))

(assert (= (and b!622554 res!401321) b!622562))

(assert (= (and b!622562 res!401309) b!622553))

(assert (= (and b!622553 res!401318) b!622568))

(assert (= (and b!622568 res!401323) b!622570))

(assert (= (and b!622570 res!401322) b!622571))

(assert (= (and b!622571 res!401317) b!622558))

(assert (= (and b!622558 res!401313) b!622555))

(assert (= (and b!622555 res!401320) b!622552))

(assert (= (and b!622552 res!401319) b!622573))

(assert (= (and b!622573 res!401324) b!622569))

(assert (= (and b!622569 res!401315) b!622560))

(assert (= (and b!622569 c!70989) b!622566))

(assert (= (and b!622569 (not c!70989)) b!622551))

(assert (= (and b!622569 c!70990) b!622574))

(assert (= (and b!622569 (not c!70990)) b!622557))

(assert (= (and b!622574 res!401314) b!622564))

(assert (= (and b!622564 (not res!401316)) b!622561))

(assert (= (and b!622561 res!401312) b!622559))

(assert (= (and b!622574 c!70988) b!622563))

(assert (= (and b!622574 (not c!70988)) b!622572))

(assert (= (and b!622574 c!70991) b!622567))

(assert (= (and b!622574 (not c!70991)) b!622556))

(assert (= (and b!622567 res!401310) b!622565))

(declare-fun m!598459 () Bool)

(assert (=> b!622552 m!598459))

(declare-fun m!598461 () Bool)

(assert (=> b!622552 m!598461))

(declare-fun m!598463 () Bool)

(assert (=> start!56210 m!598463))

(declare-fun m!598465 () Bool)

(assert (=> start!56210 m!598465))

(declare-fun m!598467 () Bool)

(assert (=> b!622568 m!598467))

(declare-fun m!598469 () Bool)

(assert (=> b!622558 m!598469))

(declare-fun m!598471 () Bool)

(assert (=> b!622565 m!598471))

(assert (=> b!622565 m!598471))

(declare-fun m!598473 () Bool)

(assert (=> b!622565 m!598473))

(assert (=> b!622574 m!598459))

(declare-fun m!598475 () Bool)

(assert (=> b!622574 m!598475))

(assert (=> b!622574 m!598471))

(declare-fun m!598477 () Bool)

(assert (=> b!622569 m!598477))

(declare-fun m!598479 () Bool)

(assert (=> b!622569 m!598479))

(assert (=> b!622569 m!598471))

(declare-fun m!598481 () Bool)

(assert (=> b!622569 m!598481))

(assert (=> b!622569 m!598459))

(assert (=> b!622569 m!598471))

(declare-fun m!598483 () Bool)

(assert (=> b!622569 m!598483))

(declare-fun m!598485 () Bool)

(assert (=> b!622569 m!598485))

(declare-fun m!598487 () Bool)

(assert (=> b!622569 m!598487))

(declare-fun m!598489 () Bool)

(assert (=> b!622555 m!598489))

(assert (=> b!622562 m!598471))

(assert (=> b!622562 m!598471))

(declare-fun m!598491 () Bool)

(assert (=> b!622562 m!598491))

(assert (=> b!622559 m!598471))

(assert (=> b!622559 m!598471))

(assert (=> b!622559 m!598473))

(declare-fun m!598493 () Bool)

(assert (=> b!622571 m!598493))

(declare-fun m!598495 () Bool)

(assert (=> b!622553 m!598495))

(declare-fun m!598497 () Bool)

(assert (=> b!622567 m!598497))

(declare-fun m!598499 () Bool)

(assert (=> b!622567 m!598499))

(assert (=> b!622567 m!598471))

(assert (=> b!622567 m!598471))

(declare-fun m!598501 () Bool)

(assert (=> b!622567 m!598501))

(assert (=> b!622567 m!598471))

(declare-fun m!598503 () Bool)

(assert (=> b!622567 m!598503))

(declare-fun m!598505 () Bool)

(assert (=> b!622567 m!598505))

(assert (=> b!622567 m!598471))

(declare-fun m!598507 () Bool)

(assert (=> b!622567 m!598507))

(assert (=> b!622567 m!598471))

(declare-fun m!598509 () Bool)

(assert (=> b!622567 m!598509))

(declare-fun m!598511 () Bool)

(assert (=> b!622567 m!598511))

(assert (=> b!622561 m!598471))

(assert (=> b!622561 m!598471))

(assert (=> b!622561 m!598501))

(declare-fun m!598513 () Bool)

(assert (=> b!622570 m!598513))

(assert (=> b!622563 m!598471))

(declare-fun m!598515 () Bool)

(assert (=> b!622563 m!598515))

(declare-fun m!598517 () Bool)

(assert (=> b!622563 m!598517))

(assert (=> b!622563 m!598471))

(declare-fun m!598519 () Bool)

(assert (=> b!622563 m!598519))

(assert (=> b!622563 m!598511))

(declare-fun m!598521 () Bool)

(assert (=> b!622563 m!598521))

(assert (=> b!622563 m!598471))

(assert (=> b!622563 m!598505))

(assert (=> b!622563 m!598471))

(declare-fun m!598523 () Bool)

(assert (=> b!622563 m!598523))

(declare-fun m!598525 () Bool)

(assert (=> b!622573 m!598525))

(assert (=> b!622573 m!598471))

(assert (=> b!622573 m!598471))

(declare-fun m!598527 () Bool)

(assert (=> b!622573 m!598527))

(check-sat (not b!622553) (not b!622573) (not start!56210) (not b!622568) (not b!622559) (not b!622562) (not b!622563) (not b!622558) (not b!622561) (not b!622570) (not b!622571) (not b!622565) (not b!622567) (not b!622569))
(check-sat)
