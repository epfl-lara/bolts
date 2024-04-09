; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56088 () Bool)

(assert start!56088)

(declare-fun b!618089 () Bool)

(declare-fun res!398320 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618089 (= res!398320 (bvsge j!136 index!984))))

(declare-fun e!354463 () Bool)

(assert (=> b!618089 (=> res!398320 e!354463)))

(declare-fun e!354461 () Bool)

(assert (=> b!618089 (= e!354461 e!354463)))

(declare-fun b!618090 () Bool)

(declare-fun res!398317 () Bool)

(declare-fun e!354460 () Bool)

(assert (=> b!618090 (=> (not res!398317) (not e!354460))))

(declare-datatypes ((array!37521 0))(
  ( (array!37522 (arr!18003 (Array (_ BitVec 32) (_ BitVec 64))) (size!18367 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37521)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618090 (= res!398317 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618091 () Bool)

(declare-fun e!354462 () Bool)

(assert (=> b!618091 (= e!354462 true)))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!618091 (= (select (store (arr!18003 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618092 () Bool)

(declare-fun res!398311 () Bool)

(declare-fun e!354456 () Bool)

(assert (=> b!618092 (=> (not res!398311) (not e!354456))))

(declare-datatypes ((List!12097 0))(
  ( (Nil!12094) (Cons!12093 (h!13138 (_ BitVec 64)) (t!18333 List!12097)) )
))
(declare-fun arrayNoDuplicates!0 (array!37521 (_ BitVec 32) List!12097) Bool)

(assert (=> b!618092 (= res!398311 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12094))))

(declare-fun lt!284976 () array!37521)

(declare-fun e!354454 () Bool)

(declare-fun b!618093 () Bool)

(assert (=> b!618093 (= e!354454 (arrayContainsKey!0 lt!284976 (select (arr!18003 a!2986) j!136) index!984))))

(declare-fun b!618094 () Bool)

(declare-datatypes ((Unit!20320 0))(
  ( (Unit!20321) )
))
(declare-fun e!354464 () Unit!20320)

(declare-fun Unit!20322 () Unit!20320)

(assert (=> b!618094 (= e!354464 Unit!20322)))

(assert (=> b!618094 false))

(declare-fun res!398312 () Bool)

(assert (=> start!56088 (=> (not res!398312) (not e!354460))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56088 (= res!398312 (validMask!0 mask!3053))))

(assert (=> start!56088 e!354460))

(assert (=> start!56088 true))

(declare-fun array_inv!13777 (array!37521) Bool)

(assert (=> start!56088 (array_inv!13777 a!2986)))

(declare-fun b!618095 () Bool)

(declare-fun res!398314 () Bool)

(assert (=> b!618095 (=> (not res!398314) (not e!354460))))

(assert (=> b!618095 (= res!398314 (and (= (size!18367 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18367 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18367 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618096 () Bool)

(declare-fun e!354453 () Bool)

(assert (=> b!618096 (= e!354456 e!354453)))

(declare-fun res!398319 () Bool)

(assert (=> b!618096 (=> (not res!398319) (not e!354453))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618096 (= res!398319 (= (select (store (arr!18003 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618096 (= lt!284976 (array!37522 (store (arr!18003 a!2986) i!1108 k!1786) (size!18367 a!2986)))))

(declare-fun b!618097 () Bool)

(declare-fun res!398318 () Bool)

(assert (=> b!618097 (=> (not res!398318) (not e!354460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618097 (= res!398318 (validKeyInArray!0 k!1786))))

(declare-fun b!618098 () Bool)

(declare-fun e!354466 () Unit!20320)

(declare-fun Unit!20323 () Unit!20320)

(assert (=> b!618098 (= e!354466 Unit!20323)))

(declare-fun e!354459 () Bool)

(declare-fun b!618099 () Bool)

(assert (=> b!618099 (= e!354459 (arrayContainsKey!0 lt!284976 (select (arr!18003 a!2986) j!136) index!984))))

(declare-fun b!618100 () Bool)

(declare-fun e!354465 () Bool)

(assert (=> b!618100 (= e!354465 (not e!354462))))

(declare-fun res!398326 () Bool)

(assert (=> b!618100 (=> res!398326 e!354462)))

(declare-datatypes ((SeekEntryResult!6450 0))(
  ( (MissingZero!6450 (index!28083 (_ BitVec 32))) (Found!6450 (index!28084 (_ BitVec 32))) (Intermediate!6450 (undefined!7262 Bool) (index!28085 (_ BitVec 32)) (x!56899 (_ BitVec 32))) (Undefined!6450) (MissingVacant!6450 (index!28086 (_ BitVec 32))) )
))
(declare-fun lt!284965 () SeekEntryResult!6450)

(assert (=> b!618100 (= res!398326 (not (= lt!284965 (MissingVacant!6450 vacantSpotIndex!68))))))

(declare-fun lt!284961 () Unit!20320)

(assert (=> b!618100 (= lt!284961 e!354466)))

(declare-fun c!70257 () Bool)

(assert (=> b!618100 (= c!70257 (= lt!284965 (Found!6450 index!984)))))

(declare-fun lt!284972 () Unit!20320)

(assert (=> b!618100 (= lt!284972 e!354464)))

(declare-fun c!70256 () Bool)

(assert (=> b!618100 (= c!70256 (= lt!284965 Undefined!6450))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!284970 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37521 (_ BitVec 32)) SeekEntryResult!6450)

(assert (=> b!618100 (= lt!284965 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284970 lt!284976 mask!3053))))

(declare-fun e!354452 () Bool)

(assert (=> b!618100 e!354452))

(declare-fun res!398323 () Bool)

(assert (=> b!618100 (=> (not res!398323) (not e!354452))))

(declare-fun lt!284963 () SeekEntryResult!6450)

(declare-fun lt!284973 () (_ BitVec 32))

(assert (=> b!618100 (= res!398323 (= lt!284963 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284973 vacantSpotIndex!68 lt!284970 lt!284976 mask!3053)))))

(assert (=> b!618100 (= lt!284963 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284973 vacantSpotIndex!68 (select (arr!18003 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618100 (= lt!284970 (select (store (arr!18003 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284969 () Unit!20320)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37521 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20320)

(assert (=> b!618100 (= lt!284969 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284973 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618100 (= lt!284973 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618101 () Bool)

(assert (=> b!618101 (= e!354460 e!354456)))

(declare-fun res!398327 () Bool)

(assert (=> b!618101 (=> (not res!398327) (not e!354456))))

(declare-fun lt!284974 () SeekEntryResult!6450)

(assert (=> b!618101 (= res!398327 (or (= lt!284974 (MissingZero!6450 i!1108)) (= lt!284974 (MissingVacant!6450 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37521 (_ BitVec 32)) SeekEntryResult!6450)

(assert (=> b!618101 (= lt!284974 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618102 () Bool)

(declare-fun res!398316 () Bool)

(assert (=> b!618102 (=> (not res!398316) (not e!354460))))

(assert (=> b!618102 (= res!398316 (validKeyInArray!0 (select (arr!18003 a!2986) j!136)))))

(declare-fun b!618103 () Bool)

(declare-fun lt!284959 () SeekEntryResult!6450)

(assert (=> b!618103 (= e!354452 (= lt!284959 lt!284963))))

(declare-fun b!618104 () Bool)

(assert (=> b!618104 false))

(declare-fun lt!284962 () Unit!20320)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37521 (_ BitVec 64) (_ BitVec 32) List!12097) Unit!20320)

(assert (=> b!618104 (= lt!284962 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284976 (select (arr!18003 a!2986) j!136) j!136 Nil!12094))))

(assert (=> b!618104 (arrayNoDuplicates!0 lt!284976 j!136 Nil!12094)))

(declare-fun lt!284967 () Unit!20320)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37521 (_ BitVec 32) (_ BitVec 32)) Unit!20320)

(assert (=> b!618104 (= lt!284967 (lemmaNoDuplicateFromThenFromBigger!0 lt!284976 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618104 (arrayNoDuplicates!0 lt!284976 #b00000000000000000000000000000000 Nil!12094)))

(declare-fun lt!284966 () Unit!20320)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37521 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12097) Unit!20320)

(assert (=> b!618104 (= lt!284966 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12094))))

(assert (=> b!618104 (arrayContainsKey!0 lt!284976 (select (arr!18003 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284958 () Unit!20320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37521 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20320)

(assert (=> b!618104 (= lt!284958 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284976 (select (arr!18003 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!354458 () Unit!20320)

(declare-fun Unit!20324 () Unit!20320)

(assert (=> b!618104 (= e!354458 Unit!20324)))

(declare-fun b!618105 () Bool)

(assert (=> b!618105 false))

(declare-fun lt!284968 () Unit!20320)

(assert (=> b!618105 (= lt!284968 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284976 (select (arr!18003 a!2986) j!136) index!984 Nil!12094))))

(assert (=> b!618105 (arrayNoDuplicates!0 lt!284976 index!984 Nil!12094)))

(declare-fun lt!284960 () Unit!20320)

(assert (=> b!618105 (= lt!284960 (lemmaNoDuplicateFromThenFromBigger!0 lt!284976 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618105 (arrayNoDuplicates!0 lt!284976 #b00000000000000000000000000000000 Nil!12094)))

(declare-fun lt!284971 () Unit!20320)

(assert (=> b!618105 (= lt!284971 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12094))))

(assert (=> b!618105 (arrayContainsKey!0 lt!284976 (select (arr!18003 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284957 () Unit!20320)

(assert (=> b!618105 (= lt!284957 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284976 (select (arr!18003 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618105 e!354454))

(declare-fun res!398324 () Bool)

(assert (=> b!618105 (=> (not res!398324) (not e!354454))))

(assert (=> b!618105 (= res!398324 (arrayContainsKey!0 lt!284976 (select (arr!18003 a!2986) j!136) j!136))))

(declare-fun e!354455 () Unit!20320)

(declare-fun Unit!20325 () Unit!20320)

(assert (=> b!618105 (= e!354455 Unit!20325)))

(declare-fun b!618106 () Bool)

(declare-fun Unit!20326 () Unit!20320)

(assert (=> b!618106 (= e!354466 Unit!20326)))

(declare-fun res!398321 () Bool)

(assert (=> b!618106 (= res!398321 (= (select (store (arr!18003 a!2986) i!1108 k!1786) index!984) (select (arr!18003 a!2986) j!136)))))

(assert (=> b!618106 (=> (not res!398321) (not e!354461))))

(assert (=> b!618106 e!354461))

(declare-fun c!70258 () Bool)

(assert (=> b!618106 (= c!70258 (bvslt j!136 index!984))))

(declare-fun lt!284964 () Unit!20320)

(assert (=> b!618106 (= lt!284964 e!354458)))

(declare-fun c!70259 () Bool)

(assert (=> b!618106 (= c!70259 (bvslt index!984 j!136))))

(declare-fun lt!284975 () Unit!20320)

(assert (=> b!618106 (= lt!284975 e!354455)))

(assert (=> b!618106 false))

(declare-fun b!618107 () Bool)

(declare-fun res!398313 () Bool)

(assert (=> b!618107 (= res!398313 (arrayContainsKey!0 lt!284976 (select (arr!18003 a!2986) j!136) j!136))))

(assert (=> b!618107 (=> (not res!398313) (not e!354459))))

(assert (=> b!618107 (= e!354463 e!354459)))

(declare-fun b!618108 () Bool)

(assert (=> b!618108 (= e!354453 e!354465)))

(declare-fun res!398322 () Bool)

(assert (=> b!618108 (=> (not res!398322) (not e!354465))))

(assert (=> b!618108 (= res!398322 (and (= lt!284959 (Found!6450 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18003 a!2986) index!984) (select (arr!18003 a!2986) j!136))) (not (= (select (arr!18003 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!618108 (= lt!284959 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18003 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618109 () Bool)

(declare-fun Unit!20327 () Unit!20320)

(assert (=> b!618109 (= e!354464 Unit!20327)))

(declare-fun b!618110 () Bool)

(declare-fun res!398315 () Bool)

(assert (=> b!618110 (=> (not res!398315) (not e!354456))))

(assert (=> b!618110 (= res!398315 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18003 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618111 () Bool)

(declare-fun Unit!20328 () Unit!20320)

(assert (=> b!618111 (= e!354458 Unit!20328)))

(declare-fun b!618112 () Bool)

(declare-fun res!398325 () Bool)

(assert (=> b!618112 (=> (not res!398325) (not e!354456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37521 (_ BitVec 32)) Bool)

(assert (=> b!618112 (= res!398325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618113 () Bool)

(declare-fun Unit!20329 () Unit!20320)

(assert (=> b!618113 (= e!354455 Unit!20329)))

(assert (= (and start!56088 res!398312) b!618095))

(assert (= (and b!618095 res!398314) b!618102))

(assert (= (and b!618102 res!398316) b!618097))

(assert (= (and b!618097 res!398318) b!618090))

(assert (= (and b!618090 res!398317) b!618101))

(assert (= (and b!618101 res!398327) b!618112))

(assert (= (and b!618112 res!398325) b!618092))

(assert (= (and b!618092 res!398311) b!618110))

(assert (= (and b!618110 res!398315) b!618096))

(assert (= (and b!618096 res!398319) b!618108))

(assert (= (and b!618108 res!398322) b!618100))

(assert (= (and b!618100 res!398323) b!618103))

(assert (= (and b!618100 c!70256) b!618094))

(assert (= (and b!618100 (not c!70256)) b!618109))

(assert (= (and b!618100 c!70257) b!618106))

(assert (= (and b!618100 (not c!70257)) b!618098))

(assert (= (and b!618106 res!398321) b!618089))

(assert (= (and b!618089 (not res!398320)) b!618107))

(assert (= (and b!618107 res!398313) b!618099))

(assert (= (and b!618106 c!70258) b!618104))

(assert (= (and b!618106 (not c!70258)) b!618111))

(assert (= (and b!618106 c!70259) b!618105))

(assert (= (and b!618106 (not c!70259)) b!618113))

(assert (= (and b!618105 res!398324) b!618093))

(assert (= (and b!618100 (not res!398326)) b!618091))

(declare-fun m!594189 () Bool)

(assert (=> b!618110 m!594189))

(declare-fun m!594191 () Bool)

(assert (=> b!618096 m!594191))

(declare-fun m!594193 () Bool)

(assert (=> b!618096 m!594193))

(declare-fun m!594195 () Bool)

(assert (=> b!618093 m!594195))

(assert (=> b!618093 m!594195))

(declare-fun m!594197 () Bool)

(assert (=> b!618093 m!594197))

(declare-fun m!594199 () Bool)

(assert (=> b!618112 m!594199))

(assert (=> b!618107 m!594195))

(assert (=> b!618107 m!594195))

(declare-fun m!594201 () Bool)

(assert (=> b!618107 m!594201))

(declare-fun m!594203 () Bool)

(assert (=> b!618108 m!594203))

(assert (=> b!618108 m!594195))

(assert (=> b!618108 m!594195))

(declare-fun m!594205 () Bool)

(assert (=> b!618108 m!594205))

(declare-fun m!594207 () Bool)

(assert (=> b!618097 m!594207))

(declare-fun m!594209 () Bool)

(assert (=> b!618105 m!594209))

(assert (=> b!618105 m!594195))

(assert (=> b!618105 m!594195))

(declare-fun m!594211 () Bool)

(assert (=> b!618105 m!594211))

(declare-fun m!594213 () Bool)

(assert (=> b!618105 m!594213))

(declare-fun m!594215 () Bool)

(assert (=> b!618105 m!594215))

(assert (=> b!618105 m!594195))

(declare-fun m!594217 () Bool)

(assert (=> b!618105 m!594217))

(assert (=> b!618105 m!594195))

(assert (=> b!618105 m!594201))

(assert (=> b!618105 m!594195))

(declare-fun m!594219 () Bool)

(assert (=> b!618105 m!594219))

(declare-fun m!594221 () Bool)

(assert (=> b!618105 m!594221))

(declare-fun m!594223 () Bool)

(assert (=> b!618101 m!594223))

(assert (=> b!618102 m!594195))

(assert (=> b!618102 m!594195))

(declare-fun m!594225 () Bool)

(assert (=> b!618102 m!594225))

(declare-fun m!594227 () Bool)

(assert (=> b!618090 m!594227))

(assert (=> b!618106 m!594191))

(declare-fun m!594229 () Bool)

(assert (=> b!618106 m!594229))

(assert (=> b!618106 m!594195))

(declare-fun m!594231 () Bool)

(assert (=> b!618100 m!594231))

(declare-fun m!594233 () Bool)

(assert (=> b!618100 m!594233))

(assert (=> b!618100 m!594195))

(assert (=> b!618100 m!594191))

(declare-fun m!594235 () Bool)

(assert (=> b!618100 m!594235))

(assert (=> b!618100 m!594195))

(declare-fun m!594237 () Bool)

(assert (=> b!618100 m!594237))

(declare-fun m!594239 () Bool)

(assert (=> b!618100 m!594239))

(declare-fun m!594241 () Bool)

(assert (=> b!618100 m!594241))

(declare-fun m!594243 () Bool)

(assert (=> start!56088 m!594243))

(declare-fun m!594245 () Bool)

(assert (=> start!56088 m!594245))

(declare-fun m!594247 () Bool)

(assert (=> b!618092 m!594247))

(assert (=> b!618104 m!594195))

(declare-fun m!594249 () Bool)

(assert (=> b!618104 m!594249))

(assert (=> b!618104 m!594195))

(declare-fun m!594251 () Bool)

(assert (=> b!618104 m!594251))

(assert (=> b!618104 m!594195))

(assert (=> b!618104 m!594213))

(assert (=> b!618104 m!594195))

(declare-fun m!594253 () Bool)

(assert (=> b!618104 m!594253))

(declare-fun m!594255 () Bool)

(assert (=> b!618104 m!594255))

(declare-fun m!594257 () Bool)

(assert (=> b!618104 m!594257))

(assert (=> b!618104 m!594221))

(assert (=> b!618099 m!594195))

(assert (=> b!618099 m!594195))

(assert (=> b!618099 m!594197))

(assert (=> b!618091 m!594191))

(assert (=> b!618091 m!594229))

(push 1)

