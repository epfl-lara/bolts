; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55264 () Bool)

(assert start!55264)

(declare-fun b!605233 () Bool)

(declare-datatypes ((Unit!19276 0))(
  ( (Unit!19277) )
))
(declare-fun e!346409 () Unit!19276)

(declare-fun Unit!19278 () Unit!19276)

(assert (=> b!605233 (= e!346409 Unit!19278)))

(assert (=> b!605233 false))

(declare-fun b!605234 () Bool)

(declare-fun res!389015 () Bool)

(declare-fun e!346406 () Bool)

(assert (=> b!605234 (=> (not res!389015) (not e!346406))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37219 0))(
  ( (array!37220 (arr!17861 (Array (_ BitVec 32) (_ BitVec 64))) (size!18225 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37219)

(assert (=> b!605234 (= res!389015 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17861 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!605235 () Bool)

(declare-fun e!346408 () Bool)

(declare-fun e!346413 () Bool)

(assert (=> b!605235 (= e!346408 e!346413)))

(declare-fun res!389009 () Bool)

(assert (=> b!605235 (=> res!389009 e!346413)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!276230 () (_ BitVec 64))

(declare-fun lt!276240 () (_ BitVec 64))

(assert (=> b!605235 (= res!389009 (or (not (= (select (arr!17861 a!2986) j!136) lt!276240)) (not (= (select (arr!17861 a!2986) j!136) lt!276230))))))

(declare-fun e!346414 () Bool)

(assert (=> b!605235 e!346414))

(declare-fun res!389021 () Bool)

(assert (=> b!605235 (=> (not res!389021) (not e!346414))))

(assert (=> b!605235 (= res!389021 (= lt!276230 (select (arr!17861 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!605235 (= lt!276230 (select (store (arr!17861 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!605236 () Bool)

(declare-fun e!346410 () Bool)

(assert (=> b!605236 (= e!346406 e!346410)))

(declare-fun res!389006 () Bool)

(assert (=> b!605236 (=> (not res!389006) (not e!346410))))

(assert (=> b!605236 (= res!389006 (= (select (store (arr!17861 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!276233 () array!37219)

(assert (=> b!605236 (= lt!276233 (array!37220 (store (arr!17861 a!2986) i!1108 k!1786) (size!18225 a!2986)))))

(declare-fun e!346407 () Bool)

(declare-fun b!605237 () Bool)

(declare-fun arrayContainsKey!0 (array!37219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605237 (= e!346407 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) index!984))))

(declare-fun b!605238 () Bool)

(declare-fun res!389012 () Bool)

(declare-fun e!346404 () Bool)

(assert (=> b!605238 (=> (not res!389012) (not e!346404))))

(assert (=> b!605238 (= res!389012 (and (= (size!18225 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18225 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18225 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!605239 () Bool)

(declare-fun e!346411 () Bool)

(assert (=> b!605239 (= e!346411 e!346407)))

(declare-fun res!389011 () Bool)

(assert (=> b!605239 (=> (not res!389011) (not e!346407))))

(assert (=> b!605239 (= res!389011 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) j!136))))

(declare-fun b!605240 () Bool)

(declare-fun res!389013 () Bool)

(assert (=> b!605240 (=> (not res!389013) (not e!346404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605240 (= res!389013 (validKeyInArray!0 (select (arr!17861 a!2986) j!136)))))

(declare-fun e!346417 () Bool)

(declare-fun b!605241 () Bool)

(assert (=> b!605241 (= e!346417 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) index!984))))

(declare-fun b!605242 () Bool)

(declare-fun res!389016 () Bool)

(assert (=> b!605242 (=> (not res!389016) (not e!346406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37219 (_ BitVec 32)) Bool)

(assert (=> b!605242 (= res!389016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605243 () Bool)

(assert (=> b!605243 (= e!346414 e!346411)))

(declare-fun res!389008 () Bool)

(assert (=> b!605243 (=> res!389008 e!346411)))

(assert (=> b!605243 (= res!389008 (or (not (= (select (arr!17861 a!2986) j!136) lt!276240)) (not (= (select (arr!17861 a!2986) j!136) lt!276230)) (bvsge j!136 index!984)))))

(declare-fun b!605245 () Bool)

(declare-fun Unit!19279 () Unit!19276)

(assert (=> b!605245 (= e!346409 Unit!19279)))

(declare-fun b!605246 () Bool)

(declare-fun e!346412 () Unit!19276)

(declare-fun Unit!19280 () Unit!19276)

(assert (=> b!605246 (= e!346412 Unit!19280)))

(declare-fun lt!276228 () Unit!19276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37219 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19276)

(assert (=> b!605246 (= lt!276228 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276233 (select (arr!17861 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!605246 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276237 () Unit!19276)

(declare-datatypes ((List!11955 0))(
  ( (Nil!11952) (Cons!11951 (h!12996 (_ BitVec 64)) (t!18191 List!11955)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37219 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11955) Unit!19276)

(assert (=> b!605246 (= lt!276237 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11952))))

(declare-fun arrayNoDuplicates!0 (array!37219 (_ BitVec 32) List!11955) Bool)

(assert (=> b!605246 (arrayNoDuplicates!0 lt!276233 #b00000000000000000000000000000000 Nil!11952)))

(declare-fun lt!276231 () Unit!19276)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37219 (_ BitVec 32) (_ BitVec 32)) Unit!19276)

(assert (=> b!605246 (= lt!276231 (lemmaNoDuplicateFromThenFromBigger!0 lt!276233 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605246 (arrayNoDuplicates!0 lt!276233 j!136 Nil!11952)))

(declare-fun lt!276234 () Unit!19276)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37219 (_ BitVec 64) (_ BitVec 32) List!11955) Unit!19276)

(assert (=> b!605246 (= lt!276234 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276233 (select (arr!17861 a!2986) j!136) j!136 Nil!11952))))

(assert (=> b!605246 false))

(declare-fun b!605247 () Bool)

(declare-fun res!389010 () Bool)

(assert (=> b!605247 (=> (not res!389010) (not e!346406))))

(assert (=> b!605247 (= res!389010 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11952))))

(declare-fun b!605248 () Bool)

(declare-fun e!346403 () Bool)

(declare-datatypes ((SeekEntryResult!6308 0))(
  ( (MissingZero!6308 (index!27497 (_ BitVec 32))) (Found!6308 (index!27498 (_ BitVec 32))) (Intermediate!6308 (undefined!7120 Bool) (index!27499 (_ BitVec 32)) (x!56319 (_ BitVec 32))) (Undefined!6308) (MissingVacant!6308 (index!27500 (_ BitVec 32))) )
))
(declare-fun lt!276238 () SeekEntryResult!6308)

(declare-fun lt!276232 () SeekEntryResult!6308)

(assert (=> b!605248 (= e!346403 (= lt!276238 lt!276232))))

(declare-fun b!605249 () Bool)

(declare-fun e!346415 () Bool)

(assert (=> b!605249 (= e!346415 (or (bvsgt #b00000000000000000000000000000000 (size!18225 a!2986)) (bvslt (size!18225 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!605249 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276229 () Unit!19276)

(assert (=> b!605249 (= lt!276229 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276233 (select (arr!17861 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!605249 e!346417))

(declare-fun res!389017 () Bool)

(assert (=> b!605249 (=> (not res!389017) (not e!346417))))

(assert (=> b!605249 (= res!389017 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) j!136))))

(declare-fun res!389004 () Bool)

(assert (=> start!55264 (=> (not res!389004) (not e!346404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55264 (= res!389004 (validMask!0 mask!3053))))

(assert (=> start!55264 e!346404))

(assert (=> start!55264 true))

(declare-fun array_inv!13635 (array!37219) Bool)

(assert (=> start!55264 (array_inv!13635 a!2986)))

(declare-fun b!605244 () Bool)

(declare-fun e!346416 () Bool)

(assert (=> b!605244 (= e!346410 e!346416)))

(declare-fun res!389019 () Bool)

(assert (=> b!605244 (=> (not res!389019) (not e!346416))))

(assert (=> b!605244 (= res!389019 (and (= lt!276238 (Found!6308 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17861 a!2986) index!984) (select (arr!17861 a!2986) j!136))) (not (= (select (arr!17861 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37219 (_ BitVec 32)) SeekEntryResult!6308)

(assert (=> b!605244 (= lt!276238 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17861 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605250 () Bool)

(declare-fun res!389003 () Bool)

(assert (=> b!605250 (=> (not res!389003) (not e!346404))))

(assert (=> b!605250 (= res!389003 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!605251 () Bool)

(declare-fun res!389005 () Bool)

(assert (=> b!605251 (=> (not res!389005) (not e!346404))))

(assert (=> b!605251 (= res!389005 (validKeyInArray!0 k!1786))))

(declare-fun b!605252 () Bool)

(assert (=> b!605252 (= e!346416 (not e!346408))))

(declare-fun res!389018 () Bool)

(assert (=> b!605252 (=> res!389018 e!346408)))

(declare-fun lt!276243 () SeekEntryResult!6308)

(assert (=> b!605252 (= res!389018 (not (= lt!276243 (Found!6308 index!984))))))

(declare-fun lt!276235 () Unit!19276)

(assert (=> b!605252 (= lt!276235 e!346409)))

(declare-fun c!68483 () Bool)

(assert (=> b!605252 (= c!68483 (= lt!276243 Undefined!6308))))

(assert (=> b!605252 (= lt!276243 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276240 lt!276233 mask!3053))))

(assert (=> b!605252 e!346403))

(declare-fun res!389007 () Bool)

(assert (=> b!605252 (=> (not res!389007) (not e!346403))))

(declare-fun lt!276241 () (_ BitVec 32))

(assert (=> b!605252 (= res!389007 (= lt!276232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276241 vacantSpotIndex!68 lt!276240 lt!276233 mask!3053)))))

(assert (=> b!605252 (= lt!276232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276241 vacantSpotIndex!68 (select (arr!17861 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!605252 (= lt!276240 (select (store (arr!17861 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276242 () Unit!19276)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37219 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19276)

(assert (=> b!605252 (= lt!276242 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276241 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605252 (= lt!276241 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605253 () Bool)

(declare-fun Unit!19281 () Unit!19276)

(assert (=> b!605253 (= e!346412 Unit!19281)))

(declare-fun b!605254 () Bool)

(assert (=> b!605254 (= e!346413 e!346415)))

(declare-fun res!389014 () Bool)

(assert (=> b!605254 (=> res!389014 e!346415)))

(assert (=> b!605254 (= res!389014 (bvsge index!984 j!136))))

(declare-fun lt!276236 () Unit!19276)

(assert (=> b!605254 (= lt!276236 e!346412)))

(declare-fun c!68482 () Bool)

(assert (=> b!605254 (= c!68482 (bvslt j!136 index!984))))

(declare-fun b!605255 () Bool)

(assert (=> b!605255 (= e!346404 e!346406)))

(declare-fun res!389020 () Bool)

(assert (=> b!605255 (=> (not res!389020) (not e!346406))))

(declare-fun lt!276239 () SeekEntryResult!6308)

(assert (=> b!605255 (= res!389020 (or (= lt!276239 (MissingZero!6308 i!1108)) (= lt!276239 (MissingVacant!6308 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37219 (_ BitVec 32)) SeekEntryResult!6308)

(assert (=> b!605255 (= lt!276239 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!55264 res!389004) b!605238))

(assert (= (and b!605238 res!389012) b!605240))

(assert (= (and b!605240 res!389013) b!605251))

(assert (= (and b!605251 res!389005) b!605250))

(assert (= (and b!605250 res!389003) b!605255))

(assert (= (and b!605255 res!389020) b!605242))

(assert (= (and b!605242 res!389016) b!605247))

(assert (= (and b!605247 res!389010) b!605234))

(assert (= (and b!605234 res!389015) b!605236))

(assert (= (and b!605236 res!389006) b!605244))

(assert (= (and b!605244 res!389019) b!605252))

(assert (= (and b!605252 res!389007) b!605248))

(assert (= (and b!605252 c!68483) b!605233))

(assert (= (and b!605252 (not c!68483)) b!605245))

(assert (= (and b!605252 (not res!389018)) b!605235))

(assert (= (and b!605235 res!389021) b!605243))

(assert (= (and b!605243 (not res!389008)) b!605239))

(assert (= (and b!605239 res!389011) b!605237))

(assert (= (and b!605235 (not res!389009)) b!605254))

(assert (= (and b!605254 c!68482) b!605246))

(assert (= (and b!605254 (not c!68482)) b!605253))

(assert (= (and b!605254 (not res!389014)) b!605249))

(assert (= (and b!605249 res!389017) b!605241))

(declare-fun m!582137 () Bool)

(assert (=> b!605240 m!582137))

(assert (=> b!605240 m!582137))

(declare-fun m!582139 () Bool)

(assert (=> b!605240 m!582139))

(assert (=> b!605237 m!582137))

(assert (=> b!605237 m!582137))

(declare-fun m!582141 () Bool)

(assert (=> b!605237 m!582141))

(declare-fun m!582143 () Bool)

(assert (=> b!605247 m!582143))

(declare-fun m!582145 () Bool)

(assert (=> b!605252 m!582145))

(assert (=> b!605252 m!582137))

(declare-fun m!582147 () Bool)

(assert (=> b!605252 m!582147))

(declare-fun m!582149 () Bool)

(assert (=> b!605252 m!582149))

(declare-fun m!582151 () Bool)

(assert (=> b!605252 m!582151))

(assert (=> b!605252 m!582137))

(declare-fun m!582153 () Bool)

(assert (=> b!605252 m!582153))

(declare-fun m!582155 () Bool)

(assert (=> b!605252 m!582155))

(declare-fun m!582157 () Bool)

(assert (=> b!605252 m!582157))

(assert (=> b!605236 m!582151))

(declare-fun m!582159 () Bool)

(assert (=> b!605236 m!582159))

(declare-fun m!582161 () Bool)

(assert (=> b!605244 m!582161))

(assert (=> b!605244 m!582137))

(assert (=> b!605244 m!582137))

(declare-fun m!582163 () Bool)

(assert (=> b!605244 m!582163))

(assert (=> b!605239 m!582137))

(assert (=> b!605239 m!582137))

(declare-fun m!582165 () Bool)

(assert (=> b!605239 m!582165))

(declare-fun m!582167 () Bool)

(assert (=> b!605250 m!582167))

(declare-fun m!582169 () Bool)

(assert (=> start!55264 m!582169))

(declare-fun m!582171 () Bool)

(assert (=> start!55264 m!582171))

(assert (=> b!605249 m!582137))

(assert (=> b!605249 m!582137))

(declare-fun m!582173 () Bool)

(assert (=> b!605249 m!582173))

(assert (=> b!605249 m!582137))

(declare-fun m!582175 () Bool)

(assert (=> b!605249 m!582175))

(assert (=> b!605249 m!582137))

(assert (=> b!605249 m!582165))

(assert (=> b!605241 m!582137))

(assert (=> b!605241 m!582137))

(assert (=> b!605241 m!582141))

(assert (=> b!605246 m!582137))

(declare-fun m!582177 () Bool)

(assert (=> b!605246 m!582177))

(declare-fun m!582179 () Bool)

(assert (=> b!605246 m!582179))

(assert (=> b!605246 m!582137))

(declare-fun m!582181 () Bool)

(assert (=> b!605246 m!582181))

(assert (=> b!605246 m!582137))

(declare-fun m!582183 () Bool)

(assert (=> b!605246 m!582183))

(declare-fun m!582185 () Bool)

(assert (=> b!605246 m!582185))

(assert (=> b!605246 m!582137))

(declare-fun m!582187 () Bool)

(assert (=> b!605246 m!582187))

(declare-fun m!582189 () Bool)

(assert (=> b!605246 m!582189))

(declare-fun m!582191 () Bool)

(assert (=> b!605234 m!582191))

(assert (=> b!605235 m!582137))

(assert (=> b!605235 m!582151))

(declare-fun m!582193 () Bool)

(assert (=> b!605235 m!582193))

(declare-fun m!582195 () Bool)

(assert (=> b!605255 m!582195))

(assert (=> b!605243 m!582137))

(declare-fun m!582197 () Bool)

(assert (=> b!605242 m!582197))

(declare-fun m!582199 () Bool)

(assert (=> b!605251 m!582199))

(push 1)

(assert (not b!605251))

(assert (not start!55264))

(assert (not b!605247))

(assert (not b!605244))

(assert (not b!605239))

(assert (not b!605240))

(assert (not b!605237))

(assert (not b!605249))

(assert (not b!605242))

(assert (not b!605252))

(assert (not b!605246))

(assert (not b!605255))

(assert (not b!605241))

(assert (not b!605250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!605342 () Bool)

(declare-fun e!346478 () SeekEntryResult!6308)

(declare-fun lt!276276 () SeekEntryResult!6308)

(assert (=> b!605342 (= e!346478 (MissingZero!6308 (index!27499 lt!276276)))))

(declare-fun b!605343 () Bool)

(assert (=> b!605343 (= e!346478 (seekKeyOrZeroReturnVacant!0 (x!56319 lt!276276) (index!27499 lt!276276) (index!27499 lt!276276) k!1786 a!2986 mask!3053))))

(declare-fun b!605345 () Bool)

(declare-fun e!346480 () SeekEntryResult!6308)

(assert (=> b!605345 (= e!346480 (Found!6308 (index!27499 lt!276276)))))

(declare-fun b!605346 () Bool)

(declare-fun e!346479 () SeekEntryResult!6308)

(assert (=> b!605346 (= e!346479 e!346480)))

(declare-fun lt!276277 () (_ BitVec 64))

(assert (=> b!605346 (= lt!276277 (select (arr!17861 a!2986) (index!27499 lt!276276)))))

(declare-fun c!68510 () Bool)

(assert (=> b!605346 (= c!68510 (= lt!276277 k!1786))))

(declare-fun b!605347 () Bool)

(declare-fun c!68511 () Bool)

(assert (=> b!605347 (= c!68511 (= lt!276277 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605347 (= e!346480 e!346478)))

(declare-fun b!605344 () Bool)

(assert (=> b!605344 (= e!346479 Undefined!6308)))

(declare-fun d!87479 () Bool)

(declare-fun lt!276275 () SeekEntryResult!6308)

(assert (=> d!87479 (and (or (is-Undefined!6308 lt!276275) (not (is-Found!6308 lt!276275)) (and (bvsge (index!27498 lt!276275) #b00000000000000000000000000000000) (bvslt (index!27498 lt!276275) (size!18225 a!2986)))) (or (is-Undefined!6308 lt!276275) (is-Found!6308 lt!276275) (not (is-MissingZero!6308 lt!276275)) (and (bvsge (index!27497 lt!276275) #b00000000000000000000000000000000) (bvslt (index!27497 lt!276275) (size!18225 a!2986)))) (or (is-Undefined!6308 lt!276275) (is-Found!6308 lt!276275) (is-MissingZero!6308 lt!276275) (not (is-MissingVacant!6308 lt!276275)) (and (bvsge (index!27500 lt!276275) #b00000000000000000000000000000000) (bvslt (index!27500 lt!276275) (size!18225 a!2986)))) (or (is-Undefined!6308 lt!276275) (ite (is-Found!6308 lt!276275) (= (select (arr!17861 a!2986) (index!27498 lt!276275)) k!1786) (ite (is-MissingZero!6308 lt!276275) (= (select (arr!17861 a!2986) (index!27497 lt!276275)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6308 lt!276275) (= (select (arr!17861 a!2986) (index!27500 lt!276275)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87479 (= lt!276275 e!346479)))

(declare-fun c!68512 () Bool)

(assert (=> d!87479 (= c!68512 (and (is-Intermediate!6308 lt!276276) (undefined!7120 lt!276276)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37219 (_ BitVec 32)) SeekEntryResult!6308)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87479 (= lt!276276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!87479 (validMask!0 mask!3053)))

(assert (=> d!87479 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!276275)))

(assert (= (and d!87479 c!68512) b!605344))

(assert (= (and d!87479 (not c!68512)) b!605346))

(assert (= (and b!605346 c!68510) b!605345))

(assert (= (and b!605346 (not c!68510)) b!605347))

(assert (= (and b!605347 c!68511) b!605342))

(assert (= (and b!605347 (not c!68511)) b!605343))

(declare-fun m!582263 () Bool)

(assert (=> b!605343 m!582263))

(declare-fun m!582265 () Bool)

(assert (=> b!605346 m!582265))

(assert (=> d!87479 m!582169))

(declare-fun m!582267 () Bool)

(assert (=> d!87479 m!582267))

(declare-fun m!582269 () Bool)

(assert (=> d!87479 m!582269))

(declare-fun m!582271 () Bool)

(assert (=> d!87479 m!582271))

(declare-fun m!582273 () Bool)

(assert (=> d!87479 m!582273))

(assert (=> d!87479 m!582269))

(declare-fun m!582275 () Bool)

(assert (=> d!87479 m!582275))

(assert (=> b!605255 d!87479))

(declare-fun b!605406 () Bool)

(declare-fun e!346517 () SeekEntryResult!6308)

(assert (=> b!605406 (= e!346517 (Found!6308 index!984))))

(declare-fun b!605407 () Bool)

(declare-fun e!346516 () SeekEntryResult!6308)

(assert (=> b!605407 (= e!346516 e!346517)))

(declare-fun lt!276298 () (_ BitVec 64))

(declare-fun c!68537 () Bool)

(assert (=> b!605407 (= c!68537 (= lt!276298 (select (arr!17861 a!2986) j!136)))))

(declare-fun lt!276297 () SeekEntryResult!6308)

(declare-fun d!87497 () Bool)

(assert (=> d!87497 (and (or (is-Undefined!6308 lt!276297) (not (is-Found!6308 lt!276297)) (and (bvsge (index!27498 lt!276297) #b00000000000000000000000000000000) (bvslt (index!27498 lt!276297) (size!18225 a!2986)))) (or (is-Undefined!6308 lt!276297) (is-Found!6308 lt!276297) (not (is-MissingVacant!6308 lt!276297)) (not (= (index!27500 lt!276297) vacantSpotIndex!68)) (and (bvsge (index!27500 lt!276297) #b00000000000000000000000000000000) (bvslt (index!27500 lt!276297) (size!18225 a!2986)))) (or (is-Undefined!6308 lt!276297) (ite (is-Found!6308 lt!276297) (= (select (arr!17861 a!2986) (index!27498 lt!276297)) (select (arr!17861 a!2986) j!136)) (and (is-MissingVacant!6308 lt!276297) (= (index!27500 lt!276297) vacantSpotIndex!68) (= (select (arr!17861 a!2986) (index!27500 lt!276297)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87497 (= lt!276297 e!346516)))

(declare-fun c!68538 () Bool)

(assert (=> d!87497 (= c!68538 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87497 (= lt!276298 (select (arr!17861 a!2986) index!984))))

(assert (=> d!87497 (validMask!0 mask!3053)))

(assert (=> d!87497 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17861 a!2986) j!136) a!2986 mask!3053) lt!276297)))

(declare-fun b!605408 () Bool)

(declare-fun e!346518 () SeekEntryResult!6308)

(assert (=> b!605408 (= e!346518 (MissingVacant!6308 vacantSpotIndex!68))))

(declare-fun b!605409 () Bool)

(assert (=> b!605409 (= e!346516 Undefined!6308)))

(declare-fun b!605410 () Bool)

(declare-fun c!68536 () Bool)

(assert (=> b!605410 (= c!68536 (= lt!276298 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605410 (= e!346517 e!346518)))

(declare-fun b!605411 () Bool)

(assert (=> b!605411 (= e!346518 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17861 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87497 c!68538) b!605409))

(assert (= (and d!87497 (not c!68538)) b!605407))

(assert (= (and b!605407 c!68537) b!605406))

(assert (= (and b!605407 (not c!68537)) b!605410))

(assert (= (and b!605410 c!68536) b!605408))

(assert (= (and b!605410 (not c!68536)) b!605411))

(declare-fun m!582307 () Bool)

(assert (=> d!87497 m!582307))

(declare-fun m!582309 () Bool)

(assert (=> d!87497 m!582309))

(assert (=> d!87497 m!582161))

(assert (=> d!87497 m!582169))

(assert (=> b!605411 m!582145))

(assert (=> b!605411 m!582145))

(assert (=> b!605411 m!582137))

(declare-fun m!582311 () Bool)

(assert (=> b!605411 m!582311))

(assert (=> b!605244 d!87497))

(declare-fun d!87513 () Bool)

(assert (=> d!87513 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55264 d!87513))

(declare-fun d!87537 () Bool)

(assert (=> d!87537 (= (array_inv!13635 a!2986) (bvsge (size!18225 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55264 d!87537))

(declare-fun d!87539 () Bool)

(declare-fun res!389090 () Bool)

(declare-fun e!346551 () Bool)

(assert (=> d!87539 (=> res!389090 e!346551)))

(assert (=> d!87539 (= res!389090 (= (select (arr!17861 lt!276233) index!984) (select (arr!17861 a!2986) j!136)))))

(assert (=> d!87539 (= (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) index!984) e!346551)))

(declare-fun b!605454 () Bool)

(declare-fun e!346552 () Bool)

(assert (=> b!605454 (= e!346551 e!346552)))

(declare-fun res!389091 () Bool)

(assert (=> b!605454 (=> (not res!389091) (not e!346552))))

(assert (=> b!605454 (= res!389091 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18225 lt!276233)))))

(declare-fun b!605455 () Bool)

(assert (=> b!605455 (= e!346552 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87539 (not res!389090)) b!605454))

(assert (= (and b!605454 res!389091) b!605455))

(declare-fun m!582363 () Bool)

(assert (=> d!87539 m!582363))

(assert (=> b!605455 m!582137))

(declare-fun m!582365 () Bool)

(assert (=> b!605455 m!582365))

(assert (=> b!605237 d!87539))

(declare-fun b!605476 () Bool)

(declare-fun e!346567 () Bool)

(declare-fun call!33047 () Bool)

(assert (=> b!605476 (= e!346567 call!33047)))

(declare-fun b!605477 () Bool)

(assert (=> b!605477 (= e!346567 call!33047)))

(declare-fun b!605478 () Bool)

(declare-fun e!346570 () Bool)

(declare-fun e!346569 () Bool)

(assert (=> b!605478 (= e!346570 e!346569)))

(declare-fun res!389102 () Bool)

(assert (=> b!605478 (=> (not res!389102) (not e!346569))))

(declare-fun e!346568 () Bool)

(assert (=> b!605478 (= res!389102 (not e!346568))))

(declare-fun res!389100 () Bool)

(assert (=> b!605478 (=> (not res!389100) (not e!346568))))

(assert (=> b!605478 (= res!389100 (validKeyInArray!0 (select (arr!17861 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!605479 () Bool)

(declare-fun contains!3001 (List!11955 (_ BitVec 64)) Bool)

(assert (=> b!605479 (= e!346568 (contains!3001 Nil!11952 (select (arr!17861 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87543 () Bool)

(declare-fun res!389101 () Bool)

(assert (=> d!87543 (=> res!389101 e!346570)))

(assert (=> d!87543 (= res!389101 (bvsge #b00000000000000000000000000000000 (size!18225 a!2986)))))

(assert (=> d!87543 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11952) e!346570)))

(declare-fun bm!33044 () Bool)

(declare-fun c!68555 () Bool)

(assert (=> bm!33044 (= call!33047 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68555 (Cons!11951 (select (arr!17861 a!2986) #b00000000000000000000000000000000) Nil!11952) Nil!11952)))))

(declare-fun b!605480 () Bool)

(assert (=> b!605480 (= e!346569 e!346567)))

(assert (=> b!605480 (= c!68555 (validKeyInArray!0 (select (arr!17861 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87543 (not res!389101)) b!605478))

(assert (= (and b!605478 res!389100) b!605479))

(assert (= (and b!605478 res!389102) b!605480))

(assert (= (and b!605480 c!68555) b!605477))

(assert (= (and b!605480 (not c!68555)) b!605476))

(assert (= (or b!605477 b!605476) bm!33044))

(declare-fun m!582387 () Bool)

(assert (=> b!605478 m!582387))

(assert (=> b!605478 m!582387))

(declare-fun m!582389 () Bool)

(assert (=> b!605478 m!582389))

(assert (=> b!605479 m!582387))

(assert (=> b!605479 m!582387))

(declare-fun m!582391 () Bool)

(assert (=> b!605479 m!582391))

(assert (=> bm!33044 m!582387))

(declare-fun m!582393 () Bool)

(assert (=> bm!33044 m!582393))

(assert (=> b!605480 m!582387))

(assert (=> b!605480 m!582387))

(assert (=> b!605480 m!582389))

(assert (=> b!605247 d!87543))

(declare-fun d!87551 () Bool)

(assert (=> d!87551 (arrayNoDuplicates!0 lt!276233 j!136 Nil!11952)))

(declare-fun lt!276333 () Unit!19276)

(declare-fun choose!39 (array!37219 (_ BitVec 32) (_ BitVec 32)) Unit!19276)

(assert (=> d!87551 (= lt!276333 (choose!39 lt!276233 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87551 (bvslt (size!18225 lt!276233) #b01111111111111111111111111111111)))

(assert (=> d!87551 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276233 #b00000000000000000000000000000000 j!136) lt!276333)))

(declare-fun bs!18524 () Bool)

(assert (= bs!18524 d!87551))

(assert (=> bs!18524 m!582179))

(declare-fun m!582395 () Bool)

(assert (=> bs!18524 m!582395))

(assert (=> b!605246 d!87551))

(declare-fun d!87553 () Bool)

(declare-fun res!389103 () Bool)

(declare-fun e!346571 () Bool)

(assert (=> d!87553 (=> res!389103 e!346571)))

(assert (=> d!87553 (= res!389103 (= (select (arr!17861 lt!276233) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17861 a!2986) j!136)))))

(assert (=> d!87553 (= (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346571)))

(declare-fun b!605481 () Bool)

(declare-fun e!346572 () Bool)

(assert (=> b!605481 (= e!346571 e!346572)))

(declare-fun res!389104 () Bool)

(assert (=> b!605481 (=> (not res!389104) (not e!346572))))

(assert (=> b!605481 (= res!389104 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18225 lt!276233)))))

(declare-fun b!605482 () Bool)

(assert (=> b!605482 (= e!346572 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87553 (not res!389103)) b!605481))

(assert (= (and b!605481 res!389104) b!605482))

(declare-fun m!582397 () Bool)

(assert (=> d!87553 m!582397))

(assert (=> b!605482 m!582137))

(declare-fun m!582399 () Bool)

(assert (=> b!605482 m!582399))

(assert (=> b!605246 d!87553))

(declare-fun d!87555 () Bool)

(assert (=> d!87555 (arrayContainsKey!0 lt!276233 (select (arr!17861 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276336 () Unit!19276)

(declare-fun choose!114 (array!37219 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19276)

(assert (=> d!87555 (= lt!276336 (choose!114 lt!276233 (select (arr!17861 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87555 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87555 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276233 (select (arr!17861 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276336)))

(declare-fun bs!18525 () Bool)

(assert (= bs!18525 d!87555))

(assert (=> bs!18525 m!582137))

(assert (=> bs!18525 m!582177))

