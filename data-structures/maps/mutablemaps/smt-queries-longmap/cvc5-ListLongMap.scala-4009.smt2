; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54534 () Bool)

(assert start!54534)

(declare-fun b!595282 () Bool)

(declare-fun res!381344 () Bool)

(declare-fun e!340115 () Bool)

(assert (=> b!595282 (=> (not res!381344) (not e!340115))))

(declare-datatypes ((array!36957 0))(
  ( (array!36958 (arr!17739 (Array (_ BitVec 32) (_ BitVec 64))) (size!18103 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36957)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36957 (_ BitVec 32)) Bool)

(assert (=> b!595282 (= res!381344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595283 () Bool)

(declare-fun res!381338 () Bool)

(declare-fun e!340114 () Bool)

(assert (=> b!595283 (=> res!381338 e!340114)))

(declare-datatypes ((List!11833 0))(
  ( (Nil!11830) (Cons!11829 (h!12874 (_ BitVec 64)) (t!18069 List!11833)) )
))
(declare-fun noDuplicate!253 (List!11833) Bool)

(assert (=> b!595283 (= res!381338 (not (noDuplicate!253 Nil!11830)))))

(declare-fun b!595284 () Bool)

(declare-fun res!381339 () Bool)

(assert (=> b!595284 (=> (not res!381339) (not e!340115))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595284 (= res!381339 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17739 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595285 () Bool)

(declare-fun res!381342 () Bool)

(declare-fun e!340123 () Bool)

(assert (=> b!595285 (=> (not res!381342) (not e!340123))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595285 (= res!381342 (validKeyInArray!0 k!1786))))

(declare-fun b!595286 () Bool)

(declare-fun res!381337 () Bool)

(assert (=> b!595286 (=> res!381337 e!340114)))

(declare-fun contains!2937 (List!11833 (_ BitVec 64)) Bool)

(assert (=> b!595286 (= res!381337 (contains!2937 Nil!11830 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595288 () Bool)

(declare-fun e!340126 () Bool)

(declare-fun e!340116 () Bool)

(assert (=> b!595288 (= e!340126 e!340116)))

(declare-fun res!381350 () Bool)

(assert (=> b!595288 (=> (not res!381350) (not e!340116))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6186 0))(
  ( (MissingZero!6186 (index!26991 (_ BitVec 32))) (Found!6186 (index!26992 (_ BitVec 32))) (Intermediate!6186 (undefined!6998 Bool) (index!26993 (_ BitVec 32)) (x!55823 (_ BitVec 32))) (Undefined!6186) (MissingVacant!6186 (index!26994 (_ BitVec 32))) )
))
(declare-fun lt!270355 () SeekEntryResult!6186)

(assert (=> b!595288 (= res!381350 (and (= lt!270355 (Found!6186 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17739 a!2986) index!984) (select (arr!17739 a!2986) j!136))) (not (= (select (arr!17739 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36957 (_ BitVec 32)) SeekEntryResult!6186)

(assert (=> b!595288 (= lt!270355 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17739 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595289 () Bool)

(declare-fun e!340119 () Bool)

(declare-fun lt!270351 () SeekEntryResult!6186)

(assert (=> b!595289 (= e!340119 (= lt!270355 lt!270351))))

(declare-fun b!595290 () Bool)

(declare-datatypes ((Unit!18688 0))(
  ( (Unit!18689) )
))
(declare-fun e!340118 () Unit!18688)

(declare-fun Unit!18690 () Unit!18688)

(assert (=> b!595290 (= e!340118 Unit!18690)))

(assert (=> b!595290 false))

(declare-fun b!595291 () Bool)

(assert (=> b!595291 (= e!340123 e!340115)))

(declare-fun res!381340 () Bool)

(assert (=> b!595291 (=> (not res!381340) (not e!340115))))

(declare-fun lt!270350 () SeekEntryResult!6186)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595291 (= res!381340 (or (= lt!270350 (MissingZero!6186 i!1108)) (= lt!270350 (MissingVacant!6186 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36957 (_ BitVec 32)) SeekEntryResult!6186)

(assert (=> b!595291 (= lt!270350 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595292 () Bool)

(declare-fun e!340121 () Bool)

(assert (=> b!595292 (= e!340116 (not e!340121))))

(declare-fun res!381349 () Bool)

(assert (=> b!595292 (=> res!381349 e!340121)))

(declare-fun lt!270358 () SeekEntryResult!6186)

(assert (=> b!595292 (= res!381349 (not (= lt!270358 (Found!6186 index!984))))))

(declare-fun lt!270356 () Unit!18688)

(assert (=> b!595292 (= lt!270356 e!340118)))

(declare-fun c!67343 () Bool)

(assert (=> b!595292 (= c!67343 (= lt!270358 Undefined!6186))))

(declare-fun lt!270357 () array!36957)

(declare-fun lt!270359 () (_ BitVec 64))

(assert (=> b!595292 (= lt!270358 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270359 lt!270357 mask!3053))))

(assert (=> b!595292 e!340119))

(declare-fun res!381331 () Bool)

(assert (=> b!595292 (=> (not res!381331) (not e!340119))))

(declare-fun lt!270352 () (_ BitVec 32))

(assert (=> b!595292 (= res!381331 (= lt!270351 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270352 vacantSpotIndex!68 lt!270359 lt!270357 mask!3053)))))

(assert (=> b!595292 (= lt!270351 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270352 vacantSpotIndex!68 (select (arr!17739 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595292 (= lt!270359 (select (store (arr!17739 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270349 () Unit!18688)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36957 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18688)

(assert (=> b!595292 (= lt!270349 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270352 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595292 (= lt!270352 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595293 () Bool)

(declare-fun res!381345 () Bool)

(assert (=> b!595293 (=> res!381345 e!340114)))

(assert (=> b!595293 (= res!381345 (contains!2937 Nil!11830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595294 () Bool)

(assert (=> b!595294 (= e!340115 e!340126)))

(declare-fun res!381348 () Bool)

(assert (=> b!595294 (=> (not res!381348) (not e!340126))))

(assert (=> b!595294 (= res!381348 (= (select (store (arr!17739 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595294 (= lt!270357 (array!36958 (store (arr!17739 a!2986) i!1108 k!1786) (size!18103 a!2986)))))

(declare-fun b!595295 () Bool)

(declare-fun res!381332 () Bool)

(assert (=> b!595295 (=> (not res!381332) (not e!340123))))

(assert (=> b!595295 (= res!381332 (validKeyInArray!0 (select (arr!17739 a!2986) j!136)))))

(declare-fun b!595296 () Bool)

(declare-fun e!340125 () Bool)

(declare-fun arrayContainsKey!0 (array!36957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595296 (= e!340125 (arrayContainsKey!0 lt!270357 (select (arr!17739 a!2986) j!136) index!984))))

(declare-fun b!595297 () Bool)

(declare-fun e!340122 () Bool)

(declare-fun e!340120 () Bool)

(assert (=> b!595297 (= e!340122 e!340120)))

(declare-fun res!381343 () Bool)

(assert (=> b!595297 (=> res!381343 e!340120)))

(declare-fun lt!270353 () (_ BitVec 64))

(assert (=> b!595297 (= res!381343 (or (not (= (select (arr!17739 a!2986) j!136) lt!270359)) (not (= (select (arr!17739 a!2986) j!136) lt!270353)) (bvsge j!136 index!984)))))

(declare-fun b!595298 () Bool)

(declare-fun Unit!18691 () Unit!18688)

(assert (=> b!595298 (= e!340118 Unit!18691)))

(declare-fun b!595299 () Bool)

(declare-fun res!381335 () Bool)

(assert (=> b!595299 (=> (not res!381335) (not e!340123))))

(assert (=> b!595299 (= res!381335 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595300 () Bool)

(assert (=> b!595300 (= e!340120 e!340125)))

(declare-fun res!381347 () Bool)

(assert (=> b!595300 (=> (not res!381347) (not e!340125))))

(assert (=> b!595300 (= res!381347 (arrayContainsKey!0 lt!270357 (select (arr!17739 a!2986) j!136) j!136))))

(declare-fun b!595287 () Bool)

(declare-fun res!381336 () Bool)

(assert (=> b!595287 (=> (not res!381336) (not e!340123))))

(assert (=> b!595287 (= res!381336 (and (= (size!18103 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18103 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18103 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!381334 () Bool)

(assert (=> start!54534 (=> (not res!381334) (not e!340123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54534 (= res!381334 (validMask!0 mask!3053))))

(assert (=> start!54534 e!340123))

(assert (=> start!54534 true))

(declare-fun array_inv!13513 (array!36957) Bool)

(assert (=> start!54534 (array_inv!13513 a!2986)))

(declare-fun b!595301 () Bool)

(assert (=> b!595301 (= e!340114 true)))

(declare-fun lt!270360 () Bool)

(assert (=> b!595301 (= lt!270360 (contains!2937 Nil!11830 k!1786))))

(declare-fun b!595302 () Bool)

(declare-fun res!381333 () Bool)

(assert (=> b!595302 (=> (not res!381333) (not e!340115))))

(declare-fun arrayNoDuplicates!0 (array!36957 (_ BitVec 32) List!11833) Bool)

(assert (=> b!595302 (= res!381333 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11830))))

(declare-fun b!595303 () Bool)

(declare-fun e!340117 () Bool)

(assert (=> b!595303 (= e!340121 e!340117)))

(declare-fun res!381341 () Bool)

(assert (=> b!595303 (=> res!381341 e!340117)))

(assert (=> b!595303 (= res!381341 (or (not (= (select (arr!17739 a!2986) j!136) lt!270359)) (not (= (select (arr!17739 a!2986) j!136) lt!270353)) (bvsge j!136 index!984)))))

(assert (=> b!595303 e!340122))

(declare-fun res!381330 () Bool)

(assert (=> b!595303 (=> (not res!381330) (not e!340122))))

(assert (=> b!595303 (= res!381330 (= lt!270353 (select (arr!17739 a!2986) j!136)))))

(assert (=> b!595303 (= lt!270353 (select (store (arr!17739 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595304 () Bool)

(assert (=> b!595304 (= e!340117 e!340114)))

(declare-fun res!381346 () Bool)

(assert (=> b!595304 (=> res!381346 e!340114)))

(assert (=> b!595304 (= res!381346 (or (bvsge (size!18103 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18103 a!2986))))))

(assert (=> b!595304 (arrayContainsKey!0 lt!270357 (select (arr!17739 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270354 () Unit!18688)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36957 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18688)

(assert (=> b!595304 (= lt!270354 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270357 (select (arr!17739 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!54534 res!381334) b!595287))

(assert (= (and b!595287 res!381336) b!595295))

(assert (= (and b!595295 res!381332) b!595285))

(assert (= (and b!595285 res!381342) b!595299))

(assert (= (and b!595299 res!381335) b!595291))

(assert (= (and b!595291 res!381340) b!595282))

(assert (= (and b!595282 res!381344) b!595302))

(assert (= (and b!595302 res!381333) b!595284))

(assert (= (and b!595284 res!381339) b!595294))

(assert (= (and b!595294 res!381348) b!595288))

(assert (= (and b!595288 res!381350) b!595292))

(assert (= (and b!595292 res!381331) b!595289))

(assert (= (and b!595292 c!67343) b!595290))

(assert (= (and b!595292 (not c!67343)) b!595298))

(assert (= (and b!595292 (not res!381349)) b!595303))

(assert (= (and b!595303 res!381330) b!595297))

(assert (= (and b!595297 (not res!381343)) b!595300))

(assert (= (and b!595300 res!381347) b!595296))

(assert (= (and b!595303 (not res!381341)) b!595304))

(assert (= (and b!595304 (not res!381346)) b!595283))

(assert (= (and b!595283 (not res!381338)) b!595293))

(assert (= (and b!595293 (not res!381345)) b!595286))

(assert (= (and b!595286 (not res!381337)) b!595301))

(declare-fun m!572973 () Bool)

(assert (=> b!595303 m!572973))

(declare-fun m!572975 () Bool)

(assert (=> b!595303 m!572975))

(declare-fun m!572977 () Bool)

(assert (=> b!595303 m!572977))

(declare-fun m!572979 () Bool)

(assert (=> b!595286 m!572979))

(declare-fun m!572981 () Bool)

(assert (=> b!595301 m!572981))

(declare-fun m!572983 () Bool)

(assert (=> b!595292 m!572983))

(declare-fun m!572985 () Bool)

(assert (=> b!595292 m!572985))

(declare-fun m!572987 () Bool)

(assert (=> b!595292 m!572987))

(assert (=> b!595292 m!572973))

(assert (=> b!595292 m!572975))

(declare-fun m!572989 () Bool)

(assert (=> b!595292 m!572989))

(assert (=> b!595292 m!572973))

(declare-fun m!572991 () Bool)

(assert (=> b!595292 m!572991))

(declare-fun m!572993 () Bool)

(assert (=> b!595292 m!572993))

(declare-fun m!572995 () Bool)

(assert (=> b!595284 m!572995))

(declare-fun m!572997 () Bool)

(assert (=> b!595293 m!572997))

(declare-fun m!572999 () Bool)

(assert (=> b!595282 m!572999))

(assert (=> b!595294 m!572975))

(declare-fun m!573001 () Bool)

(assert (=> b!595294 m!573001))

(assert (=> b!595300 m!572973))

(assert (=> b!595300 m!572973))

(declare-fun m!573003 () Bool)

(assert (=> b!595300 m!573003))

(declare-fun m!573005 () Bool)

(assert (=> b!595291 m!573005))

(assert (=> b!595296 m!572973))

(assert (=> b!595296 m!572973))

(declare-fun m!573007 () Bool)

(assert (=> b!595296 m!573007))

(declare-fun m!573009 () Bool)

(assert (=> b!595302 m!573009))

(assert (=> b!595295 m!572973))

(assert (=> b!595295 m!572973))

(declare-fun m!573011 () Bool)

(assert (=> b!595295 m!573011))

(declare-fun m!573013 () Bool)

(assert (=> b!595299 m!573013))

(assert (=> b!595297 m!572973))

(declare-fun m!573015 () Bool)

(assert (=> b!595285 m!573015))

(declare-fun m!573017 () Bool)

(assert (=> b!595288 m!573017))

(assert (=> b!595288 m!572973))

(assert (=> b!595288 m!572973))

(declare-fun m!573019 () Bool)

(assert (=> b!595288 m!573019))

(declare-fun m!573021 () Bool)

(assert (=> start!54534 m!573021))

(declare-fun m!573023 () Bool)

(assert (=> start!54534 m!573023))

(assert (=> b!595304 m!572973))

(assert (=> b!595304 m!572973))

(declare-fun m!573025 () Bool)

(assert (=> b!595304 m!573025))

(assert (=> b!595304 m!572973))

(declare-fun m!573027 () Bool)

(assert (=> b!595304 m!573027))

(declare-fun m!573029 () Bool)

(assert (=> b!595283 m!573029))

(push 1)

