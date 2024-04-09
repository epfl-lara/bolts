; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59124 () Bool)

(assert start!59124)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!652145 () Bool)

(declare-fun e!374304 () Bool)

(declare-datatypes ((array!38580 0))(
  ( (array!38581 (arr!18489 (Array (_ BitVec 32) (_ BitVec 64))) (size!18853 (_ BitVec 32))) )
))
(declare-fun lt!303496 () array!38580)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38580)

(declare-fun arrayContainsKey!0 (array!38580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652145 (= e!374304 (arrayContainsKey!0 lt!303496 (select (arr!18489 a!2986) j!136) index!984))))

(declare-fun b!652146 () Bool)

(declare-datatypes ((Unit!22288 0))(
  ( (Unit!22289) )
))
(declare-fun e!374307 () Unit!22288)

(declare-fun Unit!22290 () Unit!22288)

(assert (=> b!652146 (= e!374307 Unit!22290)))

(declare-fun b!652147 () Bool)

(declare-fun e!374315 () Bool)

(declare-fun e!374316 () Bool)

(assert (=> b!652147 (= e!374315 e!374316)))

(declare-fun res!423013 () Bool)

(assert (=> b!652147 (=> (not res!423013) (not e!374316))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!652147 (= res!423013 (= (select (store (arr!18489 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652147 (= lt!303496 (array!38581 (store (arr!18489 a!2986) i!1108 k!1786) (size!18853 a!2986)))))

(declare-fun b!652148 () Bool)

(declare-fun e!374311 () Unit!22288)

(declare-fun Unit!22291 () Unit!22288)

(assert (=> b!652148 (= e!374311 Unit!22291)))

(declare-fun b!652149 () Bool)

(declare-fun e!374312 () Bool)

(declare-fun e!374309 () Bool)

(assert (=> b!652149 (= e!374312 e!374309)))

(declare-fun res!423018 () Bool)

(assert (=> b!652149 (=> res!423018 e!374309)))

(assert (=> b!652149 (= res!423018 (bvsge index!984 j!136))))

(declare-fun lt!303504 () Unit!22288)

(assert (=> b!652149 (= lt!303504 e!374311)))

(declare-fun c!74938 () Bool)

(assert (=> b!652149 (= c!74938 (bvslt j!136 index!984))))

(declare-fun b!652150 () Bool)

(declare-fun res!423012 () Bool)

(declare-fun e!374305 () Bool)

(assert (=> b!652150 (=> (not res!423012) (not e!374305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652150 (= res!423012 (validKeyInArray!0 k!1786))))

(declare-fun b!652151 () Bool)

(assert (=> b!652151 (= e!374309 (or (bvsge (size!18853 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18853 a!2986)) (bvslt index!984 (size!18853 a!2986))))))

(declare-datatypes ((List!12583 0))(
  ( (Nil!12580) (Cons!12579 (h!13624 (_ BitVec 64)) (t!18819 List!12583)) )
))
(declare-fun arrayNoDuplicates!0 (array!38580 (_ BitVec 32) List!12583) Bool)

(assert (=> b!652151 (arrayNoDuplicates!0 lt!303496 index!984 Nil!12580)))

(declare-fun lt!303497 () Unit!22288)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38580 (_ BitVec 32) (_ BitVec 32)) Unit!22288)

(assert (=> b!652151 (= lt!303497 (lemmaNoDuplicateFromThenFromBigger!0 lt!303496 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652151 (arrayNoDuplicates!0 lt!303496 #b00000000000000000000000000000000 Nil!12580)))

(declare-fun lt!303491 () Unit!22288)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38580 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12583) Unit!22288)

(assert (=> b!652151 (= lt!303491 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12580))))

(assert (=> b!652151 (arrayContainsKey!0 lt!303496 (select (arr!18489 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303498 () Unit!22288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38580 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22288)

(assert (=> b!652151 (= lt!303498 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303496 (select (arr!18489 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!652151 e!374304))

(declare-fun res!423016 () Bool)

(assert (=> b!652151 (=> (not res!423016) (not e!374304))))

(assert (=> b!652151 (= res!423016 (arrayContainsKey!0 lt!303496 (select (arr!18489 a!2986) j!136) j!136))))

(declare-fun b!652152 () Bool)

(declare-fun e!374313 () Bool)

(declare-fun e!374306 () Bool)

(assert (=> b!652152 (= e!374313 e!374306)))

(declare-fun res!423011 () Bool)

(assert (=> b!652152 (=> res!423011 e!374306)))

(declare-fun lt!303490 () (_ BitVec 64))

(declare-fun lt!303492 () (_ BitVec 64))

(assert (=> b!652152 (= res!423011 (or (not (= (select (arr!18489 a!2986) j!136) lt!303490)) (not (= (select (arr!18489 a!2986) j!136) lt!303492)) (bvsge j!136 index!984)))))

(declare-fun b!652153 () Bool)

(declare-fun e!374303 () Bool)

(assert (=> b!652153 (= e!374316 e!374303)))

(declare-fun res!423017 () Bool)

(assert (=> b!652153 (=> (not res!423017) (not e!374303))))

(declare-datatypes ((SeekEntryResult!6936 0))(
  ( (MissingZero!6936 (index!30096 (_ BitVec 32))) (Found!6936 (index!30097 (_ BitVec 32))) (Intermediate!6936 (undefined!7748 Bool) (index!30098 (_ BitVec 32)) (x!58912 (_ BitVec 32))) (Undefined!6936) (MissingVacant!6936 (index!30099 (_ BitVec 32))) )
))
(declare-fun lt!303503 () SeekEntryResult!6936)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!652153 (= res!423017 (and (= lt!303503 (Found!6936 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18489 a!2986) index!984) (select (arr!18489 a!2986) j!136))) (not (= (select (arr!18489 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38580 (_ BitVec 32)) SeekEntryResult!6936)

(assert (=> b!652153 (= lt!303503 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18489 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652154 () Bool)

(declare-fun res!423015 () Bool)

(assert (=> b!652154 (=> (not res!423015) (not e!374315))))

(assert (=> b!652154 (= res!423015 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12580))))

(declare-fun b!652155 () Bool)

(declare-fun res!423009 () Bool)

(assert (=> b!652155 (=> (not res!423009) (not e!374315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38580 (_ BitVec 32)) Bool)

(assert (=> b!652155 (= res!423009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!423010 () Bool)

(assert (=> start!59124 (=> (not res!423010) (not e!374305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59124 (= res!423010 (validMask!0 mask!3053))))

(assert (=> start!59124 e!374305))

(assert (=> start!59124 true))

(declare-fun array_inv!14263 (array!38580) Bool)

(assert (=> start!59124 (array_inv!14263 a!2986)))

(declare-fun b!652144 () Bool)

(declare-fun Unit!22292 () Unit!22288)

(assert (=> b!652144 (= e!374311 Unit!22292)))

(declare-fun lt!303489 () Unit!22288)

(assert (=> b!652144 (= lt!303489 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303496 (select (arr!18489 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652144 (arrayContainsKey!0 lt!303496 (select (arr!18489 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303494 () Unit!22288)

(assert (=> b!652144 (= lt!303494 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12580))))

(assert (=> b!652144 (arrayNoDuplicates!0 lt!303496 #b00000000000000000000000000000000 Nil!12580)))

(declare-fun lt!303499 () Unit!22288)

(assert (=> b!652144 (= lt!303499 (lemmaNoDuplicateFromThenFromBigger!0 lt!303496 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652144 (arrayNoDuplicates!0 lt!303496 j!136 Nil!12580)))

(declare-fun lt!303502 () Unit!22288)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38580 (_ BitVec 64) (_ BitVec 32) List!12583) Unit!22288)

(assert (=> b!652144 (= lt!303502 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303496 (select (arr!18489 a!2986) j!136) j!136 Nil!12580))))

(assert (=> b!652144 false))

(declare-fun b!652156 () Bool)

(declare-fun res!423014 () Bool)

(assert (=> b!652156 (=> (not res!423014) (not e!374305))))

(assert (=> b!652156 (= res!423014 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!652157 () Bool)

(declare-fun res!423019 () Bool)

(assert (=> b!652157 (=> (not res!423019) (not e!374305))))

(assert (=> b!652157 (= res!423019 (and (= (size!18853 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18853 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18853 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652158 () Bool)

(declare-fun e!374317 () Bool)

(declare-fun lt!303501 () SeekEntryResult!6936)

(assert (=> b!652158 (= e!374317 (= lt!303503 lt!303501))))

(declare-fun b!652159 () Bool)

(declare-fun res!423005 () Bool)

(assert (=> b!652159 (=> (not res!423005) (not e!374315))))

(assert (=> b!652159 (= res!423005 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18489 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652160 () Bool)

(declare-fun e!374310 () Bool)

(assert (=> b!652160 (= e!374303 (not e!374310))))

(declare-fun res!423002 () Bool)

(assert (=> b!652160 (=> res!423002 e!374310)))

(declare-fun lt!303487 () SeekEntryResult!6936)

(assert (=> b!652160 (= res!423002 (not (= lt!303487 (Found!6936 index!984))))))

(declare-fun lt!303493 () Unit!22288)

(assert (=> b!652160 (= lt!303493 e!374307)))

(declare-fun c!74939 () Bool)

(assert (=> b!652160 (= c!74939 (= lt!303487 Undefined!6936))))

(assert (=> b!652160 (= lt!303487 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303490 lt!303496 mask!3053))))

(assert (=> b!652160 e!374317))

(declare-fun res!423020 () Bool)

(assert (=> b!652160 (=> (not res!423020) (not e!374317))))

(declare-fun lt!303500 () (_ BitVec 32))

(assert (=> b!652160 (= res!423020 (= lt!303501 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303500 vacantSpotIndex!68 lt!303490 lt!303496 mask!3053)))))

(assert (=> b!652160 (= lt!303501 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303500 vacantSpotIndex!68 (select (arr!18489 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652160 (= lt!303490 (select (store (arr!18489 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303488 () Unit!22288)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38580 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22288)

(assert (=> b!652160 (= lt!303488 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303500 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652160 (= lt!303500 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652161 () Bool)

(assert (=> b!652161 (= e!374310 e!374312)))

(declare-fun res!423007 () Bool)

(assert (=> b!652161 (=> res!423007 e!374312)))

(assert (=> b!652161 (= res!423007 (or (not (= (select (arr!18489 a!2986) j!136) lt!303490)) (not (= (select (arr!18489 a!2986) j!136) lt!303492))))))

(assert (=> b!652161 e!374313))

(declare-fun res!423006 () Bool)

(assert (=> b!652161 (=> (not res!423006) (not e!374313))))

(assert (=> b!652161 (= res!423006 (= lt!303492 (select (arr!18489 a!2986) j!136)))))

(assert (=> b!652161 (= lt!303492 (select (store (arr!18489 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!652162 () Bool)

(declare-fun e!374314 () Bool)

(assert (=> b!652162 (= e!374306 e!374314)))

(declare-fun res!423004 () Bool)

(assert (=> b!652162 (=> (not res!423004) (not e!374314))))

(assert (=> b!652162 (= res!423004 (arrayContainsKey!0 lt!303496 (select (arr!18489 a!2986) j!136) j!136))))

(declare-fun b!652163 () Bool)

(declare-fun Unit!22293 () Unit!22288)

(assert (=> b!652163 (= e!374307 Unit!22293)))

(assert (=> b!652163 false))

(declare-fun b!652164 () Bool)

(assert (=> b!652164 (= e!374305 e!374315)))

(declare-fun res!423008 () Bool)

(assert (=> b!652164 (=> (not res!423008) (not e!374315))))

(declare-fun lt!303495 () SeekEntryResult!6936)

(assert (=> b!652164 (= res!423008 (or (= lt!303495 (MissingZero!6936 i!1108)) (= lt!303495 (MissingVacant!6936 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38580 (_ BitVec 32)) SeekEntryResult!6936)

(assert (=> b!652164 (= lt!303495 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!652165 () Bool)

(declare-fun res!423003 () Bool)

(assert (=> b!652165 (=> (not res!423003) (not e!374305))))

(assert (=> b!652165 (= res!423003 (validKeyInArray!0 (select (arr!18489 a!2986) j!136)))))

(declare-fun b!652166 () Bool)

(assert (=> b!652166 (= e!374314 (arrayContainsKey!0 lt!303496 (select (arr!18489 a!2986) j!136) index!984))))

(assert (= (and start!59124 res!423010) b!652157))

(assert (= (and b!652157 res!423019) b!652165))

(assert (= (and b!652165 res!423003) b!652150))

(assert (= (and b!652150 res!423012) b!652156))

(assert (= (and b!652156 res!423014) b!652164))

(assert (= (and b!652164 res!423008) b!652155))

(assert (= (and b!652155 res!423009) b!652154))

(assert (= (and b!652154 res!423015) b!652159))

(assert (= (and b!652159 res!423005) b!652147))

(assert (= (and b!652147 res!423013) b!652153))

(assert (= (and b!652153 res!423017) b!652160))

(assert (= (and b!652160 res!423020) b!652158))

(assert (= (and b!652160 c!74939) b!652163))

(assert (= (and b!652160 (not c!74939)) b!652146))

(assert (= (and b!652160 (not res!423002)) b!652161))

(assert (= (and b!652161 res!423006) b!652152))

(assert (= (and b!652152 (not res!423011)) b!652162))

(assert (= (and b!652162 res!423004) b!652166))

(assert (= (and b!652161 (not res!423007)) b!652149))

(assert (= (and b!652149 c!74938) b!652144))

(assert (= (and b!652149 (not c!74938)) b!652148))

(assert (= (and b!652149 (not res!423018)) b!652151))

(assert (= (and b!652151 res!423016) b!652145))

(declare-fun m!625359 () Bool)

(assert (=> b!652152 m!625359))

(declare-fun m!625361 () Bool)

(assert (=> b!652154 m!625361))

(declare-fun m!625363 () Bool)

(assert (=> b!652159 m!625363))

(assert (=> b!652165 m!625359))

(assert (=> b!652165 m!625359))

(declare-fun m!625365 () Bool)

(assert (=> b!652165 m!625365))

(declare-fun m!625367 () Bool)

(assert (=> b!652164 m!625367))

(assert (=> b!652145 m!625359))

(assert (=> b!652145 m!625359))

(declare-fun m!625369 () Bool)

(assert (=> b!652145 m!625369))

(assert (=> b!652160 m!625359))

(declare-fun m!625371 () Bool)

(assert (=> b!652160 m!625371))

(declare-fun m!625373 () Bool)

(assert (=> b!652160 m!625373))

(declare-fun m!625375 () Bool)

(assert (=> b!652160 m!625375))

(declare-fun m!625377 () Bool)

(assert (=> b!652160 m!625377))

(assert (=> b!652160 m!625359))

(declare-fun m!625379 () Bool)

(assert (=> b!652160 m!625379))

(declare-fun m!625381 () Bool)

(assert (=> b!652160 m!625381))

(declare-fun m!625383 () Bool)

(assert (=> b!652160 m!625383))

(declare-fun m!625385 () Bool)

(assert (=> b!652150 m!625385))

(assert (=> b!652162 m!625359))

(assert (=> b!652162 m!625359))

(declare-fun m!625387 () Bool)

(assert (=> b!652162 m!625387))

(assert (=> b!652166 m!625359))

(assert (=> b!652166 m!625359))

(assert (=> b!652166 m!625369))

(assert (=> b!652151 m!625359))

(declare-fun m!625389 () Bool)

(assert (=> b!652151 m!625389))

(assert (=> b!652151 m!625359))

(declare-fun m!625391 () Bool)

(assert (=> b!652151 m!625391))

(assert (=> b!652151 m!625359))

(assert (=> b!652151 m!625387))

(declare-fun m!625393 () Bool)

(assert (=> b!652151 m!625393))

(declare-fun m!625395 () Bool)

(assert (=> b!652151 m!625395))

(declare-fun m!625397 () Bool)

(assert (=> b!652151 m!625397))

(declare-fun m!625399 () Bool)

(assert (=> b!652151 m!625399))

(assert (=> b!652151 m!625359))

(assert (=> b!652147 m!625379))

(declare-fun m!625401 () Bool)

(assert (=> b!652147 m!625401))

(declare-fun m!625403 () Bool)

(assert (=> b!652156 m!625403))

(declare-fun m!625405 () Bool)

(assert (=> b!652155 m!625405))

(declare-fun m!625407 () Bool)

(assert (=> start!59124 m!625407))

(declare-fun m!625409 () Bool)

(assert (=> start!59124 m!625409))

(assert (=> b!652161 m!625359))

(assert (=> b!652161 m!625379))

(declare-fun m!625411 () Bool)

(assert (=> b!652161 m!625411))

(assert (=> b!652144 m!625359))

(declare-fun m!625413 () Bool)

(assert (=> b!652144 m!625413))

(assert (=> b!652144 m!625359))

(assert (=> b!652144 m!625359))

(declare-fun m!625415 () Bool)

(assert (=> b!652144 m!625415))

(declare-fun m!625417 () Bool)

(assert (=> b!652144 m!625417))

(assert (=> b!652144 m!625359))

(declare-fun m!625419 () Bool)

(assert (=> b!652144 m!625419))

(assert (=> b!652144 m!625395))

(declare-fun m!625421 () Bool)

(assert (=> b!652144 m!625421))

(assert (=> b!652144 m!625397))

(declare-fun m!625423 () Bool)

(assert (=> b!652153 m!625423))

(assert (=> b!652153 m!625359))

(assert (=> b!652153 m!625359))

(declare-fun m!625425 () Bool)

(assert (=> b!652153 m!625425))

(push 1)

(assert (not b!652154))

(assert (not b!652151))

(assert (not b!652150))

(assert (not b!652155))

(assert (not b!652165))

(assert (not b!652144))

(assert (not b!652162))

(assert (not b!652156))

(assert (not b!652145))

(assert (not b!652160))

(assert (not b!652166))

(assert (not b!652164))

(assert (not start!59124))

(assert (not b!652153))

(check-sat)

(pop 1)

(push 1)

(check-sat)

