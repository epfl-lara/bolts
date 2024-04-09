; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58662 () Bool)

(assert start!58662)

(declare-fun b!646951 () Bool)

(declare-datatypes ((Unit!21982 0))(
  ( (Unit!21983) )
))
(declare-fun e!370930 () Unit!21982)

(declare-fun Unit!21984 () Unit!21982)

(assert (=> b!646951 (= e!370930 Unit!21984)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38466 0))(
  ( (array!38467 (arr!18438 (Array (_ BitVec 32) (_ BitVec 64))) (size!18802 (_ BitVec 32))) )
))
(declare-fun lt!300246 () array!38466)

(declare-fun e!370935 () Bool)

(declare-fun b!646952 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38466)

(declare-fun arrayContainsKey!0 (array!38466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646952 (= e!370935 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) index!984))))

(declare-fun b!646953 () Bool)

(declare-fun res!419272 () Bool)

(declare-fun e!370937 () Bool)

(assert (=> b!646953 (=> (not res!419272) (not e!370937))))

(declare-datatypes ((List!12532 0))(
  ( (Nil!12529) (Cons!12528 (h!13573 (_ BitVec 64)) (t!18768 List!12532)) )
))
(declare-fun arrayNoDuplicates!0 (array!38466 (_ BitVec 32) List!12532) Bool)

(assert (=> b!646953 (= res!419272 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12529))))

(declare-fun b!646954 () Bool)

(declare-fun e!370929 () Bool)

(declare-fun e!370931 () Bool)

(assert (=> b!646954 (= e!370929 e!370931)))

(declare-fun res!419271 () Bool)

(assert (=> b!646954 (=> res!419271 e!370931)))

(declare-fun lt!300258 () (_ BitVec 64))

(declare-fun lt!300257 () (_ BitVec 64))

(assert (=> b!646954 (= res!419271 (or (not (= (select (arr!18438 a!2986) j!136) lt!300257)) (not (= (select (arr!18438 a!2986) j!136) lt!300258))))))

(declare-fun e!370928 () Bool)

(assert (=> b!646954 e!370928))

(declare-fun res!419282 () Bool)

(assert (=> b!646954 (=> (not res!419282) (not e!370928))))

(assert (=> b!646954 (= res!419282 (= lt!300258 (select (arr!18438 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!646954 (= lt!300258 (select (store (arr!18438 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!646955 () Bool)

(declare-fun e!370942 () Bool)

(declare-fun e!370936 () Bool)

(assert (=> b!646955 (= e!370942 e!370936)))

(declare-fun res!419280 () Bool)

(assert (=> b!646955 (=> (not res!419280) (not e!370936))))

(assert (=> b!646955 (= res!419280 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) j!136))))

(declare-fun b!646956 () Bool)

(assert (=> b!646956 (= e!370928 e!370942)))

(declare-fun res!419275 () Bool)

(assert (=> b!646956 (=> res!419275 e!370942)))

(assert (=> b!646956 (= res!419275 (or (not (= (select (arr!18438 a!2986) j!136) lt!300257)) (not (= (select (arr!18438 a!2986) j!136) lt!300258)) (bvsge j!136 index!984)))))

(declare-fun b!646957 () Bool)

(assert (=> b!646957 (= e!370936 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) index!984))))

(declare-fun b!646958 () Bool)

(declare-fun e!370934 () Bool)

(declare-fun e!370932 () Bool)

(assert (=> b!646958 (= e!370934 e!370932)))

(declare-fun res!419285 () Bool)

(assert (=> b!646958 (=> (not res!419285) (not e!370932))))

(declare-fun contains!3155 (List!12532 (_ BitVec 64)) Bool)

(assert (=> b!646958 (= res!419285 (not (contains!3155 Nil!12529 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646959 () Bool)

(declare-fun e!370933 () Unit!21982)

(declare-fun Unit!21985 () Unit!21982)

(assert (=> b!646959 (= e!370933 Unit!21985)))

(assert (=> b!646959 false))

(declare-fun b!646960 () Bool)

(declare-fun res!419284 () Bool)

(declare-fun e!370940 () Bool)

(assert (=> b!646960 (=> (not res!419284) (not e!370940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646960 (= res!419284 (validKeyInArray!0 k!1786))))

(declare-fun b!646961 () Bool)

(declare-fun res!419287 () Bool)

(assert (=> b!646961 (=> res!419287 e!370934)))

(declare-fun noDuplicate!415 (List!12532) Bool)

(assert (=> b!646961 (= res!419287 (not (noDuplicate!415 Nil!12529)))))

(declare-fun b!646962 () Bool)

(declare-fun res!419273 () Bool)

(assert (=> b!646962 (=> (not res!419273) (not e!370940))))

(assert (=> b!646962 (= res!419273 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!419286 () Bool)

(assert (=> start!58662 (=> (not res!419286) (not e!370940))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58662 (= res!419286 (validMask!0 mask!3053))))

(assert (=> start!58662 e!370940))

(assert (=> start!58662 true))

(declare-fun array_inv!14212 (array!38466) Bool)

(assert (=> start!58662 (array_inv!14212 a!2986)))

(declare-fun b!646963 () Bool)

(assert (=> b!646963 (= e!370932 (not (contains!3155 Nil!12529 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646964 () Bool)

(declare-fun e!370941 () Bool)

(declare-datatypes ((SeekEntryResult!6885 0))(
  ( (MissingZero!6885 (index!29880 (_ BitVec 32))) (Found!6885 (index!29881 (_ BitVec 32))) (Intermediate!6885 (undefined!7697 Bool) (index!29882 (_ BitVec 32)) (x!58689 (_ BitVec 32))) (Undefined!6885) (MissingVacant!6885 (index!29883 (_ BitVec 32))) )
))
(declare-fun lt!300260 () SeekEntryResult!6885)

(declare-fun lt!300250 () SeekEntryResult!6885)

(assert (=> b!646964 (= e!370941 (= lt!300260 lt!300250))))

(declare-fun b!646965 () Bool)

(declare-fun res!419269 () Bool)

(assert (=> b!646965 (=> (not res!419269) (not e!370940))))

(assert (=> b!646965 (= res!419269 (validKeyInArray!0 (select (arr!18438 a!2986) j!136)))))

(declare-fun b!646966 () Bool)

(assert (=> b!646966 (= e!370940 e!370937)))

(declare-fun res!419276 () Bool)

(assert (=> b!646966 (=> (not res!419276) (not e!370937))))

(declare-fun lt!300252 () SeekEntryResult!6885)

(assert (=> b!646966 (= res!419276 (or (= lt!300252 (MissingZero!6885 i!1108)) (= lt!300252 (MissingVacant!6885 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38466 (_ BitVec 32)) SeekEntryResult!6885)

(assert (=> b!646966 (= lt!300252 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!646967 () Bool)

(declare-fun e!370926 () Bool)

(assert (=> b!646967 (= e!370926 (not e!370929))))

(declare-fun res!419288 () Bool)

(assert (=> b!646967 (=> res!419288 e!370929)))

(declare-fun lt!300261 () SeekEntryResult!6885)

(assert (=> b!646967 (= res!419288 (not (= lt!300261 (Found!6885 index!984))))))

(declare-fun lt!300248 () Unit!21982)

(assert (=> b!646967 (= lt!300248 e!370933)))

(declare-fun c!74210 () Bool)

(assert (=> b!646967 (= c!74210 (= lt!300261 Undefined!6885))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38466 (_ BitVec 32)) SeekEntryResult!6885)

(assert (=> b!646967 (= lt!300261 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300257 lt!300246 mask!3053))))

(assert (=> b!646967 e!370941))

(declare-fun res!419274 () Bool)

(assert (=> b!646967 (=> (not res!419274) (not e!370941))))

(declare-fun lt!300254 () (_ BitVec 32))

(assert (=> b!646967 (= res!419274 (= lt!300250 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 lt!300257 lt!300246 mask!3053)))))

(assert (=> b!646967 (= lt!300250 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 (select (arr!18438 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646967 (= lt!300257 (select (store (arr!18438 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300255 () Unit!21982)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21982)

(assert (=> b!646967 (= lt!300255 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646967 (= lt!300254 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646968 () Bool)

(declare-fun e!370938 () Bool)

(assert (=> b!646968 (= e!370937 e!370938)))

(declare-fun res!419283 () Bool)

(assert (=> b!646968 (=> (not res!419283) (not e!370938))))

(assert (=> b!646968 (= res!419283 (= (select (store (arr!18438 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646968 (= lt!300246 (array!38467 (store (arr!18438 a!2986) i!1108 k!1786) (size!18802 a!2986)))))

(declare-fun b!646969 () Bool)

(declare-fun e!370939 () Bool)

(assert (=> b!646969 (= e!370931 e!370939)))

(declare-fun res!419281 () Bool)

(assert (=> b!646969 (=> res!419281 e!370939)))

(assert (=> b!646969 (= res!419281 (bvsge index!984 j!136))))

(declare-fun lt!300256 () Unit!21982)

(assert (=> b!646969 (= lt!300256 e!370930)))

(declare-fun c!74209 () Bool)

(assert (=> b!646969 (= c!74209 (bvslt j!136 index!984))))

(declare-fun b!646970 () Bool)

(declare-fun res!419267 () Bool)

(assert (=> b!646970 (=> (not res!419267) (not e!370937))))

(assert (=> b!646970 (= res!419267 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18438 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646971 () Bool)

(declare-fun Unit!21986 () Unit!21982)

(assert (=> b!646971 (= e!370933 Unit!21986)))

(declare-fun b!646972 () Bool)

(assert (=> b!646972 (= e!370938 e!370926)))

(declare-fun res!419277 () Bool)

(assert (=> b!646972 (=> (not res!419277) (not e!370926))))

(assert (=> b!646972 (= res!419277 (and (= lt!300260 (Found!6885 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18438 a!2986) index!984) (select (arr!18438 a!2986) j!136))) (not (= (select (arr!18438 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646972 (= lt!300260 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18438 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646973 () Bool)

(declare-fun res!419268 () Bool)

(assert (=> b!646973 (=> (not res!419268) (not e!370937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38466 (_ BitVec 32)) Bool)

(assert (=> b!646973 (= res!419268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!646974 () Bool)

(declare-fun res!419279 () Bool)

(assert (=> b!646974 (=> (not res!419279) (not e!370940))))

(assert (=> b!646974 (= res!419279 (and (= (size!18802 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18802 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18802 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646975 () Bool)

(declare-fun Unit!21987 () Unit!21982)

(assert (=> b!646975 (= e!370930 Unit!21987)))

(declare-fun lt!300251 () Unit!21982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21982)

(assert (=> b!646975 (= lt!300251 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300246 (select (arr!18438 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!646975 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300253 () Unit!21982)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12532) Unit!21982)

(assert (=> b!646975 (= lt!300253 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12529))))

(assert (=> b!646975 (arrayNoDuplicates!0 lt!300246 #b00000000000000000000000000000000 Nil!12529)))

(declare-fun lt!300249 () Unit!21982)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38466 (_ BitVec 32) (_ BitVec 32)) Unit!21982)

(assert (=> b!646975 (= lt!300249 (lemmaNoDuplicateFromThenFromBigger!0 lt!300246 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646975 (arrayNoDuplicates!0 lt!300246 j!136 Nil!12529)))

(declare-fun lt!300259 () Unit!21982)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38466 (_ BitVec 64) (_ BitVec 32) List!12532) Unit!21982)

(assert (=> b!646975 (= lt!300259 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300246 (select (arr!18438 a!2986) j!136) j!136 Nil!12529))))

(assert (=> b!646975 false))

(declare-fun b!646976 () Bool)

(assert (=> b!646976 (= e!370939 e!370934)))

(declare-fun res!419270 () Bool)

(assert (=> b!646976 (=> res!419270 e!370934)))

(assert (=> b!646976 (= res!419270 (or (bvsge (size!18802 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18802 a!2986))))))

(assert (=> b!646976 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300247 () Unit!21982)

(assert (=> b!646976 (= lt!300247 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300246 (select (arr!18438 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!646976 e!370935))

(declare-fun res!419278 () Bool)

(assert (=> b!646976 (=> (not res!419278) (not e!370935))))

(assert (=> b!646976 (= res!419278 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) j!136))))

(assert (= (and start!58662 res!419286) b!646974))

(assert (= (and b!646974 res!419279) b!646965))

(assert (= (and b!646965 res!419269) b!646960))

(assert (= (and b!646960 res!419284) b!646962))

(assert (= (and b!646962 res!419273) b!646966))

(assert (= (and b!646966 res!419276) b!646973))

(assert (= (and b!646973 res!419268) b!646953))

(assert (= (and b!646953 res!419272) b!646970))

(assert (= (and b!646970 res!419267) b!646968))

(assert (= (and b!646968 res!419283) b!646972))

(assert (= (and b!646972 res!419277) b!646967))

(assert (= (and b!646967 res!419274) b!646964))

(assert (= (and b!646967 c!74210) b!646959))

(assert (= (and b!646967 (not c!74210)) b!646971))

(assert (= (and b!646967 (not res!419288)) b!646954))

(assert (= (and b!646954 res!419282) b!646956))

(assert (= (and b!646956 (not res!419275)) b!646955))

(assert (= (and b!646955 res!419280) b!646957))

(assert (= (and b!646954 (not res!419271)) b!646969))

(assert (= (and b!646969 c!74209) b!646975))

(assert (= (and b!646969 (not c!74209)) b!646951))

(assert (= (and b!646969 (not res!419281)) b!646976))

(assert (= (and b!646976 res!419278) b!646952))

(assert (= (and b!646976 (not res!419270)) b!646961))

(assert (= (and b!646961 (not res!419287)) b!646958))

(assert (= (and b!646958 res!419285) b!646963))

(declare-fun m!620445 () Bool)

(assert (=> b!646961 m!620445))

(declare-fun m!620447 () Bool)

(assert (=> b!646970 m!620447))

(declare-fun m!620449 () Bool)

(assert (=> b!646953 m!620449))

(declare-fun m!620451 () Bool)

(assert (=> b!646965 m!620451))

(assert (=> b!646965 m!620451))

(declare-fun m!620453 () Bool)

(assert (=> b!646965 m!620453))

(declare-fun m!620455 () Bool)

(assert (=> b!646968 m!620455))

(declare-fun m!620457 () Bool)

(assert (=> b!646968 m!620457))

(declare-fun m!620459 () Bool)

(assert (=> b!646958 m!620459))

(assert (=> b!646952 m!620451))

(assert (=> b!646952 m!620451))

(declare-fun m!620461 () Bool)

(assert (=> b!646952 m!620461))

(assert (=> b!646976 m!620451))

(assert (=> b!646976 m!620451))

(declare-fun m!620463 () Bool)

(assert (=> b!646976 m!620463))

(assert (=> b!646976 m!620451))

(declare-fun m!620465 () Bool)

(assert (=> b!646976 m!620465))

(assert (=> b!646976 m!620451))

(declare-fun m!620467 () Bool)

(assert (=> b!646976 m!620467))

(declare-fun m!620469 () Bool)

(assert (=> b!646960 m!620469))

(declare-fun m!620471 () Bool)

(assert (=> b!646963 m!620471))

(assert (=> b!646957 m!620451))

(assert (=> b!646957 m!620451))

(assert (=> b!646957 m!620461))

(declare-fun m!620473 () Bool)

(assert (=> start!58662 m!620473))

(declare-fun m!620475 () Bool)

(assert (=> start!58662 m!620475))

(assert (=> b!646975 m!620451))

(assert (=> b!646975 m!620451))

(declare-fun m!620477 () Bool)

(assert (=> b!646975 m!620477))

(declare-fun m!620479 () Bool)

(assert (=> b!646975 m!620479))

(declare-fun m!620481 () Bool)

(assert (=> b!646975 m!620481))

(declare-fun m!620483 () Bool)

(assert (=> b!646975 m!620483))

(assert (=> b!646975 m!620451))

(declare-fun m!620485 () Bool)

(assert (=> b!646975 m!620485))

(assert (=> b!646975 m!620451))

(declare-fun m!620487 () Bool)

(assert (=> b!646975 m!620487))

(declare-fun m!620489 () Bool)

(assert (=> b!646975 m!620489))

(declare-fun m!620491 () Bool)

(assert (=> b!646972 m!620491))

(assert (=> b!646972 m!620451))

(assert (=> b!646972 m!620451))

(declare-fun m!620493 () Bool)

(assert (=> b!646972 m!620493))

(declare-fun m!620495 () Bool)

(assert (=> b!646966 m!620495))

(assert (=> b!646956 m!620451))

(assert (=> b!646955 m!620451))

(assert (=> b!646955 m!620451))

(assert (=> b!646955 m!620467))

(declare-fun m!620497 () Bool)

(assert (=> b!646967 m!620497))

(declare-fun m!620499 () Bool)

(assert (=> b!646967 m!620499))

(declare-fun m!620501 () Bool)

(assert (=> b!646967 m!620501))

(assert (=> b!646967 m!620451))

(assert (=> b!646967 m!620455))

(declare-fun m!620503 () Bool)

(assert (=> b!646967 m!620503))

(assert (=> b!646967 m!620451))

(declare-fun m!620505 () Bool)

(assert (=> b!646967 m!620505))

(declare-fun m!620507 () Bool)

(assert (=> b!646967 m!620507))

(assert (=> b!646954 m!620451))

(assert (=> b!646954 m!620455))

(declare-fun m!620509 () Bool)

(assert (=> b!646954 m!620509))

(declare-fun m!620511 () Bool)

(assert (=> b!646962 m!620511))

(declare-fun m!620513 () Bool)

(assert (=> b!646973 m!620513))

(push 1)

(assert (not b!646952))

(assert (not b!646962))

(assert (not b!646973))

(assert (not b!646955))

(assert (not b!646972))

(assert (not b!646958))

(assert (not b!646965))

(assert (not b!646966))

(assert (not b!646963))

(assert (not start!58662))

(assert (not b!646967))

(assert (not b!646953))

(assert (not b!646957))

(assert (not b!646961))

(assert (not b!646976))

(assert (not b!646960))

(assert (not b!646975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91431 () Bool)

(declare-fun lt!300389 () Bool)

(declare-fun content!249 (List!12532) (Set (_ BitVec 64)))

(assert (=> d!91431 (= lt!300389 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!249 Nil!12529)))))

(declare-fun e!371103 () Bool)

(assert (=> d!91431 (= lt!300389 e!371103)))

(declare-fun res!419455 () Bool)

(assert (=> d!91431 (=> (not res!419455) (not e!371103))))

(assert (=> d!91431 (= res!419455 (is-Cons!12528 Nil!12529))))

(assert (=> d!91431 (= (contains!3155 Nil!12529 #b0000000000000000000000000000000000000000000000000000000000000000) lt!300389)))

(declare-fun b!647215 () Bool)

(declare-fun e!371104 () Bool)

(assert (=> b!647215 (= e!371103 e!371104)))

(declare-fun res!419456 () Bool)

(assert (=> b!647215 (=> res!419456 e!371104)))

(assert (=> b!647215 (= res!419456 (= (h!13573 Nil!12529) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647216 () Bool)

(assert (=> b!647216 (= e!371104 (contains!3155 (t!18768 Nil!12529) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!91431 res!419455) b!647215))

(assert (= (and b!647215 (not res!419456)) b!647216))

(declare-fun m!620721 () Bool)

(assert (=> d!91431 m!620721))

(declare-fun m!620723 () Bool)

(assert (=> d!91431 m!620723))

(declare-fun m!620725 () Bool)

(assert (=> b!647216 m!620725))

(assert (=> b!646958 d!91431))

(declare-fun d!91437 () Bool)

(assert (=> d!91437 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646960 d!91437))

(declare-fun b!647272 () Bool)

(declare-fun c!74270 () Bool)

(declare-fun lt!300412 () (_ BitVec 64))

(assert (=> b!647272 (= c!74270 (= lt!300412 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371138 () SeekEntryResult!6885)

(declare-fun e!371137 () SeekEntryResult!6885)

(assert (=> b!647272 (= e!371138 e!371137)))

(declare-fun b!647273 () Bool)

(declare-fun lt!300413 () SeekEntryResult!6885)

(assert (=> b!647273 (= e!371137 (seekKeyOrZeroReturnVacant!0 (x!58689 lt!300413) (index!29882 lt!300413) (index!29882 lt!300413) k!1786 a!2986 mask!3053))))

(declare-fun b!647274 () Bool)

(declare-fun e!371139 () SeekEntryResult!6885)

(assert (=> b!647274 (= e!371139 e!371138)))

(assert (=> b!647274 (= lt!300412 (select (arr!18438 a!2986) (index!29882 lt!300413)))))

(declare-fun c!74272 () Bool)

(assert (=> b!647274 (= c!74272 (= lt!300412 k!1786))))

(declare-fun d!91441 () Bool)

(declare-fun lt!300414 () SeekEntryResult!6885)

(assert (=> d!91441 (and (or (is-Undefined!6885 lt!300414) (not (is-Found!6885 lt!300414)) (and (bvsge (index!29881 lt!300414) #b00000000000000000000000000000000) (bvslt (index!29881 lt!300414) (size!18802 a!2986)))) (or (is-Undefined!6885 lt!300414) (is-Found!6885 lt!300414) (not (is-MissingZero!6885 lt!300414)) (and (bvsge (index!29880 lt!300414) #b00000000000000000000000000000000) (bvslt (index!29880 lt!300414) (size!18802 a!2986)))) (or (is-Undefined!6885 lt!300414) (is-Found!6885 lt!300414) (is-MissingZero!6885 lt!300414) (not (is-MissingVacant!6885 lt!300414)) (and (bvsge (index!29883 lt!300414) #b00000000000000000000000000000000) (bvslt (index!29883 lt!300414) (size!18802 a!2986)))) (or (is-Undefined!6885 lt!300414) (ite (is-Found!6885 lt!300414) (= (select (arr!18438 a!2986) (index!29881 lt!300414)) k!1786) (ite (is-MissingZero!6885 lt!300414) (= (select (arr!18438 a!2986) (index!29880 lt!300414)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6885 lt!300414) (= (select (arr!18438 a!2986) (index!29883 lt!300414)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91441 (= lt!300414 e!371139)))

(declare-fun c!74271 () Bool)

(assert (=> d!91441 (= c!74271 (and (is-Intermediate!6885 lt!300413) (undefined!7697 lt!300413)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38466 (_ BitVec 32)) SeekEntryResult!6885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91441 (= lt!300413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91441 (validMask!0 mask!3053)))

(assert (=> d!91441 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!300414)))

(declare-fun b!647275 () Bool)

(assert (=> b!647275 (= e!371139 Undefined!6885)))

(declare-fun b!647276 () Bool)

(assert (=> b!647276 (= e!371137 (MissingZero!6885 (index!29882 lt!300413)))))

(declare-fun b!647277 () Bool)

(assert (=> b!647277 (= e!371138 (Found!6885 (index!29882 lt!300413)))))

(assert (= (and d!91441 c!74271) b!647275))

(assert (= (and d!91441 (not c!74271)) b!647274))

(assert (= (and b!647274 c!74272) b!647277))

(assert (= (and b!647274 (not c!74272)) b!647272))

(assert (= (and b!647272 c!74270) b!647276))

(assert (= (and b!647272 (not c!74270)) b!647273))

(declare-fun m!620759 () Bool)

(assert (=> b!647273 m!620759))

(declare-fun m!620761 () Bool)

(assert (=> b!647274 m!620761))

(declare-fun m!620763 () Bool)

(assert (=> d!91441 m!620763))

(declare-fun m!620765 () Bool)

(assert (=> d!91441 m!620765))

(declare-fun m!620767 () Bool)

(assert (=> d!91441 m!620767))

(declare-fun m!620769 () Bool)

(assert (=> d!91441 m!620769))

(assert (=> d!91441 m!620765))

(declare-fun m!620771 () Bool)

(assert (=> d!91441 m!620771))

(assert (=> d!91441 m!620473))

(assert (=> b!646966 d!91441))

(declare-fun b!647324 () Bool)

(declare-fun e!371174 () SeekEntryResult!6885)

(assert (=> b!647324 (= e!371174 Undefined!6885)))

(declare-fun b!647325 () Bool)

(declare-fun e!371175 () SeekEntryResult!6885)

(assert (=> b!647325 (= e!371175 (MissingVacant!6885 vacantSpotIndex!68))))

(declare-fun lt!300436 () SeekEntryResult!6885)

(declare-fun d!91451 () Bool)

(assert (=> d!91451 (and (or (is-Undefined!6885 lt!300436) (not (is-Found!6885 lt!300436)) (and (bvsge (index!29881 lt!300436) #b00000000000000000000000000000000) (bvslt (index!29881 lt!300436) (size!18802 a!2986)))) (or (is-Undefined!6885 lt!300436) (is-Found!6885 lt!300436) (not (is-MissingVacant!6885 lt!300436)) (not (= (index!29883 lt!300436) vacantSpotIndex!68)) (and (bvsge (index!29883 lt!300436) #b00000000000000000000000000000000) (bvslt (index!29883 lt!300436) (size!18802 a!2986)))) (or (is-Undefined!6885 lt!300436) (ite (is-Found!6885 lt!300436) (= (select (arr!18438 a!2986) (index!29881 lt!300436)) (select (arr!18438 a!2986) j!136)) (and (is-MissingVacant!6885 lt!300436) (= (index!29883 lt!300436) vacantSpotIndex!68) (= (select (arr!18438 a!2986) (index!29883 lt!300436)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91451 (= lt!300436 e!371174)))

(declare-fun c!74286 () Bool)

(assert (=> d!91451 (= c!74286 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300435 () (_ BitVec 64))

(assert (=> d!91451 (= lt!300435 (select (arr!18438 a!2986) lt!300254))))

(assert (=> d!91451 (validMask!0 mask!3053)))

(assert (=> d!91451 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 (select (arr!18438 a!2986) j!136) a!2986 mask!3053) lt!300436)))

(declare-fun b!647326 () Bool)

(declare-fun e!371173 () SeekEntryResult!6885)

(assert (=> b!647326 (= e!371174 e!371173)))

(declare-fun c!74287 () Bool)

(assert (=> b!647326 (= c!74287 (= lt!300435 (select (arr!18438 a!2986) j!136)))))

(declare-fun b!647327 () Bool)

(assert (=> b!647327 (= e!371173 (Found!6885 lt!300254))))

(declare-fun b!647328 () Bool)

(assert (=> b!647328 (= e!371175 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300254 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18438 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647329 () Bool)

(declare-fun c!74288 () Bool)

(assert (=> b!647329 (= c!74288 (= lt!300435 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647329 (= e!371173 e!371175)))

(assert (= (and d!91451 c!74286) b!647324))

(assert (= (and d!91451 (not c!74286)) b!647326))

(assert (= (and b!647326 c!74287) b!647327))

(assert (= (and b!647326 (not c!74287)) b!647329))

(assert (= (and b!647329 c!74288) b!647325))

(assert (= (and b!647329 (not c!74288)) b!647328))

(declare-fun m!620815 () Bool)

(assert (=> d!91451 m!620815))

(declare-fun m!620819 () Bool)

(assert (=> d!91451 m!620819))

(declare-fun m!620821 () Bool)

(assert (=> d!91451 m!620821))

(assert (=> d!91451 m!620473))

(declare-fun m!620823 () Bool)

(assert (=> b!647328 m!620823))

(assert (=> b!647328 m!620823))

(assert (=> b!647328 m!620451))

(declare-fun m!620825 () Bool)

(assert (=> b!647328 m!620825))

(assert (=> b!646967 d!91451))

(declare-fun b!647337 () Bool)

(declare-fun e!371183 () SeekEntryResult!6885)

(assert (=> b!647337 (= e!371183 Undefined!6885)))

(declare-fun b!647338 () Bool)

(declare-fun e!371184 () SeekEntryResult!6885)

(assert (=> b!647338 (= e!371184 (MissingVacant!6885 vacantSpotIndex!68))))

(declare-fun lt!300438 () SeekEntryResult!6885)

(declare-fun d!91477 () Bool)

(assert (=> d!91477 (and (or (is-Undefined!6885 lt!300438) (not (is-Found!6885 lt!300438)) (and (bvsge (index!29881 lt!300438) #b00000000000000000000000000000000) (bvslt (index!29881 lt!300438) (size!18802 lt!300246)))) (or (is-Undefined!6885 lt!300438) (is-Found!6885 lt!300438) (not (is-MissingVacant!6885 lt!300438)) (not (= (index!29883 lt!300438) vacantSpotIndex!68)) (and (bvsge (index!29883 lt!300438) #b00000000000000000000000000000000) (bvslt (index!29883 lt!300438) (size!18802 lt!300246)))) (or (is-Undefined!6885 lt!300438) (ite (is-Found!6885 lt!300438) (= (select (arr!18438 lt!300246) (index!29881 lt!300438)) lt!300257) (and (is-MissingVacant!6885 lt!300438) (= (index!29883 lt!300438) vacantSpotIndex!68) (= (select (arr!18438 lt!300246) (index!29883 lt!300438)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91477 (= lt!300438 e!371183)))

(declare-fun c!74290 () Bool)

(assert (=> d!91477 (= c!74290 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300437 () (_ BitVec 64))

(assert (=> d!91477 (= lt!300437 (select (arr!18438 lt!300246) index!984))))

(assert (=> d!91477 (validMask!0 mask!3053)))

(assert (=> d!91477 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300257 lt!300246 mask!3053) lt!300438)))

(declare-fun b!647339 () Bool)

(declare-fun e!371182 () SeekEntryResult!6885)

(assert (=> b!647339 (= e!371183 e!371182)))

(declare-fun c!74291 () Bool)

(assert (=> b!647339 (= c!74291 (= lt!300437 lt!300257))))

(declare-fun b!647340 () Bool)

(assert (=> b!647340 (= e!371182 (Found!6885 index!984))))

(declare-fun b!647341 () Bool)

(assert (=> b!647341 (= e!371184 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300257 lt!300246 mask!3053))))

(declare-fun b!647342 () Bool)

(declare-fun c!74292 () Bool)

(assert (=> b!647342 (= c!74292 (= lt!300437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647342 (= e!371182 e!371184)))

(assert (= (and d!91477 c!74290) b!647337))

(assert (= (and d!91477 (not c!74290)) b!647339))

(assert (= (and b!647339 c!74291) b!647340))

(assert (= (and b!647339 (not c!74291)) b!647342))

(assert (= (and b!647342 c!74292) b!647338))

(assert (= (and b!647342 (not c!74292)) b!647341))

(declare-fun m!620831 () Bool)

(assert (=> d!91477 m!620831))

(declare-fun m!620835 () Bool)

(assert (=> d!91477 m!620835))

(declare-fun m!620837 () Bool)

(assert (=> d!91477 m!620837))

(assert (=> d!91477 m!620473))

(assert (=> b!647341 m!620497))

(assert (=> b!647341 m!620497))

(declare-fun m!620839 () Bool)

(assert (=> b!647341 m!620839))

(assert (=> b!646967 d!91477))

(declare-fun d!91481 () Bool)

(declare-fun e!371205 () Bool)

(assert (=> d!91481 e!371205))

(declare-fun res!419507 () Bool)

(assert (=> d!91481 (=> (not res!419507) (not e!371205))))

(assert (=> d!91481 (= res!419507 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18802 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18802 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18802 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18802 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18802 a!2986))))))

(declare-fun lt!300461 () Unit!21982)

(declare-fun choose!9 (array!38466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21982)

(assert (=> d!91481 (= lt!300461 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91481 (validMask!0 mask!3053)))

(assert (=> d!91481 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 mask!3053) lt!300461)))

(declare-fun b!647367 () Bool)

(assert (=> b!647367 (= e!371205 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 (select (arr!18438 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 (select (store (arr!18438 a!2986) i!1108 k!1786) j!136) (array!38467 (store (arr!18438 a!2986) i!1108 k!1786) (size!18802 a!2986)) mask!3053)))))

(assert (= (and d!91481 res!419507) b!647367))

(declare-fun m!620875 () Bool)

(assert (=> d!91481 m!620875))

(assert (=> d!91481 m!620473))

(assert (=> b!647367 m!620451))

(assert (=> b!647367 m!620499))

(assert (=> b!647367 m!620455))

(assert (=> b!647367 m!620451))

(assert (=> b!647367 m!620505))

(assert (=> b!647367 m!620499))

(declare-fun m!620877 () Bool)

(assert (=> b!647367 m!620877))

(assert (=> b!646967 d!91481))

(declare-fun d!91497 () Bool)

(declare-fun lt!300464 () (_ BitVec 32))

(assert (=> d!91497 (and (bvsge lt!300464 #b00000000000000000000000000000000) (bvslt lt!300464 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91497 (= lt!300464 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91497 (validMask!0 mask!3053)))

(assert (=> d!91497 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300464)))

(declare-fun bs!19338 () Bool)

(assert (= bs!19338 d!91497))

(declare-fun m!620879 () Bool)

(assert (=> bs!19338 m!620879))

(assert (=> bs!19338 m!620473))

(assert (=> b!646967 d!91497))

(declare-fun b!647368 () Bool)

(declare-fun e!371207 () SeekEntryResult!6885)

(assert (=> b!647368 (= e!371207 Undefined!6885)))

(declare-fun b!647369 () Bool)

(declare-fun e!371208 () SeekEntryResult!6885)

(assert (=> b!647369 (= e!371208 (MissingVacant!6885 vacantSpotIndex!68))))

(declare-fun lt!300466 () SeekEntryResult!6885)

(declare-fun d!91503 () Bool)

(assert (=> d!91503 (and (or (is-Undefined!6885 lt!300466) (not (is-Found!6885 lt!300466)) (and (bvsge (index!29881 lt!300466) #b00000000000000000000000000000000) (bvslt (index!29881 lt!300466) (size!18802 lt!300246)))) (or (is-Undefined!6885 lt!300466) (is-Found!6885 lt!300466) (not (is-MissingVacant!6885 lt!300466)) (not (= (index!29883 lt!300466) vacantSpotIndex!68)) (and (bvsge (index!29883 lt!300466) #b00000000000000000000000000000000) (bvslt (index!29883 lt!300466) (size!18802 lt!300246)))) (or (is-Undefined!6885 lt!300466) (ite (is-Found!6885 lt!300466) (= (select (arr!18438 lt!300246) (index!29881 lt!300466)) lt!300257) (and (is-MissingVacant!6885 lt!300466) (= (index!29883 lt!300466) vacantSpotIndex!68) (= (select (arr!18438 lt!300246) (index!29883 lt!300466)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91503 (= lt!300466 e!371207)))

(declare-fun c!74297 () Bool)

(assert (=> d!91503 (= c!74297 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300465 () (_ BitVec 64))

(assert (=> d!91503 (= lt!300465 (select (arr!18438 lt!300246) lt!300254))))

(assert (=> d!91503 (validMask!0 mask!3053)))

(assert (=> d!91503 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300254 vacantSpotIndex!68 lt!300257 lt!300246 mask!3053) lt!300466)))

(declare-fun b!647370 () Bool)

(declare-fun e!371206 () SeekEntryResult!6885)

(assert (=> b!647370 (= e!371207 e!371206)))

(declare-fun c!74298 () Bool)

(assert (=> b!647370 (= c!74298 (= lt!300465 lt!300257))))

(declare-fun b!647371 () Bool)

(assert (=> b!647371 (= e!371206 (Found!6885 lt!300254))))

(declare-fun b!647372 () Bool)

(assert (=> b!647372 (= e!371208 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300254 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300257 lt!300246 mask!3053))))

(declare-fun b!647373 () Bool)

(declare-fun c!74299 () Bool)

(assert (=> b!647373 (= c!74299 (= lt!300465 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647373 (= e!371206 e!371208)))

(assert (= (and d!91503 c!74297) b!647368))

(assert (= (and d!91503 (not c!74297)) b!647370))

(assert (= (and b!647370 c!74298) b!647371))

(assert (= (and b!647370 (not c!74298)) b!647373))

(assert (= (and b!647373 c!74299) b!647369))

(assert (= (and b!647373 (not c!74299)) b!647372))

(declare-fun m!620881 () Bool)

(assert (=> d!91503 m!620881))

(declare-fun m!620883 () Bool)

(assert (=> d!91503 m!620883))

(declare-fun m!620885 () Bool)

(assert (=> d!91503 m!620885))

(assert (=> d!91503 m!620473))

(assert (=> b!647372 m!620823))

(assert (=> b!647372 m!620823))

(declare-fun m!620887 () Bool)

(assert (=> b!647372 m!620887))

(assert (=> b!646967 d!91503))

(declare-fun d!91505 () Bool)

(declare-fun res!419512 () Bool)

(declare-fun e!371213 () Bool)

(assert (=> d!91505 (=> res!419512 e!371213)))

(assert (=> d!91505 (= res!419512 (= (select (arr!18438 lt!300246) index!984) (select (arr!18438 a!2986) j!136)))))

(assert (=> d!91505 (= (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) index!984) e!371213)))

(declare-fun b!647378 () Bool)

(declare-fun e!371214 () Bool)

(assert (=> b!647378 (= e!371213 e!371214)))

(declare-fun res!419513 () Bool)

(assert (=> b!647378 (=> (not res!419513) (not e!371214))))

(assert (=> b!647378 (= res!419513 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18802 lt!300246)))))

(declare-fun b!647379 () Bool)

(assert (=> b!647379 (= e!371214 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91505 (not res!419512)) b!647378))

(assert (= (and b!647378 res!419513) b!647379))

(assert (=> d!91505 m!620837))

(assert (=> b!647379 m!620451))

(declare-fun m!620889 () Bool)

(assert (=> b!647379 m!620889))

(assert (=> b!646957 d!91505))

(declare-fun b!647411 () Bool)

(declare-fun e!371243 () Bool)

(assert (=> b!647411 (= e!371243 (contains!3155 Nil!12529 (select (arr!18438 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647412 () Bool)

(declare-fun e!371242 () Bool)

(declare-fun call!33694 () Bool)

(assert (=> b!647412 (= e!371242 call!33694)))

(declare-fun bm!33691 () Bool)

(declare-fun c!74305 () Bool)

(assert (=> bm!33691 (= call!33694 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74305 (Cons!12528 (select (arr!18438 a!2986) #b00000000000000000000000000000000) Nil!12529) Nil!12529)))))

(declare-fun b!647413 () Bool)

(declare-fun e!371241 () Bool)

(assert (=> b!647413 (= e!371241 e!371242)))

(assert (=> b!647413 (= c!74305 (validKeyInArray!0 (select (arr!18438 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647414 () Bool)

(declare-fun e!371244 () Bool)

(assert (=> b!647414 (= e!371244 e!371241)))

(declare-fun res!419535 () Bool)

(assert (=> b!647414 (=> (not res!419535) (not e!371241))))

(assert (=> b!647414 (= res!419535 (not e!371243))))

(declare-fun res!419537 () Bool)

(assert (=> b!647414 (=> (not res!419537) (not e!371243))))

(assert (=> b!647414 (= res!419537 (validKeyInArray!0 (select (arr!18438 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91507 () Bool)

(declare-fun res!419536 () Bool)

(assert (=> d!91507 (=> res!419536 e!371244)))

(assert (=> d!91507 (= res!419536 (bvsge #b00000000000000000000000000000000 (size!18802 a!2986)))))

(assert (=> d!91507 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12529) e!371244)))

(declare-fun b!647415 () Bool)

(assert (=> b!647415 (= e!371242 call!33694)))

(assert (= (and d!91507 (not res!419536)) b!647414))

(assert (= (and b!647414 res!419537) b!647411))

(assert (= (and b!647414 res!419535) b!647413))

(assert (= (and b!647413 c!74305) b!647415))

(assert (= (and b!647413 (not c!74305)) b!647412))

(assert (= (or b!647415 b!647412) bm!33691))

(declare-fun m!620903 () Bool)

(assert (=> b!647411 m!620903))

(assert (=> b!647411 m!620903))

(declare-fun m!620905 () Bool)

(assert (=> b!647411 m!620905))

(assert (=> bm!33691 m!620903))

(declare-fun m!620907 () Bool)

(assert (=> bm!33691 m!620907))

(assert (=> b!647413 m!620903))

(assert (=> b!647413 m!620903))

(declare-fun m!620909 () Bool)

(assert (=> b!647413 m!620909))

(assert (=> b!647414 m!620903))

(assert (=> b!647414 m!620903))

(assert (=> b!647414 m!620909))

(assert (=> b!646953 d!91507))

(declare-fun b!647416 () Bool)

(declare-fun e!371247 () Bool)

(assert (=> b!647416 (= e!371247 (contains!3155 Nil!12529 (select (arr!18438 lt!300246) j!136)))))

(declare-fun b!647417 () Bool)

(declare-fun e!371246 () Bool)

(declare-fun call!33695 () Bool)

(assert (=> b!647417 (= e!371246 call!33695)))

(declare-fun bm!33692 () Bool)

(declare-fun c!74306 () Bool)

(assert (=> bm!33692 (= call!33695 (arrayNoDuplicates!0 lt!300246 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74306 (Cons!12528 (select (arr!18438 lt!300246) j!136) Nil!12529) Nil!12529)))))

(declare-fun b!647418 () Bool)

(declare-fun e!371245 () Bool)

(assert (=> b!647418 (= e!371245 e!371246)))

(assert (=> b!647418 (= c!74306 (validKeyInArray!0 (select (arr!18438 lt!300246) j!136)))))

(declare-fun b!647419 () Bool)

(declare-fun e!371248 () Bool)

(assert (=> b!647419 (= e!371248 e!371245)))

(declare-fun res!419538 () Bool)

(assert (=> b!647419 (=> (not res!419538) (not e!371245))))

(assert (=> b!647419 (= res!419538 (not e!371247))))

(declare-fun res!419540 () Bool)

(assert (=> b!647419 (=> (not res!419540) (not e!371247))))

(assert (=> b!647419 (= res!419540 (validKeyInArray!0 (select (arr!18438 lt!300246) j!136)))))

(declare-fun d!91517 () Bool)

(declare-fun res!419539 () Bool)

(assert (=> d!91517 (=> res!419539 e!371248)))

(assert (=> d!91517 (= res!419539 (bvsge j!136 (size!18802 lt!300246)))))

(assert (=> d!91517 (= (arrayNoDuplicates!0 lt!300246 j!136 Nil!12529) e!371248)))

(declare-fun b!647420 () Bool)

(assert (=> b!647420 (= e!371246 call!33695)))

(assert (= (and d!91517 (not res!419539)) b!647419))

(assert (= (and b!647419 res!419540) b!647416))

(assert (= (and b!647419 res!419538) b!647418))

(assert (= (and b!647418 c!74306) b!647420))

(assert (= (and b!647418 (not c!74306)) b!647417))

(assert (= (or b!647420 b!647417) bm!33692))

(declare-fun m!620911 () Bool)

(assert (=> b!647416 m!620911))

(assert (=> b!647416 m!620911))

(declare-fun m!620913 () Bool)

(assert (=> b!647416 m!620913))

(assert (=> bm!33692 m!620911))

(declare-fun m!620915 () Bool)

(assert (=> bm!33692 m!620915))

(assert (=> b!647418 m!620911))

(assert (=> b!647418 m!620911))

(declare-fun m!620917 () Bool)

(assert (=> b!647418 m!620917))

(assert (=> b!647419 m!620911))

(assert (=> b!647419 m!620911))

(assert (=> b!647419 m!620917))

(assert (=> b!646975 d!91517))

(declare-fun d!91519 () Bool)

(declare-fun res!419541 () Bool)

(declare-fun e!371249 () Bool)

(assert (=> d!91519 (=> res!419541 e!371249)))

(assert (=> d!91519 (= res!419541 (= (select (arr!18438 lt!300246) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18438 a!2986) j!136)))))

(assert (=> d!91519 (= (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!371249)))

(declare-fun b!647421 () Bool)

(declare-fun e!371250 () Bool)

(assert (=> b!647421 (= e!371249 e!371250)))

(declare-fun res!419542 () Bool)

(assert (=> b!647421 (=> (not res!419542) (not e!371250))))

(assert (=> b!647421 (= res!419542 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18802 lt!300246)))))

(declare-fun b!647422 () Bool)

(assert (=> b!647422 (= e!371250 (arrayContainsKey!0 lt!300246 (select (arr!18438 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91519 (not res!419541)) b!647421))

(assert (= (and b!647421 res!419542) b!647422))

(declare-fun m!620919 () Bool)

(assert (=> d!91519 m!620919))

(assert (=> b!647422 m!620451))

(declare-fun m!620921 () Bool)

(assert (=> b!647422 m!620921))

(assert (=> b!646975 d!91519))

(declare-fun d!91521 () Bool)

(assert (=> d!91521 (arrayNoDuplicates!0 lt!300246 j!136 Nil!12529)))

(declare-fun lt!300473 () Unit!21982)

(declare-fun choose!39 (array!38466 (_ BitVec 32) (_ BitVec 32)) Unit!21982)

(assert (=> d!91521 (= lt!300473 (choose!39 lt!300246 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91521 (bvslt (size!18802 lt!300246) #b01111111111111111111111111111111)))

(assert (=> d!91521 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300246 #b00000000000000000000000000000000 j!136) lt!300473)))

(declare-fun bs!19341 () Bool)

(assert (= bs!19341 d!91521))

(assert (=> bs!19341 m!620479))

(declare-fun m!620933 () Bool)

(assert (=> bs!19341 m!620933))

(assert (=> b!646975 d!91521))

(declare-fun b!647433 () Bool)

(declare-fun e!371261 () Bool)

(assert (=> b!647433 (= e!371261 (contains!3155 Nil!12529 (select (arr!18438 lt!300246) #b00000000000000000000000000000000)))))

(declare-fun b!647434 () Bool)

(declare-fun e!371260 () Bool)

(declare-fun call!33698 () Bool)

(assert (=> b!647434 (= e!371260 call!33698)))

(declare-fun bm!33695 () Bool)

(declare-fun c!74309 () Bool)

(assert (=> bm!33695 (= call!33698 (arrayNoDuplicates!0 lt!300246 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74309 (Cons!12528 (select (arr!18438 lt!300246) #b00000000000000000000000000000000) Nil!12529) Nil!12529)))))

(declare-fun b!647435 () Bool)

(declare-fun e!371259 () Bool)

(assert (=> b!647435 (= e!371259 e!371260)))

(assert (=> b!647435 (= c!74309 (validKeyInArray!0 (select (arr!18438 lt!300246) #b00000000000000000000000000000000)))))

(declare-fun b!647436 () Bool)

(declare-fun e!371262 () Bool)

(assert (=> b!647436 (= e!371262 e!371259)))

(declare-fun res!419549 () Bool)

(assert (=> b!647436 (=> (not res!419549) (not e!371259))))

(assert (=> b!647436 (= res!419549 (not e!371261))))

(declare-fun res!419551 () Bool)

(assert (=> b!647436 (=> (not res!419551) (not e!371261))))

(assert (=> b!647436 (= res!419551 (validKeyInArray!0 (select (arr!18438 lt!300246) #b00000000000000000000000000000000)))))

