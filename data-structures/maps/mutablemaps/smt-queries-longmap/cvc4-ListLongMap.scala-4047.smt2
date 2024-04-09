; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55168 () Bool)

(assert start!55168)

(declare-fun b!604486 () Bool)

(declare-fun e!345912 () Bool)

(declare-fun e!345905 () Bool)

(assert (=> b!604486 (= e!345912 (not e!345905))))

(declare-fun res!388542 () Bool)

(assert (=> b!604486 (=> res!388542 e!345905)))

(declare-datatypes ((SeekEntryResult!6302 0))(
  ( (MissingZero!6302 (index!27470 (_ BitVec 32))) (Found!6302 (index!27471 (_ BitVec 32))) (Intermediate!6302 (undefined!7114 Bool) (index!27472 (_ BitVec 32)) (x!56288 (_ BitVec 32))) (Undefined!6302) (MissingVacant!6302 (index!27473 (_ BitVec 32))) )
))
(declare-fun lt!275805 () SeekEntryResult!6302)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604486 (= res!388542 (not (= lt!275805 (Found!6302 index!984))))))

(declare-datatypes ((Unit!19240 0))(
  ( (Unit!19241) )
))
(declare-fun lt!275806 () Unit!19240)

(declare-fun e!345918 () Unit!19240)

(assert (=> b!604486 (= lt!275806 e!345918)))

(declare-fun c!68341 () Bool)

(assert (=> b!604486 (= c!68341 (= lt!275805 Undefined!6302))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37204 0))(
  ( (array!37205 (arr!17855 (Array (_ BitVec 32) (_ BitVec 64))) (size!18219 (_ BitVec 32))) )
))
(declare-fun lt!275799 () array!37204)

(declare-fun lt!275797 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37204 (_ BitVec 32)) SeekEntryResult!6302)

(assert (=> b!604486 (= lt!275805 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275797 lt!275799 mask!3053))))

(declare-fun e!345916 () Bool)

(assert (=> b!604486 e!345916))

(declare-fun res!388556 () Bool)

(assert (=> b!604486 (=> (not res!388556) (not e!345916))))

(declare-fun lt!275798 () SeekEntryResult!6302)

(declare-fun lt!275801 () (_ BitVec 32))

(assert (=> b!604486 (= res!388556 (= lt!275798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275801 vacantSpotIndex!68 lt!275797 lt!275799 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37204)

(assert (=> b!604486 (= lt!275798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275801 vacantSpotIndex!68 (select (arr!17855 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!604486 (= lt!275797 (select (store (arr!17855 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275802 () Unit!19240)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37204 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19240)

(assert (=> b!604486 (= lt!275802 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275801 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604486 (= lt!275801 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604487 () Bool)

(declare-fun e!345919 () Bool)

(declare-fun e!345906 () Bool)

(assert (=> b!604487 (= e!345919 e!345906)))

(declare-fun res!388552 () Bool)

(assert (=> b!604487 (=> (not res!388552) (not e!345906))))

(assert (=> b!604487 (= res!388552 (= (select (store (arr!17855 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604487 (= lt!275799 (array!37205 (store (arr!17855 a!2986) i!1108 k!1786) (size!18219 a!2986)))))

(declare-fun b!604488 () Bool)

(declare-fun e!345909 () Bool)

(declare-fun e!345915 () Bool)

(assert (=> b!604488 (= e!345909 e!345915)))

(declare-fun res!388553 () Bool)

(assert (=> b!604488 (=> res!388553 e!345915)))

(assert (=> b!604488 (= res!388553 (bvsge index!984 j!136))))

(declare-fun lt!275808 () Unit!19240)

(declare-fun e!345907 () Unit!19240)

(assert (=> b!604488 (= lt!275808 e!345907)))

(declare-fun c!68342 () Bool)

(assert (=> b!604488 (= c!68342 (bvslt j!136 index!984))))

(declare-fun b!604489 () Bool)

(declare-fun e!345917 () Bool)

(declare-fun arrayContainsKey!0 (array!37204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604489 (= e!345917 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) index!984))))

(declare-fun b!604490 () Bool)

(declare-fun res!388539 () Bool)

(assert (=> b!604490 (=> (not res!388539) (not e!345919))))

(declare-datatypes ((List!11949 0))(
  ( (Nil!11946) (Cons!11945 (h!12990 (_ BitVec 64)) (t!18185 List!11949)) )
))
(declare-fun arrayNoDuplicates!0 (array!37204 (_ BitVec 32) List!11949) Bool)

(assert (=> b!604490 (= res!388539 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11946))))

(declare-fun b!604491 () Bool)

(declare-fun lt!275793 () SeekEntryResult!6302)

(assert (=> b!604491 (= e!345916 (= lt!275793 lt!275798))))

(declare-fun b!604492 () Bool)

(declare-fun res!388551 () Bool)

(declare-fun e!345911 () Bool)

(assert (=> b!604492 (=> (not res!388551) (not e!345911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604492 (= res!388551 (validKeyInArray!0 (select (arr!17855 a!2986) j!136)))))

(declare-fun b!604493 () Bool)

(declare-fun e!345914 () Bool)

(declare-fun e!345908 () Bool)

(assert (=> b!604493 (= e!345914 e!345908)))

(declare-fun res!388543 () Bool)

(assert (=> b!604493 (=> (not res!388543) (not e!345908))))

(assert (=> b!604493 (= res!388543 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) j!136))))

(declare-fun b!604494 () Bool)

(declare-fun Unit!19242 () Unit!19240)

(assert (=> b!604494 (= e!345918 Unit!19242)))

(declare-fun b!604495 () Bool)

(declare-fun res!388554 () Bool)

(assert (=> b!604495 (=> (not res!388554) (not e!345911))))

(assert (=> b!604495 (= res!388554 (validKeyInArray!0 k!1786))))

(declare-fun b!604496 () Bool)

(declare-fun res!388538 () Bool)

(assert (=> b!604496 (=> (not res!388538) (not e!345919))))

(assert (=> b!604496 (= res!388538 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17855 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604497 () Bool)

(declare-fun res!388541 () Bool)

(assert (=> b!604497 (=> (not res!388541) (not e!345919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37204 (_ BitVec 32)) Bool)

(assert (=> b!604497 (= res!388541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604498 () Bool)

(declare-fun res!388550 () Bool)

(assert (=> b!604498 (=> (not res!388550) (not e!345911))))

(assert (=> b!604498 (= res!388550 (and (= (size!18219 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18219 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18219 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604499 () Bool)

(declare-fun Unit!19243 () Unit!19240)

(assert (=> b!604499 (= e!345907 Unit!19243)))

(declare-fun lt!275800 () Unit!19240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37204 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19240)

(assert (=> b!604499 (= lt!275800 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275799 (select (arr!17855 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604499 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275794 () Unit!19240)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37204 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11949) Unit!19240)

(assert (=> b!604499 (= lt!275794 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11946))))

(assert (=> b!604499 (arrayNoDuplicates!0 lt!275799 #b00000000000000000000000000000000 Nil!11946)))

(declare-fun lt!275803 () Unit!19240)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37204 (_ BitVec 32) (_ BitVec 32)) Unit!19240)

(assert (=> b!604499 (= lt!275803 (lemmaNoDuplicateFromThenFromBigger!0 lt!275799 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604499 (arrayNoDuplicates!0 lt!275799 j!136 Nil!11946)))

(declare-fun lt!275807 () Unit!19240)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37204 (_ BitVec 64) (_ BitVec 32) List!11949) Unit!19240)

(assert (=> b!604499 (= lt!275807 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275799 (select (arr!17855 a!2986) j!136) j!136 Nil!11946))))

(assert (=> b!604499 false))

(declare-fun b!604500 () Bool)

(declare-fun e!345910 () Bool)

(assert (=> b!604500 (= e!345910 e!345914)))

(declare-fun res!388548 () Bool)

(assert (=> b!604500 (=> res!388548 e!345914)))

(declare-fun lt!275796 () (_ BitVec 64))

(assert (=> b!604500 (= res!388548 (or (not (= (select (arr!17855 a!2986) j!136) lt!275797)) (not (= (select (arr!17855 a!2986) j!136) lt!275796)) (bvsge j!136 index!984)))))

(declare-fun b!604501 () Bool)

(assert (=> b!604501 (= e!345908 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) index!984))))

(declare-fun b!604502 () Bool)

(assert (=> b!604502 (= e!345905 e!345909)))

(declare-fun res!388546 () Bool)

(assert (=> b!604502 (=> res!388546 e!345909)))

(assert (=> b!604502 (= res!388546 (or (not (= (select (arr!17855 a!2986) j!136) lt!275797)) (not (= (select (arr!17855 a!2986) j!136) lt!275796))))))

(assert (=> b!604502 e!345910))

(declare-fun res!388555 () Bool)

(assert (=> b!604502 (=> (not res!388555) (not e!345910))))

(assert (=> b!604502 (= res!388555 (= lt!275796 (select (arr!17855 a!2986) j!136)))))

(assert (=> b!604502 (= lt!275796 (select (store (arr!17855 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!604503 () Bool)

(assert (=> b!604503 (= e!345915 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18219 a!2986)) (bvslt (size!18219 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!604503 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275804 () Unit!19240)

(assert (=> b!604503 (= lt!275804 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275799 (select (arr!17855 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604503 e!345917))

(declare-fun res!388540 () Bool)

(assert (=> b!604503 (=> (not res!388540) (not e!345917))))

(assert (=> b!604503 (= res!388540 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) j!136))))

(declare-fun b!604504 () Bool)

(declare-fun Unit!19244 () Unit!19240)

(assert (=> b!604504 (= e!345907 Unit!19244)))

(declare-fun b!604505 () Bool)

(assert (=> b!604505 (= e!345906 e!345912)))

(declare-fun res!388545 () Bool)

(assert (=> b!604505 (=> (not res!388545) (not e!345912))))

(assert (=> b!604505 (= res!388545 (and (= lt!275793 (Found!6302 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17855 a!2986) index!984) (select (arr!17855 a!2986) j!136))) (not (= (select (arr!17855 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!604505 (= lt!275793 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17855 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604506 () Bool)

(declare-fun Unit!19245 () Unit!19240)

(assert (=> b!604506 (= e!345918 Unit!19245)))

(assert (=> b!604506 false))

(declare-fun b!604507 () Bool)

(declare-fun res!388544 () Bool)

(assert (=> b!604507 (=> (not res!388544) (not e!345911))))

(assert (=> b!604507 (= res!388544 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604508 () Bool)

(assert (=> b!604508 (= e!345911 e!345919)))

(declare-fun res!388549 () Bool)

(assert (=> b!604508 (=> (not res!388549) (not e!345919))))

(declare-fun lt!275795 () SeekEntryResult!6302)

(assert (=> b!604508 (= res!388549 (or (= lt!275795 (MissingZero!6302 i!1108)) (= lt!275795 (MissingVacant!6302 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37204 (_ BitVec 32)) SeekEntryResult!6302)

(assert (=> b!604508 (= lt!275795 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!388547 () Bool)

(assert (=> start!55168 (=> (not res!388547) (not e!345911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55168 (= res!388547 (validMask!0 mask!3053))))

(assert (=> start!55168 e!345911))

(assert (=> start!55168 true))

(declare-fun array_inv!13629 (array!37204) Bool)

(assert (=> start!55168 (array_inv!13629 a!2986)))

(assert (= (and start!55168 res!388547) b!604498))

(assert (= (and b!604498 res!388550) b!604492))

(assert (= (and b!604492 res!388551) b!604495))

(assert (= (and b!604495 res!388554) b!604507))

(assert (= (and b!604507 res!388544) b!604508))

(assert (= (and b!604508 res!388549) b!604497))

(assert (= (and b!604497 res!388541) b!604490))

(assert (= (and b!604490 res!388539) b!604496))

(assert (= (and b!604496 res!388538) b!604487))

(assert (= (and b!604487 res!388552) b!604505))

(assert (= (and b!604505 res!388545) b!604486))

(assert (= (and b!604486 res!388556) b!604491))

(assert (= (and b!604486 c!68341) b!604506))

(assert (= (and b!604486 (not c!68341)) b!604494))

(assert (= (and b!604486 (not res!388542)) b!604502))

(assert (= (and b!604502 res!388555) b!604500))

(assert (= (and b!604500 (not res!388548)) b!604493))

(assert (= (and b!604493 res!388543) b!604501))

(assert (= (and b!604502 (not res!388546)) b!604488))

(assert (= (and b!604488 c!68342) b!604499))

(assert (= (and b!604488 (not c!68342)) b!604504))

(assert (= (and b!604488 (not res!388553)) b!604503))

(assert (= (and b!604503 res!388540) b!604489))

(declare-fun m!581423 () Bool)

(assert (=> b!604492 m!581423))

(assert (=> b!604492 m!581423))

(declare-fun m!581425 () Bool)

(assert (=> b!604492 m!581425))

(assert (=> b!604499 m!581423))

(declare-fun m!581427 () Bool)

(assert (=> b!604499 m!581427))

(assert (=> b!604499 m!581423))

(declare-fun m!581429 () Bool)

(assert (=> b!604499 m!581429))

(assert (=> b!604499 m!581423))

(declare-fun m!581431 () Bool)

(assert (=> b!604499 m!581431))

(declare-fun m!581433 () Bool)

(assert (=> b!604499 m!581433))

(declare-fun m!581435 () Bool)

(assert (=> b!604499 m!581435))

(declare-fun m!581437 () Bool)

(assert (=> b!604499 m!581437))

(assert (=> b!604499 m!581423))

(declare-fun m!581439 () Bool)

(assert (=> b!604499 m!581439))

(declare-fun m!581441 () Bool)

(assert (=> b!604508 m!581441))

(declare-fun m!581443 () Bool)

(assert (=> b!604507 m!581443))

(declare-fun m!581445 () Bool)

(assert (=> start!55168 m!581445))

(declare-fun m!581447 () Bool)

(assert (=> start!55168 m!581447))

(declare-fun m!581449 () Bool)

(assert (=> b!604490 m!581449))

(assert (=> b!604489 m!581423))

(assert (=> b!604489 m!581423))

(declare-fun m!581451 () Bool)

(assert (=> b!604489 m!581451))

(assert (=> b!604501 m!581423))

(assert (=> b!604501 m!581423))

(assert (=> b!604501 m!581451))

(declare-fun m!581453 () Bool)

(assert (=> b!604505 m!581453))

(assert (=> b!604505 m!581423))

(assert (=> b!604505 m!581423))

(declare-fun m!581455 () Bool)

(assert (=> b!604505 m!581455))

(declare-fun m!581457 () Bool)

(assert (=> b!604497 m!581457))

(declare-fun m!581459 () Bool)

(assert (=> b!604486 m!581459))

(declare-fun m!581461 () Bool)

(assert (=> b!604486 m!581461))

(assert (=> b!604486 m!581423))

(declare-fun m!581463 () Bool)

(assert (=> b!604486 m!581463))

(declare-fun m!581465 () Bool)

(assert (=> b!604486 m!581465))

(assert (=> b!604486 m!581423))

(declare-fun m!581467 () Bool)

(assert (=> b!604486 m!581467))

(declare-fun m!581469 () Bool)

(assert (=> b!604486 m!581469))

(declare-fun m!581471 () Bool)

(assert (=> b!604486 m!581471))

(assert (=> b!604500 m!581423))

(assert (=> b!604502 m!581423))

(assert (=> b!604502 m!581463))

(declare-fun m!581473 () Bool)

(assert (=> b!604502 m!581473))

(assert (=> b!604503 m!581423))

(assert (=> b!604503 m!581423))

(declare-fun m!581475 () Bool)

(assert (=> b!604503 m!581475))

(assert (=> b!604503 m!581423))

(declare-fun m!581477 () Bool)

(assert (=> b!604503 m!581477))

(assert (=> b!604503 m!581423))

(declare-fun m!581479 () Bool)

(assert (=> b!604503 m!581479))

(declare-fun m!581481 () Bool)

(assert (=> b!604496 m!581481))

(assert (=> b!604493 m!581423))

(assert (=> b!604493 m!581423))

(assert (=> b!604493 m!581479))

(assert (=> b!604487 m!581463))

(declare-fun m!581483 () Bool)

(assert (=> b!604487 m!581483))

(declare-fun m!581485 () Bool)

(assert (=> b!604495 m!581485))

(push 1)

(assert (not b!604503))

(assert (not b!604505))

(assert (not b!604489))

(assert (not b!604499))

(assert (not b!604492))

(assert (not b!604497))

(assert (not b!604490))

(assert (not b!604508))

(assert (not b!604507))

(assert (not b!604486))

(assert (not b!604495))

(assert (not b!604493))

(assert (not b!604501))

(assert (not start!55168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!604596 () Bool)

(declare-fun e!345985 () SeekEntryResult!6302)

(declare-fun e!345986 () SeekEntryResult!6302)

(assert (=> b!604596 (= e!345985 e!345986)))

(declare-fun lt!275847 () (_ BitVec 64))

(declare-fun lt!275846 () SeekEntryResult!6302)

(assert (=> b!604596 (= lt!275847 (select (arr!17855 a!2986) (index!27472 lt!275846)))))

(declare-fun c!68365 () Bool)

(assert (=> b!604596 (= c!68365 (= lt!275847 k!1786))))

(declare-fun d!87325 () Bool)

(declare-fun lt!275845 () SeekEntryResult!6302)

(assert (=> d!87325 (and (or (is-Undefined!6302 lt!275845) (not (is-Found!6302 lt!275845)) (and (bvsge (index!27471 lt!275845) #b00000000000000000000000000000000) (bvslt (index!27471 lt!275845) (size!18219 a!2986)))) (or (is-Undefined!6302 lt!275845) (is-Found!6302 lt!275845) (not (is-MissingZero!6302 lt!275845)) (and (bvsge (index!27470 lt!275845) #b00000000000000000000000000000000) (bvslt (index!27470 lt!275845) (size!18219 a!2986)))) (or (is-Undefined!6302 lt!275845) (is-Found!6302 lt!275845) (is-MissingZero!6302 lt!275845) (not (is-MissingVacant!6302 lt!275845)) (and (bvsge (index!27473 lt!275845) #b00000000000000000000000000000000) (bvslt (index!27473 lt!275845) (size!18219 a!2986)))) (or (is-Undefined!6302 lt!275845) (ite (is-Found!6302 lt!275845) (= (select (arr!17855 a!2986) (index!27471 lt!275845)) k!1786) (ite (is-MissingZero!6302 lt!275845) (= (select (arr!17855 a!2986) (index!27470 lt!275845)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6302 lt!275845) (= (select (arr!17855 a!2986) (index!27473 lt!275845)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87325 (= lt!275845 e!345985)))

(declare-fun c!68367 () Bool)

(assert (=> d!87325 (= c!68367 (and (is-Intermediate!6302 lt!275846) (undefined!7114 lt!275846)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37204 (_ BitVec 32)) SeekEntryResult!6302)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87325 (= lt!275846 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!87325 (validMask!0 mask!3053)))

(assert (=> d!87325 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!275845)))

(declare-fun b!604597 () Bool)

(assert (=> b!604597 (= e!345986 (Found!6302 (index!27472 lt!275846)))))

(declare-fun e!345987 () SeekEntryResult!6302)

(declare-fun b!604598 () Bool)

(assert (=> b!604598 (= e!345987 (seekKeyOrZeroReturnVacant!0 (x!56288 lt!275846) (index!27472 lt!275846) (index!27472 lt!275846) k!1786 a!2986 mask!3053))))

(declare-fun b!604599 () Bool)

(assert (=> b!604599 (= e!345987 (MissingZero!6302 (index!27472 lt!275846)))))

(declare-fun b!604600 () Bool)

(assert (=> b!604600 (= e!345985 Undefined!6302)))

(declare-fun b!604601 () Bool)

(declare-fun c!68366 () Bool)

(assert (=> b!604601 (= c!68366 (= lt!275847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604601 (= e!345986 e!345987)))

(assert (= (and d!87325 c!68367) b!604600))

(assert (= (and d!87325 (not c!68367)) b!604596))

(assert (= (and b!604596 c!68365) b!604597))

(assert (= (and b!604596 (not c!68365)) b!604601))

(assert (= (and b!604601 c!68366) b!604599))

(assert (= (and b!604601 (not c!68366)) b!604598))

(declare-fun m!581553 () Bool)

(assert (=> b!604596 m!581553))

(declare-fun m!581555 () Bool)

(assert (=> d!87325 m!581555))

(declare-fun m!581557 () Bool)

(assert (=> d!87325 m!581557))

(declare-fun m!581559 () Bool)

(assert (=> d!87325 m!581559))

(assert (=> d!87325 m!581445))

(declare-fun m!581561 () Bool)

(assert (=> d!87325 m!581561))

(assert (=> d!87325 m!581555))

(declare-fun m!581565 () Bool)

(assert (=> d!87325 m!581565))

(declare-fun m!581567 () Bool)

(assert (=> b!604598 m!581567))

(assert (=> b!604508 d!87325))

(declare-fun b!604623 () Bool)

(declare-fun e!346001 () Bool)

(declare-fun call!33018 () Bool)

(assert (=> b!604623 (= e!346001 call!33018)))

(declare-fun b!604624 () Bool)

(declare-fun e!346002 () Bool)

(assert (=> b!604624 (= e!346001 e!346002)))

(declare-fun lt!275862 () (_ BitVec 64))

(assert (=> b!604624 (= lt!275862 (select (arr!17855 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!275863 () Unit!19240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37204 (_ BitVec 64) (_ BitVec 32)) Unit!19240)

(assert (=> b!604624 (= lt!275863 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!275862 #b00000000000000000000000000000000))))

(assert (=> b!604624 (arrayContainsKey!0 a!2986 lt!275862 #b00000000000000000000000000000000)))

(declare-fun lt!275861 () Unit!19240)

(assert (=> b!604624 (= lt!275861 lt!275863)))

(declare-fun res!388605 () Bool)

(assert (=> b!604624 (= res!388605 (= (seekEntryOrOpen!0 (select (arr!17855 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6302 #b00000000000000000000000000000000)))))

(assert (=> b!604624 (=> (not res!388605) (not e!346002))))

(declare-fun bm!33015 () Bool)

(assert (=> bm!33015 (= call!33018 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!604625 () Bool)

(assert (=> b!604625 (= e!346002 call!33018)))

(declare-fun b!604626 () Bool)

(declare-fun e!346003 () Bool)

(assert (=> b!604626 (= e!346003 e!346001)))

(declare-fun c!68376 () Bool)

(assert (=> b!604626 (= c!68376 (validKeyInArray!0 (select (arr!17855 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87345 () Bool)

(declare-fun res!388606 () Bool)

(assert (=> d!87345 (=> res!388606 e!346003)))

(assert (=> d!87345 (= res!388606 (bvsge #b00000000000000000000000000000000 (size!18219 a!2986)))))

(assert (=> d!87345 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!346003)))

(assert (= (and d!87345 (not res!388606)) b!604626))

(assert (= (and b!604626 c!68376) b!604624))

(assert (= (and b!604626 (not c!68376)) b!604623))

(assert (= (and b!604624 res!388605) b!604625))

(assert (= (or b!604625 b!604623) bm!33015))

(declare-fun m!581571 () Bool)

(assert (=> b!604624 m!581571))

(declare-fun m!581573 () Bool)

(assert (=> b!604624 m!581573))

(declare-fun m!581575 () Bool)

(assert (=> b!604624 m!581575))

(assert (=> b!604624 m!581571))

(declare-fun m!581577 () Bool)

(assert (=> b!604624 m!581577))

(declare-fun m!581579 () Bool)

(assert (=> bm!33015 m!581579))

(assert (=> b!604626 m!581571))

(assert (=> b!604626 m!581571))

(declare-fun m!581581 () Bool)

(assert (=> b!604626 m!581581))

(assert (=> b!604497 d!87345))

(declare-fun b!604678 () Bool)

(declare-fun e!346034 () Bool)

(declare-fun call!33022 () Bool)

(assert (=> b!604678 (= e!346034 call!33022)))

(declare-fun c!68398 () Bool)

(declare-fun bm!33019 () Bool)

(assert (=> bm!33019 (= call!33022 (arrayNoDuplicates!0 lt!275799 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68398 (Cons!11945 (select (arr!17855 lt!275799) j!136) Nil!11946) Nil!11946)))))

(declare-fun b!604679 () Bool)

(assert (=> b!604679 (= e!346034 call!33022)))

(declare-fun b!604681 () Bool)

(declare-fun e!346037 () Bool)

(declare-fun e!346035 () Bool)

(assert (=> b!604681 (= e!346037 e!346035)))

(declare-fun res!388617 () Bool)

(assert (=> b!604681 (=> (not res!388617) (not e!346035))))

(declare-fun e!346036 () Bool)

(assert (=> b!604681 (= res!388617 (not e!346036))))

(declare-fun res!388616 () Bool)

(assert (=> b!604681 (=> (not res!388616) (not e!346036))))

(assert (=> b!604681 (= res!388616 (validKeyInArray!0 (select (arr!17855 lt!275799) j!136)))))

(declare-fun b!604682 () Bool)

(assert (=> b!604682 (= e!346035 e!346034)))

(assert (=> b!604682 (= c!68398 (validKeyInArray!0 (select (arr!17855 lt!275799) j!136)))))

(declare-fun b!604680 () Bool)

(declare-fun contains!2997 (List!11949 (_ BitVec 64)) Bool)

(assert (=> b!604680 (= e!346036 (contains!2997 Nil!11946 (select (arr!17855 lt!275799) j!136)))))

(declare-fun d!87349 () Bool)

(declare-fun res!388618 () Bool)

(assert (=> d!87349 (=> res!388618 e!346037)))

(assert (=> d!87349 (= res!388618 (bvsge j!136 (size!18219 lt!275799)))))

(assert (=> d!87349 (= (arrayNoDuplicates!0 lt!275799 j!136 Nil!11946) e!346037)))

(assert (= (and d!87349 (not res!388618)) b!604681))

(assert (= (and b!604681 res!388616) b!604680))

(assert (= (and b!604681 res!388617) b!604682))

(assert (= (and b!604682 c!68398) b!604679))

(assert (= (and b!604682 (not c!68398)) b!604678))

(assert (= (or b!604679 b!604678) bm!33019))

(declare-fun m!581627 () Bool)

(assert (=> bm!33019 m!581627))

(declare-fun m!581629 () Bool)

(assert (=> bm!33019 m!581629))

(assert (=> b!604681 m!581627))

(assert (=> b!604681 m!581627))

(declare-fun m!581631 () Bool)

(assert (=> b!604681 m!581631))

(assert (=> b!604682 m!581627))

(assert (=> b!604682 m!581627))

(assert (=> b!604682 m!581631))

(assert (=> b!604680 m!581627))

(assert (=> b!604680 m!581627))

(declare-fun m!581633 () Bool)

(assert (=> b!604680 m!581633))

(assert (=> b!604499 d!87349))

(declare-fun d!87363 () Bool)

(declare-fun res!388623 () Bool)

(declare-fun e!346045 () Bool)

(assert (=> d!87363 (=> res!388623 e!346045)))

(assert (=> d!87363 (= res!388623 (= (select (arr!17855 lt!275799) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17855 a!2986) j!136)))))

(assert (=> d!87363 (= (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346045)))

(declare-fun b!604693 () Bool)

(declare-fun e!346046 () Bool)

(assert (=> b!604693 (= e!346045 e!346046)))

(declare-fun res!388624 () Bool)

(assert (=> b!604693 (=> (not res!388624) (not e!346046))))

(assert (=> b!604693 (= res!388624 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18219 lt!275799)))))

(declare-fun b!604694 () Bool)

(assert (=> b!604694 (= e!346046 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87363 (not res!388623)) b!604693))

(assert (= (and b!604693 res!388624) b!604694))

(declare-fun m!581641 () Bool)

(assert (=> d!87363 m!581641))

(assert (=> b!604694 m!581423))

(declare-fun m!581645 () Bool)

(assert (=> b!604694 m!581645))

(assert (=> b!604499 d!87363))

(declare-fun d!87367 () Bool)

(assert (=> d!87367 (arrayNoDuplicates!0 lt!275799 j!136 Nil!11946)))

(declare-fun lt!275886 () Unit!19240)

(declare-fun choose!39 (array!37204 (_ BitVec 32) (_ BitVec 32)) Unit!19240)

(assert (=> d!87367 (= lt!275886 (choose!39 lt!275799 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87367 (bvslt (size!18219 lt!275799) #b01111111111111111111111111111111)))

(assert (=> d!87367 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!275799 #b00000000000000000000000000000000 j!136) lt!275886)))

(declare-fun bs!18499 () Bool)

(assert (= bs!18499 d!87367))

(assert (=> bs!18499 m!581427))

(declare-fun m!581655 () Bool)

(assert (=> bs!18499 m!581655))

(assert (=> b!604499 d!87367))

(declare-fun b!604701 () Bool)

(declare-fun e!346050 () Bool)

(declare-fun call!33023 () Bool)

(assert (=> b!604701 (= e!346050 call!33023)))

(declare-fun bm!33020 () Bool)

(declare-fun c!68405 () Bool)

(assert (=> bm!33020 (= call!33023 (arrayNoDuplicates!0 lt!275799 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68405 (Cons!11945 (select (arr!17855 lt!275799) #b00000000000000000000000000000000) Nil!11946) Nil!11946)))))

(declare-fun b!604702 () Bool)

(assert (=> b!604702 (= e!346050 call!33023)))

(declare-fun b!604704 () Bool)

(declare-fun e!346053 () Bool)

(declare-fun e!346051 () Bool)

(assert (=> b!604704 (= e!346053 e!346051)))

(declare-fun res!388626 () Bool)

(assert (=> b!604704 (=> (not res!388626) (not e!346051))))

(declare-fun e!346052 () Bool)

(assert (=> b!604704 (= res!388626 (not e!346052))))

(declare-fun res!388625 () Bool)

(assert (=> b!604704 (=> (not res!388625) (not e!346052))))

(assert (=> b!604704 (= res!388625 (validKeyInArray!0 (select (arr!17855 lt!275799) #b00000000000000000000000000000000)))))

(declare-fun b!604705 () Bool)

(assert (=> b!604705 (= e!346051 e!346050)))

(assert (=> b!604705 (= c!68405 (validKeyInArray!0 (select (arr!17855 lt!275799) #b00000000000000000000000000000000)))))

(declare-fun b!604703 () Bool)

(assert (=> b!604703 (= e!346052 (contains!2997 Nil!11946 (select (arr!17855 lt!275799) #b00000000000000000000000000000000)))))

(declare-fun d!87373 () Bool)

(declare-fun res!388627 () Bool)

(assert (=> d!87373 (=> res!388627 e!346053)))

(assert (=> d!87373 (= res!388627 (bvsge #b00000000000000000000000000000000 (size!18219 lt!275799)))))

(assert (=> d!87373 (= (arrayNoDuplicates!0 lt!275799 #b00000000000000000000000000000000 Nil!11946) e!346053)))

(assert (= (and d!87373 (not res!388627)) b!604704))

(assert (= (and b!604704 res!388625) b!604703))

(assert (= (and b!604704 res!388626) b!604705))

(assert (= (and b!604705 c!68405) b!604702))

(assert (= (and b!604705 (not c!68405)) b!604701))

(assert (= (or b!604702 b!604701) bm!33020))

(declare-fun m!581657 () Bool)

(assert (=> bm!33020 m!581657))

(declare-fun m!581659 () Bool)

(assert (=> bm!33020 m!581659))

(assert (=> b!604704 m!581657))

(assert (=> b!604704 m!581657))

(declare-fun m!581661 () Bool)

(assert (=> b!604704 m!581661))

(assert (=> b!604705 m!581657))

(assert (=> b!604705 m!581657))

(assert (=> b!604705 m!581661))

(assert (=> b!604703 m!581657))

(assert (=> b!604703 m!581657))

(declare-fun m!581663 () Bool)

(assert (=> b!604703 m!581663))

(assert (=> b!604499 d!87373))

(declare-fun d!87375 () Bool)

(declare-fun e!346058 () Bool)

(assert (=> d!87375 e!346058))

(declare-fun res!388632 () Bool)

(assert (=> d!87375 (=> (not res!388632) (not e!346058))))

(assert (=> d!87375 (= res!388632 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18219 a!2986))))))

(declare-fun lt!275891 () Unit!19240)

(declare-fun choose!41 (array!37204 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11949) Unit!19240)

(assert (=> d!87375 (= lt!275891 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11946))))

(assert (=> d!87375 (bvslt (size!18219 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87375 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11946) lt!275891)))

(declare-fun b!604710 () Bool)

(assert (=> b!604710 (= e!346058 (arrayNoDuplicates!0 (array!37205 (store (arr!17855 a!2986) i!1108 k!1786) (size!18219 a!2986)) #b00000000000000000000000000000000 Nil!11946))))

(assert (= (and d!87375 res!388632) b!604710))

(declare-fun m!581665 () Bool)

(assert (=> d!87375 m!581665))

(assert (=> b!604710 m!581463))

(declare-fun m!581667 () Bool)

(assert (=> b!604710 m!581667))

(assert (=> b!604499 d!87375))

(declare-fun d!87377 () Bool)

(assert (=> d!87377 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18219 lt!275799)) (not (= (select (arr!17855 lt!275799) j!136) (select (arr!17855 a!2986) j!136))))))

(declare-fun lt!275895 () Unit!19240)

(declare-fun choose!21 (array!37204 (_ BitVec 64) (_ BitVec 32) List!11949) Unit!19240)

(assert (=> d!87377 (= lt!275895 (choose!21 lt!275799 (select (arr!17855 a!2986) j!136) j!136 Nil!11946))))

(assert (=> d!87377 (bvslt (size!18219 lt!275799) #b01111111111111111111111111111111)))

(assert (=> d!87377 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275799 (select (arr!17855 a!2986) j!136) j!136 Nil!11946) lt!275895)))

(declare-fun bs!18500 () Bool)

(assert (= bs!18500 d!87377))

(assert (=> bs!18500 m!581627))

(assert (=> bs!18500 m!581423))

(declare-fun m!581677 () Bool)

(assert (=> bs!18500 m!581677))

(assert (=> b!604499 d!87377))

(declare-fun d!87387 () Bool)

(assert (=> d!87387 (arrayContainsKey!0 lt!275799 (select (arr!17855 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275905 () Unit!19240)

(declare-fun choose!114 (array!37204 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19240)

(assert (=> d!87387 (= lt!275905 (choose!114 lt!275799 (select (arr!17855 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87387 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87387 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275799 (select (arr!17855 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!275905)))

(declare-fun bs!18502 () Bool)

(assert (= bs!18502 d!87387))

(assert (=> bs!18502 m!581423))

(assert (=> bs!18502 m!581431))

(assert (=> bs!18502 m!581423))

(declare-fun m!581689 () Bool)

(assert (=> bs!18502 m!581689))

(assert (=> b!604499 d!87387))

(declare-fun d!87393 () Bool)

(assert (=> d!87393 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!604495 d!87393))

(declare-fun lt!275918 () SeekEntryResult!6302)

(declare-fun d!87399 () Bool)

(assert (=> d!87399 (and (or (is-Undefined!6302 lt!275918) (not (is-Found!6302 lt!275918)) (and (bvsge (index!27471 lt!275918) #b00000000000000000000000000000000) (bvslt (index!27471 lt!275918) (size!18219 a!2986)))) (or (is-Undefined!6302 lt!275918) (is-Found!6302 lt!275918) (not (is-MissingVacant!6302 lt!275918)) (not (= (index!27473 lt!275918) vacantSpotIndex!68)) (and (bvsge (index!27473 lt!275918) #b00000000000000000000000000000000) (bvslt (index!27473 lt!275918) (size!18219 a!2986)))) (or (is-Undefined!6302 lt!275918) (ite (is-Found!6302 lt!275918) (= (select (arr!17855 a!2986) (index!27471 lt!275918)) (select (arr!17855 a!2986) j!136)) (and (is-MissingVacant!6302 lt!275918) (= (index!27473 lt!275918) vacantSpotIndex!68) (= (select (arr!17855 a!2986) (index!27473 lt!275918)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346091 () SeekEntryResult!6302)

(assert (=> d!87399 (= lt!275918 e!346091)))

(declare-fun c!68421 () Bool)

(assert (=> d!87399 (= c!68421 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!275917 () (_ BitVec 64))

(assert (=> d!87399 (= lt!275917 (select (arr!17855 a!2986) index!984))))

(assert (=> d!87399 (validMask!0 mask!3053)))

(assert (=> d!87399 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17855 a!2986) j!136) a!2986 mask!3053) lt!275918)))

(declare-fun b!604754 () Bool)

(assert (=> b!604754 (= e!346091 Undefined!6302)))

(declare-fun b!604755 () Bool)

(declare-fun c!68420 () Bool)

(assert (=> b!604755 (= c!68420 (= lt!275917 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346090 () SeekEntryResult!6302)

(declare-fun e!346089 () SeekEntryResult!6302)

(assert (=> b!604755 (= e!346090 e!346089)))

(declare-fun b!604756 () Bool)

(assert (=> b!604756 (= e!346089 (MissingVacant!6302 vacantSpotIndex!68))))

(declare-fun b!604757 () Bool)

(assert (=> b!604757 (= e!346089 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17855 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604758 () Bool)

(assert (=> b!604758 (= e!346090 (Found!6302 index!984))))

(declare-fun b!604759 () Bool)

(assert (=> b!604759 (= e!346091 e!346090)))

(declare-fun c!68419 () Bool)

(assert (=> b!604759 (= c!68419 (= lt!275917 (select (arr!17855 a!2986) j!136)))))

(assert (= (and d!87399 c!68421) b!604754))

(assert (= (and d!87399 (not c!68421)) b!604759))

(assert (= (and b!604759 c!68419) b!604758))

(assert (= (and b!604759 (not c!68419)) b!604755))

(assert (= (and b!604755 c!68420) b!604756))

(assert (= (and b!604755 (not c!68420)) b!604757))

(declare-fun m!581717 () Bool)

(assert (=> d!87399 m!581717))

(declare-fun m!581719 () Bool)

(assert (=> d!87399 m!581719))

