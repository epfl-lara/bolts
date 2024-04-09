; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56208 () Bool)

(assert start!56208)

(declare-fun b!622479 () Bool)

(declare-fun res!401276 () Bool)

(declare-fun e!357043 () Bool)

(assert (=> b!622479 (=> (not res!401276) (not e!357043))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37641 0))(
  ( (array!37642 (arr!18063 (Array (_ BitVec 32) (_ BitVec 64))) (size!18427 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37641)

(assert (=> b!622479 (= res!401276 (and (= (size!18427 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18427 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18427 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!357044 () Bool)

(declare-fun b!622480 () Bool)

(declare-fun lt!288565 () array!37641)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622480 (= e!357044 (arrayContainsKey!0 lt!288565 (select (arr!18063 a!2986) j!136) index!984))))

(declare-fun b!622481 () Bool)

(declare-datatypes ((Unit!20920 0))(
  ( (Unit!20921) )
))
(declare-fun e!357045 () Unit!20920)

(declare-fun Unit!20922 () Unit!20920)

(assert (=> b!622481 (= e!357045 Unit!20922)))

(declare-fun b!622482 () Bool)

(declare-fun e!357052 () Unit!20920)

(declare-fun Unit!20923 () Unit!20920)

(assert (=> b!622482 (= e!357052 Unit!20923)))

(assert (=> b!622482 false))

(declare-fun b!622483 () Bool)

(declare-fun e!357042 () Bool)

(declare-fun e!357053 () Bool)

(assert (=> b!622483 (= e!357042 e!357053)))

(declare-fun res!401268 () Bool)

(assert (=> b!622483 (=> (not res!401268) (not e!357053))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6510 0))(
  ( (MissingZero!6510 (index!28323 (_ BitVec 32))) (Found!6510 (index!28324 (_ BitVec 32))) (Intermediate!6510 (undefined!7322 Bool) (index!28325 (_ BitVec 32)) (x!57119 (_ BitVec 32))) (Undefined!6510) (MissingVacant!6510 (index!28326 (_ BitVec 32))) )
))
(declare-fun lt!288576 () SeekEntryResult!6510)

(assert (=> b!622483 (= res!401268 (and (= lt!288576 (Found!6510 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18063 a!2986) index!984) (select (arr!18063 a!2986) j!136))) (not (= (select (arr!18063 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37641 (_ BitVec 32)) SeekEntryResult!6510)

(assert (=> b!622483 (= lt!288576 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18063 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622484 () Bool)

(declare-fun res!401275 () Bool)

(assert (=> b!622484 (=> (not res!401275) (not e!357043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622484 (= res!401275 (validKeyInArray!0 (select (arr!18063 a!2986) j!136)))))

(declare-fun b!622485 () Bool)

(declare-fun res!401267 () Bool)

(assert (=> b!622485 (=> (not res!401267) (not e!357043))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!622485 (= res!401267 (validKeyInArray!0 k!1786))))

(declare-fun b!622486 () Bool)

(declare-fun e!357055 () Unit!20920)

(declare-fun Unit!20924 () Unit!20920)

(assert (=> b!622486 (= e!357055 Unit!20924)))

(declare-fun res!401265 () Bool)

(assert (=> b!622486 (= res!401265 (= (select (store (arr!18063 a!2986) i!1108 k!1786) index!984) (select (arr!18063 a!2986) j!136)))))

(declare-fun e!357051 () Bool)

(assert (=> b!622486 (=> (not res!401265) (not e!357051))))

(assert (=> b!622486 e!357051))

(declare-fun c!70976 () Bool)

(assert (=> b!622486 (= c!70976 (bvslt j!136 index!984))))

(declare-fun lt!288557 () Unit!20920)

(declare-fun e!357050 () Unit!20920)

(assert (=> b!622486 (= lt!288557 e!357050)))

(declare-fun c!70978 () Bool)

(assert (=> b!622486 (= c!70978 (bvslt index!984 j!136))))

(declare-fun lt!288575 () Unit!20920)

(assert (=> b!622486 (= lt!288575 e!357045)))

(assert (=> b!622486 false))

(declare-fun b!622488 () Bool)

(declare-fun e!357048 () Bool)

(assert (=> b!622488 (= e!357043 e!357048)))

(declare-fun res!401273 () Bool)

(assert (=> b!622488 (=> (not res!401273) (not e!357048))))

(declare-fun lt!288564 () SeekEntryResult!6510)

(assert (=> b!622488 (= res!401273 (or (= lt!288564 (MissingZero!6510 i!1108)) (= lt!288564 (MissingVacant!6510 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37641 (_ BitVec 32)) SeekEntryResult!6510)

(assert (=> b!622488 (= lt!288564 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!622489 () Bool)

(declare-fun res!401266 () Bool)

(assert (=> b!622489 (=> (not res!401266) (not e!357048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37641 (_ BitVec 32)) Bool)

(assert (=> b!622489 (= res!401266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!401270 () Bool)

(declare-fun b!622490 () Bool)

(assert (=> b!622490 (= res!401270 (arrayContainsKey!0 lt!288565 (select (arr!18063 a!2986) j!136) j!136))))

(declare-fun e!357054 () Bool)

(assert (=> b!622490 (=> (not res!401270) (not e!357054))))

(declare-fun e!357046 () Bool)

(assert (=> b!622490 (= e!357046 e!357054)))

(declare-fun b!622491 () Bool)

(declare-fun res!401263 () Bool)

(assert (=> b!622491 (=> (not res!401263) (not e!357043))))

(assert (=> b!622491 (= res!401263 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622492 () Bool)

(declare-fun res!401262 () Bool)

(assert (=> b!622492 (=> (not res!401262) (not e!357048))))

(assert (=> b!622492 (= res!401262 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18063 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622493 () Bool)

(assert (=> b!622493 (= e!357048 e!357042)))

(declare-fun res!401271 () Bool)

(assert (=> b!622493 (=> (not res!401271) (not e!357042))))

(assert (=> b!622493 (= res!401271 (= (select (store (arr!18063 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!622493 (= lt!288565 (array!37642 (store (arr!18063 a!2986) i!1108 k!1786) (size!18427 a!2986)))))

(declare-fun b!622494 () Bool)

(declare-fun res!401274 () Bool)

(assert (=> b!622494 (= res!401274 (bvsge j!136 index!984))))

(assert (=> b!622494 (=> res!401274 e!357046)))

(assert (=> b!622494 (= e!357051 e!357046)))

(declare-fun b!622495 () Bool)

(assert (=> b!622495 (= e!357053 (not true))))

(declare-fun lt!288559 () Unit!20920)

(assert (=> b!622495 (= lt!288559 e!357055)))

(declare-fun c!70977 () Bool)

(declare-fun lt!288568 () SeekEntryResult!6510)

(assert (=> b!622495 (= c!70977 (= lt!288568 (Found!6510 index!984)))))

(declare-fun lt!288558 () Unit!20920)

(assert (=> b!622495 (= lt!288558 e!357052)))

(declare-fun c!70979 () Bool)

(assert (=> b!622495 (= c!70979 (= lt!288568 Undefined!6510))))

(declare-fun lt!288569 () (_ BitVec 64))

(assert (=> b!622495 (= lt!288568 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288569 lt!288565 mask!3053))))

(declare-fun e!357047 () Bool)

(assert (=> b!622495 e!357047))

(declare-fun res!401264 () Bool)

(assert (=> b!622495 (=> (not res!401264) (not e!357047))))

(declare-fun lt!288574 () SeekEntryResult!6510)

(declare-fun lt!288563 () (_ BitVec 32))

(assert (=> b!622495 (= res!401264 (= lt!288574 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288563 vacantSpotIndex!68 lt!288569 lt!288565 mask!3053)))))

(assert (=> b!622495 (= lt!288574 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288563 vacantSpotIndex!68 (select (arr!18063 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622495 (= lt!288569 (select (store (arr!18063 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288570 () Unit!20920)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37641 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20920)

(assert (=> b!622495 (= lt!288570 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288563 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622495 (= lt!288563 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!401269 () Bool)

(assert (=> start!56208 (=> (not res!401269) (not e!357043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56208 (= res!401269 (validMask!0 mask!3053))))

(assert (=> start!56208 e!357043))

(assert (=> start!56208 true))

(declare-fun array_inv!13837 (array!37641) Bool)

(assert (=> start!56208 (array_inv!13837 a!2986)))

(declare-fun b!622487 () Bool)

(assert (=> b!622487 (= e!357054 (arrayContainsKey!0 lt!288565 (select (arr!18063 a!2986) j!136) index!984))))

(declare-fun b!622496 () Bool)

(declare-fun Unit!20925 () Unit!20920)

(assert (=> b!622496 (= e!357052 Unit!20925)))

(declare-fun b!622497 () Bool)

(declare-fun res!401261 () Bool)

(assert (=> b!622497 (=> (not res!401261) (not e!357048))))

(declare-datatypes ((List!12157 0))(
  ( (Nil!12154) (Cons!12153 (h!13198 (_ BitVec 64)) (t!18393 List!12157)) )
))
(declare-fun arrayNoDuplicates!0 (array!37641 (_ BitVec 32) List!12157) Bool)

(assert (=> b!622497 (= res!401261 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12154))))

(declare-fun b!622498 () Bool)

(assert (=> b!622498 false))

(declare-fun lt!288572 () Unit!20920)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37641 (_ BitVec 64) (_ BitVec 32) List!12157) Unit!20920)

(assert (=> b!622498 (= lt!288572 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288565 (select (arr!18063 a!2986) j!136) j!136 Nil!12154))))

(assert (=> b!622498 (arrayNoDuplicates!0 lt!288565 j!136 Nil!12154)))

(declare-fun lt!288567 () Unit!20920)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37641 (_ BitVec 32) (_ BitVec 32)) Unit!20920)

(assert (=> b!622498 (= lt!288567 (lemmaNoDuplicateFromThenFromBigger!0 lt!288565 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622498 (arrayNoDuplicates!0 lt!288565 #b00000000000000000000000000000000 Nil!12154)))

(declare-fun lt!288573 () Unit!20920)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37641 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12157) Unit!20920)

(assert (=> b!622498 (= lt!288573 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12154))))

(assert (=> b!622498 (arrayContainsKey!0 lt!288565 (select (arr!18063 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288560 () Unit!20920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37641 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20920)

(assert (=> b!622498 (= lt!288560 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288565 (select (arr!18063 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20926 () Unit!20920)

(assert (=> b!622498 (= e!357050 Unit!20926)))

(declare-fun b!622499 () Bool)

(declare-fun Unit!20927 () Unit!20920)

(assert (=> b!622499 (= e!357050 Unit!20927)))

(declare-fun b!622500 () Bool)

(assert (=> b!622500 (= e!357047 (= lt!288576 lt!288574))))

(declare-fun b!622501 () Bool)

(assert (=> b!622501 false))

(declare-fun lt!288571 () Unit!20920)

(assert (=> b!622501 (= lt!288571 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288565 (select (arr!18063 a!2986) j!136) index!984 Nil!12154))))

(assert (=> b!622501 (arrayNoDuplicates!0 lt!288565 index!984 Nil!12154)))

(declare-fun lt!288562 () Unit!20920)

(assert (=> b!622501 (= lt!288562 (lemmaNoDuplicateFromThenFromBigger!0 lt!288565 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622501 (arrayNoDuplicates!0 lt!288565 #b00000000000000000000000000000000 Nil!12154)))

(declare-fun lt!288561 () Unit!20920)

(assert (=> b!622501 (= lt!288561 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12154))))

(assert (=> b!622501 (arrayContainsKey!0 lt!288565 (select (arr!18063 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288566 () Unit!20920)

(assert (=> b!622501 (= lt!288566 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288565 (select (arr!18063 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!622501 e!357044))

(declare-fun res!401272 () Bool)

(assert (=> b!622501 (=> (not res!401272) (not e!357044))))

(assert (=> b!622501 (= res!401272 (arrayContainsKey!0 lt!288565 (select (arr!18063 a!2986) j!136) j!136))))

(declare-fun Unit!20928 () Unit!20920)

(assert (=> b!622501 (= e!357045 Unit!20928)))

(declare-fun b!622502 () Bool)

(declare-fun Unit!20929 () Unit!20920)

(assert (=> b!622502 (= e!357055 Unit!20929)))

(assert (= (and start!56208 res!401269) b!622479))

(assert (= (and b!622479 res!401276) b!622484))

(assert (= (and b!622484 res!401275) b!622485))

(assert (= (and b!622485 res!401267) b!622491))

(assert (= (and b!622491 res!401263) b!622488))

(assert (= (and b!622488 res!401273) b!622489))

(assert (= (and b!622489 res!401266) b!622497))

(assert (= (and b!622497 res!401261) b!622492))

(assert (= (and b!622492 res!401262) b!622493))

(assert (= (and b!622493 res!401271) b!622483))

(assert (= (and b!622483 res!401268) b!622495))

(assert (= (and b!622495 res!401264) b!622500))

(assert (= (and b!622495 c!70979) b!622482))

(assert (= (and b!622495 (not c!70979)) b!622496))

(assert (= (and b!622495 c!70977) b!622486))

(assert (= (and b!622495 (not c!70977)) b!622502))

(assert (= (and b!622486 res!401265) b!622494))

(assert (= (and b!622494 (not res!401274)) b!622490))

(assert (= (and b!622490 res!401270) b!622487))

(assert (= (and b!622486 c!70976) b!622498))

(assert (= (and b!622486 (not c!70976)) b!622499))

(assert (= (and b!622486 c!70978) b!622501))

(assert (= (and b!622486 (not c!70978)) b!622481))

(assert (= (and b!622501 res!401272) b!622480))

(declare-fun m!598389 () Bool)

(assert (=> b!622501 m!598389))

(declare-fun m!598391 () Bool)

(assert (=> b!622501 m!598391))

(assert (=> b!622501 m!598391))

(declare-fun m!598393 () Bool)

(assert (=> b!622501 m!598393))

(assert (=> b!622501 m!598391))

(declare-fun m!598395 () Bool)

(assert (=> b!622501 m!598395))

(declare-fun m!598397 () Bool)

(assert (=> b!622501 m!598397))

(assert (=> b!622501 m!598391))

(declare-fun m!598399 () Bool)

(assert (=> b!622501 m!598399))

(declare-fun m!598401 () Bool)

(assert (=> b!622501 m!598401))

(assert (=> b!622501 m!598391))

(declare-fun m!598403 () Bool)

(assert (=> b!622501 m!598403))

(declare-fun m!598405 () Bool)

(assert (=> b!622501 m!598405))

(declare-fun m!598407 () Bool)

(assert (=> b!622488 m!598407))

(declare-fun m!598409 () Bool)

(assert (=> start!56208 m!598409))

(declare-fun m!598411 () Bool)

(assert (=> start!56208 m!598411))

(declare-fun m!598413 () Bool)

(assert (=> b!622492 m!598413))

(declare-fun m!598415 () Bool)

(assert (=> b!622489 m!598415))

(assert (=> b!622498 m!598389))

(declare-fun m!598417 () Bool)

(assert (=> b!622498 m!598417))

(assert (=> b!622498 m!598391))

(assert (=> b!622498 m!598391))

(declare-fun m!598419 () Bool)

(assert (=> b!622498 m!598419))

(assert (=> b!622498 m!598391))

(declare-fun m!598421 () Bool)

(assert (=> b!622498 m!598421))

(assert (=> b!622498 m!598391))

(declare-fun m!598423 () Bool)

(assert (=> b!622498 m!598423))

(declare-fun m!598425 () Bool)

(assert (=> b!622498 m!598425))

(assert (=> b!622498 m!598401))

(assert (=> b!622487 m!598391))

(assert (=> b!622487 m!598391))

(declare-fun m!598427 () Bool)

(assert (=> b!622487 m!598427))

(declare-fun m!598429 () Bool)

(assert (=> b!622485 m!598429))

(declare-fun m!598431 () Bool)

(assert (=> b!622493 m!598431))

(declare-fun m!598433 () Bool)

(assert (=> b!622493 m!598433))

(assert (=> b!622490 m!598391))

(assert (=> b!622490 m!598391))

(assert (=> b!622490 m!598395))

(declare-fun m!598435 () Bool)

(assert (=> b!622491 m!598435))

(declare-fun m!598437 () Bool)

(assert (=> b!622483 m!598437))

(assert (=> b!622483 m!598391))

(assert (=> b!622483 m!598391))

(declare-fun m!598439 () Bool)

(assert (=> b!622483 m!598439))

(assert (=> b!622486 m!598431))

(declare-fun m!598441 () Bool)

(assert (=> b!622486 m!598441))

(assert (=> b!622486 m!598391))

(declare-fun m!598443 () Bool)

(assert (=> b!622495 m!598443))

(declare-fun m!598445 () Bool)

(assert (=> b!622495 m!598445))

(assert (=> b!622495 m!598391))

(assert (=> b!622495 m!598391))

(declare-fun m!598447 () Bool)

(assert (=> b!622495 m!598447))

(declare-fun m!598449 () Bool)

(assert (=> b!622495 m!598449))

(declare-fun m!598451 () Bool)

(assert (=> b!622495 m!598451))

(declare-fun m!598453 () Bool)

(assert (=> b!622495 m!598453))

(assert (=> b!622495 m!598431))

(assert (=> b!622484 m!598391))

(assert (=> b!622484 m!598391))

(declare-fun m!598455 () Bool)

(assert (=> b!622484 m!598455))

(declare-fun m!598457 () Bool)

(assert (=> b!622497 m!598457))

(assert (=> b!622480 m!598391))

(assert (=> b!622480 m!598391))

(assert (=> b!622480 m!598427))

(push 1)

