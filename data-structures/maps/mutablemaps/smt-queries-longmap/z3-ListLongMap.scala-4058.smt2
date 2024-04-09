; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55586 () Bool)

(assert start!55586)

(declare-fun b!608358 () Bool)

(declare-fun e!348404 () Bool)

(declare-fun e!348414 () Bool)

(assert (=> b!608358 (= e!348404 e!348414)))

(declare-fun res!391194 () Bool)

(assert (=> b!608358 (=> (not res!391194) (not e!348414))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6334 0))(
  ( (MissingZero!6334 (index!27610 (_ BitVec 32))) (Found!6334 (index!27611 (_ BitVec 32))) (Intermediate!6334 (undefined!7146 Bool) (index!27612 (_ BitVec 32)) (x!56444 (_ BitVec 32))) (Undefined!6334) (MissingVacant!6334 (index!27613 (_ BitVec 32))) )
))
(declare-fun lt!277990 () SeekEntryResult!6334)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37280 0))(
  ( (array!37281 (arr!17887 (Array (_ BitVec 32) (_ BitVec 64))) (size!18251 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37280)

(assert (=> b!608358 (= res!391194 (and (= lt!277990 (Found!6334 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17887 a!2986) index!984) (select (arr!17887 a!2986) j!136))) (not (= (select (arr!17887 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37280 (_ BitVec 32)) SeekEntryResult!6334)

(assert (=> b!608358 (= lt!277990 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17887 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608359 () Bool)

(declare-fun e!348411 () Bool)

(declare-fun lt!277999 () array!37280)

(declare-fun arrayContainsKey!0 (array!37280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608359 (= e!348411 (arrayContainsKey!0 lt!277999 (select (arr!17887 a!2986) j!136) index!984))))

(declare-fun b!608360 () Bool)

(declare-fun res!391191 () Bool)

(declare-fun e!348413 () Bool)

(assert (=> b!608360 (=> res!391191 e!348413)))

(declare-datatypes ((List!11981 0))(
  ( (Nil!11978) (Cons!11977 (h!13022 (_ BitVec 64)) (t!18217 List!11981)) )
))
(declare-fun contains!3027 (List!11981 (_ BitVec 64)) Bool)

(assert (=> b!608360 (= res!391191 (contains!3027 Nil!11978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608361 () Bool)

(declare-fun e!348417 () Bool)

(assert (=> b!608361 (= e!348417 e!348404)))

(declare-fun res!391196 () Bool)

(assert (=> b!608361 (=> (not res!391196) (not e!348404))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!608361 (= res!391196 (= (select (store (arr!17887 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608361 (= lt!277999 (array!37281 (store (arr!17887 a!2986) i!1108 k0!1786) (size!18251 a!2986)))))

(declare-fun b!608362 () Bool)

(declare-fun res!391198 () Bool)

(assert (=> b!608362 (=> (not res!391198) (not e!348417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37280 (_ BitVec 32)) Bool)

(assert (=> b!608362 (= res!391198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608363 () Bool)

(assert (=> b!608363 (= e!348413 true)))

(declare-fun lt!277994 () Bool)

(assert (=> b!608363 (= lt!277994 (contains!3027 Nil!11978 k0!1786))))

(declare-fun b!608364 () Bool)

(declare-fun e!348406 () Bool)

(declare-fun lt!278001 () SeekEntryResult!6334)

(assert (=> b!608364 (= e!348406 (= lt!277990 lt!278001))))

(declare-fun b!608365 () Bool)

(declare-fun res!391197 () Bool)

(assert (=> b!608365 (=> (not res!391197) (not e!348417))))

(assert (=> b!608365 (= res!391197 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17887 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608366 () Bool)

(declare-datatypes ((Unit!19432 0))(
  ( (Unit!19433) )
))
(declare-fun e!348405 () Unit!19432)

(declare-fun Unit!19434 () Unit!19432)

(assert (=> b!608366 (= e!348405 Unit!19434)))

(assert (=> b!608366 false))

(declare-fun b!608367 () Bool)

(declare-fun e!348409 () Bool)

(assert (=> b!608367 (= e!348409 e!348413)))

(declare-fun res!391187 () Bool)

(assert (=> b!608367 (=> res!391187 e!348413)))

(assert (=> b!608367 (= res!391187 (or (bvsge (size!18251 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18251 a!2986))))))

(assert (=> b!608367 (arrayContainsKey!0 lt!277999 (select (arr!17887 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277991 () Unit!19432)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37280 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19432)

(assert (=> b!608367 (= lt!277991 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277999 (select (arr!17887 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348407 () Bool)

(assert (=> b!608367 e!348407))

(declare-fun res!391186 () Bool)

(assert (=> b!608367 (=> (not res!391186) (not e!348407))))

(assert (=> b!608367 (= res!391186 (arrayContainsKey!0 lt!277999 (select (arr!17887 a!2986) j!136) j!136))))

(declare-fun b!608368 () Bool)

(declare-fun res!391207 () Bool)

(assert (=> b!608368 (=> (not res!391207) (not e!348417))))

(declare-fun arrayNoDuplicates!0 (array!37280 (_ BitVec 32) List!11981) Bool)

(assert (=> b!608368 (= res!391207 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11978))))

(declare-fun b!608369 () Bool)

(declare-fun res!391206 () Bool)

(declare-fun e!348410 () Bool)

(assert (=> b!608369 (=> (not res!391206) (not e!348410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608369 (= res!391206 (validKeyInArray!0 (select (arr!17887 a!2986) j!136)))))

(declare-fun b!608370 () Bool)

(declare-fun e!348412 () Unit!19432)

(declare-fun Unit!19435 () Unit!19432)

(assert (=> b!608370 (= e!348412 Unit!19435)))

(declare-fun b!608371 () Bool)

(declare-fun res!391190 () Bool)

(assert (=> b!608371 (=> res!391190 e!348413)))

(assert (=> b!608371 (= res!391190 (contains!3027 Nil!11978 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608372 () Bool)

(declare-fun res!391188 () Bool)

(assert (=> b!608372 (=> (not res!391188) (not e!348410))))

(assert (=> b!608372 (= res!391188 (validKeyInArray!0 k0!1786))))

(declare-fun b!608373 () Bool)

(declare-fun Unit!19436 () Unit!19432)

(assert (=> b!608373 (= e!348412 Unit!19436)))

(declare-fun lt!277993 () Unit!19432)

(assert (=> b!608373 (= lt!277993 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277999 (select (arr!17887 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608373 (arrayContainsKey!0 lt!277999 (select (arr!17887 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277989 () Unit!19432)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37280 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11981) Unit!19432)

(assert (=> b!608373 (= lt!277989 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11978))))

(assert (=> b!608373 (arrayNoDuplicates!0 lt!277999 #b00000000000000000000000000000000 Nil!11978)))

(declare-fun lt!277988 () Unit!19432)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37280 (_ BitVec 32) (_ BitVec 32)) Unit!19432)

(assert (=> b!608373 (= lt!277988 (lemmaNoDuplicateFromThenFromBigger!0 lt!277999 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608373 (arrayNoDuplicates!0 lt!277999 j!136 Nil!11978)))

(declare-fun lt!278003 () Unit!19432)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37280 (_ BitVec 64) (_ BitVec 32) List!11981) Unit!19432)

(assert (=> b!608373 (= lt!278003 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277999 (select (arr!17887 a!2986) j!136) j!136 Nil!11978))))

(assert (=> b!608373 false))

(declare-fun b!608374 () Bool)

(declare-fun e!348418 () Bool)

(assert (=> b!608374 (= e!348414 (not e!348418))))

(declare-fun res!391195 () Bool)

(assert (=> b!608374 (=> res!391195 e!348418)))

(declare-fun lt!277996 () SeekEntryResult!6334)

(assert (=> b!608374 (= res!391195 (not (= lt!277996 (Found!6334 index!984))))))

(declare-fun lt!278002 () Unit!19432)

(assert (=> b!608374 (= lt!278002 e!348405)))

(declare-fun c!68953 () Bool)

(assert (=> b!608374 (= c!68953 (= lt!277996 Undefined!6334))))

(declare-fun lt!278004 () (_ BitVec 64))

(assert (=> b!608374 (= lt!277996 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278004 lt!277999 mask!3053))))

(assert (=> b!608374 e!348406))

(declare-fun res!391193 () Bool)

(assert (=> b!608374 (=> (not res!391193) (not e!348406))))

(declare-fun lt!277992 () (_ BitVec 32))

(assert (=> b!608374 (= res!391193 (= lt!278001 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277992 vacantSpotIndex!68 lt!278004 lt!277999 mask!3053)))))

(assert (=> b!608374 (= lt!278001 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277992 vacantSpotIndex!68 (select (arr!17887 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608374 (= lt!278004 (select (store (arr!17887 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277995 () Unit!19432)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37280 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19432)

(assert (=> b!608374 (= lt!277995 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277992 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608374 (= lt!277992 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608375 () Bool)

(declare-fun e!348408 () Bool)

(declare-fun e!348415 () Bool)

(assert (=> b!608375 (= e!348408 e!348415)))

(declare-fun res!391202 () Bool)

(assert (=> b!608375 (=> res!391202 e!348415)))

(declare-fun lt!277998 () (_ BitVec 64))

(assert (=> b!608375 (= res!391202 (or (not (= (select (arr!17887 a!2986) j!136) lt!278004)) (not (= (select (arr!17887 a!2986) j!136) lt!277998)) (bvsge j!136 index!984)))))

(declare-fun b!608376 () Bool)

(assert (=> b!608376 (= e!348415 e!348411)))

(declare-fun res!391208 () Bool)

(assert (=> b!608376 (=> (not res!391208) (not e!348411))))

(assert (=> b!608376 (= res!391208 (arrayContainsKey!0 lt!277999 (select (arr!17887 a!2986) j!136) j!136))))

(declare-fun b!608377 () Bool)

(declare-fun res!391199 () Bool)

(assert (=> b!608377 (=> res!391199 e!348413)))

(declare-fun noDuplicate!329 (List!11981) Bool)

(assert (=> b!608377 (= res!391199 (not (noDuplicate!329 Nil!11978)))))

(declare-fun b!608378 () Bool)

(assert (=> b!608378 (= e!348410 e!348417)))

(declare-fun res!391203 () Bool)

(assert (=> b!608378 (=> (not res!391203) (not e!348417))))

(declare-fun lt!278000 () SeekEntryResult!6334)

(assert (=> b!608378 (= res!391203 (or (= lt!278000 (MissingZero!6334 i!1108)) (= lt!278000 (MissingVacant!6334 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37280 (_ BitVec 32)) SeekEntryResult!6334)

(assert (=> b!608378 (= lt!278000 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!391205 () Bool)

(assert (=> start!55586 (=> (not res!391205) (not e!348410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55586 (= res!391205 (validMask!0 mask!3053))))

(assert (=> start!55586 e!348410))

(assert (=> start!55586 true))

(declare-fun array_inv!13661 (array!37280) Bool)

(assert (=> start!55586 (array_inv!13661 a!2986)))

(declare-fun b!608379 () Bool)

(declare-fun res!391192 () Bool)

(assert (=> b!608379 (=> (not res!391192) (not e!348410))))

(assert (=> b!608379 (= res!391192 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608380 () Bool)

(declare-fun Unit!19437 () Unit!19432)

(assert (=> b!608380 (= e!348405 Unit!19437)))

(declare-fun b!608381 () Bool)

(assert (=> b!608381 (= e!348407 (arrayContainsKey!0 lt!277999 (select (arr!17887 a!2986) j!136) index!984))))

(declare-fun b!608382 () Bool)

(declare-fun res!391200 () Bool)

(assert (=> b!608382 (=> (not res!391200) (not e!348410))))

(assert (=> b!608382 (= res!391200 (and (= (size!18251 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18251 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18251 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608383 () Bool)

(declare-fun e!348403 () Bool)

(assert (=> b!608383 (= e!348418 e!348403)))

(declare-fun res!391204 () Bool)

(assert (=> b!608383 (=> res!391204 e!348403)))

(assert (=> b!608383 (= res!391204 (or (not (= (select (arr!17887 a!2986) j!136) lt!278004)) (not (= (select (arr!17887 a!2986) j!136) lt!277998))))))

(assert (=> b!608383 e!348408))

(declare-fun res!391189 () Bool)

(assert (=> b!608383 (=> (not res!391189) (not e!348408))))

(assert (=> b!608383 (= res!391189 (= lt!277998 (select (arr!17887 a!2986) j!136)))))

(assert (=> b!608383 (= lt!277998 (select (store (arr!17887 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!608384 () Bool)

(assert (=> b!608384 (= e!348403 e!348409)))

(declare-fun res!391201 () Bool)

(assert (=> b!608384 (=> res!391201 e!348409)))

(assert (=> b!608384 (= res!391201 (bvsge index!984 j!136))))

(declare-fun lt!277997 () Unit!19432)

(assert (=> b!608384 (= lt!277997 e!348412)))

(declare-fun c!68954 () Bool)

(assert (=> b!608384 (= c!68954 (bvslt j!136 index!984))))

(assert (= (and start!55586 res!391205) b!608382))

(assert (= (and b!608382 res!391200) b!608369))

(assert (= (and b!608369 res!391206) b!608372))

(assert (= (and b!608372 res!391188) b!608379))

(assert (= (and b!608379 res!391192) b!608378))

(assert (= (and b!608378 res!391203) b!608362))

(assert (= (and b!608362 res!391198) b!608368))

(assert (= (and b!608368 res!391207) b!608365))

(assert (= (and b!608365 res!391197) b!608361))

(assert (= (and b!608361 res!391196) b!608358))

(assert (= (and b!608358 res!391194) b!608374))

(assert (= (and b!608374 res!391193) b!608364))

(assert (= (and b!608374 c!68953) b!608366))

(assert (= (and b!608374 (not c!68953)) b!608380))

(assert (= (and b!608374 (not res!391195)) b!608383))

(assert (= (and b!608383 res!391189) b!608375))

(assert (= (and b!608375 (not res!391202)) b!608376))

(assert (= (and b!608376 res!391208) b!608359))

(assert (= (and b!608383 (not res!391204)) b!608384))

(assert (= (and b!608384 c!68954) b!608373))

(assert (= (and b!608384 (not c!68954)) b!608370))

(assert (= (and b!608384 (not res!391201)) b!608367))

(assert (= (and b!608367 res!391186) b!608381))

(assert (= (and b!608367 (not res!391187)) b!608377))

(assert (= (and b!608377 (not res!391199)) b!608360))

(assert (= (and b!608360 (not res!391191)) b!608371))

(assert (= (and b!608371 (not res!391190)) b!608363))

(declare-fun m!585021 () Bool)

(assert (=> b!608376 m!585021))

(assert (=> b!608376 m!585021))

(declare-fun m!585023 () Bool)

(assert (=> b!608376 m!585023))

(assert (=> b!608373 m!585021))

(assert (=> b!608373 m!585021))

(declare-fun m!585025 () Bool)

(assert (=> b!608373 m!585025))

(declare-fun m!585027 () Bool)

(assert (=> b!608373 m!585027))

(declare-fun m!585029 () Bool)

(assert (=> b!608373 m!585029))

(assert (=> b!608373 m!585021))

(declare-fun m!585031 () Bool)

(assert (=> b!608373 m!585031))

(declare-fun m!585033 () Bool)

(assert (=> b!608373 m!585033))

(declare-fun m!585035 () Bool)

(assert (=> b!608373 m!585035))

(assert (=> b!608373 m!585021))

(declare-fun m!585037 () Bool)

(assert (=> b!608373 m!585037))

(assert (=> b!608369 m!585021))

(assert (=> b!608369 m!585021))

(declare-fun m!585039 () Bool)

(assert (=> b!608369 m!585039))

(assert (=> b!608381 m!585021))

(assert (=> b!608381 m!585021))

(declare-fun m!585041 () Bool)

(assert (=> b!608381 m!585041))

(declare-fun m!585043 () Bool)

(assert (=> b!608368 m!585043))

(declare-fun m!585045 () Bool)

(assert (=> b!608371 m!585045))

(assert (=> b!608359 m!585021))

(assert (=> b!608359 m!585021))

(assert (=> b!608359 m!585041))

(declare-fun m!585047 () Bool)

(assert (=> b!608361 m!585047))

(declare-fun m!585049 () Bool)

(assert (=> b!608361 m!585049))

(declare-fun m!585051 () Bool)

(assert (=> b!608358 m!585051))

(assert (=> b!608358 m!585021))

(assert (=> b!608358 m!585021))

(declare-fun m!585053 () Bool)

(assert (=> b!608358 m!585053))

(declare-fun m!585055 () Bool)

(assert (=> b!608378 m!585055))

(assert (=> b!608383 m!585021))

(assert (=> b!608383 m!585047))

(declare-fun m!585057 () Bool)

(assert (=> b!608383 m!585057))

(declare-fun m!585059 () Bool)

(assert (=> b!608372 m!585059))

(declare-fun m!585061 () Bool)

(assert (=> b!608377 m!585061))

(assert (=> b!608367 m!585021))

(assert (=> b!608367 m!585021))

(declare-fun m!585063 () Bool)

(assert (=> b!608367 m!585063))

(assert (=> b!608367 m!585021))

(declare-fun m!585065 () Bool)

(assert (=> b!608367 m!585065))

(assert (=> b!608367 m!585021))

(assert (=> b!608367 m!585023))

(declare-fun m!585067 () Bool)

(assert (=> b!608363 m!585067))

(declare-fun m!585069 () Bool)

(assert (=> b!608362 m!585069))

(declare-fun m!585071 () Bool)

(assert (=> b!608365 m!585071))

(declare-fun m!585073 () Bool)

(assert (=> b!608374 m!585073))

(declare-fun m!585075 () Bool)

(assert (=> b!608374 m!585075))

(assert (=> b!608374 m!585047))

(declare-fun m!585077 () Bool)

(assert (=> b!608374 m!585077))

(declare-fun m!585079 () Bool)

(assert (=> b!608374 m!585079))

(declare-fun m!585081 () Bool)

(assert (=> b!608374 m!585081))

(assert (=> b!608374 m!585021))

(declare-fun m!585083 () Bool)

(assert (=> b!608374 m!585083))

(assert (=> b!608374 m!585021))

(assert (=> b!608375 m!585021))

(declare-fun m!585085 () Bool)

(assert (=> b!608360 m!585085))

(declare-fun m!585087 () Bool)

(assert (=> b!608379 m!585087))

(declare-fun m!585089 () Bool)

(assert (=> start!55586 m!585089))

(declare-fun m!585091 () Bool)

(assert (=> start!55586 m!585091))

(check-sat (not b!608374) (not b!608367) (not b!608359) (not b!608378) (not b!608360) (not b!608373) (not b!608363) (not b!608372) (not b!608368) (not b!608358) (not b!608381) (not b!608376) (not b!608371) (not start!55586) (not b!608379) (not b!608369) (not b!608362) (not b!608377))
(check-sat)
