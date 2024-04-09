; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59478 () Bool)

(assert start!59478)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!656312 () Bool)

(declare-fun res!425759 () Bool)

(declare-datatypes ((array!38673 0))(
  ( (array!38674 (arr!18531 (Array (_ BitVec 32) (_ BitVec 64))) (size!18895 (_ BitVec 32))) )
))
(declare-fun lt!306411 () array!38673)

(declare-fun a!2986 () array!38673)

(declare-fun arrayContainsKey!0 (array!38673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!656312 (= res!425759 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) j!136))))

(declare-fun e!376965 () Bool)

(assert (=> b!656312 (=> (not res!425759) (not e!376965))))

(declare-fun e!376967 () Bool)

(assert (=> b!656312 (= e!376967 e!376965)))

(declare-fun b!656313 () Bool)

(declare-fun res!425773 () Bool)

(declare-fun e!376977 () Bool)

(assert (=> b!656313 (=> (not res!425773) (not e!376977))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!656313 (= res!425773 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!656314 () Bool)

(declare-datatypes ((Unit!22624 0))(
  ( (Unit!22625) )
))
(declare-fun e!376972 () Unit!22624)

(declare-fun Unit!22626 () Unit!22624)

(assert (=> b!656314 (= e!376972 Unit!22626)))

(declare-fun b!656315 () Bool)

(declare-fun res!425760 () Bool)

(assert (=> b!656315 (=> (not res!425760) (not e!376977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!656315 (= res!425760 (validKeyInArray!0 k!1786))))

(declare-fun b!656316 () Bool)

(declare-fun e!376966 () Bool)

(assert (=> b!656316 (= e!376977 e!376966)))

(declare-fun res!425763 () Bool)

(assert (=> b!656316 (=> (not res!425763) (not e!376966))))

(declare-datatypes ((SeekEntryResult!6978 0))(
  ( (MissingZero!6978 (index!30273 (_ BitVec 32))) (Found!6978 (index!30274 (_ BitVec 32))) (Intermediate!6978 (undefined!7790 Bool) (index!30275 (_ BitVec 32)) (x!59093 (_ BitVec 32))) (Undefined!6978) (MissingVacant!6978 (index!30276 (_ BitVec 32))) )
))
(declare-fun lt!306403 () SeekEntryResult!6978)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!656316 (= res!425763 (or (= lt!306403 (MissingZero!6978 i!1108)) (= lt!306403 (MissingVacant!6978 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38673 (_ BitVec 32)) SeekEntryResult!6978)

(assert (=> b!656316 (= lt!306403 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!656317 () Bool)

(declare-fun e!376975 () Bool)

(declare-fun e!376976 () Bool)

(assert (=> b!656317 (= e!376975 (not e!376976))))

(declare-fun res!425764 () Bool)

(assert (=> b!656317 (=> res!425764 e!376976)))

(declare-fun lt!306395 () SeekEntryResult!6978)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!656317 (= res!425764 (not (= lt!306395 (MissingVacant!6978 vacantSpotIndex!68))))))

(declare-fun lt!306410 () Unit!22624)

(declare-fun e!376978 () Unit!22624)

(assert (=> b!656317 (= lt!306410 e!376978)))

(declare-fun c!75646 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!656317 (= c!75646 (= lt!306395 (Found!6978 index!984)))))

(declare-fun lt!306400 () Unit!22624)

(declare-fun e!376969 () Unit!22624)

(assert (=> b!656317 (= lt!306400 e!376969)))

(declare-fun c!75644 () Bool)

(assert (=> b!656317 (= c!75644 (= lt!306395 Undefined!6978))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!306399 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38673 (_ BitVec 32)) SeekEntryResult!6978)

(assert (=> b!656317 (= lt!306395 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306399 lt!306411 mask!3053))))

(declare-fun e!376971 () Bool)

(assert (=> b!656317 e!376971))

(declare-fun res!425771 () Bool)

(assert (=> b!656317 (=> (not res!425771) (not e!376971))))

(declare-fun lt!306404 () (_ BitVec 32))

(declare-fun lt!306397 () SeekEntryResult!6978)

(assert (=> b!656317 (= res!425771 (= lt!306397 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 lt!306399 lt!306411 mask!3053)))))

(assert (=> b!656317 (= lt!306397 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!656317 (= lt!306399 (select (store (arr!18531 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306402 () Unit!22624)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38673 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22624)

(assert (=> b!656317 (= lt!306402 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!656317 (= lt!306404 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!656319 () Bool)

(declare-fun e!376970 () Bool)

(assert (=> b!656319 (= e!376966 e!376970)))

(declare-fun res!425767 () Bool)

(assert (=> b!656319 (=> (not res!425767) (not e!376970))))

(assert (=> b!656319 (= res!425767 (= (select (store (arr!18531 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656319 (= lt!306411 (array!38674 (store (arr!18531 a!2986) i!1108 k!1786) (size!18895 a!2986)))))

(declare-fun b!656320 () Bool)

(declare-fun e!376974 () Unit!22624)

(declare-fun Unit!22627 () Unit!22624)

(assert (=> b!656320 (= e!376974 Unit!22627)))

(declare-fun b!656321 () Bool)

(declare-fun e!376973 () Bool)

(assert (=> b!656321 (= e!376973 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) index!984))))

(declare-fun b!656322 () Bool)

(declare-fun res!425758 () Bool)

(assert (=> b!656322 (=> (not res!425758) (not e!376977))))

(assert (=> b!656322 (= res!425758 (and (= (size!18895 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18895 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18895 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!656323 () Bool)

(declare-fun lt!306398 () SeekEntryResult!6978)

(assert (=> b!656323 (= e!376971 (= lt!306398 lt!306397))))

(declare-fun b!656324 () Bool)

(assert (=> b!656324 false))

(declare-fun lt!306401 () Unit!22624)

(declare-datatypes ((List!12625 0))(
  ( (Nil!12622) (Cons!12621 (h!13666 (_ BitVec 64)) (t!18861 List!12625)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38673 (_ BitVec 64) (_ BitVec 32) List!12625) Unit!22624)

(assert (=> b!656324 (= lt!306401 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306411 (select (arr!18531 a!2986) j!136) index!984 Nil!12622))))

(declare-fun arrayNoDuplicates!0 (array!38673 (_ BitVec 32) List!12625) Bool)

(assert (=> b!656324 (arrayNoDuplicates!0 lt!306411 index!984 Nil!12622)))

(declare-fun lt!306396 () Unit!22624)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38673 (_ BitVec 32) (_ BitVec 32)) Unit!22624)

(assert (=> b!656324 (= lt!306396 (lemmaNoDuplicateFromThenFromBigger!0 lt!306411 #b00000000000000000000000000000000 index!984))))

(assert (=> b!656324 (arrayNoDuplicates!0 lt!306411 #b00000000000000000000000000000000 Nil!12622)))

(declare-fun lt!306405 () Unit!22624)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38673 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12625) Unit!22624)

(assert (=> b!656324 (= lt!306405 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12622))))

(assert (=> b!656324 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306414 () Unit!22624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38673 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22624)

(assert (=> b!656324 (= lt!306414 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306411 (select (arr!18531 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!656324 e!376973))

(declare-fun res!425768 () Bool)

(assert (=> b!656324 (=> (not res!425768) (not e!376973))))

(assert (=> b!656324 (= res!425768 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) j!136))))

(declare-fun Unit!22628 () Unit!22624)

(assert (=> b!656324 (= e!376972 Unit!22628)))

(declare-fun b!656325 () Bool)

(declare-fun Unit!22629 () Unit!22624)

(assert (=> b!656325 (= e!376969 Unit!22629)))

(declare-fun b!656326 () Bool)

(declare-fun res!425766 () Bool)

(assert (=> b!656326 (=> (not res!425766) (not e!376977))))

(assert (=> b!656326 (= res!425766 (validKeyInArray!0 (select (arr!18531 a!2986) j!136)))))

(declare-fun b!656327 () Bool)

(declare-fun Unit!22630 () Unit!22624)

(assert (=> b!656327 (= e!376978 Unit!22630)))

(declare-fun res!425772 () Bool)

(assert (=> b!656327 (= res!425772 (= (select (store (arr!18531 a!2986) i!1108 k!1786) index!984) (select (arr!18531 a!2986) j!136)))))

(declare-fun e!376964 () Bool)

(assert (=> b!656327 (=> (not res!425772) (not e!376964))))

(assert (=> b!656327 e!376964))

(declare-fun c!75647 () Bool)

(assert (=> b!656327 (= c!75647 (bvslt j!136 index!984))))

(declare-fun lt!306406 () Unit!22624)

(assert (=> b!656327 (= lt!306406 e!376974)))

(declare-fun c!75645 () Bool)

(assert (=> b!656327 (= c!75645 (bvslt index!984 j!136))))

(declare-fun lt!306409 () Unit!22624)

(assert (=> b!656327 (= lt!306409 e!376972)))

(assert (=> b!656327 false))

(declare-fun b!656328 () Bool)

(declare-fun Unit!22631 () Unit!22624)

(assert (=> b!656328 (= e!376978 Unit!22631)))

(declare-fun b!656329 () Bool)

(declare-fun res!425770 () Bool)

(assert (=> b!656329 (=> (not res!425770) (not e!376966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38673 (_ BitVec 32)) Bool)

(assert (=> b!656329 (= res!425770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!656330 () Bool)

(assert (=> b!656330 false))

(declare-fun lt!306407 () Unit!22624)

(assert (=> b!656330 (= lt!306407 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306411 (select (arr!18531 a!2986) j!136) j!136 Nil!12622))))

(assert (=> b!656330 (arrayNoDuplicates!0 lt!306411 j!136 Nil!12622)))

(declare-fun lt!306413 () Unit!22624)

(assert (=> b!656330 (= lt!306413 (lemmaNoDuplicateFromThenFromBigger!0 lt!306411 #b00000000000000000000000000000000 j!136))))

(assert (=> b!656330 (arrayNoDuplicates!0 lt!306411 #b00000000000000000000000000000000 Nil!12622)))

(declare-fun lt!306408 () Unit!22624)

(assert (=> b!656330 (= lt!306408 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12622))))

(assert (=> b!656330 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306412 () Unit!22624)

(assert (=> b!656330 (= lt!306412 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306411 (select (arr!18531 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22632 () Unit!22624)

(assert (=> b!656330 (= e!376974 Unit!22632)))

(declare-fun b!656331 () Bool)

(declare-fun Unit!22633 () Unit!22624)

(assert (=> b!656331 (= e!376969 Unit!22633)))

(assert (=> b!656331 false))

(declare-fun b!656332 () Bool)

(declare-fun res!425761 () Bool)

(assert (=> b!656332 (=> (not res!425761) (not e!376966))))

(assert (=> b!656332 (= res!425761 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18531 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!656333 () Bool)

(assert (=> b!656333 (= e!376970 e!376975)))

(declare-fun res!425762 () Bool)

(assert (=> b!656333 (=> (not res!425762) (not e!376975))))

(assert (=> b!656333 (= res!425762 (and (= lt!306398 (Found!6978 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18531 a!2986) index!984) (select (arr!18531 a!2986) j!136))) (not (= (select (arr!18531 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!656333 (= lt!306398 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656334 () Bool)

(assert (=> b!656334 (= e!376965 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) index!984))))

(declare-fun b!656318 () Bool)

(declare-fun res!425765 () Bool)

(assert (=> b!656318 (=> (not res!425765) (not e!376966))))

(assert (=> b!656318 (= res!425765 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12622))))

(declare-fun res!425769 () Bool)

(assert (=> start!59478 (=> (not res!425769) (not e!376977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59478 (= res!425769 (validMask!0 mask!3053))))

(assert (=> start!59478 e!376977))

(assert (=> start!59478 true))

(declare-fun array_inv!14305 (array!38673) Bool)

(assert (=> start!59478 (array_inv!14305 a!2986)))

(declare-fun b!656335 () Bool)

(declare-fun res!425774 () Bool)

(assert (=> b!656335 (= res!425774 (bvsge j!136 index!984))))

(assert (=> b!656335 (=> res!425774 e!376967)))

(assert (=> b!656335 (= e!376964 e!376967)))

(declare-fun b!656336 () Bool)

(assert (=> b!656336 (= e!376976 false)))

(assert (=> b!656336 (= (select (store (arr!18531 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (= (and start!59478 res!425769) b!656322))

(assert (= (and b!656322 res!425758) b!656326))

(assert (= (and b!656326 res!425766) b!656315))

(assert (= (and b!656315 res!425760) b!656313))

(assert (= (and b!656313 res!425773) b!656316))

(assert (= (and b!656316 res!425763) b!656329))

(assert (= (and b!656329 res!425770) b!656318))

(assert (= (and b!656318 res!425765) b!656332))

(assert (= (and b!656332 res!425761) b!656319))

(assert (= (and b!656319 res!425767) b!656333))

(assert (= (and b!656333 res!425762) b!656317))

(assert (= (and b!656317 res!425771) b!656323))

(assert (= (and b!656317 c!75644) b!656331))

(assert (= (and b!656317 (not c!75644)) b!656325))

(assert (= (and b!656317 c!75646) b!656327))

(assert (= (and b!656317 (not c!75646)) b!656328))

(assert (= (and b!656327 res!425772) b!656335))

(assert (= (and b!656335 (not res!425774)) b!656312))

(assert (= (and b!656312 res!425759) b!656334))

(assert (= (and b!656327 c!75647) b!656330))

(assert (= (and b!656327 (not c!75647)) b!656320))

(assert (= (and b!656327 c!75645) b!656324))

(assert (= (and b!656327 (not c!75645)) b!656314))

(assert (= (and b!656324 res!425768) b!656321))

(assert (= (and b!656317 (not res!425764)) b!656336))

(declare-fun m!629451 () Bool)

(assert (=> b!656333 m!629451))

(declare-fun m!629453 () Bool)

(assert (=> b!656333 m!629453))

(assert (=> b!656333 m!629453))

(declare-fun m!629455 () Bool)

(assert (=> b!656333 m!629455))

(declare-fun m!629457 () Bool)

(assert (=> b!656329 m!629457))

(declare-fun m!629459 () Bool)

(assert (=> b!656330 m!629459))

(assert (=> b!656330 m!629453))

(assert (=> b!656330 m!629453))

(declare-fun m!629461 () Bool)

(assert (=> b!656330 m!629461))

(declare-fun m!629463 () Bool)

(assert (=> b!656330 m!629463))

(declare-fun m!629465 () Bool)

(assert (=> b!656330 m!629465))

(assert (=> b!656330 m!629453))

(declare-fun m!629467 () Bool)

(assert (=> b!656330 m!629467))

(assert (=> b!656330 m!629453))

(declare-fun m!629469 () Bool)

(assert (=> b!656330 m!629469))

(declare-fun m!629471 () Bool)

(assert (=> b!656330 m!629471))

(declare-fun m!629473 () Bool)

(assert (=> b!656313 m!629473))

(assert (=> b!656324 m!629453))

(declare-fun m!629475 () Bool)

(assert (=> b!656324 m!629475))

(assert (=> b!656324 m!629453))

(declare-fun m!629477 () Bool)

(assert (=> b!656324 m!629477))

(declare-fun m!629479 () Bool)

(assert (=> b!656324 m!629479))

(assert (=> b!656324 m!629465))

(assert (=> b!656324 m!629453))

(declare-fun m!629481 () Bool)

(assert (=> b!656324 m!629481))

(assert (=> b!656324 m!629453))

(declare-fun m!629483 () Bool)

(assert (=> b!656324 m!629483))

(assert (=> b!656324 m!629453))

(declare-fun m!629485 () Bool)

(assert (=> b!656324 m!629485))

(assert (=> b!656324 m!629471))

(declare-fun m!629487 () Bool)

(assert (=> b!656315 m!629487))

(assert (=> b!656312 m!629453))

(assert (=> b!656312 m!629453))

(assert (=> b!656312 m!629481))

(assert (=> b!656321 m!629453))

(assert (=> b!656321 m!629453))

(declare-fun m!629489 () Bool)

(assert (=> b!656321 m!629489))

(declare-fun m!629491 () Bool)

(assert (=> b!656332 m!629491))

(declare-fun m!629493 () Bool)

(assert (=> b!656316 m!629493))

(declare-fun m!629495 () Bool)

(assert (=> b!656318 m!629495))

(declare-fun m!629497 () Bool)

(assert (=> b!656336 m!629497))

(declare-fun m!629499 () Bool)

(assert (=> b!656336 m!629499))

(assert (=> b!656319 m!629497))

(declare-fun m!629501 () Bool)

(assert (=> b!656319 m!629501))

(assert (=> b!656327 m!629497))

(assert (=> b!656327 m!629499))

(assert (=> b!656327 m!629453))

(assert (=> b!656334 m!629453))

(assert (=> b!656334 m!629453))

(assert (=> b!656334 m!629489))

(declare-fun m!629503 () Bool)

(assert (=> start!59478 m!629503))

(declare-fun m!629505 () Bool)

(assert (=> start!59478 m!629505))

(declare-fun m!629507 () Bool)

(assert (=> b!656317 m!629507))

(declare-fun m!629509 () Bool)

(assert (=> b!656317 m!629509))

(assert (=> b!656317 m!629453))

(declare-fun m!629511 () Bool)

(assert (=> b!656317 m!629511))

(declare-fun m!629513 () Bool)

(assert (=> b!656317 m!629513))

(declare-fun m!629515 () Bool)

(assert (=> b!656317 m!629515))

(assert (=> b!656317 m!629497))

(assert (=> b!656317 m!629453))

(declare-fun m!629517 () Bool)

(assert (=> b!656317 m!629517))

(assert (=> b!656326 m!629453))

(assert (=> b!656326 m!629453))

(declare-fun m!629519 () Bool)

(assert (=> b!656326 m!629519))

(push 1)

(assert (not b!656313))

(assert (not b!656312))

(assert (not b!656321))

(assert (not b!656333))

(assert (not b!656315))

(assert (not b!656329))

(assert (not b!656324))

(assert (not b!656330))

(assert (not b!656318))

(assert (not b!656316))

(assert (not b!656317))

(assert (not b!656334))

(assert (not start!59478))

(assert (not b!656326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92661 () Bool)

(declare-fun lt!306571 () SeekEntryResult!6978)

(assert (=> d!92661 (and (or (is-Undefined!6978 lt!306571) (not (is-Found!6978 lt!306571)) (and (bvsge (index!30274 lt!306571) #b00000000000000000000000000000000) (bvslt (index!30274 lt!306571) (size!18895 a!2986)))) (or (is-Undefined!6978 lt!306571) (is-Found!6978 lt!306571) (not (is-MissingVacant!6978 lt!306571)) (not (= (index!30276 lt!306571) vacantSpotIndex!68)) (and (bvsge (index!30276 lt!306571) #b00000000000000000000000000000000) (bvslt (index!30276 lt!306571) (size!18895 a!2986)))) (or (is-Undefined!6978 lt!306571) (ite (is-Found!6978 lt!306571) (= (select (arr!18531 a!2986) (index!30274 lt!306571)) (select (arr!18531 a!2986) j!136)) (and (is-MissingVacant!6978 lt!306571) (= (index!30276 lt!306571) vacantSpotIndex!68) (= (select (arr!18531 a!2986) (index!30276 lt!306571)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!377141 () SeekEntryResult!6978)

(assert (=> d!92661 (= lt!306571 e!377141)))

(declare-fun c!75698 () Bool)

(assert (=> d!92661 (= c!75698 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!306572 () (_ BitVec 64))

(assert (=> d!92661 (= lt!306572 (select (arr!18531 a!2986) index!984))))

(assert (=> d!92661 (validMask!0 mask!3053)))

(assert (=> d!92661 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053) lt!306571)))

(declare-fun b!656582 () Bool)

(declare-fun e!377140 () SeekEntryResult!6978)

(assert (=> b!656582 (= e!377140 (MissingVacant!6978 vacantSpotIndex!68))))

(declare-fun b!656583 () Bool)

(declare-fun e!377142 () SeekEntryResult!6978)

(assert (=> b!656583 (= e!377142 (Found!6978 index!984))))

(declare-fun b!656584 () Bool)

(assert (=> b!656584 (= e!377141 Undefined!6978)))

(declare-fun b!656585 () Bool)

(assert (=> b!656585 (= e!377140 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656586 () Bool)

(declare-fun c!75697 () Bool)

(assert (=> b!656586 (= c!75697 (= lt!306572 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656586 (= e!377142 e!377140)))

(declare-fun b!656587 () Bool)

(assert (=> b!656587 (= e!377141 e!377142)))

(declare-fun c!75696 () Bool)

(assert (=> b!656587 (= c!75696 (= lt!306572 (select (arr!18531 a!2986) j!136)))))

(assert (= (and d!92661 c!75698) b!656584))

(assert (= (and d!92661 (not c!75698)) b!656587))

(assert (= (and b!656587 c!75696) b!656583))

(assert (= (and b!656587 (not c!75696)) b!656586))

(assert (= (and b!656586 c!75697) b!656582))

(assert (= (and b!656586 (not c!75697)) b!656585))

(declare-fun m!629749 () Bool)

(assert (=> d!92661 m!629749))

(declare-fun m!629751 () Bool)

(assert (=> d!92661 m!629751))

(assert (=> d!92661 m!629451))

(assert (=> d!92661 m!629503))

(assert (=> b!656585 m!629507))

(assert (=> b!656585 m!629507))

(assert (=> b!656585 m!629453))

(declare-fun m!629753 () Bool)

(assert (=> b!656585 m!629753))

(assert (=> b!656333 d!92661))

(declare-fun d!92689 () Bool)

(declare-fun res!425928 () Bool)

(declare-fun e!377147 () Bool)

(assert (=> d!92689 (=> res!425928 e!377147)))

(assert (=> d!92689 (= res!425928 (= (select (arr!18531 lt!306411) index!984) (select (arr!18531 a!2986) j!136)))))

(assert (=> d!92689 (= (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) index!984) e!377147)))

(declare-fun b!656592 () Bool)

(declare-fun e!377148 () Bool)

(assert (=> b!656592 (= e!377147 e!377148)))

(declare-fun res!425929 () Bool)

(assert (=> b!656592 (=> (not res!425929) (not e!377148))))

(assert (=> b!656592 (= res!425929 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18895 lt!306411)))))

(declare-fun b!656593 () Bool)

(assert (=> b!656593 (= e!377148 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92689 (not res!425928)) b!656592))

(assert (= (and b!656592 res!425929) b!656593))

(declare-fun m!629755 () Bool)

(assert (=> d!92689 m!629755))

(assert (=> b!656593 m!629453))

(declare-fun m!629757 () Bool)

(assert (=> b!656593 m!629757))

(assert (=> b!656334 d!92689))

(declare-fun d!92691 () Bool)

(declare-fun res!425930 () Bool)

(declare-fun e!377149 () Bool)

(assert (=> d!92691 (=> res!425930 e!377149)))

(assert (=> d!92691 (= res!425930 (= (select (arr!18531 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!92691 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!377149)))

(declare-fun b!656594 () Bool)

(declare-fun e!377150 () Bool)

(assert (=> b!656594 (= e!377149 e!377150)))

(declare-fun res!425931 () Bool)

(assert (=> b!656594 (=> (not res!425931) (not e!377150))))

(assert (=> b!656594 (= res!425931 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18895 a!2986)))))

(declare-fun b!656595 () Bool)

(assert (=> b!656595 (= e!377150 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92691 (not res!425930)) b!656594))

(assert (= (and b!656594 res!425931) b!656595))

(declare-fun m!629759 () Bool)

(assert (=> d!92691 m!629759))

(declare-fun m!629761 () Bool)

(assert (=> b!656595 m!629761))

(assert (=> b!656313 d!92691))

(declare-fun d!92693 () Bool)

(declare-fun res!425932 () Bool)

(declare-fun e!377151 () Bool)

(assert (=> d!92693 (=> res!425932 e!377151)))

(assert (=> d!92693 (= res!425932 (= (select (arr!18531 lt!306411) j!136) (select (arr!18531 a!2986) j!136)))))

(assert (=> d!92693 (= (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) j!136) e!377151)))

(declare-fun b!656596 () Bool)

(declare-fun e!377152 () Bool)

(assert (=> b!656596 (= e!377151 e!377152)))

(declare-fun res!425933 () Bool)

(assert (=> b!656596 (=> (not res!425933) (not e!377152))))

(assert (=> b!656596 (= res!425933 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18895 lt!306411)))))

(declare-fun b!656597 () Bool)

(assert (=> b!656597 (= e!377152 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92693 (not res!425932)) b!656596))

(assert (= (and b!656596 res!425933) b!656597))

(declare-fun m!629763 () Bool)

(assert (=> d!92693 m!629763))

(assert (=> b!656597 m!629453))

(declare-fun m!629765 () Bool)

(assert (=> b!656597 m!629765))

(assert (=> b!656312 d!92693))

(declare-fun call!33869 () Bool)

(declare-fun c!75707 () Bool)

(declare-fun bm!33866 () Bool)

(assert (=> bm!33866 (= call!33869 (arrayNoDuplicates!0 lt!306411 (bvadd j!136 #b00000000000000000000000000000001) (ite c!75707 (Cons!12621 (select (arr!18531 lt!306411) j!136) Nil!12622) Nil!12622)))))

(declare-fun b!656620 () Bool)

(declare-fun e!377167 () Bool)

(declare-fun e!377170 () Bool)

(assert (=> b!656620 (= e!377167 e!377170)))

(assert (=> b!656620 (= c!75707 (validKeyInArray!0 (select (arr!18531 lt!306411) j!136)))))

(declare-fun d!92695 () Bool)

(declare-fun res!425940 () Bool)

(declare-fun e!377168 () Bool)

(assert (=> d!92695 (=> res!425940 e!377168)))

(assert (=> d!92695 (= res!425940 (bvsge j!136 (size!18895 lt!306411)))))

(assert (=> d!92695 (= (arrayNoDuplicates!0 lt!306411 j!136 Nil!12622) e!377168)))

(declare-fun b!656621 () Bool)

(assert (=> b!656621 (= e!377168 e!377167)))

(declare-fun res!425942 () Bool)

(assert (=> b!656621 (=> (not res!425942) (not e!377167))))

(declare-fun e!377169 () Bool)

(assert (=> b!656621 (= res!425942 (not e!377169))))

(declare-fun res!425941 () Bool)

(assert (=> b!656621 (=> (not res!425941) (not e!377169))))

(assert (=> b!656621 (= res!425941 (validKeyInArray!0 (select (arr!18531 lt!306411) j!136)))))

(declare-fun b!656622 () Bool)

(declare-fun contains!3196 (List!12625 (_ BitVec 64)) Bool)

(assert (=> b!656622 (= e!377169 (contains!3196 Nil!12622 (select (arr!18531 lt!306411) j!136)))))

(declare-fun b!656623 () Bool)

(assert (=> b!656623 (= e!377170 call!33869)))

(declare-fun b!656624 () Bool)

(assert (=> b!656624 (= e!377170 call!33869)))

(assert (= (and d!92695 (not res!425940)) b!656621))

(assert (= (and b!656621 res!425941) b!656622))

(assert (= (and b!656621 res!425942) b!656620))

(assert (= (and b!656620 c!75707) b!656624))

(assert (= (and b!656620 (not c!75707)) b!656623))

(assert (= (or b!656624 b!656623) bm!33866))

(assert (=> bm!33866 m!629763))

(declare-fun m!629767 () Bool)

(assert (=> bm!33866 m!629767))

(assert (=> b!656620 m!629763))

(assert (=> b!656620 m!629763))

(declare-fun m!629769 () Bool)

(assert (=> b!656620 m!629769))

(assert (=> b!656621 m!629763))

(assert (=> b!656621 m!629763))

(assert (=> b!656621 m!629769))

(assert (=> b!656622 m!629763))

(assert (=> b!656622 m!629763))

(declare-fun m!629771 () Bool)

(assert (=> b!656622 m!629771))

(assert (=> b!656330 d!92695))

(declare-fun bm!33867 () Bool)

(declare-fun call!33870 () Bool)

(declare-fun c!75708 () Bool)

(assert (=> bm!33867 (= call!33870 (arrayNoDuplicates!0 lt!306411 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75708 (Cons!12621 (select (arr!18531 lt!306411) #b00000000000000000000000000000000) Nil!12622) Nil!12622)))))

(declare-fun b!656625 () Bool)

(declare-fun e!377171 () Bool)

(declare-fun e!377175 () Bool)

(assert (=> b!656625 (= e!377171 e!377175)))

(assert (=> b!656625 (= c!75708 (validKeyInArray!0 (select (arr!18531 lt!306411) #b00000000000000000000000000000000)))))

(declare-fun d!92697 () Bool)

(declare-fun res!425943 () Bool)

(declare-fun e!377172 () Bool)

(assert (=> d!92697 (=> res!425943 e!377172)))

(assert (=> d!92697 (= res!425943 (bvsge #b00000000000000000000000000000000 (size!18895 lt!306411)))))

(assert (=> d!92697 (= (arrayNoDuplicates!0 lt!306411 #b00000000000000000000000000000000 Nil!12622) e!377172)))

(declare-fun b!656626 () Bool)

(assert (=> b!656626 (= e!377172 e!377171)))

(declare-fun res!425945 () Bool)

(assert (=> b!656626 (=> (not res!425945) (not e!377171))))

(declare-fun e!377173 () Bool)

(assert (=> b!656626 (= res!425945 (not e!377173))))

(declare-fun res!425944 () Bool)

(assert (=> b!656626 (=> (not res!425944) (not e!377173))))

(assert (=> b!656626 (= res!425944 (validKeyInArray!0 (select (arr!18531 lt!306411) #b00000000000000000000000000000000)))))

(declare-fun b!656627 () Bool)

(assert (=> b!656627 (= e!377173 (contains!3196 Nil!12622 (select (arr!18531 lt!306411) #b00000000000000000000000000000000)))))

(declare-fun b!656628 () Bool)

(assert (=> b!656628 (= e!377175 call!33870)))

(declare-fun b!656629 () Bool)

(assert (=> b!656629 (= e!377175 call!33870)))

(assert (= (and d!92697 (not res!425943)) b!656626))

(assert (= (and b!656626 res!425944) b!656627))

(assert (= (and b!656626 res!425945) b!656625))

(assert (= (and b!656625 c!75708) b!656629))

(assert (= (and b!656625 (not c!75708)) b!656628))

(assert (= (or b!656629 b!656628) bm!33867))

(declare-fun m!629773 () Bool)

(assert (=> bm!33867 m!629773))

(declare-fun m!629775 () Bool)

(assert (=> bm!33867 m!629775))

(assert (=> b!656625 m!629773))

(assert (=> b!656625 m!629773))

(declare-fun m!629777 () Bool)

(assert (=> b!656625 m!629777))

(assert (=> b!656626 m!629773))

(assert (=> b!656626 m!629773))

(assert (=> b!656626 m!629777))

(assert (=> b!656627 m!629773))

(assert (=> b!656627 m!629773))

(declare-fun m!629781 () Bool)

(assert (=> b!656627 m!629781))

(assert (=> b!656330 d!92697))

(declare-fun d!92699 () Bool)

(assert (=> d!92699 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306589 () Unit!22624)

(declare-fun choose!114 (array!38673 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22624)

(assert (=> d!92699 (= lt!306589 (choose!114 lt!306411 (select (arr!18531 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92699 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92699 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306411 (select (arr!18531 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!306589)))

(declare-fun bs!19550 () Bool)

(assert (= bs!19550 d!92699))

(assert (=> bs!19550 m!629453))

(assert (=> bs!19550 m!629461))

(assert (=> bs!19550 m!629453))

(declare-fun m!629795 () Bool)

(assert (=> bs!19550 m!629795))

(assert (=> b!656330 d!92699))

(declare-fun d!92703 () Bool)

(assert (=> d!92703 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18895 lt!306411)) (not (= (select (arr!18531 lt!306411) j!136) (select (arr!18531 a!2986) j!136))))))

(declare-fun lt!306596 () Unit!22624)

(declare-fun choose!21 (array!38673 (_ BitVec 64) (_ BitVec 32) List!12625) Unit!22624)

(assert (=> d!92703 (= lt!306596 (choose!21 lt!306411 (select (arr!18531 a!2986) j!136) j!136 Nil!12622))))

(assert (=> d!92703 (bvslt (size!18895 lt!306411) #b01111111111111111111111111111111)))

(assert (=> d!92703 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306411 (select (arr!18531 a!2986) j!136) j!136 Nil!12622) lt!306596)))

(declare-fun bs!19551 () Bool)

(assert (= bs!19551 d!92703))

(assert (=> bs!19551 m!629763))

(assert (=> bs!19551 m!629453))

(declare-fun m!629805 () Bool)

(assert (=> bs!19551 m!629805))

(assert (=> b!656330 d!92703))

(declare-fun d!92709 () Bool)

(declare-fun e!377207 () Bool)

(assert (=> d!92709 e!377207))

(declare-fun res!425957 () Bool)

(assert (=> d!92709 (=> (not res!425957) (not e!377207))))

(assert (=> d!92709 (= res!425957 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18895 a!2986))))))

(declare-fun lt!306601 () Unit!22624)

(declare-fun choose!41 (array!38673 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12625) Unit!22624)

(assert (=> d!92709 (= lt!306601 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12622))))

(assert (=> d!92709 (bvslt (size!18895 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92709 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12622) lt!306601)))

(declare-fun b!656683 () Bool)

(assert (=> b!656683 (= e!377207 (arrayNoDuplicates!0 (array!38674 (store (arr!18531 a!2986) i!1108 k!1786) (size!18895 a!2986)) #b00000000000000000000000000000000 Nil!12622))))

(assert (= (and d!92709 res!425957) b!656683))

(declare-fun m!629829 () Bool)

(assert (=> d!92709 m!629829))

(assert (=> b!656683 m!629497))

(declare-fun m!629831 () Bool)

(assert (=> b!656683 m!629831))

(assert (=> b!656330 d!92709))

(declare-fun d!92717 () Bool)

(assert (=> d!92717 (arrayNoDuplicates!0 lt!306411 j!136 Nil!12622)))

(declare-fun lt!306604 () Unit!22624)

(declare-fun choose!39 (array!38673 (_ BitVec 32) (_ BitVec 32)) Unit!22624)

(assert (=> d!92717 (= lt!306604 (choose!39 lt!306411 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92717 (bvslt (size!18895 lt!306411) #b01111111111111111111111111111111)))

(assert (=> d!92717 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306411 #b00000000000000000000000000000000 j!136) lt!306604)))

(declare-fun bs!19552 () Bool)

(assert (= bs!19552 d!92717))

(assert (=> bs!19552 m!629463))

(declare-fun m!629833 () Bool)

(assert (=> bs!19552 m!629833))

(assert (=> b!656330 d!92717))

(declare-fun d!92719 () Bool)

(declare-fun res!425958 () Bool)

(declare-fun e!377208 () Bool)

(assert (=> d!92719 (=> res!425958 e!377208)))

(assert (=> d!92719 (= res!425958 (= (select (arr!18531 lt!306411) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18531 a!2986) j!136)))))

(assert (=> d!92719 (= (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!377208)))

(declare-fun b!656684 () Bool)

(declare-fun e!377209 () Bool)

(assert (=> b!656684 (= e!377208 e!377209)))

(declare-fun res!425959 () Bool)

(assert (=> b!656684 (=> (not res!425959) (not e!377209))))

(assert (=> b!656684 (= res!425959 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18895 lt!306411)))))

(declare-fun b!656685 () Bool)

(assert (=> b!656685 (= e!377209 (arrayContainsKey!0 lt!306411 (select (arr!18531 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92719 (not res!425958)) b!656684))

(assert (= (and b!656684 res!425959) b!656685))

(declare-fun m!629835 () Bool)

(assert (=> d!92719 m!629835))

(assert (=> b!656685 m!629453))

(declare-fun m!629837 () Bool)

(assert (=> b!656685 m!629837))

(assert (=> b!656330 d!92719))

(assert (=> b!656321 d!92689))

(declare-fun d!92721 () Bool)

(declare-fun e!377224 () Bool)

(assert (=> d!92721 e!377224))

(declare-fun res!425965 () Bool)

(assert (=> d!92721 (=> (not res!425965) (not e!377224))))

(assert (=> d!92721 (= res!425965 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18895 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18895 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18895 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18895 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18895 a!2986))))))

(declare-fun lt!306619 () Unit!22624)

(declare-fun choose!9 (array!38673 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22624)

(assert (=> d!92721 (= lt!306619 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92721 (validMask!0 mask!3053)))

(assert (=> d!92721 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 mask!3053) lt!306619)))

(declare-fun b!656709 () Bool)

(assert (=> b!656709 (= e!377224 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 (select (store (arr!18531 a!2986) i!1108 k!1786) j!136) (array!38674 (store (arr!18531 a!2986) i!1108 k!1786) (size!18895 a!2986)) mask!3053)))))

(assert (= (and d!92721 res!425965) b!656709))

(declare-fun m!629853 () Bool)

(assert (=> d!92721 m!629853))

(assert (=> d!92721 m!629503))

(assert (=> b!656709 m!629509))

(declare-fun m!629855 () Bool)

(assert (=> b!656709 m!629855))

(assert (=> b!656709 m!629509))

(assert (=> b!656709 m!629453))

(assert (=> b!656709 m!629517))

(assert (=> b!656709 m!629497))

(assert (=> b!656709 m!629453))

(assert (=> b!656317 d!92721))

(declare-fun d!92729 () Bool)

(declare-fun lt!306622 () SeekEntryResult!6978)

(assert (=> d!92729 (and (or (is-Undefined!6978 lt!306622) (not (is-Found!6978 lt!306622)) (and (bvsge (index!30274 lt!306622) #b00000000000000000000000000000000) (bvslt (index!30274 lt!306622) (size!18895 a!2986)))) (or (is-Undefined!6978 lt!306622) (is-Found!6978 lt!306622) (not (is-MissingVacant!6978 lt!306622)) (not (= (index!30276 lt!306622) vacantSpotIndex!68)) (and (bvsge (index!30276 lt!306622) #b00000000000000000000000000000000) (bvslt (index!30276 lt!306622) (size!18895 a!2986)))) (or (is-Undefined!6978 lt!306622) (ite (is-Found!6978 lt!306622) (= (select (arr!18531 a!2986) (index!30274 lt!306622)) (select (arr!18531 a!2986) j!136)) (and (is-MissingVacant!6978 lt!306622) (= (index!30276 lt!306622) vacantSpotIndex!68) (= (select (arr!18531 a!2986) (index!30276 lt!306622)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!377229 () SeekEntryResult!6978)

(assert (=> d!92729 (= lt!306622 e!377229)))

(declare-fun c!75744 () Bool)

(assert (=> d!92729 (= c!75744 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!306623 () (_ BitVec 64))

(assert (=> d!92729 (= lt!306623 (select (arr!18531 a!2986) lt!306404))))

(assert (=> d!92729 (validMask!0 mask!3053)))

(assert (=> d!92729 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306404 vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053) lt!306622)))

(declare-fun b!656716 () Bool)

(declare-fun e!377228 () SeekEntryResult!6978)

(assert (=> b!656716 (= e!377228 (MissingVacant!6978 vacantSpotIndex!68))))

(declare-fun b!656717 () Bool)

(declare-fun e!377230 () SeekEntryResult!6978)

(assert (=> b!656717 (= e!377230 (Found!6978 lt!306404))))

(declare-fun b!656718 () Bool)

(assert (=> b!656718 (= e!377229 Undefined!6978)))

(declare-fun b!656719 () Bool)

(assert (=> b!656719 (= e!377228 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!306404 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18531 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!656720 () Bool)

(declare-fun c!75743 () Bool)

(assert (=> b!656720 (= c!75743 (= lt!306623 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656720 (= e!377230 e!377228)))

(declare-fun b!656721 () Bool)

(assert (=> b!656721 (= e!377229 e!377230)))

(declare-fun c!75742 () Bool)

(assert (=> b!656721 (= c!75742 (= lt!306623 (select (arr!18531 a!2986) j!136)))))

(assert (= (and d!92729 c!75744) b!656718))

(assert (= (and d!92729 (not c!75744)) b!656721))

(assert (= (and b!656721 c!75742) b!656717))

(assert (= (and b!656721 (not c!75742)) b!656720))

(assert (= (and b!656720 c!75743) b!656716))

(assert (= (and b!656720 (not c!75743)) b!656719))

(declare-fun m!629859 () Bool)

