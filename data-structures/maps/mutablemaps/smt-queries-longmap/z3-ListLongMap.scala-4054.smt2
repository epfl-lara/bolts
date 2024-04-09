; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55562 () Bool)

(assert start!55562)

(declare-fun b!607386 () Bool)

(declare-fun e!347828 () Bool)

(assert (=> b!607386 (= e!347828 true)))

(declare-fun lt!277388 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!11969 0))(
  ( (Nil!11966) (Cons!11965 (h!13010 (_ BitVec 64)) (t!18205 List!11969)) )
))
(declare-fun contains!3015 (List!11969 (_ BitVec 64)) Bool)

(assert (=> b!607386 (= lt!277388 (contains!3015 Nil!11966 k0!1786))))

(declare-fun b!607387 () Bool)

(declare-datatypes ((Unit!19360 0))(
  ( (Unit!19361) )
))
(declare-fun e!347836 () Unit!19360)

(declare-fun Unit!19362 () Unit!19360)

(assert (=> b!607387 (= e!347836 Unit!19362)))

(assert (=> b!607387 false))

(declare-fun b!607388 () Bool)

(declare-fun e!347837 () Bool)

(declare-fun e!347834 () Bool)

(assert (=> b!607388 (= e!347837 (not e!347834))))

(declare-fun res!390369 () Bool)

(assert (=> b!607388 (=> res!390369 e!347834)))

(declare-datatypes ((SeekEntryResult!6322 0))(
  ( (MissingZero!6322 (index!27562 (_ BitVec 32))) (Found!6322 (index!27563 (_ BitVec 32))) (Intermediate!6322 (undefined!7134 Bool) (index!27564 (_ BitVec 32)) (x!56400 (_ BitVec 32))) (Undefined!6322) (MissingVacant!6322 (index!27565 (_ BitVec 32))) )
))
(declare-fun lt!277385 () SeekEntryResult!6322)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!607388 (= res!390369 (not (= lt!277385 (Found!6322 index!984))))))

(declare-fun lt!277380 () Unit!19360)

(assert (=> b!607388 (= lt!277380 e!347836)))

(declare-fun c!68881 () Bool)

(assert (=> b!607388 (= c!68881 (= lt!277385 Undefined!6322))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37256 0))(
  ( (array!37257 (arr!17875 (Array (_ BitVec 32) (_ BitVec 64))) (size!18239 (_ BitVec 32))) )
))
(declare-fun lt!277390 () array!37256)

(declare-fun lt!277382 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37256 (_ BitVec 32)) SeekEntryResult!6322)

(assert (=> b!607388 (= lt!277385 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277382 lt!277390 mask!3053))))

(declare-fun e!347841 () Bool)

(assert (=> b!607388 e!347841))

(declare-fun res!390363 () Bool)

(assert (=> b!607388 (=> (not res!390363) (not e!347841))))

(declare-fun lt!277376 () SeekEntryResult!6322)

(declare-fun lt!277386 () (_ BitVec 32))

(assert (=> b!607388 (= res!390363 (= lt!277376 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277386 vacantSpotIndex!68 lt!277382 lt!277390 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37256)

(assert (=> b!607388 (= lt!277376 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277386 vacantSpotIndex!68 (select (arr!17875 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!607388 (= lt!277382 (select (store (arr!17875 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277383 () Unit!19360)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19360)

(assert (=> b!607388 (= lt!277383 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277386 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607388 (= lt!277386 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607389 () Bool)

(declare-fun res!390366 () Bool)

(declare-fun e!347835 () Bool)

(assert (=> b!607389 (=> (not res!390366) (not e!347835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607389 (= res!390366 (validKeyInArray!0 (select (arr!17875 a!2986) j!136)))))

(declare-fun res!390361 () Bool)

(assert (=> start!55562 (=> (not res!390361) (not e!347835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55562 (= res!390361 (validMask!0 mask!3053))))

(assert (=> start!55562 e!347835))

(assert (=> start!55562 true))

(declare-fun array_inv!13649 (array!37256) Bool)

(assert (=> start!55562 (array_inv!13649 a!2986)))

(declare-fun b!607390 () Bool)

(declare-fun res!390359 () Bool)

(assert (=> b!607390 (=> res!390359 e!347828)))

(declare-fun noDuplicate!317 (List!11969) Bool)

(assert (=> b!607390 (= res!390359 (not (noDuplicate!317 Nil!11966)))))

(declare-fun e!347827 () Bool)

(declare-fun b!607391 () Bool)

(declare-fun arrayContainsKey!0 (array!37256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607391 (= e!347827 (arrayContainsKey!0 lt!277390 (select (arr!17875 a!2986) j!136) index!984))))

(declare-fun b!607392 () Bool)

(declare-fun res!390376 () Bool)

(declare-fun e!347833 () Bool)

(assert (=> b!607392 (=> (not res!390376) (not e!347833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37256 (_ BitVec 32)) Bool)

(assert (=> b!607392 (= res!390376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607393 () Bool)

(declare-fun res!390370 () Bool)

(assert (=> b!607393 (=> (not res!390370) (not e!347835))))

(assert (=> b!607393 (= res!390370 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607394 () Bool)

(declare-fun e!347830 () Bool)

(declare-fun e!347839 () Bool)

(assert (=> b!607394 (= e!347830 e!347839)))

(declare-fun res!390365 () Bool)

(assert (=> b!607394 (=> res!390365 e!347839)))

(assert (=> b!607394 (= res!390365 (bvsge index!984 j!136))))

(declare-fun lt!277387 () Unit!19360)

(declare-fun e!347829 () Unit!19360)

(assert (=> b!607394 (= lt!277387 e!347829)))

(declare-fun c!68882 () Bool)

(assert (=> b!607394 (= c!68882 (bvslt j!136 index!984))))

(declare-fun e!347831 () Bool)

(declare-fun b!607395 () Bool)

(assert (=> b!607395 (= e!347831 (arrayContainsKey!0 lt!277390 (select (arr!17875 a!2986) j!136) index!984))))

(declare-fun b!607396 () Bool)

(declare-fun lt!277379 () SeekEntryResult!6322)

(assert (=> b!607396 (= e!347841 (= lt!277379 lt!277376))))

(declare-fun b!607397 () Bool)

(declare-fun Unit!19363 () Unit!19360)

(assert (=> b!607397 (= e!347829 Unit!19363)))

(declare-fun b!607398 () Bool)

(declare-fun res!390379 () Bool)

(assert (=> b!607398 (=> (not res!390379) (not e!347835))))

(assert (=> b!607398 (= res!390379 (validKeyInArray!0 k0!1786))))

(declare-fun b!607399 () Bool)

(declare-fun e!347842 () Bool)

(declare-fun e!347840 () Bool)

(assert (=> b!607399 (= e!347842 e!347840)))

(declare-fun res!390380 () Bool)

(assert (=> b!607399 (=> res!390380 e!347840)))

(declare-fun lt!277392 () (_ BitVec 64))

(assert (=> b!607399 (= res!390380 (or (not (= (select (arr!17875 a!2986) j!136) lt!277382)) (not (= (select (arr!17875 a!2986) j!136) lt!277392)) (bvsge j!136 index!984)))))

(declare-fun b!607400 () Bool)

(assert (=> b!607400 (= e!347834 e!347830)))

(declare-fun res!390368 () Bool)

(assert (=> b!607400 (=> res!390368 e!347830)))

(assert (=> b!607400 (= res!390368 (or (not (= (select (arr!17875 a!2986) j!136) lt!277382)) (not (= (select (arr!17875 a!2986) j!136) lt!277392))))))

(assert (=> b!607400 e!347842))

(declare-fun res!390377 () Bool)

(assert (=> b!607400 (=> (not res!390377) (not e!347842))))

(assert (=> b!607400 (= res!390377 (= lt!277392 (select (arr!17875 a!2986) j!136)))))

(assert (=> b!607400 (= lt!277392 (select (store (arr!17875 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!607401 () Bool)

(declare-fun e!347832 () Bool)

(assert (=> b!607401 (= e!347833 e!347832)))

(declare-fun res!390378 () Bool)

(assert (=> b!607401 (=> (not res!390378) (not e!347832))))

(assert (=> b!607401 (= res!390378 (= (select (store (arr!17875 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607401 (= lt!277390 (array!37257 (store (arr!17875 a!2986) i!1108 k0!1786) (size!18239 a!2986)))))

(declare-fun b!607402 () Bool)

(assert (=> b!607402 (= e!347832 e!347837)))

(declare-fun res!390372 () Bool)

(assert (=> b!607402 (=> (not res!390372) (not e!347837))))

(assert (=> b!607402 (= res!390372 (and (= lt!277379 (Found!6322 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17875 a!2986) index!984) (select (arr!17875 a!2986) j!136))) (not (= (select (arr!17875 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607402 (= lt!277379 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17875 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607403 () Bool)

(assert (=> b!607403 (= e!347835 e!347833)))

(declare-fun res!390362 () Bool)

(assert (=> b!607403 (=> (not res!390362) (not e!347833))))

(declare-fun lt!277381 () SeekEntryResult!6322)

(assert (=> b!607403 (= res!390362 (or (= lt!277381 (MissingZero!6322 i!1108)) (= lt!277381 (MissingVacant!6322 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37256 (_ BitVec 32)) SeekEntryResult!6322)

(assert (=> b!607403 (= lt!277381 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!607404 () Bool)

(declare-fun res!390375 () Bool)

(assert (=> b!607404 (=> res!390375 e!347828)))

(assert (=> b!607404 (= res!390375 (contains!3015 Nil!11966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607405 () Bool)

(assert (=> b!607405 (= e!347839 e!347828)))

(declare-fun res!390358 () Bool)

(assert (=> b!607405 (=> res!390358 e!347828)))

(assert (=> b!607405 (= res!390358 (or (bvsge (size!18239 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18239 a!2986))))))

(assert (=> b!607405 (arrayContainsKey!0 lt!277390 (select (arr!17875 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277378 () Unit!19360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37256 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19360)

(assert (=> b!607405 (= lt!277378 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277390 (select (arr!17875 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607405 e!347827))

(declare-fun res!390360 () Bool)

(assert (=> b!607405 (=> (not res!390360) (not e!347827))))

(assert (=> b!607405 (= res!390360 (arrayContainsKey!0 lt!277390 (select (arr!17875 a!2986) j!136) j!136))))

(declare-fun b!607406 () Bool)

(declare-fun Unit!19364 () Unit!19360)

(assert (=> b!607406 (= e!347836 Unit!19364)))

(declare-fun b!607407 () Bool)

(declare-fun res!390374 () Bool)

(assert (=> b!607407 (=> (not res!390374) (not e!347833))))

(declare-fun arrayNoDuplicates!0 (array!37256 (_ BitVec 32) List!11969) Bool)

(assert (=> b!607407 (= res!390374 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11966))))

(declare-fun b!607408 () Bool)

(declare-fun res!390371 () Bool)

(assert (=> b!607408 (=> (not res!390371) (not e!347835))))

(assert (=> b!607408 (= res!390371 (and (= (size!18239 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18239 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18239 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607409 () Bool)

(declare-fun res!390364 () Bool)

(assert (=> b!607409 (=> res!390364 e!347828)))

(assert (=> b!607409 (= res!390364 (contains!3015 Nil!11966 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607410 () Bool)

(assert (=> b!607410 (= e!347840 e!347831)))

(declare-fun res!390373 () Bool)

(assert (=> b!607410 (=> (not res!390373) (not e!347831))))

(assert (=> b!607410 (= res!390373 (arrayContainsKey!0 lt!277390 (select (arr!17875 a!2986) j!136) j!136))))

(declare-fun b!607411 () Bool)

(declare-fun Unit!19365 () Unit!19360)

(assert (=> b!607411 (= e!347829 Unit!19365)))

(declare-fun lt!277377 () Unit!19360)

(assert (=> b!607411 (= lt!277377 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277390 (select (arr!17875 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607411 (arrayContainsKey!0 lt!277390 (select (arr!17875 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277384 () Unit!19360)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37256 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11969) Unit!19360)

(assert (=> b!607411 (= lt!277384 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11966))))

(assert (=> b!607411 (arrayNoDuplicates!0 lt!277390 #b00000000000000000000000000000000 Nil!11966)))

(declare-fun lt!277391 () Unit!19360)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37256 (_ BitVec 32) (_ BitVec 32)) Unit!19360)

(assert (=> b!607411 (= lt!277391 (lemmaNoDuplicateFromThenFromBigger!0 lt!277390 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607411 (arrayNoDuplicates!0 lt!277390 j!136 Nil!11966)))

(declare-fun lt!277389 () Unit!19360)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37256 (_ BitVec 64) (_ BitVec 32) List!11969) Unit!19360)

(assert (=> b!607411 (= lt!277389 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277390 (select (arr!17875 a!2986) j!136) j!136 Nil!11966))))

(assert (=> b!607411 false))

(declare-fun b!607412 () Bool)

(declare-fun res!390367 () Bool)

(assert (=> b!607412 (=> (not res!390367) (not e!347833))))

(assert (=> b!607412 (= res!390367 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17875 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!55562 res!390361) b!607408))

(assert (= (and b!607408 res!390371) b!607389))

(assert (= (and b!607389 res!390366) b!607398))

(assert (= (and b!607398 res!390379) b!607393))

(assert (= (and b!607393 res!390370) b!607403))

(assert (= (and b!607403 res!390362) b!607392))

(assert (= (and b!607392 res!390376) b!607407))

(assert (= (and b!607407 res!390374) b!607412))

(assert (= (and b!607412 res!390367) b!607401))

(assert (= (and b!607401 res!390378) b!607402))

(assert (= (and b!607402 res!390372) b!607388))

(assert (= (and b!607388 res!390363) b!607396))

(assert (= (and b!607388 c!68881) b!607387))

(assert (= (and b!607388 (not c!68881)) b!607406))

(assert (= (and b!607388 (not res!390369)) b!607400))

(assert (= (and b!607400 res!390377) b!607399))

(assert (= (and b!607399 (not res!390380)) b!607410))

(assert (= (and b!607410 res!390373) b!607395))

(assert (= (and b!607400 (not res!390368)) b!607394))

(assert (= (and b!607394 c!68882) b!607411))

(assert (= (and b!607394 (not c!68882)) b!607397))

(assert (= (and b!607394 (not res!390365)) b!607405))

(assert (= (and b!607405 res!390360) b!607391))

(assert (= (and b!607405 (not res!390358)) b!607390))

(assert (= (and b!607390 (not res!390359)) b!607404))

(assert (= (and b!607404 (not res!390375)) b!607409))

(assert (= (and b!607409 (not res!390364)) b!607386))

(declare-fun m!584157 () Bool)

(assert (=> b!607391 m!584157))

(assert (=> b!607391 m!584157))

(declare-fun m!584159 () Bool)

(assert (=> b!607391 m!584159))

(assert (=> b!607389 m!584157))

(assert (=> b!607389 m!584157))

(declare-fun m!584161 () Bool)

(assert (=> b!607389 m!584161))

(declare-fun m!584163 () Bool)

(assert (=> b!607412 m!584163))

(declare-fun m!584165 () Bool)

(assert (=> start!55562 m!584165))

(declare-fun m!584167 () Bool)

(assert (=> start!55562 m!584167))

(assert (=> b!607395 m!584157))

(assert (=> b!607395 m!584157))

(assert (=> b!607395 m!584159))

(declare-fun m!584169 () Bool)

(assert (=> b!607393 m!584169))

(declare-fun m!584171 () Bool)

(assert (=> b!607386 m!584171))

(assert (=> b!607410 m!584157))

(assert (=> b!607410 m!584157))

(declare-fun m!584173 () Bool)

(assert (=> b!607410 m!584173))

(assert (=> b!607399 m!584157))

(assert (=> b!607400 m!584157))

(declare-fun m!584175 () Bool)

(assert (=> b!607400 m!584175))

(declare-fun m!584177 () Bool)

(assert (=> b!607400 m!584177))

(declare-fun m!584179 () Bool)

(assert (=> b!607402 m!584179))

(assert (=> b!607402 m!584157))

(assert (=> b!607402 m!584157))

(declare-fun m!584181 () Bool)

(assert (=> b!607402 m!584181))

(declare-fun m!584183 () Bool)

(assert (=> b!607388 m!584183))

(declare-fun m!584185 () Bool)

(assert (=> b!607388 m!584185))

(assert (=> b!607388 m!584157))

(assert (=> b!607388 m!584175))

(declare-fun m!584187 () Bool)

(assert (=> b!607388 m!584187))

(declare-fun m!584189 () Bool)

(assert (=> b!607388 m!584189))

(declare-fun m!584191 () Bool)

(assert (=> b!607388 m!584191))

(assert (=> b!607388 m!584157))

(declare-fun m!584193 () Bool)

(assert (=> b!607388 m!584193))

(declare-fun m!584195 () Bool)

(assert (=> b!607409 m!584195))

(declare-fun m!584197 () Bool)

(assert (=> b!607398 m!584197))

(declare-fun m!584199 () Bool)

(assert (=> b!607404 m!584199))

(assert (=> b!607405 m!584157))

(assert (=> b!607405 m!584157))

(declare-fun m!584201 () Bool)

(assert (=> b!607405 m!584201))

(assert (=> b!607405 m!584157))

(declare-fun m!584203 () Bool)

(assert (=> b!607405 m!584203))

(assert (=> b!607405 m!584157))

(assert (=> b!607405 m!584173))

(declare-fun m!584205 () Bool)

(assert (=> b!607390 m!584205))

(declare-fun m!584207 () Bool)

(assert (=> b!607392 m!584207))

(assert (=> b!607411 m!584157))

(assert (=> b!607411 m!584157))

(declare-fun m!584209 () Bool)

(assert (=> b!607411 m!584209))

(assert (=> b!607411 m!584157))

(declare-fun m!584211 () Bool)

(assert (=> b!607411 m!584211))

(declare-fun m!584213 () Bool)

(assert (=> b!607411 m!584213))

(declare-fun m!584215 () Bool)

(assert (=> b!607411 m!584215))

(assert (=> b!607411 m!584157))

(declare-fun m!584217 () Bool)

(assert (=> b!607411 m!584217))

(declare-fun m!584219 () Bool)

(assert (=> b!607411 m!584219))

(declare-fun m!584221 () Bool)

(assert (=> b!607411 m!584221))

(declare-fun m!584223 () Bool)

(assert (=> b!607403 m!584223))

(declare-fun m!584225 () Bool)

(assert (=> b!607407 m!584225))

(assert (=> b!607401 m!584175))

(declare-fun m!584227 () Bool)

(assert (=> b!607401 m!584227))

(check-sat (not b!607392) (not start!55562) (not b!607411) (not b!607386) (not b!607409) (not b!607405) (not b!607388) (not b!607395) (not b!607393) (not b!607398) (not b!607402) (not b!607407) (not b!607390) (not b!607391) (not b!607404) (not b!607410) (not b!607389) (not b!607403))
(check-sat)
