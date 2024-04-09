; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59626 () Bool)

(assert start!59626)

(declare-fun b!659016 () Bool)

(declare-datatypes ((Unit!22944 0))(
  ( (Unit!22945) )
))
(declare-fun e!378610 () Unit!22944)

(declare-fun Unit!22946 () Unit!22944)

(assert (=> b!659016 (= e!378610 Unit!22946)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!659017 () Bool)

(declare-fun res!427482 () Bool)

(declare-datatypes ((array!38740 0))(
  ( (array!38741 (arr!18563 (Array (_ BitVec 32) (_ BitVec 64))) (size!18927 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38740)

(declare-fun lt!308482 () array!38740)

(declare-fun arrayContainsKey!0 (array!38740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!659017 (= res!427482 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) j!136))))

(declare-fun e!378609 () Bool)

(assert (=> b!659017 (=> (not res!427482) (not e!378609))))

(declare-fun e!378608 () Bool)

(assert (=> b!659017 (= e!378608 e!378609)))

(declare-fun b!659018 () Bool)

(declare-fun e!378607 () Unit!22944)

(declare-fun Unit!22947 () Unit!22944)

(assert (=> b!659018 (= e!378607 Unit!22947)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!427483 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!659018 (= res!427483 (= (select (store (arr!18563 a!2986) i!1108 k!1786) index!984) (select (arr!18563 a!2986) j!136)))))

(declare-fun e!378600 () Bool)

(assert (=> b!659018 (=> (not res!427483) (not e!378600))))

(assert (=> b!659018 e!378600))

(declare-fun c!76136 () Bool)

(assert (=> b!659018 (= c!76136 (bvslt j!136 index!984))))

(declare-fun lt!308483 () Unit!22944)

(declare-fun e!378602 () Unit!22944)

(assert (=> b!659018 (= lt!308483 e!378602)))

(declare-fun c!76139 () Bool)

(assert (=> b!659018 (= c!76139 (bvslt index!984 j!136))))

(declare-fun lt!308474 () Unit!22944)

(assert (=> b!659018 (= lt!308474 e!378610)))

(assert (=> b!659018 false))

(declare-fun b!659019 () Bool)

(declare-fun e!378611 () Bool)

(declare-fun e!378612 () Bool)

(assert (=> b!659019 (= e!378611 e!378612)))

(declare-fun res!427492 () Bool)

(assert (=> b!659019 (=> (not res!427492) (not e!378612))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!659019 (= res!427492 (= (select (store (arr!18563 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!659019 (= lt!308482 (array!38741 (store (arr!18563 a!2986) i!1108 k!1786) (size!18927 a!2986)))))

(declare-fun b!659021 () Bool)

(assert (=> b!659021 false))

(declare-fun lt!308480 () Unit!22944)

(declare-datatypes ((List!12657 0))(
  ( (Nil!12654) (Cons!12653 (h!13698 (_ BitVec 64)) (t!18893 List!12657)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38740 (_ BitVec 64) (_ BitVec 32) List!12657) Unit!22944)

(assert (=> b!659021 (= lt!308480 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308482 (select (arr!18563 a!2986) j!136) j!136 Nil!12654))))

(declare-fun arrayNoDuplicates!0 (array!38740 (_ BitVec 32) List!12657) Bool)

(assert (=> b!659021 (arrayNoDuplicates!0 lt!308482 j!136 Nil!12654)))

(declare-fun lt!308471 () Unit!22944)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38740 (_ BitVec 32) (_ BitVec 32)) Unit!22944)

(assert (=> b!659021 (= lt!308471 (lemmaNoDuplicateFromThenFromBigger!0 lt!308482 #b00000000000000000000000000000000 j!136))))

(assert (=> b!659021 (arrayNoDuplicates!0 lt!308482 #b00000000000000000000000000000000 Nil!12654)))

(declare-fun lt!308469 () Unit!22944)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38740 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12657) Unit!22944)

(assert (=> b!659021 (= lt!308469 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12654))))

(assert (=> b!659021 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308477 () Unit!22944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38740 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22944)

(assert (=> b!659021 (= lt!308477 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308482 (select (arr!18563 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22948 () Unit!22944)

(assert (=> b!659021 (= e!378602 Unit!22948)))

(declare-fun b!659022 () Bool)

(declare-fun e!378606 () Bool)

(assert (=> b!659022 (= e!378606 e!378611)))

(declare-fun res!427486 () Bool)

(assert (=> b!659022 (=> (not res!427486) (not e!378611))))

(declare-datatypes ((SeekEntryResult!7010 0))(
  ( (MissingZero!7010 (index!30404 (_ BitVec 32))) (Found!7010 (index!30405 (_ BitVec 32))) (Intermediate!7010 (undefined!7822 Bool) (index!30406 (_ BitVec 32)) (x!59214 (_ BitVec 32))) (Undefined!7010) (MissingVacant!7010 (index!30407 (_ BitVec 32))) )
))
(declare-fun lt!308485 () SeekEntryResult!7010)

(assert (=> b!659022 (= res!427486 (or (= lt!308485 (MissingZero!7010 i!1108)) (= lt!308485 (MissingVacant!7010 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38740 (_ BitVec 32)) SeekEntryResult!7010)

(assert (=> b!659022 (= lt!308485 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!659023 () Bool)

(assert (=> b!659023 (= e!378609 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) index!984))))

(declare-fun b!659024 () Bool)

(declare-fun res!427479 () Bool)

(assert (=> b!659024 (= res!427479 (bvsge j!136 index!984))))

(assert (=> b!659024 (=> res!427479 e!378608)))

(assert (=> b!659024 (= e!378600 e!378608)))

(declare-fun b!659025 () Bool)

(declare-fun res!427493 () Bool)

(assert (=> b!659025 (=> (not res!427493) (not e!378606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!659025 (= res!427493 (validKeyInArray!0 k!1786))))

(declare-fun b!659026 () Bool)

(declare-fun res!427485 () Bool)

(assert (=> b!659026 (=> (not res!427485) (not e!378606))))

(assert (=> b!659026 (= res!427485 (and (= (size!18927 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18927 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18927 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!659027 () Bool)

(declare-fun Unit!22949 () Unit!22944)

(assert (=> b!659027 (= e!378607 Unit!22949)))

(declare-fun b!659028 () Bool)

(declare-fun e!378601 () Unit!22944)

(declare-fun Unit!22950 () Unit!22944)

(assert (=> b!659028 (= e!378601 Unit!22950)))

(declare-fun b!659029 () Bool)

(declare-fun res!427488 () Bool)

(assert (=> b!659029 (=> (not res!427488) (not e!378606))))

(assert (=> b!659029 (= res!427488 (validKeyInArray!0 (select (arr!18563 a!2986) j!136)))))

(declare-fun b!659030 () Bool)

(declare-fun e!378605 () Bool)

(assert (=> b!659030 (= e!378612 e!378605)))

(declare-fun res!427487 () Bool)

(assert (=> b!659030 (=> (not res!427487) (not e!378605))))

(declare-fun lt!308468 () SeekEntryResult!7010)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!659030 (= res!427487 (and (= lt!308468 (Found!7010 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18563 a!2986) index!984) (select (arr!18563 a!2986) j!136))) (not (= (select (arr!18563 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38740 (_ BitVec 32)) SeekEntryResult!7010)

(assert (=> b!659030 (= lt!308468 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18563 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!659031 () Bool)

(declare-fun res!427491 () Bool)

(assert (=> b!659031 (=> (not res!427491) (not e!378611))))

(assert (=> b!659031 (= res!427491 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18563 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659032 () Bool)

(declare-fun res!427480 () Bool)

(assert (=> b!659032 (=> (not res!427480) (not e!378611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38740 (_ BitVec 32)) Bool)

(assert (=> b!659032 (= res!427480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!659033 () Bool)

(assert (=> b!659033 false))

(declare-fun lt!308476 () Unit!22944)

(assert (=> b!659033 (= lt!308476 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308482 (select (arr!18563 a!2986) j!136) index!984 Nil!12654))))

(assert (=> b!659033 (arrayNoDuplicates!0 lt!308482 index!984 Nil!12654)))

(declare-fun lt!308484 () Unit!22944)

(assert (=> b!659033 (= lt!308484 (lemmaNoDuplicateFromThenFromBigger!0 lt!308482 #b00000000000000000000000000000000 index!984))))

(assert (=> b!659033 (arrayNoDuplicates!0 lt!308482 #b00000000000000000000000000000000 Nil!12654)))

(declare-fun lt!308478 () Unit!22944)

(assert (=> b!659033 (= lt!308478 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12654))))

(assert (=> b!659033 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308487 () Unit!22944)

(assert (=> b!659033 (= lt!308487 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308482 (select (arr!18563 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378613 () Bool)

(assert (=> b!659033 e!378613))

(declare-fun res!427478 () Bool)

(assert (=> b!659033 (=> (not res!427478) (not e!378613))))

(assert (=> b!659033 (= res!427478 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) j!136))))

(declare-fun Unit!22951 () Unit!22944)

(assert (=> b!659033 (= e!378610 Unit!22951)))

(declare-fun b!659034 () Bool)

(declare-fun res!427484 () Bool)

(assert (=> b!659034 (=> (not res!427484) (not e!378611))))

(assert (=> b!659034 (= res!427484 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12654))))

(declare-fun b!659035 () Bool)

(declare-fun res!427489 () Bool)

(assert (=> b!659035 (=> (not res!427489) (not e!378606))))

(assert (=> b!659035 (= res!427489 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!659036 () Bool)

(declare-fun Unit!22952 () Unit!22944)

(assert (=> b!659036 (= e!378602 Unit!22952)))

(declare-fun b!659037 () Bool)

(declare-fun Unit!22953 () Unit!22944)

(assert (=> b!659037 (= e!378601 Unit!22953)))

(assert (=> b!659037 false))

(declare-fun b!659038 () Bool)

(declare-fun e!378603 () Bool)

(declare-fun lt!308481 () SeekEntryResult!7010)

(assert (=> b!659038 (= e!378603 (= lt!308468 lt!308481))))

(declare-fun b!659039 () Bool)

(assert (=> b!659039 (= e!378613 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) index!984))))

(declare-fun res!427481 () Bool)

(assert (=> start!59626 (=> (not res!427481) (not e!378606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59626 (= res!427481 (validMask!0 mask!3053))))

(assert (=> start!59626 e!378606))

(assert (=> start!59626 true))

(declare-fun array_inv!14337 (array!38740) Bool)

(assert (=> start!59626 (array_inv!14337 a!2986)))

(declare-fun lt!308486 () SeekEntryResult!7010)

(declare-fun b!659020 () Bool)

(assert (=> b!659020 (= e!378605 (not (or (= lt!308486 (MissingVacant!7010 vacantSpotIndex!68)) (= lt!308468 lt!308486))))))

(declare-fun lt!308475 () Unit!22944)

(assert (=> b!659020 (= lt!308475 e!378607)))

(declare-fun c!76137 () Bool)

(assert (=> b!659020 (= c!76137 (= lt!308486 (Found!7010 index!984)))))

(declare-fun lt!308479 () Unit!22944)

(assert (=> b!659020 (= lt!308479 e!378601)))

(declare-fun c!76138 () Bool)

(assert (=> b!659020 (= c!76138 (= lt!308486 Undefined!7010))))

(declare-fun lt!308472 () (_ BitVec 64))

(assert (=> b!659020 (= lt!308486 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308472 lt!308482 mask!3053))))

(assert (=> b!659020 e!378603))

(declare-fun res!427490 () Bool)

(assert (=> b!659020 (=> (not res!427490) (not e!378603))))

(declare-fun lt!308470 () (_ BitVec 32))

(assert (=> b!659020 (= res!427490 (= lt!308481 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308470 vacantSpotIndex!68 lt!308472 lt!308482 mask!3053)))))

(assert (=> b!659020 (= lt!308481 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308470 vacantSpotIndex!68 (select (arr!18563 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!659020 (= lt!308472 (select (store (arr!18563 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!308473 () Unit!22944)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38740 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22944)

(assert (=> b!659020 (= lt!308473 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308470 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!659020 (= lt!308470 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!59626 res!427481) b!659026))

(assert (= (and b!659026 res!427485) b!659029))

(assert (= (and b!659029 res!427488) b!659025))

(assert (= (and b!659025 res!427493) b!659035))

(assert (= (and b!659035 res!427489) b!659022))

(assert (= (and b!659022 res!427486) b!659032))

(assert (= (and b!659032 res!427480) b!659034))

(assert (= (and b!659034 res!427484) b!659031))

(assert (= (and b!659031 res!427491) b!659019))

(assert (= (and b!659019 res!427492) b!659030))

(assert (= (and b!659030 res!427487) b!659020))

(assert (= (and b!659020 res!427490) b!659038))

(assert (= (and b!659020 c!76138) b!659037))

(assert (= (and b!659020 (not c!76138)) b!659028))

(assert (= (and b!659020 c!76137) b!659018))

(assert (= (and b!659020 (not c!76137)) b!659027))

(assert (= (and b!659018 res!427483) b!659024))

(assert (= (and b!659024 (not res!427479)) b!659017))

(assert (= (and b!659017 res!427482) b!659023))

(assert (= (and b!659018 c!76136) b!659021))

(assert (= (and b!659018 (not c!76136)) b!659036))

(assert (= (and b!659018 c!76139) b!659033))

(assert (= (and b!659018 (not c!76139)) b!659016))

(assert (= (and b!659033 res!427478) b!659039))

(declare-fun m!632051 () Bool)

(assert (=> b!659021 m!632051))

(declare-fun m!632053 () Bool)

(assert (=> b!659021 m!632053))

(assert (=> b!659021 m!632051))

(assert (=> b!659021 m!632051))

(declare-fun m!632055 () Bool)

(assert (=> b!659021 m!632055))

(declare-fun m!632057 () Bool)

(assert (=> b!659021 m!632057))

(declare-fun m!632059 () Bool)

(assert (=> b!659021 m!632059))

(declare-fun m!632061 () Bool)

(assert (=> b!659021 m!632061))

(declare-fun m!632063 () Bool)

(assert (=> b!659021 m!632063))

(assert (=> b!659021 m!632051))

(declare-fun m!632065 () Bool)

(assert (=> b!659021 m!632065))

(declare-fun m!632067 () Bool)

(assert (=> b!659022 m!632067))

(declare-fun m!632069 () Bool)

(assert (=> b!659032 m!632069))

(declare-fun m!632071 () Bool)

(assert (=> b!659019 m!632071))

(declare-fun m!632073 () Bool)

(assert (=> b!659019 m!632073))

(declare-fun m!632075 () Bool)

(assert (=> b!659030 m!632075))

(assert (=> b!659030 m!632051))

(assert (=> b!659030 m!632051))

(declare-fun m!632077 () Bool)

(assert (=> b!659030 m!632077))

(declare-fun m!632079 () Bool)

(assert (=> b!659020 m!632079))

(declare-fun m!632081 () Bool)

(assert (=> b!659020 m!632081))

(assert (=> b!659020 m!632051))

(assert (=> b!659020 m!632071))

(assert (=> b!659020 m!632051))

(declare-fun m!632083 () Bool)

(assert (=> b!659020 m!632083))

(declare-fun m!632085 () Bool)

(assert (=> b!659020 m!632085))

(declare-fun m!632087 () Bool)

(assert (=> b!659020 m!632087))

(declare-fun m!632089 () Bool)

(assert (=> b!659020 m!632089))

(assert (=> b!659018 m!632071))

(declare-fun m!632091 () Bool)

(assert (=> b!659018 m!632091))

(assert (=> b!659018 m!632051))

(assert (=> b!659029 m!632051))

(assert (=> b!659029 m!632051))

(declare-fun m!632093 () Bool)

(assert (=> b!659029 m!632093))

(declare-fun m!632095 () Bool)

(assert (=> b!659025 m!632095))

(declare-fun m!632097 () Bool)

(assert (=> b!659031 m!632097))

(assert (=> b!659017 m!632051))

(assert (=> b!659017 m!632051))

(declare-fun m!632099 () Bool)

(assert (=> b!659017 m!632099))

(assert (=> b!659039 m!632051))

(assert (=> b!659039 m!632051))

(declare-fun m!632101 () Bool)

(assert (=> b!659039 m!632101))

(declare-fun m!632103 () Bool)

(assert (=> b!659035 m!632103))

(declare-fun m!632105 () Bool)

(assert (=> b!659034 m!632105))

(assert (=> b!659023 m!632051))

(assert (=> b!659023 m!632051))

(assert (=> b!659023 m!632101))

(assert (=> b!659033 m!632051))

(declare-fun m!632107 () Bool)

(assert (=> b!659033 m!632107))

(assert (=> b!659033 m!632051))

(declare-fun m!632109 () Bool)

(assert (=> b!659033 m!632109))

(assert (=> b!659033 m!632051))

(assert (=> b!659033 m!632099))

(assert (=> b!659033 m!632051))

(assert (=> b!659033 m!632051))

(declare-fun m!632111 () Bool)

(assert (=> b!659033 m!632111))

(declare-fun m!632113 () Bool)

(assert (=> b!659033 m!632113))

(declare-fun m!632115 () Bool)

(assert (=> b!659033 m!632115))

(assert (=> b!659033 m!632059))

(assert (=> b!659033 m!632061))

(declare-fun m!632117 () Bool)

(assert (=> start!59626 m!632117))

(declare-fun m!632119 () Bool)

(assert (=> start!59626 m!632119))

(push 1)

(assert (not b!659023))

(assert (not b!659032))

(assert (not b!659029))

(assert (not b!659020))

(assert (not b!659017))

(assert (not b!659021))

(assert (not b!659022))

(assert (not b!659030))

(assert (not b!659039))

(assert (not b!659035))

(assert (not start!59626))

(assert (not b!659025))

(assert (not b!659033))

(assert (not b!659034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!659117 () Bool)

(declare-fun e!378664 () SeekEntryResult!7010)

(declare-fun lt!308527 () SeekEntryResult!7010)

(assert (=> b!659117 (= e!378664 (MissingZero!7010 (index!30406 lt!308527)))))

(declare-fun b!659118 () Bool)

(declare-fun e!378666 () SeekEntryResult!7010)

(assert (=> b!659118 (= e!378666 (Found!7010 (index!30406 lt!308527)))))

(declare-fun d!92837 () Bool)

(declare-fun lt!308529 () SeekEntryResult!7010)

(assert (=> d!92837 (and (or (is-Undefined!7010 lt!308529) (not (is-Found!7010 lt!308529)) (and (bvsge (index!30405 lt!308529) #b00000000000000000000000000000000) (bvslt (index!30405 lt!308529) (size!18927 a!2986)))) (or (is-Undefined!7010 lt!308529) (is-Found!7010 lt!308529) (not (is-MissingZero!7010 lt!308529)) (and (bvsge (index!30404 lt!308529) #b00000000000000000000000000000000) (bvslt (index!30404 lt!308529) (size!18927 a!2986)))) (or (is-Undefined!7010 lt!308529) (is-Found!7010 lt!308529) (is-MissingZero!7010 lt!308529) (not (is-MissingVacant!7010 lt!308529)) (and (bvsge (index!30407 lt!308529) #b00000000000000000000000000000000) (bvslt (index!30407 lt!308529) (size!18927 a!2986)))) (or (is-Undefined!7010 lt!308529) (ite (is-Found!7010 lt!308529) (= (select (arr!18563 a!2986) (index!30405 lt!308529)) k!1786) (ite (is-MissingZero!7010 lt!308529) (= (select (arr!18563 a!2986) (index!30404 lt!308529)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7010 lt!308529) (= (select (arr!18563 a!2986) (index!30407 lt!308529)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!378665 () SeekEntryResult!7010)

(assert (=> d!92837 (= lt!308529 e!378665)))

(declare-fun c!76167 () Bool)

(assert (=> d!92837 (= c!76167 (and (is-Intermediate!7010 lt!308527) (undefined!7822 lt!308527)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38740 (_ BitVec 32)) SeekEntryResult!7010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92837 (= lt!308527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92837 (validMask!0 mask!3053)))

(assert (=> d!92837 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!308529)))

(declare-fun b!659119 () Bool)

(assert (=> b!659119 (= e!378665 Undefined!7010)))

(declare-fun b!659120 () Bool)

(assert (=> b!659120 (= e!378664 (seekKeyOrZeroReturnVacant!0 (x!59214 lt!308527) (index!30406 lt!308527) (index!30406 lt!308527) k!1786 a!2986 mask!3053))))

(declare-fun b!659121 () Bool)

(assert (=> b!659121 (= e!378665 e!378666)))

(declare-fun lt!308528 () (_ BitVec 64))

(assert (=> b!659121 (= lt!308528 (select (arr!18563 a!2986) (index!30406 lt!308527)))))

(declare-fun c!76169 () Bool)

(assert (=> b!659121 (= c!76169 (= lt!308528 k!1786))))

(declare-fun b!659122 () Bool)

(declare-fun c!76168 () Bool)

(assert (=> b!659122 (= c!76168 (= lt!308528 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!659122 (= e!378666 e!378664)))

(assert (= (and d!92837 c!76167) b!659119))

(assert (= (and d!92837 (not c!76167)) b!659121))

(assert (= (and b!659121 c!76169) b!659118))

(assert (= (and b!659121 (not c!76169)) b!659122))

(assert (= (and b!659122 c!76168) b!659117))

(assert (= (and b!659122 (not c!76168)) b!659120))

(declare-fun m!632187 () Bool)

(assert (=> d!92837 m!632187))

(declare-fun m!632189 () Bool)

(assert (=> d!92837 m!632189))

(assert (=> d!92837 m!632117))

(assert (=> d!92837 m!632187))

(declare-fun m!632191 () Bool)

(assert (=> d!92837 m!632191))

(declare-fun m!632193 () Bool)

(assert (=> d!92837 m!632193))

(declare-fun m!632195 () Bool)

(assert (=> d!92837 m!632195))

(declare-fun m!632197 () Bool)

(assert (=> b!659120 m!632197))

(declare-fun m!632199 () Bool)

(assert (=> b!659121 m!632199))

(assert (=> b!659022 d!92837))

(declare-fun d!92865 () Bool)

(declare-fun res!427533 () Bool)

(declare-fun e!378685 () Bool)

(assert (=> d!92865 (=> res!427533 e!378685)))

(assert (=> d!92865 (= res!427533 (= (select (arr!18563 lt!308482) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18563 a!2986) j!136)))))

(assert (=> d!92865 (= (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!378685)))

(declare-fun b!659143 () Bool)

(declare-fun e!378686 () Bool)

(assert (=> b!659143 (= e!378685 e!378686)))

(declare-fun res!427534 () Bool)

(assert (=> b!659143 (=> (not res!427534) (not e!378686))))

(assert (=> b!659143 (= res!427534 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18927 lt!308482)))))

(declare-fun b!659144 () Bool)

(assert (=> b!659144 (= e!378686 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92865 (not res!427533)) b!659143))

(assert (= (and b!659143 res!427534) b!659144))

(declare-fun m!632209 () Bool)

(assert (=> d!92865 m!632209))

(assert (=> b!659144 m!632051))

(declare-fun m!632211 () Bool)

(assert (=> b!659144 m!632211))

(assert (=> b!659033 d!92865))

(declare-fun d!92871 () Bool)

(assert (=> d!92871 (arrayNoDuplicates!0 lt!308482 index!984 Nil!12654)))

(declare-fun lt!308532 () Unit!22944)

(declare-fun choose!39 (array!38740 (_ BitVec 32) (_ BitVec 32)) Unit!22944)

(assert (=> d!92871 (= lt!308532 (choose!39 lt!308482 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92871 (bvslt (size!18927 lt!308482) #b01111111111111111111111111111111)))

(assert (=> d!92871 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!308482 #b00000000000000000000000000000000 index!984) lt!308532)))

(declare-fun bs!19598 () Bool)

(assert (= bs!19598 d!92871))

(assert (=> bs!19598 m!632113))

(declare-fun m!632221 () Bool)

(assert (=> bs!19598 m!632221))

(assert (=> b!659033 d!92871))

(declare-fun d!92875 () Bool)

(assert (=> d!92875 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308539 () Unit!22944)

(declare-fun choose!114 (array!38740 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22944)

(assert (=> d!92875 (= lt!308539 (choose!114 lt!308482 (select (arr!18563 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92875 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92875 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308482 (select (arr!18563 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!308539)))

(declare-fun bs!19599 () Bool)

(assert (= bs!19599 d!92875))

(assert (=> bs!19599 m!632051))

(assert (=> bs!19599 m!632109))

(assert (=> bs!19599 m!632051))

(declare-fun m!632225 () Bool)

(assert (=> bs!19599 m!632225))

(assert (=> b!659033 d!92875))

(declare-fun d!92879 () Bool)

(assert (=> d!92879 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18927 lt!308482)) (not (= (select (arr!18563 lt!308482) index!984) (select (arr!18563 a!2986) j!136))))))

(declare-fun lt!308546 () Unit!22944)

(declare-fun choose!21 (array!38740 (_ BitVec 64) (_ BitVec 32) List!12657) Unit!22944)

(assert (=> d!92879 (= lt!308546 (choose!21 lt!308482 (select (arr!18563 a!2986) j!136) index!984 Nil!12654))))

(assert (=> d!92879 (bvslt (size!18927 lt!308482) #b01111111111111111111111111111111)))

(assert (=> d!92879 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308482 (select (arr!18563 a!2986) j!136) index!984 Nil!12654) lt!308546)))

(declare-fun bs!19602 () Bool)

(assert (= bs!19602 d!92879))

(declare-fun m!632241 () Bool)

(assert (=> bs!19602 m!632241))

(assert (=> bs!19602 m!632051))

(declare-fun m!632243 () Bool)

(assert (=> bs!19602 m!632243))

(assert (=> b!659033 d!92879))

(declare-fun b!659175 () Bool)

(declare-fun e!378712 () Bool)

(declare-fun call!33895 () Bool)

(assert (=> b!659175 (= e!378712 call!33895)))

(declare-fun bm!33892 () Bool)

(declare-fun c!76177 () Bool)

(assert (=> bm!33892 (= call!33895 (arrayNoDuplicates!0 lt!308482 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!76177 (Cons!12653 (select (arr!18563 lt!308482) #b00000000000000000000000000000000) Nil!12654) Nil!12654)))))

(declare-fun b!659176 () Bool)

(declare-fun e!378714 () Bool)

(declare-fun e!378713 () Bool)

(assert (=> b!659176 (= e!378714 e!378713)))

(declare-fun res!427556 () Bool)

(assert (=> b!659176 (=> (not res!427556) (not e!378713))))

(declare-fun e!378715 () Bool)

(assert (=> b!659176 (= res!427556 (not e!378715))))

(declare-fun res!427555 () Bool)

(assert (=> b!659176 (=> (not res!427555) (not e!378715))))

(assert (=> b!659176 (= res!427555 (validKeyInArray!0 (select (arr!18563 lt!308482) #b00000000000000000000000000000000)))))

(declare-fun b!659177 () Bool)

(declare-fun contains!3199 (List!12657 (_ BitVec 64)) Bool)

(assert (=> b!659177 (= e!378715 (contains!3199 Nil!12654 (select (arr!18563 lt!308482) #b00000000000000000000000000000000)))))

(declare-fun d!92887 () Bool)

(declare-fun res!427557 () Bool)

(assert (=> d!92887 (=> res!427557 e!378714)))

(assert (=> d!92887 (= res!427557 (bvsge #b00000000000000000000000000000000 (size!18927 lt!308482)))))

(assert (=> d!92887 (= (arrayNoDuplicates!0 lt!308482 #b00000000000000000000000000000000 Nil!12654) e!378714)))

(declare-fun b!659178 () Bool)

(assert (=> b!659178 (= e!378713 e!378712)))

(assert (=> b!659178 (= c!76177 (validKeyInArray!0 (select (arr!18563 lt!308482) #b00000000000000000000000000000000)))))

(declare-fun b!659179 () Bool)

(assert (=> b!659179 (= e!378712 call!33895)))

(assert (= (and d!92887 (not res!427557)) b!659176))

(assert (= (and b!659176 res!427555) b!659177))

(assert (= (and b!659176 res!427556) b!659178))

(assert (= (and b!659178 c!76177) b!659175))

(assert (= (and b!659178 (not c!76177)) b!659179))

(assert (= (or b!659175 b!659179) bm!33892))

(declare-fun m!632257 () Bool)

(assert (=> bm!33892 m!632257))

(declare-fun m!632259 () Bool)

(assert (=> bm!33892 m!632259))

(assert (=> b!659176 m!632257))

(assert (=> b!659176 m!632257))

(declare-fun m!632261 () Bool)

(assert (=> b!659176 m!632261))

(assert (=> b!659177 m!632257))

(assert (=> b!659177 m!632257))

(declare-fun m!632263 () Bool)

(assert (=> b!659177 m!632263))

(assert (=> b!659178 m!632257))

(assert (=> b!659178 m!632257))

(assert (=> b!659178 m!632261))

(assert (=> b!659033 d!92887))

(declare-fun b!659180 () Bool)

(declare-fun e!378716 () Bool)

(declare-fun call!33896 () Bool)

(assert (=> b!659180 (= e!378716 call!33896)))

(declare-fun bm!33893 () Bool)

(declare-fun c!76178 () Bool)

(assert (=> bm!33893 (= call!33896 (arrayNoDuplicates!0 lt!308482 (bvadd index!984 #b00000000000000000000000000000001) (ite c!76178 (Cons!12653 (select (arr!18563 lt!308482) index!984) Nil!12654) Nil!12654)))))

(declare-fun b!659181 () Bool)

(declare-fun e!378718 () Bool)

(declare-fun e!378717 () Bool)

(assert (=> b!659181 (= e!378718 e!378717)))

(declare-fun res!427559 () Bool)

(assert (=> b!659181 (=> (not res!427559) (not e!378717))))

(declare-fun e!378719 () Bool)

(assert (=> b!659181 (= res!427559 (not e!378719))))

(declare-fun res!427558 () Bool)

(assert (=> b!659181 (=> (not res!427558) (not e!378719))))

(assert (=> b!659181 (= res!427558 (validKeyInArray!0 (select (arr!18563 lt!308482) index!984)))))

(declare-fun b!659182 () Bool)

(assert (=> b!659182 (= e!378719 (contains!3199 Nil!12654 (select (arr!18563 lt!308482) index!984)))))

(declare-fun d!92897 () Bool)

(declare-fun res!427560 () Bool)

(assert (=> d!92897 (=> res!427560 e!378718)))

(assert (=> d!92897 (= res!427560 (bvsge index!984 (size!18927 lt!308482)))))

(assert (=> d!92897 (= (arrayNoDuplicates!0 lt!308482 index!984 Nil!12654) e!378718)))

(declare-fun b!659183 () Bool)

(assert (=> b!659183 (= e!378717 e!378716)))

(assert (=> b!659183 (= c!76178 (validKeyInArray!0 (select (arr!18563 lt!308482) index!984)))))

(declare-fun b!659184 () Bool)

(assert (=> b!659184 (= e!378716 call!33896)))

(assert (= (and d!92897 (not res!427560)) b!659181))

(assert (= (and b!659181 res!427558) b!659182))

(assert (= (and b!659181 res!427559) b!659183))

(assert (= (and b!659183 c!76178) b!659180))

(assert (= (and b!659183 (not c!76178)) b!659184))

(assert (= (or b!659180 b!659184) bm!33893))

(assert (=> bm!33893 m!632241))

(declare-fun m!632265 () Bool)

(assert (=> bm!33893 m!632265))

(assert (=> b!659181 m!632241))

(assert (=> b!659181 m!632241))

(declare-fun m!632267 () Bool)

(assert (=> b!659181 m!632267))

(assert (=> b!659182 m!632241))

(assert (=> b!659182 m!632241))

(declare-fun m!632269 () Bool)

(assert (=> b!659182 m!632269))

(assert (=> b!659183 m!632241))

(assert (=> b!659183 m!632241))

(assert (=> b!659183 m!632267))

(assert (=> b!659033 d!92897))

(declare-fun d!92899 () Bool)

(declare-fun res!427563 () Bool)

(declare-fun e!378722 () Bool)

(assert (=> d!92899 (=> res!427563 e!378722)))

(assert (=> d!92899 (= res!427563 (= (select (arr!18563 lt!308482) j!136) (select (arr!18563 a!2986) j!136)))))

(assert (=> d!92899 (= (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) j!136) e!378722)))

(declare-fun b!659187 () Bool)

(declare-fun e!378723 () Bool)

(assert (=> b!659187 (= e!378722 e!378723)))

(declare-fun res!427564 () Bool)

(assert (=> b!659187 (=> (not res!427564) (not e!378723))))

(assert (=> b!659187 (= res!427564 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18927 lt!308482)))))

(declare-fun b!659188 () Bool)

(assert (=> b!659188 (= e!378723 (arrayContainsKey!0 lt!308482 (select (arr!18563 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92899 (not res!427563)) b!659187))

(assert (= (and b!659187 res!427564) b!659188))

(declare-fun m!632271 () Bool)

(assert (=> d!92899 m!632271))

(assert (=> b!659188 m!632051))

(declare-fun m!632273 () Bool)

(assert (=> b!659188 m!632273))

(assert (=> b!659033 d!92899))

(declare-fun d!92901 () Bool)

(declare-fun e!378727 () Bool)

(assert (=> d!92901 e!378727))

(declare-fun res!427568 () Bool)

(assert (=> d!92901 (=> (not res!427568) (not e!378727))))

(assert (=> d!92901 (= res!427568 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18927 a!2986))))))

(declare-fun lt!308559 () Unit!22944)

(declare-fun choose!41 (array!38740 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12657) Unit!22944)

(assert (=> d!92901 (= lt!308559 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12654))))

(assert (=> d!92901 (bvslt (size!18927 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92901 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12654) lt!308559)))

(declare-fun b!659192 () Bool)

(assert (=> b!659192 (= e!378727 (arrayNoDuplicates!0 (array!38741 (store (arr!18563 a!2986) i!1108 k!1786) (size!18927 a!2986)) #b00000000000000000000000000000000 Nil!12654))))

(assert (= (and d!92901 res!427568) b!659192))

(declare-fun m!632279 () Bool)

(assert (=> d!92901 m!632279))

(assert (=> b!659192 m!632071))

(declare-fun m!632281 () Bool)

(assert (=> b!659192 m!632281))

(assert (=> b!659033 d!92901))

(declare-fun d!92905 () Bool)

(declare-fun res!427586 () Bool)

(declare-fun e!378756 () Bool)

(assert (=> d!92905 (=> res!427586 e!378756)))

(assert (=> d!92905 (= res!427586 (bvsge #b00000000000000000000000000000000 (size!18927 a!2986)))))

(assert (=> d!92905 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!378756)))

(declare-fun b!659233 () Bool)

(declare-fun e!378757 () Bool)

(declare-fun e!378758 () Bool)

(assert (=> b!659233 (= e!378757 e!378758)))

(declare-fun lt!308572 () (_ BitVec 64))

(assert (=> b!659233 (= lt!308572 (select (arr!18563 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!308573 () Unit!22944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38740 (_ BitVec 64) (_ BitVec 32)) Unit!22944)

(assert (=> b!659233 (= lt!308573 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!308572 #b00000000000000000000000000000000))))

(assert (=> b!659233 (arrayContainsKey!0 a!2986 lt!308572 #b00000000000000000000000000000000)))

(declare-fun lt!308574 () Unit!22944)

(assert (=> b!659233 (= lt!308574 lt!308573)))

(declare-fun res!427585 () Bool)

(assert (=> b!659233 (= res!427585 (= (seekEntryOrOpen!0 (select (arr!18563 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!7010 #b00000000000000000000000000000000)))))

(assert (=> b!659233 (=> (not res!427585) (not e!378758))))

(declare-fun b!659234 () Bool)

(declare-fun call!33903 () Bool)

(assert (=> b!659234 (= e!378758 call!33903)))

(declare-fun b!659235 () Bool)

(assert (=> b!659235 (= e!378757 call!33903)))

(declare-fun b!659236 () Bool)

(assert (=> b!659236 (= e!378756 e!378757)))

(declare-fun c!76191 () Bool)

(assert (=> b!659236 (= c!76191 (validKeyInArray!0 (select (arr!18563 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33900 () Bool)

(assert (=> bm!33900 (= call!33903 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!92905 (not res!427586)) b!659236))

(assert (= (and b!659236 c!76191) b!659233))

(assert (= (and b!659236 (not c!76191)) b!659235))

(assert (= (and b!659233 res!427585) b!659234))

(assert (= (or b!659234 b!659235) bm!33900))

(declare-fun m!632297 () Bool)

(assert (=> b!659233 m!632297))

(declare-fun m!632299 () Bool)

(assert (=> b!659233 m!632299))

(declare-fun m!632301 () Bool)

(assert (=> b!659233 m!632301))

