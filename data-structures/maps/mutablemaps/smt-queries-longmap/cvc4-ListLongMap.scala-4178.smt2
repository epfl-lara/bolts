; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56998 () Bool)

(assert start!56998)

(declare-fun b!630463 () Bool)

(declare-fun e!360511 () Bool)

(declare-datatypes ((SeekEntryResult!6695 0))(
  ( (MissingZero!6695 (index!29069 (_ BitVec 32))) (Found!6695 (index!29070 (_ BitVec 32))) (Intermediate!6695 (undefined!7507 Bool) (index!29071 (_ BitVec 32)) (x!57834 (_ BitVec 32))) (Undefined!6695) (MissingVacant!6695 (index!29072 (_ BitVec 32))) )
))
(declare-fun lt!291246 () SeekEntryResult!6695)

(declare-fun lt!291242 () SeekEntryResult!6695)

(assert (=> b!630463 (= e!360511 (= lt!291246 lt!291242))))

(declare-fun b!630464 () Bool)

(declare-fun e!360508 () Bool)

(declare-fun e!360513 () Bool)

(assert (=> b!630464 (= e!360508 e!360513)))

(declare-fun res!407643 () Bool)

(assert (=> b!630464 (=> (not res!407643) (not e!360513))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38035 0))(
  ( (array!38036 (arr!18248 (Array (_ BitVec 32) (_ BitVec 64))) (size!18612 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38035)

(assert (=> b!630464 (= res!407643 (and (= lt!291246 (Found!6695 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18248 a!2986) index!984) (select (arr!18248 a!2986) j!136))) (not (= (select (arr!18248 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38035 (_ BitVec 32)) SeekEntryResult!6695)

(assert (=> b!630464 (= lt!291246 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18248 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!407647 () Bool)

(declare-fun e!360510 () Bool)

(assert (=> start!56998 (=> (not res!407647) (not e!360510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56998 (= res!407647 (validMask!0 mask!3053))))

(assert (=> start!56998 e!360510))

(assert (=> start!56998 true))

(declare-fun array_inv!14022 (array!38035) Bool)

(assert (=> start!56998 (array_inv!14022 a!2986)))

(declare-fun b!630465 () Bool)

(declare-fun res!407651 () Bool)

(assert (=> b!630465 (=> (not res!407651) (not e!360510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630465 (= res!407651 (validKeyInArray!0 (select (arr!18248 a!2986) j!136)))))

(declare-fun b!630466 () Bool)

(declare-datatypes ((Unit!21138 0))(
  ( (Unit!21139) )
))
(declare-fun e!360512 () Unit!21138)

(declare-fun Unit!21140 () Unit!21138)

(assert (=> b!630466 (= e!360512 Unit!21140)))

(declare-fun b!630467 () Bool)

(declare-fun e!360514 () Bool)

(assert (=> b!630467 (= e!360510 e!360514)))

(declare-fun res!407645 () Bool)

(assert (=> b!630467 (=> (not res!407645) (not e!360514))))

(declare-fun lt!291243 () SeekEntryResult!6695)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630467 (= res!407645 (or (= lt!291243 (MissingZero!6695 i!1108)) (= lt!291243 (MissingVacant!6695 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38035 (_ BitVec 32)) SeekEntryResult!6695)

(assert (=> b!630467 (= lt!291243 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630468 () Bool)

(declare-fun Unit!21141 () Unit!21138)

(assert (=> b!630468 (= e!360512 Unit!21141)))

(assert (=> b!630468 false))

(declare-fun b!630469 () Bool)

(declare-fun res!407648 () Bool)

(assert (=> b!630469 (=> (not res!407648) (not e!360510))))

(declare-fun arrayContainsKey!0 (array!38035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630469 (= res!407648 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630470 () Bool)

(declare-fun res!407654 () Bool)

(assert (=> b!630470 (=> (not res!407654) (not e!360514))))

(declare-datatypes ((List!12342 0))(
  ( (Nil!12339) (Cons!12338 (h!13383 (_ BitVec 64)) (t!18578 List!12342)) )
))
(declare-fun arrayNoDuplicates!0 (array!38035 (_ BitVec 32) List!12342) Bool)

(assert (=> b!630470 (= res!407654 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12339))))

(declare-fun b!630471 () Bool)

(declare-fun res!407650 () Bool)

(assert (=> b!630471 (=> (not res!407650) (not e!360514))))

(assert (=> b!630471 (= res!407650 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18248 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630472 () Bool)

(declare-fun res!407649 () Bool)

(assert (=> b!630472 (=> (not res!407649) (not e!360510))))

(assert (=> b!630472 (= res!407649 (and (= (size!18612 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18612 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18612 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630473 () Bool)

(declare-fun res!407653 () Bool)

(assert (=> b!630473 (=> (not res!407653) (not e!360510))))

(assert (=> b!630473 (= res!407653 (validKeyInArray!0 k!1786))))

(declare-fun b!630474 () Bool)

(declare-fun res!407646 () Bool)

(assert (=> b!630474 (=> (not res!407646) (not e!360514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38035 (_ BitVec 32)) Bool)

(assert (=> b!630474 (= res!407646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630475 () Bool)

(assert (=> b!630475 (= e!360514 e!360508)))

(declare-fun res!407644 () Bool)

(assert (=> b!630475 (=> (not res!407644) (not e!360508))))

(assert (=> b!630475 (= res!407644 (= (select (store (arr!18248 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291245 () array!38035)

(assert (=> b!630475 (= lt!291245 (array!38036 (store (arr!18248 a!2986) i!1108 k!1786) (size!18612 a!2986)))))

(declare-fun b!630476 () Bool)

(assert (=> b!630476 (= e!360513 (not true))))

(declare-fun lt!291248 () Unit!21138)

(assert (=> b!630476 (= lt!291248 e!360512)))

(declare-fun lt!291244 () (_ BitVec 64))

(declare-fun c!71777 () Bool)

(assert (=> b!630476 (= c!71777 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291244 lt!291245 mask!3053) Undefined!6695))))

(assert (=> b!630476 e!360511))

(declare-fun res!407652 () Bool)

(assert (=> b!630476 (=> (not res!407652) (not e!360511))))

(declare-fun lt!291249 () (_ BitVec 32))

(assert (=> b!630476 (= res!407652 (= lt!291242 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291249 vacantSpotIndex!68 lt!291244 lt!291245 mask!3053)))))

(assert (=> b!630476 (= lt!291242 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291249 vacantSpotIndex!68 (select (arr!18248 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630476 (= lt!291244 (select (store (arr!18248 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291247 () Unit!21138)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21138)

(assert (=> b!630476 (= lt!291247 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291249 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630476 (= lt!291249 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56998 res!407647) b!630472))

(assert (= (and b!630472 res!407649) b!630465))

(assert (= (and b!630465 res!407651) b!630473))

(assert (= (and b!630473 res!407653) b!630469))

(assert (= (and b!630469 res!407648) b!630467))

(assert (= (and b!630467 res!407645) b!630474))

(assert (= (and b!630474 res!407646) b!630470))

(assert (= (and b!630470 res!407654) b!630471))

(assert (= (and b!630471 res!407650) b!630475))

(assert (= (and b!630475 res!407644) b!630464))

(assert (= (and b!630464 res!407643) b!630476))

(assert (= (and b!630476 res!407652) b!630463))

(assert (= (and b!630476 c!71777) b!630468))

(assert (= (and b!630476 (not c!71777)) b!630466))

(declare-fun m!605489 () Bool)

(assert (=> b!630467 m!605489))

(declare-fun m!605491 () Bool)

(assert (=> b!630475 m!605491))

(declare-fun m!605493 () Bool)

(assert (=> b!630475 m!605493))

(declare-fun m!605495 () Bool)

(assert (=> b!630464 m!605495))

(declare-fun m!605497 () Bool)

(assert (=> b!630464 m!605497))

(assert (=> b!630464 m!605497))

(declare-fun m!605499 () Bool)

(assert (=> b!630464 m!605499))

(declare-fun m!605501 () Bool)

(assert (=> b!630476 m!605501))

(declare-fun m!605503 () Bool)

(assert (=> b!630476 m!605503))

(assert (=> b!630476 m!605497))

(declare-fun m!605505 () Bool)

(assert (=> b!630476 m!605505))

(declare-fun m!605507 () Bool)

(assert (=> b!630476 m!605507))

(declare-fun m!605509 () Bool)

(assert (=> b!630476 m!605509))

(assert (=> b!630476 m!605497))

(declare-fun m!605511 () Bool)

(assert (=> b!630476 m!605511))

(assert (=> b!630476 m!605491))

(declare-fun m!605513 () Bool)

(assert (=> b!630469 m!605513))

(declare-fun m!605515 () Bool)

(assert (=> b!630470 m!605515))

(declare-fun m!605517 () Bool)

(assert (=> b!630471 m!605517))

(declare-fun m!605519 () Bool)

(assert (=> b!630474 m!605519))

(declare-fun m!605521 () Bool)

(assert (=> b!630473 m!605521))

(assert (=> b!630465 m!605497))

(assert (=> b!630465 m!605497))

(declare-fun m!605523 () Bool)

(assert (=> b!630465 m!605523))

(declare-fun m!605525 () Bool)

(assert (=> start!56998 m!605525))

(declare-fun m!605527 () Bool)

(assert (=> start!56998 m!605527))

(push 1)

