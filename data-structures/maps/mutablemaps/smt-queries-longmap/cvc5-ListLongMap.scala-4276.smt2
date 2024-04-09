; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59580 () Bool)

(assert start!59580)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38694 0))(
  ( (array!38695 (arr!18540 (Array (_ BitVec 32) (_ BitVec 64))) (size!18904 (_ BitVec 32))) )
))
(declare-fun lt!307106 () array!38694)

(declare-fun b!657335 () Bool)

(declare-fun res!426362 () Bool)

(declare-fun a!2986 () array!38694)

(declare-fun arrayContainsKey!0 (array!38694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657335 (= res!426362 (arrayContainsKey!0 lt!307106 (select (arr!18540 a!2986) j!136) j!136))))

(declare-fun e!377619 () Bool)

(assert (=> b!657335 (=> (not res!426362) (not e!377619))))

(declare-fun e!377614 () Bool)

(assert (=> b!657335 (= e!377614 e!377619)))

(declare-fun b!657336 () Bool)

(declare-datatypes ((Unit!22714 0))(
  ( (Unit!22715) )
))
(declare-fun e!377610 () Unit!22714)

(declare-fun Unit!22716 () Unit!22714)

(assert (=> b!657336 (= e!377610 Unit!22716)))

(declare-fun b!657337 () Bool)

(declare-fun e!377622 () Bool)

(declare-fun e!377609 () Bool)

(assert (=> b!657337 (= e!377622 e!377609)))

(declare-fun res!426357 () Bool)

(assert (=> b!657337 (=> (not res!426357) (not e!377609))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657337 (= res!426357 (= (select (store (arr!18540 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657337 (= lt!307106 (array!38695 (store (arr!18540 a!2986) i!1108 k!1786) (size!18904 a!2986)))))

(declare-fun b!657338 () Bool)

(declare-fun e!377612 () Unit!22714)

(declare-fun Unit!22717 () Unit!22714)

(assert (=> b!657338 (= e!377612 Unit!22717)))

(declare-fun res!426356 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!657338 (= res!426356 (= (select (store (arr!18540 a!2986) i!1108 k!1786) index!984) (select (arr!18540 a!2986) j!136)))))

(declare-fun e!377618 () Bool)

(assert (=> b!657338 (=> (not res!426356) (not e!377618))))

(assert (=> b!657338 e!377618))

(declare-fun c!75862 () Bool)

(assert (=> b!657338 (= c!75862 (bvslt j!136 index!984))))

(declare-fun lt!307097 () Unit!22714)

(declare-fun e!377617 () Unit!22714)

(assert (=> b!657338 (= lt!307097 e!377617)))

(declare-fun c!75863 () Bool)

(assert (=> b!657338 (= c!75863 (bvslt index!984 j!136))))

(declare-fun lt!307098 () Unit!22714)

(declare-fun e!377623 () Unit!22714)

(assert (=> b!657338 (= lt!307098 e!377623)))

(assert (=> b!657338 false))

(declare-fun b!657339 () Bool)

(declare-fun res!426365 () Bool)

(assert (=> b!657339 (=> (not res!426365) (not e!377622))))

(declare-datatypes ((List!12634 0))(
  ( (Nil!12631) (Cons!12630 (h!13675 (_ BitVec 64)) (t!18870 List!12634)) )
))
(declare-fun arrayNoDuplicates!0 (array!38694 (_ BitVec 32) List!12634) Bool)

(assert (=> b!657339 (= res!426365 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12631))))

(declare-fun b!657340 () Bool)

(declare-fun res!426353 () Bool)

(declare-fun e!377621 () Bool)

(assert (=> b!657340 (=> (not res!426353) (not e!377621))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657340 (= res!426353 (validKeyInArray!0 k!1786))))

(declare-fun b!657341 () Bool)

(declare-fun res!426350 () Bool)

(assert (=> b!657341 (=> (not res!426350) (not e!377622))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!657341 (= res!426350 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18540 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657342 () Bool)

(declare-fun Unit!22718 () Unit!22714)

(assert (=> b!657342 (= e!377612 Unit!22718)))

(declare-fun b!657344 () Bool)

(declare-fun e!377611 () Bool)

(declare-fun e!377620 () Bool)

(assert (=> b!657344 (= e!377611 (not e!377620))))

(declare-fun res!426363 () Bool)

(assert (=> b!657344 (=> res!426363 e!377620)))

(declare-datatypes ((SeekEntryResult!6987 0))(
  ( (MissingZero!6987 (index!30312 (_ BitVec 32))) (Found!6987 (index!30313 (_ BitVec 32))) (Intermediate!6987 (undefined!7799 Bool) (index!30314 (_ BitVec 32)) (x!59135 (_ BitVec 32))) (Undefined!6987) (MissingVacant!6987 (index!30315 (_ BitVec 32))) )
))
(declare-fun lt!307091 () SeekEntryResult!6987)

(assert (=> b!657344 (= res!426363 (not (= lt!307091 (MissingVacant!6987 vacantSpotIndex!68))))))

(declare-fun lt!307102 () Unit!22714)

(assert (=> b!657344 (= lt!307102 e!377612)))

(declare-fun c!75861 () Bool)

(assert (=> b!657344 (= c!75861 (= lt!307091 (Found!6987 index!984)))))

(declare-fun lt!307100 () Unit!22714)

(assert (=> b!657344 (= lt!307100 e!377610)))

(declare-fun c!75860 () Bool)

(assert (=> b!657344 (= c!75860 (= lt!307091 Undefined!6987))))

(declare-fun lt!307095 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38694 (_ BitVec 32)) SeekEntryResult!6987)

(assert (=> b!657344 (= lt!307091 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307095 lt!307106 mask!3053))))

(declare-fun e!377613 () Bool)

(assert (=> b!657344 e!377613))

(declare-fun res!426360 () Bool)

(assert (=> b!657344 (=> (not res!426360) (not e!377613))))

(declare-fun lt!307104 () (_ BitVec 32))

(declare-fun lt!307103 () SeekEntryResult!6987)

(assert (=> b!657344 (= res!426360 (= lt!307103 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307104 vacantSpotIndex!68 lt!307095 lt!307106 mask!3053)))))

(assert (=> b!657344 (= lt!307103 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307104 vacantSpotIndex!68 (select (arr!18540 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657344 (= lt!307095 (select (store (arr!18540 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307090 () Unit!22714)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38694 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22714)

(assert (=> b!657344 (= lt!307090 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307104 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657344 (= lt!307104 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657345 () Bool)

(declare-fun Unit!22719 () Unit!22714)

(assert (=> b!657345 (= e!377623 Unit!22719)))

(declare-fun b!657346 () Bool)

(declare-fun res!426359 () Bool)

(assert (=> b!657346 (=> (not res!426359) (not e!377622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38694 (_ BitVec 32)) Bool)

(assert (=> b!657346 (= res!426359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657347 () Bool)

(declare-fun lt!307092 () SeekEntryResult!6987)

(assert (=> b!657347 (= e!377613 (= lt!307092 lt!307103))))

(declare-fun b!657348 () Bool)

(assert (=> b!657348 (= e!377609 e!377611)))

(declare-fun res!426349 () Bool)

(assert (=> b!657348 (=> (not res!426349) (not e!377611))))

(assert (=> b!657348 (= res!426349 (and (= lt!307092 (Found!6987 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18540 a!2986) index!984) (select (arr!18540 a!2986) j!136))) (not (= (select (arr!18540 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657348 (= lt!307092 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18540 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657349 () Bool)

(declare-fun res!426364 () Bool)

(assert (=> b!657349 (=> (not res!426364) (not e!377621))))

(assert (=> b!657349 (= res!426364 (and (= (size!18904 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18904 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18904 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657350 () Bool)

(assert (=> b!657350 (= e!377620 true)))

(assert (=> b!657350 (= (select (store (arr!18540 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun e!377615 () Bool)

(declare-fun b!657351 () Bool)

(assert (=> b!657351 (= e!377615 (arrayContainsKey!0 lt!307106 (select (arr!18540 a!2986) j!136) index!984))))

(declare-fun b!657352 () Bool)

(assert (=> b!657352 false))

(declare-fun lt!307105 () Unit!22714)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38694 (_ BitVec 64) (_ BitVec 32) List!12634) Unit!22714)

(assert (=> b!657352 (= lt!307105 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307106 (select (arr!18540 a!2986) j!136) j!136 Nil!12631))))

(assert (=> b!657352 (arrayNoDuplicates!0 lt!307106 j!136 Nil!12631)))

(declare-fun lt!307107 () Unit!22714)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38694 (_ BitVec 32) (_ BitVec 32)) Unit!22714)

(assert (=> b!657352 (= lt!307107 (lemmaNoDuplicateFromThenFromBigger!0 lt!307106 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657352 (arrayNoDuplicates!0 lt!307106 #b00000000000000000000000000000000 Nil!12631)))

(declare-fun lt!307094 () Unit!22714)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38694 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12634) Unit!22714)

(assert (=> b!657352 (= lt!307094 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12631))))

(assert (=> b!657352 (arrayContainsKey!0 lt!307106 (select (arr!18540 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307096 () Unit!22714)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38694 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22714)

(assert (=> b!657352 (= lt!307096 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307106 (select (arr!18540 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22720 () Unit!22714)

(assert (=> b!657352 (= e!377617 Unit!22720)))

(declare-fun b!657353 () Bool)

(declare-fun Unit!22721 () Unit!22714)

(assert (=> b!657353 (= e!377617 Unit!22721)))

(declare-fun b!657354 () Bool)

(assert (=> b!657354 (= e!377619 (arrayContainsKey!0 lt!307106 (select (arr!18540 a!2986) j!136) index!984))))

(declare-fun b!657343 () Bool)

(assert (=> b!657343 false))

(declare-fun lt!307093 () Unit!22714)

(assert (=> b!657343 (= lt!307093 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307106 (select (arr!18540 a!2986) j!136) index!984 Nil!12631))))

(assert (=> b!657343 (arrayNoDuplicates!0 lt!307106 index!984 Nil!12631)))

(declare-fun lt!307099 () Unit!22714)

(assert (=> b!657343 (= lt!307099 (lemmaNoDuplicateFromThenFromBigger!0 lt!307106 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657343 (arrayNoDuplicates!0 lt!307106 #b00000000000000000000000000000000 Nil!12631)))

(declare-fun lt!307089 () Unit!22714)

(assert (=> b!657343 (= lt!307089 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12631))))

(assert (=> b!657343 (arrayContainsKey!0 lt!307106 (select (arr!18540 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307101 () Unit!22714)

(assert (=> b!657343 (= lt!307101 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307106 (select (arr!18540 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!657343 e!377615))

(declare-fun res!426351 () Bool)

(assert (=> b!657343 (=> (not res!426351) (not e!377615))))

(assert (=> b!657343 (= res!426351 (arrayContainsKey!0 lt!307106 (select (arr!18540 a!2986) j!136) j!136))))

(declare-fun Unit!22722 () Unit!22714)

(assert (=> b!657343 (= e!377623 Unit!22722)))

(declare-fun res!426354 () Bool)

(assert (=> start!59580 (=> (not res!426354) (not e!377621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59580 (= res!426354 (validMask!0 mask!3053))))

(assert (=> start!59580 e!377621))

(assert (=> start!59580 true))

(declare-fun array_inv!14314 (array!38694) Bool)

(assert (=> start!59580 (array_inv!14314 a!2986)))

(declare-fun b!657355 () Bool)

(declare-fun res!426352 () Bool)

(assert (=> b!657355 (=> (not res!426352) (not e!377621))))

(assert (=> b!657355 (= res!426352 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657356 () Bool)

(declare-fun Unit!22723 () Unit!22714)

(assert (=> b!657356 (= e!377610 Unit!22723)))

(assert (=> b!657356 false))

(declare-fun b!657357 () Bool)

(assert (=> b!657357 (= e!377621 e!377622)))

(declare-fun res!426361 () Bool)

(assert (=> b!657357 (=> (not res!426361) (not e!377622))))

(declare-fun lt!307088 () SeekEntryResult!6987)

(assert (=> b!657357 (= res!426361 (or (= lt!307088 (MissingZero!6987 i!1108)) (= lt!307088 (MissingVacant!6987 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38694 (_ BitVec 32)) SeekEntryResult!6987)

(assert (=> b!657357 (= lt!307088 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657358 () Bool)

(declare-fun res!426358 () Bool)

(assert (=> b!657358 (=> (not res!426358) (not e!377621))))

(assert (=> b!657358 (= res!426358 (validKeyInArray!0 (select (arr!18540 a!2986) j!136)))))

(declare-fun b!657359 () Bool)

(declare-fun res!426355 () Bool)

(assert (=> b!657359 (= res!426355 (bvsge j!136 index!984))))

(assert (=> b!657359 (=> res!426355 e!377614)))

(assert (=> b!657359 (= e!377618 e!377614)))

(assert (= (and start!59580 res!426354) b!657349))

(assert (= (and b!657349 res!426364) b!657358))

(assert (= (and b!657358 res!426358) b!657340))

(assert (= (and b!657340 res!426353) b!657355))

(assert (= (and b!657355 res!426352) b!657357))

(assert (= (and b!657357 res!426361) b!657346))

(assert (= (and b!657346 res!426359) b!657339))

(assert (= (and b!657339 res!426365) b!657341))

(assert (= (and b!657341 res!426350) b!657337))

(assert (= (and b!657337 res!426357) b!657348))

(assert (= (and b!657348 res!426349) b!657344))

(assert (= (and b!657344 res!426360) b!657347))

(assert (= (and b!657344 c!75860) b!657356))

(assert (= (and b!657344 (not c!75860)) b!657336))

(assert (= (and b!657344 c!75861) b!657338))

(assert (= (and b!657344 (not c!75861)) b!657342))

(assert (= (and b!657338 res!426356) b!657359))

(assert (= (and b!657359 (not res!426355)) b!657335))

(assert (= (and b!657335 res!426362) b!657354))

(assert (= (and b!657338 c!75862) b!657352))

(assert (= (and b!657338 (not c!75862)) b!657353))

(assert (= (and b!657338 c!75863) b!657343))

(assert (= (and b!657338 (not c!75863)) b!657345))

(assert (= (and b!657343 res!426351) b!657351))

(assert (= (and b!657344 (not res!426363)) b!657350))

(declare-fun m!630441 () Bool)

(assert (=> b!657339 m!630441))

(declare-fun m!630443 () Bool)

(assert (=> b!657341 m!630443))

(declare-fun m!630445 () Bool)

(assert (=> b!657335 m!630445))

(assert (=> b!657335 m!630445))

(declare-fun m!630447 () Bool)

(assert (=> b!657335 m!630447))

(declare-fun m!630449 () Bool)

(assert (=> b!657352 m!630449))

(assert (=> b!657352 m!630445))

(declare-fun m!630451 () Bool)

(assert (=> b!657352 m!630451))

(assert (=> b!657352 m!630445))

(declare-fun m!630453 () Bool)

(assert (=> b!657352 m!630453))

(assert (=> b!657352 m!630445))

(declare-fun m!630455 () Bool)

(assert (=> b!657352 m!630455))

(declare-fun m!630457 () Bool)

(assert (=> b!657352 m!630457))

(assert (=> b!657352 m!630445))

(declare-fun m!630459 () Bool)

(assert (=> b!657352 m!630459))

(declare-fun m!630461 () Bool)

(assert (=> b!657352 m!630461))

(assert (=> b!657358 m!630445))

(assert (=> b!657358 m!630445))

(declare-fun m!630463 () Bool)

(assert (=> b!657358 m!630463))

(declare-fun m!630465 () Bool)

(assert (=> b!657344 m!630465))

(declare-fun m!630467 () Bool)

(assert (=> b!657344 m!630467))

(assert (=> b!657344 m!630445))

(declare-fun m!630469 () Bool)

(assert (=> b!657344 m!630469))

(declare-fun m!630471 () Bool)

(assert (=> b!657344 m!630471))

(declare-fun m!630473 () Bool)

(assert (=> b!657344 m!630473))

(declare-fun m!630475 () Bool)

(assert (=> b!657344 m!630475))

(assert (=> b!657344 m!630445))

(declare-fun m!630477 () Bool)

(assert (=> b!657344 m!630477))

(declare-fun m!630479 () Bool)

(assert (=> b!657348 m!630479))

(assert (=> b!657348 m!630445))

(assert (=> b!657348 m!630445))

(declare-fun m!630481 () Bool)

(assert (=> b!657348 m!630481))

(declare-fun m!630483 () Bool)

(assert (=> b!657357 m!630483))

(assert (=> b!657337 m!630469))

(declare-fun m!630485 () Bool)

(assert (=> b!657337 m!630485))

(assert (=> b!657338 m!630469))

(declare-fun m!630487 () Bool)

(assert (=> b!657338 m!630487))

(assert (=> b!657338 m!630445))

(assert (=> b!657351 m!630445))

(assert (=> b!657351 m!630445))

(declare-fun m!630489 () Bool)

(assert (=> b!657351 m!630489))

(declare-fun m!630491 () Bool)

(assert (=> b!657346 m!630491))

(assert (=> b!657343 m!630449))

(assert (=> b!657343 m!630445))

(declare-fun m!630493 () Bool)

(assert (=> b!657343 m!630493))

(assert (=> b!657343 m!630445))

(declare-fun m!630495 () Bool)

(assert (=> b!657343 m!630495))

(assert (=> b!657343 m!630445))

(declare-fun m!630497 () Bool)

(assert (=> b!657343 m!630497))

(declare-fun m!630499 () Bool)

(assert (=> b!657343 m!630499))

(assert (=> b!657343 m!630445))

(declare-fun m!630501 () Bool)

(assert (=> b!657343 m!630501))

(assert (=> b!657343 m!630445))

(assert (=> b!657343 m!630447))

(assert (=> b!657343 m!630461))

(assert (=> b!657350 m!630469))

(assert (=> b!657350 m!630487))

(declare-fun m!630503 () Bool)

(assert (=> b!657340 m!630503))

(assert (=> b!657354 m!630445))

(assert (=> b!657354 m!630445))

(assert (=> b!657354 m!630489))

(declare-fun m!630505 () Bool)

(assert (=> b!657355 m!630505))

(declare-fun m!630507 () Bool)

(assert (=> start!59580 m!630507))

(declare-fun m!630509 () Bool)

(assert (=> start!59580 m!630509))

(push 1)

