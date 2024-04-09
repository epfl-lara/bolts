; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59368 () Bool)

(assert start!59368)

(declare-fun b!655026 () Bool)

(declare-datatypes ((Unit!22494 0))(
  ( (Unit!22495) )
))
(declare-fun e!376184 () Unit!22494)

(declare-fun Unit!22496 () Unit!22494)

(assert (=> b!655026 (= e!376184 Unit!22496)))

(declare-fun b!655027 () Bool)

(declare-fun e!376182 () Unit!22494)

(declare-fun Unit!22497 () Unit!22494)

(assert (=> b!655027 (= e!376182 Unit!22497)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!425010 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38644 0))(
  ( (array!38645 (arr!18518 (Array (_ BitVec 32) (_ BitVec 64))) (size!18882 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38644)

(assert (=> b!655027 (= res!425010 (= (select (store (arr!18518 a!2986) i!1108 k!1786) index!984) (select (arr!18518 a!2986) j!136)))))

(declare-fun e!376186 () Bool)

(assert (=> b!655027 (=> (not res!425010) (not e!376186))))

(assert (=> b!655027 e!376186))

(declare-fun c!75380 () Bool)

(assert (=> b!655027 (= c!75380 (bvslt j!136 index!984))))

(declare-fun lt!305471 () Unit!22494)

(assert (=> b!655027 (= lt!305471 e!376184)))

(declare-fun c!75381 () Bool)

(assert (=> b!655027 (= c!75381 (bvslt index!984 j!136))))

(declare-fun lt!305469 () Unit!22494)

(declare-fun e!376179 () Unit!22494)

(assert (=> b!655027 (= lt!305469 e!376179)))

(assert (=> b!655027 false))

(declare-fun b!655028 () Bool)

(declare-fun e!376188 () Bool)

(declare-fun e!376178 () Bool)

(assert (=> b!655028 (= e!376188 e!376178)))

(declare-fun res!425004 () Bool)

(assert (=> b!655028 (=> (not res!425004) (not e!376178))))

(declare-datatypes ((SeekEntryResult!6965 0))(
  ( (MissingZero!6965 (index!30218 (_ BitVec 32))) (Found!6965 (index!30219 (_ BitVec 32))) (Intermediate!6965 (undefined!7777 Bool) (index!30220 (_ BitVec 32)) (x!59031 (_ BitVec 32))) (Undefined!6965) (MissingVacant!6965 (index!30221 (_ BitVec 32))) )
))
(declare-fun lt!305481 () SeekEntryResult!6965)

(assert (=> b!655028 (= res!425004 (or (= lt!305481 (MissingZero!6965 i!1108)) (= lt!305481 (MissingVacant!6965 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38644 (_ BitVec 32)) SeekEntryResult!6965)

(assert (=> b!655028 (= lt!305481 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655029 () Bool)

(declare-fun res!425005 () Bool)

(assert (=> b!655029 (=> (not res!425005) (not e!376188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655029 (= res!425005 (validKeyInArray!0 k!1786))))

(declare-fun b!655030 () Bool)

(declare-fun res!425015 () Bool)

(assert (=> b!655030 (= res!425015 (bvsge j!136 index!984))))

(declare-fun e!376185 () Bool)

(assert (=> b!655030 (=> res!425015 e!376185)))

(assert (=> b!655030 (= e!376186 e!376185)))

(declare-fun b!655031 () Bool)

(declare-fun e!376189 () Unit!22494)

(declare-fun Unit!22498 () Unit!22494)

(assert (=> b!655031 (= e!376189 Unit!22498)))

(assert (=> b!655031 false))

(declare-fun lt!305462 () array!38644)

(declare-fun b!655032 () Bool)

(declare-fun e!376181 () Bool)

(declare-fun arrayContainsKey!0 (array!38644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655032 (= e!376181 (arrayContainsKey!0 lt!305462 (select (arr!18518 a!2986) j!136) index!984))))

(declare-fun b!655033 () Bool)

(declare-fun res!425013 () Bool)

(assert (=> b!655033 (= res!425013 (arrayContainsKey!0 lt!305462 (select (arr!18518 a!2986) j!136) j!136))))

(declare-fun e!376176 () Bool)

(assert (=> b!655033 (=> (not res!425013) (not e!376176))))

(assert (=> b!655033 (= e!376185 e!376176)))

(declare-fun b!655035 () Bool)

(assert (=> b!655035 false))

(declare-fun lt!305465 () Unit!22494)

(declare-datatypes ((List!12612 0))(
  ( (Nil!12609) (Cons!12608 (h!13653 (_ BitVec 64)) (t!18848 List!12612)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38644 (_ BitVec 64) (_ BitVec 32) List!12612) Unit!22494)

(assert (=> b!655035 (= lt!305465 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305462 (select (arr!18518 a!2986) j!136) index!984 Nil!12609))))

(declare-fun arrayNoDuplicates!0 (array!38644 (_ BitVec 32) List!12612) Bool)

(assert (=> b!655035 (arrayNoDuplicates!0 lt!305462 index!984 Nil!12609)))

(declare-fun lt!305478 () Unit!22494)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38644 (_ BitVec 32) (_ BitVec 32)) Unit!22494)

(assert (=> b!655035 (= lt!305478 (lemmaNoDuplicateFromThenFromBigger!0 lt!305462 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655035 (arrayNoDuplicates!0 lt!305462 #b00000000000000000000000000000000 Nil!12609)))

(declare-fun lt!305473 () Unit!22494)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38644 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12612) Unit!22494)

(assert (=> b!655035 (= lt!305473 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12609))))

(assert (=> b!655035 (arrayContainsKey!0 lt!305462 (select (arr!18518 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305474 () Unit!22494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38644 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22494)

(assert (=> b!655035 (= lt!305474 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305462 (select (arr!18518 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655035 e!376181))

(declare-fun res!425002 () Bool)

(assert (=> b!655035 (=> (not res!425002) (not e!376181))))

(assert (=> b!655035 (= res!425002 (arrayContainsKey!0 lt!305462 (select (arr!18518 a!2986) j!136) j!136))))

(declare-fun Unit!22499 () Unit!22494)

(assert (=> b!655035 (= e!376179 Unit!22499)))

(declare-fun b!655036 () Bool)

(declare-fun res!425011 () Bool)

(assert (=> b!655036 (=> (not res!425011) (not e!376178))))

(assert (=> b!655036 (= res!425011 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12609))))

(declare-fun b!655037 () Bool)

(declare-fun Unit!22500 () Unit!22494)

(assert (=> b!655037 (= e!376182 Unit!22500)))

(declare-fun b!655038 () Bool)

(declare-fun res!425000 () Bool)

(assert (=> b!655038 (=> (not res!425000) (not e!376188))))

(assert (=> b!655038 (= res!425000 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655039 () Bool)

(declare-fun e!376180 () Bool)

(declare-fun e!376187 () Bool)

(assert (=> b!655039 (= e!376180 e!376187)))

(declare-fun res!425001 () Bool)

(assert (=> b!655039 (=> (not res!425001) (not e!376187))))

(declare-fun lt!305463 () SeekEntryResult!6965)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!655039 (= res!425001 (and (= lt!305463 (Found!6965 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18518 a!2986) index!984) (select (arr!18518 a!2986) j!136))) (not (= (select (arr!18518 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38644 (_ BitVec 32)) SeekEntryResult!6965)

(assert (=> b!655039 (= lt!305463 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18518 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655040 () Bool)

(assert (=> b!655040 (= e!376176 (arrayContainsKey!0 lt!305462 (select (arr!18518 a!2986) j!136) index!984))))

(declare-fun b!655041 () Bool)

(declare-fun res!425003 () Bool)

(assert (=> b!655041 (=> (not res!425003) (not e!376188))))

(assert (=> b!655041 (= res!425003 (validKeyInArray!0 (select (arr!18518 a!2986) j!136)))))

(declare-fun b!655042 () Bool)

(declare-fun res!425012 () Bool)

(assert (=> b!655042 (=> (not res!425012) (not e!376188))))

(assert (=> b!655042 (= res!425012 (and (= (size!18882 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18882 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18882 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655043 () Bool)

(assert (=> b!655043 false))

(declare-fun lt!305472 () Unit!22494)

(assert (=> b!655043 (= lt!305472 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305462 (select (arr!18518 a!2986) j!136) j!136 Nil!12609))))

(assert (=> b!655043 (arrayNoDuplicates!0 lt!305462 j!136 Nil!12609)))

(declare-fun lt!305467 () Unit!22494)

(assert (=> b!655043 (= lt!305467 (lemmaNoDuplicateFromThenFromBigger!0 lt!305462 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655043 (arrayNoDuplicates!0 lt!305462 #b00000000000000000000000000000000 Nil!12609)))

(declare-fun lt!305470 () Unit!22494)

(assert (=> b!655043 (= lt!305470 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12609))))

(assert (=> b!655043 (arrayContainsKey!0 lt!305462 (select (arr!18518 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305476 () Unit!22494)

(assert (=> b!655043 (= lt!305476 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305462 (select (arr!18518 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22501 () Unit!22494)

(assert (=> b!655043 (= e!376184 Unit!22501)))

(declare-fun b!655044 () Bool)

(declare-fun e!376177 () Bool)

(declare-fun lt!305464 () SeekEntryResult!6965)

(assert (=> b!655044 (= e!376177 (= lt!305463 lt!305464))))

(declare-fun b!655045 () Bool)

(assert (=> b!655045 (= e!376178 e!376180)))

(declare-fun res!425007 () Bool)

(assert (=> b!655045 (=> (not res!425007) (not e!376180))))

(assert (=> b!655045 (= res!425007 (= (select (store (arr!18518 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655045 (= lt!305462 (array!38645 (store (arr!18518 a!2986) i!1108 k!1786) (size!18882 a!2986)))))

(declare-fun b!655046 () Bool)

(declare-fun res!425014 () Bool)

(assert (=> b!655046 (=> (not res!425014) (not e!376178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38644 (_ BitVec 32)) Bool)

(assert (=> b!655046 (= res!425014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655047 () Bool)

(declare-fun res!425006 () Bool)

(assert (=> b!655047 (=> (not res!425006) (not e!376178))))

(assert (=> b!655047 (= res!425006 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18518 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655048 () Bool)

(assert (=> b!655048 (= e!376187 (not true))))

(declare-fun lt!305466 () Unit!22494)

(assert (=> b!655048 (= lt!305466 e!376182)))

(declare-fun c!75382 () Bool)

(declare-fun lt!305480 () SeekEntryResult!6965)

(assert (=> b!655048 (= c!75382 (= lt!305480 (Found!6965 index!984)))))

(declare-fun lt!305475 () Unit!22494)

(assert (=> b!655048 (= lt!305475 e!376189)))

(declare-fun c!75383 () Bool)

(assert (=> b!655048 (= c!75383 (= lt!305480 Undefined!6965))))

(declare-fun lt!305468 () (_ BitVec 64))

(assert (=> b!655048 (= lt!305480 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305468 lt!305462 mask!3053))))

(assert (=> b!655048 e!376177))

(declare-fun res!425008 () Bool)

(assert (=> b!655048 (=> (not res!425008) (not e!376177))))

(declare-fun lt!305479 () (_ BitVec 32))

(assert (=> b!655048 (= res!425008 (= lt!305464 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305479 vacantSpotIndex!68 lt!305468 lt!305462 mask!3053)))))

(assert (=> b!655048 (= lt!305464 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305479 vacantSpotIndex!68 (select (arr!18518 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655048 (= lt!305468 (select (store (arr!18518 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305477 () Unit!22494)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38644 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22494)

(assert (=> b!655048 (= lt!305477 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305479 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655048 (= lt!305479 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655049 () Bool)

(declare-fun Unit!22502 () Unit!22494)

(assert (=> b!655049 (= e!376179 Unit!22502)))

(declare-fun res!425009 () Bool)

(assert (=> start!59368 (=> (not res!425009) (not e!376188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59368 (= res!425009 (validMask!0 mask!3053))))

(assert (=> start!59368 e!376188))

(assert (=> start!59368 true))

(declare-fun array_inv!14292 (array!38644) Bool)

(assert (=> start!59368 (array_inv!14292 a!2986)))

(declare-fun b!655034 () Bool)

(declare-fun Unit!22503 () Unit!22494)

(assert (=> b!655034 (= e!376189 Unit!22503)))

(assert (= (and start!59368 res!425009) b!655042))

(assert (= (and b!655042 res!425012) b!655041))

(assert (= (and b!655041 res!425003) b!655029))

(assert (= (and b!655029 res!425005) b!655038))

(assert (= (and b!655038 res!425000) b!655028))

(assert (= (and b!655028 res!425004) b!655046))

(assert (= (and b!655046 res!425014) b!655036))

(assert (= (and b!655036 res!425011) b!655047))

(assert (= (and b!655047 res!425006) b!655045))

(assert (= (and b!655045 res!425007) b!655039))

(assert (= (and b!655039 res!425001) b!655048))

(assert (= (and b!655048 res!425008) b!655044))

(assert (= (and b!655048 c!75383) b!655031))

(assert (= (and b!655048 (not c!75383)) b!655034))

(assert (= (and b!655048 c!75382) b!655027))

(assert (= (and b!655048 (not c!75382)) b!655037))

(assert (= (and b!655027 res!425010) b!655030))

(assert (= (and b!655030 (not res!425015)) b!655033))

(assert (= (and b!655033 res!425013) b!655040))

(assert (= (and b!655027 c!75380) b!655043))

(assert (= (and b!655027 (not c!75380)) b!655026))

(assert (= (and b!655027 c!75381) b!655035))

(assert (= (and b!655027 (not c!75381)) b!655049))

(assert (= (and b!655035 res!425002) b!655032))

(declare-fun m!628181 () Bool)

(assert (=> b!655043 m!628181))

(declare-fun m!628183 () Bool)

(assert (=> b!655043 m!628183))

(assert (=> b!655043 m!628183))

(declare-fun m!628185 () Bool)

(assert (=> b!655043 m!628185))

(declare-fun m!628187 () Bool)

(assert (=> b!655043 m!628187))

(assert (=> b!655043 m!628183))

(declare-fun m!628189 () Bool)

(assert (=> b!655043 m!628189))

(assert (=> b!655043 m!628183))

(declare-fun m!628191 () Bool)

(assert (=> b!655043 m!628191))

(declare-fun m!628193 () Bool)

(assert (=> b!655043 m!628193))

(declare-fun m!628195 () Bool)

(assert (=> b!655043 m!628195))

(declare-fun m!628197 () Bool)

(assert (=> b!655027 m!628197))

(declare-fun m!628199 () Bool)

(assert (=> b!655027 m!628199))

(assert (=> b!655027 m!628183))

(declare-fun m!628201 () Bool)

(assert (=> b!655036 m!628201))

(declare-fun m!628203 () Bool)

(assert (=> b!655028 m!628203))

(declare-fun m!628205 () Bool)

(assert (=> b!655039 m!628205))

(assert (=> b!655039 m!628183))

(assert (=> b!655039 m!628183))

(declare-fun m!628207 () Bool)

(assert (=> b!655039 m!628207))

(assert (=> b!655035 m!628183))

(declare-fun m!628209 () Bool)

(assert (=> b!655035 m!628209))

(assert (=> b!655035 m!628187))

(assert (=> b!655035 m!628183))

(declare-fun m!628211 () Bool)

(assert (=> b!655035 m!628211))

(assert (=> b!655035 m!628195))

(assert (=> b!655035 m!628183))

(assert (=> b!655035 m!628183))

(declare-fun m!628213 () Bool)

(assert (=> b!655035 m!628213))

(assert (=> b!655035 m!628183))

(declare-fun m!628215 () Bool)

(assert (=> b!655035 m!628215))

(declare-fun m!628217 () Bool)

(assert (=> b!655035 m!628217))

(declare-fun m!628219 () Bool)

(assert (=> b!655035 m!628219))

(assert (=> b!655032 m!628183))

(assert (=> b!655032 m!628183))

(declare-fun m!628221 () Bool)

(assert (=> b!655032 m!628221))

(assert (=> b!655033 m!628183))

(assert (=> b!655033 m!628183))

(assert (=> b!655033 m!628209))

(declare-fun m!628223 () Bool)

(assert (=> b!655038 m!628223))

(declare-fun m!628225 () Bool)

(assert (=> b!655047 m!628225))

(declare-fun m!628227 () Bool)

(assert (=> b!655046 m!628227))

(assert (=> b!655040 m!628183))

(assert (=> b!655040 m!628183))

(assert (=> b!655040 m!628221))

(assert (=> b!655045 m!628197))

(declare-fun m!628229 () Bool)

(assert (=> b!655045 m!628229))

(declare-fun m!628231 () Bool)

(assert (=> b!655029 m!628231))

(declare-fun m!628233 () Bool)

(assert (=> start!59368 m!628233))

(declare-fun m!628235 () Bool)

(assert (=> start!59368 m!628235))

(assert (=> b!655041 m!628183))

(assert (=> b!655041 m!628183))

(declare-fun m!628237 () Bool)

(assert (=> b!655041 m!628237))

(declare-fun m!628239 () Bool)

(assert (=> b!655048 m!628239))

(declare-fun m!628241 () Bool)

(assert (=> b!655048 m!628241))

(assert (=> b!655048 m!628183))

(assert (=> b!655048 m!628197))

(declare-fun m!628243 () Bool)

(assert (=> b!655048 m!628243))

(declare-fun m!628245 () Bool)

(assert (=> b!655048 m!628245))

(declare-fun m!628247 () Bool)

(assert (=> b!655048 m!628247))

(assert (=> b!655048 m!628183))

(declare-fun m!628249 () Bool)

(assert (=> b!655048 m!628249))

(push 1)

