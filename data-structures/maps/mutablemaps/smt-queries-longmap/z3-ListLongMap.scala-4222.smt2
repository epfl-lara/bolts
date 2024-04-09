; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57944 () Bool)

(assert start!57944)

(declare-fun b!640610 () Bool)

(declare-fun res!415007 () Bool)

(declare-fun e!366738 () Bool)

(assert (=> b!640610 (=> (not res!415007) (not e!366738))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38327 0))(
  ( (array!38328 (arr!18379 (Array (_ BitVec 32) (_ BitVec 64))) (size!18743 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38327)

(assert (=> b!640610 (= res!415007 (and (= (size!18743 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18743 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18743 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640612 () Bool)

(declare-fun res!415022 () Bool)

(assert (=> b!640612 (=> (not res!415022) (not e!366738))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640612 (= res!415022 (validKeyInArray!0 k0!1786))))

(declare-fun b!640613 () Bool)

(declare-fun res!415008 () Bool)

(declare-fun e!366745 () Bool)

(assert (=> b!640613 (=> (not res!415008) (not e!366745))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640613 (= res!415008 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18379 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640614 () Bool)

(declare-fun res!415013 () Bool)

(assert (=> b!640614 (=> (not res!415013) (not e!366745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38327 (_ BitVec 32)) Bool)

(assert (=> b!640614 (= res!415013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640615 () Bool)

(declare-fun e!366742 () Bool)

(declare-fun e!366741 () Bool)

(assert (=> b!640615 (= e!366742 e!366741)))

(declare-fun res!415009 () Bool)

(assert (=> b!640615 (=> (not res!415009) (not e!366741))))

(declare-fun lt!296600 () array!38327)

(declare-fun arrayContainsKey!0 (array!38327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640615 (= res!415009 (arrayContainsKey!0 lt!296600 (select (arr!18379 a!2986) j!136) j!136))))

(declare-fun b!640616 () Bool)

(declare-fun e!366744 () Bool)

(assert (=> b!640616 (= e!366744 e!366742)))

(declare-fun res!415019 () Bool)

(assert (=> b!640616 (=> res!415019 e!366742)))

(declare-fun lt!296599 () (_ BitVec 64))

(declare-fun lt!296608 () (_ BitVec 64))

(assert (=> b!640616 (= res!415019 (or (not (= (select (arr!18379 a!2986) j!136) lt!296599)) (not (= (select (arr!18379 a!2986) j!136) lt!296608)) (bvsge j!136 index!984)))))

(declare-fun b!640617 () Bool)

(declare-fun e!366740 () Bool)

(declare-fun e!366739 () Bool)

(assert (=> b!640617 (= e!366740 e!366739)))

(declare-fun res!415010 () Bool)

(assert (=> b!640617 (=> res!415010 e!366739)))

(assert (=> b!640617 (= res!415010 (or (not (= (select (arr!18379 a!2986) j!136) lt!296599)) (not (= (select (arr!18379 a!2986) j!136) lt!296608)) (bvsge j!136 index!984)))))

(assert (=> b!640617 e!366744))

(declare-fun res!415006 () Bool)

(assert (=> b!640617 (=> (not res!415006) (not e!366744))))

(assert (=> b!640617 (= res!415006 (= lt!296608 (select (arr!18379 a!2986) j!136)))))

(assert (=> b!640617 (= lt!296608 (select (store (arr!18379 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!640618 () Bool)

(declare-datatypes ((Unit!21662 0))(
  ( (Unit!21663) )
))
(declare-fun e!366743 () Unit!21662)

(declare-fun Unit!21664 () Unit!21662)

(assert (=> b!640618 (= e!366743 Unit!21664)))

(assert (=> b!640618 false))

(declare-fun b!640619 () Bool)

(assert (=> b!640619 (= e!366741 (arrayContainsKey!0 lt!296600 (select (arr!18379 a!2986) j!136) index!984))))

(declare-fun b!640620 () Bool)

(declare-fun res!415018 () Bool)

(assert (=> b!640620 (=> (not res!415018) (not e!366738))))

(assert (=> b!640620 (= res!415018 (validKeyInArray!0 (select (arr!18379 a!2986) j!136)))))

(declare-fun b!640621 () Bool)

(assert (=> b!640621 (= e!366738 e!366745)))

(declare-fun res!415017 () Bool)

(assert (=> b!640621 (=> (not res!415017) (not e!366745))))

(declare-datatypes ((SeekEntryResult!6826 0))(
  ( (MissingZero!6826 (index!29623 (_ BitVec 32))) (Found!6826 (index!29624 (_ BitVec 32))) (Intermediate!6826 (undefined!7638 Bool) (index!29625 (_ BitVec 32)) (x!58407 (_ BitVec 32))) (Undefined!6826) (MissingVacant!6826 (index!29626 (_ BitVec 32))) )
))
(declare-fun lt!296601 () SeekEntryResult!6826)

(assert (=> b!640621 (= res!415017 (or (= lt!296601 (MissingZero!6826 i!1108)) (= lt!296601 (MissingVacant!6826 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38327 (_ BitVec 32)) SeekEntryResult!6826)

(assert (=> b!640621 (= lt!296601 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!640622 () Bool)

(declare-fun Unit!21665 () Unit!21662)

(assert (=> b!640622 (= e!366743 Unit!21665)))

(declare-fun res!415011 () Bool)

(assert (=> start!57944 (=> (not res!415011) (not e!366738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57944 (= res!415011 (validMask!0 mask!3053))))

(assert (=> start!57944 e!366738))

(assert (=> start!57944 true))

(declare-fun array_inv!14153 (array!38327) Bool)

(assert (=> start!57944 (array_inv!14153 a!2986)))

(declare-fun b!640611 () Bool)

(declare-fun res!415015 () Bool)

(assert (=> b!640611 (=> (not res!415015) (not e!366745))))

(declare-datatypes ((List!12473 0))(
  ( (Nil!12470) (Cons!12469 (h!13514 (_ BitVec 64)) (t!18709 List!12473)) )
))
(declare-fun arrayNoDuplicates!0 (array!38327 (_ BitVec 32) List!12473) Bool)

(assert (=> b!640611 (= res!415015 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12470))))

(declare-fun b!640623 () Bool)

(declare-fun e!366736 () Bool)

(declare-fun lt!296610 () SeekEntryResult!6826)

(declare-fun lt!296602 () SeekEntryResult!6826)

(assert (=> b!640623 (= e!366736 (= lt!296610 lt!296602))))

(declare-fun b!640624 () Bool)

(assert (=> b!640624 (= e!366739 true)))

(assert (=> b!640624 (arrayNoDuplicates!0 lt!296600 j!136 Nil!12470)))

(declare-fun lt!296609 () Unit!21662)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38327 (_ BitVec 32) (_ BitVec 32)) Unit!21662)

(assert (=> b!640624 (= lt!296609 (lemmaNoDuplicateFromThenFromBigger!0 lt!296600 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640624 (arrayNoDuplicates!0 lt!296600 #b00000000000000000000000000000000 Nil!12470)))

(declare-fun lt!296607 () Unit!21662)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12473) Unit!21662)

(assert (=> b!640624 (= lt!296607 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12470))))

(assert (=> b!640624 (arrayContainsKey!0 lt!296600 (select (arr!18379 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296605 () Unit!21662)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21662)

(assert (=> b!640624 (= lt!296605 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296600 (select (arr!18379 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640625 () Bool)

(declare-fun e!366734 () Bool)

(assert (=> b!640625 (= e!366745 e!366734)))

(declare-fun res!415014 () Bool)

(assert (=> b!640625 (=> (not res!415014) (not e!366734))))

(assert (=> b!640625 (= res!415014 (= (select (store (arr!18379 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640625 (= lt!296600 (array!38328 (store (arr!18379 a!2986) i!1108 k0!1786) (size!18743 a!2986)))))

(declare-fun b!640626 () Bool)

(declare-fun e!366737 () Bool)

(assert (=> b!640626 (= e!366734 e!366737)))

(declare-fun res!415020 () Bool)

(assert (=> b!640626 (=> (not res!415020) (not e!366737))))

(assert (=> b!640626 (= res!415020 (and (= lt!296610 (Found!6826 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18379 a!2986) index!984) (select (arr!18379 a!2986) j!136))) (not (= (select (arr!18379 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38327 (_ BitVec 32)) SeekEntryResult!6826)

(assert (=> b!640626 (= lt!296610 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18379 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640627 () Bool)

(declare-fun res!415016 () Bool)

(assert (=> b!640627 (=> (not res!415016) (not e!366738))))

(assert (=> b!640627 (= res!415016 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640628 () Bool)

(assert (=> b!640628 (= e!366737 (not e!366740))))

(declare-fun res!415021 () Bool)

(assert (=> b!640628 (=> res!415021 e!366740)))

(declare-fun lt!296598 () SeekEntryResult!6826)

(assert (=> b!640628 (= res!415021 (not (= lt!296598 (Found!6826 index!984))))))

(declare-fun lt!296603 () Unit!21662)

(assert (=> b!640628 (= lt!296603 e!366743)))

(declare-fun c!73169 () Bool)

(assert (=> b!640628 (= c!73169 (= lt!296598 Undefined!6826))))

(assert (=> b!640628 (= lt!296598 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296599 lt!296600 mask!3053))))

(assert (=> b!640628 e!366736))

(declare-fun res!415012 () Bool)

(assert (=> b!640628 (=> (not res!415012) (not e!366736))))

(declare-fun lt!296604 () (_ BitVec 32))

(assert (=> b!640628 (= res!415012 (= lt!296602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296604 vacantSpotIndex!68 lt!296599 lt!296600 mask!3053)))))

(assert (=> b!640628 (= lt!296602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296604 vacantSpotIndex!68 (select (arr!18379 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640628 (= lt!296599 (select (store (arr!18379 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296606 () Unit!21662)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38327 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21662)

(assert (=> b!640628 (= lt!296606 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296604 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640628 (= lt!296604 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57944 res!415011) b!640610))

(assert (= (and b!640610 res!415007) b!640620))

(assert (= (and b!640620 res!415018) b!640612))

(assert (= (and b!640612 res!415022) b!640627))

(assert (= (and b!640627 res!415016) b!640621))

(assert (= (and b!640621 res!415017) b!640614))

(assert (= (and b!640614 res!415013) b!640611))

(assert (= (and b!640611 res!415015) b!640613))

(assert (= (and b!640613 res!415008) b!640625))

(assert (= (and b!640625 res!415014) b!640626))

(assert (= (and b!640626 res!415020) b!640628))

(assert (= (and b!640628 res!415012) b!640623))

(assert (= (and b!640628 c!73169) b!640618))

(assert (= (and b!640628 (not c!73169)) b!640622))

(assert (= (and b!640628 (not res!415021)) b!640617))

(assert (= (and b!640617 res!415006) b!640616))

(assert (= (and b!640616 (not res!415019)) b!640615))

(assert (= (and b!640615 res!415009) b!640619))

(assert (= (and b!640617 (not res!415010)) b!640624))

(declare-fun m!614521 () Bool)

(assert (=> b!640611 m!614521))

(declare-fun m!614523 () Bool)

(assert (=> b!640612 m!614523))

(declare-fun m!614525 () Bool)

(assert (=> start!57944 m!614525))

(declare-fun m!614527 () Bool)

(assert (=> start!57944 m!614527))

(declare-fun m!614529 () Bool)

(assert (=> b!640620 m!614529))

(assert (=> b!640620 m!614529))

(declare-fun m!614531 () Bool)

(assert (=> b!640620 m!614531))

(declare-fun m!614533 () Bool)

(assert (=> b!640625 m!614533))

(declare-fun m!614535 () Bool)

(assert (=> b!640625 m!614535))

(assert (=> b!640619 m!614529))

(assert (=> b!640619 m!614529))

(declare-fun m!614537 () Bool)

(assert (=> b!640619 m!614537))

(declare-fun m!614539 () Bool)

(assert (=> b!640621 m!614539))

(declare-fun m!614541 () Bool)

(assert (=> b!640614 m!614541))

(declare-fun m!614543 () Bool)

(assert (=> b!640613 m!614543))

(assert (=> b!640617 m!614529))

(assert (=> b!640617 m!614533))

(declare-fun m!614545 () Bool)

(assert (=> b!640617 m!614545))

(declare-fun m!614547 () Bool)

(assert (=> b!640627 m!614547))

(assert (=> b!640615 m!614529))

(assert (=> b!640615 m!614529))

(declare-fun m!614549 () Bool)

(assert (=> b!640615 m!614549))

(declare-fun m!614551 () Bool)

(assert (=> b!640626 m!614551))

(assert (=> b!640626 m!614529))

(assert (=> b!640626 m!614529))

(declare-fun m!614553 () Bool)

(assert (=> b!640626 m!614553))

(assert (=> b!640624 m!614529))

(assert (=> b!640624 m!614529))

(declare-fun m!614555 () Bool)

(assert (=> b!640624 m!614555))

(declare-fun m!614557 () Bool)

(assert (=> b!640624 m!614557))

(declare-fun m!614559 () Bool)

(assert (=> b!640624 m!614559))

(assert (=> b!640624 m!614529))

(declare-fun m!614561 () Bool)

(assert (=> b!640624 m!614561))

(declare-fun m!614563 () Bool)

(assert (=> b!640624 m!614563))

(declare-fun m!614565 () Bool)

(assert (=> b!640624 m!614565))

(assert (=> b!640616 m!614529))

(declare-fun m!614567 () Bool)

(assert (=> b!640628 m!614567))

(assert (=> b!640628 m!614533))

(assert (=> b!640628 m!614529))

(declare-fun m!614569 () Bool)

(assert (=> b!640628 m!614569))

(declare-fun m!614571 () Bool)

(assert (=> b!640628 m!614571))

(declare-fun m!614573 () Bool)

(assert (=> b!640628 m!614573))

(declare-fun m!614575 () Bool)

(assert (=> b!640628 m!614575))

(assert (=> b!640628 m!614529))

(declare-fun m!614577 () Bool)

(assert (=> b!640628 m!614577))

(check-sat (not b!640627) (not b!640626) (not start!57944) (not b!640619) (not b!640614) (not b!640620) (not b!640615) (not b!640621) (not b!640612) (not b!640611) (not b!640628) (not b!640624))
(check-sat)
