; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54860 () Bool)

(assert start!54860)

(declare-fun b!599159 () Bool)

(declare-fun res!384337 () Bool)

(declare-fun e!342553 () Bool)

(assert (=> b!599159 (=> res!384337 e!342553)))

(declare-datatypes ((List!11879 0))(
  ( (Nil!11876) (Cons!11875 (h!12920 (_ BitVec 64)) (t!18115 List!11879)) )
))
(declare-fun noDuplicate!278 (List!11879) Bool)

(assert (=> b!599159 (= res!384337 (not (noDuplicate!278 Nil!11876)))))

(declare-fun res!384328 () Bool)

(declare-fun e!342547 () Bool)

(assert (=> start!54860 (=> (not res!384328) (not e!342547))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54860 (= res!384328 (validMask!0 mask!3053))))

(assert (=> start!54860 e!342547))

(assert (=> start!54860 true))

(declare-datatypes ((array!37058 0))(
  ( (array!37059 (arr!17785 (Array (_ BitVec 32) (_ BitVec 64))) (size!18149 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37058)

(declare-fun array_inv!13559 (array!37058) Bool)

(assert (=> start!54860 (array_inv!13559 a!2986)))

(declare-fun b!599160 () Bool)

(declare-fun res!384329 () Bool)

(declare-fun e!342551 () Bool)

(assert (=> b!599160 (=> (not res!384329) (not e!342551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37058 (_ BitVec 32)) Bool)

(assert (=> b!599160 (= res!384329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599161 () Bool)

(declare-datatypes ((Unit!18872 0))(
  ( (Unit!18873) )
))
(declare-fun e!342544 () Unit!18872)

(declare-fun Unit!18874 () Unit!18872)

(assert (=> b!599161 (= e!342544 Unit!18874)))

(declare-fun b!599162 () Bool)

(assert (=> b!599162 (= e!342547 e!342551)))

(declare-fun res!384322 () Bool)

(assert (=> b!599162 (=> (not res!384322) (not e!342551))))

(declare-datatypes ((SeekEntryResult!6232 0))(
  ( (MissingZero!6232 (index!27184 (_ BitVec 32))) (Found!6232 (index!27185 (_ BitVec 32))) (Intermediate!6232 (undefined!7044 Bool) (index!27186 (_ BitVec 32)) (x!56016 (_ BitVec 32))) (Undefined!6232) (MissingVacant!6232 (index!27187 (_ BitVec 32))) )
))
(declare-fun lt!272405 () SeekEntryResult!6232)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599162 (= res!384322 (or (= lt!272405 (MissingZero!6232 i!1108)) (= lt!272405 (MissingVacant!6232 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37058 (_ BitVec 32)) SeekEntryResult!6232)

(assert (=> b!599162 (= lt!272405 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!599163 () Bool)

(declare-fun e!342552 () Bool)

(declare-fun e!342556 () Bool)

(assert (=> b!599163 (= e!342552 e!342556)))

(declare-fun res!384320 () Bool)

(assert (=> b!599163 (=> res!384320 e!342556)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272408 () (_ BitVec 64))

(declare-fun lt!272409 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599163 (= res!384320 (or (not (= (select (arr!17785 a!2986) j!136) lt!272408)) (not (= (select (arr!17785 a!2986) j!136) lt!272409)) (bvsge j!136 index!984)))))

(declare-fun e!342549 () Bool)

(assert (=> b!599163 e!342549))

(declare-fun res!384332 () Bool)

(assert (=> b!599163 (=> (not res!384332) (not e!342549))))

(assert (=> b!599163 (= res!384332 (= lt!272409 (select (arr!17785 a!2986) j!136)))))

(assert (=> b!599163 (= lt!272409 (select (store (arr!17785 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!599164 () Bool)

(declare-fun e!342555 () Bool)

(assert (=> b!599164 (= e!342551 e!342555)))

(declare-fun res!384326 () Bool)

(assert (=> b!599164 (=> (not res!384326) (not e!342555))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!599164 (= res!384326 (= (select (store (arr!17785 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272407 () array!37058)

(assert (=> b!599164 (= lt!272407 (array!37059 (store (arr!17785 a!2986) i!1108 k0!1786) (size!18149 a!2986)))))

(declare-fun b!599165 () Bool)

(assert (=> b!599165 (= e!342553 true)))

(declare-fun lt!272417 () Bool)

(declare-fun contains!2964 (List!11879 (_ BitVec 64)) Bool)

(assert (=> b!599165 (= lt!272417 (contains!2964 Nil!11876 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599166 () Bool)

(declare-fun res!384321 () Bool)

(assert (=> b!599166 (=> (not res!384321) (not e!342547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599166 (= res!384321 (validKeyInArray!0 (select (arr!17785 a!2986) j!136)))))

(declare-fun b!599167 () Bool)

(declare-fun e!342545 () Bool)

(declare-fun lt!272418 () SeekEntryResult!6232)

(declare-fun lt!272406 () SeekEntryResult!6232)

(assert (=> b!599167 (= e!342545 (= lt!272418 lt!272406))))

(declare-fun b!599168 () Bool)

(declare-fun res!384323 () Bool)

(assert (=> b!599168 (=> (not res!384323) (not e!342551))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!599168 (= res!384323 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17785 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599169 () Bool)

(declare-fun e!342548 () Bool)

(assert (=> b!599169 (= e!342548 (not e!342552))))

(declare-fun res!384333 () Bool)

(assert (=> b!599169 (=> res!384333 e!342552)))

(declare-fun lt!272414 () SeekEntryResult!6232)

(assert (=> b!599169 (= res!384333 (not (= lt!272414 (Found!6232 index!984))))))

(declare-fun lt!272415 () Unit!18872)

(assert (=> b!599169 (= lt!272415 e!342544)))

(declare-fun c!67787 () Bool)

(assert (=> b!599169 (= c!67787 (= lt!272414 Undefined!6232))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37058 (_ BitVec 32)) SeekEntryResult!6232)

(assert (=> b!599169 (= lt!272414 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272408 lt!272407 mask!3053))))

(assert (=> b!599169 e!342545))

(declare-fun res!384325 () Bool)

(assert (=> b!599169 (=> (not res!384325) (not e!342545))))

(declare-fun lt!272411 () (_ BitVec 32))

(assert (=> b!599169 (= res!384325 (= lt!272406 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272411 vacantSpotIndex!68 lt!272408 lt!272407 mask!3053)))))

(assert (=> b!599169 (= lt!272406 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272411 vacantSpotIndex!68 (select (arr!17785 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599169 (= lt!272408 (select (store (arr!17785 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272413 () Unit!18872)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37058 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18872)

(assert (=> b!599169 (= lt!272413 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272411 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599169 (= lt!272411 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599170 () Bool)

(declare-fun res!384334 () Bool)

(assert (=> b!599170 (=> (not res!384334) (not e!342547))))

(declare-fun arrayContainsKey!0 (array!37058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599170 (= res!384334 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599171 () Bool)

(declare-fun res!384336 () Bool)

(assert (=> b!599171 (=> (not res!384336) (not e!342551))))

(declare-fun arrayNoDuplicates!0 (array!37058 (_ BitVec 32) List!11879) Bool)

(assert (=> b!599171 (= res!384336 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11876))))

(declare-fun b!599172 () Bool)

(declare-fun res!384319 () Bool)

(assert (=> b!599172 (=> res!384319 e!342553)))

(assert (=> b!599172 (= res!384319 (contains!2964 Nil!11876 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599173 () Bool)

(declare-fun Unit!18875 () Unit!18872)

(assert (=> b!599173 (= e!342544 Unit!18875)))

(assert (=> b!599173 false))

(declare-fun b!599174 () Bool)

(assert (=> b!599174 (= e!342556 e!342553)))

(declare-fun res!384327 () Bool)

(assert (=> b!599174 (=> res!384327 e!342553)))

(assert (=> b!599174 (= res!384327 (or (bvsge (size!18149 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18149 a!2986))))))

(assert (=> b!599174 (arrayNoDuplicates!0 lt!272407 j!136 Nil!11876)))

(declare-fun lt!272416 () Unit!18872)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37058 (_ BitVec 32) (_ BitVec 32)) Unit!18872)

(assert (=> b!599174 (= lt!272416 (lemmaNoDuplicateFromThenFromBigger!0 lt!272407 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599174 (arrayNoDuplicates!0 lt!272407 #b00000000000000000000000000000000 Nil!11876)))

(declare-fun lt!272412 () Unit!18872)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37058 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11879) Unit!18872)

(assert (=> b!599174 (= lt!272412 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11876))))

(assert (=> b!599174 (arrayContainsKey!0 lt!272407 (select (arr!17785 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272410 () Unit!18872)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37058 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18872)

(assert (=> b!599174 (= lt!272410 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272407 (select (arr!17785 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599175 () Bool)

(declare-fun e!342550 () Bool)

(assert (=> b!599175 (= e!342550 (arrayContainsKey!0 lt!272407 (select (arr!17785 a!2986) j!136) index!984))))

(declare-fun b!599176 () Bool)

(declare-fun res!384338 () Bool)

(assert (=> b!599176 (=> (not res!384338) (not e!342547))))

(assert (=> b!599176 (= res!384338 (validKeyInArray!0 k0!1786))))

(declare-fun b!599177 () Bool)

(declare-fun e!342554 () Bool)

(assert (=> b!599177 (= e!342554 e!342550)))

(declare-fun res!384331 () Bool)

(assert (=> b!599177 (=> (not res!384331) (not e!342550))))

(assert (=> b!599177 (= res!384331 (arrayContainsKey!0 lt!272407 (select (arr!17785 a!2986) j!136) j!136))))

(declare-fun b!599178 () Bool)

(declare-fun res!384330 () Bool)

(assert (=> b!599178 (=> (not res!384330) (not e!342547))))

(assert (=> b!599178 (= res!384330 (and (= (size!18149 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18149 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18149 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599179 () Bool)

(assert (=> b!599179 (= e!342555 e!342548)))

(declare-fun res!384335 () Bool)

(assert (=> b!599179 (=> (not res!384335) (not e!342548))))

(assert (=> b!599179 (= res!384335 (and (= lt!272418 (Found!6232 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17785 a!2986) index!984) (select (arr!17785 a!2986) j!136))) (not (= (select (arr!17785 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599179 (= lt!272418 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17785 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599180 () Bool)

(assert (=> b!599180 (= e!342549 e!342554)))

(declare-fun res!384324 () Bool)

(assert (=> b!599180 (=> res!384324 e!342554)))

(assert (=> b!599180 (= res!384324 (or (not (= (select (arr!17785 a!2986) j!136) lt!272408)) (not (= (select (arr!17785 a!2986) j!136) lt!272409)) (bvsge j!136 index!984)))))

(assert (= (and start!54860 res!384328) b!599178))

(assert (= (and b!599178 res!384330) b!599166))

(assert (= (and b!599166 res!384321) b!599176))

(assert (= (and b!599176 res!384338) b!599170))

(assert (= (and b!599170 res!384334) b!599162))

(assert (= (and b!599162 res!384322) b!599160))

(assert (= (and b!599160 res!384329) b!599171))

(assert (= (and b!599171 res!384336) b!599168))

(assert (= (and b!599168 res!384323) b!599164))

(assert (= (and b!599164 res!384326) b!599179))

(assert (= (and b!599179 res!384335) b!599169))

(assert (= (and b!599169 res!384325) b!599167))

(assert (= (and b!599169 c!67787) b!599173))

(assert (= (and b!599169 (not c!67787)) b!599161))

(assert (= (and b!599169 (not res!384333)) b!599163))

(assert (= (and b!599163 res!384332) b!599180))

(assert (= (and b!599180 (not res!384324)) b!599177))

(assert (= (and b!599177 res!384331) b!599175))

(assert (= (and b!599163 (not res!384320)) b!599174))

(assert (= (and b!599174 (not res!384327)) b!599159))

(assert (= (and b!599159 (not res!384337)) b!599172))

(assert (= (and b!599172 (not res!384319)) b!599165))

(declare-fun m!576463 () Bool)

(assert (=> b!599164 m!576463))

(declare-fun m!576465 () Bool)

(assert (=> b!599164 m!576465))

(declare-fun m!576467 () Bool)

(assert (=> b!599159 m!576467))

(declare-fun m!576469 () Bool)

(assert (=> b!599176 m!576469))

(declare-fun m!576471 () Bool)

(assert (=> b!599172 m!576471))

(declare-fun m!576473 () Bool)

(assert (=> b!599160 m!576473))

(declare-fun m!576475 () Bool)

(assert (=> b!599165 m!576475))

(declare-fun m!576477 () Bool)

(assert (=> start!54860 m!576477))

(declare-fun m!576479 () Bool)

(assert (=> start!54860 m!576479))

(declare-fun m!576481 () Bool)

(assert (=> b!599163 m!576481))

(assert (=> b!599163 m!576463))

(declare-fun m!576483 () Bool)

(assert (=> b!599163 m!576483))

(assert (=> b!599166 m!576481))

(assert (=> b!599166 m!576481))

(declare-fun m!576485 () Bool)

(assert (=> b!599166 m!576485))

(assert (=> b!599177 m!576481))

(assert (=> b!599177 m!576481))

(declare-fun m!576487 () Bool)

(assert (=> b!599177 m!576487))

(declare-fun m!576489 () Bool)

(assert (=> b!599169 m!576489))

(declare-fun m!576491 () Bool)

(assert (=> b!599169 m!576491))

(declare-fun m!576493 () Bool)

(assert (=> b!599169 m!576493))

(assert (=> b!599169 m!576481))

(assert (=> b!599169 m!576463))

(declare-fun m!576495 () Bool)

(assert (=> b!599169 m!576495))

(assert (=> b!599169 m!576481))

(declare-fun m!576497 () Bool)

(assert (=> b!599169 m!576497))

(declare-fun m!576499 () Bool)

(assert (=> b!599169 m!576499))

(declare-fun m!576501 () Bool)

(assert (=> b!599179 m!576501))

(assert (=> b!599179 m!576481))

(assert (=> b!599179 m!576481))

(declare-fun m!576503 () Bool)

(assert (=> b!599179 m!576503))

(assert (=> b!599175 m!576481))

(assert (=> b!599175 m!576481))

(declare-fun m!576505 () Bool)

(assert (=> b!599175 m!576505))

(assert (=> b!599180 m!576481))

(declare-fun m!576507 () Bool)

(assert (=> b!599171 m!576507))

(declare-fun m!576509 () Bool)

(assert (=> b!599170 m!576509))

(assert (=> b!599174 m!576481))

(declare-fun m!576511 () Bool)

(assert (=> b!599174 m!576511))

(assert (=> b!599174 m!576481))

(declare-fun m!576513 () Bool)

(assert (=> b!599174 m!576513))

(declare-fun m!576515 () Bool)

(assert (=> b!599174 m!576515))

(declare-fun m!576517 () Bool)

(assert (=> b!599174 m!576517))

(assert (=> b!599174 m!576481))

(declare-fun m!576519 () Bool)

(assert (=> b!599174 m!576519))

(declare-fun m!576521 () Bool)

(assert (=> b!599174 m!576521))

(declare-fun m!576523 () Bool)

(assert (=> b!599168 m!576523))

(declare-fun m!576525 () Bool)

(assert (=> b!599162 m!576525))

(check-sat (not b!599160) (not b!599179) (not b!599172) (not b!599170) (not b!599165) (not b!599171) (not b!599159) (not start!54860) (not b!599176) (not b!599174) (not b!599166) (not b!599175) (not b!599162) (not b!599177) (not b!599169))
(check-sat)
