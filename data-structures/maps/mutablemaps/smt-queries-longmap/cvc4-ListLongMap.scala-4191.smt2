; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57136 () Bool)

(assert start!57136)

(declare-fun b!632441 () Bool)

(declare-fun res!409197 () Bool)

(declare-fun e!361569 () Bool)

(assert (=> b!632441 (=> (not res!409197) (not e!361569))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38116 0))(
  ( (array!38117 (arr!18287 (Array (_ BitVec 32) (_ BitVec 64))) (size!18651 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38116)

(assert (=> b!632441 (= res!409197 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18287 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632442 () Bool)

(declare-fun e!361572 () Bool)

(assert (=> b!632442 (= e!361569 e!361572)))

(declare-fun res!409202 () Bool)

(assert (=> b!632442 (=> (not res!409202) (not e!361572))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!632442 (= res!409202 (= (select (store (arr!18287 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292367 () array!38116)

(assert (=> b!632442 (= lt!292367 (array!38117 (store (arr!18287 a!2986) i!1108 k!1786) (size!18651 a!2986)))))

(declare-fun b!632443 () Bool)

(declare-fun res!409198 () Bool)

(assert (=> b!632443 (=> (not res!409198) (not e!361569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38116 (_ BitVec 32)) Bool)

(assert (=> b!632443 (= res!409198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632444 () Bool)

(declare-datatypes ((Unit!21294 0))(
  ( (Unit!21295) )
))
(declare-fun e!361574 () Unit!21294)

(declare-fun Unit!21296 () Unit!21294)

(assert (=> b!632444 (= e!361574 Unit!21296)))

(assert (=> b!632444 false))

(declare-fun b!632445 () Bool)

(declare-fun res!409191 () Bool)

(declare-fun e!361576 () Bool)

(assert (=> b!632445 (=> (not res!409191) (not e!361576))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!632445 (= res!409191 (and (= (size!18651 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18651 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18651 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632446 () Bool)

(declare-fun res!409192 () Bool)

(assert (=> b!632446 (=> (not res!409192) (not e!361576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632446 (= res!409192 (validKeyInArray!0 (select (arr!18287 a!2986) j!136)))))

(declare-fun b!632447 () Bool)

(declare-fun e!361568 () Bool)

(declare-fun e!361575 () Bool)

(assert (=> b!632447 (= e!361568 e!361575)))

(declare-fun res!409195 () Bool)

(assert (=> b!632447 (=> res!409195 e!361575)))

(declare-fun lt!292373 () (_ BitVec 64))

(assert (=> b!632447 (= res!409195 (or (not (= (select (arr!18287 a!2986) j!136) lt!292373)) (not (= (select (arr!18287 a!2986) j!136) (select (store (arr!18287 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(assert (=> b!632447 (= (select (store (arr!18287 a!2986) i!1108 k!1786) index!984) (select (arr!18287 a!2986) j!136))))

(declare-fun b!632448 () Bool)

(declare-fun e!361570 () Bool)

(assert (=> b!632448 (= e!361572 e!361570)))

(declare-fun res!409190 () Bool)

(assert (=> b!632448 (=> (not res!409190) (not e!361570))))

(declare-datatypes ((SeekEntryResult!6734 0))(
  ( (MissingZero!6734 (index!29228 (_ BitVec 32))) (Found!6734 (index!29229 (_ BitVec 32))) (Intermediate!6734 (undefined!7546 Bool) (index!29230 (_ BitVec 32)) (x!57986 (_ BitVec 32))) (Undefined!6734) (MissingVacant!6734 (index!29231 (_ BitVec 32))) )
))
(declare-fun lt!292369 () SeekEntryResult!6734)

(assert (=> b!632448 (= res!409190 (and (= lt!292369 (Found!6734 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18287 a!2986) index!984) (select (arr!18287 a!2986) j!136))) (not (= (select (arr!18287 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38116 (_ BitVec 32)) SeekEntryResult!6734)

(assert (=> b!632448 (= lt!292369 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18287 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632449 () Bool)

(declare-fun arrayContainsKey!0 (array!38116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632449 (= e!361575 (arrayContainsKey!0 lt!292367 (select (arr!18287 a!2986) j!136) j!136))))

(declare-fun b!632450 () Bool)

(declare-fun res!409196 () Bool)

(assert (=> b!632450 (=> (not res!409196) (not e!361576))))

(assert (=> b!632450 (= res!409196 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632451 () Bool)

(assert (=> b!632451 (= e!361576 e!361569)))

(declare-fun res!409201 () Bool)

(assert (=> b!632451 (=> (not res!409201) (not e!361569))))

(declare-fun lt!292372 () SeekEntryResult!6734)

(assert (=> b!632451 (= res!409201 (or (= lt!292372 (MissingZero!6734 i!1108)) (= lt!292372 (MissingVacant!6734 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38116 (_ BitVec 32)) SeekEntryResult!6734)

(assert (=> b!632451 (= lt!292372 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632452 () Bool)

(declare-fun Unit!21297 () Unit!21294)

(assert (=> b!632452 (= e!361574 Unit!21297)))

(declare-fun b!632453 () Bool)

(declare-fun res!409194 () Bool)

(assert (=> b!632453 (=> (not res!409194) (not e!361569))))

(declare-datatypes ((List!12381 0))(
  ( (Nil!12378) (Cons!12377 (h!13422 (_ BitVec 64)) (t!18617 List!12381)) )
))
(declare-fun arrayNoDuplicates!0 (array!38116 (_ BitVec 32) List!12381) Bool)

(assert (=> b!632453 (= res!409194 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12378))))

(declare-fun res!409200 () Bool)

(assert (=> start!57136 (=> (not res!409200) (not e!361576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57136 (= res!409200 (validMask!0 mask!3053))))

(assert (=> start!57136 e!361576))

(assert (=> start!57136 true))

(declare-fun array_inv!14061 (array!38116) Bool)

(assert (=> start!57136 (array_inv!14061 a!2986)))

(declare-fun b!632454 () Bool)

(declare-fun res!409193 () Bool)

(assert (=> b!632454 (=> (not res!409193) (not e!361576))))

(assert (=> b!632454 (= res!409193 (validKeyInArray!0 k!1786))))

(declare-fun b!632455 () Bool)

(declare-fun e!361571 () Bool)

(declare-fun lt!292366 () SeekEntryResult!6734)

(assert (=> b!632455 (= e!361571 (= lt!292369 lt!292366))))

(declare-fun b!632456 () Bool)

(assert (=> b!632456 (= e!361570 (not e!361568))))

(declare-fun res!409189 () Bool)

(assert (=> b!632456 (=> res!409189 e!361568)))

(declare-fun lt!292371 () SeekEntryResult!6734)

(assert (=> b!632456 (= res!409189 (not (= lt!292371 (Found!6734 index!984))))))

(declare-fun lt!292368 () Unit!21294)

(assert (=> b!632456 (= lt!292368 e!361574)))

(declare-fun c!71993 () Bool)

(assert (=> b!632456 (= c!71993 (= lt!292371 Undefined!6734))))

(assert (=> b!632456 (= lt!292371 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292373 lt!292367 mask!3053))))

(assert (=> b!632456 e!361571))

(declare-fun res!409199 () Bool)

(assert (=> b!632456 (=> (not res!409199) (not e!361571))))

(declare-fun lt!292374 () (_ BitVec 32))

(assert (=> b!632456 (= res!409199 (= lt!292366 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 lt!292373 lt!292367 mask!3053)))))

(assert (=> b!632456 (= lt!292366 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 (select (arr!18287 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632456 (= lt!292373 (select (store (arr!18287 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292370 () Unit!21294)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38116 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21294)

(assert (=> b!632456 (= lt!292370 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632456 (= lt!292374 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57136 res!409200) b!632445))

(assert (= (and b!632445 res!409191) b!632446))

(assert (= (and b!632446 res!409192) b!632454))

(assert (= (and b!632454 res!409193) b!632450))

(assert (= (and b!632450 res!409196) b!632451))

(assert (= (and b!632451 res!409201) b!632443))

(assert (= (and b!632443 res!409198) b!632453))

(assert (= (and b!632453 res!409194) b!632441))

(assert (= (and b!632441 res!409197) b!632442))

(assert (= (and b!632442 res!409202) b!632448))

(assert (= (and b!632448 res!409190) b!632456))

(assert (= (and b!632456 res!409199) b!632455))

(assert (= (and b!632456 c!71993) b!632444))

(assert (= (and b!632456 (not c!71993)) b!632452))

(assert (= (and b!632456 (not res!409189)) b!632447))

(assert (= (and b!632447 (not res!409195)) b!632449))

(declare-fun m!607309 () Bool)

(assert (=> b!632446 m!607309))

(assert (=> b!632446 m!607309))

(declare-fun m!607311 () Bool)

(assert (=> b!632446 m!607311))

(declare-fun m!607313 () Bool)

(assert (=> b!632453 m!607313))

(declare-fun m!607315 () Bool)

(assert (=> b!632450 m!607315))

(assert (=> b!632449 m!607309))

(assert (=> b!632449 m!607309))

(declare-fun m!607317 () Bool)

(assert (=> b!632449 m!607317))

(declare-fun m!607319 () Bool)

(assert (=> b!632448 m!607319))

(assert (=> b!632448 m!607309))

(assert (=> b!632448 m!607309))

(declare-fun m!607321 () Bool)

(assert (=> b!632448 m!607321))

(declare-fun m!607323 () Bool)

(assert (=> b!632441 m!607323))

(declare-fun m!607325 () Bool)

(assert (=> b!632456 m!607325))

(declare-fun m!607327 () Bool)

(assert (=> b!632456 m!607327))

(declare-fun m!607329 () Bool)

(assert (=> b!632456 m!607329))

(declare-fun m!607331 () Bool)

(assert (=> b!632456 m!607331))

(declare-fun m!607333 () Bool)

(assert (=> b!632456 m!607333))

(declare-fun m!607335 () Bool)

(assert (=> b!632456 m!607335))

(assert (=> b!632456 m!607309))

(assert (=> b!632456 m!607309))

(declare-fun m!607337 () Bool)

(assert (=> b!632456 m!607337))

(declare-fun m!607339 () Bool)

(assert (=> b!632451 m!607339))

(assert (=> b!632447 m!607309))

(assert (=> b!632447 m!607329))

(declare-fun m!607341 () Bool)

(assert (=> b!632447 m!607341))

(declare-fun m!607343 () Bool)

(assert (=> start!57136 m!607343))

(declare-fun m!607345 () Bool)

(assert (=> start!57136 m!607345))

(assert (=> b!632442 m!607329))

(declare-fun m!607347 () Bool)

(assert (=> b!632442 m!607347))

(declare-fun m!607349 () Bool)

(assert (=> b!632443 m!607349))

(declare-fun m!607351 () Bool)

(assert (=> b!632454 m!607351))

(push 1)

(assert (not b!632450))

(assert (not b!632449))

(assert (not b!632451))

(assert (not b!632453))

(assert (not b!632456))

(assert (not b!632454))

(assert (not b!632448))

(assert (not start!57136))

(assert (not b!632443))

(assert (not b!632446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!632544 () Bool)

(declare-fun e!361636 () SeekEntryResult!6734)

(assert (=> b!632544 (= e!361636 (Found!6734 index!984))))

(declare-fun b!632545 () Bool)

(declare-fun c!72022 () Bool)

(declare-fun lt!292405 () (_ BitVec 64))

(assert (=> b!632545 (= c!72022 (= lt!292405 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361637 () SeekEntryResult!6734)

(assert (=> b!632545 (= e!361636 e!361637)))

(declare-fun lt!292406 () SeekEntryResult!6734)

(declare-fun d!89297 () Bool)

(assert (=> d!89297 (and (or (is-Undefined!6734 lt!292406) (not (is-Found!6734 lt!292406)) (and (bvsge (index!29229 lt!292406) #b00000000000000000000000000000000) (bvslt (index!29229 lt!292406) (size!18651 a!2986)))) (or (is-Undefined!6734 lt!292406) (is-Found!6734 lt!292406) (not (is-MissingVacant!6734 lt!292406)) (not (= (index!29231 lt!292406) vacantSpotIndex!68)) (and (bvsge (index!29231 lt!292406) #b00000000000000000000000000000000) (bvslt (index!29231 lt!292406) (size!18651 a!2986)))) (or (is-Undefined!6734 lt!292406) (ite (is-Found!6734 lt!292406) (= (select (arr!18287 a!2986) (index!29229 lt!292406)) (select (arr!18287 a!2986) j!136)) (and (is-MissingVacant!6734 lt!292406) (= (index!29231 lt!292406) vacantSpotIndex!68) (= (select (arr!18287 a!2986) (index!29231 lt!292406)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!361635 () SeekEntryResult!6734)

(assert (=> d!89297 (= lt!292406 e!361635)))

(declare-fun c!72023 () Bool)

(assert (=> d!89297 (= c!72023 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89297 (= lt!292405 (select (arr!18287 a!2986) index!984))))

(assert (=> d!89297 (validMask!0 mask!3053)))

(assert (=> d!89297 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18287 a!2986) j!136) a!2986 mask!3053) lt!292406)))

(declare-fun b!632546 () Bool)

(assert (=> b!632546 (= e!361635 Undefined!6734)))

(declare-fun b!632547 () Bool)

(assert (=> b!632547 (= e!361635 e!361636)))

(declare-fun c!72021 () Bool)

(assert (=> b!632547 (= c!72021 (= lt!292405 (select (arr!18287 a!2986) j!136)))))

(declare-fun b!632548 () Bool)

(assert (=> b!632548 (= e!361637 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18287 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632549 () Bool)

(assert (=> b!632549 (= e!361637 (MissingVacant!6734 vacantSpotIndex!68))))

(assert (= (and d!89297 c!72023) b!632546))

(assert (= (and d!89297 (not c!72023)) b!632547))

(assert (= (and b!632547 c!72021) b!632544))

(assert (= (and b!632547 (not c!72021)) b!632545))

(assert (= (and b!632545 c!72022) b!632549))

(assert (= (and b!632545 (not c!72022)) b!632548))

(declare-fun m!607409 () Bool)

(assert (=> d!89297 m!607409))

(declare-fun m!607411 () Bool)

(assert (=> d!89297 m!607411))

(assert (=> d!89297 m!607319))

(assert (=> d!89297 m!607343))

(assert (=> b!632548 m!607325))

(assert (=> b!632548 m!607325))

(assert (=> b!632548 m!607309))

(declare-fun m!607413 () Bool)

(assert (=> b!632548 m!607413))

(assert (=> b!632448 d!89297))

(declare-fun b!632590 () Bool)

(declare-fun e!361663 () Bool)

(declare-fun call!33347 () Bool)

(assert (=> b!632590 (= e!361663 call!33347)))

(declare-fun b!632591 () Bool)

(declare-fun e!361664 () Bool)

(assert (=> b!632591 (= e!361664 e!361663)))

(declare-fun c!72041 () Bool)

(assert (=> b!632591 (= c!72041 (validKeyInArray!0 (select (arr!18287 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!632592 () Bool)

(declare-fun e!361666 () Bool)

(assert (=> b!632592 (= e!361666 e!361664)))

(declare-fun res!409243 () Bool)

(assert (=> b!632592 (=> (not res!409243) (not e!361664))))

(declare-fun e!361665 () Bool)

(assert (=> b!632592 (= res!409243 (not e!361665))))

(declare-fun res!409242 () Bool)

(assert (=> b!632592 (=> (not res!409242) (not e!361665))))

(assert (=> b!632592 (= res!409242 (validKeyInArray!0 (select (arr!18287 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!632593 () Bool)

(assert (=> b!632593 (= e!361663 call!33347)))

(declare-fun bm!33344 () Bool)

(assert (=> bm!33344 (= call!33347 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72041 (Cons!12377 (select (arr!18287 a!2986) #b00000000000000000000000000000000) Nil!12378) Nil!12378)))))

(declare-fun b!632594 () Bool)

(declare-fun contains!3096 (List!12381 (_ BitVec 64)) Bool)

(assert (=> b!632594 (= e!361665 (contains!3096 Nil!12378 (select (arr!18287 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89315 () Bool)

(declare-fun res!409244 () Bool)

(assert (=> d!89315 (=> res!409244 e!361666)))

(assert (=> d!89315 (= res!409244 (bvsge #b00000000000000000000000000000000 (size!18651 a!2986)))))

(assert (=> d!89315 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12378) e!361666)))

(assert (= (and d!89315 (not res!409244)) b!632592))

(assert (= (and b!632592 res!409242) b!632594))

(assert (= (and b!632592 res!409243) b!632591))

(assert (= (and b!632591 c!72041) b!632590))

(assert (= (and b!632591 (not c!72041)) b!632593))

(assert (= (or b!632590 b!632593) bm!33344))

(declare-fun m!607441 () Bool)

(assert (=> b!632591 m!607441))

(assert (=> b!632591 m!607441))

(declare-fun m!607443 () Bool)

(assert (=> b!632591 m!607443))

(assert (=> b!632592 m!607441))

(assert (=> b!632592 m!607441))

(assert (=> b!632592 m!607443))

(assert (=> bm!33344 m!607441))

(declare-fun m!607445 () Bool)

(assert (=> bm!33344 m!607445))

(assert (=> b!632594 m!607441))

(assert (=> b!632594 m!607441))

(declare-fun m!607447 () Bool)

(assert (=> b!632594 m!607447))

(assert (=> b!632453 d!89315))

(declare-fun d!89323 () Bool)

(assert (=> d!89323 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57136 d!89323))

(declare-fun d!89333 () Bool)

(assert (=> d!89333 (= (array_inv!14061 a!2986) (bvsge (size!18651 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57136 d!89333))

(declare-fun d!89335 () Bool)

(assert (=> d!89335 (= (validKeyInArray!0 (select (arr!18287 a!2986) j!136)) (and (not (= (select (arr!18287 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18287 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!632446 d!89335))

(declare-fun b!632645 () Bool)

(declare-fun c!72062 () Bool)

(declare-fun lt!292441 () (_ BitVec 64))

(assert (=> b!632645 (= c!72062 (= lt!292441 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!361697 () SeekEntryResult!6734)

(declare-fun e!361699 () SeekEntryResult!6734)

(assert (=> b!632645 (= e!361697 e!361699)))

(declare-fun b!632646 () Bool)

(declare-fun lt!292440 () SeekEntryResult!6734)

(assert (=> b!632646 (= e!361699 (seekKeyOrZeroReturnVacant!0 (x!57986 lt!292440) (index!29230 lt!292440) (index!29230 lt!292440) k!1786 a!2986 mask!3053))))

(declare-fun d!89337 () Bool)

(declare-fun lt!292439 () SeekEntryResult!6734)

(assert (=> d!89337 (and (or (is-Undefined!6734 lt!292439) (not (is-Found!6734 lt!292439)) (and (bvsge (index!29229 lt!292439) #b00000000000000000000000000000000) (bvslt (index!29229 lt!292439) (size!18651 a!2986)))) (or (is-Undefined!6734 lt!292439) (is-Found!6734 lt!292439) (not (is-MissingZero!6734 lt!292439)) (and (bvsge (index!29228 lt!292439) #b00000000000000000000000000000000) (bvslt (index!29228 lt!292439) (size!18651 a!2986)))) (or (is-Undefined!6734 lt!292439) (is-Found!6734 lt!292439) (is-MissingZero!6734 lt!292439) (not (is-MissingVacant!6734 lt!292439)) (and (bvsge (index!29231 lt!292439) #b00000000000000000000000000000000) (bvslt (index!29231 lt!292439) (size!18651 a!2986)))) (or (is-Undefined!6734 lt!292439) (ite (is-Found!6734 lt!292439) (= (select (arr!18287 a!2986) (index!29229 lt!292439)) k!1786) (ite (is-MissingZero!6734 lt!292439) (= (select (arr!18287 a!2986) (index!29228 lt!292439)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6734 lt!292439) (= (select (arr!18287 a!2986) (index!29231 lt!292439)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!361698 () SeekEntryResult!6734)

(assert (=> d!89337 (= lt!292439 e!361698)))

(declare-fun c!72063 () Bool)

(assert (=> d!89337 (= c!72063 (and (is-Intermediate!6734 lt!292440) (undefined!7546 lt!292440)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38116 (_ BitVec 32)) SeekEntryResult!6734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89337 (= lt!292440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89337 (validMask!0 mask!3053)))

(assert (=> d!89337 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!292439)))

(declare-fun b!632647 () Bool)

(assert (=> b!632647 (= e!361699 (MissingZero!6734 (index!29230 lt!292440)))))

(declare-fun b!632648 () Bool)

(assert (=> b!632648 (= e!361698 e!361697)))

(assert (=> b!632648 (= lt!292441 (select (arr!18287 a!2986) (index!29230 lt!292440)))))

(declare-fun c!72064 () Bool)

(assert (=> b!632648 (= c!72064 (= lt!292441 k!1786))))

(declare-fun b!632649 () Bool)

(assert (=> b!632649 (= e!361697 (Found!6734 (index!29230 lt!292440)))))

(declare-fun b!632650 () Bool)

(assert (=> b!632650 (= e!361698 Undefined!6734)))

(assert (= (and d!89337 c!72063) b!632650))

(assert (= (and d!89337 (not c!72063)) b!632648))

(assert (= (and b!632648 c!72064) b!632649))

(assert (= (and b!632648 (not c!72064)) b!632645))

(assert (= (and b!632645 c!72062) b!632647))

(assert (= (and b!632645 (not c!72062)) b!632646))

(declare-fun m!607481 () Bool)

(assert (=> b!632646 m!607481))

(declare-fun m!607483 () Bool)

(assert (=> d!89337 m!607483))

(assert (=> d!89337 m!607483))

(declare-fun m!607485 () Bool)

(assert (=> d!89337 m!607485))

(declare-fun m!607487 () Bool)

(assert (=> d!89337 m!607487))

(declare-fun m!607489 () Bool)

(assert (=> d!89337 m!607489))

(declare-fun m!607491 () Bool)

(assert (=> d!89337 m!607491))

(assert (=> d!89337 m!607343))

(declare-fun m!607493 () Bool)

(assert (=> b!632648 m!607493))

(assert (=> b!632451 d!89337))

(declare-fun d!89347 () Bool)

(declare-fun lt!292446 () (_ BitVec 32))

(assert (=> d!89347 (and (bvsge lt!292446 #b00000000000000000000000000000000) (bvslt lt!292446 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89347 (= lt!292446 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89347 (validMask!0 mask!3053)))

(assert (=> d!89347 (= (nextIndex!0 index!984 x!910 mask!3053) lt!292446)))

(declare-fun bs!19048 () Bool)

(assert (= bs!19048 d!89347))

(declare-fun m!607507 () Bool)

(assert (=> bs!19048 m!607507))

(assert (=> bs!19048 m!607343))

(assert (=> b!632456 d!89347))

(declare-fun d!89355 () Bool)

(declare-fun e!361718 () Bool)

(assert (=> d!89355 e!361718))

(declare-fun res!409266 () Bool)

(assert (=> d!89355 (=> (not res!409266) (not e!361718))))

(assert (=> d!89355 (= res!409266 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18651 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18651 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18651 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18651 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18651 a!2986))))))

(declare-fun lt!292458 () Unit!21294)

(declare-fun choose!9 (array!38116 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21294)

(assert (=> d!89355 (= lt!292458 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89355 (validMask!0 mask!3053)))

(assert (=> d!89355 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 mask!3053) lt!292458)))

(declare-fun b!632676 () Bool)

(assert (=> b!632676 (= e!361718 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 (select (arr!18287 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292374 vacantSpotIndex!68 (select (store (arr!18287 a!2986) i!1108 k!1786) j!136) (array!38117 (store (arr!18287 a!2986) i!1108 k!1786) (size!18651 a!2986)) mask!3053)))))

