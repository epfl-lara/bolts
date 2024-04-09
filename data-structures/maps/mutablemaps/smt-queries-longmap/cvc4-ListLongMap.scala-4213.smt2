; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57742 () Bool)

(assert start!57742)

(declare-fun b!638489 () Bool)

(declare-fun res!413469 () Bool)

(declare-fun e!365376 () Bool)

(assert (=> b!638489 (=> (not res!413469) (not e!365376))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38269 0))(
  ( (array!38270 (arr!18353 (Array (_ BitVec 32) (_ BitVec 64))) (size!18717 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38269)

(assert (=> b!638489 (= res!413469 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18353 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638490 () Bool)

(declare-fun lt!295364 () array!38269)

(declare-fun e!365375 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638490 (= e!365375 (arrayContainsKey!0 lt!295364 (select (arr!18353 a!2986) j!136) index!984))))

(declare-fun b!638491 () Bool)

(declare-fun e!365367 () Bool)

(declare-datatypes ((SeekEntryResult!6800 0))(
  ( (MissingZero!6800 (index!29513 (_ BitVec 32))) (Found!6800 (index!29514 (_ BitVec 32))) (Intermediate!6800 (undefined!7612 Bool) (index!29515 (_ BitVec 32)) (x!58291 (_ BitVec 32))) (Undefined!6800) (MissingVacant!6800 (index!29516 (_ BitVec 32))) )
))
(declare-fun lt!295360 () SeekEntryResult!6800)

(declare-fun lt!295362 () SeekEntryResult!6800)

(assert (=> b!638491 (= e!365367 (= lt!295360 lt!295362))))

(declare-fun b!638492 () Bool)

(declare-fun res!413455 () Bool)

(declare-fun e!365372 () Bool)

(assert (=> b!638492 (=> (not res!413455) (not e!365372))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638492 (= res!413455 (validKeyInArray!0 k!1786))))

(declare-fun b!638493 () Bool)

(declare-fun e!365373 () Bool)

(assert (=> b!638493 (= e!365373 e!365375)))

(declare-fun res!413466 () Bool)

(assert (=> b!638493 (=> (not res!413466) (not e!365375))))

(assert (=> b!638493 (= res!413466 (arrayContainsKey!0 lt!295364 (select (arr!18353 a!2986) j!136) j!136))))

(declare-fun b!638495 () Bool)

(declare-fun res!413458 () Bool)

(assert (=> b!638495 (=> (not res!413458) (not e!365376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38269 (_ BitVec 32)) Bool)

(assert (=> b!638495 (= res!413458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638496 () Bool)

(assert (=> b!638496 (= e!365372 e!365376)))

(declare-fun res!413468 () Bool)

(assert (=> b!638496 (=> (not res!413468) (not e!365376))))

(declare-fun lt!295363 () SeekEntryResult!6800)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638496 (= res!413468 (or (= lt!295363 (MissingZero!6800 i!1108)) (= lt!295363 (MissingVacant!6800 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38269 (_ BitVec 32)) SeekEntryResult!6800)

(assert (=> b!638496 (= lt!295363 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638497 () Bool)

(declare-fun res!413467 () Bool)

(assert (=> b!638497 (=> (not res!413467) (not e!365372))))

(assert (=> b!638497 (= res!413467 (validKeyInArray!0 (select (arr!18353 a!2986) j!136)))))

(declare-fun b!638498 () Bool)

(declare-fun res!413464 () Bool)

(assert (=> b!638498 (=> (not res!413464) (not e!365372))))

(assert (=> b!638498 (= res!413464 (and (= (size!18717 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18717 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18717 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638499 () Bool)

(declare-fun e!365366 () Bool)

(declare-fun e!365374 () Bool)

(assert (=> b!638499 (= e!365366 (not e!365374))))

(declare-fun res!413463 () Bool)

(assert (=> b!638499 (=> res!413463 e!365374)))

(declare-fun lt!295371 () SeekEntryResult!6800)

(assert (=> b!638499 (= res!413463 (not (= lt!295371 (Found!6800 index!984))))))

(declare-datatypes ((Unit!21558 0))(
  ( (Unit!21559) )
))
(declare-fun lt!295365 () Unit!21558)

(declare-fun e!365369 () Unit!21558)

(assert (=> b!638499 (= lt!295365 e!365369)))

(declare-fun c!72884 () Bool)

(assert (=> b!638499 (= c!72884 (= lt!295371 Undefined!6800))))

(declare-fun lt!295361 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38269 (_ BitVec 32)) SeekEntryResult!6800)

(assert (=> b!638499 (= lt!295371 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295361 lt!295364 mask!3053))))

(assert (=> b!638499 e!365367))

(declare-fun res!413461 () Bool)

(assert (=> b!638499 (=> (not res!413461) (not e!365367))))

(declare-fun lt!295367 () (_ BitVec 32))

(assert (=> b!638499 (= res!413461 (= lt!295362 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 lt!295361 lt!295364 mask!3053)))))

(assert (=> b!638499 (= lt!295362 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 (select (arr!18353 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638499 (= lt!295361 (select (store (arr!18353 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295369 () Unit!21558)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38269 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21558)

(assert (=> b!638499 (= lt!295369 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638499 (= lt!295367 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638500 () Bool)

(declare-fun e!365371 () Bool)

(assert (=> b!638500 (= e!365371 e!365373)))

(declare-fun res!413471 () Bool)

(assert (=> b!638500 (=> res!413471 e!365373)))

(declare-fun lt!295366 () (_ BitVec 64))

(assert (=> b!638500 (= res!413471 (or (not (= (select (arr!18353 a!2986) j!136) lt!295361)) (not (= (select (arr!18353 a!2986) j!136) lt!295366)) (bvsge j!136 index!984)))))

(declare-fun b!638501 () Bool)

(declare-fun e!365370 () Bool)

(assert (=> b!638501 (= e!365376 e!365370)))

(declare-fun res!413460 () Bool)

(assert (=> b!638501 (=> (not res!413460) (not e!365370))))

(assert (=> b!638501 (= res!413460 (= (select (store (arr!18353 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638501 (= lt!295364 (array!38270 (store (arr!18353 a!2986) i!1108 k!1786) (size!18717 a!2986)))))

(declare-fun b!638502 () Bool)

(declare-fun Unit!21560 () Unit!21558)

(assert (=> b!638502 (= e!365369 Unit!21560)))

(assert (=> b!638502 false))

(declare-fun b!638503 () Bool)

(declare-fun Unit!21561 () Unit!21558)

(assert (=> b!638503 (= e!365369 Unit!21561)))

(declare-fun res!413459 () Bool)

(assert (=> start!57742 (=> (not res!413459) (not e!365372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57742 (= res!413459 (validMask!0 mask!3053))))

(assert (=> start!57742 e!365372))

(assert (=> start!57742 true))

(declare-fun array_inv!14127 (array!38269) Bool)

(assert (=> start!57742 (array_inv!14127 a!2986)))

(declare-fun b!638494 () Bool)

(declare-fun res!413457 () Bool)

(assert (=> b!638494 (=> (not res!413457) (not e!365376))))

(declare-datatypes ((List!12447 0))(
  ( (Nil!12444) (Cons!12443 (h!13488 (_ BitVec 64)) (t!18683 List!12447)) )
))
(declare-fun arrayNoDuplicates!0 (array!38269 (_ BitVec 32) List!12447) Bool)

(assert (=> b!638494 (= res!413457 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12444))))

(declare-fun b!638504 () Bool)

(declare-fun res!413462 () Bool)

(assert (=> b!638504 (=> (not res!413462) (not e!365372))))

(assert (=> b!638504 (= res!413462 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638505 () Bool)

(assert (=> b!638505 (= e!365370 e!365366)))

(declare-fun res!413465 () Bool)

(assert (=> b!638505 (=> (not res!413465) (not e!365366))))

(assert (=> b!638505 (= res!413465 (and (= lt!295360 (Found!6800 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18353 a!2986) index!984) (select (arr!18353 a!2986) j!136))) (not (= (select (arr!18353 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638505 (= lt!295360 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18353 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638506 () Bool)

(declare-fun e!365368 () Bool)

(assert (=> b!638506 (= e!365368 (bvslt (size!18717 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!638506 (arrayNoDuplicates!0 lt!295364 #b00000000000000000000000000000000 Nil!12444)))

(declare-fun lt!295368 () Unit!21558)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38269 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12447) Unit!21558)

(assert (=> b!638506 (= lt!295368 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12444))))

(assert (=> b!638506 (arrayContainsKey!0 lt!295364 (select (arr!18353 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295370 () Unit!21558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38269 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21558)

(assert (=> b!638506 (= lt!295370 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295364 (select (arr!18353 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638507 () Bool)

(assert (=> b!638507 (= e!365374 e!365368)))

(declare-fun res!413456 () Bool)

(assert (=> b!638507 (=> res!413456 e!365368)))

(assert (=> b!638507 (= res!413456 (or (not (= (select (arr!18353 a!2986) j!136) lt!295361)) (not (= (select (arr!18353 a!2986) j!136) lt!295366)) (bvsge j!136 index!984)))))

(assert (=> b!638507 e!365371))

(declare-fun res!413470 () Bool)

(assert (=> b!638507 (=> (not res!413470) (not e!365371))))

(assert (=> b!638507 (= res!413470 (= lt!295366 (select (arr!18353 a!2986) j!136)))))

(assert (=> b!638507 (= lt!295366 (select (store (arr!18353 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!57742 res!413459) b!638498))

(assert (= (and b!638498 res!413464) b!638497))

(assert (= (and b!638497 res!413467) b!638492))

(assert (= (and b!638492 res!413455) b!638504))

(assert (= (and b!638504 res!413462) b!638496))

(assert (= (and b!638496 res!413468) b!638495))

(assert (= (and b!638495 res!413458) b!638494))

(assert (= (and b!638494 res!413457) b!638489))

(assert (= (and b!638489 res!413469) b!638501))

(assert (= (and b!638501 res!413460) b!638505))

(assert (= (and b!638505 res!413465) b!638499))

(assert (= (and b!638499 res!413461) b!638491))

(assert (= (and b!638499 c!72884) b!638502))

(assert (= (and b!638499 (not c!72884)) b!638503))

(assert (= (and b!638499 (not res!413463)) b!638507))

(assert (= (and b!638507 res!413470) b!638500))

(assert (= (and b!638500 (not res!413471)) b!638493))

(assert (= (and b!638493 res!413466) b!638490))

(assert (= (and b!638507 (not res!413456)) b!638506))

(declare-fun m!612477 () Bool)

(assert (=> b!638501 m!612477))

(declare-fun m!612479 () Bool)

(assert (=> b!638501 m!612479))

(declare-fun m!612481 () Bool)

(assert (=> b!638495 m!612481))

(declare-fun m!612483 () Bool)

(assert (=> b!638506 m!612483))

(declare-fun m!612485 () Bool)

(assert (=> b!638506 m!612485))

(declare-fun m!612487 () Bool)

(assert (=> b!638506 m!612487))

(assert (=> b!638506 m!612483))

(declare-fun m!612489 () Bool)

(assert (=> b!638506 m!612489))

(assert (=> b!638506 m!612483))

(declare-fun m!612491 () Bool)

(assert (=> b!638506 m!612491))

(declare-fun m!612493 () Bool)

(assert (=> b!638492 m!612493))

(assert (=> b!638507 m!612483))

(assert (=> b!638507 m!612477))

(declare-fun m!612495 () Bool)

(assert (=> b!638507 m!612495))

(declare-fun m!612497 () Bool)

(assert (=> b!638499 m!612497))

(assert (=> b!638499 m!612483))

(assert (=> b!638499 m!612477))

(declare-fun m!612499 () Bool)

(assert (=> b!638499 m!612499))

(declare-fun m!612501 () Bool)

(assert (=> b!638499 m!612501))

(assert (=> b!638499 m!612483))

(declare-fun m!612503 () Bool)

(assert (=> b!638499 m!612503))

(declare-fun m!612505 () Bool)

(assert (=> b!638499 m!612505))

(declare-fun m!612507 () Bool)

(assert (=> b!638499 m!612507))

(declare-fun m!612509 () Bool)

(assert (=> b!638504 m!612509))

(declare-fun m!612511 () Bool)

(assert (=> start!57742 m!612511))

(declare-fun m!612513 () Bool)

(assert (=> start!57742 m!612513))

(declare-fun m!612515 () Bool)

(assert (=> b!638496 m!612515))

(assert (=> b!638500 m!612483))

(assert (=> b!638493 m!612483))

(assert (=> b!638493 m!612483))

(declare-fun m!612517 () Bool)

(assert (=> b!638493 m!612517))

(assert (=> b!638497 m!612483))

(assert (=> b!638497 m!612483))

(declare-fun m!612519 () Bool)

(assert (=> b!638497 m!612519))

(assert (=> b!638490 m!612483))

(assert (=> b!638490 m!612483))

(declare-fun m!612521 () Bool)

(assert (=> b!638490 m!612521))

(declare-fun m!612523 () Bool)

(assert (=> b!638489 m!612523))

(declare-fun m!612525 () Bool)

(assert (=> b!638505 m!612525))

(assert (=> b!638505 m!612483))

(assert (=> b!638505 m!612483))

(declare-fun m!612527 () Bool)

(assert (=> b!638505 m!612527))

(declare-fun m!612529 () Bool)

(assert (=> b!638494 m!612529))

(push 1)

(assert (not b!638493))

(assert (not b!638506))

(assert (not b!638495))

(assert (not b!638504))

(assert (not b!638497))

(assert (not b!638499))

(assert (not b!638496))

(assert (not b!638505))

(assert (not start!57742))

(assert (not b!638494))

(assert (not b!638492))

(assert (not b!638490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!90115 () Bool)

(assert (=> d!90115 (= (validKeyInArray!0 (select (arr!18353 a!2986) j!136)) (and (not (= (select (arr!18353 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18353 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!638497 d!90115))

(declare-fun b!638622 () Bool)

(declare-fun c!72920 () Bool)

(declare-fun lt!295419 () (_ BitVec 64))

(assert (=> b!638622 (= c!72920 (= lt!295419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365460 () SeekEntryResult!6800)

(declare-fun e!365458 () SeekEntryResult!6800)

(assert (=> b!638622 (= e!365460 e!365458)))

(declare-fun b!638623 () Bool)

(declare-fun e!365459 () SeekEntryResult!6800)

(assert (=> b!638623 (= e!365459 e!365460)))

(declare-fun c!72921 () Bool)

(assert (=> b!638623 (= c!72921 (= lt!295419 lt!295361))))

(declare-fun b!638624 () Bool)

(assert (=> b!638624 (= e!365458 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!295361 lt!295364 mask!3053))))

(declare-fun lt!295418 () SeekEntryResult!6800)

(declare-fun d!90117 () Bool)

(assert (=> d!90117 (and (or (is-Undefined!6800 lt!295418) (not (is-Found!6800 lt!295418)) (and (bvsge (index!29514 lt!295418) #b00000000000000000000000000000000) (bvslt (index!29514 lt!295418) (size!18717 lt!295364)))) (or (is-Undefined!6800 lt!295418) (is-Found!6800 lt!295418) (not (is-MissingVacant!6800 lt!295418)) (not (= (index!29516 lt!295418) vacantSpotIndex!68)) (and (bvsge (index!29516 lt!295418) #b00000000000000000000000000000000) (bvslt (index!29516 lt!295418) (size!18717 lt!295364)))) (or (is-Undefined!6800 lt!295418) (ite (is-Found!6800 lt!295418) (= (select (arr!18353 lt!295364) (index!29514 lt!295418)) lt!295361) (and (is-MissingVacant!6800 lt!295418) (= (index!29516 lt!295418) vacantSpotIndex!68) (= (select (arr!18353 lt!295364) (index!29516 lt!295418)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90117 (= lt!295418 e!365459)))

(declare-fun c!72919 () Bool)

(assert (=> d!90117 (= c!72919 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90117 (= lt!295419 (select (arr!18353 lt!295364) index!984))))

(assert (=> d!90117 (validMask!0 mask!3053)))

(assert (=> d!90117 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295361 lt!295364 mask!3053) lt!295418)))

(declare-fun b!638625 () Bool)

(assert (=> b!638625 (= e!365458 (MissingVacant!6800 vacantSpotIndex!68))))

(declare-fun b!638626 () Bool)

(assert (=> b!638626 (= e!365460 (Found!6800 index!984))))

(declare-fun b!638627 () Bool)

(assert (=> b!638627 (= e!365459 Undefined!6800)))

(assert (= (and d!90117 c!72919) b!638627))

(assert (= (and d!90117 (not c!72919)) b!638623))

(assert (= (and b!638623 c!72921) b!638626))

(assert (= (and b!638623 (not c!72921)) b!638622))

(assert (= (and b!638622 c!72920) b!638625))

(assert (= (and b!638622 (not c!72920)) b!638624))

(assert (=> b!638624 m!612497))

(assert (=> b!638624 m!612497))

(declare-fun m!612623 () Bool)

(assert (=> b!638624 m!612623))

(declare-fun m!612627 () Bool)

(assert (=> d!90117 m!612627))

(declare-fun m!612629 () Bool)

(assert (=> d!90117 m!612629))

(declare-fun m!612631 () Bool)

(assert (=> d!90117 m!612631))

(assert (=> d!90117 m!612511))

(assert (=> b!638499 d!90117))

(declare-fun d!90133 () Bool)

(declare-fun lt!295422 () (_ BitVec 32))

(assert (=> d!90133 (and (bvsge lt!295422 #b00000000000000000000000000000000) (bvslt lt!295422 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90133 (= lt!295422 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90133 (validMask!0 mask!3053)))

(assert (=> d!90133 (= (nextIndex!0 index!984 x!910 mask!3053) lt!295422)))

(declare-fun bs!19147 () Bool)

(assert (= bs!19147 d!90133))

(declare-fun m!612633 () Bool)

(assert (=> bs!19147 m!612633))

(assert (=> bs!19147 m!612511))

(assert (=> b!638499 d!90133))

(declare-fun b!638628 () Bool)

(declare-fun c!72923 () Bool)

(declare-fun lt!295424 () (_ BitVec 64))

(assert (=> b!638628 (= c!72923 (= lt!295424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365463 () SeekEntryResult!6800)

(declare-fun e!365461 () SeekEntryResult!6800)

(assert (=> b!638628 (= e!365463 e!365461)))

(declare-fun b!638629 () Bool)

(declare-fun e!365462 () SeekEntryResult!6800)

(assert (=> b!638629 (= e!365462 e!365463)))

(declare-fun c!72924 () Bool)

(assert (=> b!638629 (= c!72924 (= lt!295424 (select (arr!18353 a!2986) j!136)))))

(declare-fun b!638630 () Bool)

(assert (=> b!638630 (= e!365461 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295367 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18353 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!295423 () SeekEntryResult!6800)

(declare-fun d!90135 () Bool)

(assert (=> d!90135 (and (or (is-Undefined!6800 lt!295423) (not (is-Found!6800 lt!295423)) (and (bvsge (index!29514 lt!295423) #b00000000000000000000000000000000) (bvslt (index!29514 lt!295423) (size!18717 a!2986)))) (or (is-Undefined!6800 lt!295423) (is-Found!6800 lt!295423) (not (is-MissingVacant!6800 lt!295423)) (not (= (index!29516 lt!295423) vacantSpotIndex!68)) (and (bvsge (index!29516 lt!295423) #b00000000000000000000000000000000) (bvslt (index!29516 lt!295423) (size!18717 a!2986)))) (or (is-Undefined!6800 lt!295423) (ite (is-Found!6800 lt!295423) (= (select (arr!18353 a!2986) (index!29514 lt!295423)) (select (arr!18353 a!2986) j!136)) (and (is-MissingVacant!6800 lt!295423) (= (index!29516 lt!295423) vacantSpotIndex!68) (= (select (arr!18353 a!2986) (index!29516 lt!295423)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90135 (= lt!295423 e!365462)))

(declare-fun c!72922 () Bool)

(assert (=> d!90135 (= c!72922 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90135 (= lt!295424 (select (arr!18353 a!2986) lt!295367))))

(assert (=> d!90135 (validMask!0 mask!3053)))

(assert (=> d!90135 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 (select (arr!18353 a!2986) j!136) a!2986 mask!3053) lt!295423)))

(declare-fun b!638631 () Bool)

(assert (=> b!638631 (= e!365461 (MissingVacant!6800 vacantSpotIndex!68))))

(declare-fun b!638632 () Bool)

(assert (=> b!638632 (= e!365463 (Found!6800 lt!295367))))

(declare-fun b!638633 () Bool)

(assert (=> b!638633 (= e!365462 Undefined!6800)))

(assert (= (and d!90135 c!72922) b!638633))

(assert (= (and d!90135 (not c!72922)) b!638629))

(assert (= (and b!638629 c!72924) b!638632))

(assert (= (and b!638629 (not c!72924)) b!638628))

(assert (= (and b!638628 c!72923) b!638631))

(assert (= (and b!638628 (not c!72923)) b!638630))

(declare-fun m!612635 () Bool)

(assert (=> b!638630 m!612635))

(assert (=> b!638630 m!612635))

(assert (=> b!638630 m!612483))

(declare-fun m!612637 () Bool)

(assert (=> b!638630 m!612637))

(declare-fun m!612639 () Bool)

(assert (=> d!90135 m!612639))

(declare-fun m!612641 () Bool)

(assert (=> d!90135 m!612641))

(declare-fun m!612643 () Bool)

(assert (=> d!90135 m!612643))

(assert (=> d!90135 m!612511))

(assert (=> b!638499 d!90135))

(declare-fun b!638634 () Bool)

(declare-fun c!72926 () Bool)

(declare-fun lt!295426 () (_ BitVec 64))

(assert (=> b!638634 (= c!72926 (= lt!295426 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365466 () SeekEntryResult!6800)

(declare-fun e!365464 () SeekEntryResult!6800)

(assert (=> b!638634 (= e!365466 e!365464)))

(declare-fun b!638635 () Bool)

(declare-fun e!365465 () SeekEntryResult!6800)

(assert (=> b!638635 (= e!365465 e!365466)))

(declare-fun c!72927 () Bool)

(assert (=> b!638635 (= c!72927 (= lt!295426 lt!295361))))

(declare-fun b!638636 () Bool)

(assert (=> b!638636 (= e!365464 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295367 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!295361 lt!295364 mask!3053))))

(declare-fun d!90137 () Bool)

(declare-fun lt!295425 () SeekEntryResult!6800)

(assert (=> d!90137 (and (or (is-Undefined!6800 lt!295425) (not (is-Found!6800 lt!295425)) (and (bvsge (index!29514 lt!295425) #b00000000000000000000000000000000) (bvslt (index!29514 lt!295425) (size!18717 lt!295364)))) (or (is-Undefined!6800 lt!295425) (is-Found!6800 lt!295425) (not (is-MissingVacant!6800 lt!295425)) (not (= (index!29516 lt!295425) vacantSpotIndex!68)) (and (bvsge (index!29516 lt!295425) #b00000000000000000000000000000000) (bvslt (index!29516 lt!295425) (size!18717 lt!295364)))) (or (is-Undefined!6800 lt!295425) (ite (is-Found!6800 lt!295425) (= (select (arr!18353 lt!295364) (index!29514 lt!295425)) lt!295361) (and (is-MissingVacant!6800 lt!295425) (= (index!29516 lt!295425) vacantSpotIndex!68) (= (select (arr!18353 lt!295364) (index!29516 lt!295425)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90137 (= lt!295425 e!365465)))

(declare-fun c!72925 () Bool)

(assert (=> d!90137 (= c!72925 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90137 (= lt!295426 (select (arr!18353 lt!295364) lt!295367))))

(assert (=> d!90137 (validMask!0 mask!3053)))

(assert (=> d!90137 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 lt!295361 lt!295364 mask!3053) lt!295425)))

(declare-fun b!638637 () Bool)

(assert (=> b!638637 (= e!365464 (MissingVacant!6800 vacantSpotIndex!68))))

(declare-fun b!638638 () Bool)

(assert (=> b!638638 (= e!365466 (Found!6800 lt!295367))))

(declare-fun b!638639 () Bool)

(assert (=> b!638639 (= e!365465 Undefined!6800)))

(assert (= (and d!90137 c!72925) b!638639))

(assert (= (and d!90137 (not c!72925)) b!638635))

(assert (= (and b!638635 c!72927) b!638638))

(assert (= (and b!638635 (not c!72927)) b!638634))

(assert (= (and b!638634 c!72926) b!638637))

(assert (= (and b!638634 (not c!72926)) b!638636))

(assert (=> b!638636 m!612635))

(assert (=> b!638636 m!612635))

(declare-fun m!612645 () Bool)

(assert (=> b!638636 m!612645))

(declare-fun m!612647 () Bool)

(assert (=> d!90137 m!612647))

(declare-fun m!612649 () Bool)

(assert (=> d!90137 m!612649))

(declare-fun m!612651 () Bool)

(assert (=> d!90137 m!612651))

(assert (=> d!90137 m!612511))

(assert (=> b!638499 d!90137))

(declare-fun d!90143 () Bool)

(declare-fun e!365481 () Bool)

(assert (=> d!90143 e!365481))

(declare-fun res!413520 () Bool)

(assert (=> d!90143 (=> (not res!413520) (not e!365481))))

(assert (=> d!90143 (= res!413520 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18717 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18717 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18717 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18717 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18717 a!2986))))))

(declare-fun lt!295439 () Unit!21558)

(declare-fun choose!9 (array!38269 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21558)

(assert (=> d!90143 (= lt!295439 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90143 (validMask!0 mask!3053)))

(assert (=> d!90143 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 mask!3053) lt!295439)))

(declare-fun b!638666 () Bool)

(assert (=> b!638666 (= e!365481 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 (select (arr!18353 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295367 vacantSpotIndex!68 (select (store (arr!18353 a!2986) i!1108 k!1786) j!136) (array!38270 (store (arr!18353 a!2986) i!1108 k!1786) (size!18717 a!2986)) mask!3053)))))

(assert (= (and d!90143 res!413520) b!638666))

(declare-fun m!612653 () Bool)

(assert (=> d!90143 m!612653))

(assert (=> d!90143 m!612511))

(assert (=> b!638666 m!612477))

(assert (=> b!638666 m!612483))

(assert (=> b!638666 m!612503))

(assert (=> b!638666 m!612507))

(assert (=> b!638666 m!612483))

(assert (=> b!638666 m!612507))

(declare-fun m!612655 () Bool)

(assert (=> b!638666 m!612655))

(assert (=> b!638499 d!90143))

(declare-fun d!90145 () Bool)

(declare-fun res!413525 () Bool)

(declare-fun e!365495 () Bool)

(assert (=> d!90145 (=> res!413525 e!365495)))

(assert (=> d!90145 (= res!413525 (= (select (arr!18353 lt!295364) index!984) (select (arr!18353 a!2986) j!136)))))

(assert (=> d!90145 (= (arrayContainsKey!0 lt!295364 (select (arr!18353 a!2986) j!136) index!984) e!365495)))

(declare-fun b!638689 () Bool)

(declare-fun e!365496 () Bool)

(assert (=> b!638689 (= e!365495 e!365496)))

(declare-fun res!413526 () Bool)

(assert (=> b!638689 (=> (not res!413526) (not e!365496))))

(assert (=> b!638689 (= res!413526 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18717 lt!295364)))))

