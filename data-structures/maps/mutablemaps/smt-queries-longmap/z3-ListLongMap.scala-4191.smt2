; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57134 () Bool)

(assert start!57134)

(declare-fun b!632393 () Bool)

(declare-datatypes ((Unit!21290 0))(
  ( (Unit!21291) )
))
(declare-fun e!361545 () Unit!21290)

(declare-fun Unit!21292 () Unit!21290)

(assert (=> b!632393 (= e!361545 Unit!21292)))

(assert (=> b!632393 false))

(declare-fun b!632394 () Bool)

(declare-fun res!409148 () Bool)

(declare-fun e!361544 () Bool)

(assert (=> b!632394 (=> (not res!409148) (not e!361544))))

(declare-datatypes ((array!38114 0))(
  ( (array!38115 (arr!18286 (Array (_ BitVec 32) (_ BitVec 64))) (size!18650 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38114)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632394 (= res!409148 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632395 () Bool)

(declare-fun res!409155 () Bool)

(declare-fun e!361546 () Bool)

(assert (=> b!632395 (=> (not res!409155) (not e!361546))))

(declare-datatypes ((List!12380 0))(
  ( (Nil!12377) (Cons!12376 (h!13421 (_ BitVec 64)) (t!18616 List!12380)) )
))
(declare-fun arrayNoDuplicates!0 (array!38114 (_ BitVec 32) List!12380) Bool)

(assert (=> b!632395 (= res!409155 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12377))))

(declare-fun b!632396 () Bool)

(declare-fun res!409158 () Bool)

(assert (=> b!632396 (=> (not res!409158) (not e!361546))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!632396 (= res!409158 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18286 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632397 () Bool)

(assert (=> b!632397 (= e!361544 e!361546)))

(declare-fun res!409147 () Bool)

(assert (=> b!632397 (=> (not res!409147) (not e!361546))))

(declare-datatypes ((SeekEntryResult!6733 0))(
  ( (MissingZero!6733 (index!29224 (_ BitVec 32))) (Found!6733 (index!29225 (_ BitVec 32))) (Intermediate!6733 (undefined!7545 Bool) (index!29226 (_ BitVec 32)) (x!57985 (_ BitVec 32))) (Undefined!6733) (MissingVacant!6733 (index!29227 (_ BitVec 32))) )
))
(declare-fun lt!292343 () SeekEntryResult!6733)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!632397 (= res!409147 (or (= lt!292343 (MissingZero!6733 i!1108)) (= lt!292343 (MissingVacant!6733 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38114 (_ BitVec 32)) SeekEntryResult!6733)

(assert (=> b!632397 (= lt!292343 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!409154 () Bool)

(assert (=> start!57134 (=> (not res!409154) (not e!361544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57134 (= res!409154 (validMask!0 mask!3053))))

(assert (=> start!57134 e!361544))

(assert (=> start!57134 true))

(declare-fun array_inv!14060 (array!38114) Bool)

(assert (=> start!57134 (array_inv!14060 a!2986)))

(declare-fun b!632398 () Bool)

(declare-fun res!409153 () Bool)

(assert (=> b!632398 (=> (not res!409153) (not e!361544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632398 (= res!409153 (validKeyInArray!0 k0!1786))))

(declare-fun b!632399 () Bool)

(declare-fun e!361549 () Bool)

(declare-fun lt!292339 () array!38114)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!632399 (= e!361549 (arrayContainsKey!0 lt!292339 (select (arr!18286 a!2986) j!136) j!136))))

(declare-fun b!632400 () Bool)

(declare-fun e!361543 () Bool)

(declare-fun lt!292341 () SeekEntryResult!6733)

(declare-fun lt!292347 () SeekEntryResult!6733)

(assert (=> b!632400 (= e!361543 (= lt!292341 lt!292347))))

(declare-fun b!632401 () Bool)

(declare-fun res!409151 () Bool)

(assert (=> b!632401 (=> (not res!409151) (not e!361544))))

(assert (=> b!632401 (= res!409151 (and (= (size!18650 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18650 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18650 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632402 () Bool)

(declare-fun Unit!21293 () Unit!21290)

(assert (=> b!632402 (= e!361545 Unit!21293)))

(declare-fun b!632403 () Bool)

(declare-fun e!361547 () Bool)

(declare-fun e!361548 () Bool)

(assert (=> b!632403 (= e!361547 (not e!361548))))

(declare-fun res!409157 () Bool)

(assert (=> b!632403 (=> res!409157 e!361548)))

(declare-fun lt!292342 () SeekEntryResult!6733)

(assert (=> b!632403 (= res!409157 (not (= lt!292342 (Found!6733 index!984))))))

(declare-fun lt!292344 () Unit!21290)

(assert (=> b!632403 (= lt!292344 e!361545)))

(declare-fun c!71990 () Bool)

(assert (=> b!632403 (= c!71990 (= lt!292342 Undefined!6733))))

(declare-fun lt!292346 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38114 (_ BitVec 32)) SeekEntryResult!6733)

(assert (=> b!632403 (= lt!292342 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292346 lt!292339 mask!3053))))

(assert (=> b!632403 e!361543))

(declare-fun res!409150 () Bool)

(assert (=> b!632403 (=> (not res!409150) (not e!361543))))

(declare-fun lt!292340 () (_ BitVec 32))

(assert (=> b!632403 (= res!409150 (= lt!292347 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 lt!292346 lt!292339 mask!3053)))))

(assert (=> b!632403 (= lt!292347 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632403 (= lt!292346 (select (store (arr!18286 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292345 () Unit!21290)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38114 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21290)

(assert (=> b!632403 (= lt!292345 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632403 (= lt!292340 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632404 () Bool)

(declare-fun e!361541 () Bool)

(assert (=> b!632404 (= e!361541 e!361547)))

(declare-fun res!409152 () Bool)

(assert (=> b!632404 (=> (not res!409152) (not e!361547))))

(assert (=> b!632404 (= res!409152 (and (= lt!292341 (Found!6733 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18286 a!2986) index!984) (select (arr!18286 a!2986) j!136))) (not (= (select (arr!18286 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632404 (= lt!292341 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632405 () Bool)

(declare-fun res!409159 () Bool)

(assert (=> b!632405 (=> (not res!409159) (not e!361546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38114 (_ BitVec 32)) Bool)

(assert (=> b!632405 (= res!409159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632406 () Bool)

(assert (=> b!632406 (= e!361546 e!361541)))

(declare-fun res!409156 () Bool)

(assert (=> b!632406 (=> (not res!409156) (not e!361541))))

(assert (=> b!632406 (= res!409156 (= (select (store (arr!18286 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632406 (= lt!292339 (array!38115 (store (arr!18286 a!2986) i!1108 k0!1786) (size!18650 a!2986)))))

(declare-fun b!632407 () Bool)

(assert (=> b!632407 (= e!361548 e!361549)))

(declare-fun res!409160 () Bool)

(assert (=> b!632407 (=> res!409160 e!361549)))

(assert (=> b!632407 (= res!409160 (or (not (= (select (arr!18286 a!2986) j!136) lt!292346)) (not (= (select (arr!18286 a!2986) j!136) (select (store (arr!18286 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984)))))

(assert (=> b!632407 (= (select (store (arr!18286 a!2986) i!1108 k0!1786) index!984) (select (arr!18286 a!2986) j!136))))

(declare-fun b!632408 () Bool)

(declare-fun res!409149 () Bool)

(assert (=> b!632408 (=> (not res!409149) (not e!361544))))

(assert (=> b!632408 (= res!409149 (validKeyInArray!0 (select (arr!18286 a!2986) j!136)))))

(assert (= (and start!57134 res!409154) b!632401))

(assert (= (and b!632401 res!409151) b!632408))

(assert (= (and b!632408 res!409149) b!632398))

(assert (= (and b!632398 res!409153) b!632394))

(assert (= (and b!632394 res!409148) b!632397))

(assert (= (and b!632397 res!409147) b!632405))

(assert (= (and b!632405 res!409159) b!632395))

(assert (= (and b!632395 res!409155) b!632396))

(assert (= (and b!632396 res!409158) b!632406))

(assert (= (and b!632406 res!409156) b!632404))

(assert (= (and b!632404 res!409152) b!632403))

(assert (= (and b!632403 res!409150) b!632400))

(assert (= (and b!632403 c!71990) b!632393))

(assert (= (and b!632403 (not c!71990)) b!632402))

(assert (= (and b!632403 (not res!409157)) b!632407))

(assert (= (and b!632407 (not res!409160)) b!632399))

(declare-fun m!607265 () Bool)

(assert (=> b!632394 m!607265))

(declare-fun m!607267 () Bool)

(assert (=> start!57134 m!607267))

(declare-fun m!607269 () Bool)

(assert (=> start!57134 m!607269))

(declare-fun m!607271 () Bool)

(assert (=> b!632395 m!607271))

(declare-fun m!607273 () Bool)

(assert (=> b!632399 m!607273))

(assert (=> b!632399 m!607273))

(declare-fun m!607275 () Bool)

(assert (=> b!632399 m!607275))

(declare-fun m!607277 () Bool)

(assert (=> b!632398 m!607277))

(declare-fun m!607279 () Bool)

(assert (=> b!632405 m!607279))

(declare-fun m!607281 () Bool)

(assert (=> b!632396 m!607281))

(declare-fun m!607283 () Bool)

(assert (=> b!632406 m!607283))

(declare-fun m!607285 () Bool)

(assert (=> b!632406 m!607285))

(declare-fun m!607287 () Bool)

(assert (=> b!632397 m!607287))

(declare-fun m!607289 () Bool)

(assert (=> b!632403 m!607289))

(declare-fun m!607291 () Bool)

(assert (=> b!632403 m!607291))

(assert (=> b!632403 m!607283))

(declare-fun m!607293 () Bool)

(assert (=> b!632403 m!607293))

(assert (=> b!632403 m!607273))

(declare-fun m!607295 () Bool)

(assert (=> b!632403 m!607295))

(assert (=> b!632403 m!607273))

(declare-fun m!607297 () Bool)

(assert (=> b!632403 m!607297))

(declare-fun m!607299 () Bool)

(assert (=> b!632403 m!607299))

(assert (=> b!632407 m!607273))

(assert (=> b!632407 m!607283))

(declare-fun m!607301 () Bool)

(assert (=> b!632407 m!607301))

(declare-fun m!607303 () Bool)

(assert (=> b!632404 m!607303))

(assert (=> b!632404 m!607273))

(assert (=> b!632404 m!607273))

(declare-fun m!607305 () Bool)

(assert (=> b!632404 m!607305))

(assert (=> b!632408 m!607273))

(assert (=> b!632408 m!607273))

(declare-fun m!607307 () Bool)

(assert (=> b!632408 m!607307))

(check-sat (not b!632399) (not b!632398) (not b!632394) (not start!57134) (not b!632405) (not b!632395) (not b!632397) (not b!632403) (not b!632404) (not b!632408))
(check-sat)
(get-model)

(declare-fun b!632467 () Bool)

(declare-fun e!361586 () Bool)

(declare-fun e!361585 () Bool)

(assert (=> b!632467 (= e!361586 e!361585)))

(declare-fun res!409210 () Bool)

(assert (=> b!632467 (=> (not res!409210) (not e!361585))))

(declare-fun e!361588 () Bool)

(assert (=> b!632467 (= res!409210 (not e!361588))))

(declare-fun res!409211 () Bool)

(assert (=> b!632467 (=> (not res!409211) (not e!361588))))

(assert (=> b!632467 (= res!409211 (validKeyInArray!0 (select (arr!18286 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!632468 () Bool)

(declare-fun e!361587 () Bool)

(declare-fun call!33341 () Bool)

(assert (=> b!632468 (= e!361587 call!33341)))

(declare-fun b!632469 () Bool)

(assert (=> b!632469 (= e!361585 e!361587)))

(declare-fun c!71996 () Bool)

(assert (=> b!632469 (= c!71996 (validKeyInArray!0 (select (arr!18286 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!632470 () Bool)

(assert (=> b!632470 (= e!361587 call!33341)))

(declare-fun bm!33338 () Bool)

(assert (=> bm!33338 (= call!33341 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71996 (Cons!12376 (select (arr!18286 a!2986) #b00000000000000000000000000000000) Nil!12377) Nil!12377)))))

(declare-fun d!89283 () Bool)

(declare-fun res!409209 () Bool)

(assert (=> d!89283 (=> res!409209 e!361586)))

(assert (=> d!89283 (= res!409209 (bvsge #b00000000000000000000000000000000 (size!18650 a!2986)))))

(assert (=> d!89283 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12377) e!361586)))

(declare-fun b!632471 () Bool)

(declare-fun contains!3095 (List!12380 (_ BitVec 64)) Bool)

(assert (=> b!632471 (= e!361588 (contains!3095 Nil!12377 (select (arr!18286 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89283 (not res!409209)) b!632467))

(assert (= (and b!632467 res!409211) b!632471))

(assert (= (and b!632467 res!409210) b!632469))

(assert (= (and b!632469 c!71996) b!632468))

(assert (= (and b!632469 (not c!71996)) b!632470))

(assert (= (or b!632468 b!632470) bm!33338))

(declare-fun m!607353 () Bool)

(assert (=> b!632467 m!607353))

(assert (=> b!632467 m!607353))

(declare-fun m!607355 () Bool)

(assert (=> b!632467 m!607355))

(assert (=> b!632469 m!607353))

(assert (=> b!632469 m!607353))

(assert (=> b!632469 m!607355))

(assert (=> bm!33338 m!607353))

(declare-fun m!607357 () Bool)

(assert (=> bm!33338 m!607357))

(assert (=> b!632471 m!607353))

(assert (=> b!632471 m!607353))

(declare-fun m!607359 () Bool)

(assert (=> b!632471 m!607359))

(assert (=> b!632395 d!89283))

(declare-fun b!632480 () Bool)

(declare-fun e!361597 () Bool)

(declare-fun e!361596 () Bool)

(assert (=> b!632480 (= e!361597 e!361596)))

(declare-fun lt!292382 () (_ BitVec 64))

(assert (=> b!632480 (= lt!292382 (select (arr!18286 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!292383 () Unit!21290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38114 (_ BitVec 64) (_ BitVec 32)) Unit!21290)

(assert (=> b!632480 (= lt!292383 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!292382 #b00000000000000000000000000000000))))

(assert (=> b!632480 (arrayContainsKey!0 a!2986 lt!292382 #b00000000000000000000000000000000)))

(declare-fun lt!292381 () Unit!21290)

(assert (=> b!632480 (= lt!292381 lt!292383)))

(declare-fun res!409217 () Bool)

(assert (=> b!632480 (= res!409217 (= (seekEntryOrOpen!0 (select (arr!18286 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6733 #b00000000000000000000000000000000)))))

(assert (=> b!632480 (=> (not res!409217) (not e!361596))))

(declare-fun b!632481 () Bool)

(declare-fun call!33344 () Bool)

(assert (=> b!632481 (= e!361597 call!33344)))

(declare-fun b!632482 () Bool)

(assert (=> b!632482 (= e!361596 call!33344)))

(declare-fun d!89285 () Bool)

(declare-fun res!409216 () Bool)

(declare-fun e!361595 () Bool)

(assert (=> d!89285 (=> res!409216 e!361595)))

(assert (=> d!89285 (= res!409216 (bvsge #b00000000000000000000000000000000 (size!18650 a!2986)))))

(assert (=> d!89285 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!361595)))

(declare-fun b!632483 () Bool)

(assert (=> b!632483 (= e!361595 e!361597)))

(declare-fun c!71999 () Bool)

(assert (=> b!632483 (= c!71999 (validKeyInArray!0 (select (arr!18286 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33341 () Bool)

(assert (=> bm!33341 (= call!33344 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!89285 (not res!409216)) b!632483))

(assert (= (and b!632483 c!71999) b!632480))

(assert (= (and b!632483 (not c!71999)) b!632481))

(assert (= (and b!632480 res!409217) b!632482))

(assert (= (or b!632482 b!632481) bm!33341))

(assert (=> b!632480 m!607353))

(declare-fun m!607361 () Bool)

(assert (=> b!632480 m!607361))

(declare-fun m!607363 () Bool)

(assert (=> b!632480 m!607363))

(assert (=> b!632480 m!607353))

(declare-fun m!607365 () Bool)

(assert (=> b!632480 m!607365))

(assert (=> b!632483 m!607353))

(assert (=> b!632483 m!607353))

(assert (=> b!632483 m!607355))

(declare-fun m!607367 () Bool)

(assert (=> bm!33341 m!607367))

(assert (=> b!632405 d!89285))

(declare-fun d!89287 () Bool)

(assert (=> d!89287 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57134 d!89287))

(declare-fun d!89289 () Bool)

(assert (=> d!89289 (= (array_inv!14060 a!2986) (bvsge (size!18650 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57134 d!89289))

(declare-fun d!89291 () Bool)

(declare-fun res!409222 () Bool)

(declare-fun e!361602 () Bool)

(assert (=> d!89291 (=> res!409222 e!361602)))

(assert (=> d!89291 (= res!409222 (= (select (arr!18286 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89291 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!361602)))

(declare-fun b!632488 () Bool)

(declare-fun e!361603 () Bool)

(assert (=> b!632488 (= e!361602 e!361603)))

(declare-fun res!409223 () Bool)

(assert (=> b!632488 (=> (not res!409223) (not e!361603))))

(assert (=> b!632488 (= res!409223 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18650 a!2986)))))

(declare-fun b!632489 () Bool)

(assert (=> b!632489 (= e!361603 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89291 (not res!409222)) b!632488))

(assert (= (and b!632488 res!409223) b!632489))

(assert (=> d!89291 m!607353))

(declare-fun m!607369 () Bool)

(assert (=> b!632489 m!607369))

(assert (=> b!632394 d!89291))

(declare-fun d!89293 () Bool)

(declare-fun res!409224 () Bool)

(declare-fun e!361604 () Bool)

(assert (=> d!89293 (=> res!409224 e!361604)))

(assert (=> d!89293 (= res!409224 (= (select (arr!18286 lt!292339) j!136) (select (arr!18286 a!2986) j!136)))))

(assert (=> d!89293 (= (arrayContainsKey!0 lt!292339 (select (arr!18286 a!2986) j!136) j!136) e!361604)))

(declare-fun b!632490 () Bool)

(declare-fun e!361605 () Bool)

(assert (=> b!632490 (= e!361604 e!361605)))

(declare-fun res!409225 () Bool)

(assert (=> b!632490 (=> (not res!409225) (not e!361605))))

(assert (=> b!632490 (= res!409225 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18650 lt!292339)))))

(declare-fun b!632491 () Bool)

(assert (=> b!632491 (= e!361605 (arrayContainsKey!0 lt!292339 (select (arr!18286 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89293 (not res!409224)) b!632490))

(assert (= (and b!632490 res!409225) b!632491))

(declare-fun m!607371 () Bool)

(assert (=> d!89293 m!607371))

(assert (=> b!632491 m!607273))

(declare-fun m!607373 () Bool)

(assert (=> b!632491 m!607373))

(assert (=> b!632399 d!89293))

(declare-fun b!632512 () Bool)

(declare-fun e!361622 () SeekEntryResult!6733)

(assert (=> b!632512 (= e!361622 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632513 () Bool)

(declare-fun c!72006 () Bool)

(declare-fun lt!292389 () (_ BitVec 64))

(assert (=> b!632513 (= c!72006 (= lt!292389 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361621 () SeekEntryResult!6733)

(assert (=> b!632513 (= e!361621 e!361622)))

(declare-fun b!632514 () Bool)

(declare-fun e!361620 () SeekEntryResult!6733)

(assert (=> b!632514 (= e!361620 Undefined!6733)))

(declare-fun b!632515 () Bool)

(assert (=> b!632515 (= e!361620 e!361621)))

(declare-fun c!72008 () Bool)

(assert (=> b!632515 (= c!72008 (= lt!292389 (select (arr!18286 a!2986) j!136)))))

(declare-fun b!632516 () Bool)

(assert (=> b!632516 (= e!361622 (MissingVacant!6733 vacantSpotIndex!68))))

(declare-fun b!632517 () Bool)

(assert (=> b!632517 (= e!361621 (Found!6733 index!984))))

(declare-fun d!89295 () Bool)

(declare-fun lt!292388 () SeekEntryResult!6733)

(get-info :version)

(assert (=> d!89295 (and (or ((_ is Undefined!6733) lt!292388) (not ((_ is Found!6733) lt!292388)) (and (bvsge (index!29225 lt!292388) #b00000000000000000000000000000000) (bvslt (index!29225 lt!292388) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292388) ((_ is Found!6733) lt!292388) (not ((_ is MissingVacant!6733) lt!292388)) (not (= (index!29227 lt!292388) vacantSpotIndex!68)) (and (bvsge (index!29227 lt!292388) #b00000000000000000000000000000000) (bvslt (index!29227 lt!292388) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292388) (ite ((_ is Found!6733) lt!292388) (= (select (arr!18286 a!2986) (index!29225 lt!292388)) (select (arr!18286 a!2986) j!136)) (and ((_ is MissingVacant!6733) lt!292388) (= (index!29227 lt!292388) vacantSpotIndex!68) (= (select (arr!18286 a!2986) (index!29227 lt!292388)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89295 (= lt!292388 e!361620)))

(declare-fun c!72007 () Bool)

(assert (=> d!89295 (= c!72007 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89295 (= lt!292389 (select (arr!18286 a!2986) index!984))))

(assert (=> d!89295 (validMask!0 mask!3053)))

(assert (=> d!89295 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053) lt!292388)))

(assert (= (and d!89295 c!72007) b!632514))

(assert (= (and d!89295 (not c!72007)) b!632515))

(assert (= (and b!632515 c!72008) b!632517))

(assert (= (and b!632515 (not c!72008)) b!632513))

(assert (= (and b!632513 c!72006) b!632516))

(assert (= (and b!632513 (not c!72006)) b!632512))

(assert (=> b!632512 m!607289))

(assert (=> b!632512 m!607289))

(assert (=> b!632512 m!607273))

(declare-fun m!607383 () Bool)

(assert (=> b!632512 m!607383))

(declare-fun m!607385 () Bool)

(assert (=> d!89295 m!607385))

(declare-fun m!607387 () Bool)

(assert (=> d!89295 m!607387))

(assert (=> d!89295 m!607303))

(assert (=> d!89295 m!607267))

(assert (=> b!632404 d!89295))

(declare-fun d!89305 () Bool)

(assert (=> d!89305 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!632398 d!89305))

(declare-fun e!361625 () SeekEntryResult!6733)

(declare-fun b!632518 () Bool)

(assert (=> b!632518 (= e!361625 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292340 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!292346 lt!292339 mask!3053))))

(declare-fun b!632519 () Bool)

(declare-fun c!72009 () Bool)

(declare-fun lt!292391 () (_ BitVec 64))

(assert (=> b!632519 (= c!72009 (= lt!292391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361624 () SeekEntryResult!6733)

(assert (=> b!632519 (= e!361624 e!361625)))

(declare-fun b!632520 () Bool)

(declare-fun e!361623 () SeekEntryResult!6733)

(assert (=> b!632520 (= e!361623 Undefined!6733)))

(declare-fun b!632521 () Bool)

(assert (=> b!632521 (= e!361623 e!361624)))

(declare-fun c!72011 () Bool)

(assert (=> b!632521 (= c!72011 (= lt!292391 lt!292346))))

(declare-fun b!632522 () Bool)

(assert (=> b!632522 (= e!361625 (MissingVacant!6733 vacantSpotIndex!68))))

(declare-fun b!632523 () Bool)

(assert (=> b!632523 (= e!361624 (Found!6733 lt!292340))))

(declare-fun lt!292390 () SeekEntryResult!6733)

(declare-fun d!89307 () Bool)

(assert (=> d!89307 (and (or ((_ is Undefined!6733) lt!292390) (not ((_ is Found!6733) lt!292390)) (and (bvsge (index!29225 lt!292390) #b00000000000000000000000000000000) (bvslt (index!29225 lt!292390) (size!18650 lt!292339)))) (or ((_ is Undefined!6733) lt!292390) ((_ is Found!6733) lt!292390) (not ((_ is MissingVacant!6733) lt!292390)) (not (= (index!29227 lt!292390) vacantSpotIndex!68)) (and (bvsge (index!29227 lt!292390) #b00000000000000000000000000000000) (bvslt (index!29227 lt!292390) (size!18650 lt!292339)))) (or ((_ is Undefined!6733) lt!292390) (ite ((_ is Found!6733) lt!292390) (= (select (arr!18286 lt!292339) (index!29225 lt!292390)) lt!292346) (and ((_ is MissingVacant!6733) lt!292390) (= (index!29227 lt!292390) vacantSpotIndex!68) (= (select (arr!18286 lt!292339) (index!29227 lt!292390)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89307 (= lt!292390 e!361623)))

(declare-fun c!72010 () Bool)

(assert (=> d!89307 (= c!72010 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89307 (= lt!292391 (select (arr!18286 lt!292339) lt!292340))))

(assert (=> d!89307 (validMask!0 mask!3053)))

(assert (=> d!89307 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 lt!292346 lt!292339 mask!3053) lt!292390)))

(assert (= (and d!89307 c!72010) b!632520))

(assert (= (and d!89307 (not c!72010)) b!632521))

(assert (= (and b!632521 c!72011) b!632523))

(assert (= (and b!632521 (not c!72011)) b!632519))

(assert (= (and b!632519 c!72009) b!632522))

(assert (= (and b!632519 (not c!72009)) b!632518))

(declare-fun m!607389 () Bool)

(assert (=> b!632518 m!607389))

(assert (=> b!632518 m!607389))

(declare-fun m!607391 () Bool)

(assert (=> b!632518 m!607391))

(declare-fun m!607393 () Bool)

(assert (=> d!89307 m!607393))

(declare-fun m!607395 () Bool)

(assert (=> d!89307 m!607395))

(declare-fun m!607397 () Bool)

(assert (=> d!89307 m!607397))

(assert (=> d!89307 m!607267))

(assert (=> b!632403 d!89307))

(declare-fun e!361628 () SeekEntryResult!6733)

(declare-fun b!632524 () Bool)

(assert (=> b!632524 (= e!361628 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!292346 lt!292339 mask!3053))))

(declare-fun b!632525 () Bool)

(declare-fun c!72012 () Bool)

(declare-fun lt!292393 () (_ BitVec 64))

(assert (=> b!632525 (= c!72012 (= lt!292393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361627 () SeekEntryResult!6733)

(assert (=> b!632525 (= e!361627 e!361628)))

(declare-fun b!632526 () Bool)

(declare-fun e!361626 () SeekEntryResult!6733)

(assert (=> b!632526 (= e!361626 Undefined!6733)))

(declare-fun b!632527 () Bool)

(assert (=> b!632527 (= e!361626 e!361627)))

(declare-fun c!72014 () Bool)

(assert (=> b!632527 (= c!72014 (= lt!292393 lt!292346))))

(declare-fun b!632528 () Bool)

(assert (=> b!632528 (= e!361628 (MissingVacant!6733 vacantSpotIndex!68))))

(declare-fun b!632529 () Bool)

(assert (=> b!632529 (= e!361627 (Found!6733 index!984))))

(declare-fun d!89309 () Bool)

(declare-fun lt!292392 () SeekEntryResult!6733)

(assert (=> d!89309 (and (or ((_ is Undefined!6733) lt!292392) (not ((_ is Found!6733) lt!292392)) (and (bvsge (index!29225 lt!292392) #b00000000000000000000000000000000) (bvslt (index!29225 lt!292392) (size!18650 lt!292339)))) (or ((_ is Undefined!6733) lt!292392) ((_ is Found!6733) lt!292392) (not ((_ is MissingVacant!6733) lt!292392)) (not (= (index!29227 lt!292392) vacantSpotIndex!68)) (and (bvsge (index!29227 lt!292392) #b00000000000000000000000000000000) (bvslt (index!29227 lt!292392) (size!18650 lt!292339)))) (or ((_ is Undefined!6733) lt!292392) (ite ((_ is Found!6733) lt!292392) (= (select (arr!18286 lt!292339) (index!29225 lt!292392)) lt!292346) (and ((_ is MissingVacant!6733) lt!292392) (= (index!29227 lt!292392) vacantSpotIndex!68) (= (select (arr!18286 lt!292339) (index!29227 lt!292392)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89309 (= lt!292392 e!361626)))

(declare-fun c!72013 () Bool)

(assert (=> d!89309 (= c!72013 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89309 (= lt!292393 (select (arr!18286 lt!292339) index!984))))

(assert (=> d!89309 (validMask!0 mask!3053)))

(assert (=> d!89309 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292346 lt!292339 mask!3053) lt!292392)))

(assert (= (and d!89309 c!72013) b!632526))

(assert (= (and d!89309 (not c!72013)) b!632527))

(assert (= (and b!632527 c!72014) b!632529))

(assert (= (and b!632527 (not c!72014)) b!632525))

(assert (= (and b!632525 c!72012) b!632528))

(assert (= (and b!632525 (not c!72012)) b!632524))

(assert (=> b!632524 m!607289))

(assert (=> b!632524 m!607289))

(declare-fun m!607399 () Bool)

(assert (=> b!632524 m!607399))

(declare-fun m!607401 () Bool)

(assert (=> d!89309 m!607401))

(declare-fun m!607403 () Bool)

(assert (=> d!89309 m!607403))

(declare-fun m!607405 () Bool)

(assert (=> d!89309 m!607405))

(assert (=> d!89309 m!607267))

(assert (=> b!632403 d!89309))

(declare-fun d!89311 () Bool)

(declare-fun lt!292396 () (_ BitVec 32))

(assert (=> d!89311 (and (bvsge lt!292396 #b00000000000000000000000000000000) (bvslt lt!292396 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89311 (= lt!292396 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89311 (validMask!0 mask!3053)))

(assert (=> d!89311 (= (nextIndex!0 index!984 x!910 mask!3053) lt!292396)))

(declare-fun bs!19046 () Bool)

(assert (= bs!19046 d!89311))

(declare-fun m!607407 () Bool)

(assert (=> bs!19046 m!607407))

(assert (=> bs!19046 m!607267))

(assert (=> b!632403 d!89311))

(declare-fun d!89313 () Bool)

(declare-fun e!361667 () Bool)

(assert (=> d!89313 e!361667))

(declare-fun res!409245 () Bool)

(assert (=> d!89313 (=> (not res!409245) (not e!361667))))

(assert (=> d!89313 (= res!409245 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18650 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18650 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18650 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18650 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18650 a!2986))))))

(declare-fun lt!292417 () Unit!21290)

(declare-fun choose!9 (array!38114 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21290)

(assert (=> d!89313 (= lt!292417 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89313 (validMask!0 mask!3053)))

(assert (=> d!89313 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 mask!3053) lt!292417)))

(declare-fun b!632595 () Bool)

(assert (=> b!632595 (= e!361667 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 (select (store (arr!18286 a!2986) i!1108 k0!1786) j!136) (array!38115 (store (arr!18286 a!2986) i!1108 k0!1786) (size!18650 a!2986)) mask!3053)))))

(assert (= (and d!89313 res!409245) b!632595))

(declare-fun m!607451 () Bool)

(assert (=> d!89313 m!607451))

(assert (=> d!89313 m!607267))

(assert (=> b!632595 m!607283))

(assert (=> b!632595 m!607273))

(assert (=> b!632595 m!607297))

(assert (=> b!632595 m!607291))

(declare-fun m!607453 () Bool)

(assert (=> b!632595 m!607453))

(assert (=> b!632595 m!607291))

(assert (=> b!632595 m!607273))

(assert (=> b!632403 d!89313))

(declare-fun e!361670 () SeekEntryResult!6733)

(declare-fun b!632596 () Bool)

(assert (=> b!632596 (= e!361670 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292340 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632597 () Bool)

(declare-fun c!72042 () Bool)

(declare-fun lt!292420 () (_ BitVec 64))

(assert (=> b!632597 (= c!72042 (= lt!292420 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361669 () SeekEntryResult!6733)

(assert (=> b!632597 (= e!361669 e!361670)))

(declare-fun b!632598 () Bool)

(declare-fun e!361668 () SeekEntryResult!6733)

(assert (=> b!632598 (= e!361668 Undefined!6733)))

(declare-fun b!632599 () Bool)

(assert (=> b!632599 (= e!361668 e!361669)))

(declare-fun c!72044 () Bool)

(assert (=> b!632599 (= c!72044 (= lt!292420 (select (arr!18286 a!2986) j!136)))))

(declare-fun b!632600 () Bool)

(assert (=> b!632600 (= e!361670 (MissingVacant!6733 vacantSpotIndex!68))))

(declare-fun b!632601 () Bool)

(assert (=> b!632601 (= e!361669 (Found!6733 lt!292340))))

(declare-fun lt!292419 () SeekEntryResult!6733)

(declare-fun d!89327 () Bool)

(assert (=> d!89327 (and (or ((_ is Undefined!6733) lt!292419) (not ((_ is Found!6733) lt!292419)) (and (bvsge (index!29225 lt!292419) #b00000000000000000000000000000000) (bvslt (index!29225 lt!292419) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292419) ((_ is Found!6733) lt!292419) (not ((_ is MissingVacant!6733) lt!292419)) (not (= (index!29227 lt!292419) vacantSpotIndex!68)) (and (bvsge (index!29227 lt!292419) #b00000000000000000000000000000000) (bvslt (index!29227 lt!292419) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292419) (ite ((_ is Found!6733) lt!292419) (= (select (arr!18286 a!2986) (index!29225 lt!292419)) (select (arr!18286 a!2986) j!136)) (and ((_ is MissingVacant!6733) lt!292419) (= (index!29227 lt!292419) vacantSpotIndex!68) (= (select (arr!18286 a!2986) (index!29227 lt!292419)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89327 (= lt!292419 e!361668)))

(declare-fun c!72043 () Bool)

(assert (=> d!89327 (= c!72043 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89327 (= lt!292420 (select (arr!18286 a!2986) lt!292340))))

(assert (=> d!89327 (validMask!0 mask!3053)))

(assert (=> d!89327 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292340 vacantSpotIndex!68 (select (arr!18286 a!2986) j!136) a!2986 mask!3053) lt!292419)))

(assert (= (and d!89327 c!72043) b!632598))

(assert (= (and d!89327 (not c!72043)) b!632599))

(assert (= (and b!632599 c!72044) b!632601))

(assert (= (and b!632599 (not c!72044)) b!632597))

(assert (= (and b!632597 c!72042) b!632600))

(assert (= (and b!632597 (not c!72042)) b!632596))

(assert (=> b!632596 m!607389))

(assert (=> b!632596 m!607389))

(assert (=> b!632596 m!607273))

(declare-fun m!607455 () Bool)

(assert (=> b!632596 m!607455))

(declare-fun m!607457 () Bool)

(assert (=> d!89327 m!607457))

(declare-fun m!607459 () Bool)

(assert (=> d!89327 m!607459))

(declare-fun m!607461 () Bool)

(assert (=> d!89327 m!607461))

(assert (=> d!89327 m!607267))

(assert (=> b!632403 d!89327))

(declare-fun d!89329 () Bool)

(assert (=> d!89329 (= (validKeyInArray!0 (select (arr!18286 a!2986) j!136)) (and (not (= (select (arr!18286 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18286 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!632408 d!89329))

(declare-fun e!361682 () SeekEntryResult!6733)

(declare-fun b!632617 () Bool)

(declare-fun lt!292432 () SeekEntryResult!6733)

(assert (=> b!632617 (= e!361682 (seekKeyOrZeroReturnVacant!0 (x!57985 lt!292432) (index!29226 lt!292432) (index!29226 lt!292432) k0!1786 a!2986 mask!3053))))

(declare-fun b!632618 () Bool)

(declare-fun e!361680 () SeekEntryResult!6733)

(assert (=> b!632618 (= e!361680 Undefined!6733)))

(declare-fun d!89331 () Bool)

(declare-fun lt!292430 () SeekEntryResult!6733)

(assert (=> d!89331 (and (or ((_ is Undefined!6733) lt!292430) (not ((_ is Found!6733) lt!292430)) (and (bvsge (index!29225 lt!292430) #b00000000000000000000000000000000) (bvslt (index!29225 lt!292430) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292430) ((_ is Found!6733) lt!292430) (not ((_ is MissingZero!6733) lt!292430)) (and (bvsge (index!29224 lt!292430) #b00000000000000000000000000000000) (bvslt (index!29224 lt!292430) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292430) ((_ is Found!6733) lt!292430) ((_ is MissingZero!6733) lt!292430) (not ((_ is MissingVacant!6733) lt!292430)) (and (bvsge (index!29227 lt!292430) #b00000000000000000000000000000000) (bvslt (index!29227 lt!292430) (size!18650 a!2986)))) (or ((_ is Undefined!6733) lt!292430) (ite ((_ is Found!6733) lt!292430) (= (select (arr!18286 a!2986) (index!29225 lt!292430)) k0!1786) (ite ((_ is MissingZero!6733) lt!292430) (= (select (arr!18286 a!2986) (index!29224 lt!292430)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6733) lt!292430) (= (select (arr!18286 a!2986) (index!29227 lt!292430)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89331 (= lt!292430 e!361680)))

(declare-fun c!72053 () Bool)

(assert (=> d!89331 (= c!72053 (and ((_ is Intermediate!6733) lt!292432) (undefined!7545 lt!292432)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38114 (_ BitVec 32)) SeekEntryResult!6733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89331 (= lt!292432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89331 (validMask!0 mask!3053)))

(assert (=> d!89331 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!292430)))

(declare-fun b!632619 () Bool)

(declare-fun c!72051 () Bool)

(declare-fun lt!292431 () (_ BitVec 64))

(assert (=> b!632619 (= c!72051 (= lt!292431 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361681 () SeekEntryResult!6733)

(assert (=> b!632619 (= e!361681 e!361682)))

(declare-fun b!632620 () Bool)

(assert (=> b!632620 (= e!361680 e!361681)))

(assert (=> b!632620 (= lt!292431 (select (arr!18286 a!2986) (index!29226 lt!292432)))))

(declare-fun c!72052 () Bool)

(assert (=> b!632620 (= c!72052 (= lt!292431 k0!1786))))

(declare-fun b!632621 () Bool)

(assert (=> b!632621 (= e!361682 (MissingZero!6733 (index!29226 lt!292432)))))

(declare-fun b!632622 () Bool)

(assert (=> b!632622 (= e!361681 (Found!6733 (index!29226 lt!292432)))))

(assert (= (and d!89331 c!72053) b!632618))

(assert (= (and d!89331 (not c!72053)) b!632620))

(assert (= (and b!632620 c!72052) b!632622))

(assert (= (and b!632620 (not c!72052)) b!632619))

(assert (= (and b!632619 c!72051) b!632621))

(assert (= (and b!632619 (not c!72051)) b!632617))

(declare-fun m!607467 () Bool)

(assert (=> b!632617 m!607467))

(declare-fun m!607469 () Bool)

(assert (=> d!89331 m!607469))

(assert (=> d!89331 m!607267))

(declare-fun m!607471 () Bool)

(assert (=> d!89331 m!607471))

(assert (=> d!89331 m!607469))

(declare-fun m!607473 () Bool)

(assert (=> d!89331 m!607473))

(declare-fun m!607475 () Bool)

(assert (=> d!89331 m!607475))

(declare-fun m!607477 () Bool)

(assert (=> d!89331 m!607477))

(declare-fun m!607479 () Bool)

(assert (=> b!632620 m!607479))

(assert (=> b!632397 d!89331))

(check-sat (not b!632512) (not b!632518) (not d!89295) (not b!632595) (not b!632524) (not d!89307) (not d!89313) (not b!632480) (not d!89311) (not b!632617) (not b!632596) (not b!632483) (not bm!33341) (not b!632471) (not d!89327) (not b!632467) (not b!632491) (not d!89309) (not b!632469) (not b!632489) (not bm!33338) (not d!89331))
(check-sat)
