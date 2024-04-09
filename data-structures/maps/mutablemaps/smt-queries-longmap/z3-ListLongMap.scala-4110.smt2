; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56168 () Bool)

(assert start!56168)

(declare-fun b!621039 () Bool)

(declare-datatypes ((Unit!20720 0))(
  ( (Unit!20721) )
))
(declare-fun e!356204 () Unit!20720)

(declare-fun Unit!20722 () Unit!20720)

(assert (=> b!621039 (= e!356204 Unit!20722)))

(declare-fun b!621040 () Bool)

(declare-fun res!400307 () Bool)

(declare-fun e!356212 () Bool)

(assert (=> b!621040 (=> (not res!400307) (not e!356212))))

(declare-datatypes ((array!37601 0))(
  ( (array!37602 (arr!18043 (Array (_ BitVec 32) (_ BitVec 64))) (size!18407 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37601)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621040 (= res!400307 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!287365 () array!37601)

(declare-fun b!621041 () Bool)

(declare-fun e!356214 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621041 (= e!356214 (arrayContainsKey!0 lt!287365 (select (arr!18043 a!2986) j!136) index!984))))

(declare-fun e!356209 () Bool)

(declare-fun b!621042 () Bool)

(assert (=> b!621042 (= e!356209 (arrayContainsKey!0 lt!287365 (select (arr!18043 a!2986) j!136) index!984))))

(declare-fun b!621043 () Bool)

(declare-fun e!356210 () Unit!20720)

(declare-fun Unit!20723 () Unit!20720)

(assert (=> b!621043 (= e!356210 Unit!20723)))

(declare-fun res!400314 () Bool)

(assert (=> start!56168 (=> (not res!400314) (not e!356212))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56168 (= res!400314 (validMask!0 mask!3053))))

(assert (=> start!56168 e!356212))

(assert (=> start!56168 true))

(declare-fun array_inv!13817 (array!37601) Bool)

(assert (=> start!56168 (array_inv!13817 a!2986)))

(declare-fun b!621044 () Bool)

(assert (=> b!621044 false))

(declare-fun lt!287370 () Unit!20720)

(declare-datatypes ((List!12137 0))(
  ( (Nil!12134) (Cons!12133 (h!13178 (_ BitVec 64)) (t!18373 List!12137)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37601 (_ BitVec 64) (_ BitVec 32) List!12137) Unit!20720)

(assert (=> b!621044 (= lt!287370 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287365 (select (arr!18043 a!2986) j!136) index!984 Nil!12134))))

(declare-fun arrayNoDuplicates!0 (array!37601 (_ BitVec 32) List!12137) Bool)

(assert (=> b!621044 (arrayNoDuplicates!0 lt!287365 index!984 Nil!12134)))

(declare-fun lt!287361 () Unit!20720)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37601 (_ BitVec 32) (_ BitVec 32)) Unit!20720)

(assert (=> b!621044 (= lt!287361 (lemmaNoDuplicateFromThenFromBigger!0 lt!287365 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621044 (arrayNoDuplicates!0 lt!287365 #b00000000000000000000000000000000 Nil!12134)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!287359 () Unit!20720)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37601 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12137) Unit!20720)

(assert (=> b!621044 (= lt!287359 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12134))))

(assert (=> b!621044 (arrayContainsKey!0 lt!287365 (select (arr!18043 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287363 () Unit!20720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37601 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20720)

(assert (=> b!621044 (= lt!287363 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287365 (select (arr!18043 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!621044 e!356209))

(declare-fun res!400316 () Bool)

(assert (=> b!621044 (=> (not res!400316) (not e!356209))))

(assert (=> b!621044 (= res!400316 (arrayContainsKey!0 lt!287365 (select (arr!18043 a!2986) j!136) j!136))))

(declare-fun e!356205 () Unit!20720)

(declare-fun Unit!20724 () Unit!20720)

(assert (=> b!621044 (= e!356205 Unit!20724)))

(declare-fun b!621045 () Bool)

(declare-fun res!400309 () Bool)

(assert (=> b!621045 (=> (not res!400309) (not e!356212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621045 (= res!400309 (validKeyInArray!0 (select (arr!18043 a!2986) j!136)))))

(declare-fun b!621046 () Bool)

(declare-fun res!400313 () Bool)

(assert (=> b!621046 (= res!400313 (bvsge j!136 index!984))))

(declare-fun e!356213 () Bool)

(assert (=> b!621046 (=> res!400313 e!356213)))

(declare-fun e!356215 () Bool)

(assert (=> b!621046 (= e!356215 e!356213)))

(declare-fun b!621047 () Bool)

(declare-fun res!400308 () Bool)

(assert (=> b!621047 (=> (not res!400308) (not e!356212))))

(assert (=> b!621047 (= res!400308 (validKeyInArray!0 k0!1786))))

(declare-fun b!621048 () Bool)

(declare-fun res!400306 () Bool)

(declare-fun e!356202 () Bool)

(assert (=> b!621048 (=> (not res!400306) (not e!356202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37601 (_ BitVec 32)) Bool)

(assert (=> b!621048 (= res!400306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621049 () Bool)

(declare-fun Unit!20725 () Unit!20720)

(assert (=> b!621049 (= e!356204 Unit!20725)))

(assert (=> b!621049 false))

(declare-fun b!621050 () Bool)

(declare-fun res!400303 () Bool)

(assert (=> b!621050 (=> (not res!400303) (not e!356202))))

(assert (=> b!621050 (= res!400303 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12134))))

(declare-fun b!621051 () Bool)

(declare-fun res!400312 () Bool)

(assert (=> b!621051 (=> (not res!400312) (not e!356212))))

(assert (=> b!621051 (= res!400312 (and (= (size!18407 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18407 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18407 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621052 () Bool)

(declare-fun res!400302 () Bool)

(assert (=> b!621052 (= res!400302 (arrayContainsKey!0 lt!287365 (select (arr!18043 a!2986) j!136) j!136))))

(assert (=> b!621052 (=> (not res!400302) (not e!356214))))

(assert (=> b!621052 (= e!356213 e!356214)))

(declare-fun b!621053 () Bool)

(declare-fun e!356211 () Bool)

(declare-fun e!356206 () Bool)

(assert (=> b!621053 (= e!356211 e!356206)))

(declare-fun res!400311 () Bool)

(assert (=> b!621053 (=> (not res!400311) (not e!356206))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6490 0))(
  ( (MissingZero!6490 (index!28243 (_ BitVec 32))) (Found!6490 (index!28244 (_ BitVec 32))) (Intermediate!6490 (undefined!7302 Bool) (index!28245 (_ BitVec 32)) (x!57043 (_ BitVec 32))) (Undefined!6490) (MissingVacant!6490 (index!28246 (_ BitVec 32))) )
))
(declare-fun lt!287372 () SeekEntryResult!6490)

(assert (=> b!621053 (= res!400311 (and (= lt!287372 (Found!6490 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18043 a!2986) index!984) (select (arr!18043 a!2986) j!136))) (not (= (select (arr!18043 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37601 (_ BitVec 32)) SeekEntryResult!6490)

(assert (=> b!621053 (= lt!287372 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18043 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621054 () Bool)

(declare-fun res!400315 () Bool)

(assert (=> b!621054 (=> (not res!400315) (not e!356202))))

(assert (=> b!621054 (= res!400315 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18043 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621055 () Bool)

(declare-fun Unit!20726 () Unit!20720)

(assert (=> b!621055 (= e!356210 Unit!20726)))

(declare-fun res!400305 () Bool)

(assert (=> b!621055 (= res!400305 (= (select (store (arr!18043 a!2986) i!1108 k0!1786) index!984) (select (arr!18043 a!2986) j!136)))))

(assert (=> b!621055 (=> (not res!400305) (not e!356215))))

(assert (=> b!621055 e!356215))

(declare-fun c!70737 () Bool)

(assert (=> b!621055 (= c!70737 (bvslt j!136 index!984))))

(declare-fun lt!287358 () Unit!20720)

(declare-fun e!356203 () Unit!20720)

(assert (=> b!621055 (= lt!287358 e!356203)))

(declare-fun c!70738 () Bool)

(assert (=> b!621055 (= c!70738 (bvslt index!984 j!136))))

(declare-fun lt!287373 () Unit!20720)

(assert (=> b!621055 (= lt!287373 e!356205)))

(assert (=> b!621055 false))

(declare-fun b!621056 () Bool)

(assert (=> b!621056 (= e!356212 e!356202)))

(declare-fun res!400304 () Bool)

(assert (=> b!621056 (=> (not res!400304) (not e!356202))))

(declare-fun lt!287366 () SeekEntryResult!6490)

(assert (=> b!621056 (= res!400304 (or (= lt!287366 (MissingZero!6490 i!1108)) (= lt!287366 (MissingVacant!6490 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37601 (_ BitVec 32)) SeekEntryResult!6490)

(assert (=> b!621056 (= lt!287366 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!621057 () Bool)

(declare-fun Unit!20727 () Unit!20720)

(assert (=> b!621057 (= e!356203 Unit!20727)))

(declare-fun b!621058 () Bool)

(assert (=> b!621058 false))

(declare-fun lt!287369 () Unit!20720)

(assert (=> b!621058 (= lt!287369 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287365 (select (arr!18043 a!2986) j!136) j!136 Nil!12134))))

(assert (=> b!621058 (arrayNoDuplicates!0 lt!287365 j!136 Nil!12134)))

(declare-fun lt!287368 () Unit!20720)

(assert (=> b!621058 (= lt!287368 (lemmaNoDuplicateFromThenFromBigger!0 lt!287365 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621058 (arrayNoDuplicates!0 lt!287365 #b00000000000000000000000000000000 Nil!12134)))

(declare-fun lt!287364 () Unit!20720)

(assert (=> b!621058 (= lt!287364 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12134))))

(assert (=> b!621058 (arrayContainsKey!0 lt!287365 (select (arr!18043 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287371 () Unit!20720)

(assert (=> b!621058 (= lt!287371 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287365 (select (arr!18043 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20728 () Unit!20720)

(assert (=> b!621058 (= e!356203 Unit!20728)))

(declare-fun b!621059 () Bool)

(assert (=> b!621059 (= e!356202 e!356211)))

(declare-fun res!400310 () Bool)

(assert (=> b!621059 (=> (not res!400310) (not e!356211))))

(assert (=> b!621059 (= res!400310 (= (select (store (arr!18043 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621059 (= lt!287365 (array!37602 (store (arr!18043 a!2986) i!1108 k0!1786) (size!18407 a!2986)))))

(declare-fun b!621060 () Bool)

(declare-fun e!356207 () Bool)

(declare-fun lt!287360 () SeekEntryResult!6490)

(assert (=> b!621060 (= e!356207 (= lt!287372 lt!287360))))

(declare-fun b!621061 () Bool)

(declare-fun Unit!20729 () Unit!20720)

(assert (=> b!621061 (= e!356205 Unit!20729)))

(declare-fun b!621062 () Bool)

(assert (=> b!621062 (= e!356206 (not true))))

(declare-fun lt!287374 () Unit!20720)

(assert (=> b!621062 (= lt!287374 e!356210)))

(declare-fun c!70736 () Bool)

(declare-fun lt!287375 () SeekEntryResult!6490)

(assert (=> b!621062 (= c!70736 (= lt!287375 (Found!6490 index!984)))))

(declare-fun lt!287357 () Unit!20720)

(assert (=> b!621062 (= lt!287357 e!356204)))

(declare-fun c!70739 () Bool)

(assert (=> b!621062 (= c!70739 (= lt!287375 Undefined!6490))))

(declare-fun lt!287362 () (_ BitVec 64))

(assert (=> b!621062 (= lt!287375 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287362 lt!287365 mask!3053))))

(assert (=> b!621062 e!356207))

(declare-fun res!400301 () Bool)

(assert (=> b!621062 (=> (not res!400301) (not e!356207))))

(declare-fun lt!287367 () (_ BitVec 32))

(assert (=> b!621062 (= res!400301 (= lt!287360 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287367 vacantSpotIndex!68 lt!287362 lt!287365 mask!3053)))))

(assert (=> b!621062 (= lt!287360 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287367 vacantSpotIndex!68 (select (arr!18043 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621062 (= lt!287362 (select (store (arr!18043 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!287376 () Unit!20720)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37601 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20720)

(assert (=> b!621062 (= lt!287376 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287367 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621062 (= lt!287367 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56168 res!400314) b!621051))

(assert (= (and b!621051 res!400312) b!621045))

(assert (= (and b!621045 res!400309) b!621047))

(assert (= (and b!621047 res!400308) b!621040))

(assert (= (and b!621040 res!400307) b!621056))

(assert (= (and b!621056 res!400304) b!621048))

(assert (= (and b!621048 res!400306) b!621050))

(assert (= (and b!621050 res!400303) b!621054))

(assert (= (and b!621054 res!400315) b!621059))

(assert (= (and b!621059 res!400310) b!621053))

(assert (= (and b!621053 res!400311) b!621062))

(assert (= (and b!621062 res!400301) b!621060))

(assert (= (and b!621062 c!70739) b!621049))

(assert (= (and b!621062 (not c!70739)) b!621039))

(assert (= (and b!621062 c!70736) b!621055))

(assert (= (and b!621062 (not c!70736)) b!621043))

(assert (= (and b!621055 res!400305) b!621046))

(assert (= (and b!621046 (not res!400313)) b!621052))

(assert (= (and b!621052 res!400302) b!621041))

(assert (= (and b!621055 c!70737) b!621058))

(assert (= (and b!621055 (not c!70737)) b!621057))

(assert (= (and b!621055 c!70738) b!621044))

(assert (= (and b!621055 (not c!70738)) b!621061))

(assert (= (and b!621044 res!400316) b!621042))

(declare-fun m!596989 () Bool)

(assert (=> start!56168 m!596989))

(declare-fun m!596991 () Bool)

(assert (=> start!56168 m!596991))

(declare-fun m!596993 () Bool)

(assert (=> b!621048 m!596993))

(declare-fun m!596995 () Bool)

(assert (=> b!621059 m!596995))

(declare-fun m!596997 () Bool)

(assert (=> b!621059 m!596997))

(declare-fun m!596999 () Bool)

(assert (=> b!621050 m!596999))

(declare-fun m!597001 () Bool)

(assert (=> b!621052 m!597001))

(assert (=> b!621052 m!597001))

(declare-fun m!597003 () Bool)

(assert (=> b!621052 m!597003))

(declare-fun m!597005 () Bool)

(assert (=> b!621053 m!597005))

(assert (=> b!621053 m!597001))

(assert (=> b!621053 m!597001))

(declare-fun m!597007 () Bool)

(assert (=> b!621053 m!597007))

(declare-fun m!597009 () Bool)

(assert (=> b!621062 m!597009))

(assert (=> b!621062 m!597001))

(declare-fun m!597011 () Bool)

(assert (=> b!621062 m!597011))

(assert (=> b!621062 m!596995))

(declare-fun m!597013 () Bool)

(assert (=> b!621062 m!597013))

(assert (=> b!621062 m!597001))

(declare-fun m!597015 () Bool)

(assert (=> b!621062 m!597015))

(declare-fun m!597017 () Bool)

(assert (=> b!621062 m!597017))

(declare-fun m!597019 () Bool)

(assert (=> b!621062 m!597019))

(declare-fun m!597021 () Bool)

(assert (=> b!621054 m!597021))

(declare-fun m!597023 () Bool)

(assert (=> b!621056 m!597023))

(assert (=> b!621044 m!597001))

(declare-fun m!597025 () Bool)

(assert (=> b!621044 m!597025))

(assert (=> b!621044 m!597001))

(declare-fun m!597027 () Bool)

(assert (=> b!621044 m!597027))

(assert (=> b!621044 m!597001))

(declare-fun m!597029 () Bool)

(assert (=> b!621044 m!597029))

(declare-fun m!597031 () Bool)

(assert (=> b!621044 m!597031))

(assert (=> b!621044 m!597001))

(declare-fun m!597033 () Bool)

(assert (=> b!621044 m!597033))

(declare-fun m!597035 () Bool)

(assert (=> b!621044 m!597035))

(assert (=> b!621044 m!597001))

(assert (=> b!621044 m!597003))

(declare-fun m!597037 () Bool)

(assert (=> b!621044 m!597037))

(assert (=> b!621041 m!597001))

(assert (=> b!621041 m!597001))

(declare-fun m!597039 () Bool)

(assert (=> b!621041 m!597039))

(declare-fun m!597041 () Bool)

(assert (=> b!621040 m!597041))

(assert (=> b!621055 m!596995))

(declare-fun m!597043 () Bool)

(assert (=> b!621055 m!597043))

(assert (=> b!621055 m!597001))

(assert (=> b!621042 m!597001))

(assert (=> b!621042 m!597001))

(assert (=> b!621042 m!597039))

(assert (=> b!621045 m!597001))

(assert (=> b!621045 m!597001))

(declare-fun m!597045 () Bool)

(assert (=> b!621045 m!597045))

(assert (=> b!621058 m!597001))

(declare-fun m!597047 () Bool)

(assert (=> b!621058 m!597047))

(declare-fun m!597049 () Bool)

(assert (=> b!621058 m!597049))

(assert (=> b!621058 m!597001))

(declare-fun m!597051 () Bool)

(assert (=> b!621058 m!597051))

(assert (=> b!621058 m!597001))

(declare-fun m!597053 () Bool)

(assert (=> b!621058 m!597053))

(assert (=> b!621058 m!597037))

(assert (=> b!621058 m!597001))

(declare-fun m!597055 () Bool)

(assert (=> b!621058 m!597055))

(assert (=> b!621058 m!597031))

(declare-fun m!597057 () Bool)

(assert (=> b!621047 m!597057))

(check-sat (not b!621050) (not b!621047) (not b!621058) (not b!621048) (not b!621041) (not b!621045) (not b!621044) (not b!621052) (not b!621040) (not start!56168) (not b!621042) (not b!621056) (not b!621062) (not b!621053))
(check-sat)
