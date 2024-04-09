; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59612 () Bool)

(assert start!59612)

(declare-fun b!658512 () Bool)

(declare-datatypes ((Unit!22874 0))(
  ( (Unit!22875) )
))
(declare-fun e!378315 () Unit!22874)

(declare-fun Unit!22876 () Unit!22874)

(assert (=> b!658512 (= e!378315 Unit!22876)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!427149 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38726 0))(
  ( (array!38727 (arr!18556 (Array (_ BitVec 32) (_ BitVec 64))) (size!18920 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38726)

(assert (=> b!658512 (= res!427149 (= (select (store (arr!18556 a!2986) i!1108 k0!1786) index!984) (select (arr!18556 a!2986) j!136)))))

(declare-fun e!378309 () Bool)

(assert (=> b!658512 (=> (not res!427149) (not e!378309))))

(assert (=> b!658512 e!378309))

(declare-fun c!76052 () Bool)

(assert (=> b!658512 (= c!76052 (bvslt j!136 index!984))))

(declare-fun lt!308051 () Unit!22874)

(declare-fun e!378308 () Unit!22874)

(assert (=> b!658512 (= lt!308051 e!378308)))

(declare-fun c!76055 () Bool)

(assert (=> b!658512 (= c!76055 (bvslt index!984 j!136))))

(declare-fun lt!308064 () Unit!22874)

(declare-fun e!378319 () Unit!22874)

(assert (=> b!658512 (= lt!308064 e!378319)))

(assert (=> b!658512 false))

(declare-fun b!658513 () Bool)

(declare-fun e!378310 () Bool)

(declare-fun e!378306 () Bool)

(assert (=> b!658513 (= e!378310 e!378306)))

(declare-fun res!427155 () Bool)

(assert (=> b!658513 (=> (not res!427155) (not e!378306))))

(declare-datatypes ((SeekEntryResult!7003 0))(
  ( (MissingZero!7003 (index!30376 (_ BitVec 32))) (Found!7003 (index!30377 (_ BitVec 32))) (Intermediate!7003 (undefined!7815 Bool) (index!30378 (_ BitVec 32)) (x!59191 (_ BitVec 32))) (Undefined!7003) (MissingVacant!7003 (index!30379 (_ BitVec 32))) )
))
(declare-fun lt!308050 () SeekEntryResult!7003)

(assert (=> b!658513 (= res!427155 (or (= lt!308050 (MissingZero!7003 i!1108)) (= lt!308050 (MissingVacant!7003 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38726 (_ BitVec 32)) SeekEntryResult!7003)

(assert (=> b!658513 (= lt!308050 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!658514 () Bool)

(declare-fun e!378316 () Bool)

(assert (=> b!658514 (= e!378306 e!378316)))

(declare-fun res!427153 () Bool)

(assert (=> b!658514 (=> (not res!427153) (not e!378316))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!658514 (= res!427153 (= (select (store (arr!18556 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!308067 () array!38726)

(assert (=> b!658514 (= lt!308067 (array!38727 (store (arr!18556 a!2986) i!1108 k0!1786) (size!18920 a!2986)))))

(declare-fun res!427151 () Bool)

(declare-fun b!658515 () Bool)

(declare-fun arrayContainsKey!0 (array!38726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658515 (= res!427151 (arrayContainsKey!0 lt!308067 (select (arr!18556 a!2986) j!136) j!136))))

(declare-fun e!378318 () Bool)

(assert (=> b!658515 (=> (not res!427151) (not e!378318))))

(declare-fun e!378312 () Bool)

(assert (=> b!658515 (= e!378312 e!378318)))

(declare-fun b!658516 () Bool)

(declare-fun e!378313 () Unit!22874)

(declare-fun Unit!22877 () Unit!22874)

(assert (=> b!658516 (= e!378313 Unit!22877)))

(assert (=> b!658516 false))

(declare-fun e!378307 () Bool)

(declare-fun b!658517 () Bool)

(assert (=> b!658517 (= e!378307 (arrayContainsKey!0 lt!308067 (select (arr!18556 a!2986) j!136) index!984))))

(declare-fun b!658518 () Bool)

(declare-fun e!378317 () Bool)

(assert (=> b!658518 (= e!378317 (not true))))

(declare-fun lt!308055 () Unit!22874)

(assert (=> b!658518 (= lt!308055 e!378315)))

(declare-fun c!76054 () Bool)

(declare-fun lt!308065 () SeekEntryResult!7003)

(assert (=> b!658518 (= c!76054 (= lt!308065 (Found!7003 index!984)))))

(declare-fun lt!308052 () Unit!22874)

(assert (=> b!658518 (= lt!308052 e!378313)))

(declare-fun c!76053 () Bool)

(assert (=> b!658518 (= c!76053 (= lt!308065 Undefined!7003))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!308058 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38726 (_ BitVec 32)) SeekEntryResult!7003)

(assert (=> b!658518 (= lt!308065 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308058 lt!308067 mask!3053))))

(declare-fun e!378314 () Bool)

(assert (=> b!658518 e!378314))

(declare-fun res!427143 () Bool)

(assert (=> b!658518 (=> (not res!427143) (not e!378314))))

(declare-fun lt!308057 () SeekEntryResult!7003)

(declare-fun lt!308062 () (_ BitVec 32))

(assert (=> b!658518 (= res!427143 (= lt!308057 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308062 vacantSpotIndex!68 lt!308058 lt!308067 mask!3053)))))

(assert (=> b!658518 (= lt!308057 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308062 vacantSpotIndex!68 (select (arr!18556 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658518 (= lt!308058 (select (store (arr!18556 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!308063 () Unit!22874)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38726 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22874)

(assert (=> b!658518 (= lt!308063 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308062 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658518 (= lt!308062 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658519 () Bool)

(declare-fun res!427150 () Bool)

(assert (=> b!658519 (=> (not res!427150) (not e!378310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658519 (= res!427150 (validKeyInArray!0 (select (arr!18556 a!2986) j!136)))))

(declare-fun b!658520 () Bool)

(assert (=> b!658520 false))

(declare-fun lt!308056 () Unit!22874)

(declare-datatypes ((List!12650 0))(
  ( (Nil!12647) (Cons!12646 (h!13691 (_ BitVec 64)) (t!18886 List!12650)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38726 (_ BitVec 64) (_ BitVec 32) List!12650) Unit!22874)

(assert (=> b!658520 (= lt!308056 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308067 (select (arr!18556 a!2986) j!136) index!984 Nil!12647))))

(declare-fun arrayNoDuplicates!0 (array!38726 (_ BitVec 32) List!12650) Bool)

(assert (=> b!658520 (arrayNoDuplicates!0 lt!308067 index!984 Nil!12647)))

(declare-fun lt!308059 () Unit!22874)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38726 (_ BitVec 32) (_ BitVec 32)) Unit!22874)

(assert (=> b!658520 (= lt!308059 (lemmaNoDuplicateFromThenFromBigger!0 lt!308067 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658520 (arrayNoDuplicates!0 lt!308067 #b00000000000000000000000000000000 Nil!12647)))

(declare-fun lt!308048 () Unit!22874)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38726 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12650) Unit!22874)

(assert (=> b!658520 (= lt!308048 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12647))))

(assert (=> b!658520 (arrayContainsKey!0 lt!308067 (select (arr!18556 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308061 () Unit!22874)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38726 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22874)

(assert (=> b!658520 (= lt!308061 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308067 (select (arr!18556 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658520 e!378307))

(declare-fun res!427156 () Bool)

(assert (=> b!658520 (=> (not res!427156) (not e!378307))))

(assert (=> b!658520 (= res!427156 (arrayContainsKey!0 lt!308067 (select (arr!18556 a!2986) j!136) j!136))))

(declare-fun Unit!22878 () Unit!22874)

(assert (=> b!658520 (= e!378319 Unit!22878)))

(declare-fun b!658521 () Bool)

(assert (=> b!658521 false))

(declare-fun lt!308066 () Unit!22874)

(assert (=> b!658521 (= lt!308066 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308067 (select (arr!18556 a!2986) j!136) j!136 Nil!12647))))

(assert (=> b!658521 (arrayNoDuplicates!0 lt!308067 j!136 Nil!12647)))

(declare-fun lt!308054 () Unit!22874)

(assert (=> b!658521 (= lt!308054 (lemmaNoDuplicateFromThenFromBigger!0 lt!308067 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658521 (arrayNoDuplicates!0 lt!308067 #b00000000000000000000000000000000 Nil!12647)))

(declare-fun lt!308049 () Unit!22874)

(assert (=> b!658521 (= lt!308049 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12647))))

(assert (=> b!658521 (arrayContainsKey!0 lt!308067 (select (arr!18556 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308053 () Unit!22874)

(assert (=> b!658521 (= lt!308053 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308067 (select (arr!18556 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22879 () Unit!22874)

(assert (=> b!658521 (= e!378308 Unit!22879)))

(declare-fun b!658522 () Bool)

(declare-fun res!427147 () Bool)

(assert (=> b!658522 (= res!427147 (bvsge j!136 index!984))))

(assert (=> b!658522 (=> res!427147 e!378312)))

(assert (=> b!658522 (= e!378309 e!378312)))

(declare-fun b!658523 () Bool)

(declare-fun Unit!22880 () Unit!22874)

(assert (=> b!658523 (= e!378308 Unit!22880)))

(declare-fun b!658524 () Bool)

(declare-fun res!427154 () Bool)

(assert (=> b!658524 (=> (not res!427154) (not e!378310))))

(assert (=> b!658524 (= res!427154 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658525 () Bool)

(assert (=> b!658525 (= e!378316 e!378317)))

(declare-fun res!427146 () Bool)

(assert (=> b!658525 (=> (not res!427146) (not e!378317))))

(declare-fun lt!308060 () SeekEntryResult!7003)

(assert (=> b!658525 (= res!427146 (and (= lt!308060 (Found!7003 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18556 a!2986) index!984) (select (arr!18556 a!2986) j!136))) (not (= (select (arr!18556 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658525 (= lt!308060 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18556 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658526 () Bool)

(declare-fun Unit!22881 () Unit!22874)

(assert (=> b!658526 (= e!378319 Unit!22881)))

(declare-fun b!658527 () Bool)

(declare-fun res!427157 () Bool)

(assert (=> b!658527 (=> (not res!427157) (not e!378306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38726 (_ BitVec 32)) Bool)

(assert (=> b!658527 (= res!427157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658528 () Bool)

(declare-fun res!427148 () Bool)

(assert (=> b!658528 (=> (not res!427148) (not e!378306))))

(assert (=> b!658528 (= res!427148 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18556 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658529 () Bool)

(declare-fun res!427152 () Bool)

(assert (=> b!658529 (=> (not res!427152) (not e!378306))))

(assert (=> b!658529 (= res!427152 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12647))))

(declare-fun b!658530 () Bool)

(declare-fun Unit!22882 () Unit!22874)

(assert (=> b!658530 (= e!378313 Unit!22882)))

(declare-fun b!658531 () Bool)

(assert (=> b!658531 (= e!378318 (arrayContainsKey!0 lt!308067 (select (arr!18556 a!2986) j!136) index!984))))

(declare-fun b!658532 () Bool)

(declare-fun res!427145 () Bool)

(assert (=> b!658532 (=> (not res!427145) (not e!378310))))

(assert (=> b!658532 (= res!427145 (validKeyInArray!0 k0!1786))))

(declare-fun b!658533 () Bool)

(declare-fun Unit!22883 () Unit!22874)

(assert (=> b!658533 (= e!378315 Unit!22883)))

(declare-fun res!427144 () Bool)

(assert (=> start!59612 (=> (not res!427144) (not e!378310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59612 (= res!427144 (validMask!0 mask!3053))))

(assert (=> start!59612 e!378310))

(assert (=> start!59612 true))

(declare-fun array_inv!14330 (array!38726) Bool)

(assert (=> start!59612 (array_inv!14330 a!2986)))

(declare-fun b!658534 () Bool)

(declare-fun res!427142 () Bool)

(assert (=> b!658534 (=> (not res!427142) (not e!378310))))

(assert (=> b!658534 (= res!427142 (and (= (size!18920 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18920 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18920 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658535 () Bool)

(assert (=> b!658535 (= e!378314 (= lt!308060 lt!308057))))

(assert (= (and start!59612 res!427144) b!658534))

(assert (= (and b!658534 res!427142) b!658519))

(assert (= (and b!658519 res!427150) b!658532))

(assert (= (and b!658532 res!427145) b!658524))

(assert (= (and b!658524 res!427154) b!658513))

(assert (= (and b!658513 res!427155) b!658527))

(assert (= (and b!658527 res!427157) b!658529))

(assert (= (and b!658529 res!427152) b!658528))

(assert (= (and b!658528 res!427148) b!658514))

(assert (= (and b!658514 res!427153) b!658525))

(assert (= (and b!658525 res!427146) b!658518))

(assert (= (and b!658518 res!427143) b!658535))

(assert (= (and b!658518 c!76053) b!658516))

(assert (= (and b!658518 (not c!76053)) b!658530))

(assert (= (and b!658518 c!76054) b!658512))

(assert (= (and b!658518 (not c!76054)) b!658533))

(assert (= (and b!658512 res!427149) b!658522))

(assert (= (and b!658522 (not res!427147)) b!658515))

(assert (= (and b!658515 res!427151) b!658531))

(assert (= (and b!658512 c!76052) b!658521))

(assert (= (and b!658512 (not c!76052)) b!658523))

(assert (= (and b!658512 c!76055) b!658520))

(assert (= (and b!658512 (not c!76055)) b!658526))

(assert (= (and b!658520 res!427156) b!658517))

(declare-fun m!631561 () Bool)

(assert (=> b!658518 m!631561))

(declare-fun m!631563 () Bool)

(assert (=> b!658518 m!631563))

(declare-fun m!631565 () Bool)

(assert (=> b!658518 m!631565))

(declare-fun m!631567 () Bool)

(assert (=> b!658518 m!631567))

(assert (=> b!658518 m!631565))

(declare-fun m!631569 () Bool)

(assert (=> b!658518 m!631569))

(declare-fun m!631571 () Bool)

(assert (=> b!658518 m!631571))

(declare-fun m!631573 () Bool)

(assert (=> b!658518 m!631573))

(declare-fun m!631575 () Bool)

(assert (=> b!658518 m!631575))

(assert (=> b!658521 m!631565))

(assert (=> b!658521 m!631565))

(declare-fun m!631577 () Bool)

(assert (=> b!658521 m!631577))

(declare-fun m!631579 () Bool)

(assert (=> b!658521 m!631579))

(declare-fun m!631581 () Bool)

(assert (=> b!658521 m!631581))

(assert (=> b!658521 m!631565))

(declare-fun m!631583 () Bool)

(assert (=> b!658521 m!631583))

(assert (=> b!658521 m!631565))

(declare-fun m!631585 () Bool)

(assert (=> b!658521 m!631585))

(declare-fun m!631587 () Bool)

(assert (=> b!658521 m!631587))

(declare-fun m!631589 () Bool)

(assert (=> b!658521 m!631589))

(declare-fun m!631591 () Bool)

(assert (=> b!658524 m!631591))

(declare-fun m!631593 () Bool)

(assert (=> b!658527 m!631593))

(declare-fun m!631595 () Bool)

(assert (=> b!658529 m!631595))

(assert (=> b!658515 m!631565))

(assert (=> b!658515 m!631565))

(declare-fun m!631597 () Bool)

(assert (=> b!658515 m!631597))

(assert (=> b!658531 m!631565))

(assert (=> b!658531 m!631565))

(declare-fun m!631599 () Bool)

(assert (=> b!658531 m!631599))

(assert (=> b!658519 m!631565))

(assert (=> b!658519 m!631565))

(declare-fun m!631601 () Bool)

(assert (=> b!658519 m!631601))

(assert (=> b!658517 m!631565))

(assert (=> b!658517 m!631565))

(assert (=> b!658517 m!631599))

(declare-fun m!631603 () Bool)

(assert (=> b!658532 m!631603))

(declare-fun m!631605 () Bool)

(assert (=> b!658525 m!631605))

(assert (=> b!658525 m!631565))

(assert (=> b!658525 m!631565))

(declare-fun m!631607 () Bool)

(assert (=> b!658525 m!631607))

(declare-fun m!631609 () Bool)

(assert (=> b!658528 m!631609))

(declare-fun m!631611 () Bool)

(assert (=> b!658513 m!631611))

(declare-fun m!631613 () Bool)

(assert (=> start!59612 m!631613))

(declare-fun m!631615 () Bool)

(assert (=> start!59612 m!631615))

(assert (=> b!658514 m!631569))

(declare-fun m!631617 () Bool)

(assert (=> b!658514 m!631617))

(assert (=> b!658512 m!631569))

(declare-fun m!631619 () Bool)

(assert (=> b!658512 m!631619))

(assert (=> b!658512 m!631565))

(assert (=> b!658520 m!631565))

(declare-fun m!631621 () Bool)

(assert (=> b!658520 m!631621))

(declare-fun m!631623 () Bool)

(assert (=> b!658520 m!631623))

(assert (=> b!658520 m!631565))

(declare-fun m!631625 () Bool)

(assert (=> b!658520 m!631625))

(assert (=> b!658520 m!631565))

(declare-fun m!631627 () Bool)

(assert (=> b!658520 m!631627))

(assert (=> b!658520 m!631589))

(assert (=> b!658520 m!631565))

(assert (=> b!658520 m!631597))

(assert (=> b!658520 m!631565))

(assert (=> b!658520 m!631581))

(declare-fun m!631629 () Bool)

(assert (=> b!658520 m!631629))

(check-sat (not b!658517) (not b!658527) (not b!658515) (not b!658520) (not b!658529) (not b!658521) (not b!658525) (not start!59612) (not b!658524) (not b!658518) (not b!658519) (not b!658513) (not b!658531) (not b!658532))
(check-sat)
