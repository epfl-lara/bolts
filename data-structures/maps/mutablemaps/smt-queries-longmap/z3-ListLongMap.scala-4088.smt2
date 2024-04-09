; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56036 () Bool)

(assert start!56036)

(declare-fun b!616139 () Bool)

(declare-fun res!396986 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616139 (= res!396986 (bvsge j!136 index!984))))

(declare-fun e!353286 () Bool)

(assert (=> b!616139 (=> res!396986 e!353286)))

(declare-fun e!353292 () Bool)

(assert (=> b!616139 (= e!353292 e!353286)))

(declare-fun b!616140 () Bool)

(declare-fun res!396985 () Bool)

(declare-fun e!353296 () Bool)

(assert (=> b!616140 (=> (not res!396985) (not e!353296))))

(declare-datatypes ((array!37469 0))(
  ( (array!37470 (arr!17977 (Array (_ BitVec 32) (_ BitVec 64))) (size!18341 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37469)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616140 (= res!396985 (validKeyInArray!0 (select (arr!17977 a!2986) j!136)))))

(declare-fun res!396990 () Bool)

(assert (=> start!56036 (=> (not res!396990) (not e!353296))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56036 (= res!396990 (validMask!0 mask!3053))))

(assert (=> start!56036 e!353296))

(assert (=> start!56036 true))

(declare-fun array_inv!13751 (array!37469) Bool)

(assert (=> start!56036 (array_inv!13751 a!2986)))

(declare-fun lt!283397 () array!37469)

(declare-fun b!616141 () Bool)

(declare-fun e!353295 () Bool)

(declare-fun arrayContainsKey!0 (array!37469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616141 (= e!353295 (arrayContainsKey!0 lt!283397 (select (arr!17977 a!2986) j!136) index!984))))

(declare-fun b!616142 () Bool)

(declare-fun e!353293 () Bool)

(declare-fun e!353284 () Bool)

(assert (=> b!616142 (= e!353293 e!353284)))

(declare-fun res!397001 () Bool)

(assert (=> b!616142 (=> (not res!397001) (not e!353284))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!616142 (= res!397001 (= (select (store (arr!17977 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616142 (= lt!283397 (array!37470 (store (arr!17977 a!2986) i!1108 k0!1786) (size!18341 a!2986)))))

(declare-fun b!616143 () Bool)

(declare-datatypes ((Unit!20060 0))(
  ( (Unit!20061) )
))
(declare-fun e!353294 () Unit!20060)

(declare-fun Unit!20062 () Unit!20060)

(assert (=> b!616143 (= e!353294 Unit!20062)))

(declare-fun b!616144 () Bool)

(declare-fun Unit!20063 () Unit!20060)

(assert (=> b!616144 (= e!353294 Unit!20063)))

(assert (=> b!616144 false))

(declare-fun res!396993 () Bool)

(declare-fun b!616145 () Bool)

(assert (=> b!616145 (= res!396993 (arrayContainsKey!0 lt!283397 (select (arr!17977 a!2986) j!136) j!136))))

(assert (=> b!616145 (=> (not res!396993) (not e!353295))))

(assert (=> b!616145 (= e!353286 e!353295)))

(declare-fun b!616146 () Bool)

(declare-fun e!353289 () Unit!20060)

(declare-fun Unit!20064 () Unit!20060)

(assert (=> b!616146 (= e!353289 Unit!20064)))

(declare-fun b!616147 () Bool)

(assert (=> b!616147 (= e!353296 e!353293)))

(declare-fun res!396989 () Bool)

(assert (=> b!616147 (=> (not res!396989) (not e!353293))))

(declare-datatypes ((SeekEntryResult!6424 0))(
  ( (MissingZero!6424 (index!27979 (_ BitVec 32))) (Found!6424 (index!27980 (_ BitVec 32))) (Intermediate!6424 (undefined!7236 Bool) (index!27981 (_ BitVec 32)) (x!56801 (_ BitVec 32))) (Undefined!6424) (MissingVacant!6424 (index!27982 (_ BitVec 32))) )
))
(declare-fun lt!283412 () SeekEntryResult!6424)

(assert (=> b!616147 (= res!396989 (or (= lt!283412 (MissingZero!6424 i!1108)) (= lt!283412 (MissingVacant!6424 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37469 (_ BitVec 32)) SeekEntryResult!6424)

(assert (=> b!616147 (= lt!283412 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!616148 () Bool)

(declare-fun res!396996 () Bool)

(assert (=> b!616148 (=> (not res!396996) (not e!353296))))

(assert (=> b!616148 (= res!396996 (validKeyInArray!0 k0!1786))))

(declare-fun b!616149 () Bool)

(declare-fun e!353288 () Bool)

(declare-fun lt!283401 () (_ BitVec 64))

(assert (=> b!616149 (= e!353288 (validKeyInArray!0 lt!283401))))

(declare-fun b!616150 () Bool)

(declare-fun e!353282 () Unit!20060)

(declare-fun Unit!20065 () Unit!20060)

(assert (=> b!616150 (= e!353282 Unit!20065)))

(declare-fun b!616151 () Bool)

(declare-fun res!396995 () Bool)

(assert (=> b!616151 (=> (not res!396995) (not e!353296))))

(assert (=> b!616151 (= res!396995 (and (= (size!18341 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18341 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18341 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616152 () Bool)

(declare-fun e!353287 () Bool)

(assert (=> b!616152 (= e!353287 (arrayContainsKey!0 lt!283397 (select (arr!17977 a!2986) j!136) index!984))))

(declare-fun b!616153 () Bool)

(declare-fun e!353285 () Bool)

(assert (=> b!616153 (= e!353285 (not e!353288))))

(declare-fun res!396988 () Bool)

(assert (=> b!616153 (=> res!396988 e!353288)))

(assert (=> b!616153 (= res!396988 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun lt!283400 () Unit!20060)

(declare-fun e!353291 () Unit!20060)

(assert (=> b!616153 (= lt!283400 e!353291)))

(declare-fun c!69944 () Bool)

(declare-fun lt!283404 () SeekEntryResult!6424)

(assert (=> b!616153 (= c!69944 (= lt!283404 (Found!6424 index!984)))))

(declare-fun lt!283403 () Unit!20060)

(assert (=> b!616153 (= lt!283403 e!353294)))

(declare-fun c!69946 () Bool)

(assert (=> b!616153 (= c!69946 (= lt!283404 Undefined!6424))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37469 (_ BitVec 32)) SeekEntryResult!6424)

(assert (=> b!616153 (= lt!283404 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283401 lt!283397 mask!3053))))

(declare-fun e!353283 () Bool)

(assert (=> b!616153 e!353283))

(declare-fun res!396992 () Bool)

(assert (=> b!616153 (=> (not res!396992) (not e!353283))))

(declare-fun lt!283416 () SeekEntryResult!6424)

(declare-fun lt!283411 () (_ BitVec 32))

(assert (=> b!616153 (= res!396992 (= lt!283416 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283411 vacantSpotIndex!68 lt!283401 lt!283397 mask!3053)))))

(assert (=> b!616153 (= lt!283416 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283411 vacantSpotIndex!68 (select (arr!17977 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616153 (= lt!283401 (select (store (arr!17977 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!283406 () Unit!20060)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20060)

(assert (=> b!616153 (= lt!283406 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283411 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616153 (= lt!283411 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616154 () Bool)

(assert (=> b!616154 false))

(declare-fun lt!283402 () Unit!20060)

(declare-datatypes ((List!12071 0))(
  ( (Nil!12068) (Cons!12067 (h!13112 (_ BitVec 64)) (t!18307 List!12071)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37469 (_ BitVec 64) (_ BitVec 32) List!12071) Unit!20060)

(assert (=> b!616154 (= lt!283402 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283397 (select (arr!17977 a!2986) j!136) index!984 Nil!12068))))

(declare-fun arrayNoDuplicates!0 (array!37469 (_ BitVec 32) List!12071) Bool)

(assert (=> b!616154 (arrayNoDuplicates!0 lt!283397 index!984 Nil!12068)))

(declare-fun lt!283414 () Unit!20060)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37469 (_ BitVec 32) (_ BitVec 32)) Unit!20060)

(assert (=> b!616154 (= lt!283414 (lemmaNoDuplicateFromThenFromBigger!0 lt!283397 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616154 (arrayNoDuplicates!0 lt!283397 #b00000000000000000000000000000000 Nil!12068)))

(declare-fun lt!283408 () Unit!20060)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37469 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12071) Unit!20060)

(assert (=> b!616154 (= lt!283408 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12068))))

(assert (=> b!616154 (arrayContainsKey!0 lt!283397 (select (arr!17977 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283415 () Unit!20060)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37469 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20060)

(assert (=> b!616154 (= lt!283415 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283397 (select (arr!17977 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616154 e!353287))

(declare-fun res!396994 () Bool)

(assert (=> b!616154 (=> (not res!396994) (not e!353287))))

(assert (=> b!616154 (= res!396994 (arrayContainsKey!0 lt!283397 (select (arr!17977 a!2986) j!136) j!136))))

(declare-fun Unit!20066 () Unit!20060)

(assert (=> b!616154 (= e!353282 Unit!20066)))

(declare-fun b!616155 () Bool)

(declare-fun res!396997 () Bool)

(assert (=> b!616155 (=> (not res!396997) (not e!353293))))

(assert (=> b!616155 (= res!396997 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12068))))

(declare-fun b!616156 () Bool)

(declare-fun res!396991 () Bool)

(assert (=> b!616156 (=> (not res!396991) (not e!353296))))

(assert (=> b!616156 (= res!396991 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616157 () Bool)

(declare-fun res!396987 () Bool)

(assert (=> b!616157 (=> (not res!396987) (not e!353293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37469 (_ BitVec 32)) Bool)

(assert (=> b!616157 (= res!396987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616158 () Bool)

(declare-fun res!396998 () Bool)

(assert (=> b!616158 (=> (not res!396998) (not e!353293))))

(assert (=> b!616158 (= res!396998 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17977 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616159 () Bool)

(assert (=> b!616159 (= e!353284 e!353285)))

(declare-fun res!396999 () Bool)

(assert (=> b!616159 (=> (not res!396999) (not e!353285))))

(declare-fun lt!283405 () SeekEntryResult!6424)

(assert (=> b!616159 (= res!396999 (and (= lt!283405 (Found!6424 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17977 a!2986) index!984) (select (arr!17977 a!2986) j!136))) (not (= (select (arr!17977 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!616159 (= lt!283405 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17977 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616160 () Bool)

(assert (=> b!616160 false))

(declare-fun lt!283407 () Unit!20060)

(assert (=> b!616160 (= lt!283407 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283397 (select (arr!17977 a!2986) j!136) j!136 Nil!12068))))

(assert (=> b!616160 (arrayNoDuplicates!0 lt!283397 j!136 Nil!12068)))

(declare-fun lt!283398 () Unit!20060)

(assert (=> b!616160 (= lt!283398 (lemmaNoDuplicateFromThenFromBigger!0 lt!283397 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616160 (arrayNoDuplicates!0 lt!283397 #b00000000000000000000000000000000 Nil!12068)))

(declare-fun lt!283413 () Unit!20060)

(assert (=> b!616160 (= lt!283413 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12068))))

(assert (=> b!616160 (arrayContainsKey!0 lt!283397 (select (arr!17977 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283399 () Unit!20060)

(assert (=> b!616160 (= lt!283399 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283397 (select (arr!17977 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20067 () Unit!20060)

(assert (=> b!616160 (= e!353289 Unit!20067)))

(declare-fun b!616161 () Bool)

(declare-fun Unit!20068 () Unit!20060)

(assert (=> b!616161 (= e!353291 Unit!20068)))

(declare-fun res!397000 () Bool)

(assert (=> b!616161 (= res!397000 (= (select (store (arr!17977 a!2986) i!1108 k0!1786) index!984) (select (arr!17977 a!2986) j!136)))))

(assert (=> b!616161 (=> (not res!397000) (not e!353292))))

(assert (=> b!616161 e!353292))

(declare-fun c!69945 () Bool)

(assert (=> b!616161 (= c!69945 (bvslt j!136 index!984))))

(declare-fun lt!283410 () Unit!20060)

(assert (=> b!616161 (= lt!283410 e!353289)))

(declare-fun c!69947 () Bool)

(assert (=> b!616161 (= c!69947 (bvslt index!984 j!136))))

(declare-fun lt!283409 () Unit!20060)

(assert (=> b!616161 (= lt!283409 e!353282)))

(assert (=> b!616161 false))

(declare-fun b!616162 () Bool)

(declare-fun Unit!20069 () Unit!20060)

(assert (=> b!616162 (= e!353291 Unit!20069)))

(declare-fun b!616163 () Bool)

(assert (=> b!616163 (= e!353283 (= lt!283405 lt!283416))))

(assert (= (and start!56036 res!396990) b!616151))

(assert (= (and b!616151 res!396995) b!616140))

(assert (= (and b!616140 res!396985) b!616148))

(assert (= (and b!616148 res!396996) b!616156))

(assert (= (and b!616156 res!396991) b!616147))

(assert (= (and b!616147 res!396989) b!616157))

(assert (= (and b!616157 res!396987) b!616155))

(assert (= (and b!616155 res!396997) b!616158))

(assert (= (and b!616158 res!396998) b!616142))

(assert (= (and b!616142 res!397001) b!616159))

(assert (= (and b!616159 res!396999) b!616153))

(assert (= (and b!616153 res!396992) b!616163))

(assert (= (and b!616153 c!69946) b!616144))

(assert (= (and b!616153 (not c!69946)) b!616143))

(assert (= (and b!616153 c!69944) b!616161))

(assert (= (and b!616153 (not c!69944)) b!616162))

(assert (= (and b!616161 res!397000) b!616139))

(assert (= (and b!616139 (not res!396986)) b!616145))

(assert (= (and b!616145 res!396993) b!616141))

(assert (= (and b!616161 c!69945) b!616160))

(assert (= (and b!616161 (not c!69945)) b!616146))

(assert (= (and b!616161 c!69947) b!616154))

(assert (= (and b!616161 (not c!69947)) b!616150))

(assert (= (and b!616154 res!396994) b!616152))

(assert (= (and b!616153 (not res!396988)) b!616149))

(declare-fun m!592365 () Bool)

(assert (=> b!616148 m!592365))

(declare-fun m!592367 () Bool)

(assert (=> b!616155 m!592367))

(declare-fun m!592369 () Bool)

(assert (=> b!616145 m!592369))

(assert (=> b!616145 m!592369))

(declare-fun m!592371 () Bool)

(assert (=> b!616145 m!592371))

(declare-fun m!592373 () Bool)

(assert (=> b!616161 m!592373))

(declare-fun m!592375 () Bool)

(assert (=> b!616161 m!592375))

(assert (=> b!616161 m!592369))

(declare-fun m!592377 () Bool)

(assert (=> b!616149 m!592377))

(declare-fun m!592379 () Bool)

(assert (=> b!616147 m!592379))

(declare-fun m!592381 () Bool)

(assert (=> b!616157 m!592381))

(assert (=> b!616160 m!592369))

(declare-fun m!592383 () Bool)

(assert (=> b!616160 m!592383))

(assert (=> b!616160 m!592369))

(declare-fun m!592385 () Bool)

(assert (=> b!616160 m!592385))

(assert (=> b!616160 m!592369))

(declare-fun m!592387 () Bool)

(assert (=> b!616160 m!592387))

(assert (=> b!616160 m!592369))

(declare-fun m!592389 () Bool)

(assert (=> b!616160 m!592389))

(declare-fun m!592391 () Bool)

(assert (=> b!616160 m!592391))

(declare-fun m!592393 () Bool)

(assert (=> b!616160 m!592393))

(declare-fun m!592395 () Bool)

(assert (=> b!616160 m!592395))

(assert (=> b!616152 m!592369))

(assert (=> b!616152 m!592369))

(declare-fun m!592397 () Bool)

(assert (=> b!616152 m!592397))

(declare-fun m!592399 () Bool)

(assert (=> start!56036 m!592399))

(declare-fun m!592401 () Bool)

(assert (=> start!56036 m!592401))

(declare-fun m!592403 () Bool)

(assert (=> b!616159 m!592403))

(assert (=> b!616159 m!592369))

(assert (=> b!616159 m!592369))

(declare-fun m!592405 () Bool)

(assert (=> b!616159 m!592405))

(declare-fun m!592407 () Bool)

(assert (=> b!616153 m!592407))

(declare-fun m!592409 () Bool)

(assert (=> b!616153 m!592409))

(assert (=> b!616153 m!592369))

(declare-fun m!592411 () Bool)

(assert (=> b!616153 m!592411))

(assert (=> b!616153 m!592369))

(declare-fun m!592413 () Bool)

(assert (=> b!616153 m!592413))

(declare-fun m!592415 () Bool)

(assert (=> b!616153 m!592415))

(declare-fun m!592417 () Bool)

(assert (=> b!616153 m!592417))

(assert (=> b!616153 m!592373))

(assert (=> b!616140 m!592369))

(assert (=> b!616140 m!592369))

(declare-fun m!592419 () Bool)

(assert (=> b!616140 m!592419))

(assert (=> b!616142 m!592373))

(declare-fun m!592421 () Bool)

(assert (=> b!616142 m!592421))

(assert (=> b!616141 m!592369))

(assert (=> b!616141 m!592369))

(assert (=> b!616141 m!592397))

(declare-fun m!592423 () Bool)

(assert (=> b!616156 m!592423))

(declare-fun m!592425 () Bool)

(assert (=> b!616158 m!592425))

(assert (=> b!616154 m!592369))

(assert (=> b!616154 m!592369))

(declare-fun m!592427 () Bool)

(assert (=> b!616154 m!592427))

(declare-fun m!592429 () Bool)

(assert (=> b!616154 m!592429))

(assert (=> b!616154 m!592369))

(declare-fun m!592431 () Bool)

(assert (=> b!616154 m!592431))

(declare-fun m!592433 () Bool)

(assert (=> b!616154 m!592433))

(assert (=> b!616154 m!592369))

(assert (=> b!616154 m!592371))

(assert (=> b!616154 m!592393))

(assert (=> b!616154 m!592369))

(declare-fun m!592435 () Bool)

(assert (=> b!616154 m!592435))

(assert (=> b!616154 m!592395))

(check-sat (not b!616157) (not b!616155) (not b!616148) (not start!56036) (not b!616156) (not b!616145) (not b!616160) (not b!616152) (not b!616140) (not b!616147) (not b!616149) (not b!616153) (not b!616141) (not b!616159) (not b!616154))
(check-sat)
