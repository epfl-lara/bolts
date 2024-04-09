; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47784 () Bool)

(assert start!47784)

(declare-fun b!525859 () Bool)

(declare-datatypes ((Unit!16518 0))(
  ( (Unit!16519) )
))
(declare-fun e!306562 () Unit!16518)

(declare-fun Unit!16520 () Unit!16518)

(assert (=> b!525859 (= e!306562 Unit!16520)))

(declare-fun b!525860 () Bool)

(declare-fun res!322697 () Bool)

(declare-fun e!306560 () Bool)

(assert (=> b!525860 (=> (not res!322697) (not e!306560))))

(declare-datatypes ((array!33381 0))(
  ( (array!33382 (arr!16039 (Array (_ BitVec 32) (_ BitVec 64))) (size!16403 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33381)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525860 (= res!322697 (validKeyInArray!0 (select (arr!16039 a!3235) j!176)))))

(declare-fun b!525861 () Bool)

(declare-fun res!322687 () Bool)

(assert (=> b!525861 (=> (not res!322687) (not e!306560))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!525861 (= res!322687 (validKeyInArray!0 k0!2280))))

(declare-fun b!525862 () Bool)

(declare-fun e!306564 () Bool)

(assert (=> b!525862 (= e!306560 e!306564)))

(declare-fun res!322692 () Bool)

(assert (=> b!525862 (=> (not res!322692) (not e!306564))))

(declare-datatypes ((SeekEntryResult!4513 0))(
  ( (MissingZero!4513 (index!20264 (_ BitVec 32))) (Found!4513 (index!20265 (_ BitVec 32))) (Intermediate!4513 (undefined!5325 Bool) (index!20266 (_ BitVec 32)) (x!49265 (_ BitVec 32))) (Undefined!4513) (MissingVacant!4513 (index!20267 (_ BitVec 32))) )
))
(declare-fun lt!241796 () SeekEntryResult!4513)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525862 (= res!322692 (or (= lt!241796 (MissingZero!4513 i!1204)) (= lt!241796 (MissingVacant!4513 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33381 (_ BitVec 32)) SeekEntryResult!4513)

(assert (=> b!525862 (= lt!241796 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525863 () Bool)

(declare-fun Unit!16521 () Unit!16518)

(assert (=> b!525863 (= e!306562 Unit!16521)))

(declare-fun lt!241805 () (_ BitVec 32))

(declare-fun lt!241803 () Unit!16518)

(declare-fun lt!241800 () SeekEntryResult!4513)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33381 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16518)

(assert (=> b!525863 (= lt!241803 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241805 #b00000000000000000000000000000000 (index!20266 lt!241800) (x!49265 lt!241800) mask!3524))))

(declare-fun lt!241801 () (_ BitVec 64))

(declare-fun lt!241804 () array!33381)

(declare-fun res!322696 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33381 (_ BitVec 32)) SeekEntryResult!4513)

(assert (=> b!525863 (= res!322696 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241805 lt!241801 lt!241804 mask!3524) (Intermediate!4513 false (index!20266 lt!241800) (x!49265 lt!241800))))))

(declare-fun e!306561 () Bool)

(assert (=> b!525863 (=> (not res!322696) (not e!306561))))

(assert (=> b!525863 e!306561))

(declare-fun b!525864 () Bool)

(assert (=> b!525864 (= e!306561 false)))

(declare-fun b!525865 () Bool)

(declare-fun res!322689 () Bool)

(assert (=> b!525865 (=> (not res!322689) (not e!306564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33381 (_ BitVec 32)) Bool)

(assert (=> b!525865 (= res!322689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525866 () Bool)

(declare-fun res!322693 () Bool)

(declare-fun e!306565 () Bool)

(assert (=> b!525866 (=> res!322693 e!306565)))

(get-info :version)

(assert (=> b!525866 (= res!322693 (or (undefined!5325 lt!241800) (not ((_ is Intermediate!4513) lt!241800))))))

(declare-fun b!525867 () Bool)

(declare-fun res!322695 () Bool)

(assert (=> b!525867 (=> (not res!322695) (not e!306560))))

(assert (=> b!525867 (= res!322695 (and (= (size!16403 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16403 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16403 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525868 () Bool)

(assert (=> b!525868 (= e!306565 true)))

(assert (=> b!525868 (= (index!20266 lt!241800) i!1204)))

(declare-fun lt!241797 () Unit!16518)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33381 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16518)

(assert (=> b!525868 (= lt!241797 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241805 #b00000000000000000000000000000000 (index!20266 lt!241800) (x!49265 lt!241800) mask!3524))))

(assert (=> b!525868 (and (or (= (select (arr!16039 a!3235) (index!20266 lt!241800)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16039 a!3235) (index!20266 lt!241800)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16039 a!3235) (index!20266 lt!241800)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16039 a!3235) (index!20266 lt!241800)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241799 () Unit!16518)

(assert (=> b!525868 (= lt!241799 e!306562)))

(declare-fun c!61892 () Bool)

(assert (=> b!525868 (= c!61892 (= (select (arr!16039 a!3235) (index!20266 lt!241800)) (select (arr!16039 a!3235) j!176)))))

(assert (=> b!525868 (and (bvslt (x!49265 lt!241800) #b01111111111111111111111111111110) (or (= (select (arr!16039 a!3235) (index!20266 lt!241800)) (select (arr!16039 a!3235) j!176)) (= (select (arr!16039 a!3235) (index!20266 lt!241800)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16039 a!3235) (index!20266 lt!241800)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525869 () Bool)

(declare-fun res!322690 () Bool)

(assert (=> b!525869 (=> (not res!322690) (not e!306564))))

(declare-datatypes ((List!10250 0))(
  ( (Nil!10247) (Cons!10246 (h!11177 (_ BitVec 64)) (t!16486 List!10250)) )
))
(declare-fun arrayNoDuplicates!0 (array!33381 (_ BitVec 32) List!10250) Bool)

(assert (=> b!525869 (= res!322690 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10247))))

(declare-fun res!322686 () Bool)

(assert (=> start!47784 (=> (not res!322686) (not e!306560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47784 (= res!322686 (validMask!0 mask!3524))))

(assert (=> start!47784 e!306560))

(assert (=> start!47784 true))

(declare-fun array_inv!11813 (array!33381) Bool)

(assert (=> start!47784 (array_inv!11813 a!3235)))

(declare-fun b!525870 () Bool)

(declare-fun e!306559 () Bool)

(assert (=> b!525870 (= e!306559 (= (seekEntryOrOpen!0 (select (arr!16039 a!3235) j!176) a!3235 mask!3524) (Found!4513 j!176)))))

(declare-fun b!525871 () Bool)

(assert (=> b!525871 (= e!306564 (not e!306565))))

(declare-fun res!322691 () Bool)

(assert (=> b!525871 (=> res!322691 e!306565)))

(declare-fun lt!241802 () (_ BitVec 32))

(assert (=> b!525871 (= res!322691 (= lt!241800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241802 lt!241801 lt!241804 mask!3524)))))

(assert (=> b!525871 (= lt!241800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241805 (select (arr!16039 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525871 (= lt!241802 (toIndex!0 lt!241801 mask!3524))))

(assert (=> b!525871 (= lt!241801 (select (store (arr!16039 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525871 (= lt!241805 (toIndex!0 (select (arr!16039 a!3235) j!176) mask!3524))))

(assert (=> b!525871 (= lt!241804 (array!33382 (store (arr!16039 a!3235) i!1204 k0!2280) (size!16403 a!3235)))))

(assert (=> b!525871 e!306559))

(declare-fun res!322688 () Bool)

(assert (=> b!525871 (=> (not res!322688) (not e!306559))))

(assert (=> b!525871 (= res!322688 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241798 () Unit!16518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16518)

(assert (=> b!525871 (= lt!241798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525872 () Bool)

(declare-fun res!322694 () Bool)

(assert (=> b!525872 (=> (not res!322694) (not e!306560))))

(declare-fun arrayContainsKey!0 (array!33381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525872 (= res!322694 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47784 res!322686) b!525867))

(assert (= (and b!525867 res!322695) b!525860))

(assert (= (and b!525860 res!322697) b!525861))

(assert (= (and b!525861 res!322687) b!525872))

(assert (= (and b!525872 res!322694) b!525862))

(assert (= (and b!525862 res!322692) b!525865))

(assert (= (and b!525865 res!322689) b!525869))

(assert (= (and b!525869 res!322690) b!525871))

(assert (= (and b!525871 res!322688) b!525870))

(assert (= (and b!525871 (not res!322691)) b!525866))

(assert (= (and b!525866 (not res!322693)) b!525868))

(assert (= (and b!525868 c!61892) b!525863))

(assert (= (and b!525868 (not c!61892)) b!525859))

(assert (= (and b!525863 res!322696) b!525864))

(declare-fun m!506583 () Bool)

(assert (=> start!47784 m!506583))

(declare-fun m!506585 () Bool)

(assert (=> start!47784 m!506585))

(declare-fun m!506587 () Bool)

(assert (=> b!525862 m!506587))

(declare-fun m!506589 () Bool)

(assert (=> b!525869 m!506589))

(declare-fun m!506591 () Bool)

(assert (=> b!525872 m!506591))

(declare-fun m!506593 () Bool)

(assert (=> b!525861 m!506593))

(declare-fun m!506595 () Bool)

(assert (=> b!525871 m!506595))

(declare-fun m!506597 () Bool)

(assert (=> b!525871 m!506597))

(declare-fun m!506599 () Bool)

(assert (=> b!525871 m!506599))

(declare-fun m!506601 () Bool)

(assert (=> b!525871 m!506601))

(declare-fun m!506603 () Bool)

(assert (=> b!525871 m!506603))

(assert (=> b!525871 m!506599))

(declare-fun m!506605 () Bool)

(assert (=> b!525871 m!506605))

(assert (=> b!525871 m!506599))

(declare-fun m!506607 () Bool)

(assert (=> b!525871 m!506607))

(declare-fun m!506609 () Bool)

(assert (=> b!525871 m!506609))

(declare-fun m!506611 () Bool)

(assert (=> b!525871 m!506611))

(declare-fun m!506613 () Bool)

(assert (=> b!525868 m!506613))

(declare-fun m!506615 () Bool)

(assert (=> b!525868 m!506615))

(assert (=> b!525868 m!506599))

(assert (=> b!525870 m!506599))

(assert (=> b!525870 m!506599))

(declare-fun m!506617 () Bool)

(assert (=> b!525870 m!506617))

(assert (=> b!525860 m!506599))

(assert (=> b!525860 m!506599))

(declare-fun m!506619 () Bool)

(assert (=> b!525860 m!506619))

(declare-fun m!506621 () Bool)

(assert (=> b!525863 m!506621))

(declare-fun m!506623 () Bool)

(assert (=> b!525863 m!506623))

(declare-fun m!506625 () Bool)

(assert (=> b!525865 m!506625))

(check-sat (not b!525872) (not b!525871) (not b!525870) (not b!525861) (not start!47784) (not b!525869) (not b!525860) (not b!525863) (not b!525868) (not b!525862) (not b!525865))
(check-sat)
