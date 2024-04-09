; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45750 () Bool)

(assert start!45750)

(declare-fun b!505603 () Bool)

(declare-fun e!295964 () Bool)

(assert (=> b!505603 (= e!295964 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4084 0))(
  ( (MissingZero!4084 (index!18524 (_ BitVec 32))) (Found!4084 (index!18525 (_ BitVec 32))) (Intermediate!4084 (undefined!4896 Bool) (index!18526 (_ BitVec 32)) (x!47560 (_ BitVec 32))) (Undefined!4084) (MissingVacant!4084 (index!18527 (_ BitVec 32))) )
))
(declare-fun lt!230599 () SeekEntryResult!4084)

(declare-fun lt!230602 () (_ BitVec 64))

(declare-datatypes ((array!32466 0))(
  ( (array!32467 (arr!15610 (Array (_ BitVec 32) (_ BitVec 64))) (size!15974 (_ BitVec 32))) )
))
(declare-fun lt!230597 () array!32466)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32466 (_ BitVec 32)) SeekEntryResult!4084)

(assert (=> b!505603 (= (seekEntryOrOpen!0 lt!230602 lt!230597 mask!3524) lt!230599)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!230606 () (_ BitVec 32))

(declare-fun a!3235 () array!32466)

(declare-fun lt!230605 () SeekEntryResult!4084)

(declare-datatypes ((Unit!15426 0))(
  ( (Unit!15427) )
))
(declare-fun lt!230604 () Unit!15426)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15426)

(assert (=> b!505603 (= lt!230604 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230606 #b00000000000000000000000000000000 (index!18526 lt!230605) (x!47560 lt!230605) mask!3524))))

(declare-fun b!505604 () Bool)

(declare-fun res!306774 () Bool)

(declare-fun e!295970 () Bool)

(assert (=> b!505604 (=> (not res!306774) (not e!295970))))

(declare-datatypes ((List!9821 0))(
  ( (Nil!9818) (Cons!9817 (h!10694 (_ BitVec 64)) (t!16057 List!9821)) )
))
(declare-fun arrayNoDuplicates!0 (array!32466 (_ BitVec 32) List!9821) Bool)

(assert (=> b!505604 (= res!306774 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9818))))

(declare-fun b!505605 () Bool)

(declare-fun e!295972 () Bool)

(assert (=> b!505605 (= e!295972 e!295964)))

(declare-fun res!306782 () Bool)

(assert (=> b!505605 (=> res!306782 e!295964)))

(assert (=> b!505605 (= res!306782 (or (bvsgt (x!47560 lt!230605) #b01111111111111111111111111111110) (bvslt lt!230606 #b00000000000000000000000000000000) (bvsge lt!230606 (size!15974 a!3235)) (bvslt (index!18526 lt!230605) #b00000000000000000000000000000000) (bvsge (index!18526 lt!230605) (size!15974 a!3235)) (not (= lt!230605 (Intermediate!4084 false (index!18526 lt!230605) (x!47560 lt!230605))))))))

(assert (=> b!505605 (= (index!18526 lt!230605) i!1204)))

(declare-fun lt!230594 () Unit!15426)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15426)

(assert (=> b!505605 (= lt!230594 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230606 #b00000000000000000000000000000000 (index!18526 lt!230605) (x!47560 lt!230605) mask!3524))))

(assert (=> b!505605 (and (or (= (select (arr!15610 a!3235) (index!18526 lt!230605)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15610 a!3235) (index!18526 lt!230605)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15610 a!3235) (index!18526 lt!230605)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15610 a!3235) (index!18526 lt!230605)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230595 () Unit!15426)

(declare-fun e!295971 () Unit!15426)

(assert (=> b!505605 (= lt!230595 e!295971)))

(declare-fun c!59693 () Bool)

(assert (=> b!505605 (= c!59693 (= (select (arr!15610 a!3235) (index!18526 lt!230605)) (select (arr!15610 a!3235) j!176)))))

(assert (=> b!505605 (and (bvslt (x!47560 lt!230605) #b01111111111111111111111111111110) (or (= (select (arr!15610 a!3235) (index!18526 lt!230605)) (select (arr!15610 a!3235) j!176)) (= (select (arr!15610 a!3235) (index!18526 lt!230605)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15610 a!3235) (index!18526 lt!230605)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505606 () Bool)

(declare-fun Unit!15428 () Unit!15426)

(assert (=> b!505606 (= e!295971 Unit!15428)))

(declare-fun e!295968 () Bool)

(declare-fun b!505607 () Bool)

(assert (=> b!505607 (= e!295968 (= (seekEntryOrOpen!0 (select (arr!15610 a!3235) j!176) a!3235 mask!3524) (Found!4084 j!176)))))

(declare-fun b!505608 () Bool)

(declare-fun e!295966 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32466 (_ BitVec 32)) SeekEntryResult!4084)

(assert (=> b!505608 (= e!295966 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230606 (index!18526 lt!230605) (select (arr!15610 a!3235) j!176) a!3235 mask!3524) lt!230599)))))

(declare-fun b!505609 () Bool)

(declare-fun res!306775 () Bool)

(declare-fun e!295965 () Bool)

(assert (=> b!505609 (=> (not res!306775) (not e!295965))))

(assert (=> b!505609 (= res!306775 (and (= (size!15974 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15974 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15974 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!306781 () Bool)

(assert (=> start!45750 (=> (not res!306781) (not e!295965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45750 (= res!306781 (validMask!0 mask!3524))))

(assert (=> start!45750 e!295965))

(assert (=> start!45750 true))

(declare-fun array_inv!11384 (array!32466) Bool)

(assert (=> start!45750 (array_inv!11384 a!3235)))

(declare-fun b!505610 () Bool)

(assert (=> b!505610 (= e!295965 e!295970)))

(declare-fun res!306784 () Bool)

(assert (=> b!505610 (=> (not res!306784) (not e!295970))))

(declare-fun lt!230596 () SeekEntryResult!4084)

(assert (=> b!505610 (= res!306784 (or (= lt!230596 (MissingZero!4084 i!1204)) (= lt!230596 (MissingVacant!4084 i!1204))))))

(assert (=> b!505610 (= lt!230596 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!505611 () Bool)

(assert (=> b!505611 (= e!295970 (not e!295972))))

(declare-fun res!306783 () Bool)

(assert (=> b!505611 (=> res!306783 e!295972)))

(declare-fun lt!230598 () SeekEntryResult!4084)

(get-info :version)

(assert (=> b!505611 (= res!306783 (or (= lt!230605 lt!230598) (undefined!4896 lt!230605) (not ((_ is Intermediate!4084) lt!230605))))))

(declare-fun lt!230601 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32466 (_ BitVec 32)) SeekEntryResult!4084)

(assert (=> b!505611 (= lt!230598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230601 lt!230602 lt!230597 mask!3524))))

(assert (=> b!505611 (= lt!230605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230606 (select (arr!15610 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505611 (= lt!230601 (toIndex!0 lt!230602 mask!3524))))

(assert (=> b!505611 (= lt!230602 (select (store (arr!15610 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505611 (= lt!230606 (toIndex!0 (select (arr!15610 a!3235) j!176) mask!3524))))

(assert (=> b!505611 (= lt!230597 (array!32467 (store (arr!15610 a!3235) i!1204 k0!2280) (size!15974 a!3235)))))

(assert (=> b!505611 (= lt!230599 (Found!4084 j!176))))

(assert (=> b!505611 e!295968))

(declare-fun res!306777 () Bool)

(assert (=> b!505611 (=> (not res!306777) (not e!295968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32466 (_ BitVec 32)) Bool)

(assert (=> b!505611 (= res!306777 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230603 () Unit!15426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15426)

(assert (=> b!505611 (= lt!230603 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505612 () Bool)

(declare-fun Unit!15429 () Unit!15426)

(assert (=> b!505612 (= e!295971 Unit!15429)))

(declare-fun lt!230600 () Unit!15426)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32466 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15426)

(assert (=> b!505612 (= lt!230600 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230606 #b00000000000000000000000000000000 (index!18526 lt!230605) (x!47560 lt!230605) mask!3524))))

(declare-fun res!306788 () Bool)

(assert (=> b!505612 (= res!306788 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230606 lt!230602 lt!230597 mask!3524) (Intermediate!4084 false (index!18526 lt!230605) (x!47560 lt!230605))))))

(declare-fun e!295969 () Bool)

(assert (=> b!505612 (=> (not res!306788) (not e!295969))))

(assert (=> b!505612 e!295969))

(declare-fun b!505613 () Bool)

(declare-fun res!306786 () Bool)

(assert (=> b!505613 (=> (not res!306786) (not e!295965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505613 (= res!306786 (validKeyInArray!0 k0!2280))))

(declare-fun b!505614 () Bool)

(declare-fun res!306785 () Bool)

(assert (=> b!505614 (=> (not res!306785) (not e!295965))))

(assert (=> b!505614 (= res!306785 (validKeyInArray!0 (select (arr!15610 a!3235) j!176)))))

(declare-fun b!505615 () Bool)

(declare-fun res!306776 () Bool)

(assert (=> b!505615 (=> (not res!306776) (not e!295970))))

(assert (=> b!505615 (= res!306776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505616 () Bool)

(declare-fun res!306778 () Bool)

(assert (=> b!505616 (=> (not res!306778) (not e!295965))))

(declare-fun arrayContainsKey!0 (array!32466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505616 (= res!306778 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505617 () Bool)

(assert (=> b!505617 (= e!295969 false)))

(declare-fun b!505618 () Bool)

(declare-fun res!306779 () Bool)

(assert (=> b!505618 (=> res!306779 e!295964)))

(assert (=> b!505618 (= res!306779 e!295966)))

(declare-fun res!306787 () Bool)

(assert (=> b!505618 (=> (not res!306787) (not e!295966))))

(assert (=> b!505618 (= res!306787 (bvsgt #b00000000000000000000000000000000 (x!47560 lt!230605)))))

(declare-fun b!505619 () Bool)

(declare-fun res!306780 () Bool)

(assert (=> b!505619 (=> res!306780 e!295964)))

(assert (=> b!505619 (= res!306780 (not (= lt!230598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230606 lt!230602 lt!230597 mask!3524))))))

(assert (= (and start!45750 res!306781) b!505609))

(assert (= (and b!505609 res!306775) b!505614))

(assert (= (and b!505614 res!306785) b!505613))

(assert (= (and b!505613 res!306786) b!505616))

(assert (= (and b!505616 res!306778) b!505610))

(assert (= (and b!505610 res!306784) b!505615))

(assert (= (and b!505615 res!306776) b!505604))

(assert (= (and b!505604 res!306774) b!505611))

(assert (= (and b!505611 res!306777) b!505607))

(assert (= (and b!505611 (not res!306783)) b!505605))

(assert (= (and b!505605 c!59693) b!505612))

(assert (= (and b!505605 (not c!59693)) b!505606))

(assert (= (and b!505612 res!306788) b!505617))

(assert (= (and b!505605 (not res!306782)) b!505618))

(assert (= (and b!505618 res!306787) b!505608))

(assert (= (and b!505618 (not res!306779)) b!505619))

(assert (= (and b!505619 (not res!306780)) b!505603))

(declare-fun m!486297 () Bool)

(assert (=> b!505612 m!486297))

(declare-fun m!486299 () Bool)

(assert (=> b!505612 m!486299))

(assert (=> b!505619 m!486299))

(declare-fun m!486301 () Bool)

(assert (=> b!505603 m!486301))

(declare-fun m!486303 () Bool)

(assert (=> b!505603 m!486303))

(declare-fun m!486305 () Bool)

(assert (=> b!505616 m!486305))

(declare-fun m!486307 () Bool)

(assert (=> b!505608 m!486307))

(assert (=> b!505608 m!486307))

(declare-fun m!486309 () Bool)

(assert (=> b!505608 m!486309))

(declare-fun m!486311 () Bool)

(assert (=> b!505615 m!486311))

(declare-fun m!486313 () Bool)

(assert (=> b!505613 m!486313))

(assert (=> b!505611 m!486307))

(declare-fun m!486315 () Bool)

(assert (=> b!505611 m!486315))

(declare-fun m!486317 () Bool)

(assert (=> b!505611 m!486317))

(declare-fun m!486319 () Bool)

(assert (=> b!505611 m!486319))

(declare-fun m!486321 () Bool)

(assert (=> b!505611 m!486321))

(assert (=> b!505611 m!486307))

(declare-fun m!486323 () Bool)

(assert (=> b!505611 m!486323))

(assert (=> b!505611 m!486307))

(declare-fun m!486325 () Bool)

(assert (=> b!505611 m!486325))

(declare-fun m!486327 () Bool)

(assert (=> b!505611 m!486327))

(declare-fun m!486329 () Bool)

(assert (=> b!505611 m!486329))

(assert (=> b!505607 m!486307))

(assert (=> b!505607 m!486307))

(declare-fun m!486331 () Bool)

(assert (=> b!505607 m!486331))

(declare-fun m!486333 () Bool)

(assert (=> start!45750 m!486333))

(declare-fun m!486335 () Bool)

(assert (=> start!45750 m!486335))

(declare-fun m!486337 () Bool)

(assert (=> b!505604 m!486337))

(declare-fun m!486339 () Bool)

(assert (=> b!505610 m!486339))

(declare-fun m!486341 () Bool)

(assert (=> b!505605 m!486341))

(declare-fun m!486343 () Bool)

(assert (=> b!505605 m!486343))

(assert (=> b!505605 m!486307))

(assert (=> b!505614 m!486307))

(assert (=> b!505614 m!486307))

(declare-fun m!486345 () Bool)

(assert (=> b!505614 m!486345))

(check-sat (not b!505615) (not b!505616) (not b!505619) (not b!505611) (not b!505607) (not b!505605) (not b!505614) (not b!505610) (not b!505613) (not b!505604) (not b!505603) (not b!505608) (not b!505612) (not start!45750))
(check-sat)
