; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58154 () Bool)

(assert start!58154)

(declare-fun b!642455 () Bool)

(declare-fun e!367944 () Bool)

(declare-fun e!367951 () Bool)

(assert (=> b!642455 (= e!367944 e!367951)))

(declare-fun res!416317 () Bool)

(assert (=> b!642455 (=> (not res!416317) (not e!367951))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38369 0))(
  ( (array!38370 (arr!18397 (Array (_ BitVec 32) (_ BitVec 64))) (size!18761 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38369)

(assert (=> b!642455 (= res!416317 (= (select (store (arr!18397 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!297623 () array!38369)

(assert (=> b!642455 (= lt!297623 (array!38370 (store (arr!18397 a!2986) i!1108 k0!1786) (size!18761 a!2986)))))

(declare-fun b!642456 () Bool)

(declare-fun res!416328 () Bool)

(assert (=> b!642456 (=> (not res!416328) (not e!367944))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642456 (= res!416328 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18397 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642457 () Bool)

(declare-datatypes ((Unit!21736 0))(
  ( (Unit!21737) )
))
(declare-fun e!367954 () Unit!21736)

(declare-fun Unit!21738 () Unit!21736)

(assert (=> b!642457 (= e!367954 Unit!21738)))

(declare-fun b!642458 () Bool)

(declare-fun res!416322 () Bool)

(declare-fun e!367952 () Bool)

(assert (=> b!642458 (=> (not res!416322) (not e!367952))))

(declare-fun arrayContainsKey!0 (array!38369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642458 (= res!416322 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642459 () Bool)

(declare-fun e!367946 () Bool)

(declare-fun e!367949 () Bool)

(assert (=> b!642459 (= e!367946 e!367949)))

(declare-fun res!416329 () Bool)

(assert (=> b!642459 (=> res!416329 e!367949)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!297626 () (_ BitVec 64))

(declare-fun lt!297632 () (_ BitVec 64))

(assert (=> b!642459 (= res!416329 (or (not (= (select (arr!18397 a!2986) j!136) lt!297632)) (not (= (select (arr!18397 a!2986) j!136) lt!297626)) (bvsge j!136 index!984)))))

(declare-fun b!642460 () Bool)

(declare-fun e!367945 () Unit!21736)

(declare-fun Unit!21739 () Unit!21736)

(assert (=> b!642460 (= e!367945 Unit!21739)))

(assert (=> b!642460 false))

(declare-fun b!642461 () Bool)

(declare-fun res!416325 () Bool)

(assert (=> b!642461 (=> (not res!416325) (not e!367944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38369 (_ BitVec 32)) Bool)

(assert (=> b!642461 (= res!416325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642463 () Bool)

(declare-fun Unit!21740 () Unit!21736)

(assert (=> b!642463 (= e!367945 Unit!21740)))

(declare-fun b!642464 () Bool)

(declare-fun e!367943 () Bool)

(assert (=> b!642464 (= e!367951 e!367943)))

(declare-fun res!416319 () Bool)

(assert (=> b!642464 (=> (not res!416319) (not e!367943))))

(declare-datatypes ((SeekEntryResult!6844 0))(
  ( (MissingZero!6844 (index!29701 (_ BitVec 32))) (Found!6844 (index!29702 (_ BitVec 32))) (Intermediate!6844 (undefined!7656 Bool) (index!29703 (_ BitVec 32)) (x!58491 (_ BitVec 32))) (Undefined!6844) (MissingVacant!6844 (index!29704 (_ BitVec 32))) )
))
(declare-fun lt!297622 () SeekEntryResult!6844)

(assert (=> b!642464 (= res!416319 (and (= lt!297622 (Found!6844 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18397 a!2986) index!984) (select (arr!18397 a!2986) j!136))) (not (= (select (arr!18397 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38369 (_ BitVec 32)) SeekEntryResult!6844)

(assert (=> b!642464 (= lt!297622 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642465 () Bool)

(declare-fun res!416327 () Bool)

(assert (=> b!642465 (=> (not res!416327) (not e!367952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642465 (= res!416327 (validKeyInArray!0 k0!1786))))

(declare-fun b!642466 () Bool)

(declare-fun res!416330 () Bool)

(assert (=> b!642466 (=> (not res!416330) (not e!367944))))

(declare-datatypes ((List!12491 0))(
  ( (Nil!12488) (Cons!12487 (h!13532 (_ BitVec 64)) (t!18727 List!12491)) )
))
(declare-fun arrayNoDuplicates!0 (array!38369 (_ BitVec 32) List!12491) Bool)

(assert (=> b!642466 (= res!416330 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12488))))

(declare-fun b!642467 () Bool)

(declare-fun e!367947 () Bool)

(assert (=> b!642467 (= e!367947 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) j!136))))

(declare-fun b!642468 () Bool)

(declare-fun Unit!21741 () Unit!21736)

(assert (=> b!642468 (= e!367954 Unit!21741)))

(declare-fun lt!297630 () Unit!21736)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38369 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21736)

(assert (=> b!642468 (= lt!297630 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297623 (select (arr!18397 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!642468 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297631 () Unit!21736)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38369 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12491) Unit!21736)

(assert (=> b!642468 (= lt!297631 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12488))))

(assert (=> b!642468 (arrayNoDuplicates!0 lt!297623 #b00000000000000000000000000000000 Nil!12488)))

(declare-fun lt!297633 () Unit!21736)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38369 (_ BitVec 32) (_ BitVec 32)) Unit!21736)

(assert (=> b!642468 (= lt!297633 (lemmaNoDuplicateFromThenFromBigger!0 lt!297623 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642468 (arrayNoDuplicates!0 lt!297623 j!136 Nil!12488)))

(declare-fun lt!297627 () Unit!21736)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38369 (_ BitVec 64) (_ BitVec 32) List!12491) Unit!21736)

(assert (=> b!642468 (= lt!297627 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297623 (select (arr!18397 a!2986) j!136) j!136 Nil!12488))))

(assert (=> b!642468 false))

(declare-fun b!642469 () Bool)

(declare-fun e!367948 () Bool)

(declare-fun lt!297629 () SeekEntryResult!6844)

(assert (=> b!642469 (= e!367948 (= lt!297622 lt!297629))))

(declare-fun b!642470 () Bool)

(declare-fun res!416315 () Bool)

(assert (=> b!642470 (=> (not res!416315) (not e!367952))))

(assert (=> b!642470 (= res!416315 (and (= (size!18761 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18761 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18761 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642471 () Bool)

(declare-fun e!367941 () Bool)

(assert (=> b!642471 (= e!367941 e!367947)))

(declare-fun res!416321 () Bool)

(assert (=> b!642471 (=> res!416321 e!367947)))

(assert (=> b!642471 (= res!416321 (bvsge index!984 j!136))))

(declare-fun lt!297621 () Unit!21736)

(assert (=> b!642471 (= lt!297621 e!367954)))

(declare-fun c!73438 () Bool)

(assert (=> b!642471 (= c!73438 (bvslt j!136 index!984))))

(declare-fun b!642462 () Bool)

(assert (=> b!642462 (= e!367952 e!367944)))

(declare-fun res!416318 () Bool)

(assert (=> b!642462 (=> (not res!416318) (not e!367944))))

(declare-fun lt!297624 () SeekEntryResult!6844)

(assert (=> b!642462 (= res!416318 (or (= lt!297624 (MissingZero!6844 i!1108)) (= lt!297624 (MissingVacant!6844 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38369 (_ BitVec 32)) SeekEntryResult!6844)

(assert (=> b!642462 (= lt!297624 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!416326 () Bool)

(assert (=> start!58154 (=> (not res!416326) (not e!367952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58154 (= res!416326 (validMask!0 mask!3053))))

(assert (=> start!58154 e!367952))

(assert (=> start!58154 true))

(declare-fun array_inv!14171 (array!38369) Bool)

(assert (=> start!58154 (array_inv!14171 a!2986)))

(declare-fun e!367950 () Bool)

(declare-fun b!642472 () Bool)

(assert (=> b!642472 (= e!367950 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) index!984))))

(declare-fun b!642473 () Bool)

(declare-fun e!367942 () Bool)

(assert (=> b!642473 (= e!367942 e!367941)))

(declare-fun res!416320 () Bool)

(assert (=> b!642473 (=> res!416320 e!367941)))

(assert (=> b!642473 (= res!416320 (or (not (= (select (arr!18397 a!2986) j!136) lt!297632)) (not (= (select (arr!18397 a!2986) j!136) lt!297626))))))

(assert (=> b!642473 e!367946))

(declare-fun res!416316 () Bool)

(assert (=> b!642473 (=> (not res!416316) (not e!367946))))

(assert (=> b!642473 (= res!416316 (= lt!297626 (select (arr!18397 a!2986) j!136)))))

(assert (=> b!642473 (= lt!297626 (select (store (arr!18397 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!642474 () Bool)

(declare-fun res!416313 () Bool)

(assert (=> b!642474 (=> (not res!416313) (not e!367952))))

(assert (=> b!642474 (= res!416313 (validKeyInArray!0 (select (arr!18397 a!2986) j!136)))))

(declare-fun b!642475 () Bool)

(assert (=> b!642475 (= e!367943 (not e!367942))))

(declare-fun res!416323 () Bool)

(assert (=> b!642475 (=> res!416323 e!367942)))

(declare-fun lt!297628 () SeekEntryResult!6844)

(assert (=> b!642475 (= res!416323 (not (= lt!297628 (Found!6844 index!984))))))

(declare-fun lt!297619 () Unit!21736)

(assert (=> b!642475 (= lt!297619 e!367945)))

(declare-fun c!73439 () Bool)

(assert (=> b!642475 (= c!73439 (= lt!297628 Undefined!6844))))

(assert (=> b!642475 (= lt!297628 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297632 lt!297623 mask!3053))))

(assert (=> b!642475 e!367948))

(declare-fun res!416314 () Bool)

(assert (=> b!642475 (=> (not res!416314) (not e!367948))))

(declare-fun lt!297625 () (_ BitVec 32))

(assert (=> b!642475 (= res!416314 (= lt!297629 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 lt!297632 lt!297623 mask!3053)))))

(assert (=> b!642475 (= lt!297629 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!642475 (= lt!297632 (select (store (arr!18397 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!297620 () Unit!21736)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21736)

(assert (=> b!642475 (= lt!297620 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642475 (= lt!297625 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642476 () Bool)

(assert (=> b!642476 (= e!367949 e!367950)))

(declare-fun res!416324 () Bool)

(assert (=> b!642476 (=> (not res!416324) (not e!367950))))

(assert (=> b!642476 (= res!416324 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) j!136))))

(assert (= (and start!58154 res!416326) b!642470))

(assert (= (and b!642470 res!416315) b!642474))

(assert (= (and b!642474 res!416313) b!642465))

(assert (= (and b!642465 res!416327) b!642458))

(assert (= (and b!642458 res!416322) b!642462))

(assert (= (and b!642462 res!416318) b!642461))

(assert (= (and b!642461 res!416325) b!642466))

(assert (= (and b!642466 res!416330) b!642456))

(assert (= (and b!642456 res!416328) b!642455))

(assert (= (and b!642455 res!416317) b!642464))

(assert (= (and b!642464 res!416319) b!642475))

(assert (= (and b!642475 res!416314) b!642469))

(assert (= (and b!642475 c!73439) b!642460))

(assert (= (and b!642475 (not c!73439)) b!642463))

(assert (= (and b!642475 (not res!416323)) b!642473))

(assert (= (and b!642473 res!416316) b!642459))

(assert (= (and b!642459 (not res!416329)) b!642476))

(assert (= (and b!642476 res!416324) b!642472))

(assert (= (and b!642473 (not res!416320)) b!642471))

(assert (= (and b!642471 c!73438) b!642468))

(assert (= (and b!642471 (not c!73438)) b!642457))

(assert (= (and b!642471 (not res!416321)) b!642467))

(declare-fun m!616299 () Bool)

(assert (=> b!642472 m!616299))

(assert (=> b!642472 m!616299))

(declare-fun m!616301 () Bool)

(assert (=> b!642472 m!616301))

(declare-fun m!616303 () Bool)

(assert (=> b!642458 m!616303))

(assert (=> b!642468 m!616299))

(declare-fun m!616305 () Bool)

(assert (=> b!642468 m!616305))

(assert (=> b!642468 m!616299))

(declare-fun m!616307 () Bool)

(assert (=> b!642468 m!616307))

(declare-fun m!616309 () Bool)

(assert (=> b!642468 m!616309))

(assert (=> b!642468 m!616299))

(declare-fun m!616311 () Bool)

(assert (=> b!642468 m!616311))

(assert (=> b!642468 m!616299))

(declare-fun m!616313 () Bool)

(assert (=> b!642468 m!616313))

(declare-fun m!616315 () Bool)

(assert (=> b!642468 m!616315))

(declare-fun m!616317 () Bool)

(assert (=> b!642468 m!616317))

(assert (=> b!642473 m!616299))

(declare-fun m!616319 () Bool)

(assert (=> b!642473 m!616319))

(declare-fun m!616321 () Bool)

(assert (=> b!642473 m!616321))

(assert (=> b!642476 m!616299))

(assert (=> b!642476 m!616299))

(declare-fun m!616323 () Bool)

(assert (=> b!642476 m!616323))

(assert (=> b!642474 m!616299))

(assert (=> b!642474 m!616299))

(declare-fun m!616325 () Bool)

(assert (=> b!642474 m!616325))

(declare-fun m!616327 () Bool)

(assert (=> b!642464 m!616327))

(assert (=> b!642464 m!616299))

(assert (=> b!642464 m!616299))

(declare-fun m!616329 () Bool)

(assert (=> b!642464 m!616329))

(declare-fun m!616331 () Bool)

(assert (=> b!642475 m!616331))

(assert (=> b!642475 m!616299))

(declare-fun m!616333 () Bool)

(assert (=> b!642475 m!616333))

(assert (=> b!642475 m!616319))

(declare-fun m!616335 () Bool)

(assert (=> b!642475 m!616335))

(declare-fun m!616337 () Bool)

(assert (=> b!642475 m!616337))

(assert (=> b!642475 m!616299))

(declare-fun m!616339 () Bool)

(assert (=> b!642475 m!616339))

(declare-fun m!616341 () Bool)

(assert (=> b!642475 m!616341))

(declare-fun m!616343 () Bool)

(assert (=> start!58154 m!616343))

(declare-fun m!616345 () Bool)

(assert (=> start!58154 m!616345))

(declare-fun m!616347 () Bool)

(assert (=> b!642466 m!616347))

(declare-fun m!616349 () Bool)

(assert (=> b!642461 m!616349))

(declare-fun m!616351 () Bool)

(assert (=> b!642456 m!616351))

(assert (=> b!642455 m!616319))

(declare-fun m!616353 () Bool)

(assert (=> b!642455 m!616353))

(declare-fun m!616355 () Bool)

(assert (=> b!642465 m!616355))

(assert (=> b!642467 m!616299))

(assert (=> b!642467 m!616299))

(assert (=> b!642467 m!616323))

(assert (=> b!642459 m!616299))

(declare-fun m!616357 () Bool)

(assert (=> b!642462 m!616357))

(check-sat (not b!642476) (not b!642468) (not b!642466) (not b!642472) (not b!642464) (not b!642461) (not b!642458) (not start!58154) (not b!642467) (not b!642465) (not b!642475) (not b!642462) (not b!642474))
(check-sat)
(get-model)

(declare-fun d!90659 () Bool)

(declare-fun res!416389 () Bool)

(declare-fun e!368001 () Bool)

(assert (=> d!90659 (=> res!416389 e!368001)))

(assert (=> d!90659 (= res!416389 (= (select (arr!18397 lt!297623) j!136) (select (arr!18397 a!2986) j!136)))))

(assert (=> d!90659 (= (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) j!136) e!368001)))

(declare-fun b!642547 () Bool)

(declare-fun e!368002 () Bool)

(assert (=> b!642547 (= e!368001 e!368002)))

(declare-fun res!416390 () Bool)

(assert (=> b!642547 (=> (not res!416390) (not e!368002))))

(assert (=> b!642547 (= res!416390 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18761 lt!297623)))))

(declare-fun b!642548 () Bool)

(assert (=> b!642548 (= e!368002 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90659 (not res!416389)) b!642547))

(assert (= (and b!642547 res!416390) b!642548))

(declare-fun m!616419 () Bool)

(assert (=> d!90659 m!616419))

(assert (=> b!642548 m!616299))

(declare-fun m!616421 () Bool)

(assert (=> b!642548 m!616421))

(assert (=> b!642467 d!90659))

(declare-fun b!642559 () Bool)

(declare-fun e!368012 () Bool)

(declare-fun call!33560 () Bool)

(assert (=> b!642559 (= e!368012 call!33560)))

(declare-fun b!642560 () Bool)

(declare-fun e!368011 () Bool)

(declare-fun e!368013 () Bool)

(assert (=> b!642560 (= e!368011 e!368013)))

(declare-fun res!416399 () Bool)

(assert (=> b!642560 (=> (not res!416399) (not e!368013))))

(declare-fun e!368014 () Bool)

(assert (=> b!642560 (= res!416399 (not e!368014))))

(declare-fun res!416398 () Bool)

(assert (=> b!642560 (=> (not res!416398) (not e!368014))))

(assert (=> b!642560 (= res!416398 (validKeyInArray!0 (select (arr!18397 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!642561 () Bool)

(declare-fun contains!3141 (List!12491 (_ BitVec 64)) Bool)

(assert (=> b!642561 (= e!368014 (contains!3141 Nil!12488 (select (arr!18397 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!642562 () Bool)

(assert (=> b!642562 (= e!368013 e!368012)))

(declare-fun c!73448 () Bool)

(assert (=> b!642562 (= c!73448 (validKeyInArray!0 (select (arr!18397 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33557 () Bool)

(assert (=> bm!33557 (= call!33560 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73448 (Cons!12487 (select (arr!18397 a!2986) #b00000000000000000000000000000000) Nil!12488) Nil!12488)))))

(declare-fun b!642563 () Bool)

(assert (=> b!642563 (= e!368012 call!33560)))

(declare-fun d!90661 () Bool)

(declare-fun res!416397 () Bool)

(assert (=> d!90661 (=> res!416397 e!368011)))

(assert (=> d!90661 (= res!416397 (bvsge #b00000000000000000000000000000000 (size!18761 a!2986)))))

(assert (=> d!90661 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12488) e!368011)))

(assert (= (and d!90661 (not res!416397)) b!642560))

(assert (= (and b!642560 res!416398) b!642561))

(assert (= (and b!642560 res!416399) b!642562))

(assert (= (and b!642562 c!73448) b!642559))

(assert (= (and b!642562 (not c!73448)) b!642563))

(assert (= (or b!642559 b!642563) bm!33557))

(declare-fun m!616423 () Bool)

(assert (=> b!642560 m!616423))

(assert (=> b!642560 m!616423))

(declare-fun m!616425 () Bool)

(assert (=> b!642560 m!616425))

(assert (=> b!642561 m!616423))

(assert (=> b!642561 m!616423))

(declare-fun m!616427 () Bool)

(assert (=> b!642561 m!616427))

(assert (=> b!642562 m!616423))

(assert (=> b!642562 m!616423))

(assert (=> b!642562 m!616425))

(assert (=> bm!33557 m!616423))

(declare-fun m!616429 () Bool)

(assert (=> bm!33557 m!616429))

(assert (=> b!642466 d!90661))

(declare-fun d!90663 () Bool)

(assert (=> d!90663 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58154 d!90663))

(declare-fun d!90665 () Bool)

(assert (=> d!90665 (= (array_inv!14171 a!2986) (bvsge (size!18761 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58154 d!90665))

(assert (=> b!642476 d!90659))

(declare-fun d!90667 () Bool)

(assert (=> d!90667 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!642465 d!90667))

(declare-fun b!642576 () Bool)

(declare-fun e!368023 () SeekEntryResult!6844)

(assert (=> b!642576 (= e!368023 (Found!6844 index!984))))

(declare-fun b!642577 () Bool)

(declare-fun e!368021 () SeekEntryResult!6844)

(assert (=> b!642577 (= e!368021 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!90669 () Bool)

(declare-fun lt!297684 () SeekEntryResult!6844)

(get-info :version)

(assert (=> d!90669 (and (or ((_ is Undefined!6844) lt!297684) (not ((_ is Found!6844) lt!297684)) (and (bvsge (index!29702 lt!297684) #b00000000000000000000000000000000) (bvslt (index!29702 lt!297684) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297684) ((_ is Found!6844) lt!297684) (not ((_ is MissingVacant!6844) lt!297684)) (not (= (index!29704 lt!297684) vacantSpotIndex!68)) (and (bvsge (index!29704 lt!297684) #b00000000000000000000000000000000) (bvslt (index!29704 lt!297684) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297684) (ite ((_ is Found!6844) lt!297684) (= (select (arr!18397 a!2986) (index!29702 lt!297684)) (select (arr!18397 a!2986) j!136)) (and ((_ is MissingVacant!6844) lt!297684) (= (index!29704 lt!297684) vacantSpotIndex!68) (= (select (arr!18397 a!2986) (index!29704 lt!297684)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!368022 () SeekEntryResult!6844)

(assert (=> d!90669 (= lt!297684 e!368022)))

(declare-fun c!73456 () Bool)

(assert (=> d!90669 (= c!73456 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!297683 () (_ BitVec 64))

(assert (=> d!90669 (= lt!297683 (select (arr!18397 a!2986) index!984))))

(assert (=> d!90669 (validMask!0 mask!3053)))

(assert (=> d!90669 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053) lt!297684)))

(declare-fun b!642578 () Bool)

(assert (=> b!642578 (= e!368022 e!368023)))

(declare-fun c!73457 () Bool)

(assert (=> b!642578 (= c!73457 (= lt!297683 (select (arr!18397 a!2986) j!136)))))

(declare-fun b!642579 () Bool)

(declare-fun c!73455 () Bool)

(assert (=> b!642579 (= c!73455 (= lt!297683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642579 (= e!368023 e!368021)))

(declare-fun b!642580 () Bool)

(assert (=> b!642580 (= e!368022 Undefined!6844)))

(declare-fun b!642581 () Bool)

(assert (=> b!642581 (= e!368021 (MissingVacant!6844 vacantSpotIndex!68))))

(assert (= (and d!90669 c!73456) b!642580))

(assert (= (and d!90669 (not c!73456)) b!642578))

(assert (= (and b!642578 c!73457) b!642576))

(assert (= (and b!642578 (not c!73457)) b!642579))

(assert (= (and b!642579 c!73455) b!642581))

(assert (= (and b!642579 (not c!73455)) b!642577))

(assert (=> b!642577 m!616331))

(assert (=> b!642577 m!616331))

(assert (=> b!642577 m!616299))

(declare-fun m!616431 () Bool)

(assert (=> b!642577 m!616431))

(declare-fun m!616433 () Bool)

(assert (=> d!90669 m!616433))

(declare-fun m!616435 () Bool)

(assert (=> d!90669 m!616435))

(assert (=> d!90669 m!616327))

(assert (=> d!90669 m!616343))

(assert (=> b!642464 d!90669))

(declare-fun b!642582 () Bool)

(declare-fun e!368026 () SeekEntryResult!6844)

(assert (=> b!642582 (= e!368026 (Found!6844 lt!297625))))

(declare-fun b!642583 () Bool)

(declare-fun e!368024 () SeekEntryResult!6844)

(assert (=> b!642583 (= e!368024 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297625 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!90673 () Bool)

(declare-fun lt!297686 () SeekEntryResult!6844)

(assert (=> d!90673 (and (or ((_ is Undefined!6844) lt!297686) (not ((_ is Found!6844) lt!297686)) (and (bvsge (index!29702 lt!297686) #b00000000000000000000000000000000) (bvslt (index!29702 lt!297686) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297686) ((_ is Found!6844) lt!297686) (not ((_ is MissingVacant!6844) lt!297686)) (not (= (index!29704 lt!297686) vacantSpotIndex!68)) (and (bvsge (index!29704 lt!297686) #b00000000000000000000000000000000) (bvslt (index!29704 lt!297686) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297686) (ite ((_ is Found!6844) lt!297686) (= (select (arr!18397 a!2986) (index!29702 lt!297686)) (select (arr!18397 a!2986) j!136)) (and ((_ is MissingVacant!6844) lt!297686) (= (index!29704 lt!297686) vacantSpotIndex!68) (= (select (arr!18397 a!2986) (index!29704 lt!297686)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!368025 () SeekEntryResult!6844)

(assert (=> d!90673 (= lt!297686 e!368025)))

(declare-fun c!73459 () Bool)

(assert (=> d!90673 (= c!73459 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!297685 () (_ BitVec 64))

(assert (=> d!90673 (= lt!297685 (select (arr!18397 a!2986) lt!297625))))

(assert (=> d!90673 (validMask!0 mask!3053)))

(assert (=> d!90673 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053) lt!297686)))

(declare-fun b!642584 () Bool)

(assert (=> b!642584 (= e!368025 e!368026)))

(declare-fun c!73460 () Bool)

(assert (=> b!642584 (= c!73460 (= lt!297685 (select (arr!18397 a!2986) j!136)))))

(declare-fun b!642585 () Bool)

(declare-fun c!73458 () Bool)

(assert (=> b!642585 (= c!73458 (= lt!297685 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642585 (= e!368026 e!368024)))

(declare-fun b!642586 () Bool)

(assert (=> b!642586 (= e!368025 Undefined!6844)))

(declare-fun b!642587 () Bool)

(assert (=> b!642587 (= e!368024 (MissingVacant!6844 vacantSpotIndex!68))))

(assert (= (and d!90673 c!73459) b!642586))

(assert (= (and d!90673 (not c!73459)) b!642584))

(assert (= (and b!642584 c!73460) b!642582))

(assert (= (and b!642584 (not c!73460)) b!642585))

(assert (= (and b!642585 c!73458) b!642587))

(assert (= (and b!642585 (not c!73458)) b!642583))

(declare-fun m!616437 () Bool)

(assert (=> b!642583 m!616437))

(assert (=> b!642583 m!616437))

(assert (=> b!642583 m!616299))

(declare-fun m!616439 () Bool)

(assert (=> b!642583 m!616439))

(declare-fun m!616441 () Bool)

(assert (=> d!90673 m!616441))

(declare-fun m!616443 () Bool)

(assert (=> d!90673 m!616443))

(declare-fun m!616445 () Bool)

(assert (=> d!90673 m!616445))

(assert (=> d!90673 m!616343))

(assert (=> b!642475 d!90673))

(declare-fun b!642588 () Bool)

(declare-fun e!368029 () SeekEntryResult!6844)

(assert (=> b!642588 (= e!368029 (Found!6844 index!984))))

(declare-fun e!368027 () SeekEntryResult!6844)

(declare-fun b!642589 () Bool)

(assert (=> b!642589 (= e!368027 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!297632 lt!297623 mask!3053))))

(declare-fun lt!297688 () SeekEntryResult!6844)

(declare-fun d!90675 () Bool)

(assert (=> d!90675 (and (or ((_ is Undefined!6844) lt!297688) (not ((_ is Found!6844) lt!297688)) (and (bvsge (index!29702 lt!297688) #b00000000000000000000000000000000) (bvslt (index!29702 lt!297688) (size!18761 lt!297623)))) (or ((_ is Undefined!6844) lt!297688) ((_ is Found!6844) lt!297688) (not ((_ is MissingVacant!6844) lt!297688)) (not (= (index!29704 lt!297688) vacantSpotIndex!68)) (and (bvsge (index!29704 lt!297688) #b00000000000000000000000000000000) (bvslt (index!29704 lt!297688) (size!18761 lt!297623)))) (or ((_ is Undefined!6844) lt!297688) (ite ((_ is Found!6844) lt!297688) (= (select (arr!18397 lt!297623) (index!29702 lt!297688)) lt!297632) (and ((_ is MissingVacant!6844) lt!297688) (= (index!29704 lt!297688) vacantSpotIndex!68) (= (select (arr!18397 lt!297623) (index!29704 lt!297688)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!368028 () SeekEntryResult!6844)

(assert (=> d!90675 (= lt!297688 e!368028)))

(declare-fun c!73462 () Bool)

(assert (=> d!90675 (= c!73462 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!297687 () (_ BitVec 64))

(assert (=> d!90675 (= lt!297687 (select (arr!18397 lt!297623) index!984))))

(assert (=> d!90675 (validMask!0 mask!3053)))

(assert (=> d!90675 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297632 lt!297623 mask!3053) lt!297688)))

(declare-fun b!642590 () Bool)

(assert (=> b!642590 (= e!368028 e!368029)))

(declare-fun c!73463 () Bool)

(assert (=> b!642590 (= c!73463 (= lt!297687 lt!297632))))

(declare-fun b!642591 () Bool)

(declare-fun c!73461 () Bool)

(assert (=> b!642591 (= c!73461 (= lt!297687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642591 (= e!368029 e!368027)))

(declare-fun b!642592 () Bool)

(assert (=> b!642592 (= e!368028 Undefined!6844)))

(declare-fun b!642593 () Bool)

(assert (=> b!642593 (= e!368027 (MissingVacant!6844 vacantSpotIndex!68))))

(assert (= (and d!90675 c!73462) b!642592))

(assert (= (and d!90675 (not c!73462)) b!642590))

(assert (= (and b!642590 c!73463) b!642588))

(assert (= (and b!642590 (not c!73463)) b!642591))

(assert (= (and b!642591 c!73461) b!642593))

(assert (= (and b!642591 (not c!73461)) b!642589))

(assert (=> b!642589 m!616331))

(assert (=> b!642589 m!616331))

(declare-fun m!616447 () Bool)

(assert (=> b!642589 m!616447))

(declare-fun m!616449 () Bool)

(assert (=> d!90675 m!616449))

(declare-fun m!616451 () Bool)

(assert (=> d!90675 m!616451))

(declare-fun m!616453 () Bool)

(assert (=> d!90675 m!616453))

(assert (=> d!90675 m!616343))

(assert (=> b!642475 d!90675))

(declare-fun d!90677 () Bool)

(declare-fun e!368049 () Bool)

(assert (=> d!90677 e!368049))

(declare-fun res!416414 () Bool)

(assert (=> d!90677 (=> (not res!416414) (not e!368049))))

(assert (=> d!90677 (= res!416414 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18761 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18761 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18761 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18761 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18761 a!2986))))))

(declare-fun lt!297700 () Unit!21736)

(declare-fun choose!9 (array!38369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21736)

(assert (=> d!90677 (= lt!297700 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90677 (validMask!0 mask!3053)))

(assert (=> d!90677 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 mask!3053) lt!297700)))

(declare-fun b!642618 () Bool)

(assert (=> b!642618 (= e!368049 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 (select (arr!18397 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 (select (store (arr!18397 a!2986) i!1108 k0!1786) j!136) (array!38370 (store (arr!18397 a!2986) i!1108 k0!1786) (size!18761 a!2986)) mask!3053)))))

(assert (= (and d!90677 res!416414) b!642618))

(declare-fun m!616467 () Bool)

(assert (=> d!90677 m!616467))

(assert (=> d!90677 m!616343))

(assert (=> b!642618 m!616341))

(assert (=> b!642618 m!616299))

(assert (=> b!642618 m!616341))

(declare-fun m!616469 () Bool)

(assert (=> b!642618 m!616469))

(assert (=> b!642618 m!616299))

(assert (=> b!642618 m!616339))

(assert (=> b!642618 m!616319))

(assert (=> b!642475 d!90677))

(declare-fun d!90681 () Bool)

(declare-fun lt!297703 () (_ BitVec 32))

(assert (=> d!90681 (and (bvsge lt!297703 #b00000000000000000000000000000000) (bvslt lt!297703 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90681 (= lt!297703 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90681 (validMask!0 mask!3053)))

(assert (=> d!90681 (= (nextIndex!0 index!984 x!910 mask!3053) lt!297703)))

(declare-fun bs!19223 () Bool)

(assert (= bs!19223 d!90681))

(declare-fun m!616475 () Bool)

(assert (=> bs!19223 m!616475))

(assert (=> bs!19223 m!616343))

(assert (=> b!642475 d!90681))

(declare-fun b!642628 () Bool)

(declare-fun e!368060 () SeekEntryResult!6844)

(assert (=> b!642628 (= e!368060 (Found!6844 lt!297625))))

(declare-fun b!642629 () Bool)

(declare-fun e!368058 () SeekEntryResult!6844)

(assert (=> b!642629 (= e!368058 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297625 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!297632 lt!297623 mask!3053))))

(declare-fun d!90687 () Bool)

(declare-fun lt!297705 () SeekEntryResult!6844)

(assert (=> d!90687 (and (or ((_ is Undefined!6844) lt!297705) (not ((_ is Found!6844) lt!297705)) (and (bvsge (index!29702 lt!297705) #b00000000000000000000000000000000) (bvslt (index!29702 lt!297705) (size!18761 lt!297623)))) (or ((_ is Undefined!6844) lt!297705) ((_ is Found!6844) lt!297705) (not ((_ is MissingVacant!6844) lt!297705)) (not (= (index!29704 lt!297705) vacantSpotIndex!68)) (and (bvsge (index!29704 lt!297705) #b00000000000000000000000000000000) (bvslt (index!29704 lt!297705) (size!18761 lt!297623)))) (or ((_ is Undefined!6844) lt!297705) (ite ((_ is Found!6844) lt!297705) (= (select (arr!18397 lt!297623) (index!29702 lt!297705)) lt!297632) (and ((_ is MissingVacant!6844) lt!297705) (= (index!29704 lt!297705) vacantSpotIndex!68) (= (select (arr!18397 lt!297623) (index!29704 lt!297705)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!368059 () SeekEntryResult!6844)

(assert (=> d!90687 (= lt!297705 e!368059)))

(declare-fun c!73471 () Bool)

(assert (=> d!90687 (= c!73471 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!297704 () (_ BitVec 64))

(assert (=> d!90687 (= lt!297704 (select (arr!18397 lt!297623) lt!297625))))

(assert (=> d!90687 (validMask!0 mask!3053)))

(assert (=> d!90687 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297625 vacantSpotIndex!68 lt!297632 lt!297623 mask!3053) lt!297705)))

(declare-fun b!642630 () Bool)

(assert (=> b!642630 (= e!368059 e!368060)))

(declare-fun c!73472 () Bool)

(assert (=> b!642630 (= c!73472 (= lt!297704 lt!297632))))

(declare-fun b!642631 () Bool)

(declare-fun c!73470 () Bool)

(assert (=> b!642631 (= c!73470 (= lt!297704 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642631 (= e!368060 e!368058)))

(declare-fun b!642632 () Bool)

(assert (=> b!642632 (= e!368059 Undefined!6844)))

(declare-fun b!642633 () Bool)

(assert (=> b!642633 (= e!368058 (MissingVacant!6844 vacantSpotIndex!68))))

(assert (= (and d!90687 c!73471) b!642632))

(assert (= (and d!90687 (not c!73471)) b!642630))

(assert (= (and b!642630 c!73472) b!642628))

(assert (= (and b!642630 (not c!73472)) b!642631))

(assert (= (and b!642631 c!73470) b!642633))

(assert (= (and b!642631 (not c!73470)) b!642629))

(assert (=> b!642629 m!616437))

(assert (=> b!642629 m!616437))

(declare-fun m!616477 () Bool)

(assert (=> b!642629 m!616477))

(declare-fun m!616479 () Bool)

(assert (=> d!90687 m!616479))

(declare-fun m!616483 () Bool)

(assert (=> d!90687 m!616483))

(declare-fun m!616485 () Bool)

(assert (=> d!90687 m!616485))

(assert (=> d!90687 m!616343))

(assert (=> b!642475 d!90687))

(declare-fun d!90691 () Bool)

(assert (=> d!90691 (= (validKeyInArray!0 (select (arr!18397 a!2986) j!136)) (and (not (= (select (arr!18397 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18397 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!642474 d!90691))

(declare-fun b!642710 () Bool)

(declare-fun c!73505 () Bool)

(declare-fun lt!297741 () (_ BitVec 64))

(assert (=> b!642710 (= c!73505 (= lt!297741 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368107 () SeekEntryResult!6844)

(declare-fun e!368105 () SeekEntryResult!6844)

(assert (=> b!642710 (= e!368107 e!368105)))

(declare-fun b!642711 () Bool)

(declare-fun lt!297740 () SeekEntryResult!6844)

(assert (=> b!642711 (= e!368105 (MissingZero!6844 (index!29703 lt!297740)))))

(declare-fun b!642712 () Bool)

(declare-fun e!368106 () SeekEntryResult!6844)

(assert (=> b!642712 (= e!368106 Undefined!6844)))

(declare-fun b!642713 () Bool)

(assert (=> b!642713 (= e!368105 (seekKeyOrZeroReturnVacant!0 (x!58491 lt!297740) (index!29703 lt!297740) (index!29703 lt!297740) k0!1786 a!2986 mask!3053))))

(declare-fun d!90693 () Bool)

(declare-fun lt!297739 () SeekEntryResult!6844)

(assert (=> d!90693 (and (or ((_ is Undefined!6844) lt!297739) (not ((_ is Found!6844) lt!297739)) (and (bvsge (index!29702 lt!297739) #b00000000000000000000000000000000) (bvslt (index!29702 lt!297739) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297739) ((_ is Found!6844) lt!297739) (not ((_ is MissingZero!6844) lt!297739)) (and (bvsge (index!29701 lt!297739) #b00000000000000000000000000000000) (bvslt (index!29701 lt!297739) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297739) ((_ is Found!6844) lt!297739) ((_ is MissingZero!6844) lt!297739) (not ((_ is MissingVacant!6844) lt!297739)) (and (bvsge (index!29704 lt!297739) #b00000000000000000000000000000000) (bvslt (index!29704 lt!297739) (size!18761 a!2986)))) (or ((_ is Undefined!6844) lt!297739) (ite ((_ is Found!6844) lt!297739) (= (select (arr!18397 a!2986) (index!29702 lt!297739)) k0!1786) (ite ((_ is MissingZero!6844) lt!297739) (= (select (arr!18397 a!2986) (index!29701 lt!297739)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6844) lt!297739) (= (select (arr!18397 a!2986) (index!29704 lt!297739)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90693 (= lt!297739 e!368106)))

(declare-fun c!73507 () Bool)

(assert (=> d!90693 (= c!73507 (and ((_ is Intermediate!6844) lt!297740) (undefined!7656 lt!297740)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38369 (_ BitVec 32)) SeekEntryResult!6844)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90693 (= lt!297740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90693 (validMask!0 mask!3053)))

(assert (=> d!90693 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!297739)))

(declare-fun b!642714 () Bool)

(assert (=> b!642714 (= e!368107 (Found!6844 (index!29703 lt!297740)))))

(declare-fun b!642715 () Bool)

(assert (=> b!642715 (= e!368106 e!368107)))

(assert (=> b!642715 (= lt!297741 (select (arr!18397 a!2986) (index!29703 lt!297740)))))

(declare-fun c!73506 () Bool)

(assert (=> b!642715 (= c!73506 (= lt!297741 k0!1786))))

(assert (= (and d!90693 c!73507) b!642712))

(assert (= (and d!90693 (not c!73507)) b!642715))

(assert (= (and b!642715 c!73506) b!642714))

(assert (= (and b!642715 (not c!73506)) b!642710))

(assert (= (and b!642710 c!73505) b!642711))

(assert (= (and b!642710 (not c!73505)) b!642713))

(declare-fun m!616557 () Bool)

(assert (=> b!642713 m!616557))

(declare-fun m!616559 () Bool)

(assert (=> d!90693 m!616559))

(declare-fun m!616561 () Bool)

(assert (=> d!90693 m!616561))

(declare-fun m!616563 () Bool)

(assert (=> d!90693 m!616563))

(declare-fun m!616565 () Bool)

(assert (=> d!90693 m!616565))

(assert (=> d!90693 m!616565))

(declare-fun m!616567 () Bool)

(assert (=> d!90693 m!616567))

(assert (=> d!90693 m!616343))

(declare-fun m!616569 () Bool)

(assert (=> b!642715 m!616569))

(assert (=> b!642462 d!90693))

(declare-fun d!90717 () Bool)

(declare-fun res!416434 () Bool)

(declare-fun e!368108 () Bool)

(assert (=> d!90717 (=> res!416434 e!368108)))

(assert (=> d!90717 (= res!416434 (= (select (arr!18397 lt!297623) index!984) (select (arr!18397 a!2986) j!136)))))

(assert (=> d!90717 (= (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) index!984) e!368108)))

(declare-fun b!642716 () Bool)

(declare-fun e!368109 () Bool)

(assert (=> b!642716 (= e!368108 e!368109)))

(declare-fun res!416435 () Bool)

(assert (=> b!642716 (=> (not res!416435) (not e!368109))))

(assert (=> b!642716 (= res!416435 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18761 lt!297623)))))

(declare-fun b!642717 () Bool)

(assert (=> b!642717 (= e!368109 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90717 (not res!416434)) b!642716))

(assert (= (and b!642716 res!416435) b!642717))

(assert (=> d!90717 m!616453))

(assert (=> b!642717 m!616299))

(declare-fun m!616571 () Bool)

(assert (=> b!642717 m!616571))

(assert (=> b!642472 d!90717))

(declare-fun b!642740 () Bool)

(declare-fun e!368132 () Bool)

(declare-fun call!33571 () Bool)

(assert (=> b!642740 (= e!368132 call!33571)))

(declare-fun b!642741 () Bool)

(declare-fun e!368130 () Bool)

(assert (=> b!642741 (= e!368130 e!368132)))

(declare-fun lt!297758 () (_ BitVec 64))

(assert (=> b!642741 (= lt!297758 (select (arr!18397 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!297760 () Unit!21736)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38369 (_ BitVec 64) (_ BitVec 32)) Unit!21736)

(assert (=> b!642741 (= lt!297760 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!297758 #b00000000000000000000000000000000))))

(assert (=> b!642741 (arrayContainsKey!0 a!2986 lt!297758 #b00000000000000000000000000000000)))

(declare-fun lt!297759 () Unit!21736)

(assert (=> b!642741 (= lt!297759 lt!297760)))

(declare-fun res!416455 () Bool)

(assert (=> b!642741 (= res!416455 (= (seekEntryOrOpen!0 (select (arr!18397 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6844 #b00000000000000000000000000000000)))))

(assert (=> b!642741 (=> (not res!416455) (not e!368132))))

(declare-fun d!90719 () Bool)

(declare-fun res!416454 () Bool)

(declare-fun e!368131 () Bool)

(assert (=> d!90719 (=> res!416454 e!368131)))

(assert (=> d!90719 (= res!416454 (bvsge #b00000000000000000000000000000000 (size!18761 a!2986)))))

(assert (=> d!90719 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!368131)))

(declare-fun b!642742 () Bool)

(assert (=> b!642742 (= e!368131 e!368130)))

(declare-fun c!73510 () Bool)

(assert (=> b!642742 (= c!73510 (validKeyInArray!0 (select (arr!18397 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!642743 () Bool)

(assert (=> b!642743 (= e!368130 call!33571)))

(declare-fun bm!33568 () Bool)

(assert (=> bm!33568 (= call!33571 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!90719 (not res!416454)) b!642742))

(assert (= (and b!642742 c!73510) b!642741))

(assert (= (and b!642742 (not c!73510)) b!642743))

(assert (= (and b!642741 res!416455) b!642740))

(assert (= (or b!642740 b!642743) bm!33568))

(assert (=> b!642741 m!616423))

(declare-fun m!616589 () Bool)

(assert (=> b!642741 m!616589))

(declare-fun m!616591 () Bool)

(assert (=> b!642741 m!616591))

(assert (=> b!642741 m!616423))

(declare-fun m!616593 () Bool)

(assert (=> b!642741 m!616593))

(assert (=> b!642742 m!616423))

(assert (=> b!642742 m!616423))

(assert (=> b!642742 m!616425))

(declare-fun m!616595 () Bool)

(assert (=> bm!33568 m!616595))

(assert (=> b!642461 d!90719))

(declare-fun d!90733 () Bool)

(declare-fun res!416456 () Bool)

(declare-fun e!368133 () Bool)

(assert (=> d!90733 (=> res!416456 e!368133)))

(assert (=> d!90733 (= res!416456 (= (select (arr!18397 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90733 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!368133)))

(declare-fun b!642744 () Bool)

(declare-fun e!368134 () Bool)

(assert (=> b!642744 (= e!368133 e!368134)))

(declare-fun res!416457 () Bool)

(assert (=> b!642744 (=> (not res!416457) (not e!368134))))

(assert (=> b!642744 (= res!416457 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18761 a!2986)))))

(declare-fun b!642745 () Bool)

(assert (=> b!642745 (= e!368134 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90733 (not res!416456)) b!642744))

(assert (= (and b!642744 res!416457) b!642745))

(assert (=> d!90733 m!616423))

(declare-fun m!616597 () Bool)

(assert (=> b!642745 m!616597))

(assert (=> b!642458 d!90733))

(declare-fun b!642750 () Bool)

(declare-fun e!368142 () Bool)

(declare-fun call!33572 () Bool)

(assert (=> b!642750 (= e!368142 call!33572)))

(declare-fun b!642751 () Bool)

(declare-fun e!368141 () Bool)

(declare-fun e!368143 () Bool)

(assert (=> b!642751 (= e!368141 e!368143)))

(declare-fun res!416466 () Bool)

(assert (=> b!642751 (=> (not res!416466) (not e!368143))))

(declare-fun e!368144 () Bool)

(assert (=> b!642751 (= res!416466 (not e!368144))))

(declare-fun res!416465 () Bool)

(assert (=> b!642751 (=> (not res!416465) (not e!368144))))

(assert (=> b!642751 (= res!416465 (validKeyInArray!0 (select (arr!18397 lt!297623) j!136)))))

(declare-fun b!642752 () Bool)

(assert (=> b!642752 (= e!368144 (contains!3141 Nil!12488 (select (arr!18397 lt!297623) j!136)))))

(declare-fun b!642753 () Bool)

(assert (=> b!642753 (= e!368143 e!368142)))

(declare-fun c!73511 () Bool)

(assert (=> b!642753 (= c!73511 (validKeyInArray!0 (select (arr!18397 lt!297623) j!136)))))

(declare-fun bm!33569 () Bool)

(assert (=> bm!33569 (= call!33572 (arrayNoDuplicates!0 lt!297623 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73511 (Cons!12487 (select (arr!18397 lt!297623) j!136) Nil!12488) Nil!12488)))))

(declare-fun b!642754 () Bool)

(assert (=> b!642754 (= e!368142 call!33572)))

(declare-fun d!90735 () Bool)

(declare-fun res!416464 () Bool)

(assert (=> d!90735 (=> res!416464 e!368141)))

(assert (=> d!90735 (= res!416464 (bvsge j!136 (size!18761 lt!297623)))))

(assert (=> d!90735 (= (arrayNoDuplicates!0 lt!297623 j!136 Nil!12488) e!368141)))

(assert (= (and d!90735 (not res!416464)) b!642751))

(assert (= (and b!642751 res!416465) b!642752))

(assert (= (and b!642751 res!416466) b!642753))

(assert (= (and b!642753 c!73511) b!642750))

(assert (= (and b!642753 (not c!73511)) b!642754))

(assert (= (or b!642750 b!642754) bm!33569))

(assert (=> b!642751 m!616419))

(assert (=> b!642751 m!616419))

(declare-fun m!616599 () Bool)

(assert (=> b!642751 m!616599))

(assert (=> b!642752 m!616419))

(assert (=> b!642752 m!616419))

(declare-fun m!616601 () Bool)

(assert (=> b!642752 m!616601))

(assert (=> b!642753 m!616419))

(assert (=> b!642753 m!616419))

(assert (=> b!642753 m!616599))

(assert (=> bm!33569 m!616419))

(declare-fun m!616603 () Bool)

(assert (=> bm!33569 m!616603))

(assert (=> b!642468 d!90735))

(declare-fun d!90737 () Bool)

(assert (=> d!90737 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18761 lt!297623)) (not (= (select (arr!18397 lt!297623) j!136) (select (arr!18397 a!2986) j!136))))))

(declare-fun lt!297765 () Unit!21736)

(declare-fun choose!21 (array!38369 (_ BitVec 64) (_ BitVec 32) List!12491) Unit!21736)

(assert (=> d!90737 (= lt!297765 (choose!21 lt!297623 (select (arr!18397 a!2986) j!136) j!136 Nil!12488))))

(assert (=> d!90737 (bvslt (size!18761 lt!297623) #b01111111111111111111111111111111)))

(assert (=> d!90737 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297623 (select (arr!18397 a!2986) j!136) j!136 Nil!12488) lt!297765)))

(declare-fun bs!19228 () Bool)

(assert (= bs!19228 d!90737))

(assert (=> bs!19228 m!616419))

(assert (=> bs!19228 m!616299))

(declare-fun m!616613 () Bool)

(assert (=> bs!19228 m!616613))

(assert (=> b!642468 d!90737))

(declare-fun d!90741 () Bool)

(assert (=> d!90741 (arrayNoDuplicates!0 lt!297623 j!136 Nil!12488)))

(declare-fun lt!297772 () Unit!21736)

(declare-fun choose!39 (array!38369 (_ BitVec 32) (_ BitVec 32)) Unit!21736)

(assert (=> d!90741 (= lt!297772 (choose!39 lt!297623 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90741 (bvslt (size!18761 lt!297623) #b01111111111111111111111111111111)))

(assert (=> d!90741 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!297623 #b00000000000000000000000000000000 j!136) lt!297772)))

(declare-fun bs!19229 () Bool)

(assert (= bs!19229 d!90741))

(assert (=> bs!19229 m!616309))

(declare-fun m!616621 () Bool)

(assert (=> bs!19229 m!616621))

(assert (=> b!642468 d!90741))

(declare-fun b!642784 () Bool)

(declare-fun e!368161 () Bool)

(declare-fun call!33576 () Bool)

(assert (=> b!642784 (= e!368161 call!33576)))

(declare-fun b!642785 () Bool)

(declare-fun e!368160 () Bool)

(declare-fun e!368162 () Bool)

(assert (=> b!642785 (= e!368160 e!368162)))

(declare-fun res!416472 () Bool)

(assert (=> b!642785 (=> (not res!416472) (not e!368162))))

(declare-fun e!368163 () Bool)

(assert (=> b!642785 (= res!416472 (not e!368163))))

(declare-fun res!416471 () Bool)

(assert (=> b!642785 (=> (not res!416471) (not e!368163))))

(assert (=> b!642785 (= res!416471 (validKeyInArray!0 (select (arr!18397 lt!297623) #b00000000000000000000000000000000)))))

(declare-fun b!642786 () Bool)

(assert (=> b!642786 (= e!368163 (contains!3141 Nil!12488 (select (arr!18397 lt!297623) #b00000000000000000000000000000000)))))

(declare-fun b!642787 () Bool)

(assert (=> b!642787 (= e!368162 e!368161)))

(declare-fun c!73524 () Bool)

(assert (=> b!642787 (= c!73524 (validKeyInArray!0 (select (arr!18397 lt!297623) #b00000000000000000000000000000000)))))

(declare-fun bm!33573 () Bool)

(assert (=> bm!33573 (= call!33576 (arrayNoDuplicates!0 lt!297623 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73524 (Cons!12487 (select (arr!18397 lt!297623) #b00000000000000000000000000000000) Nil!12488) Nil!12488)))))

(declare-fun b!642788 () Bool)

(assert (=> b!642788 (= e!368161 call!33576)))

(declare-fun d!90745 () Bool)

(declare-fun res!416470 () Bool)

(assert (=> d!90745 (=> res!416470 e!368160)))

(assert (=> d!90745 (= res!416470 (bvsge #b00000000000000000000000000000000 (size!18761 lt!297623)))))

(assert (=> d!90745 (= (arrayNoDuplicates!0 lt!297623 #b00000000000000000000000000000000 Nil!12488) e!368160)))

(assert (= (and d!90745 (not res!416470)) b!642785))

(assert (= (and b!642785 res!416471) b!642786))

(assert (= (and b!642785 res!416472) b!642787))

(assert (= (and b!642787 c!73524) b!642784))

(assert (= (and b!642787 (not c!73524)) b!642788))

(assert (= (or b!642784 b!642788) bm!33573))

(declare-fun m!616623 () Bool)

(assert (=> b!642785 m!616623))

(assert (=> b!642785 m!616623))

(declare-fun m!616625 () Bool)

(assert (=> b!642785 m!616625))

(assert (=> b!642786 m!616623))

(assert (=> b!642786 m!616623))

(declare-fun m!616627 () Bool)

(assert (=> b!642786 m!616627))

(assert (=> b!642787 m!616623))

(assert (=> b!642787 m!616623))

(assert (=> b!642787 m!616625))

(assert (=> bm!33573 m!616623))

(declare-fun m!616629 () Bool)

(assert (=> bm!33573 m!616629))

(assert (=> b!642468 d!90745))

(declare-fun d!90747 () Bool)

(declare-fun e!368181 () Bool)

(assert (=> d!90747 e!368181))

(declare-fun res!416479 () Bool)

(assert (=> d!90747 (=> (not res!416479) (not e!368181))))

(assert (=> d!90747 (= res!416479 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18761 a!2986))))))

(declare-fun lt!297789 () Unit!21736)

(declare-fun choose!41 (array!38369 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12491) Unit!21736)

(assert (=> d!90747 (= lt!297789 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12488))))

(assert (=> d!90747 (bvslt (size!18761 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90747 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12488) lt!297789)))

(declare-fun b!642812 () Bool)

(assert (=> b!642812 (= e!368181 (arrayNoDuplicates!0 (array!38370 (store (arr!18397 a!2986) i!1108 k0!1786) (size!18761 a!2986)) #b00000000000000000000000000000000 Nil!12488))))

(assert (= (and d!90747 res!416479) b!642812))

(declare-fun m!616649 () Bool)

(assert (=> d!90747 m!616649))

(assert (=> b!642812 m!616319))

(declare-fun m!616651 () Bool)

(assert (=> b!642812 m!616651))

(assert (=> b!642468 d!90747))

(declare-fun d!90755 () Bool)

(declare-fun res!416480 () Bool)

(declare-fun e!368182 () Bool)

(assert (=> d!90755 (=> res!416480 e!368182)))

(assert (=> d!90755 (= res!416480 (= (select (arr!18397 lt!297623) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18397 a!2986) j!136)))))

(assert (=> d!90755 (= (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!368182)))

(declare-fun b!642818 () Bool)

(declare-fun e!368183 () Bool)

(assert (=> b!642818 (= e!368182 e!368183)))

(declare-fun res!416481 () Bool)

(assert (=> b!642818 (=> (not res!416481) (not e!368183))))

(assert (=> b!642818 (= res!416481 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18761 lt!297623)))))

(declare-fun b!642819 () Bool)

(assert (=> b!642819 (= e!368183 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90755 (not res!416480)) b!642818))

(assert (= (and b!642818 res!416481) b!642819))

(declare-fun m!616661 () Bool)

(assert (=> d!90755 m!616661))

(assert (=> b!642819 m!616299))

(declare-fun m!616663 () Bool)

(assert (=> b!642819 m!616663))

(assert (=> b!642468 d!90755))

(declare-fun d!90759 () Bool)

(assert (=> d!90759 (arrayContainsKey!0 lt!297623 (select (arr!18397 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297796 () Unit!21736)

(declare-fun choose!114 (array!38369 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21736)

(assert (=> d!90759 (= lt!297796 (choose!114 lt!297623 (select (arr!18397 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90759 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90759 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297623 (select (arr!18397 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!297796)))

(declare-fun bs!19231 () Bool)

(assert (= bs!19231 d!90759))

(assert (=> bs!19231 m!616299))

(assert (=> bs!19231 m!616313))

(assert (=> bs!19231 m!616299))

(declare-fun m!616675 () Bool)

(assert (=> bs!19231 m!616675))

(assert (=> b!642468 d!90759))

(check-sat (not b!642819) (not bm!33557) (not d!90677) (not d!90693) (not bm!33569) (not d!90747) (not b!642560) (not b!642787) (not b!642562) (not b!642753) (not b!642577) (not b!642548) (not b!642589) (not d!90741) (not bm!33568) (not b!642717) (not b!642745) (not b!642583) (not bm!33573) (not b!642742) (not b!642713) (not d!90669) (not d!90737) (not b!642618) (not d!90675) (not b!642561) (not b!642751) (not d!90687) (not d!90681) (not b!642812) (not b!642786) (not b!642629) (not d!90673) (not b!642741) (not b!642752) (not d!90759) (not b!642785))
(check-sat)
