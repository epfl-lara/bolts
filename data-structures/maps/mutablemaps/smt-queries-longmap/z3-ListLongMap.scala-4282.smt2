; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59618 () Bool)

(assert start!59618)

(declare-fun b!658728 () Bool)

(declare-fun e!378434 () Bool)

(assert (=> b!658728 (= e!378434 (not true))))

(declare-datatypes ((Unit!22904 0))(
  ( (Unit!22905) )
))
(declare-fun lt!308243 () Unit!22904)

(declare-fun e!378438 () Unit!22904)

(assert (=> b!658728 (= lt!308243 e!378438)))

(declare-fun c!76089 () Bool)

(declare-datatypes ((SeekEntryResult!7006 0))(
  ( (MissingZero!7006 (index!30388 (_ BitVec 32))) (Found!7006 (index!30389 (_ BitVec 32))) (Intermediate!7006 (undefined!7818 Bool) (index!30390 (_ BitVec 32)) (x!59202 (_ BitVec 32))) (Undefined!7006) (MissingVacant!7006 (index!30391 (_ BitVec 32))) )
))
(declare-fun lt!308240 () SeekEntryResult!7006)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!658728 (= c!76089 (= lt!308240 (Found!7006 index!984)))))

(declare-fun lt!308235 () Unit!22904)

(declare-fun e!378435 () Unit!22904)

(assert (=> b!658728 (= lt!308235 e!378435)))

(declare-fun c!76088 () Bool)

(assert (=> b!658728 (= c!76088 (= lt!308240 Undefined!7006))))

(declare-fun lt!308230 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38732 0))(
  ( (array!38733 (arr!18559 (Array (_ BitVec 32) (_ BitVec 64))) (size!18923 (_ BitVec 32))) )
))
(declare-fun lt!308237 () array!38732)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38732 (_ BitVec 32)) SeekEntryResult!7006)

(assert (=> b!658728 (= lt!308240 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!308230 lt!308237 mask!3053))))

(declare-fun e!378433 () Bool)

(assert (=> b!658728 e!378433))

(declare-fun res!427301 () Bool)

(assert (=> b!658728 (=> (not res!427301) (not e!378433))))

(declare-fun lt!308247 () (_ BitVec 32))

(declare-fun lt!308228 () SeekEntryResult!7006)

(assert (=> b!658728 (= res!427301 (= lt!308228 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308247 vacantSpotIndex!68 lt!308230 lt!308237 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38732)

(assert (=> b!658728 (= lt!308228 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!308247 vacantSpotIndex!68 (select (arr!18559 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!658728 (= lt!308230 (select (store (arr!18559 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!308236 () Unit!22904)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38732 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22904)

(assert (=> b!658728 (= lt!308236 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!308247 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658728 (= lt!308247 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658729 () Bool)

(declare-fun res!427287 () Bool)

(declare-fun e!378440 () Bool)

(assert (=> b!658729 (=> (not res!427287) (not e!378440))))

(declare-fun arrayContainsKey!0 (array!38732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658729 (= res!427287 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658730 () Bool)

(declare-fun e!378441 () Bool)

(assert (=> b!658730 (= e!378441 (arrayContainsKey!0 lt!308237 (select (arr!18559 a!2986) j!136) index!984))))

(declare-fun b!658731 () Bool)

(declare-fun res!427289 () Bool)

(assert (=> b!658731 (=> (not res!427289) (not e!378440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658731 (= res!427289 (validKeyInArray!0 (select (arr!18559 a!2986) j!136)))))

(declare-fun b!658732 () Bool)

(declare-fun Unit!22906 () Unit!22904)

(assert (=> b!658732 (= e!378435 Unit!22906)))

(assert (=> b!658732 false))

(declare-fun res!427298 () Bool)

(assert (=> start!59618 (=> (not res!427298) (not e!378440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59618 (= res!427298 (validMask!0 mask!3053))))

(assert (=> start!59618 e!378440))

(assert (=> start!59618 true))

(declare-fun array_inv!14333 (array!38732) Bool)

(assert (=> start!59618 (array_inv!14333 a!2986)))

(declare-fun b!658733 () Bool)

(declare-fun Unit!22907 () Unit!22904)

(assert (=> b!658733 (= e!378435 Unit!22907)))

(declare-fun b!658734 () Bool)

(declare-fun res!427297 () Bool)

(assert (=> b!658734 (=> (not res!427297) (not e!378440))))

(assert (=> b!658734 (= res!427297 (and (= (size!18923 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18923 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18923 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658735 () Bool)

(declare-fun Unit!22908 () Unit!22904)

(assert (=> b!658735 (= e!378438 Unit!22908)))

(declare-fun b!658736 () Bool)

(declare-fun res!427286 () Bool)

(declare-fun e!378445 () Bool)

(assert (=> b!658736 (=> (not res!427286) (not e!378445))))

(declare-datatypes ((List!12653 0))(
  ( (Nil!12650) (Cons!12649 (h!13694 (_ BitVec 64)) (t!18889 List!12653)) )
))
(declare-fun arrayNoDuplicates!0 (array!38732 (_ BitVec 32) List!12653) Bool)

(assert (=> b!658736 (= res!427286 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12650))))

(declare-fun b!658737 () Bool)

(declare-fun e!378437 () Unit!22904)

(declare-fun Unit!22909 () Unit!22904)

(assert (=> b!658737 (= e!378437 Unit!22909)))

(declare-fun b!658738 () Bool)

(declare-fun e!378436 () Bool)

(assert (=> b!658738 (= e!378436 e!378434)))

(declare-fun res!427293 () Bool)

(assert (=> b!658738 (=> (not res!427293) (not e!378434))))

(declare-fun lt!308245 () SeekEntryResult!7006)

(assert (=> b!658738 (= res!427293 (and (= lt!308245 (Found!7006 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18559 a!2986) index!984) (select (arr!18559 a!2986) j!136))) (not (= (select (arr!18559 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658738 (= lt!308245 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18559 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658739 () Bool)

(declare-fun res!427290 () Bool)

(assert (=> b!658739 (= res!427290 (bvsge j!136 index!984))))

(declare-fun e!378444 () Bool)

(assert (=> b!658739 (=> res!427290 e!378444)))

(declare-fun e!378443 () Bool)

(assert (=> b!658739 (= e!378443 e!378444)))

(declare-fun b!658740 () Bool)

(declare-fun Unit!22910 () Unit!22904)

(assert (=> b!658740 (= e!378438 Unit!22910)))

(declare-fun res!427299 () Bool)

(assert (=> b!658740 (= res!427299 (= (select (store (arr!18559 a!2986) i!1108 k0!1786) index!984) (select (arr!18559 a!2986) j!136)))))

(assert (=> b!658740 (=> (not res!427299) (not e!378443))))

(assert (=> b!658740 e!378443))

(declare-fun c!76090 () Bool)

(assert (=> b!658740 (= c!76090 (bvslt j!136 index!984))))

(declare-fun lt!308233 () Unit!22904)

(assert (=> b!658740 (= lt!308233 e!378437)))

(declare-fun c!76091 () Bool)

(assert (=> b!658740 (= c!76091 (bvslt index!984 j!136))))

(declare-fun lt!308231 () Unit!22904)

(declare-fun e!378432 () Unit!22904)

(assert (=> b!658740 (= lt!308231 e!378432)))

(assert (=> b!658740 false))

(declare-fun e!378442 () Bool)

(declare-fun b!658741 () Bool)

(assert (=> b!658741 (= e!378442 (arrayContainsKey!0 lt!308237 (select (arr!18559 a!2986) j!136) index!984))))

(declare-fun b!658742 () Bool)

(assert (=> b!658742 (= e!378433 (= lt!308245 lt!308228))))

(declare-fun b!658743 () Bool)

(declare-fun res!427295 () Bool)

(assert (=> b!658743 (=> (not res!427295) (not e!378440))))

(assert (=> b!658743 (= res!427295 (validKeyInArray!0 k0!1786))))

(declare-fun res!427296 () Bool)

(declare-fun b!658744 () Bool)

(assert (=> b!658744 (= res!427296 (arrayContainsKey!0 lt!308237 (select (arr!18559 a!2986) j!136) j!136))))

(assert (=> b!658744 (=> (not res!427296) (not e!378442))))

(assert (=> b!658744 (= e!378444 e!378442)))

(declare-fun b!658745 () Bool)

(assert (=> b!658745 false))

(declare-fun lt!308234 () Unit!22904)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38732 (_ BitVec 64) (_ BitVec 32) List!12653) Unit!22904)

(assert (=> b!658745 (= lt!308234 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308237 (select (arr!18559 a!2986) j!136) index!984 Nil!12650))))

(assert (=> b!658745 (arrayNoDuplicates!0 lt!308237 index!984 Nil!12650)))

(declare-fun lt!308241 () Unit!22904)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38732 (_ BitVec 32) (_ BitVec 32)) Unit!22904)

(assert (=> b!658745 (= lt!308241 (lemmaNoDuplicateFromThenFromBigger!0 lt!308237 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658745 (arrayNoDuplicates!0 lt!308237 #b00000000000000000000000000000000 Nil!12650)))

(declare-fun lt!308242 () Unit!22904)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38732 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12653) Unit!22904)

(assert (=> b!658745 (= lt!308242 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12650))))

(assert (=> b!658745 (arrayContainsKey!0 lt!308237 (select (arr!18559 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!308232 () Unit!22904)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38732 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22904)

(assert (=> b!658745 (= lt!308232 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308237 (select (arr!18559 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658745 e!378441))

(declare-fun res!427292 () Bool)

(assert (=> b!658745 (=> (not res!427292) (not e!378441))))

(assert (=> b!658745 (= res!427292 (arrayContainsKey!0 lt!308237 (select (arr!18559 a!2986) j!136) j!136))))

(declare-fun Unit!22911 () Unit!22904)

(assert (=> b!658745 (= e!378432 Unit!22911)))

(declare-fun b!658746 () Bool)

(assert (=> b!658746 (= e!378440 e!378445)))

(declare-fun res!427300 () Bool)

(assert (=> b!658746 (=> (not res!427300) (not e!378445))))

(declare-fun lt!308239 () SeekEntryResult!7006)

(assert (=> b!658746 (= res!427300 (or (= lt!308239 (MissingZero!7006 i!1108)) (= lt!308239 (MissingVacant!7006 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38732 (_ BitVec 32)) SeekEntryResult!7006)

(assert (=> b!658746 (= lt!308239 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!658747 () Bool)

(declare-fun res!427288 () Bool)

(assert (=> b!658747 (=> (not res!427288) (not e!378445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38732 (_ BitVec 32)) Bool)

(assert (=> b!658747 (= res!427288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658748 () Bool)

(assert (=> b!658748 (= e!378445 e!378436)))

(declare-fun res!427291 () Bool)

(assert (=> b!658748 (=> (not res!427291) (not e!378436))))

(assert (=> b!658748 (= res!427291 (= (select (store (arr!18559 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658748 (= lt!308237 (array!38733 (store (arr!18559 a!2986) i!1108 k0!1786) (size!18923 a!2986)))))

(declare-fun b!658749 () Bool)

(declare-fun Unit!22912 () Unit!22904)

(assert (=> b!658749 (= e!378432 Unit!22912)))

(declare-fun b!658750 () Bool)

(declare-fun res!427294 () Bool)

(assert (=> b!658750 (=> (not res!427294) (not e!378445))))

(assert (=> b!658750 (= res!427294 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18559 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658751 () Bool)

(assert (=> b!658751 false))

(declare-fun lt!308229 () Unit!22904)

(assert (=> b!658751 (= lt!308229 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!308237 (select (arr!18559 a!2986) j!136) j!136 Nil!12650))))

(assert (=> b!658751 (arrayNoDuplicates!0 lt!308237 j!136 Nil!12650)))

(declare-fun lt!308246 () Unit!22904)

(assert (=> b!658751 (= lt!308246 (lemmaNoDuplicateFromThenFromBigger!0 lt!308237 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658751 (arrayNoDuplicates!0 lt!308237 #b00000000000000000000000000000000 Nil!12650)))

(declare-fun lt!308238 () Unit!22904)

(assert (=> b!658751 (= lt!308238 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12650))))

(assert (=> b!658751 (arrayContainsKey!0 lt!308237 (select (arr!18559 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!308244 () Unit!22904)

(assert (=> b!658751 (= lt!308244 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!308237 (select (arr!18559 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22913 () Unit!22904)

(assert (=> b!658751 (= e!378437 Unit!22913)))

(assert (= (and start!59618 res!427298) b!658734))

(assert (= (and b!658734 res!427297) b!658731))

(assert (= (and b!658731 res!427289) b!658743))

(assert (= (and b!658743 res!427295) b!658729))

(assert (= (and b!658729 res!427287) b!658746))

(assert (= (and b!658746 res!427300) b!658747))

(assert (= (and b!658747 res!427288) b!658736))

(assert (= (and b!658736 res!427286) b!658750))

(assert (= (and b!658750 res!427294) b!658748))

(assert (= (and b!658748 res!427291) b!658738))

(assert (= (and b!658738 res!427293) b!658728))

(assert (= (and b!658728 res!427301) b!658742))

(assert (= (and b!658728 c!76088) b!658732))

(assert (= (and b!658728 (not c!76088)) b!658733))

(assert (= (and b!658728 c!76089) b!658740))

(assert (= (and b!658728 (not c!76089)) b!658735))

(assert (= (and b!658740 res!427299) b!658739))

(assert (= (and b!658739 (not res!427290)) b!658744))

(assert (= (and b!658744 res!427296) b!658741))

(assert (= (and b!658740 c!76090) b!658751))

(assert (= (and b!658740 (not c!76090)) b!658737))

(assert (= (and b!658740 c!76091) b!658745))

(assert (= (and b!658740 (not c!76091)) b!658749))

(assert (= (and b!658745 res!427292) b!658730))

(declare-fun m!631771 () Bool)

(assert (=> b!658746 m!631771))

(declare-fun m!631773 () Bool)

(assert (=> b!658751 m!631773))

(declare-fun m!631775 () Bool)

(assert (=> b!658751 m!631775))

(assert (=> b!658751 m!631775))

(declare-fun m!631777 () Bool)

(assert (=> b!658751 m!631777))

(assert (=> b!658751 m!631775))

(declare-fun m!631779 () Bool)

(assert (=> b!658751 m!631779))

(declare-fun m!631781 () Bool)

(assert (=> b!658751 m!631781))

(declare-fun m!631783 () Bool)

(assert (=> b!658751 m!631783))

(assert (=> b!658751 m!631775))

(declare-fun m!631785 () Bool)

(assert (=> b!658751 m!631785))

(declare-fun m!631787 () Bool)

(assert (=> b!658751 m!631787))

(declare-fun m!631789 () Bool)

(assert (=> b!658743 m!631789))

(declare-fun m!631791 () Bool)

(assert (=> b!658736 m!631791))

(assert (=> b!658745 m!631775))

(declare-fun m!631793 () Bool)

(assert (=> b!658745 m!631793))

(assert (=> b!658745 m!631773))

(assert (=> b!658745 m!631775))

(declare-fun m!631795 () Bool)

(assert (=> b!658745 m!631795))

(assert (=> b!658745 m!631775))

(assert (=> b!658745 m!631775))

(declare-fun m!631797 () Bool)

(assert (=> b!658745 m!631797))

(declare-fun m!631799 () Bool)

(assert (=> b!658745 m!631799))

(assert (=> b!658745 m!631775))

(declare-fun m!631801 () Bool)

(assert (=> b!658745 m!631801))

(declare-fun m!631803 () Bool)

(assert (=> b!658745 m!631803))

(assert (=> b!658745 m!631787))

(declare-fun m!631805 () Bool)

(assert (=> b!658740 m!631805))

(declare-fun m!631807 () Bool)

(assert (=> b!658740 m!631807))

(assert (=> b!658740 m!631775))

(declare-fun m!631809 () Bool)

(assert (=> start!59618 m!631809))

(declare-fun m!631811 () Bool)

(assert (=> start!59618 m!631811))

(declare-fun m!631813 () Bool)

(assert (=> b!658747 m!631813))

(assert (=> b!658744 m!631775))

(assert (=> b!658744 m!631775))

(assert (=> b!658744 m!631797))

(assert (=> b!658748 m!631805))

(declare-fun m!631815 () Bool)

(assert (=> b!658748 m!631815))

(declare-fun m!631817 () Bool)

(assert (=> b!658750 m!631817))

(declare-fun m!631819 () Bool)

(assert (=> b!658738 m!631819))

(assert (=> b!658738 m!631775))

(assert (=> b!658738 m!631775))

(declare-fun m!631821 () Bool)

(assert (=> b!658738 m!631821))

(assert (=> b!658730 m!631775))

(assert (=> b!658730 m!631775))

(declare-fun m!631823 () Bool)

(assert (=> b!658730 m!631823))

(assert (=> b!658731 m!631775))

(assert (=> b!658731 m!631775))

(declare-fun m!631825 () Bool)

(assert (=> b!658731 m!631825))

(assert (=> b!658741 m!631775))

(assert (=> b!658741 m!631775))

(assert (=> b!658741 m!631823))

(declare-fun m!631827 () Bool)

(assert (=> b!658729 m!631827))

(declare-fun m!631829 () Bool)

(assert (=> b!658728 m!631829))

(assert (=> b!658728 m!631775))

(declare-fun m!631831 () Bool)

(assert (=> b!658728 m!631831))

(assert (=> b!658728 m!631805))

(declare-fun m!631833 () Bool)

(assert (=> b!658728 m!631833))

(assert (=> b!658728 m!631775))

(declare-fun m!631835 () Bool)

(assert (=> b!658728 m!631835))

(declare-fun m!631837 () Bool)

(assert (=> b!658728 m!631837))

(declare-fun m!631839 () Bool)

(assert (=> b!658728 m!631839))

(check-sat (not b!658728) (not b!658745) (not b!658744) (not b!658751) (not b!658730) (not b!658741) (not b!658746) (not b!658747) (not start!59618) (not b!658729) (not b!658738) (not b!658731) (not b!658743) (not b!658736))
(check-sat)
