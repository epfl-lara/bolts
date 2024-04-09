; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54540 () Bool)

(assert start!54540)

(declare-fun b!595489 () Bool)

(declare-fun res!381523 () Bool)

(declare-fun e!340232 () Bool)

(assert (=> b!595489 (=> res!381523 e!340232)))

(declare-datatypes ((List!11836 0))(
  ( (Nil!11833) (Cons!11832 (h!12877 (_ BitVec 64)) (t!18072 List!11836)) )
))
(declare-fun noDuplicate!256 (List!11836) Bool)

(assert (=> b!595489 (= res!381523 (not (noDuplicate!256 Nil!11833)))))

(declare-fun b!595490 () Bool)

(declare-fun res!381519 () Bool)

(declare-fun e!340239 () Bool)

(assert (=> b!595490 (=> (not res!381519) (not e!340239))))

(declare-datatypes ((array!36963 0))(
  ( (array!36964 (arr!17742 (Array (_ BitVec 32) (_ BitVec 64))) (size!18106 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36963)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36963 (_ BitVec 32)) Bool)

(assert (=> b!595490 (= res!381519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595491 () Bool)

(declare-datatypes ((Unit!18700 0))(
  ( (Unit!18701) )
))
(declare-fun e!340231 () Unit!18700)

(declare-fun Unit!18702 () Unit!18700)

(assert (=> b!595491 (= e!340231 Unit!18702)))

(assert (=> b!595491 false))

(declare-fun b!595492 () Bool)

(declare-fun res!381536 () Bool)

(assert (=> b!595492 (=> res!381536 e!340232)))

(declare-fun contains!2940 (List!11836 (_ BitVec 64)) Bool)

(assert (=> b!595492 (= res!381536 (contains!2940 Nil!11833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595493 () Bool)

(declare-fun res!381520 () Bool)

(declare-fun e!340235 () Bool)

(assert (=> b!595493 (=> (not res!381520) (not e!340235))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595493 (= res!381520 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595494 () Bool)

(declare-fun e!340237 () Bool)

(declare-fun e!340233 () Bool)

(assert (=> b!595494 (= e!340237 e!340233)))

(declare-fun res!381533 () Bool)

(assert (=> b!595494 (=> (not res!381533) (not e!340233))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6189 0))(
  ( (MissingZero!6189 (index!27003 (_ BitVec 32))) (Found!6189 (index!27004 (_ BitVec 32))) (Intermediate!6189 (undefined!7001 Bool) (index!27005 (_ BitVec 32)) (x!55834 (_ BitVec 32))) (Undefined!6189) (MissingVacant!6189 (index!27006 (_ BitVec 32))) )
))
(declare-fun lt!270460 () SeekEntryResult!6189)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595494 (= res!381533 (and (= lt!270460 (Found!6189 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17742 a!2986) index!984) (select (arr!17742 a!2986) j!136))) (not (= (select (arr!17742 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36963 (_ BitVec 32)) SeekEntryResult!6189)

(assert (=> b!595494 (= lt!270460 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17742 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595495 () Bool)

(declare-fun Unit!18703 () Unit!18700)

(assert (=> b!595495 (= e!340231 Unit!18703)))

(declare-fun b!595496 () Bool)

(declare-fun res!381530 () Bool)

(assert (=> b!595496 (=> (not res!381530) (not e!340235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595496 (= res!381530 (validKeyInArray!0 (select (arr!17742 a!2986) j!136)))))

(declare-fun b!595497 () Bool)

(declare-fun e!340240 () Bool)

(assert (=> b!595497 (= e!340240 e!340232)))

(declare-fun res!381525 () Bool)

(assert (=> b!595497 (=> res!381525 e!340232)))

(assert (=> b!595497 (= res!381525 (or (bvsge (size!18106 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18106 a!2986))))))

(declare-fun lt!270457 () array!36963)

(assert (=> b!595497 (arrayContainsKey!0 lt!270457 (select (arr!17742 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270466 () Unit!18700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36963 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18700)

(assert (=> b!595497 (= lt!270466 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270457 (select (arr!17742 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595498 () Bool)

(declare-fun e!340243 () Bool)

(assert (=> b!595498 (= e!340243 (arrayContainsKey!0 lt!270457 (select (arr!17742 a!2986) j!136) index!984))))

(declare-fun b!595499 () Bool)

(declare-fun res!381531 () Bool)

(assert (=> b!595499 (=> (not res!381531) (not e!340239))))

(assert (=> b!595499 (= res!381531 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17742 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595500 () Bool)

(assert (=> b!595500 (= e!340232 true)))

(declare-fun lt!270459 () Bool)

(assert (=> b!595500 (= lt!270459 (contains!2940 Nil!11833 k!1786))))

(declare-fun b!595502 () Bool)

(declare-fun res!381537 () Bool)

(assert (=> b!595502 (=> res!381537 e!340232)))

(assert (=> b!595502 (= res!381537 (contains!2940 Nil!11833 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595503 () Bool)

(declare-fun e!340242 () Bool)

(assert (=> b!595503 (= e!340242 e!340243)))

(declare-fun res!381529 () Bool)

(assert (=> b!595503 (=> (not res!381529) (not e!340243))))

(assert (=> b!595503 (= res!381529 (arrayContainsKey!0 lt!270457 (select (arr!17742 a!2986) j!136) j!136))))

(declare-fun b!595504 () Bool)

(assert (=> b!595504 (= e!340239 e!340237)))

(declare-fun res!381526 () Bool)

(assert (=> b!595504 (=> (not res!381526) (not e!340237))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595504 (= res!381526 (= (select (store (arr!17742 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595504 (= lt!270457 (array!36964 (store (arr!17742 a!2986) i!1108 k!1786) (size!18106 a!2986)))))

(declare-fun b!595505 () Bool)

(declare-fun res!381524 () Bool)

(assert (=> b!595505 (=> (not res!381524) (not e!340239))))

(declare-fun arrayNoDuplicates!0 (array!36963 (_ BitVec 32) List!11836) Bool)

(assert (=> b!595505 (= res!381524 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11833))))

(declare-fun b!595506 () Bool)

(declare-fun e!340234 () Bool)

(assert (=> b!595506 (= e!340234 e!340242)))

(declare-fun res!381534 () Bool)

(assert (=> b!595506 (=> res!381534 e!340242)))

(declare-fun lt!270465 () (_ BitVec 64))

(declare-fun lt!270458 () (_ BitVec 64))

(assert (=> b!595506 (= res!381534 (or (not (= (select (arr!17742 a!2986) j!136) lt!270465)) (not (= (select (arr!17742 a!2986) j!136) lt!270458)) (bvsge j!136 index!984)))))

(declare-fun b!595507 () Bool)

(declare-fun res!381522 () Bool)

(assert (=> b!595507 (=> (not res!381522) (not e!340235))))

(assert (=> b!595507 (= res!381522 (validKeyInArray!0 k!1786))))

(declare-fun b!595508 () Bool)

(declare-fun e!340241 () Bool)

(assert (=> b!595508 (= e!340241 e!340240)))

(declare-fun res!381528 () Bool)

(assert (=> b!595508 (=> res!381528 e!340240)))

(assert (=> b!595508 (= res!381528 (or (not (= (select (arr!17742 a!2986) j!136) lt!270465)) (not (= (select (arr!17742 a!2986) j!136) lt!270458)) (bvsge j!136 index!984)))))

(assert (=> b!595508 e!340234))

(declare-fun res!381535 () Bool)

(assert (=> b!595508 (=> (not res!381535) (not e!340234))))

(assert (=> b!595508 (= res!381535 (= lt!270458 (select (arr!17742 a!2986) j!136)))))

(assert (=> b!595508 (= lt!270458 (select (store (arr!17742 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595509 () Bool)

(assert (=> b!595509 (= e!340235 e!340239)))

(declare-fun res!381532 () Bool)

(assert (=> b!595509 (=> (not res!381532) (not e!340239))))

(declare-fun lt!270461 () SeekEntryResult!6189)

(assert (=> b!595509 (= res!381532 (or (= lt!270461 (MissingZero!6189 i!1108)) (= lt!270461 (MissingVacant!6189 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36963 (_ BitVec 32)) SeekEntryResult!6189)

(assert (=> b!595509 (= lt!270461 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595510 () Bool)

(declare-fun e!340238 () Bool)

(declare-fun lt!270467 () SeekEntryResult!6189)

(assert (=> b!595510 (= e!340238 (= lt!270460 lt!270467))))

(declare-fun b!595511 () Bool)

(assert (=> b!595511 (= e!340233 (not e!340241))))

(declare-fun res!381527 () Bool)

(assert (=> b!595511 (=> res!381527 e!340241)))

(declare-fun lt!270463 () SeekEntryResult!6189)

(assert (=> b!595511 (= res!381527 (not (= lt!270463 (Found!6189 index!984))))))

(declare-fun lt!270468 () Unit!18700)

(assert (=> b!595511 (= lt!270468 e!340231)))

(declare-fun c!67352 () Bool)

(assert (=> b!595511 (= c!67352 (= lt!270463 Undefined!6189))))

(assert (=> b!595511 (= lt!270463 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270465 lt!270457 mask!3053))))

(assert (=> b!595511 e!340238))

(declare-fun res!381538 () Bool)

(assert (=> b!595511 (=> (not res!381538) (not e!340238))))

(declare-fun lt!270462 () (_ BitVec 32))

(assert (=> b!595511 (= res!381538 (= lt!270467 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270462 vacantSpotIndex!68 lt!270465 lt!270457 mask!3053)))))

(assert (=> b!595511 (= lt!270467 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270462 vacantSpotIndex!68 (select (arr!17742 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595511 (= lt!270465 (select (store (arr!17742 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270464 () Unit!18700)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18700)

(assert (=> b!595511 (= lt!270464 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270462 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595511 (= lt!270462 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!381521 () Bool)

(assert (=> start!54540 (=> (not res!381521) (not e!340235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54540 (= res!381521 (validMask!0 mask!3053))))

(assert (=> start!54540 e!340235))

(assert (=> start!54540 true))

(declare-fun array_inv!13516 (array!36963) Bool)

(assert (=> start!54540 (array_inv!13516 a!2986)))

(declare-fun b!595501 () Bool)

(declare-fun res!381539 () Bool)

(assert (=> b!595501 (=> (not res!381539) (not e!340235))))

(assert (=> b!595501 (= res!381539 (and (= (size!18106 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18106 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18106 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54540 res!381521) b!595501))

(assert (= (and b!595501 res!381539) b!595496))

(assert (= (and b!595496 res!381530) b!595507))

(assert (= (and b!595507 res!381522) b!595493))

(assert (= (and b!595493 res!381520) b!595509))

(assert (= (and b!595509 res!381532) b!595490))

(assert (= (and b!595490 res!381519) b!595505))

(assert (= (and b!595505 res!381524) b!595499))

(assert (= (and b!595499 res!381531) b!595504))

(assert (= (and b!595504 res!381526) b!595494))

(assert (= (and b!595494 res!381533) b!595511))

(assert (= (and b!595511 res!381538) b!595510))

(assert (= (and b!595511 c!67352) b!595491))

(assert (= (and b!595511 (not c!67352)) b!595495))

(assert (= (and b!595511 (not res!381527)) b!595508))

(assert (= (and b!595508 res!381535) b!595506))

(assert (= (and b!595506 (not res!381534)) b!595503))

(assert (= (and b!595503 res!381529) b!595498))

(assert (= (and b!595508 (not res!381528)) b!595497))

(assert (= (and b!595497 (not res!381525)) b!595489))

(assert (= (and b!595489 (not res!381523)) b!595492))

(assert (= (and b!595492 (not res!381536)) b!595502))

(assert (= (and b!595502 (not res!381537)) b!595500))

(declare-fun m!573147 () Bool)

(assert (=> b!595511 m!573147))

(declare-fun m!573149 () Bool)

(assert (=> b!595511 m!573149))

(declare-fun m!573151 () Bool)

(assert (=> b!595511 m!573151))

(declare-fun m!573153 () Bool)

(assert (=> b!595511 m!573153))

(assert (=> b!595511 m!573151))

(declare-fun m!573155 () Bool)

(assert (=> b!595511 m!573155))

(declare-fun m!573157 () Bool)

(assert (=> b!595511 m!573157))

(declare-fun m!573159 () Bool)

(assert (=> b!595511 m!573159))

(declare-fun m!573161 () Bool)

(assert (=> b!595511 m!573161))

(declare-fun m!573163 () Bool)

(assert (=> b!595489 m!573163))

(assert (=> b!595506 m!573151))

(declare-fun m!573165 () Bool)

(assert (=> b!595507 m!573165))

(declare-fun m!573167 () Bool)

(assert (=> b!595505 m!573167))

(declare-fun m!573169 () Bool)

(assert (=> b!595499 m!573169))

(declare-fun m!573171 () Bool)

(assert (=> b!595509 m!573171))

(declare-fun m!573173 () Bool)

(assert (=> b!595494 m!573173))

(assert (=> b!595494 m!573151))

(assert (=> b!595494 m!573151))

(declare-fun m!573175 () Bool)

(assert (=> b!595494 m!573175))

(declare-fun m!573177 () Bool)

(assert (=> b!595500 m!573177))

(declare-fun m!573179 () Bool)

(assert (=> b!595490 m!573179))

(declare-fun m!573181 () Bool)

(assert (=> start!54540 m!573181))

(declare-fun m!573183 () Bool)

(assert (=> start!54540 m!573183))

(declare-fun m!573185 () Bool)

(assert (=> b!595492 m!573185))

(declare-fun m!573187 () Bool)

(assert (=> b!595493 m!573187))

(assert (=> b!595497 m!573151))

(assert (=> b!595497 m!573151))

(declare-fun m!573189 () Bool)

(assert (=> b!595497 m!573189))

(assert (=> b!595497 m!573151))

(declare-fun m!573191 () Bool)

(assert (=> b!595497 m!573191))

(assert (=> b!595504 m!573153))

(declare-fun m!573193 () Bool)

(assert (=> b!595504 m!573193))

(assert (=> b!595498 m!573151))

(assert (=> b!595498 m!573151))

(declare-fun m!573195 () Bool)

(assert (=> b!595498 m!573195))

(assert (=> b!595508 m!573151))

(assert (=> b!595508 m!573153))

(declare-fun m!573197 () Bool)

(assert (=> b!595508 m!573197))

(assert (=> b!595496 m!573151))

(assert (=> b!595496 m!573151))

(declare-fun m!573199 () Bool)

(assert (=> b!595496 m!573199))

(declare-fun m!573201 () Bool)

(assert (=> b!595502 m!573201))

(assert (=> b!595503 m!573151))

(assert (=> b!595503 m!573151))

(declare-fun m!573203 () Bool)

(assert (=> b!595503 m!573203))

(push 1)

