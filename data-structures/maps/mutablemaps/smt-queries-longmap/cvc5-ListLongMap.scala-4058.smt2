; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55584 () Bool)

(assert start!55584)

(declare-fun b!608277 () Bool)

(declare-fun res!391139 () Bool)

(declare-fun e!348360 () Bool)

(assert (=> b!608277 (=> (not res!391139) (not e!348360))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37278 0))(
  ( (array!37279 (arr!17886 (Array (_ BitVec 32) (_ BitVec 64))) (size!18250 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37278)

(assert (=> b!608277 (= res!391139 (and (= (size!18250 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18250 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18250 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608278 () Bool)

(declare-datatypes ((Unit!19426 0))(
  ( (Unit!19427) )
))
(declare-fun e!348367 () Unit!19426)

(declare-fun Unit!19428 () Unit!19426)

(assert (=> b!608278 (= e!348367 Unit!19428)))

(assert (=> b!608278 false))

(declare-fun b!608279 () Bool)

(declare-fun e!348370 () Bool)

(declare-datatypes ((SeekEntryResult!6333 0))(
  ( (MissingZero!6333 (index!27606 (_ BitVec 32))) (Found!6333 (index!27607 (_ BitVec 32))) (Intermediate!6333 (undefined!7145 Bool) (index!27608 (_ BitVec 32)) (x!56443 (_ BitVec 32))) (Undefined!6333) (MissingVacant!6333 (index!27609 (_ BitVec 32))) )
))
(declare-fun lt!277946 () SeekEntryResult!6333)

(declare-fun lt!277951 () SeekEntryResult!6333)

(assert (=> b!608279 (= e!348370 (= lt!277946 lt!277951))))

(declare-fun b!608280 () Bool)

(declare-fun res!391120 () Bool)

(declare-fun e!348368 () Bool)

(assert (=> b!608280 (=> (not res!391120) (not e!348368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37278 (_ BitVec 32)) Bool)

(assert (=> b!608280 (= res!391120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608281 () Bool)

(declare-fun res!391124 () Bool)

(assert (=> b!608281 (=> (not res!391124) (not e!348360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608281 (= res!391124 (validKeyInArray!0 (select (arr!17886 a!2986) j!136)))))

(declare-fun b!608282 () Bool)

(declare-fun res!391121 () Bool)

(declare-fun e!348361 () Bool)

(assert (=> b!608282 (=> res!391121 e!348361)))

(declare-datatypes ((List!11980 0))(
  ( (Nil!11977) (Cons!11976 (h!13021 (_ BitVec 64)) (t!18216 List!11980)) )
))
(declare-fun noDuplicate!328 (List!11980) Bool)

(assert (=> b!608282 (= res!391121 (not (noDuplicate!328 Nil!11977)))))

(declare-fun b!608283 () Bool)

(declare-fun e!348358 () Bool)

(declare-fun e!348356 () Bool)

(assert (=> b!608283 (= e!348358 e!348356)))

(declare-fun res!391128 () Bool)

(assert (=> b!608283 (=> res!391128 e!348356)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!608283 (= res!391128 (bvsge index!984 j!136))))

(declare-fun lt!277950 () Unit!19426)

(declare-fun e!348366 () Unit!19426)

(assert (=> b!608283 (= lt!277950 e!348366)))

(declare-fun c!68947 () Bool)

(assert (=> b!608283 (= c!68947 (bvslt j!136 index!984))))

(declare-fun b!608284 () Bool)

(declare-fun lt!277944 () array!37278)

(declare-fun e!348365 () Bool)

(declare-fun arrayContainsKey!0 (array!37278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608284 (= e!348365 (arrayContainsKey!0 lt!277944 (select (arr!17886 a!2986) j!136) index!984))))

(declare-fun b!608285 () Bool)

(declare-fun e!348362 () Bool)

(declare-fun e!348359 () Bool)

(assert (=> b!608285 (= e!348362 e!348359)))

(declare-fun res!391131 () Bool)

(assert (=> b!608285 (=> res!391131 e!348359)))

(declare-fun lt!277947 () (_ BitVec 64))

(declare-fun lt!277952 () (_ BitVec 64))

(assert (=> b!608285 (= res!391131 (or (not (= (select (arr!17886 a!2986) j!136) lt!277947)) (not (= (select (arr!17886 a!2986) j!136) lt!277952)) (bvsge j!136 index!984)))))

(declare-fun b!608286 () Bool)

(declare-fun e!348355 () Bool)

(declare-fun e!348364 () Bool)

(assert (=> b!608286 (= e!348355 e!348364)))

(declare-fun res!391119 () Bool)

(assert (=> b!608286 (=> (not res!391119) (not e!348364))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!608286 (= res!391119 (and (= lt!277946 (Found!6333 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17886 a!2986) index!984) (select (arr!17886 a!2986) j!136))) (not (= (select (arr!17886 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37278 (_ BitVec 32)) SeekEntryResult!6333)

(assert (=> b!608286 (= lt!277946 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17886 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608287 () Bool)

(declare-fun Unit!19429 () Unit!19426)

(assert (=> b!608287 (= e!348366 Unit!19429)))

(declare-fun lt!277949 () Unit!19426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19426)

(assert (=> b!608287 (= lt!277949 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277944 (select (arr!17886 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608287 (arrayContainsKey!0 lt!277944 (select (arr!17886 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!277938 () Unit!19426)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11980) Unit!19426)

(assert (=> b!608287 (= lt!277938 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11977))))

(declare-fun arrayNoDuplicates!0 (array!37278 (_ BitVec 32) List!11980) Bool)

(assert (=> b!608287 (arrayNoDuplicates!0 lt!277944 #b00000000000000000000000000000000 Nil!11977)))

(declare-fun lt!277940 () Unit!19426)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37278 (_ BitVec 32) (_ BitVec 32)) Unit!19426)

(assert (=> b!608287 (= lt!277940 (lemmaNoDuplicateFromThenFromBigger!0 lt!277944 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608287 (arrayNoDuplicates!0 lt!277944 j!136 Nil!11977)))

(declare-fun lt!277953 () Unit!19426)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37278 (_ BitVec 64) (_ BitVec 32) List!11980) Unit!19426)

(assert (=> b!608287 (= lt!277953 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277944 (select (arr!17886 a!2986) j!136) j!136 Nil!11977))))

(assert (=> b!608287 false))

(declare-fun b!608288 () Bool)

(declare-fun res!391136 () Bool)

(assert (=> b!608288 (=> (not res!391136) (not e!348368))))

(assert (=> b!608288 (= res!391136 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17886 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!391129 () Bool)

(assert (=> start!55584 (=> (not res!391129) (not e!348360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55584 (= res!391129 (validMask!0 mask!3053))))

(assert (=> start!55584 e!348360))

(assert (=> start!55584 true))

(declare-fun array_inv!13660 (array!37278) Bool)

(assert (=> start!55584 (array_inv!13660 a!2986)))

(declare-fun b!608289 () Bool)

(declare-fun e!348369 () Bool)

(assert (=> b!608289 (= e!348364 (not e!348369))))

(declare-fun res!391134 () Bool)

(assert (=> b!608289 (=> res!391134 e!348369)))

(declare-fun lt!277943 () SeekEntryResult!6333)

(assert (=> b!608289 (= res!391134 (not (= lt!277943 (Found!6333 index!984))))))

(declare-fun lt!277945 () Unit!19426)

(assert (=> b!608289 (= lt!277945 e!348367)))

(declare-fun c!68948 () Bool)

(assert (=> b!608289 (= c!68948 (= lt!277943 Undefined!6333))))

(assert (=> b!608289 (= lt!277943 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277947 lt!277944 mask!3053))))

(assert (=> b!608289 e!348370))

(declare-fun res!391117 () Bool)

(assert (=> b!608289 (=> (not res!391117) (not e!348370))))

(declare-fun lt!277937 () (_ BitVec 32))

(assert (=> b!608289 (= res!391117 (= lt!277951 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277937 vacantSpotIndex!68 lt!277947 lt!277944 mask!3053)))))

(assert (=> b!608289 (= lt!277951 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277937 vacantSpotIndex!68 (select (arr!17886 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608289 (= lt!277947 (select (store (arr!17886 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277948 () Unit!19426)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37278 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19426)

(assert (=> b!608289 (= lt!277948 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277937 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608289 (= lt!277937 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608290 () Bool)

(assert (=> b!608290 (= e!348361 true)))

(declare-fun lt!277941 () Bool)

(declare-fun contains!3026 (List!11980 (_ BitVec 64)) Bool)

(assert (=> b!608290 (= lt!277941 (contains!3026 Nil!11977 k!1786))))

(declare-fun b!608291 () Bool)

(declare-fun Unit!19430 () Unit!19426)

(assert (=> b!608291 (= e!348367 Unit!19430)))

(declare-fun b!608292 () Bool)

(declare-fun e!348357 () Bool)

(assert (=> b!608292 (= e!348359 e!348357)))

(declare-fun res!391130 () Bool)

(assert (=> b!608292 (=> (not res!391130) (not e!348357))))

(assert (=> b!608292 (= res!391130 (arrayContainsKey!0 lt!277944 (select (arr!17886 a!2986) j!136) j!136))))

(declare-fun b!608293 () Bool)

(declare-fun res!391118 () Bool)

(assert (=> b!608293 (=> (not res!391118) (not e!348368))))

(assert (=> b!608293 (= res!391118 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11977))))

(declare-fun b!608294 () Bool)

(assert (=> b!608294 (= e!348360 e!348368)))

(declare-fun res!391137 () Bool)

(assert (=> b!608294 (=> (not res!391137) (not e!348368))))

(declare-fun lt!277942 () SeekEntryResult!6333)

(assert (=> b!608294 (= res!391137 (or (= lt!277942 (MissingZero!6333 i!1108)) (= lt!277942 (MissingVacant!6333 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37278 (_ BitVec 32)) SeekEntryResult!6333)

(assert (=> b!608294 (= lt!277942 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!608295 () Bool)

(declare-fun res!391133 () Bool)

(assert (=> b!608295 (=> (not res!391133) (not e!348360))))

(assert (=> b!608295 (= res!391133 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608296 () Bool)

(declare-fun res!391123 () Bool)

(assert (=> b!608296 (=> res!391123 e!348361)))

(assert (=> b!608296 (= res!391123 (contains!3026 Nil!11977 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608297 () Bool)

(declare-fun res!391135 () Bool)

(assert (=> b!608297 (=> res!391135 e!348361)))

(assert (=> b!608297 (= res!391135 (contains!3026 Nil!11977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608298 () Bool)

(assert (=> b!608298 (= e!348369 e!348358)))

(declare-fun res!391126 () Bool)

(assert (=> b!608298 (=> res!391126 e!348358)))

(assert (=> b!608298 (= res!391126 (or (not (= (select (arr!17886 a!2986) j!136) lt!277947)) (not (= (select (arr!17886 a!2986) j!136) lt!277952))))))

(assert (=> b!608298 e!348362))

(declare-fun res!391132 () Bool)

(assert (=> b!608298 (=> (not res!391132) (not e!348362))))

(assert (=> b!608298 (= res!391132 (= lt!277952 (select (arr!17886 a!2986) j!136)))))

(assert (=> b!608298 (= lt!277952 (select (store (arr!17886 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!608299 () Bool)

(declare-fun Unit!19431 () Unit!19426)

(assert (=> b!608299 (= e!348366 Unit!19431)))

(declare-fun b!608300 () Bool)

(assert (=> b!608300 (= e!348356 e!348361)))

(declare-fun res!391125 () Bool)

(assert (=> b!608300 (=> res!391125 e!348361)))

(assert (=> b!608300 (= res!391125 (or (bvsge (size!18250 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18250 a!2986))))))

(assert (=> b!608300 (arrayContainsKey!0 lt!277944 (select (arr!17886 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277939 () Unit!19426)

(assert (=> b!608300 (= lt!277939 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277944 (select (arr!17886 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608300 e!348365))

(declare-fun res!391122 () Bool)

(assert (=> b!608300 (=> (not res!391122) (not e!348365))))

(assert (=> b!608300 (= res!391122 (arrayContainsKey!0 lt!277944 (select (arr!17886 a!2986) j!136) j!136))))

(declare-fun b!608301 () Bool)

(assert (=> b!608301 (= e!348368 e!348355)))

(declare-fun res!391127 () Bool)

(assert (=> b!608301 (=> (not res!391127) (not e!348355))))

(assert (=> b!608301 (= res!391127 (= (select (store (arr!17886 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608301 (= lt!277944 (array!37279 (store (arr!17886 a!2986) i!1108 k!1786) (size!18250 a!2986)))))

(declare-fun b!608302 () Bool)

(declare-fun res!391138 () Bool)

(assert (=> b!608302 (=> (not res!391138) (not e!348360))))

(assert (=> b!608302 (= res!391138 (validKeyInArray!0 k!1786))))

(declare-fun b!608303 () Bool)

(assert (=> b!608303 (= e!348357 (arrayContainsKey!0 lt!277944 (select (arr!17886 a!2986) j!136) index!984))))

(assert (= (and start!55584 res!391129) b!608277))

(assert (= (and b!608277 res!391139) b!608281))

(assert (= (and b!608281 res!391124) b!608302))

(assert (= (and b!608302 res!391138) b!608295))

(assert (= (and b!608295 res!391133) b!608294))

(assert (= (and b!608294 res!391137) b!608280))

(assert (= (and b!608280 res!391120) b!608293))

(assert (= (and b!608293 res!391118) b!608288))

(assert (= (and b!608288 res!391136) b!608301))

(assert (= (and b!608301 res!391127) b!608286))

(assert (= (and b!608286 res!391119) b!608289))

(assert (= (and b!608289 res!391117) b!608279))

(assert (= (and b!608289 c!68948) b!608278))

(assert (= (and b!608289 (not c!68948)) b!608291))

(assert (= (and b!608289 (not res!391134)) b!608298))

(assert (= (and b!608298 res!391132) b!608285))

(assert (= (and b!608285 (not res!391131)) b!608292))

(assert (= (and b!608292 res!391130) b!608303))

(assert (= (and b!608298 (not res!391126)) b!608283))

(assert (= (and b!608283 c!68947) b!608287))

(assert (= (and b!608283 (not c!68947)) b!608299))

(assert (= (and b!608283 (not res!391128)) b!608300))

(assert (= (and b!608300 res!391122) b!608284))

(assert (= (and b!608300 (not res!391125)) b!608282))

(assert (= (and b!608282 (not res!391121)) b!608297))

(assert (= (and b!608297 (not res!391135)) b!608296))

(assert (= (and b!608296 (not res!391123)) b!608290))

(declare-fun m!584949 () Bool)

(assert (=> b!608282 m!584949))

(declare-fun m!584951 () Bool)

(assert (=> b!608293 m!584951))

(declare-fun m!584953 () Bool)

(assert (=> b!608285 m!584953))

(declare-fun m!584955 () Bool)

(assert (=> b!608289 m!584955))

(declare-fun m!584957 () Bool)

(assert (=> b!608289 m!584957))

(assert (=> b!608289 m!584953))

(declare-fun m!584959 () Bool)

(assert (=> b!608289 m!584959))

(declare-fun m!584961 () Bool)

(assert (=> b!608289 m!584961))

(declare-fun m!584963 () Bool)

(assert (=> b!608289 m!584963))

(declare-fun m!584965 () Bool)

(assert (=> b!608289 m!584965))

(assert (=> b!608289 m!584953))

(declare-fun m!584967 () Bool)

(assert (=> b!608289 m!584967))

(assert (=> b!608287 m!584953))

(declare-fun m!584969 () Bool)

(assert (=> b!608287 m!584969))

(declare-fun m!584971 () Bool)

(assert (=> b!608287 m!584971))

(assert (=> b!608287 m!584953))

(declare-fun m!584973 () Bool)

(assert (=> b!608287 m!584973))

(declare-fun m!584975 () Bool)

(assert (=> b!608287 m!584975))

(declare-fun m!584977 () Bool)

(assert (=> b!608287 m!584977))

(assert (=> b!608287 m!584953))

(declare-fun m!584979 () Bool)

(assert (=> b!608287 m!584979))

(assert (=> b!608287 m!584953))

(declare-fun m!584981 () Bool)

(assert (=> b!608287 m!584981))

(assert (=> b!608301 m!584959))

(declare-fun m!584983 () Bool)

(assert (=> b!608301 m!584983))

(assert (=> b!608303 m!584953))

(assert (=> b!608303 m!584953))

(declare-fun m!584985 () Bool)

(assert (=> b!608303 m!584985))

(declare-fun m!584987 () Bool)

(assert (=> b!608302 m!584987))

(declare-fun m!584989 () Bool)

(assert (=> b!608296 m!584989))

(declare-fun m!584991 () Bool)

(assert (=> b!608297 m!584991))

(declare-fun m!584993 () Bool)

(assert (=> b!608295 m!584993))

(assert (=> b!608298 m!584953))

(assert (=> b!608298 m!584959))

(declare-fun m!584995 () Bool)

(assert (=> b!608298 m!584995))

(assert (=> b!608292 m!584953))

(assert (=> b!608292 m!584953))

(declare-fun m!584997 () Bool)

(assert (=> b!608292 m!584997))

(assert (=> b!608281 m!584953))

(assert (=> b!608281 m!584953))

(declare-fun m!584999 () Bool)

(assert (=> b!608281 m!584999))

(assert (=> b!608300 m!584953))

(assert (=> b!608300 m!584953))

(declare-fun m!585001 () Bool)

(assert (=> b!608300 m!585001))

(assert (=> b!608300 m!584953))

(declare-fun m!585003 () Bool)

(assert (=> b!608300 m!585003))

(assert (=> b!608300 m!584953))

(assert (=> b!608300 m!584997))

(declare-fun m!585005 () Bool)

(assert (=> b!608290 m!585005))

(declare-fun m!585007 () Bool)

(assert (=> b!608288 m!585007))

(declare-fun m!585009 () Bool)

(assert (=> b!608294 m!585009))

(declare-fun m!585011 () Bool)

(assert (=> b!608286 m!585011))

(assert (=> b!608286 m!584953))

(assert (=> b!608286 m!584953))

(declare-fun m!585013 () Bool)

(assert (=> b!608286 m!585013))

(assert (=> b!608284 m!584953))

(assert (=> b!608284 m!584953))

(assert (=> b!608284 m!584985))

(declare-fun m!585015 () Bool)

(assert (=> start!55584 m!585015))

(declare-fun m!585017 () Bool)

(assert (=> start!55584 m!585017))

(declare-fun m!585019 () Bool)

(assert (=> b!608280 m!585019))

(push 1)

