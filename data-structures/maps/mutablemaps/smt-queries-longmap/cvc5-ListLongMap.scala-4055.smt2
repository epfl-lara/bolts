; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55566 () Bool)

(assert start!55566)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37260 0))(
  ( (array!37261 (arr!17877 (Array (_ BitVec 32) (_ BitVec 64))) (size!18241 (_ BitVec 32))) )
))
(declare-fun lt!277484 () array!37260)

(declare-fun b!607548 () Bool)

(declare-fun e!347924 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37260)

(declare-fun arrayContainsKey!0 (array!37260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607548 (= e!347924 (arrayContainsKey!0 lt!277484 (select (arr!17877 a!2986) j!136) index!984))))

(declare-fun b!607549 () Bool)

(declare-fun res!390511 () Bool)

(declare-fun e!347933 () Bool)

(assert (=> b!607549 (=> (not res!390511) (not e!347933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607549 (= res!390511 (validKeyInArray!0 (select (arr!17877 a!2986) j!136)))))

(declare-fun b!607550 () Bool)

(declare-fun e!347927 () Bool)

(declare-fun e!347935 () Bool)

(assert (=> b!607550 (= e!347927 (not e!347935))))

(declare-fun res!390515 () Bool)

(assert (=> b!607550 (=> res!390515 e!347935)))

(declare-datatypes ((SeekEntryResult!6324 0))(
  ( (MissingZero!6324 (index!27570 (_ BitVec 32))) (Found!6324 (index!27571 (_ BitVec 32))) (Intermediate!6324 (undefined!7136 Bool) (index!27572 (_ BitVec 32)) (x!56410 (_ BitVec 32))) (Undefined!6324) (MissingVacant!6324 (index!27573 (_ BitVec 32))) )
))
(declare-fun lt!277494 () SeekEntryResult!6324)

(assert (=> b!607550 (= res!390515 (not (= lt!277494 (Found!6324 index!984))))))

(declare-datatypes ((Unit!19372 0))(
  ( (Unit!19373) )
))
(declare-fun lt!277481 () Unit!19372)

(declare-fun e!347937 () Unit!19372)

(assert (=> b!607550 (= lt!277481 e!347937)))

(declare-fun c!68893 () Bool)

(assert (=> b!607550 (= c!68893 (= lt!277494 Undefined!6324))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!277478 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37260 (_ BitVec 32)) SeekEntryResult!6324)

(assert (=> b!607550 (= lt!277494 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277478 lt!277484 mask!3053))))

(declare-fun e!347928 () Bool)

(assert (=> b!607550 e!347928))

(declare-fun res!390517 () Bool)

(assert (=> b!607550 (=> (not res!390517) (not e!347928))))

(declare-fun lt!277492 () SeekEntryResult!6324)

(declare-fun lt!277479 () (_ BitVec 32))

(assert (=> b!607550 (= res!390517 (= lt!277492 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277479 vacantSpotIndex!68 lt!277478 lt!277484 mask!3053)))))

(assert (=> b!607550 (= lt!277492 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277479 vacantSpotIndex!68 (select (arr!17877 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!607550 (= lt!277478 (select (store (arr!17877 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277485 () Unit!19372)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37260 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19372)

(assert (=> b!607550 (= lt!277485 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277479 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607550 (= lt!277479 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607551 () Bool)

(declare-fun Unit!19374 () Unit!19372)

(assert (=> b!607551 (= e!347937 Unit!19374)))

(assert (=> b!607551 false))

(declare-fun b!607552 () Bool)

(declare-fun res!390512 () Bool)

(declare-fun e!347934 () Bool)

(assert (=> b!607552 (=> res!390512 e!347934)))

(declare-datatypes ((List!11971 0))(
  ( (Nil!11968) (Cons!11967 (h!13012 (_ BitVec 64)) (t!18207 List!11971)) )
))
(declare-fun contains!3017 (List!11971 (_ BitVec 64)) Bool)

(assert (=> b!607552 (= res!390512 (contains!3017 Nil!11968 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607553 () Bool)

(declare-fun e!347936 () Bool)

(assert (=> b!607553 (= e!347936 e!347924)))

(declare-fun res!390497 () Bool)

(assert (=> b!607553 (=> (not res!390497) (not e!347924))))

(assert (=> b!607553 (= res!390497 (arrayContainsKey!0 lt!277484 (select (arr!17877 a!2986) j!136) j!136))))

(declare-fun b!607554 () Bool)

(declare-fun e!347923 () Bool)

(assert (=> b!607554 (= e!347933 e!347923)))

(declare-fun res!390496 () Bool)

(assert (=> b!607554 (=> (not res!390496) (not e!347923))))

(declare-fun lt!277480 () SeekEntryResult!6324)

(assert (=> b!607554 (= res!390496 (or (= lt!277480 (MissingZero!6324 i!1108)) (= lt!277480 (MissingVacant!6324 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37260 (_ BitVec 32)) SeekEntryResult!6324)

(assert (=> b!607554 (= lt!277480 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607555 () Bool)

(declare-fun e!347931 () Unit!19372)

(declare-fun Unit!19375 () Unit!19372)

(assert (=> b!607555 (= e!347931 Unit!19375)))

(declare-fun b!607556 () Bool)

(assert (=> b!607556 (= e!347934 true)))

(declare-fun lt!277483 () Bool)

(assert (=> b!607556 (= lt!277483 (contains!3017 Nil!11968 k!1786))))

(declare-fun b!607557 () Bool)

(declare-fun res!390503 () Bool)

(assert (=> b!607557 (=> (not res!390503) (not e!347923))))

(declare-fun arrayNoDuplicates!0 (array!37260 (_ BitVec 32) List!11971) Bool)

(assert (=> b!607557 (= res!390503 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11968))))

(declare-fun b!607558 () Bool)

(declare-fun res!390505 () Bool)

(assert (=> b!607558 (=> res!390505 e!347934)))

(declare-fun noDuplicate!319 (List!11971) Bool)

(assert (=> b!607558 (= res!390505 (not (noDuplicate!319 Nil!11968)))))

(declare-fun b!607559 () Bool)

(declare-fun Unit!19376 () Unit!19372)

(assert (=> b!607559 (= e!347937 Unit!19376)))

(declare-fun b!607560 () Bool)

(declare-fun res!390498 () Bool)

(assert (=> b!607560 (=> (not res!390498) (not e!347923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37260 (_ BitVec 32)) Bool)

(assert (=> b!607560 (= res!390498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607561 () Bool)

(declare-fun lt!277491 () SeekEntryResult!6324)

(assert (=> b!607561 (= e!347928 (= lt!277491 lt!277492))))

(declare-fun b!607562 () Bool)

(declare-fun e!347930 () Bool)

(assert (=> b!607562 (= e!347930 e!347934)))

(declare-fun res!390516 () Bool)

(assert (=> b!607562 (=> res!390516 e!347934)))

(assert (=> b!607562 (= res!390516 (or (bvsge (size!18241 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18241 a!2986))))))

(assert (=> b!607562 (arrayContainsKey!0 lt!277484 (select (arr!17877 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277488 () Unit!19372)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37260 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19372)

(assert (=> b!607562 (= lt!277488 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277484 (select (arr!17877 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!347938 () Bool)

(assert (=> b!607562 e!347938))

(declare-fun res!390506 () Bool)

(assert (=> b!607562 (=> (not res!390506) (not e!347938))))

(assert (=> b!607562 (= res!390506 (arrayContainsKey!0 lt!277484 (select (arr!17877 a!2986) j!136) j!136))))

(declare-fun b!607563 () Bool)

(declare-fun res!390518 () Bool)

(assert (=> b!607563 (=> (not res!390518) (not e!347933))))

(assert (=> b!607563 (= res!390518 (and (= (size!18241 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18241 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18241 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607564 () Bool)

(declare-fun e!347926 () Bool)

(assert (=> b!607564 (= e!347935 e!347926)))

(declare-fun res!390500 () Bool)

(assert (=> b!607564 (=> res!390500 e!347926)))

(declare-fun lt!277489 () (_ BitVec 64))

(assert (=> b!607564 (= res!390500 (or (not (= (select (arr!17877 a!2986) j!136) lt!277478)) (not (= (select (arr!17877 a!2986) j!136) lt!277489))))))

(declare-fun e!347932 () Bool)

(assert (=> b!607564 e!347932))

(declare-fun res!390501 () Bool)

(assert (=> b!607564 (=> (not res!390501) (not e!347932))))

(assert (=> b!607564 (= res!390501 (= lt!277489 (select (arr!17877 a!2986) j!136)))))

(assert (=> b!607564 (= lt!277489 (select (store (arr!17877 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!390508 () Bool)

(assert (=> start!55566 (=> (not res!390508) (not e!347933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55566 (= res!390508 (validMask!0 mask!3053))))

(assert (=> start!55566 e!347933))

(assert (=> start!55566 true))

(declare-fun array_inv!13651 (array!37260) Bool)

(assert (=> start!55566 (array_inv!13651 a!2986)))

(declare-fun b!607565 () Bool)

(assert (=> b!607565 (= e!347938 (arrayContainsKey!0 lt!277484 (select (arr!17877 a!2986) j!136) index!984))))

(declare-fun b!607566 () Bool)

(assert (=> b!607566 (= e!347932 e!347936)))

(declare-fun res!390513 () Bool)

(assert (=> b!607566 (=> res!390513 e!347936)))

(assert (=> b!607566 (= res!390513 (or (not (= (select (arr!17877 a!2986) j!136) lt!277478)) (not (= (select (arr!17877 a!2986) j!136) lt!277489)) (bvsge j!136 index!984)))))

(declare-fun b!607567 () Bool)

(declare-fun e!347925 () Bool)

(assert (=> b!607567 (= e!347925 e!347927)))

(declare-fun res!390510 () Bool)

(assert (=> b!607567 (=> (not res!390510) (not e!347927))))

(assert (=> b!607567 (= res!390510 (and (= lt!277491 (Found!6324 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17877 a!2986) index!984) (select (arr!17877 a!2986) j!136))) (not (= (select (arr!17877 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607567 (= lt!277491 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17877 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607568 () Bool)

(declare-fun res!390509 () Bool)

(assert (=> b!607568 (=> res!390509 e!347934)))

(assert (=> b!607568 (= res!390509 (contains!3017 Nil!11968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607569 () Bool)

(declare-fun res!390514 () Bool)

(assert (=> b!607569 (=> (not res!390514) (not e!347923))))

(assert (=> b!607569 (= res!390514 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17877 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607570 () Bool)

(declare-fun Unit!19377 () Unit!19372)

(assert (=> b!607570 (= e!347931 Unit!19377)))

(declare-fun lt!277490 () Unit!19372)

(assert (=> b!607570 (= lt!277490 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277484 (select (arr!17877 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607570 (arrayContainsKey!0 lt!277484 (select (arr!17877 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277487 () Unit!19372)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37260 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11971) Unit!19372)

(assert (=> b!607570 (= lt!277487 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11968))))

(assert (=> b!607570 (arrayNoDuplicates!0 lt!277484 #b00000000000000000000000000000000 Nil!11968)))

(declare-fun lt!277486 () Unit!19372)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37260 (_ BitVec 32) (_ BitVec 32)) Unit!19372)

(assert (=> b!607570 (= lt!277486 (lemmaNoDuplicateFromThenFromBigger!0 lt!277484 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607570 (arrayNoDuplicates!0 lt!277484 j!136 Nil!11968)))

(declare-fun lt!277482 () Unit!19372)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37260 (_ BitVec 64) (_ BitVec 32) List!11971) Unit!19372)

(assert (=> b!607570 (= lt!277482 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277484 (select (arr!17877 a!2986) j!136) j!136 Nil!11968))))

(assert (=> b!607570 false))

(declare-fun b!607571 () Bool)

(assert (=> b!607571 (= e!347926 e!347930)))

(declare-fun res!390502 () Bool)

(assert (=> b!607571 (=> res!390502 e!347930)))

(assert (=> b!607571 (= res!390502 (bvsge index!984 j!136))))

(declare-fun lt!277493 () Unit!19372)

(assert (=> b!607571 (= lt!277493 e!347931)))

(declare-fun c!68894 () Bool)

(assert (=> b!607571 (= c!68894 (bvslt j!136 index!984))))

(declare-fun b!607572 () Bool)

(declare-fun res!390504 () Bool)

(assert (=> b!607572 (=> (not res!390504) (not e!347933))))

(assert (=> b!607572 (= res!390504 (validKeyInArray!0 k!1786))))

(declare-fun b!607573 () Bool)

(assert (=> b!607573 (= e!347923 e!347925)))

(declare-fun res!390507 () Bool)

(assert (=> b!607573 (=> (not res!390507) (not e!347925))))

(assert (=> b!607573 (= res!390507 (= (select (store (arr!17877 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607573 (= lt!277484 (array!37261 (store (arr!17877 a!2986) i!1108 k!1786) (size!18241 a!2986)))))

(declare-fun b!607574 () Bool)

(declare-fun res!390499 () Bool)

(assert (=> b!607574 (=> (not res!390499) (not e!347933))))

(assert (=> b!607574 (= res!390499 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!55566 res!390508) b!607563))

(assert (= (and b!607563 res!390518) b!607549))

(assert (= (and b!607549 res!390511) b!607572))

(assert (= (and b!607572 res!390504) b!607574))

(assert (= (and b!607574 res!390499) b!607554))

(assert (= (and b!607554 res!390496) b!607560))

(assert (= (and b!607560 res!390498) b!607557))

(assert (= (and b!607557 res!390503) b!607569))

(assert (= (and b!607569 res!390514) b!607573))

(assert (= (and b!607573 res!390507) b!607567))

(assert (= (and b!607567 res!390510) b!607550))

(assert (= (and b!607550 res!390517) b!607561))

(assert (= (and b!607550 c!68893) b!607551))

(assert (= (and b!607550 (not c!68893)) b!607559))

(assert (= (and b!607550 (not res!390515)) b!607564))

(assert (= (and b!607564 res!390501) b!607566))

(assert (= (and b!607566 (not res!390513)) b!607553))

(assert (= (and b!607553 res!390497) b!607548))

(assert (= (and b!607564 (not res!390500)) b!607571))

(assert (= (and b!607571 c!68894) b!607570))

(assert (= (and b!607571 (not c!68894)) b!607555))

(assert (= (and b!607571 (not res!390502)) b!607562))

(assert (= (and b!607562 res!390506) b!607565))

(assert (= (and b!607562 (not res!390516)) b!607558))

(assert (= (and b!607558 (not res!390505)) b!607568))

(assert (= (and b!607568 (not res!390509)) b!607552))

(assert (= (and b!607552 (not res!390512)) b!607556))

(declare-fun m!584301 () Bool)

(assert (=> b!607562 m!584301))

(assert (=> b!607562 m!584301))

(declare-fun m!584303 () Bool)

(assert (=> b!607562 m!584303))

(assert (=> b!607562 m!584301))

(declare-fun m!584305 () Bool)

(assert (=> b!607562 m!584305))

(assert (=> b!607562 m!584301))

(declare-fun m!584307 () Bool)

(assert (=> b!607562 m!584307))

(declare-fun m!584309 () Bool)

(assert (=> start!55566 m!584309))

(declare-fun m!584311 () Bool)

(assert (=> start!55566 m!584311))

(assert (=> b!607566 m!584301))

(declare-fun m!584313 () Bool)

(assert (=> b!607556 m!584313))

(declare-fun m!584315 () Bool)

(assert (=> b!607572 m!584315))

(declare-fun m!584317 () Bool)

(assert (=> b!607557 m!584317))

(assert (=> b!607549 m!584301))

(assert (=> b!607549 m!584301))

(declare-fun m!584319 () Bool)

(assert (=> b!607549 m!584319))

(declare-fun m!584321 () Bool)

(assert (=> b!607573 m!584321))

(declare-fun m!584323 () Bool)

(assert (=> b!607573 m!584323))

(declare-fun m!584325 () Bool)

(assert (=> b!607560 m!584325))

(declare-fun m!584327 () Bool)

(assert (=> b!607554 m!584327))

(declare-fun m!584329 () Bool)

(assert (=> b!607570 m!584329))

(declare-fun m!584331 () Bool)

(assert (=> b!607570 m!584331))

(assert (=> b!607570 m!584301))

(declare-fun m!584333 () Bool)

(assert (=> b!607570 m!584333))

(assert (=> b!607570 m!584301))

(assert (=> b!607570 m!584301))

(declare-fun m!584335 () Bool)

(assert (=> b!607570 m!584335))

(assert (=> b!607570 m!584301))

(declare-fun m!584337 () Bool)

(assert (=> b!607570 m!584337))

(declare-fun m!584339 () Bool)

(assert (=> b!607570 m!584339))

(declare-fun m!584341 () Bool)

(assert (=> b!607570 m!584341))

(assert (=> b!607548 m!584301))

(assert (=> b!607548 m!584301))

(declare-fun m!584343 () Bool)

(assert (=> b!607548 m!584343))

(declare-fun m!584345 () Bool)

(assert (=> b!607569 m!584345))

(declare-fun m!584347 () Bool)

(assert (=> b!607558 m!584347))

(declare-fun m!584349 () Bool)

(assert (=> b!607552 m!584349))

(declare-fun m!584351 () Bool)

(assert (=> b!607574 m!584351))

(assert (=> b!607565 m!584301))

(assert (=> b!607565 m!584301))

(assert (=> b!607565 m!584343))

(declare-fun m!584353 () Bool)

(assert (=> b!607567 m!584353))

(assert (=> b!607567 m!584301))

(assert (=> b!607567 m!584301))

(declare-fun m!584355 () Bool)

(assert (=> b!607567 m!584355))

(declare-fun m!584357 () Bool)

(assert (=> b!607550 m!584357))

(declare-fun m!584359 () Bool)

(assert (=> b!607550 m!584359))

(assert (=> b!607550 m!584301))

(assert (=> b!607550 m!584321))

(declare-fun m!584361 () Bool)

(assert (=> b!607550 m!584361))

(assert (=> b!607550 m!584301))

(declare-fun m!584363 () Bool)

(assert (=> b!607550 m!584363))

(declare-fun m!584365 () Bool)

(assert (=> b!607550 m!584365))

(declare-fun m!584367 () Bool)

(assert (=> b!607550 m!584367))

(declare-fun m!584369 () Bool)

(assert (=> b!607568 m!584369))

(assert (=> b!607553 m!584301))

(assert (=> b!607553 m!584301))

(assert (=> b!607553 m!584307))

(assert (=> b!607564 m!584301))

(assert (=> b!607564 m!584321))

(declare-fun m!584371 () Bool)

(assert (=> b!607564 m!584371))

(push 1)

