; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57000 () Bool)

(assert start!57000)

(declare-fun b!630505 () Bool)

(declare-fun res!407688 () Bool)

(declare-fun e!360529 () Bool)

(assert (=> b!630505 (=> (not res!407688) (not e!360529))))

(declare-datatypes ((array!38037 0))(
  ( (array!38038 (arr!18249 (Array (_ BitVec 32) (_ BitVec 64))) (size!18613 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38037)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38037 (_ BitVec 32)) Bool)

(assert (=> b!630505 (= res!407688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!407689 () Bool)

(declare-fun e!360532 () Bool)

(assert (=> start!57000 (=> (not res!407689) (not e!360532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57000 (= res!407689 (validMask!0 mask!3053))))

(assert (=> start!57000 e!360532))

(assert (=> start!57000 true))

(declare-fun array_inv!14023 (array!38037) Bool)

(assert (=> start!57000 (array_inv!14023 a!2986)))

(declare-fun b!630506 () Bool)

(declare-datatypes ((Unit!21142 0))(
  ( (Unit!21143) )
))
(declare-fun e!360531 () Unit!21142)

(declare-fun Unit!21144 () Unit!21142)

(assert (=> b!630506 (= e!360531 Unit!21144)))

(assert (=> b!630506 false))

(declare-fun b!630507 () Bool)

(declare-fun res!407684 () Bool)

(assert (=> b!630507 (=> (not res!407684) (not e!360532))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630507 (= res!407684 (validKeyInArray!0 k!1786))))

(declare-fun b!630508 () Bool)

(assert (=> b!630508 (= e!360532 e!360529)))

(declare-fun res!407680 () Bool)

(assert (=> b!630508 (=> (not res!407680) (not e!360529))))

(declare-datatypes ((SeekEntryResult!6696 0))(
  ( (MissingZero!6696 (index!29073 (_ BitVec 32))) (Found!6696 (index!29074 (_ BitVec 32))) (Intermediate!6696 (undefined!7508 Bool) (index!29075 (_ BitVec 32)) (x!57843 (_ BitVec 32))) (Undefined!6696) (MissingVacant!6696 (index!29076 (_ BitVec 32))) )
))
(declare-fun lt!291271 () SeekEntryResult!6696)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630508 (= res!407680 (or (= lt!291271 (MissingZero!6696 i!1108)) (= lt!291271 (MissingVacant!6696 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38037 (_ BitVec 32)) SeekEntryResult!6696)

(assert (=> b!630508 (= lt!291271 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630509 () Bool)

(declare-fun res!407682 () Bool)

(assert (=> b!630509 (=> (not res!407682) (not e!360532))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630509 (= res!407682 (and (= (size!18613 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18613 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18613 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630510 () Bool)

(declare-fun e!360535 () Bool)

(declare-fun e!360534 () Bool)

(assert (=> b!630510 (= e!360535 e!360534)))

(declare-fun res!407683 () Bool)

(assert (=> b!630510 (=> (not res!407683) (not e!360534))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!291272 () SeekEntryResult!6696)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630510 (= res!407683 (and (= lt!291272 (Found!6696 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18249 a!2986) index!984) (select (arr!18249 a!2986) j!136))) (not (= (select (arr!18249 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38037 (_ BitVec 32)) SeekEntryResult!6696)

(assert (=> b!630510 (= lt!291272 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18249 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630511 () Bool)

(declare-fun res!407687 () Bool)

(assert (=> b!630511 (=> (not res!407687) (not e!360529))))

(declare-datatypes ((List!12343 0))(
  ( (Nil!12340) (Cons!12339 (h!13384 (_ BitVec 64)) (t!18579 List!12343)) )
))
(declare-fun arrayNoDuplicates!0 (array!38037 (_ BitVec 32) List!12343) Bool)

(assert (=> b!630511 (= res!407687 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12340))))

(declare-fun b!630512 () Bool)

(declare-fun Unit!21145 () Unit!21142)

(assert (=> b!630512 (= e!360531 Unit!21145)))

(declare-fun b!630513 () Bool)

(declare-fun e!360530 () Bool)

(declare-fun lt!291269 () SeekEntryResult!6696)

(assert (=> b!630513 (= e!360530 (= lt!291272 lt!291269))))

(declare-fun b!630514 () Bool)

(declare-fun res!407685 () Bool)

(assert (=> b!630514 (=> (not res!407685) (not e!360529))))

(assert (=> b!630514 (= res!407685 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18249 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630515 () Bool)

(assert (=> b!630515 (= e!360534 (not true))))

(declare-fun lt!291273 () Unit!21142)

(assert (=> b!630515 (= lt!291273 e!360531)))

(declare-fun c!71780 () Bool)

(declare-fun lt!291270 () (_ BitVec 64))

(declare-fun lt!291266 () array!38037)

(assert (=> b!630515 (= c!71780 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291270 lt!291266 mask!3053) Undefined!6696))))

(assert (=> b!630515 e!360530))

(declare-fun res!407690 () Bool)

(assert (=> b!630515 (=> (not res!407690) (not e!360530))))

(declare-fun lt!291267 () (_ BitVec 32))

(assert (=> b!630515 (= res!407690 (= lt!291269 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291267 vacantSpotIndex!68 lt!291270 lt!291266 mask!3053)))))

(assert (=> b!630515 (= lt!291269 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291267 vacantSpotIndex!68 (select (arr!18249 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630515 (= lt!291270 (select (store (arr!18249 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291268 () Unit!21142)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38037 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21142)

(assert (=> b!630515 (= lt!291268 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291267 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630515 (= lt!291267 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630516 () Bool)

(assert (=> b!630516 (= e!360529 e!360535)))

(declare-fun res!407686 () Bool)

(assert (=> b!630516 (=> (not res!407686) (not e!360535))))

(assert (=> b!630516 (= res!407686 (= (select (store (arr!18249 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630516 (= lt!291266 (array!38038 (store (arr!18249 a!2986) i!1108 k!1786) (size!18613 a!2986)))))

(declare-fun b!630517 () Bool)

(declare-fun res!407681 () Bool)

(assert (=> b!630517 (=> (not res!407681) (not e!360532))))

(assert (=> b!630517 (= res!407681 (validKeyInArray!0 (select (arr!18249 a!2986) j!136)))))

(declare-fun b!630518 () Bool)

(declare-fun res!407679 () Bool)

(assert (=> b!630518 (=> (not res!407679) (not e!360532))))

(declare-fun arrayContainsKey!0 (array!38037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630518 (= res!407679 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!57000 res!407689) b!630509))

(assert (= (and b!630509 res!407682) b!630517))

(assert (= (and b!630517 res!407681) b!630507))

(assert (= (and b!630507 res!407684) b!630518))

(assert (= (and b!630518 res!407679) b!630508))

(assert (= (and b!630508 res!407680) b!630505))

(assert (= (and b!630505 res!407688) b!630511))

(assert (= (and b!630511 res!407687) b!630514))

(assert (= (and b!630514 res!407685) b!630516))

(assert (= (and b!630516 res!407686) b!630510))

(assert (= (and b!630510 res!407683) b!630515))

(assert (= (and b!630515 res!407690) b!630513))

(assert (= (and b!630515 c!71780) b!630506))

(assert (= (and b!630515 (not c!71780)) b!630512))

(declare-fun m!605529 () Bool)

(assert (=> b!630515 m!605529))

(declare-fun m!605531 () Bool)

(assert (=> b!630515 m!605531))

(declare-fun m!605533 () Bool)

(assert (=> b!630515 m!605533))

(declare-fun m!605535 () Bool)

(assert (=> b!630515 m!605535))

(declare-fun m!605537 () Bool)

(assert (=> b!630515 m!605537))

(declare-fun m!605539 () Bool)

(assert (=> b!630515 m!605539))

(assert (=> b!630515 m!605535))

(declare-fun m!605541 () Bool)

(assert (=> b!630515 m!605541))

(declare-fun m!605543 () Bool)

(assert (=> b!630515 m!605543))

(declare-fun m!605545 () Bool)

(assert (=> b!630518 m!605545))

(declare-fun m!605547 () Bool)

(assert (=> start!57000 m!605547))

(declare-fun m!605549 () Bool)

(assert (=> start!57000 m!605549))

(declare-fun m!605551 () Bool)

(assert (=> b!630511 m!605551))

(assert (=> b!630516 m!605537))

(declare-fun m!605553 () Bool)

(assert (=> b!630516 m!605553))

(declare-fun m!605555 () Bool)

(assert (=> b!630510 m!605555))

(assert (=> b!630510 m!605535))

(assert (=> b!630510 m!605535))

(declare-fun m!605557 () Bool)

(assert (=> b!630510 m!605557))

(declare-fun m!605559 () Bool)

(assert (=> b!630505 m!605559))

(declare-fun m!605561 () Bool)

(assert (=> b!630507 m!605561))

(assert (=> b!630517 m!605535))

(assert (=> b!630517 m!605535))

(declare-fun m!605563 () Bool)

(assert (=> b!630517 m!605563))

(declare-fun m!605565 () Bool)

(assert (=> b!630508 m!605565))

(declare-fun m!605567 () Bool)

(assert (=> b!630514 m!605567))

(push 1)

