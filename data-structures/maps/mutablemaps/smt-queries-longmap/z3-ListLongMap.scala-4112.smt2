; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56180 () Bool)

(assert start!56180)

(declare-fun b!621471 () Bool)

(declare-fun e!356463 () Bool)

(declare-fun e!356465 () Bool)

(assert (=> b!621471 (= e!356463 e!356465)))

(declare-fun res!400593 () Bool)

(assert (=> b!621471 (=> (not res!400593) (not e!356465))))

(declare-datatypes ((SeekEntryResult!6496 0))(
  ( (MissingZero!6496 (index!28267 (_ BitVec 32))) (Found!6496 (index!28268 (_ BitVec 32))) (Intermediate!6496 (undefined!7308 Bool) (index!28269 (_ BitVec 32)) (x!57065 (_ BitVec 32))) (Undefined!6496) (MissingVacant!6496 (index!28270 (_ BitVec 32))) )
))
(declare-fun lt!287725 () SeekEntryResult!6496)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!621471 (= res!400593 (or (= lt!287725 (MissingZero!6496 i!1108)) (= lt!287725 (MissingVacant!6496 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37613 0))(
  ( (array!37614 (arr!18049 (Array (_ BitVec 32) (_ BitVec 64))) (size!18413 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37613)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37613 (_ BitVec 32)) SeekEntryResult!6496)

(assert (=> b!621471 (= lt!287725 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!621472 () Bool)

(declare-datatypes ((Unit!20780 0))(
  ( (Unit!20781) )
))
(declare-fun e!356456 () Unit!20780)

(declare-fun Unit!20782 () Unit!20780)

(assert (=> b!621472 (= e!356456 Unit!20782)))

(declare-fun b!621473 () Bool)

(declare-fun e!356462 () Unit!20780)

(declare-fun Unit!20783 () Unit!20780)

(assert (=> b!621473 (= e!356462 Unit!20783)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!400598 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621473 (= res!400598 (= (select (store (arr!18049 a!2986) i!1108 k0!1786) index!984) (select (arr!18049 a!2986) j!136)))))

(declare-fun e!356460 () Bool)

(assert (=> b!621473 (=> (not res!400598) (not e!356460))))

(assert (=> b!621473 e!356460))

(declare-fun c!70811 () Bool)

(assert (=> b!621473 (= c!70811 (bvslt j!136 index!984))))

(declare-fun lt!287720 () Unit!20780)

(assert (=> b!621473 (= lt!287720 e!356456)))

(declare-fun c!70808 () Bool)

(assert (=> b!621473 (= c!70808 (bvslt index!984 j!136))))

(declare-fun lt!287717 () Unit!20780)

(declare-fun e!356461 () Unit!20780)

(assert (=> b!621473 (= lt!287717 e!356461)))

(assert (=> b!621473 false))

(declare-fun b!621474 () Bool)

(declare-fun res!400595 () Bool)

(assert (=> b!621474 (=> (not res!400595) (not e!356463))))

(assert (=> b!621474 (= res!400595 (and (= (size!18413 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18413 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18413 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621475 () Bool)

(assert (=> b!621475 false))

(declare-fun lt!287726 () Unit!20780)

(declare-fun lt!287736 () array!37613)

(declare-datatypes ((List!12143 0))(
  ( (Nil!12140) (Cons!12139 (h!13184 (_ BitVec 64)) (t!18379 List!12143)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37613 (_ BitVec 64) (_ BitVec 32) List!12143) Unit!20780)

(assert (=> b!621475 (= lt!287726 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287736 (select (arr!18049 a!2986) j!136) j!136 Nil!12140))))

(declare-fun arrayNoDuplicates!0 (array!37613 (_ BitVec 32) List!12143) Bool)

(assert (=> b!621475 (arrayNoDuplicates!0 lt!287736 j!136 Nil!12140)))

(declare-fun lt!287727 () Unit!20780)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37613 (_ BitVec 32) (_ BitVec 32)) Unit!20780)

(assert (=> b!621475 (= lt!287727 (lemmaNoDuplicateFromThenFromBigger!0 lt!287736 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621475 (arrayNoDuplicates!0 lt!287736 #b00000000000000000000000000000000 Nil!12140)))

(declare-fun lt!287732 () Unit!20780)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37613 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12143) Unit!20780)

(assert (=> b!621475 (= lt!287732 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12140))))

(declare-fun arrayContainsKey!0 (array!37613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621475 (arrayContainsKey!0 lt!287736 (select (arr!18049 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287724 () Unit!20780)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37613 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20780)

(assert (=> b!621475 (= lt!287724 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287736 (select (arr!18049 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20784 () Unit!20780)

(assert (=> b!621475 (= e!356456 Unit!20784)))

(declare-fun b!621476 () Bool)

(declare-fun res!400590 () Bool)

(assert (=> b!621476 (=> (not res!400590) (not e!356465))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!621476 (= res!400590 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18049 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621477 () Bool)

(declare-fun res!400602 () Bool)

(assert (=> b!621477 (=> (not res!400602) (not e!356463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621477 (= res!400602 (validKeyInArray!0 k0!1786))))

(declare-fun b!621478 () Bool)

(declare-fun e!356455 () Bool)

(assert (=> b!621478 (= e!356455 (not true))))

(declare-fun lt!287722 () Unit!20780)

(assert (=> b!621478 (= lt!287722 e!356462)))

(declare-fun c!70810 () Bool)

(declare-fun lt!287734 () SeekEntryResult!6496)

(assert (=> b!621478 (= c!70810 (= lt!287734 (Found!6496 index!984)))))

(declare-fun lt!287723 () Unit!20780)

(declare-fun e!356458 () Unit!20780)

(assert (=> b!621478 (= lt!287723 e!356458)))

(declare-fun c!70809 () Bool)

(assert (=> b!621478 (= c!70809 (= lt!287734 Undefined!6496))))

(declare-fun lt!287730 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37613 (_ BitVec 32)) SeekEntryResult!6496)

(assert (=> b!621478 (= lt!287734 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287730 lt!287736 mask!3053))))

(declare-fun e!356457 () Bool)

(assert (=> b!621478 e!356457))

(declare-fun res!400601 () Bool)

(assert (=> b!621478 (=> (not res!400601) (not e!356457))))

(declare-fun lt!287728 () (_ BitVec 32))

(declare-fun lt!287721 () SeekEntryResult!6496)

(assert (=> b!621478 (= res!400601 (= lt!287721 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287728 vacantSpotIndex!68 lt!287730 lt!287736 mask!3053)))))

(assert (=> b!621478 (= lt!287721 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287728 vacantSpotIndex!68 (select (arr!18049 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621478 (= lt!287730 (select (store (arr!18049 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!287719 () Unit!20780)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20780)

(assert (=> b!621478 (= lt!287719 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287728 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621478 (= lt!287728 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621479 () Bool)

(declare-fun res!400599 () Bool)

(assert (=> b!621479 (=> (not res!400599) (not e!356463))))

(assert (=> b!621479 (= res!400599 (validKeyInArray!0 (select (arr!18049 a!2986) j!136)))))

(declare-fun b!621480 () Bool)

(declare-fun Unit!20785 () Unit!20780)

(assert (=> b!621480 (= e!356458 Unit!20785)))

(declare-fun b!621481 () Bool)

(declare-fun res!400604 () Bool)

(assert (=> b!621481 (= res!400604 (arrayContainsKey!0 lt!287736 (select (arr!18049 a!2986) j!136) j!136))))

(declare-fun e!356466 () Bool)

(assert (=> b!621481 (=> (not res!400604) (not e!356466))))

(declare-fun e!356467 () Bool)

(assert (=> b!621481 (= e!356467 e!356466)))

(declare-fun b!621482 () Bool)

(declare-fun e!356454 () Bool)

(assert (=> b!621482 (= e!356454 (arrayContainsKey!0 lt!287736 (select (arr!18049 a!2986) j!136) index!984))))

(declare-fun b!621483 () Bool)

(declare-fun Unit!20786 () Unit!20780)

(assert (=> b!621483 (= e!356461 Unit!20786)))

(declare-fun res!400594 () Bool)

(assert (=> start!56180 (=> (not res!400594) (not e!356463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56180 (= res!400594 (validMask!0 mask!3053))))

(assert (=> start!56180 e!356463))

(assert (=> start!56180 true))

(declare-fun array_inv!13823 (array!37613) Bool)

(assert (=> start!56180 (array_inv!13823 a!2986)))

(declare-fun b!621484 () Bool)

(assert (=> b!621484 (= e!356466 (arrayContainsKey!0 lt!287736 (select (arr!18049 a!2986) j!136) index!984))))

(declare-fun b!621485 () Bool)

(declare-fun res!400597 () Bool)

(assert (=> b!621485 (=> (not res!400597) (not e!356463))))

(assert (=> b!621485 (= res!400597 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621486 () Bool)

(declare-fun res!400600 () Bool)

(assert (=> b!621486 (= res!400600 (bvsge j!136 index!984))))

(assert (=> b!621486 (=> res!400600 e!356467)))

(assert (=> b!621486 (= e!356460 e!356467)))

(declare-fun b!621487 () Bool)

(assert (=> b!621487 false))

(declare-fun lt!287731 () Unit!20780)

(assert (=> b!621487 (= lt!287731 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287736 (select (arr!18049 a!2986) j!136) index!984 Nil!12140))))

(assert (=> b!621487 (arrayNoDuplicates!0 lt!287736 index!984 Nil!12140)))

(declare-fun lt!287718 () Unit!20780)

(assert (=> b!621487 (= lt!287718 (lemmaNoDuplicateFromThenFromBigger!0 lt!287736 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621487 (arrayNoDuplicates!0 lt!287736 #b00000000000000000000000000000000 Nil!12140)))

(declare-fun lt!287735 () Unit!20780)

(assert (=> b!621487 (= lt!287735 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12140))))

(assert (=> b!621487 (arrayContainsKey!0 lt!287736 (select (arr!18049 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287729 () Unit!20780)

(assert (=> b!621487 (= lt!287729 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287736 (select (arr!18049 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!621487 e!356454))

(declare-fun res!400589 () Bool)

(assert (=> b!621487 (=> (not res!400589) (not e!356454))))

(assert (=> b!621487 (= res!400589 (arrayContainsKey!0 lt!287736 (select (arr!18049 a!2986) j!136) j!136))))

(declare-fun Unit!20787 () Unit!20780)

(assert (=> b!621487 (= e!356461 Unit!20787)))

(declare-fun b!621488 () Bool)

(declare-fun res!400596 () Bool)

(assert (=> b!621488 (=> (not res!400596) (not e!356465))))

(assert (=> b!621488 (= res!400596 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12140))))

(declare-fun b!621489 () Bool)

(declare-fun lt!287733 () SeekEntryResult!6496)

(assert (=> b!621489 (= e!356457 (= lt!287733 lt!287721))))

(declare-fun b!621490 () Bool)

(declare-fun Unit!20788 () Unit!20780)

(assert (=> b!621490 (= e!356462 Unit!20788)))

(declare-fun b!621491 () Bool)

(declare-fun e!356459 () Bool)

(assert (=> b!621491 (= e!356459 e!356455)))

(declare-fun res!400592 () Bool)

(assert (=> b!621491 (=> (not res!400592) (not e!356455))))

(assert (=> b!621491 (= res!400592 (and (= lt!287733 (Found!6496 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18049 a!2986) index!984) (select (arr!18049 a!2986) j!136))) (not (= (select (arr!18049 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621491 (= lt!287733 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18049 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621492 () Bool)

(declare-fun Unit!20789 () Unit!20780)

(assert (=> b!621492 (= e!356458 Unit!20789)))

(assert (=> b!621492 false))

(declare-fun b!621493 () Bool)

(declare-fun res!400603 () Bool)

(assert (=> b!621493 (=> (not res!400603) (not e!356465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37613 (_ BitVec 32)) Bool)

(assert (=> b!621493 (= res!400603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621494 () Bool)

(assert (=> b!621494 (= e!356465 e!356459)))

(declare-fun res!400591 () Bool)

(assert (=> b!621494 (=> (not res!400591) (not e!356459))))

(assert (=> b!621494 (= res!400591 (= (select (store (arr!18049 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621494 (= lt!287736 (array!37614 (store (arr!18049 a!2986) i!1108 k0!1786) (size!18413 a!2986)))))

(assert (= (and start!56180 res!400594) b!621474))

(assert (= (and b!621474 res!400595) b!621479))

(assert (= (and b!621479 res!400599) b!621477))

(assert (= (and b!621477 res!400602) b!621485))

(assert (= (and b!621485 res!400597) b!621471))

(assert (= (and b!621471 res!400593) b!621493))

(assert (= (and b!621493 res!400603) b!621488))

(assert (= (and b!621488 res!400596) b!621476))

(assert (= (and b!621476 res!400590) b!621494))

(assert (= (and b!621494 res!400591) b!621491))

(assert (= (and b!621491 res!400592) b!621478))

(assert (= (and b!621478 res!400601) b!621489))

(assert (= (and b!621478 c!70809) b!621492))

(assert (= (and b!621478 (not c!70809)) b!621480))

(assert (= (and b!621478 c!70810) b!621473))

(assert (= (and b!621478 (not c!70810)) b!621490))

(assert (= (and b!621473 res!400598) b!621486))

(assert (= (and b!621486 (not res!400600)) b!621481))

(assert (= (and b!621481 res!400604) b!621484))

(assert (= (and b!621473 c!70811) b!621475))

(assert (= (and b!621473 (not c!70811)) b!621472))

(assert (= (and b!621473 c!70808) b!621487))

(assert (= (and b!621473 (not c!70808)) b!621483))

(assert (= (and b!621487 res!400589) b!621482))

(declare-fun m!597409 () Bool)

(assert (=> b!621493 m!597409))

(declare-fun m!597411 () Bool)

(assert (=> b!621487 m!597411))

(assert (=> b!621487 m!597411))

(declare-fun m!597413 () Bool)

(assert (=> b!621487 m!597413))

(declare-fun m!597415 () Bool)

(assert (=> b!621487 m!597415))

(declare-fun m!597417 () Bool)

(assert (=> b!621487 m!597417))

(declare-fun m!597419 () Bool)

(assert (=> b!621487 m!597419))

(assert (=> b!621487 m!597411))

(declare-fun m!597421 () Bool)

(assert (=> b!621487 m!597421))

(declare-fun m!597423 () Bool)

(assert (=> b!621487 m!597423))

(assert (=> b!621487 m!597411))

(declare-fun m!597425 () Bool)

(assert (=> b!621487 m!597425))

(assert (=> b!621487 m!597411))

(declare-fun m!597427 () Bool)

(assert (=> b!621487 m!597427))

(declare-fun m!597429 () Bool)

(assert (=> b!621494 m!597429))

(declare-fun m!597431 () Bool)

(assert (=> b!621494 m!597431))

(declare-fun m!597433 () Bool)

(assert (=> start!56180 m!597433))

(declare-fun m!597435 () Bool)

(assert (=> start!56180 m!597435))

(declare-fun m!597437 () Bool)

(assert (=> b!621491 m!597437))

(assert (=> b!621491 m!597411))

(assert (=> b!621491 m!597411))

(declare-fun m!597439 () Bool)

(assert (=> b!621491 m!597439))

(declare-fun m!597441 () Bool)

(assert (=> b!621488 m!597441))

(assert (=> b!621481 m!597411))

(assert (=> b!621481 m!597411))

(assert (=> b!621481 m!597427))

(assert (=> b!621482 m!597411))

(assert (=> b!621482 m!597411))

(declare-fun m!597443 () Bool)

(assert (=> b!621482 m!597443))

(declare-fun m!597445 () Bool)

(assert (=> b!621476 m!597445))

(assert (=> b!621473 m!597429))

(declare-fun m!597447 () Bool)

(assert (=> b!621473 m!597447))

(assert (=> b!621473 m!597411))

(declare-fun m!597449 () Bool)

(assert (=> b!621478 m!597449))

(assert (=> b!621478 m!597411))

(assert (=> b!621478 m!597411))

(declare-fun m!597451 () Bool)

(assert (=> b!621478 m!597451))

(declare-fun m!597453 () Bool)

(assert (=> b!621478 m!597453))

(declare-fun m!597455 () Bool)

(assert (=> b!621478 m!597455))

(declare-fun m!597457 () Bool)

(assert (=> b!621478 m!597457))

(declare-fun m!597459 () Bool)

(assert (=> b!621478 m!597459))

(assert (=> b!621478 m!597429))

(assert (=> b!621484 m!597411))

(assert (=> b!621484 m!597411))

(assert (=> b!621484 m!597443))

(declare-fun m!597461 () Bool)

(assert (=> b!621485 m!597461))

(assert (=> b!621479 m!597411))

(assert (=> b!621479 m!597411))

(declare-fun m!597463 () Bool)

(assert (=> b!621479 m!597463))

(declare-fun m!597465 () Bool)

(assert (=> b!621475 m!597465))

(assert (=> b!621475 m!597411))

(declare-fun m!597467 () Bool)

(assert (=> b!621475 m!597467))

(assert (=> b!621475 m!597411))

(declare-fun m!597469 () Bool)

(assert (=> b!621475 m!597469))

(assert (=> b!621475 m!597411))

(declare-fun m!597471 () Bool)

(assert (=> b!621475 m!597471))

(assert (=> b!621475 m!597417))

(assert (=> b!621475 m!597411))

(declare-fun m!597473 () Bool)

(assert (=> b!621475 m!597473))

(assert (=> b!621475 m!597423))

(declare-fun m!597475 () Bool)

(assert (=> b!621477 m!597475))

(declare-fun m!597477 () Bool)

(assert (=> b!621471 m!597477))

(check-sat (not start!56180) (not b!621475) (not b!621491) (not b!621478) (not b!621484) (not b!621477) (not b!621487) (not b!621488) (not b!621471) (not b!621479) (not b!621481) (not b!621485) (not b!621482) (not b!621493))
(check-sat)
