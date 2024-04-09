; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57710 () Bool)

(assert start!57710)

(declare-fun b!637453 () Bool)

(declare-fun e!364761 () Bool)

(declare-datatypes ((SeekEntryResult!6784 0))(
  ( (MissingZero!6784 (index!29449 (_ BitVec 32))) (Found!6784 (index!29450 (_ BitVec 32))) (Intermediate!6784 (undefined!7596 Bool) (index!29451 (_ BitVec 32)) (x!58235 (_ BitVec 32))) (Undefined!6784) (MissingVacant!6784 (index!29452 (_ BitVec 32))) )
))
(declare-fun lt!294793 () SeekEntryResult!6784)

(declare-fun lt!294791 () SeekEntryResult!6784)

(assert (=> b!637453 (= e!364761 (= lt!294793 lt!294791))))

(declare-fun b!637454 () Bool)

(declare-fun res!412525 () Bool)

(declare-fun e!364766 () Bool)

(assert (=> b!637454 (=> (not res!412525) (not e!364766))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38237 0))(
  ( (array!38238 (arr!18337 (Array (_ BitVec 32) (_ BitVec 64))) (size!18701 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38237)

(assert (=> b!637454 (= res!412525 (and (= (size!18701 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18701 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18701 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!294784 () array!38237)

(declare-fun b!637456 () Bool)

(declare-fun e!364759 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637456 (= e!364759 (arrayContainsKey!0 lt!294784 (select (arr!18337 a!2986) j!136) index!984))))

(declare-fun b!637457 () Bool)

(declare-fun res!412519 () Bool)

(assert (=> b!637457 (=> (not res!412519) (not e!364766))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637457 (= res!412519 (validKeyInArray!0 k0!1786))))

(declare-fun b!637458 () Bool)

(declare-fun e!364760 () Bool)

(declare-fun e!364767 () Bool)

(assert (=> b!637458 (= e!364760 e!364767)))

(declare-fun res!412528 () Bool)

(assert (=> b!637458 (=> res!412528 e!364767)))

(declare-fun lt!294785 () (_ BitVec 64))

(declare-fun lt!294789 () (_ BitVec 64))

(assert (=> b!637458 (= res!412528 (or (not (= (select (arr!18337 a!2986) j!136) lt!294789)) (not (= (select (arr!18337 a!2986) j!136) lt!294785)) (bvsge j!136 index!984)))))

(declare-fun e!364762 () Bool)

(assert (=> b!637458 e!364762))

(declare-fun res!412534 () Bool)

(assert (=> b!637458 (=> (not res!412534) (not e!364762))))

(assert (=> b!637458 (= res!412534 (= lt!294785 (select (arr!18337 a!2986) j!136)))))

(assert (=> b!637458 (= lt!294785 (select (store (arr!18337 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!637459 () Bool)

(declare-fun e!364770 () Bool)

(assert (=> b!637459 (= e!364770 true)))

(declare-fun lt!294787 () Bool)

(declare-datatypes ((List!12431 0))(
  ( (Nil!12428) (Cons!12427 (h!13472 (_ BitVec 64)) (t!18667 List!12431)) )
))
(declare-fun contains!3114 (List!12431 (_ BitVec 64)) Bool)

(assert (=> b!637459 (= lt!294787 (contains!3114 Nil!12428 k0!1786))))

(declare-fun b!637460 () Bool)

(declare-fun e!364765 () Bool)

(assert (=> b!637460 (= e!364762 e!364765)))

(declare-fun res!412516 () Bool)

(assert (=> b!637460 (=> res!412516 e!364765)))

(assert (=> b!637460 (= res!412516 (or (not (= (select (arr!18337 a!2986) j!136) lt!294789)) (not (= (select (arr!18337 a!2986) j!136) lt!294785)) (bvsge j!136 index!984)))))

(declare-fun b!637461 () Bool)

(declare-fun res!412535 () Bool)

(assert (=> b!637461 (=> (not res!412535) (not e!364766))))

(assert (=> b!637461 (= res!412535 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637462 () Bool)

(declare-fun e!364771 () Bool)

(assert (=> b!637462 (= e!364766 e!364771)))

(declare-fun res!412531 () Bool)

(assert (=> b!637462 (=> (not res!412531) (not e!364771))))

(declare-fun lt!294794 () SeekEntryResult!6784)

(assert (=> b!637462 (= res!412531 (or (= lt!294794 (MissingZero!6784 i!1108)) (= lt!294794 (MissingVacant!6784 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38237 (_ BitVec 32)) SeekEntryResult!6784)

(assert (=> b!637462 (= lt!294794 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!637463 () Bool)

(declare-fun res!412517 () Bool)

(assert (=> b!637463 (=> res!412517 e!364770)))

(assert (=> b!637463 (= res!412517 (contains!3114 Nil!12428 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637464 () Bool)

(declare-fun res!412521 () Bool)

(assert (=> b!637464 (=> (not res!412521) (not e!364771))))

(declare-fun arrayNoDuplicates!0 (array!38237 (_ BitVec 32) List!12431) Bool)

(assert (=> b!637464 (= res!412521 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12428))))

(declare-fun b!637465 () Bool)

(declare-fun res!412515 () Bool)

(assert (=> b!637465 (=> (not res!412515) (not e!364771))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!637465 (= res!412515 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18337 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637466 () Bool)

(declare-fun e!364763 () Bool)

(assert (=> b!637466 (= e!364771 e!364763)))

(declare-fun res!412532 () Bool)

(assert (=> b!637466 (=> (not res!412532) (not e!364763))))

(assert (=> b!637466 (= res!412532 (= (select (store (arr!18337 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637466 (= lt!294784 (array!38238 (store (arr!18337 a!2986) i!1108 k0!1786) (size!18701 a!2986)))))

(declare-fun res!412523 () Bool)

(assert (=> start!57710 (=> (not res!412523) (not e!364766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57710 (= res!412523 (validMask!0 mask!3053))))

(assert (=> start!57710 e!364766))

(assert (=> start!57710 true))

(declare-fun array_inv!14111 (array!38237) Bool)

(assert (=> start!57710 (array_inv!14111 a!2986)))

(declare-fun b!637455 () Bool)

(assert (=> b!637455 (= e!364765 e!364759)))

(declare-fun res!412518 () Bool)

(assert (=> b!637455 (=> (not res!412518) (not e!364759))))

(assert (=> b!637455 (= res!412518 (arrayContainsKey!0 lt!294784 (select (arr!18337 a!2986) j!136) j!136))))

(declare-fun b!637467 () Bool)

(assert (=> b!637467 (= e!364767 e!364770)))

(declare-fun res!412522 () Bool)

(assert (=> b!637467 (=> res!412522 e!364770)))

(assert (=> b!637467 (= res!412522 (or (bvsge (size!18701 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18701 a!2986))))))

(assert (=> b!637467 (arrayContainsKey!0 lt!294784 (select (arr!18337 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21494 0))(
  ( (Unit!21495) )
))
(declare-fun lt!294786 () Unit!21494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38237 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21494)

(assert (=> b!637467 (= lt!294786 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294784 (select (arr!18337 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637468 () Bool)

(declare-fun e!364764 () Unit!21494)

(declare-fun Unit!21496 () Unit!21494)

(assert (=> b!637468 (= e!364764 Unit!21496)))

(assert (=> b!637468 false))

(declare-fun b!637469 () Bool)

(declare-fun res!412524 () Bool)

(assert (=> b!637469 (=> (not res!412524) (not e!364771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38237 (_ BitVec 32)) Bool)

(assert (=> b!637469 (= res!412524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637470 () Bool)

(declare-fun res!412529 () Bool)

(assert (=> b!637470 (=> (not res!412529) (not e!364766))))

(assert (=> b!637470 (= res!412529 (validKeyInArray!0 (select (arr!18337 a!2986) j!136)))))

(declare-fun b!637471 () Bool)

(declare-fun res!412520 () Bool)

(assert (=> b!637471 (=> res!412520 e!364770)))

(assert (=> b!637471 (= res!412520 (contains!3114 Nil!12428 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637472 () Bool)

(declare-fun e!364768 () Bool)

(assert (=> b!637472 (= e!364768 (not e!364760))))

(declare-fun res!412533 () Bool)

(assert (=> b!637472 (=> res!412533 e!364760)))

(declare-fun lt!294788 () SeekEntryResult!6784)

(assert (=> b!637472 (= res!412533 (not (= lt!294788 (Found!6784 index!984))))))

(declare-fun lt!294795 () Unit!21494)

(assert (=> b!637472 (= lt!294795 e!364764)))

(declare-fun c!72836 () Bool)

(assert (=> b!637472 (= c!72836 (= lt!294788 Undefined!6784))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38237 (_ BitVec 32)) SeekEntryResult!6784)

(assert (=> b!637472 (= lt!294788 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294789 lt!294784 mask!3053))))

(assert (=> b!637472 e!364761))

(declare-fun res!412526 () Bool)

(assert (=> b!637472 (=> (not res!412526) (not e!364761))))

(declare-fun lt!294792 () (_ BitVec 32))

(assert (=> b!637472 (= res!412526 (= lt!294791 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294792 vacantSpotIndex!68 lt!294789 lt!294784 mask!3053)))))

(assert (=> b!637472 (= lt!294791 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294792 vacantSpotIndex!68 (select (arr!18337 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637472 (= lt!294789 (select (store (arr!18337 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!294790 () Unit!21494)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21494)

(assert (=> b!637472 (= lt!294790 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294792 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637472 (= lt!294792 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637473 () Bool)

(declare-fun res!412527 () Bool)

(assert (=> b!637473 (=> res!412527 e!364770)))

(declare-fun noDuplicate!389 (List!12431) Bool)

(assert (=> b!637473 (= res!412527 (not (noDuplicate!389 Nil!12428)))))

(declare-fun b!637474 () Bool)

(assert (=> b!637474 (= e!364763 e!364768)))

(declare-fun res!412530 () Bool)

(assert (=> b!637474 (=> (not res!412530) (not e!364768))))

(assert (=> b!637474 (= res!412530 (and (= lt!294793 (Found!6784 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18337 a!2986) index!984) (select (arr!18337 a!2986) j!136))) (not (= (select (arr!18337 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637474 (= lt!294793 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18337 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637475 () Bool)

(declare-fun Unit!21497 () Unit!21494)

(assert (=> b!637475 (= e!364764 Unit!21497)))

(assert (= (and start!57710 res!412523) b!637454))

(assert (= (and b!637454 res!412525) b!637470))

(assert (= (and b!637470 res!412529) b!637457))

(assert (= (and b!637457 res!412519) b!637461))

(assert (= (and b!637461 res!412535) b!637462))

(assert (= (and b!637462 res!412531) b!637469))

(assert (= (and b!637469 res!412524) b!637464))

(assert (= (and b!637464 res!412521) b!637465))

(assert (= (and b!637465 res!412515) b!637466))

(assert (= (and b!637466 res!412532) b!637474))

(assert (= (and b!637474 res!412530) b!637472))

(assert (= (and b!637472 res!412526) b!637453))

(assert (= (and b!637472 c!72836) b!637468))

(assert (= (and b!637472 (not c!72836)) b!637475))

(assert (= (and b!637472 (not res!412533)) b!637458))

(assert (= (and b!637458 res!412534) b!637460))

(assert (= (and b!637460 (not res!412516)) b!637455))

(assert (= (and b!637455 res!412518) b!637456))

(assert (= (and b!637458 (not res!412528)) b!637467))

(assert (= (and b!637467 (not res!412522)) b!637473))

(assert (= (and b!637473 (not res!412527)) b!637463))

(assert (= (and b!637463 (not res!412517)) b!637471))

(assert (= (and b!637471 (not res!412520)) b!637459))

(declare-fun m!611569 () Bool)

(assert (=> b!637460 m!611569))

(declare-fun m!611571 () Bool)

(assert (=> b!637473 m!611571))

(declare-fun m!611573 () Bool)

(assert (=> b!637465 m!611573))

(assert (=> b!637458 m!611569))

(declare-fun m!611575 () Bool)

(assert (=> b!637458 m!611575))

(declare-fun m!611577 () Bool)

(assert (=> b!637458 m!611577))

(declare-fun m!611579 () Bool)

(assert (=> b!637469 m!611579))

(assert (=> b!637467 m!611569))

(assert (=> b!637467 m!611569))

(declare-fun m!611581 () Bool)

(assert (=> b!637467 m!611581))

(assert (=> b!637467 m!611569))

(declare-fun m!611583 () Bool)

(assert (=> b!637467 m!611583))

(declare-fun m!611585 () Bool)

(assert (=> b!637457 m!611585))

(assert (=> b!637470 m!611569))

(assert (=> b!637470 m!611569))

(declare-fun m!611587 () Bool)

(assert (=> b!637470 m!611587))

(declare-fun m!611589 () Bool)

(assert (=> b!637471 m!611589))

(declare-fun m!611591 () Bool)

(assert (=> b!637459 m!611591))

(declare-fun m!611593 () Bool)

(assert (=> b!637464 m!611593))

(assert (=> b!637456 m!611569))

(assert (=> b!637456 m!611569))

(declare-fun m!611595 () Bool)

(assert (=> b!637456 m!611595))

(declare-fun m!611597 () Bool)

(assert (=> b!637462 m!611597))

(declare-fun m!611599 () Bool)

(assert (=> start!57710 m!611599))

(declare-fun m!611601 () Bool)

(assert (=> start!57710 m!611601))

(assert (=> b!637466 m!611575))

(declare-fun m!611603 () Bool)

(assert (=> b!637466 m!611603))

(declare-fun m!611605 () Bool)

(assert (=> b!637472 m!611605))

(declare-fun m!611607 () Bool)

(assert (=> b!637472 m!611607))

(assert (=> b!637472 m!611569))

(assert (=> b!637472 m!611575))

(declare-fun m!611609 () Bool)

(assert (=> b!637472 m!611609))

(declare-fun m!611611 () Bool)

(assert (=> b!637472 m!611611))

(declare-fun m!611613 () Bool)

(assert (=> b!637472 m!611613))

(assert (=> b!637472 m!611569))

(declare-fun m!611615 () Bool)

(assert (=> b!637472 m!611615))

(declare-fun m!611617 () Bool)

(assert (=> b!637474 m!611617))

(assert (=> b!637474 m!611569))

(assert (=> b!637474 m!611569))

(declare-fun m!611619 () Bool)

(assert (=> b!637474 m!611619))

(declare-fun m!611621 () Bool)

(assert (=> b!637461 m!611621))

(assert (=> b!637455 m!611569))

(assert (=> b!637455 m!611569))

(declare-fun m!611623 () Bool)

(assert (=> b!637455 m!611623))

(declare-fun m!611625 () Bool)

(assert (=> b!637463 m!611625))

(check-sat (not start!57710) (not b!637459) (not b!637456) (not b!637472) (not b!637461) (not b!637464) (not b!637463) (not b!637469) (not b!637455) (not b!637470) (not b!637462) (not b!637471) (not b!637473) (not b!637457) (not b!637467) (not b!637474))
(check-sat)
