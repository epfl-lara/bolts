; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55028 () Bool)

(assert start!55028)

(declare-fun b!602231 () Bool)

(declare-datatypes ((Unit!19072 0))(
  ( (Unit!19073) )
))
(declare-fun e!344430 () Unit!19072)

(declare-fun Unit!19074 () Unit!19072)

(assert (=> b!602231 (= e!344430 Unit!19074)))

(assert (=> b!602231 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37145 0))(
  ( (array!37146 (arr!17827 (Array (_ BitVec 32) (_ BitVec 64))) (size!18191 (_ BitVec 32))) )
))
(declare-fun lt!274373 () array!37145)

(declare-fun e!344427 () Bool)

(declare-fun b!602232 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37145)

(declare-fun arrayContainsKey!0 (array!37145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602232 (= e!344427 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) index!984))))

(declare-fun b!602233 () Bool)

(declare-fun e!344434 () Bool)

(declare-fun e!344429 () Bool)

(assert (=> b!602233 (= e!344434 e!344429)))

(declare-fun res!386839 () Bool)

(assert (=> b!602233 (=> res!386839 e!344429)))

(declare-fun lt!274369 () (_ BitVec 64))

(declare-fun lt!274365 () (_ BitVec 64))

(assert (=> b!602233 (= res!386839 (or (not (= (select (arr!17827 a!2986) j!136) lt!274369)) (not (= (select (arr!17827 a!2986) j!136) lt!274365))))))

(declare-fun e!344439 () Bool)

(assert (=> b!602233 e!344439))

(declare-fun res!386831 () Bool)

(assert (=> b!602233 (=> (not res!386831) (not e!344439))))

(assert (=> b!602233 (= res!386831 (= lt!274365 (select (arr!17827 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!602233 (= lt!274365 (select (store (arr!17827 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!602234 () Bool)

(declare-fun e!344431 () Unit!19072)

(declare-fun Unit!19075 () Unit!19072)

(assert (=> b!602234 (= e!344431 Unit!19075)))

(declare-fun lt!274377 () Unit!19072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37145 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19072)

(assert (=> b!602234 (= lt!274377 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274373 (select (arr!17827 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602234 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274363 () Unit!19072)

(declare-datatypes ((List!11921 0))(
  ( (Nil!11918) (Cons!11917 (h!12962 (_ BitVec 64)) (t!18157 List!11921)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37145 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11921) Unit!19072)

(assert (=> b!602234 (= lt!274363 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11918))))

(declare-fun arrayNoDuplicates!0 (array!37145 (_ BitVec 32) List!11921) Bool)

(assert (=> b!602234 (arrayNoDuplicates!0 lt!274373 #b00000000000000000000000000000000 Nil!11918)))

(declare-fun lt!274364 () Unit!19072)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37145 (_ BitVec 32) (_ BitVec 32)) Unit!19072)

(assert (=> b!602234 (= lt!274364 (lemmaNoDuplicateFromThenFromBigger!0 lt!274373 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602234 (arrayNoDuplicates!0 lt!274373 j!136 Nil!11918)))

(declare-fun lt!274375 () Unit!19072)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37145 (_ BitVec 64) (_ BitVec 32) List!11921) Unit!19072)

(assert (=> b!602234 (= lt!274375 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274373 (select (arr!17827 a!2986) j!136) j!136 Nil!11918))))

(assert (=> b!602234 false))

(declare-fun b!602235 () Bool)

(declare-fun res!386842 () Bool)

(declare-fun e!344433 () Bool)

(assert (=> b!602235 (=> (not res!386842) (not e!344433))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37145 (_ BitVec 32)) Bool)

(assert (=> b!602235 (= res!386842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602236 () Bool)

(declare-fun e!344437 () Bool)

(declare-datatypes ((SeekEntryResult!6274 0))(
  ( (MissingZero!6274 (index!27355 (_ BitVec 32))) (Found!6274 (index!27356 (_ BitVec 32))) (Intermediate!6274 (undefined!7086 Bool) (index!27357 (_ BitVec 32)) (x!56179 (_ BitVec 32))) (Undefined!6274) (MissingVacant!6274 (index!27358 (_ BitVec 32))) )
))
(declare-fun lt!274367 () SeekEntryResult!6274)

(declare-fun lt!274372 () SeekEntryResult!6274)

(assert (=> b!602236 (= e!344437 (= lt!274367 lt!274372))))

(declare-fun b!602237 () Bool)

(declare-fun res!386837 () Bool)

(declare-fun e!344438 () Bool)

(assert (=> b!602237 (=> (not res!386837) (not e!344438))))

(assert (=> b!602237 (= res!386837 (and (= (size!18191 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18191 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18191 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602238 () Bool)

(assert (=> b!602238 (= e!344438 e!344433)))

(declare-fun res!386838 () Bool)

(assert (=> b!602238 (=> (not res!386838) (not e!344433))))

(declare-fun lt!274370 () SeekEntryResult!6274)

(assert (=> b!602238 (= res!386838 (or (= lt!274370 (MissingZero!6274 i!1108)) (= lt!274370 (MissingVacant!6274 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37145 (_ BitVec 32)) SeekEntryResult!6274)

(assert (=> b!602238 (= lt!274370 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!602239 () Bool)

(declare-fun res!386844 () Bool)

(assert (=> b!602239 (=> (not res!386844) (not e!344438))))

(assert (=> b!602239 (= res!386844 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602240 () Bool)

(declare-fun e!344435 () Bool)

(assert (=> b!602240 (= e!344435 (or (bvsge index!984 (size!18191 a!2986)) (bvslt (size!18191 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!602240 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) j!136)))

(declare-fun b!602241 () Bool)

(declare-fun Unit!19076 () Unit!19072)

(assert (=> b!602241 (= e!344431 Unit!19076)))

(declare-fun res!386836 () Bool)

(assert (=> start!55028 (=> (not res!386836) (not e!344438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55028 (= res!386836 (validMask!0 mask!3053))))

(assert (=> start!55028 e!344438))

(assert (=> start!55028 true))

(declare-fun array_inv!13601 (array!37145) Bool)

(assert (=> start!55028 (array_inv!13601 a!2986)))

(declare-fun b!602242 () Bool)

(declare-fun res!386830 () Bool)

(assert (=> b!602242 (=> (not res!386830) (not e!344433))))

(assert (=> b!602242 (= res!386830 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11918))))

(declare-fun b!602243 () Bool)

(declare-fun e!344428 () Bool)

(assert (=> b!602243 (= e!344428 e!344427)))

(declare-fun res!386835 () Bool)

(assert (=> b!602243 (=> (not res!386835) (not e!344427))))

(assert (=> b!602243 (= res!386835 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) j!136))))

(declare-fun b!602244 () Bool)

(declare-fun e!344432 () Bool)

(assert (=> b!602244 (= e!344433 e!344432)))

(declare-fun res!386829 () Bool)

(assert (=> b!602244 (=> (not res!386829) (not e!344432))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!602244 (= res!386829 (= (select (store (arr!17827 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602244 (= lt!274373 (array!37146 (store (arr!17827 a!2986) i!1108 k0!1786) (size!18191 a!2986)))))

(declare-fun b!602245 () Bool)

(declare-fun Unit!19077 () Unit!19072)

(assert (=> b!602245 (= e!344430 Unit!19077)))

(declare-fun b!602246 () Bool)

(declare-fun e!344436 () Bool)

(assert (=> b!602246 (= e!344436 (not e!344434))))

(declare-fun res!386845 () Bool)

(assert (=> b!602246 (=> res!386845 e!344434)))

(declare-fun lt!274376 () SeekEntryResult!6274)

(assert (=> b!602246 (= res!386845 (not (= lt!274376 (Found!6274 index!984))))))

(declare-fun lt!274368 () Unit!19072)

(assert (=> b!602246 (= lt!274368 e!344430)))

(declare-fun c!68068 () Bool)

(assert (=> b!602246 (= c!68068 (= lt!274376 Undefined!6274))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37145 (_ BitVec 32)) SeekEntryResult!6274)

(assert (=> b!602246 (= lt!274376 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274369 lt!274373 mask!3053))))

(assert (=> b!602246 e!344437))

(declare-fun res!386833 () Bool)

(assert (=> b!602246 (=> (not res!386833) (not e!344437))))

(declare-fun lt!274374 () (_ BitVec 32))

(assert (=> b!602246 (= res!386833 (= lt!274372 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 lt!274369 lt!274373 mask!3053)))))

(assert (=> b!602246 (= lt!274372 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602246 (= lt!274369 (select (store (arr!17827 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!274371 () Unit!19072)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37145 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19072)

(assert (=> b!602246 (= lt!274371 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602246 (= lt!274374 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602247 () Bool)

(declare-fun res!386843 () Bool)

(assert (=> b!602247 (=> (not res!386843) (not e!344438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602247 (= res!386843 (validKeyInArray!0 k0!1786))))

(declare-fun b!602248 () Bool)

(assert (=> b!602248 (= e!344432 e!344436)))

(declare-fun res!386846 () Bool)

(assert (=> b!602248 (=> (not res!386846) (not e!344436))))

(assert (=> b!602248 (= res!386846 (and (= lt!274367 (Found!6274 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17827 a!2986) index!984) (select (arr!17827 a!2986) j!136))) (not (= (select (arr!17827 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!602248 (= lt!274367 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602249 () Bool)

(declare-fun res!386840 () Bool)

(assert (=> b!602249 (=> (not res!386840) (not e!344438))))

(assert (=> b!602249 (= res!386840 (validKeyInArray!0 (select (arr!17827 a!2986) j!136)))))

(declare-fun b!602250 () Bool)

(assert (=> b!602250 (= e!344439 e!344428)))

(declare-fun res!386841 () Bool)

(assert (=> b!602250 (=> res!386841 e!344428)))

(assert (=> b!602250 (= res!386841 (or (not (= (select (arr!17827 a!2986) j!136) lt!274369)) (not (= (select (arr!17827 a!2986) j!136) lt!274365)) (bvsge j!136 index!984)))))

(declare-fun b!602251 () Bool)

(assert (=> b!602251 (= e!344429 e!344435)))

(declare-fun res!386834 () Bool)

(assert (=> b!602251 (=> res!386834 e!344435)))

(assert (=> b!602251 (= res!386834 (bvsge index!984 j!136))))

(declare-fun lt!274366 () Unit!19072)

(assert (=> b!602251 (= lt!274366 e!344431)))

(declare-fun c!68069 () Bool)

(assert (=> b!602251 (= c!68069 (bvslt j!136 index!984))))

(declare-fun b!602252 () Bool)

(declare-fun res!386832 () Bool)

(assert (=> b!602252 (=> (not res!386832) (not e!344433))))

(assert (=> b!602252 (= res!386832 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17827 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!55028 res!386836) b!602237))

(assert (= (and b!602237 res!386837) b!602249))

(assert (= (and b!602249 res!386840) b!602247))

(assert (= (and b!602247 res!386843) b!602239))

(assert (= (and b!602239 res!386844) b!602238))

(assert (= (and b!602238 res!386838) b!602235))

(assert (= (and b!602235 res!386842) b!602242))

(assert (= (and b!602242 res!386830) b!602252))

(assert (= (and b!602252 res!386832) b!602244))

(assert (= (and b!602244 res!386829) b!602248))

(assert (= (and b!602248 res!386846) b!602246))

(assert (= (and b!602246 res!386833) b!602236))

(assert (= (and b!602246 c!68068) b!602231))

(assert (= (and b!602246 (not c!68068)) b!602245))

(assert (= (and b!602246 (not res!386845)) b!602233))

(assert (= (and b!602233 res!386831) b!602250))

(assert (= (and b!602250 (not res!386841)) b!602243))

(assert (= (and b!602243 res!386835) b!602232))

(assert (= (and b!602233 (not res!386839)) b!602251))

(assert (= (and b!602251 c!68069) b!602234))

(assert (= (and b!602251 (not c!68069)) b!602241))

(assert (= (and b!602251 (not res!386834)) b!602240))

(declare-fun m!579399 () Bool)

(assert (=> b!602247 m!579399))

(declare-fun m!579401 () Bool)

(assert (=> b!602249 m!579401))

(assert (=> b!602249 m!579401))

(declare-fun m!579403 () Bool)

(assert (=> b!602249 m!579403))

(assert (=> b!602232 m!579401))

(assert (=> b!602232 m!579401))

(declare-fun m!579405 () Bool)

(assert (=> b!602232 m!579405))

(assert (=> b!602233 m!579401))

(declare-fun m!579407 () Bool)

(assert (=> b!602233 m!579407))

(declare-fun m!579409 () Bool)

(assert (=> b!602233 m!579409))

(declare-fun m!579411 () Bool)

(assert (=> b!602239 m!579411))

(assert (=> b!602250 m!579401))

(declare-fun m!579413 () Bool)

(assert (=> b!602246 m!579413))

(declare-fun m!579415 () Bool)

(assert (=> b!602246 m!579415))

(declare-fun m!579417 () Bool)

(assert (=> b!602246 m!579417))

(declare-fun m!579419 () Bool)

(assert (=> b!602246 m!579419))

(assert (=> b!602246 m!579401))

(assert (=> b!602246 m!579407))

(declare-fun m!579421 () Bool)

(assert (=> b!602246 m!579421))

(assert (=> b!602246 m!579401))

(declare-fun m!579423 () Bool)

(assert (=> b!602246 m!579423))

(assert (=> b!602244 m!579407))

(declare-fun m!579425 () Bool)

(assert (=> b!602244 m!579425))

(declare-fun m!579427 () Bool)

(assert (=> b!602252 m!579427))

(declare-fun m!579429 () Bool)

(assert (=> b!602248 m!579429))

(assert (=> b!602248 m!579401))

(assert (=> b!602248 m!579401))

(declare-fun m!579431 () Bool)

(assert (=> b!602248 m!579431))

(assert (=> b!602243 m!579401))

(assert (=> b!602243 m!579401))

(declare-fun m!579433 () Bool)

(assert (=> b!602243 m!579433))

(declare-fun m!579435 () Bool)

(assert (=> b!602234 m!579435))

(assert (=> b!602234 m!579401))

(declare-fun m!579437 () Bool)

(assert (=> b!602234 m!579437))

(assert (=> b!602234 m!579401))

(declare-fun m!579439 () Bool)

(assert (=> b!602234 m!579439))

(assert (=> b!602234 m!579401))

(declare-fun m!579441 () Bool)

(assert (=> b!602234 m!579441))

(assert (=> b!602234 m!579401))

(declare-fun m!579443 () Bool)

(assert (=> b!602234 m!579443))

(declare-fun m!579445 () Bool)

(assert (=> b!602234 m!579445))

(declare-fun m!579447 () Bool)

(assert (=> b!602234 m!579447))

(declare-fun m!579449 () Bool)

(assert (=> b!602235 m!579449))

(declare-fun m!579451 () Bool)

(assert (=> b!602238 m!579451))

(assert (=> b!602240 m!579401))

(assert (=> b!602240 m!579401))

(assert (=> b!602240 m!579433))

(declare-fun m!579453 () Bool)

(assert (=> start!55028 m!579453))

(declare-fun m!579455 () Bool)

(assert (=> start!55028 m!579455))

(declare-fun m!579457 () Bool)

(assert (=> b!602242 m!579457))

(check-sat (not b!602249) (not b!602232) (not b!602246) (not b!602238) (not b!602243) (not b!602239) (not b!602247) (not b!602235) (not start!55028) (not b!602248) (not b!602240) (not b!602242) (not b!602234))
(check-sat)
(get-model)

(declare-fun d!87147 () Bool)

(declare-fun res!386905 () Bool)

(declare-fun e!344487 () Bool)

(assert (=> d!87147 (=> res!386905 e!344487)))

(assert (=> d!87147 (= res!386905 (= (select (arr!17827 lt!274373) j!136) (select (arr!17827 a!2986) j!136)))))

(assert (=> d!87147 (= (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) j!136) e!344487)))

(declare-fun b!602323 () Bool)

(declare-fun e!344488 () Bool)

(assert (=> b!602323 (= e!344487 e!344488)))

(declare-fun res!386906 () Bool)

(assert (=> b!602323 (=> (not res!386906) (not e!344488))))

(assert (=> b!602323 (= res!386906 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18191 lt!274373)))))

(declare-fun b!602324 () Bool)

(assert (=> b!602324 (= e!344488 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87147 (not res!386905)) b!602323))

(assert (= (and b!602323 res!386906) b!602324))

(declare-fun m!579519 () Bool)

(assert (=> d!87147 m!579519))

(assert (=> b!602324 m!579401))

(declare-fun m!579521 () Bool)

(assert (=> b!602324 m!579521))

(assert (=> b!602240 d!87147))

(declare-fun d!87149 () Bool)

(declare-fun res!386907 () Bool)

(declare-fun e!344489 () Bool)

(assert (=> d!87149 (=> res!386907 e!344489)))

(assert (=> d!87149 (= res!386907 (= (select (arr!17827 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!87149 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!344489)))

(declare-fun b!602325 () Bool)

(declare-fun e!344490 () Bool)

(assert (=> b!602325 (= e!344489 e!344490)))

(declare-fun res!386908 () Bool)

(assert (=> b!602325 (=> (not res!386908) (not e!344490))))

(assert (=> b!602325 (= res!386908 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18191 a!2986)))))

(declare-fun b!602326 () Bool)

(assert (=> b!602326 (= e!344490 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87149 (not res!386907)) b!602325))

(assert (= (and b!602325 res!386908) b!602326))

(declare-fun m!579523 () Bool)

(assert (=> d!87149 m!579523))

(declare-fun m!579525 () Bool)

(assert (=> b!602326 m!579525))

(assert (=> b!602239 d!87149))

(assert (=> b!602243 d!87147))

(declare-fun d!87151 () Bool)

(declare-fun res!386909 () Bool)

(declare-fun e!344491 () Bool)

(assert (=> d!87151 (=> res!386909 e!344491)))

(assert (=> d!87151 (= res!386909 (= (select (arr!17827 lt!274373) index!984) (select (arr!17827 a!2986) j!136)))))

(assert (=> d!87151 (= (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) index!984) e!344491)))

(declare-fun b!602327 () Bool)

(declare-fun e!344492 () Bool)

(assert (=> b!602327 (= e!344491 e!344492)))

(declare-fun res!386910 () Bool)

(assert (=> b!602327 (=> (not res!386910) (not e!344492))))

(assert (=> b!602327 (= res!386910 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18191 lt!274373)))))

(declare-fun b!602328 () Bool)

(assert (=> b!602328 (= e!344492 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87151 (not res!386909)) b!602327))

(assert (= (and b!602327 res!386910) b!602328))

(declare-fun m!579527 () Bool)

(assert (=> d!87151 m!579527))

(assert (=> b!602328 m!579401))

(declare-fun m!579529 () Bool)

(assert (=> b!602328 m!579529))

(assert (=> b!602232 d!87151))

(declare-fun d!87153 () Bool)

(assert (=> d!87153 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55028 d!87153))

(declare-fun d!87155 () Bool)

(assert (=> d!87155 (= (array_inv!13601 a!2986) (bvsge (size!18191 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55028 d!87155))

(declare-fun b!602339 () Bool)

(declare-fun e!344502 () Bool)

(declare-fun call!32987 () Bool)

(assert (=> b!602339 (= e!344502 call!32987)))

(declare-fun b!602340 () Bool)

(declare-fun e!344503 () Bool)

(declare-fun e!344504 () Bool)

(assert (=> b!602340 (= e!344503 e!344504)))

(declare-fun res!386918 () Bool)

(assert (=> b!602340 (=> (not res!386918) (not e!344504))))

(declare-fun e!344501 () Bool)

(assert (=> b!602340 (= res!386918 (not e!344501))))

(declare-fun res!386917 () Bool)

(assert (=> b!602340 (=> (not res!386917) (not e!344501))))

(assert (=> b!602340 (= res!386917 (validKeyInArray!0 (select (arr!17827 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!602341 () Bool)

(assert (=> b!602341 (= e!344504 e!344502)))

(declare-fun c!68078 () Bool)

(assert (=> b!602341 (= c!68078 (validKeyInArray!0 (select (arr!17827 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!602342 () Bool)

(assert (=> b!602342 (= e!344502 call!32987)))

(declare-fun b!602343 () Bool)

(declare-fun contains!2993 (List!11921 (_ BitVec 64)) Bool)

(assert (=> b!602343 (= e!344501 (contains!2993 Nil!11918 (select (arr!17827 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87157 () Bool)

(declare-fun res!386919 () Bool)

(assert (=> d!87157 (=> res!386919 e!344503)))

(assert (=> d!87157 (= res!386919 (bvsge #b00000000000000000000000000000000 (size!18191 a!2986)))))

(assert (=> d!87157 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11918) e!344503)))

(declare-fun bm!32984 () Bool)

(assert (=> bm!32984 (= call!32987 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68078 (Cons!11917 (select (arr!17827 a!2986) #b00000000000000000000000000000000) Nil!11918) Nil!11918)))))

(assert (= (and d!87157 (not res!386919)) b!602340))

(assert (= (and b!602340 res!386917) b!602343))

(assert (= (and b!602340 res!386918) b!602341))

(assert (= (and b!602341 c!68078) b!602339))

(assert (= (and b!602341 (not c!68078)) b!602342))

(assert (= (or b!602339 b!602342) bm!32984))

(assert (=> b!602340 m!579523))

(assert (=> b!602340 m!579523))

(declare-fun m!579531 () Bool)

(assert (=> b!602340 m!579531))

(assert (=> b!602341 m!579523))

(assert (=> b!602341 m!579523))

(assert (=> b!602341 m!579531))

(assert (=> b!602343 m!579523))

(assert (=> b!602343 m!579523))

(declare-fun m!579533 () Bool)

(assert (=> b!602343 m!579533))

(assert (=> bm!32984 m!579523))

(declare-fun m!579535 () Bool)

(assert (=> bm!32984 m!579535))

(assert (=> b!602242 d!87157))

(declare-fun b!602358 () Bool)

(declare-fun e!344519 () Bool)

(declare-fun e!344517 () Bool)

(assert (=> b!602358 (= e!344519 e!344517)))

(declare-fun c!68081 () Bool)

(assert (=> b!602358 (= c!68081 (validKeyInArray!0 (select (arr!17827 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32987 () Bool)

(declare-fun call!32990 () Bool)

(assert (=> bm!32987 (= call!32990 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!602359 () Bool)

(declare-fun e!344518 () Bool)

(assert (=> b!602359 (= e!344518 call!32990)))

(declare-fun b!602360 () Bool)

(assert (=> b!602360 (= e!344517 call!32990)))

(declare-fun d!87159 () Bool)

(declare-fun res!386930 () Bool)

(assert (=> d!87159 (=> res!386930 e!344519)))

(assert (=> d!87159 (= res!386930 (bvsge #b00000000000000000000000000000000 (size!18191 a!2986)))))

(assert (=> d!87159 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!344519)))

(declare-fun b!602361 () Bool)

(assert (=> b!602361 (= e!344517 e!344518)))

(declare-fun lt!274430 () (_ BitVec 64))

(assert (=> b!602361 (= lt!274430 (select (arr!17827 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!274429 () Unit!19072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37145 (_ BitVec 64) (_ BitVec 32)) Unit!19072)

(assert (=> b!602361 (= lt!274429 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!274430 #b00000000000000000000000000000000))))

(assert (=> b!602361 (arrayContainsKey!0 a!2986 lt!274430 #b00000000000000000000000000000000)))

(declare-fun lt!274431 () Unit!19072)

(assert (=> b!602361 (= lt!274431 lt!274429)))

(declare-fun res!386931 () Bool)

(assert (=> b!602361 (= res!386931 (= (seekEntryOrOpen!0 (select (arr!17827 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6274 #b00000000000000000000000000000000)))))

(assert (=> b!602361 (=> (not res!386931) (not e!344518))))

(assert (= (and d!87159 (not res!386930)) b!602358))

(assert (= (and b!602358 c!68081) b!602361))

(assert (= (and b!602358 (not c!68081)) b!602360))

(assert (= (and b!602361 res!386931) b!602359))

(assert (= (or b!602359 b!602360) bm!32987))

(assert (=> b!602358 m!579523))

(assert (=> b!602358 m!579523))

(assert (=> b!602358 m!579531))

(declare-fun m!579541 () Bool)

(assert (=> bm!32987 m!579541))

(assert (=> b!602361 m!579523))

(declare-fun m!579543 () Bool)

(assert (=> b!602361 m!579543))

(declare-fun m!579545 () Bool)

(assert (=> b!602361 m!579545))

(assert (=> b!602361 m!579523))

(declare-fun m!579547 () Bool)

(assert (=> b!602361 m!579547))

(assert (=> b!602235 d!87159))

(declare-fun d!87167 () Bool)

(declare-fun lt!274452 () SeekEntryResult!6274)

(get-info :version)

(assert (=> d!87167 (and (or ((_ is Undefined!6274) lt!274452) (not ((_ is Found!6274) lt!274452)) (and (bvsge (index!27356 lt!274452) #b00000000000000000000000000000000) (bvslt (index!27356 lt!274452) (size!18191 lt!274373)))) (or ((_ is Undefined!6274) lt!274452) ((_ is Found!6274) lt!274452) (not ((_ is MissingVacant!6274) lt!274452)) (not (= (index!27358 lt!274452) vacantSpotIndex!68)) (and (bvsge (index!27358 lt!274452) #b00000000000000000000000000000000) (bvslt (index!27358 lt!274452) (size!18191 lt!274373)))) (or ((_ is Undefined!6274) lt!274452) (ite ((_ is Found!6274) lt!274452) (= (select (arr!17827 lt!274373) (index!27356 lt!274452)) lt!274369) (and ((_ is MissingVacant!6274) lt!274452) (= (index!27358 lt!274452) vacantSpotIndex!68) (= (select (arr!17827 lt!274373) (index!27358 lt!274452)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!344545 () SeekEntryResult!6274)

(assert (=> d!87167 (= lt!274452 e!344545)))

(declare-fun c!68102 () Bool)

(assert (=> d!87167 (= c!68102 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!274451 () (_ BitVec 64))

(assert (=> d!87167 (= lt!274451 (select (arr!17827 lt!274373) index!984))))

(assert (=> d!87167 (validMask!0 mask!3053)))

(assert (=> d!87167 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274369 lt!274373 mask!3053) lt!274452)))

(declare-fun b!602404 () Bool)

(assert (=> b!602404 (= e!344545 Undefined!6274)))

(declare-fun b!602405 () Bool)

(declare-fun c!68100 () Bool)

(assert (=> b!602405 (= c!68100 (= lt!274451 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!344546 () SeekEntryResult!6274)

(declare-fun e!344544 () SeekEntryResult!6274)

(assert (=> b!602405 (= e!344546 e!344544)))

(declare-fun b!602406 () Bool)

(assert (=> b!602406 (= e!344544 (MissingVacant!6274 vacantSpotIndex!68))))

(declare-fun b!602407 () Bool)

(assert (=> b!602407 (= e!344546 (Found!6274 index!984))))

(declare-fun b!602408 () Bool)

(assert (=> b!602408 (= e!344545 e!344546)))

(declare-fun c!68101 () Bool)

(assert (=> b!602408 (= c!68101 (= lt!274451 lt!274369))))

(declare-fun b!602409 () Bool)

(assert (=> b!602409 (= e!344544 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!274369 lt!274373 mask!3053))))

(assert (= (and d!87167 c!68102) b!602404))

(assert (= (and d!87167 (not c!68102)) b!602408))

(assert (= (and b!602408 c!68101) b!602407))

(assert (= (and b!602408 (not c!68101)) b!602405))

(assert (= (and b!602405 c!68100) b!602406))

(assert (= (and b!602405 (not c!68100)) b!602409))

(declare-fun m!579567 () Bool)

(assert (=> d!87167 m!579567))

(declare-fun m!579569 () Bool)

(assert (=> d!87167 m!579569))

(assert (=> d!87167 m!579527))

(assert (=> d!87167 m!579453))

(assert (=> b!602409 m!579415))

(assert (=> b!602409 m!579415))

(declare-fun m!579571 () Bool)

(assert (=> b!602409 m!579571))

(assert (=> b!602246 d!87167))

(declare-fun lt!274454 () SeekEntryResult!6274)

(declare-fun d!87173 () Bool)

(assert (=> d!87173 (and (or ((_ is Undefined!6274) lt!274454) (not ((_ is Found!6274) lt!274454)) (and (bvsge (index!27356 lt!274454) #b00000000000000000000000000000000) (bvslt (index!27356 lt!274454) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274454) ((_ is Found!6274) lt!274454) (not ((_ is MissingVacant!6274) lt!274454)) (not (= (index!27358 lt!274454) vacantSpotIndex!68)) (and (bvsge (index!27358 lt!274454) #b00000000000000000000000000000000) (bvslt (index!27358 lt!274454) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274454) (ite ((_ is Found!6274) lt!274454) (= (select (arr!17827 a!2986) (index!27356 lt!274454)) (select (arr!17827 a!2986) j!136)) (and ((_ is MissingVacant!6274) lt!274454) (= (index!27358 lt!274454) vacantSpotIndex!68) (= (select (arr!17827 a!2986) (index!27358 lt!274454)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!344548 () SeekEntryResult!6274)

(assert (=> d!87173 (= lt!274454 e!344548)))

(declare-fun c!68105 () Bool)

(assert (=> d!87173 (= c!68105 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!274453 () (_ BitVec 64))

(assert (=> d!87173 (= lt!274453 (select (arr!17827 a!2986) lt!274374))))

(assert (=> d!87173 (validMask!0 mask!3053)))

(assert (=> d!87173 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053) lt!274454)))

(declare-fun b!602410 () Bool)

(assert (=> b!602410 (= e!344548 Undefined!6274)))

(declare-fun b!602411 () Bool)

(declare-fun c!68103 () Bool)

(assert (=> b!602411 (= c!68103 (= lt!274453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!344549 () SeekEntryResult!6274)

(declare-fun e!344547 () SeekEntryResult!6274)

(assert (=> b!602411 (= e!344549 e!344547)))

(declare-fun b!602412 () Bool)

(assert (=> b!602412 (= e!344547 (MissingVacant!6274 vacantSpotIndex!68))))

(declare-fun b!602413 () Bool)

(assert (=> b!602413 (= e!344549 (Found!6274 lt!274374))))

(declare-fun b!602414 () Bool)

(assert (=> b!602414 (= e!344548 e!344549)))

(declare-fun c!68104 () Bool)

(assert (=> b!602414 (= c!68104 (= lt!274453 (select (arr!17827 a!2986) j!136)))))

(declare-fun b!602415 () Bool)

(assert (=> b!602415 (= e!344547 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!274374 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87173 c!68105) b!602410))

(assert (= (and d!87173 (not c!68105)) b!602414))

(assert (= (and b!602414 c!68104) b!602413))

(assert (= (and b!602414 (not c!68104)) b!602411))

(assert (= (and b!602411 c!68103) b!602412))

(assert (= (and b!602411 (not c!68103)) b!602415))

(declare-fun m!579573 () Bool)

(assert (=> d!87173 m!579573))

(declare-fun m!579575 () Bool)

(assert (=> d!87173 m!579575))

(declare-fun m!579577 () Bool)

(assert (=> d!87173 m!579577))

(assert (=> d!87173 m!579453))

(declare-fun m!579579 () Bool)

(assert (=> b!602415 m!579579))

(assert (=> b!602415 m!579579))

(assert (=> b!602415 m!579401))

(declare-fun m!579581 () Bool)

(assert (=> b!602415 m!579581))

(assert (=> b!602246 d!87173))

(declare-fun lt!274456 () SeekEntryResult!6274)

(declare-fun d!87175 () Bool)

(assert (=> d!87175 (and (or ((_ is Undefined!6274) lt!274456) (not ((_ is Found!6274) lt!274456)) (and (bvsge (index!27356 lt!274456) #b00000000000000000000000000000000) (bvslt (index!27356 lt!274456) (size!18191 lt!274373)))) (or ((_ is Undefined!6274) lt!274456) ((_ is Found!6274) lt!274456) (not ((_ is MissingVacant!6274) lt!274456)) (not (= (index!27358 lt!274456) vacantSpotIndex!68)) (and (bvsge (index!27358 lt!274456) #b00000000000000000000000000000000) (bvslt (index!27358 lt!274456) (size!18191 lt!274373)))) (or ((_ is Undefined!6274) lt!274456) (ite ((_ is Found!6274) lt!274456) (= (select (arr!17827 lt!274373) (index!27356 lt!274456)) lt!274369) (and ((_ is MissingVacant!6274) lt!274456) (= (index!27358 lt!274456) vacantSpotIndex!68) (= (select (arr!17827 lt!274373) (index!27358 lt!274456)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!344551 () SeekEntryResult!6274)

(assert (=> d!87175 (= lt!274456 e!344551)))

(declare-fun c!68108 () Bool)

(assert (=> d!87175 (= c!68108 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!274455 () (_ BitVec 64))

(assert (=> d!87175 (= lt!274455 (select (arr!17827 lt!274373) lt!274374))))

(assert (=> d!87175 (validMask!0 mask!3053)))

(assert (=> d!87175 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 lt!274369 lt!274373 mask!3053) lt!274456)))

(declare-fun b!602416 () Bool)

(assert (=> b!602416 (= e!344551 Undefined!6274)))

(declare-fun b!602417 () Bool)

(declare-fun c!68106 () Bool)

(assert (=> b!602417 (= c!68106 (= lt!274455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!344552 () SeekEntryResult!6274)

(declare-fun e!344550 () SeekEntryResult!6274)

(assert (=> b!602417 (= e!344552 e!344550)))

(declare-fun b!602418 () Bool)

(assert (=> b!602418 (= e!344550 (MissingVacant!6274 vacantSpotIndex!68))))

(declare-fun b!602419 () Bool)

(assert (=> b!602419 (= e!344552 (Found!6274 lt!274374))))

(declare-fun b!602420 () Bool)

(assert (=> b!602420 (= e!344551 e!344552)))

(declare-fun c!68107 () Bool)

(assert (=> b!602420 (= c!68107 (= lt!274455 lt!274369))))

(declare-fun b!602421 () Bool)

(assert (=> b!602421 (= e!344550 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!274374 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!274369 lt!274373 mask!3053))))

(assert (= (and d!87175 c!68108) b!602416))

(assert (= (and d!87175 (not c!68108)) b!602420))

(assert (= (and b!602420 c!68107) b!602419))

(assert (= (and b!602420 (not c!68107)) b!602417))

(assert (= (and b!602417 c!68106) b!602418))

(assert (= (and b!602417 (not c!68106)) b!602421))

(declare-fun m!579583 () Bool)

(assert (=> d!87175 m!579583))

(declare-fun m!579585 () Bool)

(assert (=> d!87175 m!579585))

(declare-fun m!579587 () Bool)

(assert (=> d!87175 m!579587))

(assert (=> d!87175 m!579453))

(assert (=> b!602421 m!579579))

(assert (=> b!602421 m!579579))

(declare-fun m!579589 () Bool)

(assert (=> b!602421 m!579589))

(assert (=> b!602246 d!87175))

(declare-fun d!87177 () Bool)

(declare-fun lt!274459 () (_ BitVec 32))

(assert (=> d!87177 (and (bvsge lt!274459 #b00000000000000000000000000000000) (bvslt lt!274459 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87177 (= lt!274459 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87177 (validMask!0 mask!3053)))

(assert (=> d!87177 (= (nextIndex!0 index!984 x!910 mask!3053) lt!274459)))

(declare-fun bs!18455 () Bool)

(assert (= bs!18455 d!87177))

(declare-fun m!579591 () Bool)

(assert (=> bs!18455 m!579591))

(assert (=> bs!18455 m!579453))

(assert (=> b!602246 d!87177))

(declare-fun d!87181 () Bool)

(declare-fun e!344572 () Bool)

(assert (=> d!87181 e!344572))

(declare-fun res!386942 () Bool)

(assert (=> d!87181 (=> (not res!386942) (not e!344572))))

(assert (=> d!87181 (= res!386942 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18191 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18191 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18191 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18191 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18191 a!2986))))))

(declare-fun lt!274475 () Unit!19072)

(declare-fun choose!9 (array!37145 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19072)

(assert (=> d!87181 (= lt!274475 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87181 (validMask!0 mask!3053)))

(assert (=> d!87181 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 mask!3053) lt!274475)))

(declare-fun b!602456 () Bool)

(assert (=> b!602456 (= e!344572 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274374 vacantSpotIndex!68 (select (store (arr!17827 a!2986) i!1108 k0!1786) j!136) (array!37146 (store (arr!17827 a!2986) i!1108 k0!1786) (size!18191 a!2986)) mask!3053)))))

(assert (= (and d!87181 res!386942) b!602456))

(declare-fun m!579609 () Bool)

(assert (=> d!87181 m!579609))

(assert (=> d!87181 m!579453))

(assert (=> b!602456 m!579407))

(assert (=> b!602456 m!579417))

(declare-fun m!579611 () Bool)

(assert (=> b!602456 m!579611))

(assert (=> b!602456 m!579417))

(assert (=> b!602456 m!579401))

(assert (=> b!602456 m!579423))

(assert (=> b!602456 m!579401))

(assert (=> b!602246 d!87181))

(declare-fun d!87187 () Bool)

(assert (=> d!87187 (arrayNoDuplicates!0 lt!274373 j!136 Nil!11918)))

(declare-fun lt!274480 () Unit!19072)

(declare-fun choose!39 (array!37145 (_ BitVec 32) (_ BitVec 32)) Unit!19072)

(assert (=> d!87187 (= lt!274480 (choose!39 lt!274373 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87187 (bvslt (size!18191 lt!274373) #b01111111111111111111111111111111)))

(assert (=> d!87187 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!274373 #b00000000000000000000000000000000 j!136) lt!274480)))

(declare-fun bs!18456 () Bool)

(assert (= bs!18456 d!87187))

(assert (=> bs!18456 m!579445))

(declare-fun m!579619 () Bool)

(assert (=> bs!18456 m!579619))

(assert (=> b!602234 d!87187))

(declare-fun d!87193 () Bool)

(assert (=> d!87193 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274483 () Unit!19072)

(declare-fun choose!114 (array!37145 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19072)

(assert (=> d!87193 (= lt!274483 (choose!114 lt!274373 (select (arr!17827 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87193 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87193 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274373 (select (arr!17827 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!274483)))

(declare-fun bs!18457 () Bool)

(assert (= bs!18457 d!87193))

(assert (=> bs!18457 m!579401))

(assert (=> bs!18457 m!579439))

(assert (=> bs!18457 m!579401))

(declare-fun m!579621 () Bool)

(assert (=> bs!18457 m!579621))

(assert (=> b!602234 d!87193))

(declare-fun d!87195 () Bool)

(declare-fun res!386958 () Bool)

(declare-fun e!344596 () Bool)

(assert (=> d!87195 (=> res!386958 e!344596)))

(assert (=> d!87195 (= res!386958 (= (select (arr!17827 lt!274373) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17827 a!2986) j!136)))))

(assert (=> d!87195 (= (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!344596)))

(declare-fun b!602488 () Bool)

(declare-fun e!344597 () Bool)

(assert (=> b!602488 (= e!344596 e!344597)))

(declare-fun res!386959 () Bool)

(assert (=> b!602488 (=> (not res!386959) (not e!344597))))

(assert (=> b!602488 (= res!386959 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18191 lt!274373)))))

(declare-fun b!602489 () Bool)

(assert (=> b!602489 (= e!344597 (arrayContainsKey!0 lt!274373 (select (arr!17827 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87195 (not res!386958)) b!602488))

(assert (= (and b!602488 res!386959) b!602489))

(declare-fun m!579625 () Bool)

(assert (=> d!87195 m!579625))

(assert (=> b!602489 m!579401))

(declare-fun m!579629 () Bool)

(assert (=> b!602489 m!579629))

(assert (=> b!602234 d!87195))

(declare-fun d!87197 () Bool)

(assert (=> d!87197 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18191 lt!274373)) (not (= (select (arr!17827 lt!274373) j!136) (select (arr!17827 a!2986) j!136))))))

(declare-fun lt!274489 () Unit!19072)

(declare-fun choose!21 (array!37145 (_ BitVec 64) (_ BitVec 32) List!11921) Unit!19072)

(assert (=> d!87197 (= lt!274489 (choose!21 lt!274373 (select (arr!17827 a!2986) j!136) j!136 Nil!11918))))

(assert (=> d!87197 (bvslt (size!18191 lt!274373) #b01111111111111111111111111111111)))

(assert (=> d!87197 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274373 (select (arr!17827 a!2986) j!136) j!136 Nil!11918) lt!274489)))

(declare-fun bs!18459 () Bool)

(assert (= bs!18459 d!87197))

(assert (=> bs!18459 m!579519))

(assert (=> bs!18459 m!579401))

(declare-fun m!579649 () Bool)

(assert (=> bs!18459 m!579649))

(assert (=> b!602234 d!87197))

(declare-fun b!602502 () Bool)

(declare-fun e!344609 () Bool)

(declare-fun call!33001 () Bool)

(assert (=> b!602502 (= e!344609 call!33001)))

(declare-fun b!602503 () Bool)

(declare-fun e!344610 () Bool)

(declare-fun e!344611 () Bool)

(assert (=> b!602503 (= e!344610 e!344611)))

(declare-fun res!386969 () Bool)

(assert (=> b!602503 (=> (not res!386969) (not e!344611))))

(declare-fun e!344608 () Bool)

(assert (=> b!602503 (= res!386969 (not e!344608))))

(declare-fun res!386968 () Bool)

(assert (=> b!602503 (=> (not res!386968) (not e!344608))))

(assert (=> b!602503 (= res!386968 (validKeyInArray!0 (select (arr!17827 lt!274373) j!136)))))

(declare-fun b!602504 () Bool)

(assert (=> b!602504 (= e!344611 e!344609)))

(declare-fun c!68134 () Bool)

(assert (=> b!602504 (= c!68134 (validKeyInArray!0 (select (arr!17827 lt!274373) j!136)))))

(declare-fun b!602505 () Bool)

(assert (=> b!602505 (= e!344609 call!33001)))

(declare-fun b!602506 () Bool)

(assert (=> b!602506 (= e!344608 (contains!2993 Nil!11918 (select (arr!17827 lt!274373) j!136)))))

(declare-fun d!87207 () Bool)

(declare-fun res!386970 () Bool)

(assert (=> d!87207 (=> res!386970 e!344610)))

(assert (=> d!87207 (= res!386970 (bvsge j!136 (size!18191 lt!274373)))))

(assert (=> d!87207 (= (arrayNoDuplicates!0 lt!274373 j!136 Nil!11918) e!344610)))

(declare-fun bm!32998 () Bool)

(assert (=> bm!32998 (= call!33001 (arrayNoDuplicates!0 lt!274373 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68134 (Cons!11917 (select (arr!17827 lt!274373) j!136) Nil!11918) Nil!11918)))))

(assert (= (and d!87207 (not res!386970)) b!602503))

(assert (= (and b!602503 res!386968) b!602506))

(assert (= (and b!602503 res!386969) b!602504))

(assert (= (and b!602504 c!68134) b!602502))

(assert (= (and b!602504 (not c!68134)) b!602505))

(assert (= (or b!602502 b!602505) bm!32998))

(assert (=> b!602503 m!579519))

(assert (=> b!602503 m!579519))

(declare-fun m!579657 () Bool)

(assert (=> b!602503 m!579657))

(assert (=> b!602504 m!579519))

(assert (=> b!602504 m!579519))

(assert (=> b!602504 m!579657))

(assert (=> b!602506 m!579519))

(assert (=> b!602506 m!579519))

(declare-fun m!579659 () Bool)

(assert (=> b!602506 m!579659))

(assert (=> bm!32998 m!579519))

(declare-fun m!579661 () Bool)

(assert (=> bm!32998 m!579661))

(assert (=> b!602234 d!87207))

(declare-fun d!87211 () Bool)

(declare-fun e!344620 () Bool)

(assert (=> d!87211 e!344620))

(declare-fun res!386979 () Bool)

(assert (=> d!87211 (=> (not res!386979) (not e!344620))))

(assert (=> d!87211 (= res!386979 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18191 a!2986))))))

(declare-fun lt!274500 () Unit!19072)

(declare-fun choose!41 (array!37145 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11921) Unit!19072)

(assert (=> d!87211 (= lt!274500 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11918))))

(assert (=> d!87211 (bvslt (size!18191 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87211 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11918) lt!274500)))

(declare-fun b!602515 () Bool)

(assert (=> b!602515 (= e!344620 (arrayNoDuplicates!0 (array!37146 (store (arr!17827 a!2986) i!1108 k0!1786) (size!18191 a!2986)) #b00000000000000000000000000000000 Nil!11918))))

(assert (= (and d!87211 res!386979) b!602515))

(declare-fun m!579673 () Bool)

(assert (=> d!87211 m!579673))

(assert (=> b!602515 m!579407))

(declare-fun m!579675 () Bool)

(assert (=> b!602515 m!579675))

(assert (=> b!602234 d!87211))

(declare-fun b!602521 () Bool)

(declare-fun e!344626 () Bool)

(declare-fun call!33003 () Bool)

(assert (=> b!602521 (= e!344626 call!33003)))

(declare-fun b!602522 () Bool)

(declare-fun e!344627 () Bool)

(declare-fun e!344628 () Bool)

(assert (=> b!602522 (= e!344627 e!344628)))

(declare-fun res!386984 () Bool)

(assert (=> b!602522 (=> (not res!386984) (not e!344628))))

(declare-fun e!344625 () Bool)

(assert (=> b!602522 (= res!386984 (not e!344625))))

(declare-fun res!386983 () Bool)

(assert (=> b!602522 (=> (not res!386983) (not e!344625))))

(assert (=> b!602522 (= res!386983 (validKeyInArray!0 (select (arr!17827 lt!274373) #b00000000000000000000000000000000)))))

(declare-fun b!602523 () Bool)

(assert (=> b!602523 (= e!344628 e!344626)))

(declare-fun c!68136 () Bool)

(assert (=> b!602523 (= c!68136 (validKeyInArray!0 (select (arr!17827 lt!274373) #b00000000000000000000000000000000)))))

(declare-fun b!602524 () Bool)

(assert (=> b!602524 (= e!344626 call!33003)))

(declare-fun b!602525 () Bool)

(assert (=> b!602525 (= e!344625 (contains!2993 Nil!11918 (select (arr!17827 lt!274373) #b00000000000000000000000000000000)))))

(declare-fun d!87219 () Bool)

(declare-fun res!386985 () Bool)

(assert (=> d!87219 (=> res!386985 e!344627)))

(assert (=> d!87219 (= res!386985 (bvsge #b00000000000000000000000000000000 (size!18191 lt!274373)))))

(assert (=> d!87219 (= (arrayNoDuplicates!0 lt!274373 #b00000000000000000000000000000000 Nil!11918) e!344627)))

(declare-fun bm!33000 () Bool)

(assert (=> bm!33000 (= call!33003 (arrayNoDuplicates!0 lt!274373 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68136 (Cons!11917 (select (arr!17827 lt!274373) #b00000000000000000000000000000000) Nil!11918) Nil!11918)))))

(assert (= (and d!87219 (not res!386985)) b!602522))

(assert (= (and b!602522 res!386983) b!602525))

(assert (= (and b!602522 res!386984) b!602523))

(assert (= (and b!602523 c!68136) b!602521))

(assert (= (and b!602523 (not c!68136)) b!602524))

(assert (= (or b!602521 b!602524) bm!33000))

(declare-fun m!579685 () Bool)

(assert (=> b!602522 m!579685))

(assert (=> b!602522 m!579685))

(declare-fun m!579687 () Bool)

(assert (=> b!602522 m!579687))

(assert (=> b!602523 m!579685))

(assert (=> b!602523 m!579685))

(assert (=> b!602523 m!579687))

(assert (=> b!602525 m!579685))

(assert (=> b!602525 m!579685))

(declare-fun m!579689 () Bool)

(assert (=> b!602525 m!579689))

(assert (=> bm!33000 m!579685))

(declare-fun m!579691 () Bool)

(assert (=> bm!33000 m!579691))

(assert (=> b!602234 d!87219))

(declare-fun d!87225 () Bool)

(assert (=> d!87225 (= (validKeyInArray!0 (select (arr!17827 a!2986) j!136)) (and (not (= (select (arr!17827 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17827 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!602249 d!87225))

(declare-fun d!87227 () Bool)

(declare-fun lt!274526 () SeekEntryResult!6274)

(assert (=> d!87227 (and (or ((_ is Undefined!6274) lt!274526) (not ((_ is Found!6274) lt!274526)) (and (bvsge (index!27356 lt!274526) #b00000000000000000000000000000000) (bvslt (index!27356 lt!274526) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274526) ((_ is Found!6274) lt!274526) (not ((_ is MissingZero!6274) lt!274526)) (and (bvsge (index!27355 lt!274526) #b00000000000000000000000000000000) (bvslt (index!27355 lt!274526) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274526) ((_ is Found!6274) lt!274526) ((_ is MissingZero!6274) lt!274526) (not ((_ is MissingVacant!6274) lt!274526)) (and (bvsge (index!27358 lt!274526) #b00000000000000000000000000000000) (bvslt (index!27358 lt!274526) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274526) (ite ((_ is Found!6274) lt!274526) (= (select (arr!17827 a!2986) (index!27356 lt!274526)) k0!1786) (ite ((_ is MissingZero!6274) lt!274526) (= (select (arr!17827 a!2986) (index!27355 lt!274526)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6274) lt!274526) (= (select (arr!17827 a!2986) (index!27358 lt!274526)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!344660 () SeekEntryResult!6274)

(assert (=> d!87227 (= lt!274526 e!344660)))

(declare-fun c!68150 () Bool)

(declare-fun lt!274525 () SeekEntryResult!6274)

(assert (=> d!87227 (= c!68150 (and ((_ is Intermediate!6274) lt!274525) (undefined!7086 lt!274525)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37145 (_ BitVec 32)) SeekEntryResult!6274)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87227 (= lt!274525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87227 (validMask!0 mask!3053)))

(assert (=> d!87227 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!274526)))

(declare-fun b!602567 () Bool)

(assert (=> b!602567 (= e!344660 Undefined!6274)))

(declare-fun b!602568 () Bool)

(declare-fun e!344659 () SeekEntryResult!6274)

(assert (=> b!602568 (= e!344659 (Found!6274 (index!27357 lt!274525)))))

(declare-fun b!602569 () Bool)

(declare-fun e!344661 () SeekEntryResult!6274)

(assert (=> b!602569 (= e!344661 (MissingZero!6274 (index!27357 lt!274525)))))

(declare-fun b!602570 () Bool)

(declare-fun c!68149 () Bool)

(declare-fun lt!274527 () (_ BitVec 64))

(assert (=> b!602570 (= c!68149 (= lt!274527 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602570 (= e!344659 e!344661)))

(declare-fun b!602571 () Bool)

(assert (=> b!602571 (= e!344661 (seekKeyOrZeroReturnVacant!0 (x!56179 lt!274525) (index!27357 lt!274525) (index!27357 lt!274525) k0!1786 a!2986 mask!3053))))

(declare-fun b!602572 () Bool)

(assert (=> b!602572 (= e!344660 e!344659)))

(assert (=> b!602572 (= lt!274527 (select (arr!17827 a!2986) (index!27357 lt!274525)))))

(declare-fun c!68148 () Bool)

(assert (=> b!602572 (= c!68148 (= lt!274527 k0!1786))))

(assert (= (and d!87227 c!68150) b!602567))

(assert (= (and d!87227 (not c!68150)) b!602572))

(assert (= (and b!602572 c!68148) b!602568))

(assert (= (and b!602572 (not c!68148)) b!602570))

(assert (= (and b!602570 c!68149) b!602569))

(assert (= (and b!602570 (not c!68149)) b!602571))

(declare-fun m!579735 () Bool)

(assert (=> d!87227 m!579735))

(declare-fun m!579737 () Bool)

(assert (=> d!87227 m!579737))

(assert (=> d!87227 m!579735))

(declare-fun m!579739 () Bool)

(assert (=> d!87227 m!579739))

(declare-fun m!579741 () Bool)

(assert (=> d!87227 m!579741))

(assert (=> d!87227 m!579453))

(declare-fun m!579743 () Bool)

(assert (=> d!87227 m!579743))

(declare-fun m!579745 () Bool)

(assert (=> b!602571 m!579745))

(declare-fun m!579747 () Bool)

(assert (=> b!602572 m!579747))

(assert (=> b!602238 d!87227))

(declare-fun d!87251 () Bool)

(declare-fun lt!274532 () SeekEntryResult!6274)

(assert (=> d!87251 (and (or ((_ is Undefined!6274) lt!274532) (not ((_ is Found!6274) lt!274532)) (and (bvsge (index!27356 lt!274532) #b00000000000000000000000000000000) (bvslt (index!27356 lt!274532) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274532) ((_ is Found!6274) lt!274532) (not ((_ is MissingVacant!6274) lt!274532)) (not (= (index!27358 lt!274532) vacantSpotIndex!68)) (and (bvsge (index!27358 lt!274532) #b00000000000000000000000000000000) (bvslt (index!27358 lt!274532) (size!18191 a!2986)))) (or ((_ is Undefined!6274) lt!274532) (ite ((_ is Found!6274) lt!274532) (= (select (arr!17827 a!2986) (index!27356 lt!274532)) (select (arr!17827 a!2986) j!136)) (and ((_ is MissingVacant!6274) lt!274532) (= (index!27358 lt!274532) vacantSpotIndex!68) (= (select (arr!17827 a!2986) (index!27358 lt!274532)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!344663 () SeekEntryResult!6274)

(assert (=> d!87251 (= lt!274532 e!344663)))

(declare-fun c!68153 () Bool)

(assert (=> d!87251 (= c!68153 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!274531 () (_ BitVec 64))

(assert (=> d!87251 (= lt!274531 (select (arr!17827 a!2986) index!984))))

(assert (=> d!87251 (validMask!0 mask!3053)))

(assert (=> d!87251 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053) lt!274532)))

(declare-fun b!602573 () Bool)

(assert (=> b!602573 (= e!344663 Undefined!6274)))

(declare-fun b!602574 () Bool)

(declare-fun c!68151 () Bool)

(assert (=> b!602574 (= c!68151 (= lt!274531 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!344664 () SeekEntryResult!6274)

(declare-fun e!344662 () SeekEntryResult!6274)

(assert (=> b!602574 (= e!344664 e!344662)))

(declare-fun b!602575 () Bool)

(assert (=> b!602575 (= e!344662 (MissingVacant!6274 vacantSpotIndex!68))))

(declare-fun b!602576 () Bool)

(assert (=> b!602576 (= e!344664 (Found!6274 index!984))))

(declare-fun b!602577 () Bool)

(assert (=> b!602577 (= e!344663 e!344664)))

(declare-fun c!68152 () Bool)

(assert (=> b!602577 (= c!68152 (= lt!274531 (select (arr!17827 a!2986) j!136)))))

(declare-fun b!602578 () Bool)

(assert (=> b!602578 (= e!344662 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17827 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87251 c!68153) b!602573))

(assert (= (and d!87251 (not c!68153)) b!602577))

(assert (= (and b!602577 c!68152) b!602576))

(assert (= (and b!602577 (not c!68152)) b!602574))

(assert (= (and b!602574 c!68151) b!602575))

(assert (= (and b!602574 (not c!68151)) b!602578))

(declare-fun m!579751 () Bool)

(assert (=> d!87251 m!579751))

(declare-fun m!579753 () Bool)

(assert (=> d!87251 m!579753))

(assert (=> d!87251 m!579429))

(assert (=> d!87251 m!579453))

(assert (=> b!602578 m!579415))

(assert (=> b!602578 m!579415))

(assert (=> b!602578 m!579401))

(declare-fun m!579757 () Bool)

(assert (=> b!602578 m!579757))

(assert (=> b!602248 d!87251))

(declare-fun d!87255 () Bool)

(assert (=> d!87255 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!602247 d!87255))

(check-sat (not b!602324) (not b!602456) (not d!87187) (not b!602578) (not b!602522) (not b!602515) (not b!602415) (not b!602525) (not d!87197) (not b!602358) (not b!602503) (not d!87211) (not bm!32998) (not d!87227) (not b!602343) (not d!87251) (not bm!33000) (not b!602326) (not d!87193) (not b!602489) (not b!602523) (not bm!32987) (not d!87175) (not b!602409) (not bm!32984) (not b!602340) (not d!87177) (not d!87173) (not b!602504) (not b!602341) (not d!87181) (not b!602328) (not b!602361) (not d!87167) (not b!602421) (not b!602506) (not b!602571))
(check-sat)
