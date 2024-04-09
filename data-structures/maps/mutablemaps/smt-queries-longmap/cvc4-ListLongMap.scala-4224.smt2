; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58042 () Bool)

(assert start!58042)

(declare-fun b!641388 () Bool)

(declare-fun res!415549 () Bool)

(declare-fun e!367252 () Bool)

(assert (=> b!641388 (=> (not res!415549) (not e!367252))))

(declare-datatypes ((array!38344 0))(
  ( (array!38345 (arr!18386 (Array (_ BitVec 32) (_ BitVec 64))) (size!18750 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38344)

(declare-datatypes ((List!12480 0))(
  ( (Nil!12477) (Cons!12476 (h!13521 (_ BitVec 64)) (t!18716 List!12480)) )
))
(declare-fun arrayNoDuplicates!0 (array!38344 (_ BitVec 32) List!12480) Bool)

(assert (=> b!641388 (= res!415549 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12477))))

(declare-fun b!641389 () Bool)

(declare-fun e!367262 () Bool)

(declare-datatypes ((SeekEntryResult!6833 0))(
  ( (MissingZero!6833 (index!29654 (_ BitVec 32))) (Found!6833 (index!29655 (_ BitVec 32))) (Intermediate!6833 (undefined!7645 Bool) (index!29656 (_ BitVec 32)) (x!58439 (_ BitVec 32))) (Undefined!6833) (MissingVacant!6833 (index!29657 (_ BitVec 32))) )
))
(declare-fun lt!297006 () SeekEntryResult!6833)

(declare-fun lt!297014 () SeekEntryResult!6833)

(assert (=> b!641389 (= e!367262 (= lt!297006 lt!297014))))

(declare-fun b!641390 () Bool)

(declare-fun res!415533 () Bool)

(declare-fun e!367258 () Bool)

(assert (=> b!641390 (=> (not res!415533) (not e!367258))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!641390 (= res!415533 (validKeyInArray!0 k!1786))))

(declare-fun b!641391 () Bool)

(declare-fun e!367256 () Bool)

(declare-fun e!367254 () Bool)

(assert (=> b!641391 (= e!367256 e!367254)))

(declare-fun res!415543 () Bool)

(assert (=> b!641391 (=> res!415543 e!367254)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!297009 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!297017 () (_ BitVec 64))

(assert (=> b!641391 (= res!415543 (or (not (= (select (arr!18386 a!2986) j!136) lt!297017)) (not (= (select (arr!18386 a!2986) j!136) lt!297009)) (bvsge j!136 index!984)))))

(declare-fun e!367260 () Bool)

(assert (=> b!641391 e!367260))

(declare-fun res!415545 () Bool)

(assert (=> b!641391 (=> (not res!415545) (not e!367260))))

(assert (=> b!641391 (= res!415545 (= lt!297009 (select (arr!18386 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!641391 (= lt!297009 (select (store (arr!18386 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!641392 () Bool)

(declare-fun e!367253 () Bool)

(declare-fun e!367261 () Bool)

(assert (=> b!641392 (= e!367253 e!367261)))

(declare-fun res!415534 () Bool)

(assert (=> b!641392 (=> (not res!415534) (not e!367261))))

(declare-fun lt!297008 () array!38344)

(declare-fun arrayContainsKey!0 (array!38344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!641392 (= res!415534 (arrayContainsKey!0 lt!297008 (select (arr!18386 a!2986) j!136) j!136))))

(declare-fun b!641393 () Bool)

(declare-fun e!367263 () Bool)

(declare-fun e!367257 () Bool)

(assert (=> b!641393 (= e!367263 e!367257)))

(declare-fun res!415546 () Bool)

(assert (=> b!641393 (=> (not res!415546) (not e!367257))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!641393 (= res!415546 (and (= lt!297006 (Found!6833 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18386 a!2986) index!984) (select (arr!18386 a!2986) j!136))) (not (= (select (arr!18386 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38344 (_ BitVec 32)) SeekEntryResult!6833)

(assert (=> b!641393 (= lt!297006 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18386 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641394 () Bool)

(declare-fun e!367264 () Bool)

(declare-fun contains!3134 (List!12480 (_ BitVec 64)) Bool)

(assert (=> b!641394 (= e!367264 (not (contains!3134 Nil!12477 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641395 () Bool)

(assert (=> b!641395 (= e!367257 (not e!367256))))

(declare-fun res!415548 () Bool)

(assert (=> b!641395 (=> res!415548 e!367256)))

(declare-fun lt!297015 () SeekEntryResult!6833)

(assert (=> b!641395 (= res!415548 (not (= lt!297015 (Found!6833 index!984))))))

(declare-datatypes ((Unit!21690 0))(
  ( (Unit!21691) )
))
(declare-fun lt!297011 () Unit!21690)

(declare-fun e!367255 () Unit!21690)

(assert (=> b!641395 (= lt!297011 e!367255)))

(declare-fun c!73295 () Bool)

(assert (=> b!641395 (= c!73295 (= lt!297015 Undefined!6833))))

(assert (=> b!641395 (= lt!297015 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297017 lt!297008 mask!3053))))

(assert (=> b!641395 e!367262))

(declare-fun res!415536 () Bool)

(assert (=> b!641395 (=> (not res!415536) (not e!367262))))

(declare-fun lt!297007 () (_ BitVec 32))

(assert (=> b!641395 (= res!415536 (= lt!297014 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 lt!297017 lt!297008 mask!3053)))))

(assert (=> b!641395 (= lt!297014 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 (select (arr!18386 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!641395 (= lt!297017 (select (store (arr!18386 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297012 () Unit!21690)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38344 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21690)

(assert (=> b!641395 (= lt!297012 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!641395 (= lt!297007 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!641396 () Bool)

(declare-fun e!367259 () Bool)

(assert (=> b!641396 (= e!367259 e!367264)))

(declare-fun res!415539 () Bool)

(assert (=> b!641396 (=> (not res!415539) (not e!367264))))

(assert (=> b!641396 (= res!415539 (not (contains!3134 Nil!12477 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641397 () Bool)

(declare-fun res!415544 () Bool)

(assert (=> b!641397 (=> (not res!415544) (not e!367252))))

(assert (=> b!641397 (= res!415544 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18386 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641398 () Bool)

(declare-fun res!415542 () Bool)

(assert (=> b!641398 (=> (not res!415542) (not e!367258))))

(assert (=> b!641398 (= res!415542 (and (= (size!18750 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18750 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18750 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!641399 () Bool)

(declare-fun Unit!21692 () Unit!21690)

(assert (=> b!641399 (= e!367255 Unit!21692)))

(assert (=> b!641399 false))

(declare-fun b!641400 () Bool)

(assert (=> b!641400 (= e!367254 e!367259)))

(declare-fun res!415531 () Bool)

(assert (=> b!641400 (=> res!415531 e!367259)))

(assert (=> b!641400 (= res!415531 (or (bvsge (size!18750 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18750 a!2986))))))

(assert (=> b!641400 (arrayNoDuplicates!0 lt!297008 j!136 Nil!12477)))

(declare-fun lt!297018 () Unit!21690)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38344 (_ BitVec 32) (_ BitVec 32)) Unit!21690)

(assert (=> b!641400 (= lt!297018 (lemmaNoDuplicateFromThenFromBigger!0 lt!297008 #b00000000000000000000000000000000 j!136))))

(assert (=> b!641400 (arrayNoDuplicates!0 lt!297008 #b00000000000000000000000000000000 Nil!12477)))

(declare-fun lt!297010 () Unit!21690)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38344 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12480) Unit!21690)

(assert (=> b!641400 (= lt!297010 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12477))))

(assert (=> b!641400 (arrayContainsKey!0 lt!297008 (select (arr!18386 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297016 () Unit!21690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38344 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21690)

(assert (=> b!641400 (= lt!297016 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297008 (select (arr!18386 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!641401 () Bool)

(declare-fun res!415550 () Bool)

(assert (=> b!641401 (=> (not res!415550) (not e!367252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38344 (_ BitVec 32)) Bool)

(assert (=> b!641401 (= res!415550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!415540 () Bool)

(assert (=> start!58042 (=> (not res!415540) (not e!367258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58042 (= res!415540 (validMask!0 mask!3053))))

(assert (=> start!58042 e!367258))

(assert (=> start!58042 true))

(declare-fun array_inv!14160 (array!38344) Bool)

(assert (=> start!58042 (array_inv!14160 a!2986)))

(declare-fun b!641387 () Bool)

(assert (=> b!641387 (= e!367260 e!367253)))

(declare-fun res!415532 () Bool)

(assert (=> b!641387 (=> res!415532 e!367253)))

(assert (=> b!641387 (= res!415532 (or (not (= (select (arr!18386 a!2986) j!136) lt!297017)) (not (= (select (arr!18386 a!2986) j!136) lt!297009)) (bvsge j!136 index!984)))))

(declare-fun b!641402 () Bool)

(declare-fun res!415541 () Bool)

(assert (=> b!641402 (=> res!415541 e!367259)))

(declare-fun noDuplicate!405 (List!12480) Bool)

(assert (=> b!641402 (= res!415541 (not (noDuplicate!405 Nil!12477)))))

(declare-fun b!641403 () Bool)

(assert (=> b!641403 (= e!367258 e!367252)))

(declare-fun res!415538 () Bool)

(assert (=> b!641403 (=> (not res!415538) (not e!367252))))

(declare-fun lt!297013 () SeekEntryResult!6833)

(assert (=> b!641403 (= res!415538 (or (= lt!297013 (MissingZero!6833 i!1108)) (= lt!297013 (MissingVacant!6833 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38344 (_ BitVec 32)) SeekEntryResult!6833)

(assert (=> b!641403 (= lt!297013 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!641404 () Bool)

(declare-fun res!415547 () Bool)

(assert (=> b!641404 (=> (not res!415547) (not e!367258))))

(assert (=> b!641404 (= res!415547 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!641405 () Bool)

(declare-fun Unit!21693 () Unit!21690)

(assert (=> b!641405 (= e!367255 Unit!21693)))

(declare-fun b!641406 () Bool)

(declare-fun res!415535 () Bool)

(assert (=> b!641406 (=> (not res!415535) (not e!367258))))

(assert (=> b!641406 (= res!415535 (validKeyInArray!0 (select (arr!18386 a!2986) j!136)))))

(declare-fun b!641407 () Bool)

(assert (=> b!641407 (= e!367252 e!367263)))

(declare-fun res!415537 () Bool)

(assert (=> b!641407 (=> (not res!415537) (not e!367263))))

(assert (=> b!641407 (= res!415537 (= (select (store (arr!18386 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641407 (= lt!297008 (array!38345 (store (arr!18386 a!2986) i!1108 k!1786) (size!18750 a!2986)))))

(declare-fun b!641408 () Bool)

(assert (=> b!641408 (= e!367261 (arrayContainsKey!0 lt!297008 (select (arr!18386 a!2986) j!136) index!984))))

(assert (= (and start!58042 res!415540) b!641398))

(assert (= (and b!641398 res!415542) b!641406))

(assert (= (and b!641406 res!415535) b!641390))

(assert (= (and b!641390 res!415533) b!641404))

(assert (= (and b!641404 res!415547) b!641403))

(assert (= (and b!641403 res!415538) b!641401))

(assert (= (and b!641401 res!415550) b!641388))

(assert (= (and b!641388 res!415549) b!641397))

(assert (= (and b!641397 res!415544) b!641407))

(assert (= (and b!641407 res!415537) b!641393))

(assert (= (and b!641393 res!415546) b!641395))

(assert (= (and b!641395 res!415536) b!641389))

(assert (= (and b!641395 c!73295) b!641399))

(assert (= (and b!641395 (not c!73295)) b!641405))

(assert (= (and b!641395 (not res!415548)) b!641391))

(assert (= (and b!641391 res!415545) b!641387))

(assert (= (and b!641387 (not res!415532)) b!641392))

(assert (= (and b!641392 res!415534) b!641408))

(assert (= (and b!641391 (not res!415543)) b!641400))

(assert (= (and b!641400 (not res!415531)) b!641402))

(assert (= (and b!641402 (not res!415541)) b!641396))

(assert (= (and b!641396 res!415539) b!641394))

(declare-fun m!615263 () Bool)

(assert (=> b!641406 m!615263))

(assert (=> b!641406 m!615263))

(declare-fun m!615265 () Bool)

(assert (=> b!641406 m!615265))

(declare-fun m!615267 () Bool)

(assert (=> b!641402 m!615267))

(declare-fun m!615269 () Bool)

(assert (=> b!641403 m!615269))

(declare-fun m!615271 () Bool)

(assert (=> b!641401 m!615271))

(assert (=> b!641392 m!615263))

(assert (=> b!641392 m!615263))

(declare-fun m!615273 () Bool)

(assert (=> b!641392 m!615273))

(declare-fun m!615275 () Bool)

(assert (=> b!641388 m!615275))

(assert (=> b!641391 m!615263))

(declare-fun m!615277 () Bool)

(assert (=> b!641391 m!615277))

(declare-fun m!615279 () Bool)

(assert (=> b!641391 m!615279))

(declare-fun m!615281 () Bool)

(assert (=> b!641394 m!615281))

(assert (=> b!641408 m!615263))

(assert (=> b!641408 m!615263))

(declare-fun m!615283 () Bool)

(assert (=> b!641408 m!615283))

(declare-fun m!615285 () Bool)

(assert (=> b!641393 m!615285))

(assert (=> b!641393 m!615263))

(assert (=> b!641393 m!615263))

(declare-fun m!615287 () Bool)

(assert (=> b!641393 m!615287))

(assert (=> b!641407 m!615277))

(declare-fun m!615289 () Bool)

(assert (=> b!641407 m!615289))

(declare-fun m!615291 () Bool)

(assert (=> start!58042 m!615291))

(declare-fun m!615293 () Bool)

(assert (=> start!58042 m!615293))

(assert (=> b!641400 m!615263))

(declare-fun m!615295 () Bool)

(assert (=> b!641400 m!615295))

(assert (=> b!641400 m!615263))

(declare-fun m!615297 () Bool)

(assert (=> b!641400 m!615297))

(declare-fun m!615299 () Bool)

(assert (=> b!641400 m!615299))

(declare-fun m!615301 () Bool)

(assert (=> b!641400 m!615301))

(assert (=> b!641400 m!615263))

(declare-fun m!615303 () Bool)

(assert (=> b!641400 m!615303))

(declare-fun m!615305 () Bool)

(assert (=> b!641400 m!615305))

(declare-fun m!615307 () Bool)

(assert (=> b!641397 m!615307))

(declare-fun m!615309 () Bool)

(assert (=> b!641390 m!615309))

(declare-fun m!615311 () Bool)

(assert (=> b!641396 m!615311))

(declare-fun m!615313 () Bool)

(assert (=> b!641395 m!615313))

(declare-fun m!615315 () Bool)

(assert (=> b!641395 m!615315))

(declare-fun m!615317 () Bool)

(assert (=> b!641395 m!615317))

(assert (=> b!641395 m!615263))

(assert (=> b!641395 m!615263))

(declare-fun m!615319 () Bool)

(assert (=> b!641395 m!615319))

(assert (=> b!641395 m!615277))

(declare-fun m!615321 () Bool)

(assert (=> b!641395 m!615321))

(declare-fun m!615323 () Bool)

(assert (=> b!641395 m!615323))

(declare-fun m!615325 () Bool)

(assert (=> b!641404 m!615325))

(assert (=> b!641387 m!615263))

(push 1)

(assert (not b!641396))

(assert (not b!641408))

(assert (not start!58042))

(assert (not b!641404))

(assert (not b!641402))

(assert (not b!641400))

(assert (not b!641388))

(assert (not b!641406))

(assert (not b!641390))

(assert (not b!641394))

(assert (not b!641403))

(assert (not b!641393))

(assert (not b!641392))

(assert (not b!641395))

(assert (not b!641401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!90521 () Bool)

(declare-fun res!415583 () Bool)

(declare-fun e!367311 () Bool)

(assert (=> d!90521 (=> res!415583 e!367311)))

(assert (=> d!90521 (= res!415583 (= (select (arr!18386 lt!297008) j!136) (select (arr!18386 a!2986) j!136)))))

(assert (=> d!90521 (= (arrayContainsKey!0 lt!297008 (select (arr!18386 a!2986) j!136) j!136) e!367311)))

(declare-fun b!641469 () Bool)

(declare-fun e!367312 () Bool)

(assert (=> b!641469 (= e!367311 e!367312)))

(declare-fun res!415584 () Bool)

(assert (=> b!641469 (=> (not res!415584) (not e!367312))))

(assert (=> b!641469 (= res!415584 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18750 lt!297008)))))

(declare-fun b!641470 () Bool)

(assert (=> b!641470 (= e!367312 (arrayContainsKey!0 lt!297008 (select (arr!18386 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90521 (not res!415583)) b!641469))

(assert (= (and b!641469 res!415584) b!641470))

(declare-fun m!615359 () Bool)

(assert (=> d!90521 m!615359))

(assert (=> b!641470 m!615263))

(declare-fun m!615361 () Bool)

(assert (=> b!641470 m!615361))

(assert (=> b!641392 d!90521))

(declare-fun lt!297069 () SeekEntryResult!6833)

(declare-fun e!367363 () SeekEntryResult!6833)

(declare-fun b!641544 () Bool)

(assert (=> b!641544 (= e!367363 (seekKeyOrZeroReturnVacant!0 (x!58439 lt!297069) (index!29656 lt!297069) (index!29656 lt!297069) k!1786 a!2986 mask!3053))))

(declare-fun b!641545 () Bool)

(declare-fun e!367361 () SeekEntryResult!6833)

(assert (=> b!641545 (= e!367361 (Found!6833 (index!29656 lt!297069)))))

(declare-fun b!641546 () Bool)

(declare-fun e!367362 () SeekEntryResult!6833)

(assert (=> b!641546 (= e!367362 e!367361)))

(declare-fun lt!297070 () (_ BitVec 64))

(assert (=> b!641546 (= lt!297070 (select (arr!18386 a!2986) (index!29656 lt!297069)))))

(declare-fun c!73337 () Bool)

(assert (=> b!641546 (= c!73337 (= lt!297070 k!1786))))

(declare-fun b!641547 () Bool)

(assert (=> b!641547 (= e!367362 Undefined!6833)))

(declare-fun b!641549 () Bool)

(assert (=> b!641549 (= e!367363 (MissingZero!6833 (index!29656 lt!297069)))))

(declare-fun b!641548 () Bool)

(declare-fun c!73336 () Bool)

(assert (=> b!641548 (= c!73336 (= lt!297070 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641548 (= e!367361 e!367363)))

(declare-fun d!90523 () Bool)

(declare-fun lt!297068 () SeekEntryResult!6833)

(assert (=> d!90523 (and (or (is-Undefined!6833 lt!297068) (not (is-Found!6833 lt!297068)) (and (bvsge (index!29655 lt!297068) #b00000000000000000000000000000000) (bvslt (index!29655 lt!297068) (size!18750 a!2986)))) (or (is-Undefined!6833 lt!297068) (is-Found!6833 lt!297068) (not (is-MissingZero!6833 lt!297068)) (and (bvsge (index!29654 lt!297068) #b00000000000000000000000000000000) (bvslt (index!29654 lt!297068) (size!18750 a!2986)))) (or (is-Undefined!6833 lt!297068) (is-Found!6833 lt!297068) (is-MissingZero!6833 lt!297068) (not (is-MissingVacant!6833 lt!297068)) (and (bvsge (index!29657 lt!297068) #b00000000000000000000000000000000) (bvslt (index!29657 lt!297068) (size!18750 a!2986)))) (or (is-Undefined!6833 lt!297068) (ite (is-Found!6833 lt!297068) (= (select (arr!18386 a!2986) (index!29655 lt!297068)) k!1786) (ite (is-MissingZero!6833 lt!297068) (= (select (arr!18386 a!2986) (index!29654 lt!297068)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6833 lt!297068) (= (select (arr!18386 a!2986) (index!29657 lt!297068)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90523 (= lt!297068 e!367362)))

(declare-fun c!73335 () Bool)

(assert (=> d!90523 (= c!73335 (and (is-Intermediate!6833 lt!297069) (undefined!7645 lt!297069)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38344 (_ BitVec 32)) SeekEntryResult!6833)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90523 (= lt!297069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!90523 (validMask!0 mask!3053)))

(assert (=> d!90523 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!297068)))

(assert (= (and d!90523 c!73335) b!641547))

(assert (= (and d!90523 (not c!73335)) b!641546))

(assert (= (and b!641546 c!73337) b!641545))

(assert (= (and b!641546 (not c!73337)) b!641548))

(assert (= (and b!641548 c!73336) b!641549))

(assert (= (and b!641548 (not c!73336)) b!641544))

(declare-fun m!615423 () Bool)

(assert (=> b!641544 m!615423))

(declare-fun m!615425 () Bool)

(assert (=> b!641546 m!615425))

(declare-fun m!615427 () Bool)

(assert (=> d!90523 m!615427))

(declare-fun m!615429 () Bool)

(assert (=> d!90523 m!615429))

(declare-fun m!615431 () Bool)

(assert (=> d!90523 m!615431))

(declare-fun m!615433 () Bool)

(assert (=> d!90523 m!615433))

(assert (=> d!90523 m!615431))

(declare-fun m!615435 () Bool)

(assert (=> d!90523 m!615435))

(assert (=> d!90523 m!615291))

(assert (=> b!641403 d!90523))

(declare-fun b!641558 () Bool)

(declare-fun e!367370 () Bool)

(declare-fun call!33545 () Bool)

(assert (=> b!641558 (= e!367370 call!33545)))

(declare-fun bm!33542 () Bool)

(assert (=> bm!33542 (= call!33545 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!641559 () Bool)

(declare-fun e!367372 () Bool)

(assert (=> b!641559 (= e!367372 e!367370)))

(declare-fun c!73340 () Bool)

(assert (=> b!641559 (= c!73340 (validKeyInArray!0 (select (arr!18386 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!641560 () Bool)

(declare-fun e!367371 () Bool)

(assert (=> b!641560 (= e!367371 call!33545)))

(declare-fun d!90547 () Bool)

(declare-fun res!415613 () Bool)

(assert (=> d!90547 (=> res!415613 e!367372)))

(assert (=> d!90547 (= res!415613 (bvsge #b00000000000000000000000000000000 (size!18750 a!2986)))))

(assert (=> d!90547 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!367372)))

(declare-fun b!641561 () Bool)

(assert (=> b!641561 (= e!367370 e!367371)))

(declare-fun lt!297078 () (_ BitVec 64))

(assert (=> b!641561 (= lt!297078 (select (arr!18386 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!297079 () Unit!21690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38344 (_ BitVec 64) (_ BitVec 32)) Unit!21690)

(assert (=> b!641561 (= lt!297079 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!297078 #b00000000000000000000000000000000))))

(assert (=> b!641561 (arrayContainsKey!0 a!2986 lt!297078 #b00000000000000000000000000000000)))

(declare-fun lt!297077 () Unit!21690)

(assert (=> b!641561 (= lt!297077 lt!297079)))

(declare-fun res!415612 () Bool)

(assert (=> b!641561 (= res!415612 (= (seekEntryOrOpen!0 (select (arr!18386 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6833 #b00000000000000000000000000000000)))))

(assert (=> b!641561 (=> (not res!415612) (not e!367371))))

(assert (= (and d!90547 (not res!415613)) b!641559))

(assert (= (and b!641559 c!73340) b!641561))

(assert (= (and b!641559 (not c!73340)) b!641558))

(assert (= (and b!641561 res!415612) b!641560))

(assert (= (or b!641560 b!641558) bm!33542))

(declare-fun m!615437 () Bool)

(assert (=> bm!33542 m!615437))

(declare-fun m!615439 () Bool)

(assert (=> b!641559 m!615439))

(assert (=> b!641559 m!615439))

(declare-fun m!615441 () Bool)

(assert (=> b!641559 m!615441))

(assert (=> b!641561 m!615439))

(declare-fun m!615443 () Bool)

(assert (=> b!641561 m!615443))

(declare-fun m!615445 () Bool)

(assert (=> b!641561 m!615445))

(assert (=> b!641561 m!615439))

(declare-fun m!615447 () Bool)

(assert (=> b!641561 m!615447))

(assert (=> b!641401 d!90547))

(declare-fun d!90549 () Bool)

(declare-fun res!415620 () Bool)

(declare-fun e!367385 () Bool)

(assert (=> d!90549 (=> res!415620 e!367385)))

(assert (=> d!90549 (= res!415620 (is-Nil!12477 Nil!12477))))

(assert (=> d!90549 (= (noDuplicate!405 Nil!12477) e!367385)))

(declare-fun b!641580 () Bool)

(declare-fun e!367386 () Bool)

(assert (=> b!641580 (= e!367385 e!367386)))

(declare-fun res!415621 () Bool)

(assert (=> b!641580 (=> (not res!415621) (not e!367386))))

(assert (=> b!641580 (= res!415621 (not (contains!3134 (t!18716 Nil!12477) (h!13521 Nil!12477))))))

(declare-fun b!641581 () Bool)

(assert (=> b!641581 (= e!367386 (noDuplicate!405 (t!18716 Nil!12477)))))

(assert (= (and d!90549 (not res!415620)) b!641580))

(assert (= (and b!641580 res!415621) b!641581))

(declare-fun m!615449 () Bool)

(assert (=> b!641580 m!615449))

(declare-fun m!615451 () Bool)

(assert (=> b!641581 m!615451))

(assert (=> b!641402 d!90549))

(declare-fun d!90551 () Bool)

(declare-fun e!367416 () Bool)

(assert (=> d!90551 e!367416))

(declare-fun res!415642 () Bool)

(assert (=> d!90551 (=> (not res!415642) (not e!367416))))

(assert (=> d!90551 (= res!415642 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18750 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18750 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18750 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18750 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18750 a!2986))))))

(declare-fun lt!297100 () Unit!21690)

(declare-fun choose!9 (array!38344 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21690)

(assert (=> d!90551 (= lt!297100 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90551 (validMask!0 mask!3053)))

(assert (=> d!90551 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 mask!3053) lt!297100)))

(declare-fun b!641620 () Bool)

(assert (=> b!641620 (= e!367416 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 (select (arr!18386 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 (select (store (arr!18386 a!2986) i!1108 k!1786) j!136) (array!38345 (store (arr!18386 a!2986) i!1108 k!1786) (size!18750 a!2986)) mask!3053)))))

(assert (= (and d!90551 res!415642) b!641620))

(declare-fun m!615495 () Bool)

(assert (=> d!90551 m!615495))

(assert (=> d!90551 m!615291))

(assert (=> b!641620 m!615277))

(assert (=> b!641620 m!615263))

(assert (=> b!641620 m!615315))

(declare-fun m!615497 () Bool)

(assert (=> b!641620 m!615497))

(assert (=> b!641620 m!615315))

(assert (=> b!641620 m!615263))

(assert (=> b!641620 m!615319))

(assert (=> b!641395 d!90551))

(declare-fun e!367449 () SeekEntryResult!6833)

(declare-fun b!641672 () Bool)

(assert (=> b!641672 (= e!367449 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297007 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!297017 lt!297008 mask!3053))))

(declare-fun b!641673 () Bool)

(declare-fun c!73376 () Bool)

(declare-fun lt!297122 () (_ BitVec 64))

(assert (=> b!641673 (= c!73376 (= lt!297122 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367448 () SeekEntryResult!6833)

(assert (=> b!641673 (= e!367448 e!367449)))

(declare-fun b!641674 () Bool)

(assert (=> b!641674 (= e!367448 (Found!6833 lt!297007))))

(declare-fun b!641675 () Bool)

(declare-fun e!367450 () SeekEntryResult!6833)

(assert (=> b!641675 (= e!367450 e!367448)))

(declare-fun c!73377 () Bool)

(assert (=> b!641675 (= c!73377 (= lt!297122 lt!297017))))

(declare-fun b!641676 () Bool)

(assert (=> b!641676 (= e!367449 (MissingVacant!6833 vacantSpotIndex!68))))

(declare-fun lt!297123 () SeekEntryResult!6833)

(declare-fun d!90569 () Bool)

(assert (=> d!90569 (and (or (is-Undefined!6833 lt!297123) (not (is-Found!6833 lt!297123)) (and (bvsge (index!29655 lt!297123) #b00000000000000000000000000000000) (bvslt (index!29655 lt!297123) (size!18750 lt!297008)))) (or (is-Undefined!6833 lt!297123) (is-Found!6833 lt!297123) (not (is-MissingVacant!6833 lt!297123)) (not (= (index!29657 lt!297123) vacantSpotIndex!68)) (and (bvsge (index!29657 lt!297123) #b00000000000000000000000000000000) (bvslt (index!29657 lt!297123) (size!18750 lt!297008)))) (or (is-Undefined!6833 lt!297123) (ite (is-Found!6833 lt!297123) (= (select (arr!18386 lt!297008) (index!29655 lt!297123)) lt!297017) (and (is-MissingVacant!6833 lt!297123) (= (index!29657 lt!297123) vacantSpotIndex!68) (= (select (arr!18386 lt!297008) (index!29657 lt!297123)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90569 (= lt!297123 e!367450)))

(declare-fun c!73378 () Bool)

(assert (=> d!90569 (= c!73378 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90569 (= lt!297122 (select (arr!18386 lt!297008) lt!297007))))

(assert (=> d!90569 (validMask!0 mask!3053)))

(assert (=> d!90569 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297007 vacantSpotIndex!68 lt!297017 lt!297008 mask!3053) lt!297123)))

(declare-fun b!641677 () Bool)

(assert (=> b!641677 (= e!367450 Undefined!6833)))

(assert (= (and d!90569 c!73378) b!641677))

(assert (= (and d!90569 (not c!73378)) b!641675))

(assert (= (and b!641675 c!73377) b!641674))

(assert (= (and b!641675 (not c!73377)) b!641673))

(assert (= (and b!641673 c!73376) b!641676))

(assert (= (and b!641673 (not c!73376)) b!641672))

(declare-fun m!615539 () Bool)

(assert (=> b!641672 m!615539))

(assert (=> b!641672 m!615539))

(declare-fun m!615541 () Bool)

(assert (=> b!641672 m!615541))

(declare-fun m!615543 () Bool)

(assert (=> d!90569 m!615543))

(declare-fun m!615545 () Bool)

(assert (=> d!90569 m!615545))

(declare-fun m!615547 () Bool)

(assert (=> d!90569 m!615547))

(assert (=> d!90569 m!615291))

(assert (=> b!641395 d!90569))

(declare-fun e!367452 () SeekEntryResult!6833)

(declare-fun b!641678 () Bool)

(assert (=> b!641678 (= e!367452 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!297017 lt!297008 mask!3053))))

(declare-fun b!641679 () Bool)

(declare-fun c!73379 () Bool)

(declare-fun lt!297124 () (_ BitVec 64))

(assert (=> b!641679 (= c!73379 (= lt!297124 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367451 () SeekEntryResult!6833)

(assert (=> b!641679 (= e!367451 e!367452)))

(declare-fun b!641680 () Bool)

(assert (=> b!641680 (= e!367451 (Found!6833 index!984))))

(declare-fun b!641681 () Bool)

(declare-fun e!367453 () SeekEntryResult!6833)

(assert (=> b!641681 (= e!367453 e!367451)))

(declare-fun c!73380 () Bool)

(assert (=> b!641681 (= c!73380 (= lt!297124 lt!297017))))

(declare-fun b!641682 () Bool)

(assert (=> b!641682 (= e!367452 (MissingVacant!6833 vacantSpotIndex!68))))

(declare-fun d!90587 () Bool)

(declare-fun lt!297125 () SeekEntryResult!6833)

(assert (=> d!90587 (and (or (is-Undefined!6833 lt!297125) (not (is-Found!6833 lt!297125)) (and (bvsge (index!29655 lt!297125) #b00000000000000000000000000000000) (bvslt (index!29655 lt!297125) (size!18750 lt!297008)))) (or (is-Undefined!6833 lt!297125) (is-Found!6833 lt!297125) (not (is-MissingVacant!6833 lt!297125)) (not (= (index!29657 lt!297125) vacantSpotIndex!68)) (and (bvsge (index!29657 lt!297125) #b00000000000000000000000000000000) (bvslt (index!29657 lt!297125) (size!18750 lt!297008)))) (or (is-Undefined!6833 lt!297125) (ite (is-Found!6833 lt!297125) (= (select (arr!18386 lt!297008) (index!29655 lt!297125)) lt!297017) (and (is-MissingVacant!6833 lt!297125) (= (index!29657 lt!297125) vacantSpotIndex!68) (= (select (arr!18386 lt!297008) (index!29657 lt!297125)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90587 (= lt!297125 e!367453)))

(declare-fun c!73381 () Bool)

(assert (=> d!90587 (= c!73381 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90587 (= lt!297124 (select (arr!18386 lt!297008) index!984))))

(assert (=> d!90587 (validMask!0 mask!3053)))

(assert (=> d!90587 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297017 lt!297008 mask!3053) lt!297125)))

(declare-fun b!641683 () Bool)

(assert (=> b!641683 (= e!367453 Undefined!6833)))

(assert (= (and d!90587 c!73381) b!641683))

(assert (= (and d!90587 (not c!73381)) b!641681))

(assert (= (and b!641681 c!73380) b!641680))

(assert (= (and b!641681 (not c!73380)) b!641679))

(assert (= (and b!641679 c!73379) b!641682))

(assert (= (and b!641679 (not c!73379)) b!641678))

(assert (=> b!641678 m!615313))

(assert (=> b!641678 m!615313))

(declare-fun m!615549 () Bool)

(assert (=> b!641678 m!615549))

(declare-fun m!615551 () Bool)

(assert (=> d!90587 m!615551))

(declare-fun m!615553 () Bool)

(assert (=> d!90587 m!615553))

(declare-fun m!615555 () Bool)

(assert (=> d!90587 m!615555))

(assert (=> d!90587 m!615291))

(assert (=> b!641395 d!90587))

(declare-fun d!90589 () Bool)

(declare-fun lt!297128 () (_ BitVec 32))

(assert (=> d!90589 (and (bvsge lt!297128 #b00000000000000000000000000000000) (bvslt lt!297128 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90589 (= lt!297128 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90589 (validMask!0 mask!3053)))

(assert (=> d!90589 (= (nextIndex!0 index!984 x!910 mask!3053) lt!297128)))

(declare-fun bs!19206 () Bool)

(assert (= bs!19206 d!90589))

(declare-fun m!615557 () Bool)

(assert (=> bs!19206 m!615557))

(assert (=> bs!19206 m!615291))

(assert (=> b!641395 d!90589))

(declare-fun e!367455 () SeekEntryResult!6833)

(declare-fun b!641684 () Bool)

(assert (=> b!641684 (= e!367455 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297007 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18386 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641685 () Bool)

(declare-fun c!73382 () Bool)

(declare-fun lt!297129 () (_ BitVec 64))

(assert (=> b!641685 (= c!73382 (= lt!297129 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!367454 () SeekEntryResult!6833)

(assert (=> b!641685 (= e!367454 e!367455)))

(declare-fun b!641686 () Bool)

(assert (=> b!641686 (= e!367454 (Found!6833 lt!297007))))

(declare-fun b!641687 () Bool)

(declare-fun e!367456 () SeekEntryResult!6833)

(assert (=> b!641687 (= e!367456 e!367454)))

(declare-fun c!73383 () Bool)

(assert (=> b!641687 (= c!73383 (= lt!297129 (select (arr!18386 a!2986) j!136)))))

(declare-fun b!641688 () Bool)

(assert (=> b!641688 (= e!367455 (MissingVacant!6833 vacantSpotIndex!68))))

(declare-fun d!90591 () Bool)

(declare-fun lt!297130 () SeekEntryResult!6833)

(assert (=> d!90591 (and (or (is-Undefined!6833 lt!297130) (not (is-Found!6833 lt!297130)) (and (bvsge (index!29655 lt!297130) #b00000000000000000000000000000000) (bvslt (index!29655 lt!297130) (size!18750 a!2986)))) (or (is-Undefined!6833 lt!297130) (is-Found!6833 lt!297130) (not (is-MissingVacant!6833 lt!297130)) (not (= (index!29657 lt!297130) vacantSpotIndex!68)) (and (bvsge (index!29657 lt!297130) #b00000000000000000000000000000000) (bvslt (index!29657 lt!297130) (size!18750 a!2986)))) (or (is-Undefined!6833 lt!297130) (ite (is-Found!6833 lt!297130) (= (select (arr!18386 a!2986) (index!29655 lt!297130)) (select (arr!18386 a!2986) j!136)) (and (is-MissingVacant!6833 lt!297130) (= (index!29657 lt!297130) vacantSpotIndex!68) (= (select (arr!18386 a!2986) (index!29657 lt!297130)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90591 (= lt!297130 e!367456)))

