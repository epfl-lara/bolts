; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59378 () Bool)

(assert start!59378)

(declare-fun b!655386 () Bool)

(declare-datatypes ((Unit!22544 0))(
  ( (Unit!22545) )
))
(declare-fun e!376397 () Unit!22544)

(declare-fun Unit!22546 () Unit!22544)

(assert (=> b!655386 (= e!376397 Unit!22546)))

(declare-fun b!655387 () Bool)

(declare-fun e!376390 () Bool)

(assert (=> b!655387 (= e!376390 (not true))))

(declare-fun lt!305770 () Unit!22544)

(declare-fun e!376392 () Unit!22544)

(assert (=> b!655387 (= lt!305770 e!376392)))

(declare-fun c!75442 () Bool)

(declare-datatypes ((SeekEntryResult!6970 0))(
  ( (MissingZero!6970 (index!30238 (_ BitVec 32))) (Found!6970 (index!30239 (_ BitVec 32))) (Intermediate!6970 (undefined!7782 Bool) (index!30240 (_ BitVec 32)) (x!59052 (_ BitVec 32))) (Undefined!6970) (MissingVacant!6970 (index!30241 (_ BitVec 32))) )
))
(declare-fun lt!305777 () SeekEntryResult!6970)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!655387 (= c!75442 (= lt!305777 (Found!6970 index!984)))))

(declare-fun lt!305773 () Unit!22544)

(declare-fun e!376391 () Unit!22544)

(assert (=> b!655387 (= lt!305773 e!376391)))

(declare-fun c!75443 () Bool)

(assert (=> b!655387 (= c!75443 (= lt!305777 Undefined!6970))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38654 0))(
  ( (array!38655 (arr!18523 (Array (_ BitVec 32) (_ BitVec 64))) (size!18887 (_ BitVec 32))) )
))
(declare-fun lt!305763 () array!38654)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!305764 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38654 (_ BitVec 32)) SeekEntryResult!6970)

(assert (=> b!655387 (= lt!305777 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305764 lt!305763 mask!3053))))

(declare-fun e!376393 () Bool)

(assert (=> b!655387 e!376393))

(declare-fun res!425242 () Bool)

(assert (=> b!655387 (=> (not res!425242) (not e!376393))))

(declare-fun lt!305781 () (_ BitVec 32))

(declare-fun lt!305772 () SeekEntryResult!6970)

(assert (=> b!655387 (= res!425242 (= lt!305772 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305781 vacantSpotIndex!68 lt!305764 lt!305763 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38654)

(assert (=> b!655387 (= lt!305772 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305781 vacantSpotIndex!68 (select (arr!18523 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!655387 (= lt!305764 (select (store (arr!18523 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!305768 () Unit!22544)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38654 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22544)

(assert (=> b!655387 (= lt!305768 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305781 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655387 (= lt!305781 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655388 () Bool)

(declare-fun res!425240 () Bool)

(declare-fun e!376399 () Bool)

(assert (=> b!655388 (=> (not res!425240) (not e!376399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655388 (= res!425240 (validKeyInArray!0 k0!1786))))

(declare-fun b!655389 () Bool)

(declare-fun res!425249 () Bool)

(declare-fun arrayContainsKey!0 (array!38654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655389 (= res!425249 (arrayContainsKey!0 lt!305763 (select (arr!18523 a!2986) j!136) j!136))))

(declare-fun e!376395 () Bool)

(assert (=> b!655389 (=> (not res!425249) (not e!376395))))

(declare-fun e!376387 () Bool)

(assert (=> b!655389 (= e!376387 e!376395)))

(declare-fun b!655390 () Bool)

(declare-fun res!425243 () Bool)

(assert (=> b!655390 (=> (not res!425243) (not e!376399))))

(assert (=> b!655390 (= res!425243 (and (= (size!18887 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18887 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18887 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655391 () Bool)

(declare-fun lt!305780 () SeekEntryResult!6970)

(assert (=> b!655391 (= e!376393 (= lt!305780 lt!305772))))

(declare-fun b!655392 () Bool)

(declare-fun Unit!22547 () Unit!22544)

(assert (=> b!655392 (= e!376392 Unit!22547)))

(declare-fun b!655393 () Bool)

(assert (=> b!655393 (= e!376395 (arrayContainsKey!0 lt!305763 (select (arr!18523 a!2986) j!136) index!984))))

(declare-fun b!655394 () Bool)

(declare-fun res!425248 () Bool)

(declare-fun e!376398 () Bool)

(assert (=> b!655394 (=> (not res!425248) (not e!376398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38654 (_ BitVec 32)) Bool)

(assert (=> b!655394 (= res!425248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655395 () Bool)

(assert (=> b!655395 (= e!376399 e!376398)))

(declare-fun res!425247 () Bool)

(assert (=> b!655395 (=> (not res!425247) (not e!376398))))

(declare-fun lt!305775 () SeekEntryResult!6970)

(assert (=> b!655395 (= res!425247 (or (= lt!305775 (MissingZero!6970 i!1108)) (= lt!305775 (MissingVacant!6970 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38654 (_ BitVec 32)) SeekEntryResult!6970)

(assert (=> b!655395 (= lt!305775 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!655396 () Bool)

(declare-fun Unit!22548 () Unit!22544)

(assert (=> b!655396 (= e!376391 Unit!22548)))

(assert (=> b!655396 false))

(declare-fun res!425246 () Bool)

(assert (=> start!59378 (=> (not res!425246) (not e!376399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59378 (= res!425246 (validMask!0 mask!3053))))

(assert (=> start!59378 e!376399))

(assert (=> start!59378 true))

(declare-fun array_inv!14297 (array!38654) Bool)

(assert (=> start!59378 (array_inv!14297 a!2986)))

(declare-fun b!655397 () Bool)

(declare-fun res!425250 () Bool)

(assert (=> b!655397 (=> (not res!425250) (not e!376398))))

(assert (=> b!655397 (= res!425250 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18523 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655398 () Bool)

(declare-fun e!376388 () Unit!22544)

(declare-fun Unit!22549 () Unit!22544)

(assert (=> b!655398 (= e!376388 Unit!22549)))

(declare-fun b!655399 () Bool)

(declare-fun res!425254 () Bool)

(assert (=> b!655399 (=> (not res!425254) (not e!376399))))

(assert (=> b!655399 (= res!425254 (validKeyInArray!0 (select (arr!18523 a!2986) j!136)))))

(declare-fun b!655400 () Bool)

(declare-fun res!425252 () Bool)

(assert (=> b!655400 (=> (not res!425252) (not e!376399))))

(assert (=> b!655400 (= res!425252 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655401 () Bool)

(assert (=> b!655401 false))

(declare-fun lt!305778 () Unit!22544)

(declare-datatypes ((List!12617 0))(
  ( (Nil!12614) (Cons!12613 (h!13658 (_ BitVec 64)) (t!18853 List!12617)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38654 (_ BitVec 64) (_ BitVec 32) List!12617) Unit!22544)

(assert (=> b!655401 (= lt!305778 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305763 (select (arr!18523 a!2986) j!136) index!984 Nil!12614))))

(declare-fun arrayNoDuplicates!0 (array!38654 (_ BitVec 32) List!12617) Bool)

(assert (=> b!655401 (arrayNoDuplicates!0 lt!305763 index!984 Nil!12614)))

(declare-fun lt!305766 () Unit!22544)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38654 (_ BitVec 32) (_ BitVec 32)) Unit!22544)

(assert (=> b!655401 (= lt!305766 (lemmaNoDuplicateFromThenFromBigger!0 lt!305763 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655401 (arrayNoDuplicates!0 lt!305763 #b00000000000000000000000000000000 Nil!12614)))

(declare-fun lt!305776 () Unit!22544)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38654 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12617) Unit!22544)

(assert (=> b!655401 (= lt!305776 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12614))))

(assert (=> b!655401 (arrayContainsKey!0 lt!305763 (select (arr!18523 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305779 () Unit!22544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38654 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22544)

(assert (=> b!655401 (= lt!305779 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305763 (select (arr!18523 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!376386 () Bool)

(assert (=> b!655401 e!376386))

(declare-fun res!425251 () Bool)

(assert (=> b!655401 (=> (not res!425251) (not e!376386))))

(assert (=> b!655401 (= res!425251 (arrayContainsKey!0 lt!305763 (select (arr!18523 a!2986) j!136) j!136))))

(declare-fun Unit!22550 () Unit!22544)

(assert (=> b!655401 (= e!376397 Unit!22550)))

(declare-fun b!655402 () Bool)

(declare-fun res!425255 () Bool)

(assert (=> b!655402 (= res!425255 (bvsge j!136 index!984))))

(assert (=> b!655402 (=> res!425255 e!376387)))

(declare-fun e!376396 () Bool)

(assert (=> b!655402 (= e!376396 e!376387)))

(declare-fun b!655403 () Bool)

(declare-fun e!376389 () Bool)

(assert (=> b!655403 (= e!376398 e!376389)))

(declare-fun res!425245 () Bool)

(assert (=> b!655403 (=> (not res!425245) (not e!376389))))

(assert (=> b!655403 (= res!425245 (= (select (store (arr!18523 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655403 (= lt!305763 (array!38655 (store (arr!18523 a!2986) i!1108 k0!1786) (size!18887 a!2986)))))

(declare-fun b!655404 () Bool)

(declare-fun Unit!22551 () Unit!22544)

(assert (=> b!655404 (= e!376392 Unit!22551)))

(declare-fun res!425253 () Bool)

(assert (=> b!655404 (= res!425253 (= (select (store (arr!18523 a!2986) i!1108 k0!1786) index!984) (select (arr!18523 a!2986) j!136)))))

(assert (=> b!655404 (=> (not res!425253) (not e!376396))))

(assert (=> b!655404 e!376396))

(declare-fun c!75440 () Bool)

(assert (=> b!655404 (= c!75440 (bvslt j!136 index!984))))

(declare-fun lt!305765 () Unit!22544)

(assert (=> b!655404 (= lt!305765 e!376388)))

(declare-fun c!75441 () Bool)

(assert (=> b!655404 (= c!75441 (bvslt index!984 j!136))))

(declare-fun lt!305771 () Unit!22544)

(assert (=> b!655404 (= lt!305771 e!376397)))

(assert (=> b!655404 false))

(declare-fun b!655405 () Bool)

(declare-fun res!425244 () Bool)

(assert (=> b!655405 (=> (not res!425244) (not e!376398))))

(assert (=> b!655405 (= res!425244 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12614))))

(declare-fun b!655406 () Bool)

(assert (=> b!655406 (= e!376386 (arrayContainsKey!0 lt!305763 (select (arr!18523 a!2986) j!136) index!984))))

(declare-fun b!655407 () Bool)

(assert (=> b!655407 false))

(declare-fun lt!305767 () Unit!22544)

(assert (=> b!655407 (= lt!305767 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305763 (select (arr!18523 a!2986) j!136) j!136 Nil!12614))))

(assert (=> b!655407 (arrayNoDuplicates!0 lt!305763 j!136 Nil!12614)))

(declare-fun lt!305769 () Unit!22544)

(assert (=> b!655407 (= lt!305769 (lemmaNoDuplicateFromThenFromBigger!0 lt!305763 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655407 (arrayNoDuplicates!0 lt!305763 #b00000000000000000000000000000000 Nil!12614)))

(declare-fun lt!305762 () Unit!22544)

(assert (=> b!655407 (= lt!305762 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12614))))

(assert (=> b!655407 (arrayContainsKey!0 lt!305763 (select (arr!18523 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305774 () Unit!22544)

(assert (=> b!655407 (= lt!305774 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305763 (select (arr!18523 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22552 () Unit!22544)

(assert (=> b!655407 (= e!376388 Unit!22552)))

(declare-fun b!655408 () Bool)

(assert (=> b!655408 (= e!376389 e!376390)))

(declare-fun res!425241 () Bool)

(assert (=> b!655408 (=> (not res!425241) (not e!376390))))

(assert (=> b!655408 (= res!425241 (and (= lt!305780 (Found!6970 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18523 a!2986) index!984) (select (arr!18523 a!2986) j!136))) (not (= (select (arr!18523 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655408 (= lt!305780 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18523 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655409 () Bool)

(declare-fun Unit!22553 () Unit!22544)

(assert (=> b!655409 (= e!376391 Unit!22553)))

(assert (= (and start!59378 res!425246) b!655390))

(assert (= (and b!655390 res!425243) b!655399))

(assert (= (and b!655399 res!425254) b!655388))

(assert (= (and b!655388 res!425240) b!655400))

(assert (= (and b!655400 res!425252) b!655395))

(assert (= (and b!655395 res!425247) b!655394))

(assert (= (and b!655394 res!425248) b!655405))

(assert (= (and b!655405 res!425244) b!655397))

(assert (= (and b!655397 res!425250) b!655403))

(assert (= (and b!655403 res!425245) b!655408))

(assert (= (and b!655408 res!425241) b!655387))

(assert (= (and b!655387 res!425242) b!655391))

(assert (= (and b!655387 c!75443) b!655396))

(assert (= (and b!655387 (not c!75443)) b!655409))

(assert (= (and b!655387 c!75442) b!655404))

(assert (= (and b!655387 (not c!75442)) b!655392))

(assert (= (and b!655404 res!425253) b!655402))

(assert (= (and b!655402 (not res!425255)) b!655389))

(assert (= (and b!655389 res!425249) b!655393))

(assert (= (and b!655404 c!75440) b!655407))

(assert (= (and b!655404 (not c!75440)) b!655398))

(assert (= (and b!655404 c!75441) b!655401))

(assert (= (and b!655404 (not c!75441)) b!655386))

(assert (= (and b!655401 res!425251) b!655406))

(declare-fun m!628531 () Bool)

(assert (=> b!655393 m!628531))

(assert (=> b!655393 m!628531))

(declare-fun m!628533 () Bool)

(assert (=> b!655393 m!628533))

(assert (=> b!655389 m!628531))

(assert (=> b!655389 m!628531))

(declare-fun m!628535 () Bool)

(assert (=> b!655389 m!628535))

(declare-fun m!628537 () Bool)

(assert (=> b!655403 m!628537))

(declare-fun m!628539 () Bool)

(assert (=> b!655403 m!628539))

(declare-fun m!628541 () Bool)

(assert (=> b!655407 m!628541))

(assert (=> b!655407 m!628531))

(declare-fun m!628543 () Bool)

(assert (=> b!655407 m!628543))

(declare-fun m!628545 () Bool)

(assert (=> b!655407 m!628545))

(declare-fun m!628547 () Bool)

(assert (=> b!655407 m!628547))

(assert (=> b!655407 m!628531))

(declare-fun m!628549 () Bool)

(assert (=> b!655407 m!628549))

(declare-fun m!628551 () Bool)

(assert (=> b!655407 m!628551))

(assert (=> b!655407 m!628531))

(declare-fun m!628553 () Bool)

(assert (=> b!655407 m!628553))

(assert (=> b!655407 m!628531))

(declare-fun m!628555 () Bool)

(assert (=> b!655408 m!628555))

(assert (=> b!655408 m!628531))

(assert (=> b!655408 m!628531))

(declare-fun m!628557 () Bool)

(assert (=> b!655408 m!628557))

(declare-fun m!628559 () Bool)

(assert (=> b!655395 m!628559))

(assert (=> b!655401 m!628541))

(assert (=> b!655401 m!628531))

(declare-fun m!628561 () Bool)

(assert (=> b!655401 m!628561))

(assert (=> b!655401 m!628531))

(assert (=> b!655401 m!628535))

(assert (=> b!655401 m!628531))

(declare-fun m!628563 () Bool)

(assert (=> b!655401 m!628563))

(assert (=> b!655401 m!628531))

(declare-fun m!628565 () Bool)

(assert (=> b!655401 m!628565))

(assert (=> b!655401 m!628551))

(assert (=> b!655401 m!628531))

(declare-fun m!628567 () Bool)

(assert (=> b!655401 m!628567))

(declare-fun m!628569 () Bool)

(assert (=> b!655401 m!628569))

(declare-fun m!628571 () Bool)

(assert (=> b!655405 m!628571))

(declare-fun m!628573 () Bool)

(assert (=> b!655387 m!628573))

(declare-fun m!628575 () Bool)

(assert (=> b!655387 m!628575))

(declare-fun m!628577 () Bool)

(assert (=> b!655387 m!628577))

(assert (=> b!655387 m!628531))

(declare-fun m!628579 () Bool)

(assert (=> b!655387 m!628579))

(assert (=> b!655387 m!628531))

(assert (=> b!655387 m!628537))

(declare-fun m!628581 () Bool)

(assert (=> b!655387 m!628581))

(declare-fun m!628583 () Bool)

(assert (=> b!655387 m!628583))

(declare-fun m!628585 () Bool)

(assert (=> start!59378 m!628585))

(declare-fun m!628587 () Bool)

(assert (=> start!59378 m!628587))

(declare-fun m!628589 () Bool)

(assert (=> b!655394 m!628589))

(assert (=> b!655404 m!628537))

(declare-fun m!628591 () Bool)

(assert (=> b!655404 m!628591))

(assert (=> b!655404 m!628531))

(assert (=> b!655406 m!628531))

(assert (=> b!655406 m!628531))

(assert (=> b!655406 m!628533))

(assert (=> b!655399 m!628531))

(assert (=> b!655399 m!628531))

(declare-fun m!628593 () Bool)

(assert (=> b!655399 m!628593))

(declare-fun m!628595 () Bool)

(assert (=> b!655397 m!628595))

(declare-fun m!628597 () Bool)

(assert (=> b!655388 m!628597))

(declare-fun m!628599 () Bool)

(assert (=> b!655400 m!628599))

(check-sat (not b!655388) (not start!59378) (not b!655399) (not b!655400) (not b!655406) (not b!655405) (not b!655389) (not b!655394) (not b!655408) (not b!655393) (not b!655401) (not b!655395) (not b!655407) (not b!655387))
(check-sat)
