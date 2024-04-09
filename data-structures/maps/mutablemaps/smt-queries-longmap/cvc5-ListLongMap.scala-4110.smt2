; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56166 () Bool)

(assert start!56166)

(declare-fun b!620967 () Bool)

(declare-fun res!400267 () Bool)

(declare-fun e!356165 () Bool)

(assert (=> b!620967 (=> (not res!400267) (not e!356165))))

(declare-datatypes ((array!37599 0))(
  ( (array!37600 (arr!18042 (Array (_ BitVec 32) (_ BitVec 64))) (size!18406 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37599)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620967 (= res!400267 (validKeyInArray!0 (select (arr!18042 a!2986) j!136)))))

(declare-fun b!620968 () Bool)

(declare-fun res!400258 () Bool)

(assert (=> b!620968 (=> (not res!400258) (not e!356165))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620968 (= res!400258 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620969 () Bool)

(declare-fun res!400256 () Bool)

(assert (=> b!620969 (=> (not res!400256) (not e!356165))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!620969 (= res!400256 (and (= (size!18406 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18406 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18406 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!287302 () array!37599)

(declare-fun e!356171 () Bool)

(declare-fun b!620970 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620970 (= e!356171 (arrayContainsKey!0 lt!287302 (select (arr!18042 a!2986) j!136) index!984))))

(declare-fun b!620971 () Bool)

(declare-fun res!400257 () Bool)

(declare-fun e!356163 () Bool)

(assert (=> b!620971 (=> (not res!400257) (not e!356163))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620971 (= res!400257 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18042 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620972 () Bool)

(declare-fun res!400254 () Bool)

(assert (=> b!620972 (= res!400254 (bvsge j!136 index!984))))

(declare-fun e!356167 () Bool)

(assert (=> b!620972 (=> res!400254 e!356167)))

(declare-fun e!356170 () Bool)

(assert (=> b!620972 (= e!356170 e!356167)))

(declare-fun res!400260 () Bool)

(assert (=> start!56166 (=> (not res!400260) (not e!356165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56166 (= res!400260 (validMask!0 mask!3053))))

(assert (=> start!56166 e!356165))

(assert (=> start!56166 true))

(declare-fun array_inv!13816 (array!37599) Bool)

(assert (=> start!56166 (array_inv!13816 a!2986)))

(declare-fun b!620973 () Bool)

(declare-fun e!356172 () Bool)

(assert (=> b!620973 (= e!356163 e!356172)))

(declare-fun res!400263 () Bool)

(assert (=> b!620973 (=> (not res!400263) (not e!356172))))

(assert (=> b!620973 (= res!400263 (= (select (store (arr!18042 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620973 (= lt!287302 (array!37600 (store (arr!18042 a!2986) i!1108 k!1786) (size!18406 a!2986)))))

(declare-fun b!620974 () Bool)

(declare-datatypes ((Unit!20710 0))(
  ( (Unit!20711) )
))
(declare-fun e!356161 () Unit!20710)

(declare-fun Unit!20712 () Unit!20710)

(assert (=> b!620974 (= e!356161 Unit!20712)))

(declare-fun b!620975 () Bool)

(declare-fun e!356168 () Unit!20710)

(declare-fun Unit!20713 () Unit!20710)

(assert (=> b!620975 (= e!356168 Unit!20713)))

(declare-fun b!620976 () Bool)

(declare-fun res!400268 () Bool)

(assert (=> b!620976 (= res!400268 (arrayContainsKey!0 lt!287302 (select (arr!18042 a!2986) j!136) j!136))))

(assert (=> b!620976 (=> (not res!400268) (not e!356171))))

(assert (=> b!620976 (= e!356167 e!356171)))

(declare-fun b!620977 () Bool)

(declare-fun Unit!20714 () Unit!20710)

(assert (=> b!620977 (= e!356168 Unit!20714)))

(assert (=> b!620977 false))

(declare-fun b!620978 () Bool)

(declare-fun e!356160 () Unit!20710)

(declare-fun Unit!20715 () Unit!20710)

(assert (=> b!620978 (= e!356160 Unit!20715)))

(declare-fun b!620979 () Bool)

(declare-fun e!356166 () Bool)

(assert (=> b!620979 (= e!356172 e!356166)))

(declare-fun res!400255 () Bool)

(assert (=> b!620979 (=> (not res!400255) (not e!356166))))

(declare-datatypes ((SeekEntryResult!6489 0))(
  ( (MissingZero!6489 (index!28239 (_ BitVec 32))) (Found!6489 (index!28240 (_ BitVec 32))) (Intermediate!6489 (undefined!7301 Bool) (index!28241 (_ BitVec 32)) (x!57042 (_ BitVec 32))) (Undefined!6489) (MissingVacant!6489 (index!28242 (_ BitVec 32))) )
))
(declare-fun lt!287303 () SeekEntryResult!6489)

(assert (=> b!620979 (= res!400255 (and (= lt!287303 (Found!6489 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18042 a!2986) index!984) (select (arr!18042 a!2986) j!136))) (not (= (select (arr!18042 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37599 (_ BitVec 32)) SeekEntryResult!6489)

(assert (=> b!620979 (= lt!287303 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18042 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620980 () Bool)

(declare-fun Unit!20716 () Unit!20710)

(assert (=> b!620980 (= e!356160 Unit!20716)))

(declare-fun res!400253 () Bool)

(assert (=> b!620980 (= res!400253 (= (select (store (arr!18042 a!2986) i!1108 k!1786) index!984) (select (arr!18042 a!2986) j!136)))))

(assert (=> b!620980 (=> (not res!400253) (not e!356170))))

(assert (=> b!620980 e!356170))

(declare-fun c!70724 () Bool)

(assert (=> b!620980 (= c!70724 (bvslt j!136 index!984))))

(declare-fun lt!287301 () Unit!20710)

(declare-fun e!356173 () Unit!20710)

(assert (=> b!620980 (= lt!287301 e!356173)))

(declare-fun c!70726 () Bool)

(assert (=> b!620980 (= c!70726 (bvslt index!984 j!136))))

(declare-fun lt!287300 () Unit!20710)

(assert (=> b!620980 (= lt!287300 e!356161)))

(assert (=> b!620980 false))

(declare-fun b!620981 () Bool)

(assert (=> b!620981 (= e!356165 e!356163)))

(declare-fun res!400262 () Bool)

(assert (=> b!620981 (=> (not res!400262) (not e!356163))))

(declare-fun lt!287315 () SeekEntryResult!6489)

(assert (=> b!620981 (= res!400262 (or (= lt!287315 (MissingZero!6489 i!1108)) (= lt!287315 (MissingVacant!6489 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37599 (_ BitVec 32)) SeekEntryResult!6489)

(assert (=> b!620981 (= lt!287315 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620982 () Bool)

(declare-fun e!356162 () Bool)

(declare-fun lt!287313 () SeekEntryResult!6489)

(assert (=> b!620982 (= e!356162 (= lt!287303 lt!287313))))

(declare-fun b!620983 () Bool)

(assert (=> b!620983 false))

(declare-fun lt!287314 () Unit!20710)

(declare-datatypes ((List!12136 0))(
  ( (Nil!12133) (Cons!12132 (h!13177 (_ BitVec 64)) (t!18372 List!12136)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37599 (_ BitVec 64) (_ BitVec 32) List!12136) Unit!20710)

(assert (=> b!620983 (= lt!287314 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287302 (select (arr!18042 a!2986) j!136) index!984 Nil!12133))))

(declare-fun arrayNoDuplicates!0 (array!37599 (_ BitVec 32) List!12136) Bool)

(assert (=> b!620983 (arrayNoDuplicates!0 lt!287302 index!984 Nil!12133)))

(declare-fun lt!287312 () Unit!20710)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37599 (_ BitVec 32) (_ BitVec 32)) Unit!20710)

(assert (=> b!620983 (= lt!287312 (lemmaNoDuplicateFromThenFromBigger!0 lt!287302 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620983 (arrayNoDuplicates!0 lt!287302 #b00000000000000000000000000000000 Nil!12133)))

(declare-fun lt!287304 () Unit!20710)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37599 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12136) Unit!20710)

(assert (=> b!620983 (= lt!287304 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12133))))

(assert (=> b!620983 (arrayContainsKey!0 lt!287302 (select (arr!18042 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287306 () Unit!20710)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37599 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20710)

(assert (=> b!620983 (= lt!287306 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287302 (select (arr!18042 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356169 () Bool)

(assert (=> b!620983 e!356169))

(declare-fun res!400265 () Bool)

(assert (=> b!620983 (=> (not res!400265) (not e!356169))))

(assert (=> b!620983 (= res!400265 (arrayContainsKey!0 lt!287302 (select (arr!18042 a!2986) j!136) j!136))))

(declare-fun Unit!20717 () Unit!20710)

(assert (=> b!620983 (= e!356161 Unit!20717)))

(declare-fun b!620984 () Bool)

(declare-fun Unit!20718 () Unit!20710)

(assert (=> b!620984 (= e!356173 Unit!20718)))

(declare-fun b!620985 () Bool)

(declare-fun res!400261 () Bool)

(assert (=> b!620985 (=> (not res!400261) (not e!356163))))

(assert (=> b!620985 (= res!400261 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12133))))

(declare-fun b!620986 () Bool)

(assert (=> b!620986 (= e!356169 (arrayContainsKey!0 lt!287302 (select (arr!18042 a!2986) j!136) index!984))))

(declare-fun b!620987 () Bool)

(declare-fun res!400259 () Bool)

(assert (=> b!620987 (=> (not res!400259) (not e!356163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37599 (_ BitVec 32)) Bool)

(assert (=> b!620987 (= res!400259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620988 () Bool)

(assert (=> b!620988 false))

(declare-fun lt!287297 () Unit!20710)

(assert (=> b!620988 (= lt!287297 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287302 (select (arr!18042 a!2986) j!136) j!136 Nil!12133))))

(assert (=> b!620988 (arrayNoDuplicates!0 lt!287302 j!136 Nil!12133)))

(declare-fun lt!287310 () Unit!20710)

(assert (=> b!620988 (= lt!287310 (lemmaNoDuplicateFromThenFromBigger!0 lt!287302 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620988 (arrayNoDuplicates!0 lt!287302 #b00000000000000000000000000000000 Nil!12133)))

(declare-fun lt!287305 () Unit!20710)

(assert (=> b!620988 (= lt!287305 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12133))))

(assert (=> b!620988 (arrayContainsKey!0 lt!287302 (select (arr!18042 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287309 () Unit!20710)

(assert (=> b!620988 (= lt!287309 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287302 (select (arr!18042 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20719 () Unit!20710)

(assert (=> b!620988 (= e!356173 Unit!20719)))

(declare-fun b!620989 () Bool)

(assert (=> b!620989 (= e!356166 (not true))))

(declare-fun lt!287308 () Unit!20710)

(assert (=> b!620989 (= lt!287308 e!356160)))

(declare-fun c!70725 () Bool)

(declare-fun lt!287298 () SeekEntryResult!6489)

(assert (=> b!620989 (= c!70725 (= lt!287298 (Found!6489 index!984)))))

(declare-fun lt!287316 () Unit!20710)

(assert (=> b!620989 (= lt!287316 e!356168)))

(declare-fun c!70727 () Bool)

(assert (=> b!620989 (= c!70727 (= lt!287298 Undefined!6489))))

(declare-fun lt!287307 () (_ BitVec 64))

(assert (=> b!620989 (= lt!287298 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287307 lt!287302 mask!3053))))

(assert (=> b!620989 e!356162))

(declare-fun res!400264 () Bool)

(assert (=> b!620989 (=> (not res!400264) (not e!356162))))

(declare-fun lt!287299 () (_ BitVec 32))

(assert (=> b!620989 (= res!400264 (= lt!287313 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287299 vacantSpotIndex!68 lt!287307 lt!287302 mask!3053)))))

(assert (=> b!620989 (= lt!287313 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287299 vacantSpotIndex!68 (select (arr!18042 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620989 (= lt!287307 (select (store (arr!18042 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287311 () Unit!20710)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37599 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20710)

(assert (=> b!620989 (= lt!287311 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287299 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620989 (= lt!287299 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620990 () Bool)

(declare-fun res!400266 () Bool)

(assert (=> b!620990 (=> (not res!400266) (not e!356165))))

(assert (=> b!620990 (= res!400266 (validKeyInArray!0 k!1786))))

(assert (= (and start!56166 res!400260) b!620969))

(assert (= (and b!620969 res!400256) b!620967))

(assert (= (and b!620967 res!400267) b!620990))

(assert (= (and b!620990 res!400266) b!620968))

(assert (= (and b!620968 res!400258) b!620981))

(assert (= (and b!620981 res!400262) b!620987))

(assert (= (and b!620987 res!400259) b!620985))

(assert (= (and b!620985 res!400261) b!620971))

(assert (= (and b!620971 res!400257) b!620973))

(assert (= (and b!620973 res!400263) b!620979))

(assert (= (and b!620979 res!400255) b!620989))

(assert (= (and b!620989 res!400264) b!620982))

(assert (= (and b!620989 c!70727) b!620977))

(assert (= (and b!620989 (not c!70727)) b!620975))

(assert (= (and b!620989 c!70725) b!620980))

(assert (= (and b!620989 (not c!70725)) b!620978))

(assert (= (and b!620980 res!400253) b!620972))

(assert (= (and b!620972 (not res!400254)) b!620976))

(assert (= (and b!620976 res!400268) b!620970))

(assert (= (and b!620980 c!70724) b!620988))

(assert (= (and b!620980 (not c!70724)) b!620984))

(assert (= (and b!620980 c!70726) b!620983))

(assert (= (and b!620980 (not c!70726)) b!620974))

(assert (= (and b!620983 res!400265) b!620986))

(declare-fun m!596919 () Bool)

(assert (=> b!620987 m!596919))

(declare-fun m!596921 () Bool)

(assert (=> b!620970 m!596921))

(assert (=> b!620970 m!596921))

(declare-fun m!596923 () Bool)

(assert (=> b!620970 m!596923))

(declare-fun m!596925 () Bool)

(assert (=> b!620988 m!596925))

(assert (=> b!620988 m!596921))

(declare-fun m!596927 () Bool)

(assert (=> b!620988 m!596927))

(assert (=> b!620988 m!596921))

(declare-fun m!596929 () Bool)

(assert (=> b!620988 m!596929))

(assert (=> b!620988 m!596921))

(declare-fun m!596931 () Bool)

(assert (=> b!620988 m!596931))

(declare-fun m!596933 () Bool)

(assert (=> b!620988 m!596933))

(assert (=> b!620988 m!596921))

(declare-fun m!596935 () Bool)

(assert (=> b!620988 m!596935))

(declare-fun m!596937 () Bool)

(assert (=> b!620988 m!596937))

(declare-fun m!596939 () Bool)

(assert (=> b!620973 m!596939))

(declare-fun m!596941 () Bool)

(assert (=> b!620973 m!596941))

(declare-fun m!596943 () Bool)

(assert (=> b!620971 m!596943))

(assert (=> b!620983 m!596921))

(declare-fun m!596945 () Bool)

(assert (=> b!620983 m!596945))

(assert (=> b!620983 m!596921))

(declare-fun m!596947 () Bool)

(assert (=> b!620983 m!596947))

(assert (=> b!620983 m!596921))

(assert (=> b!620983 m!596921))

(declare-fun m!596949 () Bool)

(assert (=> b!620983 m!596949))

(declare-fun m!596951 () Bool)

(assert (=> b!620983 m!596951))

(assert (=> b!620983 m!596933))

(assert (=> b!620983 m!596937))

(assert (=> b!620983 m!596921))

(declare-fun m!596953 () Bool)

(assert (=> b!620983 m!596953))

(declare-fun m!596955 () Bool)

(assert (=> b!620983 m!596955))

(assert (=> b!620976 m!596921))

(assert (=> b!620976 m!596921))

(assert (=> b!620976 m!596947))

(assert (=> b!620967 m!596921))

(assert (=> b!620967 m!596921))

(declare-fun m!596957 () Bool)

(assert (=> b!620967 m!596957))

(declare-fun m!596959 () Bool)

(assert (=> b!620968 m!596959))

(declare-fun m!596961 () Bool)

(assert (=> b!620979 m!596961))

(assert (=> b!620979 m!596921))

(assert (=> b!620979 m!596921))

(declare-fun m!596963 () Bool)

(assert (=> b!620979 m!596963))

(declare-fun m!596965 () Bool)

(assert (=> b!620990 m!596965))

(assert (=> b!620980 m!596939))

(declare-fun m!596967 () Bool)

(assert (=> b!620980 m!596967))

(assert (=> b!620980 m!596921))

(declare-fun m!596969 () Bool)

(assert (=> start!56166 m!596969))

(declare-fun m!596971 () Bool)

(assert (=> start!56166 m!596971))

(declare-fun m!596973 () Bool)

(assert (=> b!620981 m!596973))

(assert (=> b!620986 m!596921))

(assert (=> b!620986 m!596921))

(assert (=> b!620986 m!596923))

(declare-fun m!596975 () Bool)

(assert (=> b!620985 m!596975))

(declare-fun m!596977 () Bool)

(assert (=> b!620989 m!596977))

(declare-fun m!596979 () Bool)

(assert (=> b!620989 m!596979))

(assert (=> b!620989 m!596921))

(assert (=> b!620989 m!596939))

(assert (=> b!620989 m!596921))

(declare-fun m!596981 () Bool)

(assert (=> b!620989 m!596981))

(declare-fun m!596983 () Bool)

(assert (=> b!620989 m!596983))

(declare-fun m!596985 () Bool)

(assert (=> b!620989 m!596985))

(declare-fun m!596987 () Bool)

(assert (=> b!620989 m!596987))

(push 1)

