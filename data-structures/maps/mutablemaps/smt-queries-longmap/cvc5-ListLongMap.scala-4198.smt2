; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57354 () Bool)

(assert start!57354)

(declare-fun b!634305 () Bool)

(declare-fun res!410347 () Bool)

(declare-fun e!362740 () Bool)

(assert (=> b!634305 (=> (not res!410347) (not e!362740))))

(declare-datatypes ((array!38163 0))(
  ( (array!38164 (arr!18306 (Array (_ BitVec 32) (_ BitVec 64))) (size!18670 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38163)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38163 (_ BitVec 32)) Bool)

(assert (=> b!634305 (= res!410347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634307 () Bool)

(declare-fun res!410349 () Bool)

(declare-fun e!362738 () Bool)

(assert (=> b!634307 (=> (not res!410349) (not e!362738))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634307 (= res!410349 (validKeyInArray!0 k!1786))))

(declare-fun b!634308 () Bool)

(declare-fun e!362741 () Bool)

(declare-datatypes ((SeekEntryResult!6753 0))(
  ( (MissingZero!6753 (index!29313 (_ BitVec 32))) (Found!6753 (index!29314 (_ BitVec 32))) (Intermediate!6753 (undefined!7565 Bool) (index!29315 (_ BitVec 32)) (x!58088 (_ BitVec 32))) (Undefined!6753) (MissingVacant!6753 (index!29316 (_ BitVec 32))) )
))
(declare-fun lt!293261 () SeekEntryResult!6753)

(declare-fun lt!293265 () SeekEntryResult!6753)

(assert (=> b!634308 (= e!362741 (= lt!293261 lt!293265))))

(declare-fun b!634309 () Bool)

(declare-datatypes ((Unit!21370 0))(
  ( (Unit!21371) )
))
(declare-fun e!362743 () Unit!21370)

(declare-fun Unit!21372 () Unit!21370)

(assert (=> b!634309 (= e!362743 Unit!21372)))

(declare-fun b!634310 () Bool)

(declare-fun res!410346 () Bool)

(assert (=> b!634310 (=> (not res!410346) (not e!362740))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634310 (= res!410346 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18306 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634311 () Bool)

(declare-fun e!362736 () Bool)

(assert (=> b!634311 (= e!362736 true)))

(declare-fun e!362744 () Bool)

(assert (=> b!634311 e!362744))

(declare-fun res!410360 () Bool)

(assert (=> b!634311 (=> (not res!410360) (not e!362744))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293267 () (_ BitVec 64))

(assert (=> b!634311 (= res!410360 (= lt!293267 (select (arr!18306 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!634311 (= lt!293267 (select (store (arr!18306 a!2986) i!1108 k!1786) index!984))))

(declare-fun e!362742 () Bool)

(declare-fun lt!293263 () array!38163)

(declare-fun b!634312 () Bool)

(declare-fun arrayContainsKey!0 (array!38163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634312 (= e!362742 (arrayContainsKey!0 lt!293263 (select (arr!18306 a!2986) j!136) index!984))))

(declare-fun b!634313 () Bool)

(declare-fun e!362737 () Bool)

(assert (=> b!634313 (= e!362740 e!362737)))

(declare-fun res!410352 () Bool)

(assert (=> b!634313 (=> (not res!410352) (not e!362737))))

(assert (=> b!634313 (= res!410352 (= (select (store (arr!18306 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634313 (= lt!293263 (array!38164 (store (arr!18306 a!2986) i!1108 k!1786) (size!18670 a!2986)))))

(declare-fun res!410356 () Bool)

(assert (=> start!57354 (=> (not res!410356) (not e!362738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57354 (= res!410356 (validMask!0 mask!3053))))

(assert (=> start!57354 e!362738))

(assert (=> start!57354 true))

(declare-fun array_inv!14080 (array!38163) Bool)

(assert (=> start!57354 (array_inv!14080 a!2986)))

(declare-fun b!634306 () Bool)

(declare-fun res!410359 () Bool)

(assert (=> b!634306 (=> (not res!410359) (not e!362738))))

(assert (=> b!634306 (= res!410359 (validKeyInArray!0 (select (arr!18306 a!2986) j!136)))))

(declare-fun b!634314 () Bool)

(declare-fun res!410350 () Bool)

(assert (=> b!634314 (=> (not res!410350) (not e!362738))))

(assert (=> b!634314 (= res!410350 (and (= (size!18670 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18670 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18670 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634315 () Bool)

(declare-fun e!362739 () Bool)

(assert (=> b!634315 (= e!362737 e!362739)))

(declare-fun res!410357 () Bool)

(assert (=> b!634315 (=> (not res!410357) (not e!362739))))

(assert (=> b!634315 (= res!410357 (and (= lt!293261 (Found!6753 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18306 a!2986) index!984) (select (arr!18306 a!2986) j!136))) (not (= (select (arr!18306 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38163 (_ BitVec 32)) SeekEntryResult!6753)

(assert (=> b!634315 (= lt!293261 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18306 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634316 () Bool)

(declare-fun e!362745 () Bool)

(assert (=> b!634316 (= e!362744 e!362745)))

(declare-fun res!410348 () Bool)

(assert (=> b!634316 (=> res!410348 e!362745)))

(declare-fun lt!293264 () (_ BitVec 64))

(assert (=> b!634316 (= res!410348 (or (not (= (select (arr!18306 a!2986) j!136) lt!293264)) (not (= (select (arr!18306 a!2986) j!136) lt!293267)) (bvsge j!136 index!984)))))

(declare-fun b!634317 () Bool)

(declare-fun res!410351 () Bool)

(assert (=> b!634317 (=> (not res!410351) (not e!362740))))

(declare-datatypes ((List!12400 0))(
  ( (Nil!12397) (Cons!12396 (h!13441 (_ BitVec 64)) (t!18636 List!12400)) )
))
(declare-fun arrayNoDuplicates!0 (array!38163 (_ BitVec 32) List!12400) Bool)

(assert (=> b!634317 (= res!410351 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12397))))

(declare-fun b!634318 () Bool)

(declare-fun Unit!21373 () Unit!21370)

(assert (=> b!634318 (= e!362743 Unit!21373)))

(assert (=> b!634318 false))

(declare-fun b!634319 () Bool)

(declare-fun res!410355 () Bool)

(assert (=> b!634319 (=> (not res!410355) (not e!362738))))

(assert (=> b!634319 (= res!410355 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634320 () Bool)

(assert (=> b!634320 (= e!362739 (not e!362736))))

(declare-fun res!410353 () Bool)

(assert (=> b!634320 (=> res!410353 e!362736)))

(declare-fun lt!293259 () SeekEntryResult!6753)

(assert (=> b!634320 (= res!410353 (not (= lt!293259 (Found!6753 index!984))))))

(declare-fun lt!293260 () Unit!21370)

(assert (=> b!634320 (= lt!293260 e!362743)))

(declare-fun c!72347 () Bool)

(assert (=> b!634320 (= c!72347 (= lt!293259 Undefined!6753))))

(assert (=> b!634320 (= lt!293259 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293264 lt!293263 mask!3053))))

(assert (=> b!634320 e!362741))

(declare-fun res!410345 () Bool)

(assert (=> b!634320 (=> (not res!410345) (not e!362741))))

(declare-fun lt!293266 () (_ BitVec 32))

(assert (=> b!634320 (= res!410345 (= lt!293265 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293266 vacantSpotIndex!68 lt!293264 lt!293263 mask!3053)))))

(assert (=> b!634320 (= lt!293265 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293266 vacantSpotIndex!68 (select (arr!18306 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634320 (= lt!293264 (select (store (arr!18306 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293268 () Unit!21370)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21370)

(assert (=> b!634320 (= lt!293268 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293266 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634320 (= lt!293266 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634321 () Bool)

(assert (=> b!634321 (= e!362738 e!362740)))

(declare-fun res!410358 () Bool)

(assert (=> b!634321 (=> (not res!410358) (not e!362740))))

(declare-fun lt!293262 () SeekEntryResult!6753)

(assert (=> b!634321 (= res!410358 (or (= lt!293262 (MissingZero!6753 i!1108)) (= lt!293262 (MissingVacant!6753 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38163 (_ BitVec 32)) SeekEntryResult!6753)

(assert (=> b!634321 (= lt!293262 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!634322 () Bool)

(assert (=> b!634322 (= e!362745 e!362742)))

(declare-fun res!410354 () Bool)

(assert (=> b!634322 (=> (not res!410354) (not e!362742))))

(assert (=> b!634322 (= res!410354 (arrayContainsKey!0 lt!293263 (select (arr!18306 a!2986) j!136) j!136))))

(assert (= (and start!57354 res!410356) b!634314))

(assert (= (and b!634314 res!410350) b!634306))

(assert (= (and b!634306 res!410359) b!634307))

(assert (= (and b!634307 res!410349) b!634319))

(assert (= (and b!634319 res!410355) b!634321))

(assert (= (and b!634321 res!410358) b!634305))

(assert (= (and b!634305 res!410347) b!634317))

(assert (= (and b!634317 res!410351) b!634310))

(assert (= (and b!634310 res!410346) b!634313))

(assert (= (and b!634313 res!410352) b!634315))

(assert (= (and b!634315 res!410357) b!634320))

(assert (= (and b!634320 res!410345) b!634308))

(assert (= (and b!634320 c!72347) b!634318))

(assert (= (and b!634320 (not c!72347)) b!634309))

(assert (= (and b!634320 (not res!410353)) b!634311))

(assert (= (and b!634311 res!410360) b!634316))

(assert (= (and b!634316 (not res!410348)) b!634322))

(assert (= (and b!634322 res!410354) b!634312))

(declare-fun m!608859 () Bool)

(assert (=> b!634316 m!608859))

(declare-fun m!608861 () Bool)

(assert (=> b!634315 m!608861))

(assert (=> b!634315 m!608859))

(assert (=> b!634315 m!608859))

(declare-fun m!608863 () Bool)

(assert (=> b!634315 m!608863))

(declare-fun m!608865 () Bool)

(assert (=> b!634313 m!608865))

(declare-fun m!608867 () Bool)

(assert (=> b!634313 m!608867))

(assert (=> b!634322 m!608859))

(assert (=> b!634322 m!608859))

(declare-fun m!608869 () Bool)

(assert (=> b!634322 m!608869))

(assert (=> b!634312 m!608859))

(assert (=> b!634312 m!608859))

(declare-fun m!608871 () Bool)

(assert (=> b!634312 m!608871))

(declare-fun m!608873 () Bool)

(assert (=> b!634317 m!608873))

(declare-fun m!608875 () Bool)

(assert (=> b!634305 m!608875))

(declare-fun m!608877 () Bool)

(assert (=> b!634321 m!608877))

(declare-fun m!608879 () Bool)

(assert (=> start!57354 m!608879))

(declare-fun m!608881 () Bool)

(assert (=> start!57354 m!608881))

(declare-fun m!608883 () Bool)

(assert (=> b!634319 m!608883))

(declare-fun m!608885 () Bool)

(assert (=> b!634307 m!608885))

(declare-fun m!608887 () Bool)

(assert (=> b!634320 m!608887))

(declare-fun m!608889 () Bool)

(assert (=> b!634320 m!608889))

(assert (=> b!634320 m!608859))

(assert (=> b!634320 m!608865))

(assert (=> b!634320 m!608859))

(declare-fun m!608891 () Bool)

(assert (=> b!634320 m!608891))

(declare-fun m!608893 () Bool)

(assert (=> b!634320 m!608893))

(declare-fun m!608895 () Bool)

(assert (=> b!634320 m!608895))

(declare-fun m!608897 () Bool)

(assert (=> b!634320 m!608897))

(assert (=> b!634306 m!608859))

(assert (=> b!634306 m!608859))

(declare-fun m!608899 () Bool)

(assert (=> b!634306 m!608899))

(assert (=> b!634311 m!608859))

(assert (=> b!634311 m!608865))

(declare-fun m!608901 () Bool)

(assert (=> b!634311 m!608901))

(declare-fun m!608903 () Bool)

(assert (=> b!634310 m!608903))

(push 1)

