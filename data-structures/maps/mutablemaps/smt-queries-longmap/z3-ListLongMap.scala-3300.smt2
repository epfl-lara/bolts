; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45756 () Bool)

(assert start!45756)

(declare-fun e!296051 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!505756 () Bool)

(declare-datatypes ((array!32472 0))(
  ( (array!32473 (arr!15613 (Array (_ BitVec 32) (_ BitVec 64))) (size!15977 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32472)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4087 0))(
  ( (MissingZero!4087 (index!18536 (_ BitVec 32))) (Found!4087 (index!18537 (_ BitVec 32))) (Intermediate!4087 (undefined!4899 Bool) (index!18538 (_ BitVec 32)) (x!47571 (_ BitVec 32))) (Undefined!4087) (MissingVacant!4087 (index!18539 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32472 (_ BitVec 32)) SeekEntryResult!4087)

(assert (=> b!505756 (= e!296051 (= (seekEntryOrOpen!0 (select (arr!15613 a!3235) j!176) a!3235 mask!3524) (Found!4087 j!176)))))

(declare-fun lt!230721 () SeekEntryResult!4087)

(declare-fun b!505757 () Bool)

(declare-fun lt!230722 () (_ BitVec 32))

(declare-fun e!296048 () Bool)

(declare-fun lt!230723 () SeekEntryResult!4087)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32472 (_ BitVec 32)) SeekEntryResult!4087)

(assert (=> b!505757 (= e!296048 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230722 (index!18538 lt!230721) (select (arr!15613 a!3235) j!176) a!3235 mask!3524) lt!230723)))))

(declare-fun b!505758 () Bool)

(declare-fun res!306917 () Bool)

(declare-fun e!296049 () Bool)

(assert (=> b!505758 (=> (not res!306917) (not e!296049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505758 (= res!306917 (validKeyInArray!0 (select (arr!15613 a!3235) j!176)))))

(declare-fun b!505759 () Bool)

(declare-fun e!296047 () Bool)

(assert (=> b!505759 (= e!296047 false)))

(declare-fun b!505760 () Bool)

(declare-fun res!306911 () Bool)

(assert (=> b!505760 (=> (not res!306911) (not e!296049))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!505760 (= res!306911 (validKeyInArray!0 k0!2280))))

(declare-fun b!505761 () Bool)

(declare-fun res!306910 () Bool)

(assert (=> b!505761 (=> (not res!306910) (not e!296049))))

(declare-fun arrayContainsKey!0 (array!32472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505761 (= res!306910 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505762 () Bool)

(declare-datatypes ((Unit!15438 0))(
  ( (Unit!15439) )
))
(declare-fun e!296050 () Unit!15438)

(declare-fun Unit!15440 () Unit!15438)

(assert (=> b!505762 (= e!296050 Unit!15440)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!230711 () Unit!15438)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32472 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15438)

(assert (=> b!505762 (= lt!230711 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230722 #b00000000000000000000000000000000 (index!18538 lt!230721) (x!47571 lt!230721) mask!3524))))

(declare-fun lt!230716 () array!32472)

(declare-fun lt!230720 () (_ BitVec 64))

(declare-fun res!306914 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32472 (_ BitVec 32)) SeekEntryResult!4087)

(assert (=> b!505762 (= res!306914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230722 lt!230720 lt!230716 mask!3524) (Intermediate!4087 false (index!18538 lt!230721) (x!47571 lt!230721))))))

(assert (=> b!505762 (=> (not res!306914) (not e!296047))))

(assert (=> b!505762 e!296047))

(declare-fun b!505763 () Bool)

(declare-fun e!296053 () Bool)

(declare-fun e!296046 () Bool)

(assert (=> b!505763 (= e!296053 e!296046)))

(declare-fun res!306923 () Bool)

(assert (=> b!505763 (=> res!306923 e!296046)))

(assert (=> b!505763 (= res!306923 (or (bvsgt (x!47571 lt!230721) #b01111111111111111111111111111110) (bvslt lt!230722 #b00000000000000000000000000000000) (bvsge lt!230722 (size!15977 a!3235)) (bvslt (index!18538 lt!230721) #b00000000000000000000000000000000) (bvsge (index!18538 lt!230721) (size!15977 a!3235)) (not (= lt!230721 (Intermediate!4087 false (index!18538 lt!230721) (x!47571 lt!230721))))))))

(assert (=> b!505763 (= (index!18538 lt!230721) i!1204)))

(declare-fun lt!230712 () Unit!15438)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32472 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15438)

(assert (=> b!505763 (= lt!230712 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230722 #b00000000000000000000000000000000 (index!18538 lt!230721) (x!47571 lt!230721) mask!3524))))

(assert (=> b!505763 (and (or (= (select (arr!15613 a!3235) (index!18538 lt!230721)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15613 a!3235) (index!18538 lt!230721)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15613 a!3235) (index!18538 lt!230721)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15613 a!3235) (index!18538 lt!230721)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230713 () Unit!15438)

(assert (=> b!505763 (= lt!230713 e!296050)))

(declare-fun c!59702 () Bool)

(assert (=> b!505763 (= c!59702 (= (select (arr!15613 a!3235) (index!18538 lt!230721)) (select (arr!15613 a!3235) j!176)))))

(assert (=> b!505763 (and (bvslt (x!47571 lt!230721) #b01111111111111111111111111111110) (or (= (select (arr!15613 a!3235) (index!18538 lt!230721)) (select (arr!15613 a!3235) j!176)) (= (select (arr!15613 a!3235) (index!18538 lt!230721)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15613 a!3235) (index!18538 lt!230721)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505764 () Bool)

(declare-fun res!306922 () Bool)

(assert (=> b!505764 (=> (not res!306922) (not e!296049))))

(assert (=> b!505764 (= res!306922 (and (= (size!15977 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15977 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15977 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505765 () Bool)

(declare-fun e!296052 () Bool)

(assert (=> b!505765 (= e!296052 (not e!296053))))

(declare-fun res!306921 () Bool)

(assert (=> b!505765 (=> res!306921 e!296053)))

(declare-fun lt!230715 () SeekEntryResult!4087)

(get-info :version)

(assert (=> b!505765 (= res!306921 (or (= lt!230721 lt!230715) (undefined!4899 lt!230721) (not ((_ is Intermediate!4087) lt!230721))))))

(declare-fun lt!230719 () (_ BitVec 32))

(assert (=> b!505765 (= lt!230715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230719 lt!230720 lt!230716 mask!3524))))

(assert (=> b!505765 (= lt!230721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230722 (select (arr!15613 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505765 (= lt!230719 (toIndex!0 lt!230720 mask!3524))))

(assert (=> b!505765 (= lt!230720 (select (store (arr!15613 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505765 (= lt!230722 (toIndex!0 (select (arr!15613 a!3235) j!176) mask!3524))))

(assert (=> b!505765 (= lt!230716 (array!32473 (store (arr!15613 a!3235) i!1204 k0!2280) (size!15977 a!3235)))))

(assert (=> b!505765 (= lt!230723 (Found!4087 j!176))))

(assert (=> b!505765 e!296051))

(declare-fun res!306916 () Bool)

(assert (=> b!505765 (=> (not res!306916) (not e!296051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32472 (_ BitVec 32)) Bool)

(assert (=> b!505765 (= res!306916 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230717 () Unit!15438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15438)

(assert (=> b!505765 (= lt!230717 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505766 () Bool)

(declare-fun res!306913 () Bool)

(assert (=> b!505766 (=> res!306913 e!296046)))

(assert (=> b!505766 (= res!306913 e!296048)))

(declare-fun res!306918 () Bool)

(assert (=> b!505766 (=> (not res!306918) (not e!296048))))

(assert (=> b!505766 (= res!306918 (bvsgt #b00000000000000000000000000000000 (x!47571 lt!230721)))))

(declare-fun b!505767 () Bool)

(declare-fun res!306909 () Bool)

(assert (=> b!505767 (=> res!306909 e!296046)))

(assert (=> b!505767 (= res!306909 (not (= lt!230715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230722 lt!230720 lt!230716 mask!3524))))))

(declare-fun res!306912 () Bool)

(assert (=> start!45756 (=> (not res!306912) (not e!296049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45756 (= res!306912 (validMask!0 mask!3524))))

(assert (=> start!45756 e!296049))

(assert (=> start!45756 true))

(declare-fun array_inv!11387 (array!32472) Bool)

(assert (=> start!45756 (array_inv!11387 a!3235)))

(declare-fun b!505768 () Bool)

(assert (=> b!505768 (= e!296046 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!505768 (= (seekEntryOrOpen!0 lt!230720 lt!230716 mask!3524) lt!230723)))

(declare-fun lt!230718 () Unit!15438)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32472 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15438)

(assert (=> b!505768 (= lt!230718 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230722 #b00000000000000000000000000000000 (index!18538 lt!230721) (x!47571 lt!230721) mask!3524))))

(declare-fun b!505769 () Bool)

(declare-fun res!306919 () Bool)

(assert (=> b!505769 (=> (not res!306919) (not e!296052))))

(assert (=> b!505769 (= res!306919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505770 () Bool)

(declare-fun Unit!15441 () Unit!15438)

(assert (=> b!505770 (= e!296050 Unit!15441)))

(declare-fun b!505771 () Bool)

(assert (=> b!505771 (= e!296049 e!296052)))

(declare-fun res!306915 () Bool)

(assert (=> b!505771 (=> (not res!306915) (not e!296052))))

(declare-fun lt!230714 () SeekEntryResult!4087)

(assert (=> b!505771 (= res!306915 (or (= lt!230714 (MissingZero!4087 i!1204)) (= lt!230714 (MissingVacant!4087 i!1204))))))

(assert (=> b!505771 (= lt!230714 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!505772 () Bool)

(declare-fun res!306920 () Bool)

(assert (=> b!505772 (=> (not res!306920) (not e!296052))))

(declare-datatypes ((List!9824 0))(
  ( (Nil!9821) (Cons!9820 (h!10697 (_ BitVec 64)) (t!16060 List!9824)) )
))
(declare-fun arrayNoDuplicates!0 (array!32472 (_ BitVec 32) List!9824) Bool)

(assert (=> b!505772 (= res!306920 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9821))))

(assert (= (and start!45756 res!306912) b!505764))

(assert (= (and b!505764 res!306922) b!505758))

(assert (= (and b!505758 res!306917) b!505760))

(assert (= (and b!505760 res!306911) b!505761))

(assert (= (and b!505761 res!306910) b!505771))

(assert (= (and b!505771 res!306915) b!505769))

(assert (= (and b!505769 res!306919) b!505772))

(assert (= (and b!505772 res!306920) b!505765))

(assert (= (and b!505765 res!306916) b!505756))

(assert (= (and b!505765 (not res!306921)) b!505763))

(assert (= (and b!505763 c!59702) b!505762))

(assert (= (and b!505763 (not c!59702)) b!505770))

(assert (= (and b!505762 res!306914) b!505759))

(assert (= (and b!505763 (not res!306923)) b!505766))

(assert (= (and b!505766 res!306918) b!505757))

(assert (= (and b!505766 (not res!306913)) b!505767))

(assert (= (and b!505767 (not res!306909)) b!505768))

(declare-fun m!486447 () Bool)

(assert (=> b!505771 m!486447))

(declare-fun m!486449 () Bool)

(assert (=> b!505757 m!486449))

(assert (=> b!505757 m!486449))

(declare-fun m!486451 () Bool)

(assert (=> b!505757 m!486451))

(assert (=> b!505758 m!486449))

(assert (=> b!505758 m!486449))

(declare-fun m!486453 () Bool)

(assert (=> b!505758 m!486453))

(declare-fun m!486455 () Bool)

(assert (=> b!505767 m!486455))

(declare-fun m!486457 () Bool)

(assert (=> b!505772 m!486457))

(declare-fun m!486459 () Bool)

(assert (=> b!505768 m!486459))

(declare-fun m!486461 () Bool)

(assert (=> b!505768 m!486461))

(declare-fun m!486463 () Bool)

(assert (=> start!45756 m!486463))

(declare-fun m!486465 () Bool)

(assert (=> start!45756 m!486465))

(declare-fun m!486467 () Bool)

(assert (=> b!505763 m!486467))

(declare-fun m!486469 () Bool)

(assert (=> b!505763 m!486469))

(assert (=> b!505763 m!486449))

(assert (=> b!505765 m!486449))

(declare-fun m!486471 () Bool)

(assert (=> b!505765 m!486471))

(declare-fun m!486473 () Bool)

(assert (=> b!505765 m!486473))

(declare-fun m!486475 () Bool)

(assert (=> b!505765 m!486475))

(assert (=> b!505765 m!486449))

(declare-fun m!486477 () Bool)

(assert (=> b!505765 m!486477))

(assert (=> b!505765 m!486449))

(declare-fun m!486479 () Bool)

(assert (=> b!505765 m!486479))

(declare-fun m!486481 () Bool)

(assert (=> b!505765 m!486481))

(declare-fun m!486483 () Bool)

(assert (=> b!505765 m!486483))

(declare-fun m!486485 () Bool)

(assert (=> b!505765 m!486485))

(declare-fun m!486487 () Bool)

(assert (=> b!505762 m!486487))

(assert (=> b!505762 m!486455))

(assert (=> b!505756 m!486449))

(assert (=> b!505756 m!486449))

(declare-fun m!486489 () Bool)

(assert (=> b!505756 m!486489))

(declare-fun m!486491 () Bool)

(assert (=> b!505760 m!486491))

(declare-fun m!486493 () Bool)

(assert (=> b!505761 m!486493))

(declare-fun m!486495 () Bool)

(assert (=> b!505769 m!486495))

(check-sat (not b!505756) (not b!505763) (not b!505758) (not b!505772) (not b!505767) (not b!505771) (not b!505765) (not b!505769) (not b!505762) (not b!505760) (not b!505768) (not b!505757) (not b!505761) (not start!45756))
(check-sat)
