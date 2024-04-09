; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56090 () Bool)

(assert start!56090)

(declare-fun res!398369 () Bool)

(declare-fun e!354505 () Bool)

(assert (=> start!56090 (=> (not res!398369) (not e!354505))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56090 (= res!398369 (validMask!0 mask!3053))))

(assert (=> start!56090 e!354505))

(assert (=> start!56090 true))

(declare-datatypes ((array!37523 0))(
  ( (array!37524 (arr!18004 (Array (_ BitVec 32) (_ BitVec 64))) (size!18368 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37523)

(declare-fun array_inv!13778 (array!37523) Bool)

(assert (=> start!56090 (array_inv!13778 a!2986)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!354498 () Bool)

(declare-fun b!618164 () Bool)

(declare-fun lt!285033 () array!37523)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618164 (= e!354498 (arrayContainsKey!0 lt!285033 (select (arr!18004 a!2986) j!136) index!984))))

(declare-fun b!618165 () Bool)

(declare-fun res!398372 () Bool)

(assert (=> b!618165 (= res!398372 (arrayContainsKey!0 lt!285033 (select (arr!18004 a!2986) j!136) j!136))))

(declare-fun e!354506 () Bool)

(assert (=> b!618165 (=> (not res!398372) (not e!354506))))

(declare-fun e!354510 () Bool)

(assert (=> b!618165 (= e!354510 e!354506)))

(declare-fun b!618166 () Bool)

(assert (=> b!618166 false))

(declare-datatypes ((Unit!20330 0))(
  ( (Unit!20331) )
))
(declare-fun lt!285021 () Unit!20330)

(declare-datatypes ((List!12098 0))(
  ( (Nil!12095) (Cons!12094 (h!13139 (_ BitVec 64)) (t!18334 List!12098)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37523 (_ BitVec 64) (_ BitVec 32) List!12098) Unit!20330)

(assert (=> b!618166 (= lt!285021 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285033 (select (arr!18004 a!2986) j!136) j!136 Nil!12095))))

(declare-fun arrayNoDuplicates!0 (array!37523 (_ BitVec 32) List!12098) Bool)

(assert (=> b!618166 (arrayNoDuplicates!0 lt!285033 j!136 Nil!12095)))

(declare-fun lt!285025 () Unit!20330)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37523 (_ BitVec 32) (_ BitVec 32)) Unit!20330)

(assert (=> b!618166 (= lt!285025 (lemmaNoDuplicateFromThenFromBigger!0 lt!285033 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618166 (arrayNoDuplicates!0 lt!285033 #b00000000000000000000000000000000 Nil!12095)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!285017 () Unit!20330)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37523 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12098) Unit!20330)

(assert (=> b!618166 (= lt!285017 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12095))))

(assert (=> b!618166 (arrayContainsKey!0 lt!285033 (select (arr!18004 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285022 () Unit!20330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37523 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20330)

(assert (=> b!618166 (= lt!285022 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285033 (select (arr!18004 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!354502 () Unit!20330)

(declare-fun Unit!20332 () Unit!20330)

(assert (=> b!618166 (= e!354502 Unit!20332)))

(declare-fun b!618167 () Bool)

(declare-fun res!398371 () Bool)

(assert (=> b!618167 (= res!398371 (bvsge j!136 index!984))))

(assert (=> b!618167 (=> res!398371 e!354510)))

(declare-fun e!354508 () Bool)

(assert (=> b!618167 (= e!354508 e!354510)))

(declare-fun b!618168 () Bool)

(declare-fun e!354509 () Bool)

(declare-fun e!354501 () Bool)

(assert (=> b!618168 (= e!354509 (not e!354501))))

(declare-fun res!398377 () Bool)

(assert (=> b!618168 (=> res!398377 e!354501)))

(declare-datatypes ((SeekEntryResult!6451 0))(
  ( (MissingZero!6451 (index!28087 (_ BitVec 32))) (Found!6451 (index!28088 (_ BitVec 32))) (Intermediate!6451 (undefined!7263 Bool) (index!28089 (_ BitVec 32)) (x!56900 (_ BitVec 32))) (Undefined!6451) (MissingVacant!6451 (index!28090 (_ BitVec 32))) )
))
(declare-fun lt!285026 () SeekEntryResult!6451)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618168 (= res!398377 (not (= lt!285026 (MissingVacant!6451 vacantSpotIndex!68))))))

(declare-fun lt!285024 () Unit!20330)

(declare-fun e!354507 () Unit!20330)

(assert (=> b!618168 (= lt!285024 e!354507)))

(declare-fun c!70269 () Bool)

(assert (=> b!618168 (= c!70269 (= lt!285026 (Found!6451 index!984)))))

(declare-fun lt!285028 () Unit!20330)

(declare-fun e!354497 () Unit!20330)

(assert (=> b!618168 (= lt!285028 e!354497)))

(declare-fun c!70268 () Bool)

(assert (=> b!618168 (= c!70268 (= lt!285026 Undefined!6451))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!285032 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37523 (_ BitVec 32)) SeekEntryResult!6451)

(assert (=> b!618168 (= lt!285026 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285032 lt!285033 mask!3053))))

(declare-fun e!354499 () Bool)

(assert (=> b!618168 e!354499))

(declare-fun res!398368 () Bool)

(assert (=> b!618168 (=> (not res!398368) (not e!354499))))

(declare-fun lt!285034 () (_ BitVec 32))

(declare-fun lt!285023 () SeekEntryResult!6451)

(assert (=> b!618168 (= res!398368 (= lt!285023 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285034 vacantSpotIndex!68 lt!285032 lt!285033 mask!3053)))))

(assert (=> b!618168 (= lt!285023 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285034 vacantSpotIndex!68 (select (arr!18004 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618168 (= lt!285032 (select (store (arr!18004 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!285027 () Unit!20330)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37523 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20330)

(assert (=> b!618168 (= lt!285027 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285034 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618168 (= lt!285034 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618169 () Bool)

(declare-fun res!398365 () Bool)

(declare-fun e!354504 () Bool)

(assert (=> b!618169 (=> (not res!398365) (not e!354504))))

(assert (=> b!618169 (= res!398365 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12095))))

(declare-fun b!618170 () Bool)

(declare-fun lt!285020 () SeekEntryResult!6451)

(assert (=> b!618170 (= e!354499 (= lt!285020 lt!285023))))

(declare-fun b!618171 () Bool)

(declare-fun res!398364 () Bool)

(assert (=> b!618171 (=> (not res!398364) (not e!354505))))

(assert (=> b!618171 (= res!398364 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618172 () Bool)

(assert (=> b!618172 false))

(declare-fun lt!285036 () Unit!20330)

(assert (=> b!618172 (= lt!285036 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285033 (select (arr!18004 a!2986) j!136) index!984 Nil!12095))))

(assert (=> b!618172 (arrayNoDuplicates!0 lt!285033 index!984 Nil!12095)))

(declare-fun lt!285030 () Unit!20330)

(assert (=> b!618172 (= lt!285030 (lemmaNoDuplicateFromThenFromBigger!0 lt!285033 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618172 (arrayNoDuplicates!0 lt!285033 #b00000000000000000000000000000000 Nil!12095)))

(declare-fun lt!285029 () Unit!20330)

(assert (=> b!618172 (= lt!285029 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12095))))

(assert (=> b!618172 (arrayContainsKey!0 lt!285033 (select (arr!18004 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285019 () Unit!20330)

(assert (=> b!618172 (= lt!285019 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285033 (select (arr!18004 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618172 e!354498))

(declare-fun res!398375 () Bool)

(assert (=> b!618172 (=> (not res!398375) (not e!354498))))

(assert (=> b!618172 (= res!398375 (arrayContainsKey!0 lt!285033 (select (arr!18004 a!2986) j!136) j!136))))

(declare-fun e!354511 () Unit!20330)

(declare-fun Unit!20333 () Unit!20330)

(assert (=> b!618172 (= e!354511 Unit!20333)))

(declare-fun b!618173 () Bool)

(assert (=> b!618173 (= e!354506 (arrayContainsKey!0 lt!285033 (select (arr!18004 a!2986) j!136) index!984))))

(declare-fun b!618174 () Bool)

(declare-fun Unit!20334 () Unit!20330)

(assert (=> b!618174 (= e!354497 Unit!20334)))

(declare-fun b!618175 () Bool)

(declare-fun Unit!20335 () Unit!20330)

(assert (=> b!618175 (= e!354511 Unit!20335)))

(declare-fun b!618176 () Bool)

(declare-fun res!398366 () Bool)

(assert (=> b!618176 (=> (not res!398366) (not e!354505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618176 (= res!398366 (validKeyInArray!0 (select (arr!18004 a!2986) j!136)))))

(declare-fun b!618177 () Bool)

(declare-fun Unit!20336 () Unit!20330)

(assert (=> b!618177 (= e!354507 Unit!20336)))

(declare-fun b!618178 () Bool)

(declare-fun Unit!20337 () Unit!20330)

(assert (=> b!618178 (= e!354502 Unit!20337)))

(declare-fun b!618179 () Bool)

(assert (=> b!618179 (= e!354505 e!354504)))

(declare-fun res!398362 () Bool)

(assert (=> b!618179 (=> (not res!398362) (not e!354504))))

(declare-fun lt!285031 () SeekEntryResult!6451)

(assert (=> b!618179 (= res!398362 (or (= lt!285031 (MissingZero!6451 i!1108)) (= lt!285031 (MissingVacant!6451 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37523 (_ BitVec 32)) SeekEntryResult!6451)

(assert (=> b!618179 (= lt!285031 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!618180 () Bool)

(declare-fun Unit!20338 () Unit!20330)

(assert (=> b!618180 (= e!354507 Unit!20338)))

(declare-fun res!398370 () Bool)

(assert (=> b!618180 (= res!398370 (= (select (store (arr!18004 a!2986) i!1108 k0!1786) index!984) (select (arr!18004 a!2986) j!136)))))

(assert (=> b!618180 (=> (not res!398370) (not e!354508))))

(assert (=> b!618180 e!354508))

(declare-fun c!70270 () Bool)

(assert (=> b!618180 (= c!70270 (bvslt j!136 index!984))))

(declare-fun lt!285035 () Unit!20330)

(assert (=> b!618180 (= lt!285035 e!354502)))

(declare-fun c!70271 () Bool)

(assert (=> b!618180 (= c!70271 (bvslt index!984 j!136))))

(declare-fun lt!285018 () Unit!20330)

(assert (=> b!618180 (= lt!285018 e!354511)))

(assert (=> b!618180 false))

(declare-fun b!618181 () Bool)

(declare-fun e!354503 () Bool)

(assert (=> b!618181 (= e!354503 e!354509)))

(declare-fun res!398367 () Bool)

(assert (=> b!618181 (=> (not res!398367) (not e!354509))))

(assert (=> b!618181 (= res!398367 (and (= lt!285020 (Found!6451 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18004 a!2986) index!984) (select (arr!18004 a!2986) j!136))) (not (= (select (arr!18004 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!618181 (= lt!285020 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18004 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618182 () Bool)

(assert (=> b!618182 (= e!354501 true)))

(assert (=> b!618182 (= (select (store (arr!18004 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618183 () Bool)

(declare-fun res!398378 () Bool)

(assert (=> b!618183 (=> (not res!398378) (not e!354504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37523 (_ BitVec 32)) Bool)

(assert (=> b!618183 (= res!398378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618184 () Bool)

(declare-fun res!398374 () Bool)

(assert (=> b!618184 (=> (not res!398374) (not e!354504))))

(assert (=> b!618184 (= res!398374 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18004 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618185 () Bool)

(declare-fun res!398376 () Bool)

(assert (=> b!618185 (=> (not res!398376) (not e!354505))))

(assert (=> b!618185 (= res!398376 (validKeyInArray!0 k0!1786))))

(declare-fun b!618186 () Bool)

(assert (=> b!618186 (= e!354504 e!354503)))

(declare-fun res!398363 () Bool)

(assert (=> b!618186 (=> (not res!398363) (not e!354503))))

(assert (=> b!618186 (= res!398363 (= (select (store (arr!18004 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618186 (= lt!285033 (array!37524 (store (arr!18004 a!2986) i!1108 k0!1786) (size!18368 a!2986)))))

(declare-fun b!618187 () Bool)

(declare-fun res!398373 () Bool)

(assert (=> b!618187 (=> (not res!398373) (not e!354505))))

(assert (=> b!618187 (= res!398373 (and (= (size!18368 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18368 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18368 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618188 () Bool)

(declare-fun Unit!20339 () Unit!20330)

(assert (=> b!618188 (= e!354497 Unit!20339)))

(assert (=> b!618188 false))

(assert (= (and start!56090 res!398369) b!618187))

(assert (= (and b!618187 res!398373) b!618176))

(assert (= (and b!618176 res!398366) b!618185))

(assert (= (and b!618185 res!398376) b!618171))

(assert (= (and b!618171 res!398364) b!618179))

(assert (= (and b!618179 res!398362) b!618183))

(assert (= (and b!618183 res!398378) b!618169))

(assert (= (and b!618169 res!398365) b!618184))

(assert (= (and b!618184 res!398374) b!618186))

(assert (= (and b!618186 res!398363) b!618181))

(assert (= (and b!618181 res!398367) b!618168))

(assert (= (and b!618168 res!398368) b!618170))

(assert (= (and b!618168 c!70268) b!618188))

(assert (= (and b!618168 (not c!70268)) b!618174))

(assert (= (and b!618168 c!70269) b!618180))

(assert (= (and b!618168 (not c!70269)) b!618177))

(assert (= (and b!618180 res!398370) b!618167))

(assert (= (and b!618167 (not res!398371)) b!618165))

(assert (= (and b!618165 res!398372) b!618173))

(assert (= (and b!618180 c!70270) b!618166))

(assert (= (and b!618180 (not c!70270)) b!618178))

(assert (= (and b!618180 c!70271) b!618172))

(assert (= (and b!618180 (not c!70271)) b!618175))

(assert (= (and b!618172 res!398375) b!618164))

(assert (= (and b!618168 (not res!398377)) b!618182))

(declare-fun m!594259 () Bool)

(assert (=> b!618176 m!594259))

(assert (=> b!618176 m!594259))

(declare-fun m!594261 () Bool)

(assert (=> b!618176 m!594261))

(declare-fun m!594263 () Bool)

(assert (=> b!618180 m!594263))

(declare-fun m!594265 () Bool)

(assert (=> b!618180 m!594265))

(assert (=> b!618180 m!594259))

(declare-fun m!594267 () Bool)

(assert (=> b!618184 m!594267))

(declare-fun m!594269 () Bool)

(assert (=> b!618183 m!594269))

(assert (=> b!618182 m!594263))

(assert (=> b!618182 m!594265))

(assert (=> b!618165 m!594259))

(assert (=> b!618165 m!594259))

(declare-fun m!594271 () Bool)

(assert (=> b!618165 m!594271))

(declare-fun m!594273 () Bool)

(assert (=> b!618168 m!594273))

(declare-fun m!594275 () Bool)

(assert (=> b!618168 m!594275))

(assert (=> b!618168 m!594259))

(assert (=> b!618168 m!594263))

(assert (=> b!618168 m!594259))

(declare-fun m!594277 () Bool)

(assert (=> b!618168 m!594277))

(declare-fun m!594279 () Bool)

(assert (=> b!618168 m!594279))

(declare-fun m!594281 () Bool)

(assert (=> b!618168 m!594281))

(declare-fun m!594283 () Bool)

(assert (=> b!618168 m!594283))

(declare-fun m!594285 () Bool)

(assert (=> b!618181 m!594285))

(assert (=> b!618181 m!594259))

(assert (=> b!618181 m!594259))

(declare-fun m!594287 () Bool)

(assert (=> b!618181 m!594287))

(declare-fun m!594289 () Bool)

(assert (=> b!618179 m!594289))

(declare-fun m!594291 () Bool)

(assert (=> start!56090 m!594291))

(declare-fun m!594293 () Bool)

(assert (=> start!56090 m!594293))

(declare-fun m!594295 () Bool)

(assert (=> b!618185 m!594295))

(assert (=> b!618186 m!594263))

(declare-fun m!594297 () Bool)

(assert (=> b!618186 m!594297))

(declare-fun m!594299 () Bool)

(assert (=> b!618171 m!594299))

(declare-fun m!594301 () Bool)

(assert (=> b!618169 m!594301))

(assert (=> b!618164 m!594259))

(assert (=> b!618164 m!594259))

(declare-fun m!594303 () Bool)

(assert (=> b!618164 m!594303))

(assert (=> b!618172 m!594259))

(assert (=> b!618172 m!594259))

(assert (=> b!618172 m!594271))

(declare-fun m!594305 () Bool)

(assert (=> b!618172 m!594305))

(declare-fun m!594307 () Bool)

(assert (=> b!618172 m!594307))

(assert (=> b!618172 m!594259))

(declare-fun m!594309 () Bool)

(assert (=> b!618172 m!594309))

(assert (=> b!618172 m!594259))

(declare-fun m!594311 () Bool)

(assert (=> b!618172 m!594311))

(assert (=> b!618172 m!594259))

(declare-fun m!594313 () Bool)

(assert (=> b!618172 m!594313))

(declare-fun m!594315 () Bool)

(assert (=> b!618172 m!594315))

(declare-fun m!594317 () Bool)

(assert (=> b!618172 m!594317))

(assert (=> b!618166 m!594259))

(declare-fun m!594319 () Bool)

(assert (=> b!618166 m!594319))

(assert (=> b!618166 m!594259))

(declare-fun m!594321 () Bool)

(assert (=> b!618166 m!594321))

(assert (=> b!618166 m!594305))

(assert (=> b!618166 m!594259))

(declare-fun m!594323 () Bool)

(assert (=> b!618166 m!594323))

(assert (=> b!618166 m!594259))

(declare-fun m!594325 () Bool)

(assert (=> b!618166 m!594325))

(declare-fun m!594327 () Bool)

(assert (=> b!618166 m!594327))

(assert (=> b!618166 m!594317))

(assert (=> b!618173 m!594259))

(assert (=> b!618173 m!594259))

(assert (=> b!618173 m!594303))

(check-sat (not start!56090) (not b!618172) (not b!618169) (not b!618165) (not b!618183) (not b!618185) (not b!618173) (not b!618171) (not b!618166) (not b!618176) (not b!618181) (not b!618168) (not b!618164) (not b!618179))
(check-sat)
