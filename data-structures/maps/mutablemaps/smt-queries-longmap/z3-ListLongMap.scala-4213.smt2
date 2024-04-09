; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57740 () Bool)

(assert start!57740)

(declare-fun b!638432 () Bool)

(declare-fun e!365337 () Bool)

(declare-fun e!365331 () Bool)

(assert (=> b!638432 (= e!365337 (not e!365331))))

(declare-fun res!413408 () Bool)

(assert (=> b!638432 (=> res!413408 e!365331)))

(declare-datatypes ((SeekEntryResult!6799 0))(
  ( (MissingZero!6799 (index!29509 (_ BitVec 32))) (Found!6799 (index!29510 (_ BitVec 32))) (Intermediate!6799 (undefined!7611 Bool) (index!29511 (_ BitVec 32)) (x!58290 (_ BitVec 32))) (Undefined!6799) (MissingVacant!6799 (index!29512 (_ BitVec 32))) )
))
(declare-fun lt!295328 () SeekEntryResult!6799)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!638432 (= res!413408 (not (= lt!295328 (Found!6799 index!984))))))

(declare-datatypes ((Unit!21554 0))(
  ( (Unit!21555) )
))
(declare-fun lt!295335 () Unit!21554)

(declare-fun e!365339 () Unit!21554)

(assert (=> b!638432 (= lt!295335 e!365339)))

(declare-fun c!72881 () Bool)

(assert (=> b!638432 (= c!72881 (= lt!295328 Undefined!6799))))

(declare-fun lt!295325 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38267 0))(
  ( (array!38268 (arr!18352 (Array (_ BitVec 32) (_ BitVec 64))) (size!18716 (_ BitVec 32))) )
))
(declare-fun lt!295327 () array!38267)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38267 (_ BitVec 32)) SeekEntryResult!6799)

(assert (=> b!638432 (= lt!295328 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295325 lt!295327 mask!3053))))

(declare-fun e!365334 () Bool)

(assert (=> b!638432 e!365334))

(declare-fun res!413420 () Bool)

(assert (=> b!638432 (=> (not res!413420) (not e!365334))))

(declare-fun lt!295326 () (_ BitVec 32))

(declare-fun lt!295324 () SeekEntryResult!6799)

(assert (=> b!638432 (= res!413420 (= lt!295324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 lt!295325 lt!295327 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38267)

(assert (=> b!638432 (= lt!295324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!638432 (= lt!295325 (select (store (arr!18352 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295332 () Unit!21554)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21554)

(assert (=> b!638432 (= lt!295332 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638432 (= lt!295326 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638433 () Bool)

(declare-fun res!413407 () Bool)

(declare-fun e!365338 () Bool)

(assert (=> b!638433 (=> (not res!413407) (not e!365338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638433 (= res!413407 (validKeyInArray!0 (select (arr!18352 a!2986) j!136)))))

(declare-fun b!638434 () Bool)

(declare-fun lt!295331 () SeekEntryResult!6799)

(assert (=> b!638434 (= e!365334 (= lt!295331 lt!295324))))

(declare-fun b!638435 () Bool)

(declare-fun e!365341 () Bool)

(assert (=> b!638435 (= e!365341 e!365337)))

(declare-fun res!413409 () Bool)

(assert (=> b!638435 (=> (not res!413409) (not e!365337))))

(assert (=> b!638435 (= res!413409 (and (= lt!295331 (Found!6799 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18352 a!2986) index!984) (select (arr!18352 a!2986) j!136))) (not (= (select (arr!18352 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638435 (= lt!295331 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638436 () Bool)

(declare-fun e!365332 () Bool)

(declare-fun arrayContainsKey!0 (array!38267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638436 (= e!365332 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) index!984))))

(declare-fun b!638437 () Bool)

(declare-fun res!413416 () Bool)

(assert (=> b!638437 (=> (not res!413416) (not e!365338))))

(assert (=> b!638437 (= res!413416 (and (= (size!18716 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18716 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18716 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638438 () Bool)

(declare-fun e!365340 () Bool)

(assert (=> b!638438 (= e!365340 (bvslt (size!18716 a!2986) #b01111111111111111111111111111111))))

(declare-datatypes ((List!12446 0))(
  ( (Nil!12443) (Cons!12442 (h!13487 (_ BitVec 64)) (t!18682 List!12446)) )
))
(declare-fun arrayNoDuplicates!0 (array!38267 (_ BitVec 32) List!12446) Bool)

(assert (=> b!638438 (arrayNoDuplicates!0 lt!295327 #b00000000000000000000000000000000 Nil!12443)))

(declare-fun lt!295330 () Unit!21554)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38267 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12446) Unit!21554)

(assert (=> b!638438 (= lt!295330 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12443))))

(assert (=> b!638438 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295329 () Unit!21554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38267 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21554)

(assert (=> b!638438 (= lt!295329 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295327 (select (arr!18352 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638439 () Bool)

(declare-fun e!365333 () Bool)

(assert (=> b!638439 (= e!365333 e!365332)))

(declare-fun res!413415 () Bool)

(assert (=> b!638439 (=> (not res!413415) (not e!365332))))

(assert (=> b!638439 (= res!413415 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) j!136))))

(declare-fun b!638440 () Bool)

(declare-fun res!413417 () Bool)

(declare-fun e!365336 () Bool)

(assert (=> b!638440 (=> (not res!413417) (not e!365336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38267 (_ BitVec 32)) Bool)

(assert (=> b!638440 (= res!413417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638441 () Bool)

(assert (=> b!638441 (= e!365331 e!365340)))

(declare-fun res!413411 () Bool)

(assert (=> b!638441 (=> res!413411 e!365340)))

(declare-fun lt!295333 () (_ BitVec 64))

(assert (=> b!638441 (= res!413411 (or (not (= (select (arr!18352 a!2986) j!136) lt!295325)) (not (= (select (arr!18352 a!2986) j!136) lt!295333)) (bvsge j!136 index!984)))))

(declare-fun e!365330 () Bool)

(assert (=> b!638441 e!365330))

(declare-fun res!413413 () Bool)

(assert (=> b!638441 (=> (not res!413413) (not e!365330))))

(assert (=> b!638441 (= res!413413 (= lt!295333 (select (arr!18352 a!2986) j!136)))))

(assert (=> b!638441 (= lt!295333 (select (store (arr!18352 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!638442 () Bool)

(declare-fun res!413414 () Bool)

(assert (=> b!638442 (=> (not res!413414) (not e!365338))))

(assert (=> b!638442 (= res!413414 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638443 () Bool)

(declare-fun Unit!21556 () Unit!21554)

(assert (=> b!638443 (= e!365339 Unit!21556)))

(assert (=> b!638443 false))

(declare-fun b!638444 () Bool)

(declare-fun res!413406 () Bool)

(assert (=> b!638444 (=> (not res!413406) (not e!365336))))

(assert (=> b!638444 (= res!413406 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18352 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638445 () Bool)

(assert (=> b!638445 (= e!365338 e!365336)))

(declare-fun res!413419 () Bool)

(assert (=> b!638445 (=> (not res!413419) (not e!365336))))

(declare-fun lt!295334 () SeekEntryResult!6799)

(assert (=> b!638445 (= res!413419 (or (= lt!295334 (MissingZero!6799 i!1108)) (= lt!295334 (MissingVacant!6799 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38267 (_ BitVec 32)) SeekEntryResult!6799)

(assert (=> b!638445 (= lt!295334 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!638446 () Bool)

(declare-fun res!413405 () Bool)

(assert (=> b!638446 (=> (not res!413405) (not e!365338))))

(assert (=> b!638446 (= res!413405 (validKeyInArray!0 k0!1786))))

(declare-fun b!638447 () Bool)

(assert (=> b!638447 (= e!365330 e!365333)))

(declare-fun res!413412 () Bool)

(assert (=> b!638447 (=> res!413412 e!365333)))

(assert (=> b!638447 (= res!413412 (or (not (= (select (arr!18352 a!2986) j!136) lt!295325)) (not (= (select (arr!18352 a!2986) j!136) lt!295333)) (bvsge j!136 index!984)))))

(declare-fun b!638448 () Bool)

(assert (=> b!638448 (= e!365336 e!365341)))

(declare-fun res!413418 () Bool)

(assert (=> b!638448 (=> (not res!413418) (not e!365341))))

(assert (=> b!638448 (= res!413418 (= (select (store (arr!18352 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638448 (= lt!295327 (array!38268 (store (arr!18352 a!2986) i!1108 k0!1786) (size!18716 a!2986)))))

(declare-fun b!638449 () Bool)

(declare-fun res!413404 () Bool)

(assert (=> b!638449 (=> (not res!413404) (not e!365336))))

(assert (=> b!638449 (= res!413404 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12443))))

(declare-fun b!638450 () Bool)

(declare-fun Unit!21557 () Unit!21554)

(assert (=> b!638450 (= e!365339 Unit!21557)))

(declare-fun res!413410 () Bool)

(assert (=> start!57740 (=> (not res!413410) (not e!365338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57740 (= res!413410 (validMask!0 mask!3053))))

(assert (=> start!57740 e!365338))

(assert (=> start!57740 true))

(declare-fun array_inv!14126 (array!38267) Bool)

(assert (=> start!57740 (array_inv!14126 a!2986)))

(assert (= (and start!57740 res!413410) b!638437))

(assert (= (and b!638437 res!413416) b!638433))

(assert (= (and b!638433 res!413407) b!638446))

(assert (= (and b!638446 res!413405) b!638442))

(assert (= (and b!638442 res!413414) b!638445))

(assert (= (and b!638445 res!413419) b!638440))

(assert (= (and b!638440 res!413417) b!638449))

(assert (= (and b!638449 res!413404) b!638444))

(assert (= (and b!638444 res!413406) b!638448))

(assert (= (and b!638448 res!413418) b!638435))

(assert (= (and b!638435 res!413409) b!638432))

(assert (= (and b!638432 res!413420) b!638434))

(assert (= (and b!638432 c!72881) b!638443))

(assert (= (and b!638432 (not c!72881)) b!638450))

(assert (= (and b!638432 (not res!413408)) b!638441))

(assert (= (and b!638441 res!413413) b!638447))

(assert (= (and b!638447 (not res!413412)) b!638439))

(assert (= (and b!638439 res!413415) b!638436))

(assert (= (and b!638441 (not res!413411)) b!638438))

(declare-fun m!612423 () Bool)

(assert (=> start!57740 m!612423))

(declare-fun m!612425 () Bool)

(assert (=> start!57740 m!612425))

(declare-fun m!612427 () Bool)

(assert (=> b!638444 m!612427))

(declare-fun m!612429 () Bool)

(assert (=> b!638439 m!612429))

(assert (=> b!638439 m!612429))

(declare-fun m!612431 () Bool)

(assert (=> b!638439 m!612431))

(declare-fun m!612433 () Bool)

(assert (=> b!638440 m!612433))

(assert (=> b!638436 m!612429))

(assert (=> b!638436 m!612429))

(declare-fun m!612435 () Bool)

(assert (=> b!638436 m!612435))

(declare-fun m!612437 () Bool)

(assert (=> b!638449 m!612437))

(declare-fun m!612439 () Bool)

(assert (=> b!638445 m!612439))

(assert (=> b!638433 m!612429))

(assert (=> b!638433 m!612429))

(declare-fun m!612441 () Bool)

(assert (=> b!638433 m!612441))

(declare-fun m!612443 () Bool)

(assert (=> b!638442 m!612443))

(assert (=> b!638441 m!612429))

(declare-fun m!612445 () Bool)

(assert (=> b!638441 m!612445))

(declare-fun m!612447 () Bool)

(assert (=> b!638441 m!612447))

(declare-fun m!612449 () Bool)

(assert (=> b!638435 m!612449))

(assert (=> b!638435 m!612429))

(assert (=> b!638435 m!612429))

(declare-fun m!612451 () Bool)

(assert (=> b!638435 m!612451))

(assert (=> b!638447 m!612429))

(declare-fun m!612453 () Bool)

(assert (=> b!638432 m!612453))

(declare-fun m!612455 () Bool)

(assert (=> b!638432 m!612455))

(declare-fun m!612457 () Bool)

(assert (=> b!638432 m!612457))

(assert (=> b!638432 m!612429))

(declare-fun m!612459 () Bool)

(assert (=> b!638432 m!612459))

(assert (=> b!638432 m!612445))

(declare-fun m!612461 () Bool)

(assert (=> b!638432 m!612461))

(assert (=> b!638432 m!612429))

(declare-fun m!612463 () Bool)

(assert (=> b!638432 m!612463))

(declare-fun m!612465 () Bool)

(assert (=> b!638446 m!612465))

(assert (=> b!638438 m!612429))

(declare-fun m!612467 () Bool)

(assert (=> b!638438 m!612467))

(assert (=> b!638438 m!612429))

(declare-fun m!612469 () Bool)

(assert (=> b!638438 m!612469))

(assert (=> b!638438 m!612429))

(declare-fun m!612471 () Bool)

(assert (=> b!638438 m!612471))

(declare-fun m!612473 () Bool)

(assert (=> b!638438 m!612473))

(assert (=> b!638448 m!612445))

(declare-fun m!612475 () Bool)

(assert (=> b!638448 m!612475))

(check-sat (not b!638438) (not b!638440) (not b!638435) (not start!57740) (not b!638432) (not b!638446) (not b!638449) (not b!638439) (not b!638436) (not b!638442) (not b!638445) (not b!638433))
(check-sat)
(get-model)

(declare-fun d!90089 () Bool)

(declare-fun res!413476 () Bool)

(declare-fun e!365382 () Bool)

(assert (=> d!90089 (=> res!413476 e!365382)))

(assert (=> d!90089 (= res!413476 (= (select (arr!18352 lt!295327) j!136) (select (arr!18352 a!2986) j!136)))))

(assert (=> d!90089 (= (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) j!136) e!365382)))

(declare-fun b!638512 () Bool)

(declare-fun e!365383 () Bool)

(assert (=> b!638512 (= e!365382 e!365383)))

(declare-fun res!413477 () Bool)

(assert (=> b!638512 (=> (not res!413477) (not e!365383))))

(assert (=> b!638512 (= res!413477 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18716 lt!295327)))))

(declare-fun b!638513 () Bool)

(assert (=> b!638513 (= e!365383 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90089 (not res!413476)) b!638512))

(assert (= (and b!638512 res!413477) b!638513))

(declare-fun m!612531 () Bool)

(assert (=> d!90089 m!612531))

(assert (=> b!638513 m!612429))

(declare-fun m!612533 () Bool)

(assert (=> b!638513 m!612533))

(assert (=> b!638439 d!90089))

(declare-fun b!638524 () Bool)

(declare-fun e!365392 () Bool)

(declare-fun contains!3125 (List!12446 (_ BitVec 64)) Bool)

(assert (=> b!638524 (= e!365392 (contains!3125 Nil!12443 (select (arr!18352 lt!295327) #b00000000000000000000000000000000)))))

(declare-fun b!638525 () Bool)

(declare-fun e!365394 () Bool)

(declare-fun call!33467 () Bool)

(assert (=> b!638525 (= e!365394 call!33467)))

(declare-fun bm!33464 () Bool)

(declare-fun c!72887 () Bool)

(assert (=> bm!33464 (= call!33467 (arrayNoDuplicates!0 lt!295327 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72887 (Cons!12442 (select (arr!18352 lt!295327) #b00000000000000000000000000000000) Nil!12443) Nil!12443)))))

(declare-fun b!638526 () Bool)

(declare-fun e!365395 () Bool)

(assert (=> b!638526 (= e!365395 e!365394)))

(assert (=> b!638526 (= c!72887 (validKeyInArray!0 (select (arr!18352 lt!295327) #b00000000000000000000000000000000)))))

(declare-fun d!90091 () Bool)

(declare-fun res!413485 () Bool)

(declare-fun e!365393 () Bool)

(assert (=> d!90091 (=> res!413485 e!365393)))

(assert (=> d!90091 (= res!413485 (bvsge #b00000000000000000000000000000000 (size!18716 lt!295327)))))

(assert (=> d!90091 (= (arrayNoDuplicates!0 lt!295327 #b00000000000000000000000000000000 Nil!12443) e!365393)))

(declare-fun b!638527 () Bool)

(assert (=> b!638527 (= e!365394 call!33467)))

(declare-fun b!638528 () Bool)

(assert (=> b!638528 (= e!365393 e!365395)))

(declare-fun res!413486 () Bool)

(assert (=> b!638528 (=> (not res!413486) (not e!365395))))

(assert (=> b!638528 (= res!413486 (not e!365392))))

(declare-fun res!413484 () Bool)

(assert (=> b!638528 (=> (not res!413484) (not e!365392))))

(assert (=> b!638528 (= res!413484 (validKeyInArray!0 (select (arr!18352 lt!295327) #b00000000000000000000000000000000)))))

(assert (= (and d!90091 (not res!413485)) b!638528))

(assert (= (and b!638528 res!413484) b!638524))

(assert (= (and b!638528 res!413486) b!638526))

(assert (= (and b!638526 c!72887) b!638527))

(assert (= (and b!638526 (not c!72887)) b!638525))

(assert (= (or b!638527 b!638525) bm!33464))

(declare-fun m!612535 () Bool)

(assert (=> b!638524 m!612535))

(assert (=> b!638524 m!612535))

(declare-fun m!612537 () Bool)

(assert (=> b!638524 m!612537))

(assert (=> bm!33464 m!612535))

(declare-fun m!612539 () Bool)

(assert (=> bm!33464 m!612539))

(assert (=> b!638526 m!612535))

(assert (=> b!638526 m!612535))

(declare-fun m!612541 () Bool)

(assert (=> b!638526 m!612541))

(assert (=> b!638528 m!612535))

(assert (=> b!638528 m!612535))

(assert (=> b!638528 m!612541))

(assert (=> b!638438 d!90091))

(declare-fun d!90093 () Bool)

(declare-fun e!365398 () Bool)

(assert (=> d!90093 e!365398))

(declare-fun res!413489 () Bool)

(assert (=> d!90093 (=> (not res!413489) (not e!365398))))

(assert (=> d!90093 (= res!413489 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18716 a!2986))))))

(declare-fun lt!295374 () Unit!21554)

(declare-fun choose!41 (array!38267 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12446) Unit!21554)

(assert (=> d!90093 (= lt!295374 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12443))))

(assert (=> d!90093 (bvslt (size!18716 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90093 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12443) lt!295374)))

(declare-fun b!638531 () Bool)

(assert (=> b!638531 (= e!365398 (arrayNoDuplicates!0 (array!38268 (store (arr!18352 a!2986) i!1108 k0!1786) (size!18716 a!2986)) #b00000000000000000000000000000000 Nil!12443))))

(assert (= (and d!90093 res!413489) b!638531))

(declare-fun m!612543 () Bool)

(assert (=> d!90093 m!612543))

(assert (=> b!638531 m!612445))

(declare-fun m!612545 () Bool)

(assert (=> b!638531 m!612545))

(assert (=> b!638438 d!90093))

(declare-fun d!90095 () Bool)

(declare-fun res!413490 () Bool)

(declare-fun e!365399 () Bool)

(assert (=> d!90095 (=> res!413490 e!365399)))

(assert (=> d!90095 (= res!413490 (= (select (arr!18352 lt!295327) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18352 a!2986) j!136)))))

(assert (=> d!90095 (= (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!365399)))

(declare-fun b!638532 () Bool)

(declare-fun e!365400 () Bool)

(assert (=> b!638532 (= e!365399 e!365400)))

(declare-fun res!413491 () Bool)

(assert (=> b!638532 (=> (not res!413491) (not e!365400))))

(assert (=> b!638532 (= res!413491 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18716 lt!295327)))))

(declare-fun b!638533 () Bool)

(assert (=> b!638533 (= e!365400 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90095 (not res!413490)) b!638532))

(assert (= (and b!638532 res!413491) b!638533))

(declare-fun m!612547 () Bool)

(assert (=> d!90095 m!612547))

(assert (=> b!638533 m!612429))

(declare-fun m!612549 () Bool)

(assert (=> b!638533 m!612549))

(assert (=> b!638438 d!90095))

(declare-fun d!90097 () Bool)

(assert (=> d!90097 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295377 () Unit!21554)

(declare-fun choose!114 (array!38267 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21554)

(assert (=> d!90097 (= lt!295377 (choose!114 lt!295327 (select (arr!18352 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90097 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90097 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295327 (select (arr!18352 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!295377)))

(declare-fun bs!19145 () Bool)

(assert (= bs!19145 d!90097))

(assert (=> bs!19145 m!612429))

(assert (=> bs!19145 m!612471))

(assert (=> bs!19145 m!612429))

(declare-fun m!612551 () Bool)

(assert (=> bs!19145 m!612551))

(assert (=> b!638438 d!90097))

(declare-fun b!638534 () Bool)

(declare-fun e!365401 () Bool)

(assert (=> b!638534 (= e!365401 (contains!3125 Nil!12443 (select (arr!18352 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!638535 () Bool)

(declare-fun e!365403 () Bool)

(declare-fun call!33468 () Bool)

(assert (=> b!638535 (= e!365403 call!33468)))

(declare-fun bm!33465 () Bool)

(declare-fun c!72888 () Bool)

(assert (=> bm!33465 (= call!33468 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72888 (Cons!12442 (select (arr!18352 a!2986) #b00000000000000000000000000000000) Nil!12443) Nil!12443)))))

(declare-fun b!638536 () Bool)

(declare-fun e!365404 () Bool)

(assert (=> b!638536 (= e!365404 e!365403)))

(assert (=> b!638536 (= c!72888 (validKeyInArray!0 (select (arr!18352 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90099 () Bool)

(declare-fun res!413493 () Bool)

(declare-fun e!365402 () Bool)

(assert (=> d!90099 (=> res!413493 e!365402)))

(assert (=> d!90099 (= res!413493 (bvsge #b00000000000000000000000000000000 (size!18716 a!2986)))))

(assert (=> d!90099 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12443) e!365402)))

(declare-fun b!638537 () Bool)

(assert (=> b!638537 (= e!365403 call!33468)))

(declare-fun b!638538 () Bool)

(assert (=> b!638538 (= e!365402 e!365404)))

(declare-fun res!413494 () Bool)

(assert (=> b!638538 (=> (not res!413494) (not e!365404))))

(assert (=> b!638538 (= res!413494 (not e!365401))))

(declare-fun res!413492 () Bool)

(assert (=> b!638538 (=> (not res!413492) (not e!365401))))

(assert (=> b!638538 (= res!413492 (validKeyInArray!0 (select (arr!18352 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90099 (not res!413493)) b!638538))

(assert (= (and b!638538 res!413492) b!638534))

(assert (= (and b!638538 res!413494) b!638536))

(assert (= (and b!638536 c!72888) b!638537))

(assert (= (and b!638536 (not c!72888)) b!638535))

(assert (= (or b!638537 b!638535) bm!33465))

(declare-fun m!612553 () Bool)

(assert (=> b!638534 m!612553))

(assert (=> b!638534 m!612553))

(declare-fun m!612555 () Bool)

(assert (=> b!638534 m!612555))

(assert (=> bm!33465 m!612553))

(declare-fun m!612557 () Bool)

(assert (=> bm!33465 m!612557))

(assert (=> b!638536 m!612553))

(assert (=> b!638536 m!612553))

(declare-fun m!612559 () Bool)

(assert (=> b!638536 m!612559))

(assert (=> b!638538 m!612553))

(assert (=> b!638538 m!612553))

(assert (=> b!638538 m!612559))

(assert (=> b!638449 d!90099))

(declare-fun b!638547 () Bool)

(declare-fun e!365412 () Bool)

(declare-fun call!33471 () Bool)

(assert (=> b!638547 (= e!365412 call!33471)))

(declare-fun b!638548 () Bool)

(declare-fun e!365413 () Bool)

(assert (=> b!638548 (= e!365413 call!33471)))

(declare-fun b!638549 () Bool)

(declare-fun e!365411 () Bool)

(assert (=> b!638549 (= e!365411 e!365413)))

(declare-fun c!72891 () Bool)

(assert (=> b!638549 (= c!72891 (validKeyInArray!0 (select (arr!18352 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!638550 () Bool)

(assert (=> b!638550 (= e!365413 e!365412)))

(declare-fun lt!295384 () (_ BitVec 64))

(assert (=> b!638550 (= lt!295384 (select (arr!18352 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!295386 () Unit!21554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38267 (_ BitVec 64) (_ BitVec 32)) Unit!21554)

(assert (=> b!638550 (= lt!295386 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!295384 #b00000000000000000000000000000000))))

(assert (=> b!638550 (arrayContainsKey!0 a!2986 lt!295384 #b00000000000000000000000000000000)))

(declare-fun lt!295385 () Unit!21554)

(assert (=> b!638550 (= lt!295385 lt!295386)))

(declare-fun res!413500 () Bool)

(assert (=> b!638550 (= res!413500 (= (seekEntryOrOpen!0 (select (arr!18352 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6799 #b00000000000000000000000000000000)))))

(assert (=> b!638550 (=> (not res!413500) (not e!365412))))

(declare-fun bm!33468 () Bool)

(assert (=> bm!33468 (= call!33471 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!90101 () Bool)

(declare-fun res!413499 () Bool)

(assert (=> d!90101 (=> res!413499 e!365411)))

(assert (=> d!90101 (= res!413499 (bvsge #b00000000000000000000000000000000 (size!18716 a!2986)))))

(assert (=> d!90101 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!365411)))

(assert (= (and d!90101 (not res!413499)) b!638549))

(assert (= (and b!638549 c!72891) b!638550))

(assert (= (and b!638549 (not c!72891)) b!638548))

(assert (= (and b!638550 res!413500) b!638547))

(assert (= (or b!638547 b!638548) bm!33468))

(assert (=> b!638549 m!612553))

(assert (=> b!638549 m!612553))

(assert (=> b!638549 m!612559))

(assert (=> b!638550 m!612553))

(declare-fun m!612561 () Bool)

(assert (=> b!638550 m!612561))

(declare-fun m!612563 () Bool)

(assert (=> b!638550 m!612563))

(assert (=> b!638550 m!612553))

(declare-fun m!612565 () Bool)

(assert (=> b!638550 m!612565))

(declare-fun m!612567 () Bool)

(assert (=> bm!33468 m!612567))

(assert (=> b!638440 d!90101))

(declare-fun b!638563 () Bool)

(declare-fun e!365420 () SeekEntryResult!6799)

(assert (=> b!638563 (= e!365420 (MissingVacant!6799 vacantSpotIndex!68))))

(declare-fun b!638564 () Bool)

(assert (=> b!638564 (= e!365420 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!295325 lt!295327 mask!3053))))

(declare-fun b!638565 () Bool)

(declare-fun e!365422 () SeekEntryResult!6799)

(assert (=> b!638565 (= e!365422 (Found!6799 index!984))))

(declare-fun b!638566 () Bool)

(declare-fun e!365421 () SeekEntryResult!6799)

(assert (=> b!638566 (= e!365421 e!365422)))

(declare-fun c!72900 () Bool)

(declare-fun lt!295391 () (_ BitVec 64))

(assert (=> b!638566 (= c!72900 (= lt!295391 lt!295325))))

(declare-fun d!90103 () Bool)

(declare-fun lt!295392 () SeekEntryResult!6799)

(get-info :version)

(assert (=> d!90103 (and (or ((_ is Undefined!6799) lt!295392) (not ((_ is Found!6799) lt!295392)) (and (bvsge (index!29510 lt!295392) #b00000000000000000000000000000000) (bvslt (index!29510 lt!295392) (size!18716 lt!295327)))) (or ((_ is Undefined!6799) lt!295392) ((_ is Found!6799) lt!295392) (not ((_ is MissingVacant!6799) lt!295392)) (not (= (index!29512 lt!295392) vacantSpotIndex!68)) (and (bvsge (index!29512 lt!295392) #b00000000000000000000000000000000) (bvslt (index!29512 lt!295392) (size!18716 lt!295327)))) (or ((_ is Undefined!6799) lt!295392) (ite ((_ is Found!6799) lt!295392) (= (select (arr!18352 lt!295327) (index!29510 lt!295392)) lt!295325) (and ((_ is MissingVacant!6799) lt!295392) (= (index!29512 lt!295392) vacantSpotIndex!68) (= (select (arr!18352 lt!295327) (index!29512 lt!295392)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90103 (= lt!295392 e!365421)))

(declare-fun c!72898 () Bool)

(assert (=> d!90103 (= c!72898 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90103 (= lt!295391 (select (arr!18352 lt!295327) index!984))))

(assert (=> d!90103 (validMask!0 mask!3053)))

(assert (=> d!90103 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295325 lt!295327 mask!3053) lt!295392)))

(declare-fun b!638567 () Bool)

(declare-fun c!72899 () Bool)

(assert (=> b!638567 (= c!72899 (= lt!295391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638567 (= e!365422 e!365420)))

(declare-fun b!638568 () Bool)

(assert (=> b!638568 (= e!365421 Undefined!6799)))

(assert (= (and d!90103 c!72898) b!638568))

(assert (= (and d!90103 (not c!72898)) b!638566))

(assert (= (and b!638566 c!72900) b!638565))

(assert (= (and b!638566 (not c!72900)) b!638567))

(assert (= (and b!638567 c!72899) b!638563))

(assert (= (and b!638567 (not c!72899)) b!638564))

(assert (=> b!638564 m!612453))

(assert (=> b!638564 m!612453))

(declare-fun m!612569 () Bool)

(assert (=> b!638564 m!612569))

(declare-fun m!612571 () Bool)

(assert (=> d!90103 m!612571))

(declare-fun m!612573 () Bool)

(assert (=> d!90103 m!612573))

(declare-fun m!612575 () Bool)

(assert (=> d!90103 m!612575))

(assert (=> d!90103 m!612423))

(assert (=> b!638432 d!90103))

(declare-fun b!638569 () Bool)

(declare-fun e!365423 () SeekEntryResult!6799)

(assert (=> b!638569 (= e!365423 (MissingVacant!6799 vacantSpotIndex!68))))

(declare-fun b!638570 () Bool)

(assert (=> b!638570 (= e!365423 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295326 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638571 () Bool)

(declare-fun e!365425 () SeekEntryResult!6799)

(assert (=> b!638571 (= e!365425 (Found!6799 lt!295326))))

(declare-fun b!638572 () Bool)

(declare-fun e!365424 () SeekEntryResult!6799)

(assert (=> b!638572 (= e!365424 e!365425)))

(declare-fun c!72903 () Bool)

(declare-fun lt!295393 () (_ BitVec 64))

(assert (=> b!638572 (= c!72903 (= lt!295393 (select (arr!18352 a!2986) j!136)))))

(declare-fun d!90105 () Bool)

(declare-fun lt!295394 () SeekEntryResult!6799)

(assert (=> d!90105 (and (or ((_ is Undefined!6799) lt!295394) (not ((_ is Found!6799) lt!295394)) (and (bvsge (index!29510 lt!295394) #b00000000000000000000000000000000) (bvslt (index!29510 lt!295394) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295394) ((_ is Found!6799) lt!295394) (not ((_ is MissingVacant!6799) lt!295394)) (not (= (index!29512 lt!295394) vacantSpotIndex!68)) (and (bvsge (index!29512 lt!295394) #b00000000000000000000000000000000) (bvslt (index!29512 lt!295394) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295394) (ite ((_ is Found!6799) lt!295394) (= (select (arr!18352 a!2986) (index!29510 lt!295394)) (select (arr!18352 a!2986) j!136)) (and ((_ is MissingVacant!6799) lt!295394) (= (index!29512 lt!295394) vacantSpotIndex!68) (= (select (arr!18352 a!2986) (index!29512 lt!295394)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90105 (= lt!295394 e!365424)))

(declare-fun c!72901 () Bool)

(assert (=> d!90105 (= c!72901 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90105 (= lt!295393 (select (arr!18352 a!2986) lt!295326))))

(assert (=> d!90105 (validMask!0 mask!3053)))

(assert (=> d!90105 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053) lt!295394)))

(declare-fun b!638573 () Bool)

(declare-fun c!72902 () Bool)

(assert (=> b!638573 (= c!72902 (= lt!295393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638573 (= e!365425 e!365423)))

(declare-fun b!638574 () Bool)

(assert (=> b!638574 (= e!365424 Undefined!6799)))

(assert (= (and d!90105 c!72901) b!638574))

(assert (= (and d!90105 (not c!72901)) b!638572))

(assert (= (and b!638572 c!72903) b!638571))

(assert (= (and b!638572 (not c!72903)) b!638573))

(assert (= (and b!638573 c!72902) b!638569))

(assert (= (and b!638573 (not c!72902)) b!638570))

(declare-fun m!612577 () Bool)

(assert (=> b!638570 m!612577))

(assert (=> b!638570 m!612577))

(assert (=> b!638570 m!612429))

(declare-fun m!612579 () Bool)

(assert (=> b!638570 m!612579))

(declare-fun m!612581 () Bool)

(assert (=> d!90105 m!612581))

(declare-fun m!612583 () Bool)

(assert (=> d!90105 m!612583))

(declare-fun m!612585 () Bool)

(assert (=> d!90105 m!612585))

(assert (=> d!90105 m!612423))

(assert (=> b!638432 d!90105))

(declare-fun b!638575 () Bool)

(declare-fun e!365426 () SeekEntryResult!6799)

(assert (=> b!638575 (= e!365426 (MissingVacant!6799 vacantSpotIndex!68))))

(declare-fun b!638576 () Bool)

(assert (=> b!638576 (= e!365426 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295326 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!295325 lt!295327 mask!3053))))

(declare-fun b!638577 () Bool)

(declare-fun e!365428 () SeekEntryResult!6799)

(assert (=> b!638577 (= e!365428 (Found!6799 lt!295326))))

(declare-fun b!638578 () Bool)

(declare-fun e!365427 () SeekEntryResult!6799)

(assert (=> b!638578 (= e!365427 e!365428)))

(declare-fun c!72906 () Bool)

(declare-fun lt!295395 () (_ BitVec 64))

(assert (=> b!638578 (= c!72906 (= lt!295395 lt!295325))))

(declare-fun d!90109 () Bool)

(declare-fun lt!295396 () SeekEntryResult!6799)

(assert (=> d!90109 (and (or ((_ is Undefined!6799) lt!295396) (not ((_ is Found!6799) lt!295396)) (and (bvsge (index!29510 lt!295396) #b00000000000000000000000000000000) (bvslt (index!29510 lt!295396) (size!18716 lt!295327)))) (or ((_ is Undefined!6799) lt!295396) ((_ is Found!6799) lt!295396) (not ((_ is MissingVacant!6799) lt!295396)) (not (= (index!29512 lt!295396) vacantSpotIndex!68)) (and (bvsge (index!29512 lt!295396) #b00000000000000000000000000000000) (bvslt (index!29512 lt!295396) (size!18716 lt!295327)))) (or ((_ is Undefined!6799) lt!295396) (ite ((_ is Found!6799) lt!295396) (= (select (arr!18352 lt!295327) (index!29510 lt!295396)) lt!295325) (and ((_ is MissingVacant!6799) lt!295396) (= (index!29512 lt!295396) vacantSpotIndex!68) (= (select (arr!18352 lt!295327) (index!29512 lt!295396)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90109 (= lt!295396 e!365427)))

(declare-fun c!72904 () Bool)

(assert (=> d!90109 (= c!72904 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90109 (= lt!295395 (select (arr!18352 lt!295327) lt!295326))))

(assert (=> d!90109 (validMask!0 mask!3053)))

(assert (=> d!90109 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 lt!295325 lt!295327 mask!3053) lt!295396)))

(declare-fun b!638579 () Bool)

(declare-fun c!72905 () Bool)

(assert (=> b!638579 (= c!72905 (= lt!295395 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638579 (= e!365428 e!365426)))

(declare-fun b!638580 () Bool)

(assert (=> b!638580 (= e!365427 Undefined!6799)))

(assert (= (and d!90109 c!72904) b!638580))

(assert (= (and d!90109 (not c!72904)) b!638578))

(assert (= (and b!638578 c!72906) b!638577))

(assert (= (and b!638578 (not c!72906)) b!638579))

(assert (= (and b!638579 c!72905) b!638575))

(assert (= (and b!638579 (not c!72905)) b!638576))

(assert (=> b!638576 m!612577))

(assert (=> b!638576 m!612577))

(declare-fun m!612587 () Bool)

(assert (=> b!638576 m!612587))

(declare-fun m!612589 () Bool)

(assert (=> d!90109 m!612589))

(declare-fun m!612591 () Bool)

(assert (=> d!90109 m!612591))

(declare-fun m!612593 () Bool)

(assert (=> d!90109 m!612593))

(assert (=> d!90109 m!612423))

(assert (=> b!638432 d!90109))

(declare-fun d!90111 () Bool)

(declare-fun e!365446 () Bool)

(assert (=> d!90111 e!365446))

(declare-fun res!413515 () Bool)

(assert (=> d!90111 (=> (not res!413515) (not e!365446))))

(assert (=> d!90111 (= res!413515 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18716 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18716 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18716 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18716 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18716 a!2986))))))

(declare-fun lt!295408 () Unit!21554)

(declare-fun choose!9 (array!38267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21554)

(assert (=> d!90111 (= lt!295408 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90111 (validMask!0 mask!3053)))

(assert (=> d!90111 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 mask!3053) lt!295408)))

(declare-fun b!638601 () Bool)

(assert (=> b!638601 (= e!365446 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295326 vacantSpotIndex!68 (select (store (arr!18352 a!2986) i!1108 k0!1786) j!136) (array!38268 (store (arr!18352 a!2986) i!1108 k0!1786) (size!18716 a!2986)) mask!3053)))))

(assert (= (and d!90111 res!413515) b!638601))

(declare-fun m!612611 () Bool)

(assert (=> d!90111 m!612611))

(assert (=> d!90111 m!612423))

(assert (=> b!638601 m!612429))

(assert (=> b!638601 m!612463))

(assert (=> b!638601 m!612445))

(assert (=> b!638601 m!612455))

(declare-fun m!612613 () Bool)

(assert (=> b!638601 m!612613))

(assert (=> b!638601 m!612455))

(assert (=> b!638601 m!612429))

(assert (=> b!638432 d!90111))

(declare-fun d!90123 () Bool)

(declare-fun lt!295415 () (_ BitVec 32))

(assert (=> d!90123 (and (bvsge lt!295415 #b00000000000000000000000000000000) (bvslt lt!295415 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90123 (= lt!295415 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90123 (validMask!0 mask!3053)))

(assert (=> d!90123 (= (nextIndex!0 index!984 x!910 mask!3053) lt!295415)))

(declare-fun bs!19146 () Bool)

(assert (= bs!19146 d!90123))

(declare-fun m!612615 () Bool)

(assert (=> bs!19146 m!612615))

(assert (=> bs!19146 m!612423))

(assert (=> b!638432 d!90123))

(declare-fun d!90125 () Bool)

(declare-fun res!413516 () Bool)

(declare-fun e!365453 () Bool)

(assert (=> d!90125 (=> res!413516 e!365453)))

(assert (=> d!90125 (= res!413516 (= (select (arr!18352 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90125 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!365453)))

(declare-fun b!638614 () Bool)

(declare-fun e!365454 () Bool)

(assert (=> b!638614 (= e!365453 e!365454)))

(declare-fun res!413517 () Bool)

(assert (=> b!638614 (=> (not res!413517) (not e!365454))))

(assert (=> b!638614 (= res!413517 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18716 a!2986)))))

(declare-fun b!638615 () Bool)

(assert (=> b!638615 (= e!365454 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90125 (not res!413516)) b!638614))

(assert (= (and b!638614 res!413517) b!638615))

(assert (=> d!90125 m!612553))

(declare-fun m!612617 () Bool)

(assert (=> b!638615 m!612617))

(assert (=> b!638442 d!90125))

(declare-fun d!90127 () Bool)

(assert (=> d!90127 (= (validKeyInArray!0 (select (arr!18352 a!2986) j!136)) (and (not (= (select (arr!18352 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18352 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!638433 d!90127))

(declare-fun b!638616 () Bool)

(declare-fun e!365455 () SeekEntryResult!6799)

(assert (=> b!638616 (= e!365455 (MissingVacant!6799 vacantSpotIndex!68))))

(declare-fun b!638617 () Bool)

(assert (=> b!638617 (= e!365455 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638618 () Bool)

(declare-fun e!365457 () SeekEntryResult!6799)

(assert (=> b!638618 (= e!365457 (Found!6799 index!984))))

(declare-fun b!638619 () Bool)

(declare-fun e!365456 () SeekEntryResult!6799)

(assert (=> b!638619 (= e!365456 e!365457)))

(declare-fun c!72918 () Bool)

(declare-fun lt!295416 () (_ BitVec 64))

(assert (=> b!638619 (= c!72918 (= lt!295416 (select (arr!18352 a!2986) j!136)))))

(declare-fun d!90129 () Bool)

(declare-fun lt!295417 () SeekEntryResult!6799)

(assert (=> d!90129 (and (or ((_ is Undefined!6799) lt!295417) (not ((_ is Found!6799) lt!295417)) (and (bvsge (index!29510 lt!295417) #b00000000000000000000000000000000) (bvslt (index!29510 lt!295417) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295417) ((_ is Found!6799) lt!295417) (not ((_ is MissingVacant!6799) lt!295417)) (not (= (index!29512 lt!295417) vacantSpotIndex!68)) (and (bvsge (index!29512 lt!295417) #b00000000000000000000000000000000) (bvslt (index!29512 lt!295417) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295417) (ite ((_ is Found!6799) lt!295417) (= (select (arr!18352 a!2986) (index!29510 lt!295417)) (select (arr!18352 a!2986) j!136)) (and ((_ is MissingVacant!6799) lt!295417) (= (index!29512 lt!295417) vacantSpotIndex!68) (= (select (arr!18352 a!2986) (index!29512 lt!295417)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90129 (= lt!295417 e!365456)))

(declare-fun c!72916 () Bool)

(assert (=> d!90129 (= c!72916 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90129 (= lt!295416 (select (arr!18352 a!2986) index!984))))

(assert (=> d!90129 (validMask!0 mask!3053)))

(assert (=> d!90129 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18352 a!2986) j!136) a!2986 mask!3053) lt!295417)))

(declare-fun b!638620 () Bool)

(declare-fun c!72917 () Bool)

(assert (=> b!638620 (= c!72917 (= lt!295416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638620 (= e!365457 e!365455)))

(declare-fun b!638621 () Bool)

(assert (=> b!638621 (= e!365456 Undefined!6799)))

(assert (= (and d!90129 c!72916) b!638621))

(assert (= (and d!90129 (not c!72916)) b!638619))

(assert (= (and b!638619 c!72918) b!638618))

(assert (= (and b!638619 (not c!72918)) b!638620))

(assert (= (and b!638620 c!72917) b!638616))

(assert (= (and b!638620 (not c!72917)) b!638617))

(assert (=> b!638617 m!612453))

(assert (=> b!638617 m!612453))

(assert (=> b!638617 m!612429))

(declare-fun m!612619 () Bool)

(assert (=> b!638617 m!612619))

(declare-fun m!612621 () Bool)

(assert (=> d!90129 m!612621))

(declare-fun m!612625 () Bool)

(assert (=> d!90129 m!612625))

(assert (=> d!90129 m!612449))

(assert (=> d!90129 m!612423))

(assert (=> b!638435 d!90129))

(declare-fun b!638677 () Bool)

(declare-fun c!72945 () Bool)

(declare-fun lt!295443 () (_ BitVec 64))

(assert (=> b!638677 (= c!72945 (= lt!295443 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365489 () SeekEntryResult!6799)

(declare-fun e!365491 () SeekEntryResult!6799)

(assert (=> b!638677 (= e!365489 e!365491)))

(declare-fun d!90131 () Bool)

(declare-fun lt!295442 () SeekEntryResult!6799)

(assert (=> d!90131 (and (or ((_ is Undefined!6799) lt!295442) (not ((_ is Found!6799) lt!295442)) (and (bvsge (index!29510 lt!295442) #b00000000000000000000000000000000) (bvslt (index!29510 lt!295442) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295442) ((_ is Found!6799) lt!295442) (not ((_ is MissingZero!6799) lt!295442)) (and (bvsge (index!29509 lt!295442) #b00000000000000000000000000000000) (bvslt (index!29509 lt!295442) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295442) ((_ is Found!6799) lt!295442) ((_ is MissingZero!6799) lt!295442) (not ((_ is MissingVacant!6799) lt!295442)) (and (bvsge (index!29512 lt!295442) #b00000000000000000000000000000000) (bvslt (index!29512 lt!295442) (size!18716 a!2986)))) (or ((_ is Undefined!6799) lt!295442) (ite ((_ is Found!6799) lt!295442) (= (select (arr!18352 a!2986) (index!29510 lt!295442)) k0!1786) (ite ((_ is MissingZero!6799) lt!295442) (= (select (arr!18352 a!2986) (index!29509 lt!295442)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6799) lt!295442) (= (select (arr!18352 a!2986) (index!29512 lt!295442)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!365490 () SeekEntryResult!6799)

(assert (=> d!90131 (= lt!295442 e!365490)))

(declare-fun c!72943 () Bool)

(declare-fun lt!295444 () SeekEntryResult!6799)

(assert (=> d!90131 (= c!72943 (and ((_ is Intermediate!6799) lt!295444) (undefined!7611 lt!295444)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38267 (_ BitVec 32)) SeekEntryResult!6799)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90131 (= lt!295444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90131 (validMask!0 mask!3053)))

(assert (=> d!90131 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!295442)))

(declare-fun b!638678 () Bool)

(assert (=> b!638678 (= e!365489 (Found!6799 (index!29511 lt!295444)))))

(declare-fun b!638679 () Bool)

(assert (=> b!638679 (= e!365490 Undefined!6799)))

(declare-fun b!638680 () Bool)

(assert (=> b!638680 (= e!365491 (MissingZero!6799 (index!29511 lt!295444)))))

(declare-fun b!638681 () Bool)

(assert (=> b!638681 (= e!365491 (seekKeyOrZeroReturnVacant!0 (x!58290 lt!295444) (index!29511 lt!295444) (index!29511 lt!295444) k0!1786 a!2986 mask!3053))))

(declare-fun b!638682 () Bool)

(assert (=> b!638682 (= e!365490 e!365489)))

(assert (=> b!638682 (= lt!295443 (select (arr!18352 a!2986) (index!29511 lt!295444)))))

(declare-fun c!72944 () Bool)

(assert (=> b!638682 (= c!72944 (= lt!295443 k0!1786))))

(assert (= (and d!90131 c!72943) b!638679))

(assert (= (and d!90131 (not c!72943)) b!638682))

(assert (= (and b!638682 c!72944) b!638678))

(assert (= (and b!638682 (not c!72944)) b!638677))

(assert (= (and b!638677 c!72945) b!638680))

(assert (= (and b!638677 (not c!72945)) b!638681))

(declare-fun m!612669 () Bool)

(assert (=> d!90131 m!612669))

(declare-fun m!612671 () Bool)

(assert (=> d!90131 m!612671))

(assert (=> d!90131 m!612423))

(declare-fun m!612677 () Bool)

(assert (=> d!90131 m!612677))

(declare-fun m!612679 () Bool)

(assert (=> d!90131 m!612679))

(assert (=> d!90131 m!612677))

(declare-fun m!612683 () Bool)

(assert (=> d!90131 m!612683))

(declare-fun m!612685 () Bool)

(assert (=> b!638681 m!612685))

(declare-fun m!612687 () Bool)

(assert (=> b!638682 m!612687))

(assert (=> b!638445 d!90131))

(declare-fun d!90155 () Bool)

(declare-fun res!413529 () Bool)

(declare-fun e!365499 () Bool)

(assert (=> d!90155 (=> res!413529 e!365499)))

(assert (=> d!90155 (= res!413529 (= (select (arr!18352 lt!295327) index!984) (select (arr!18352 a!2986) j!136)))))

(assert (=> d!90155 (= (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) index!984) e!365499)))

(declare-fun b!638693 () Bool)

(declare-fun e!365500 () Bool)

(assert (=> b!638693 (= e!365499 e!365500)))

(declare-fun res!413530 () Bool)

(assert (=> b!638693 (=> (not res!413530) (not e!365500))))

(assert (=> b!638693 (= res!413530 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18716 lt!295327)))))

(declare-fun b!638694 () Bool)

(assert (=> b!638694 (= e!365500 (arrayContainsKey!0 lt!295327 (select (arr!18352 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90155 (not res!413529)) b!638693))

(assert (= (and b!638693 res!413530) b!638694))

(assert (=> d!90155 m!612575))

(assert (=> b!638694 m!612429))

(declare-fun m!612693 () Bool)

(assert (=> b!638694 m!612693))

(assert (=> b!638436 d!90155))

(declare-fun d!90159 () Bool)

(assert (=> d!90159 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!638446 d!90159))

(declare-fun d!90161 () Bool)

(assert (=> d!90161 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57740 d!90161))

(declare-fun d!90165 () Bool)

(assert (=> d!90165 (= (array_inv!14126 a!2986) (bvsge (size!18716 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57740 d!90165))

(check-sat (not b!638538) (not b!638615) (not b!638550) (not b!638513) (not d!90123) (not b!638564) (not b!638528) (not b!638534) (not b!638533) (not d!90129) (not d!90109) (not b!638601) (not b!638617) (not b!638536) (not bm!33464) (not b!638681) (not b!638570) (not d!90093) (not b!638531) (not d!90111) (not bm!33468) (not d!90097) (not d!90131) (not b!638526) (not d!90103) (not b!638576) (not bm!33465) (not d!90105) (not b!638524) (not b!638694) (not b!638549))
(check-sat)
