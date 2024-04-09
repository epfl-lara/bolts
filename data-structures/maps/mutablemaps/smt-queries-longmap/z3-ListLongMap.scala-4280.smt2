; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59606 () Bool)

(assert start!59606)

(declare-fun b!658296 () Bool)

(declare-datatypes ((Unit!22844 0))(
  ( (Unit!22845) )
))
(declare-fun e!378184 () Unit!22844)

(declare-fun Unit!22846 () Unit!22844)

(assert (=> b!658296 (= e!378184 Unit!22846)))

(declare-fun b!658297 () Bool)

(declare-fun res!427010 () Bool)

(declare-fun e!378191 () Bool)

(assert (=> b!658297 (=> (not res!427010) (not e!378191))))

(declare-datatypes ((array!38720 0))(
  ( (array!38721 (arr!18553 (Array (_ BitVec 32) (_ BitVec 64))) (size!18917 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38720)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38720 (_ BitVec 32)) Bool)

(assert (=> b!658297 (= res!427010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658298 () Bool)

(declare-fun e!378183 () Unit!22844)

(declare-fun Unit!22847 () Unit!22844)

(assert (=> b!658298 (= e!378183 Unit!22847)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!427002 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!658298 (= res!427002 (= (select (store (arr!18553 a!2986) i!1108 k0!1786) index!984) (select (arr!18553 a!2986) j!136)))))

(declare-fun e!378193 () Bool)

(assert (=> b!658298 (=> (not res!427002) (not e!378193))))

(assert (=> b!658298 e!378193))

(declare-fun c!76017 () Bool)

(assert (=> b!658298 (= c!76017 (bvslt j!136 index!984))))

(declare-fun lt!307877 () Unit!22844)

(assert (=> b!658298 (= lt!307877 e!378184)))

(declare-fun c!76016 () Bool)

(assert (=> b!658298 (= c!76016 (bvslt index!984 j!136))))

(declare-fun lt!307871 () Unit!22844)

(declare-fun e!378186 () Unit!22844)

(assert (=> b!658298 (= lt!307871 e!378186)))

(assert (=> b!658298 false))

(declare-fun e!378188 () Bool)

(declare-fun b!658299 () Bool)

(declare-fun lt!307875 () array!38720)

(declare-fun arrayContainsKey!0 (array!38720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658299 (= e!378188 (arrayContainsKey!0 lt!307875 (select (arr!18553 a!2986) j!136) index!984))))

(declare-fun b!658300 () Bool)

(declare-fun res!427005 () Bool)

(declare-fun e!378189 () Bool)

(assert (=> b!658300 (=> (not res!427005) (not e!378189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658300 (= res!427005 (validKeyInArray!0 k0!1786))))

(declare-fun b!658301 () Bool)

(declare-fun res!427006 () Bool)

(assert (=> b!658301 (=> (not res!427006) (not e!378189))))

(assert (=> b!658301 (= res!427006 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658302 () Bool)

(assert (=> b!658302 false))

(declare-fun lt!307879 () Unit!22844)

(declare-datatypes ((List!12647 0))(
  ( (Nil!12644) (Cons!12643 (h!13688 (_ BitVec 64)) (t!18883 List!12647)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38720 (_ BitVec 64) (_ BitVec 32) List!12647) Unit!22844)

(assert (=> b!658302 (= lt!307879 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307875 (select (arr!18553 a!2986) j!136) index!984 Nil!12644))))

(declare-fun arrayNoDuplicates!0 (array!38720 (_ BitVec 32) List!12647) Bool)

(assert (=> b!658302 (arrayNoDuplicates!0 lt!307875 index!984 Nil!12644)))

(declare-fun lt!307887 () Unit!22844)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38720 (_ BitVec 32) (_ BitVec 32)) Unit!22844)

(assert (=> b!658302 (= lt!307887 (lemmaNoDuplicateFromThenFromBigger!0 lt!307875 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658302 (arrayNoDuplicates!0 lt!307875 #b00000000000000000000000000000000 Nil!12644)))

(declare-fun lt!307880 () Unit!22844)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38720 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12647) Unit!22844)

(assert (=> b!658302 (= lt!307880 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12644))))

(assert (=> b!658302 (arrayContainsKey!0 lt!307875 (select (arr!18553 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307876 () Unit!22844)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38720 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22844)

(assert (=> b!658302 (= lt!307876 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307875 (select (arr!18553 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!658302 e!378188))

(declare-fun res!427013 () Bool)

(assert (=> b!658302 (=> (not res!427013) (not e!378188))))

(assert (=> b!658302 (= res!427013 (arrayContainsKey!0 lt!307875 (select (arr!18553 a!2986) j!136) j!136))))

(declare-fun Unit!22848 () Unit!22844)

(assert (=> b!658302 (= e!378186 Unit!22848)))

(declare-fun b!658303 () Bool)

(declare-fun e!378182 () Unit!22844)

(declare-fun Unit!22849 () Unit!22844)

(assert (=> b!658303 (= e!378182 Unit!22849)))

(assert (=> b!658303 false))

(declare-fun b!658304 () Bool)

(declare-fun res!426999 () Bool)

(assert (=> b!658304 (=> (not res!426999) (not e!378189))))

(assert (=> b!658304 (= res!426999 (and (= (size!18917 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18917 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18917 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658305 () Bool)

(declare-fun e!378187 () Bool)

(declare-datatypes ((SeekEntryResult!7000 0))(
  ( (MissingZero!7000 (index!30364 (_ BitVec 32))) (Found!7000 (index!30365 (_ BitVec 32))) (Intermediate!7000 (undefined!7812 Bool) (index!30366 (_ BitVec 32)) (x!59180 (_ BitVec 32))) (Undefined!7000) (MissingVacant!7000 (index!30367 (_ BitVec 32))) )
))
(declare-fun lt!307870 () SeekEntryResult!7000)

(declare-fun lt!307886 () SeekEntryResult!7000)

(assert (=> b!658305 (= e!378187 (= lt!307870 lt!307886))))

(declare-fun b!658306 () Bool)

(declare-fun res!426998 () Bool)

(assert (=> b!658306 (=> (not res!426998) (not e!378191))))

(assert (=> b!658306 (= res!426998 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12644))))

(declare-fun b!658307 () Bool)

(declare-fun e!378192 () Bool)

(assert (=> b!658307 (= e!378192 (not true))))

(declare-fun lt!307882 () Unit!22844)

(assert (=> b!658307 (= lt!307882 e!378183)))

(declare-fun c!76019 () Bool)

(declare-fun lt!307881 () SeekEntryResult!7000)

(assert (=> b!658307 (= c!76019 (= lt!307881 (Found!7000 index!984)))))

(declare-fun lt!307868 () Unit!22844)

(assert (=> b!658307 (= lt!307868 e!378182)))

(declare-fun c!76018 () Bool)

(assert (=> b!658307 (= c!76018 (= lt!307881 Undefined!7000))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!307878 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38720 (_ BitVec 32)) SeekEntryResult!7000)

(assert (=> b!658307 (= lt!307881 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307878 lt!307875 mask!3053))))

(assert (=> b!658307 e!378187))

(declare-fun res!427000 () Bool)

(assert (=> b!658307 (=> (not res!427000) (not e!378187))))

(declare-fun lt!307872 () (_ BitVec 32))

(assert (=> b!658307 (= res!427000 (= lt!307886 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307872 vacantSpotIndex!68 lt!307878 lt!307875 mask!3053)))))

(assert (=> b!658307 (= lt!307886 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307872 vacantSpotIndex!68 (select (arr!18553 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658307 (= lt!307878 (select (store (arr!18553 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!307869 () Unit!22844)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38720 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22844)

(assert (=> b!658307 (= lt!307869 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307872 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658307 (= lt!307872 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658308 () Bool)

(declare-fun res!427012 () Bool)

(assert (=> b!658308 (= res!427012 (bvsge j!136 index!984))))

(declare-fun e!378181 () Bool)

(assert (=> b!658308 (=> res!427012 e!378181)))

(assert (=> b!658308 (= e!378193 e!378181)))

(declare-fun b!658310 () Bool)

(declare-fun res!427011 () Bool)

(assert (=> b!658310 (=> (not res!427011) (not e!378191))))

(assert (=> b!658310 (= res!427011 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18553 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658311 () Bool)

(assert (=> b!658311 (= e!378189 e!378191)))

(declare-fun res!427008 () Bool)

(assert (=> b!658311 (=> (not res!427008) (not e!378191))))

(declare-fun lt!307873 () SeekEntryResult!7000)

(assert (=> b!658311 (= res!427008 (or (= lt!307873 (MissingZero!7000 i!1108)) (= lt!307873 (MissingVacant!7000 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38720 (_ BitVec 32)) SeekEntryResult!7000)

(assert (=> b!658311 (= lt!307873 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!658312 () Bool)

(declare-fun Unit!22850 () Unit!22844)

(assert (=> b!658312 (= e!378183 Unit!22850)))

(declare-fun b!658313 () Bool)

(declare-fun e!378180 () Bool)

(assert (=> b!658313 (= e!378191 e!378180)))

(declare-fun res!427004 () Bool)

(assert (=> b!658313 (=> (not res!427004) (not e!378180))))

(assert (=> b!658313 (= res!427004 (= (select (store (arr!18553 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658313 (= lt!307875 (array!38721 (store (arr!18553 a!2986) i!1108 k0!1786) (size!18917 a!2986)))))

(declare-fun res!427001 () Bool)

(declare-fun b!658314 () Bool)

(assert (=> b!658314 (= res!427001 (arrayContainsKey!0 lt!307875 (select (arr!18553 a!2986) j!136) j!136))))

(declare-fun e!378190 () Bool)

(assert (=> b!658314 (=> (not res!427001) (not e!378190))))

(assert (=> b!658314 (= e!378181 e!378190)))

(declare-fun b!658315 () Bool)

(assert (=> b!658315 false))

(declare-fun lt!307874 () Unit!22844)

(assert (=> b!658315 (= lt!307874 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307875 (select (arr!18553 a!2986) j!136) j!136 Nil!12644))))

(assert (=> b!658315 (arrayNoDuplicates!0 lt!307875 j!136 Nil!12644)))

(declare-fun lt!307883 () Unit!22844)

(assert (=> b!658315 (= lt!307883 (lemmaNoDuplicateFromThenFromBigger!0 lt!307875 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658315 (arrayNoDuplicates!0 lt!307875 #b00000000000000000000000000000000 Nil!12644)))

(declare-fun lt!307885 () Unit!22844)

(assert (=> b!658315 (= lt!307885 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12644))))

(assert (=> b!658315 (arrayContainsKey!0 lt!307875 (select (arr!18553 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307884 () Unit!22844)

(assert (=> b!658315 (= lt!307884 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307875 (select (arr!18553 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22851 () Unit!22844)

(assert (=> b!658315 (= e!378184 Unit!22851)))

(declare-fun b!658309 () Bool)

(declare-fun Unit!22852 () Unit!22844)

(assert (=> b!658309 (= e!378182 Unit!22852)))

(declare-fun res!427007 () Bool)

(assert (=> start!59606 (=> (not res!427007) (not e!378189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59606 (= res!427007 (validMask!0 mask!3053))))

(assert (=> start!59606 e!378189))

(assert (=> start!59606 true))

(declare-fun array_inv!14327 (array!38720) Bool)

(assert (=> start!59606 (array_inv!14327 a!2986)))

(declare-fun b!658316 () Bool)

(declare-fun Unit!22853 () Unit!22844)

(assert (=> b!658316 (= e!378186 Unit!22853)))

(declare-fun b!658317 () Bool)

(assert (=> b!658317 (= e!378190 (arrayContainsKey!0 lt!307875 (select (arr!18553 a!2986) j!136) index!984))))

(declare-fun b!658318 () Bool)

(assert (=> b!658318 (= e!378180 e!378192)))

(declare-fun res!427003 () Bool)

(assert (=> b!658318 (=> (not res!427003) (not e!378192))))

(assert (=> b!658318 (= res!427003 (and (= lt!307870 (Found!7000 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18553 a!2986) index!984) (select (arr!18553 a!2986) j!136))) (not (= (select (arr!18553 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658318 (= lt!307870 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18553 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658319 () Bool)

(declare-fun res!427009 () Bool)

(assert (=> b!658319 (=> (not res!427009) (not e!378189))))

(assert (=> b!658319 (= res!427009 (validKeyInArray!0 (select (arr!18553 a!2986) j!136)))))

(assert (= (and start!59606 res!427007) b!658304))

(assert (= (and b!658304 res!426999) b!658319))

(assert (= (and b!658319 res!427009) b!658300))

(assert (= (and b!658300 res!427005) b!658301))

(assert (= (and b!658301 res!427006) b!658311))

(assert (= (and b!658311 res!427008) b!658297))

(assert (= (and b!658297 res!427010) b!658306))

(assert (= (and b!658306 res!426998) b!658310))

(assert (= (and b!658310 res!427011) b!658313))

(assert (= (and b!658313 res!427004) b!658318))

(assert (= (and b!658318 res!427003) b!658307))

(assert (= (and b!658307 res!427000) b!658305))

(assert (= (and b!658307 c!76018) b!658303))

(assert (= (and b!658307 (not c!76018)) b!658309))

(assert (= (and b!658307 c!76019) b!658298))

(assert (= (and b!658307 (not c!76019)) b!658312))

(assert (= (and b!658298 res!427002) b!658308))

(assert (= (and b!658308 (not res!427012)) b!658314))

(assert (= (and b!658314 res!427001) b!658317))

(assert (= (and b!658298 c!76017) b!658315))

(assert (= (and b!658298 (not c!76017)) b!658296))

(assert (= (and b!658298 c!76016) b!658302))

(assert (= (and b!658298 (not c!76016)) b!658316))

(assert (= (and b!658302 res!427013) b!658299))

(declare-fun m!631351 () Bool)

(assert (=> b!658306 m!631351))

(declare-fun m!631353 () Bool)

(assert (=> b!658301 m!631353))

(declare-fun m!631355 () Bool)

(assert (=> b!658299 m!631355))

(assert (=> b!658299 m!631355))

(declare-fun m!631357 () Bool)

(assert (=> b!658299 m!631357))

(assert (=> b!658319 m!631355))

(assert (=> b!658319 m!631355))

(declare-fun m!631359 () Bool)

(assert (=> b!658319 m!631359))

(declare-fun m!631361 () Bool)

(assert (=> b!658300 m!631361))

(declare-fun m!631363 () Bool)

(assert (=> b!658298 m!631363))

(declare-fun m!631365 () Bool)

(assert (=> b!658298 m!631365))

(assert (=> b!658298 m!631355))

(assert (=> b!658314 m!631355))

(assert (=> b!658314 m!631355))

(declare-fun m!631367 () Bool)

(assert (=> b!658314 m!631367))

(assert (=> b!658313 m!631363))

(declare-fun m!631369 () Bool)

(assert (=> b!658313 m!631369))

(assert (=> b!658302 m!631355))

(declare-fun m!631371 () Bool)

(assert (=> b!658302 m!631371))

(assert (=> b!658302 m!631355))

(declare-fun m!631373 () Bool)

(assert (=> b!658302 m!631373))

(declare-fun m!631375 () Bool)

(assert (=> b!658302 m!631375))

(declare-fun m!631377 () Bool)

(assert (=> b!658302 m!631377))

(assert (=> b!658302 m!631355))

(declare-fun m!631379 () Bool)

(assert (=> b!658302 m!631379))

(assert (=> b!658302 m!631355))

(declare-fun m!631381 () Bool)

(assert (=> b!658302 m!631381))

(assert (=> b!658302 m!631355))

(assert (=> b!658302 m!631367))

(declare-fun m!631383 () Bool)

(assert (=> b!658302 m!631383))

(declare-fun m!631385 () Bool)

(assert (=> b!658311 m!631385))

(declare-fun m!631387 () Bool)

(assert (=> b!658307 m!631387))

(assert (=> b!658307 m!631355))

(assert (=> b!658307 m!631363))

(declare-fun m!631389 () Bool)

(assert (=> b!658307 m!631389))

(declare-fun m!631391 () Bool)

(assert (=> b!658307 m!631391))

(declare-fun m!631393 () Bool)

(assert (=> b!658307 m!631393))

(declare-fun m!631395 () Bool)

(assert (=> b!658307 m!631395))

(assert (=> b!658307 m!631355))

(declare-fun m!631397 () Bool)

(assert (=> b!658307 m!631397))

(declare-fun m!631399 () Bool)

(assert (=> b!658297 m!631399))

(declare-fun m!631401 () Bool)

(assert (=> b!658318 m!631401))

(assert (=> b!658318 m!631355))

(assert (=> b!658318 m!631355))

(declare-fun m!631403 () Bool)

(assert (=> b!658318 m!631403))

(declare-fun m!631405 () Bool)

(assert (=> b!658310 m!631405))

(declare-fun m!631407 () Bool)

(assert (=> start!59606 m!631407))

(declare-fun m!631409 () Bool)

(assert (=> start!59606 m!631409))

(assert (=> b!658317 m!631355))

(assert (=> b!658317 m!631355))

(assert (=> b!658317 m!631357))

(assert (=> b!658315 m!631355))

(declare-fun m!631411 () Bool)

(assert (=> b!658315 m!631411))

(assert (=> b!658315 m!631355))

(assert (=> b!658315 m!631355))

(declare-fun m!631413 () Bool)

(assert (=> b!658315 m!631413))

(declare-fun m!631415 () Bool)

(assert (=> b!658315 m!631415))

(assert (=> b!658315 m!631377))

(assert (=> b!658315 m!631355))

(declare-fun m!631417 () Bool)

(assert (=> b!658315 m!631417))

(declare-fun m!631419 () Bool)

(assert (=> b!658315 m!631419))

(assert (=> b!658315 m!631383))

(check-sat (not b!658317) (not b!658314) (not b!658319) (not b!658307) (not b!658301) (not b!658297) (not b!658311) (not b!658300) (not b!658302) (not b!658299) (not b!658306) (not b!658315) (not start!59606) (not b!658318))
(check-sat)
