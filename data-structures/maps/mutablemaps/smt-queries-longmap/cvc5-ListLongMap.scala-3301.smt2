; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45760 () Bool)

(assert start!45760)

(declare-fun b!505858 () Bool)

(declare-fun res!307001 () Bool)

(declare-fun e!296107 () Bool)

(assert (=> b!505858 (=> (not res!307001) (not e!296107))))

(declare-datatypes ((array!32476 0))(
  ( (array!32477 (arr!15615 (Array (_ BitVec 32) (_ BitVec 64))) (size!15979 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32476)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32476 (_ BitVec 32)) Bool)

(assert (=> b!505858 (= res!307001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505860 () Bool)

(declare-datatypes ((Unit!15446 0))(
  ( (Unit!15447) )
))
(declare-fun e!296100 () Unit!15446)

(declare-fun Unit!15448 () Unit!15446)

(assert (=> b!505860 (= e!296100 Unit!15448)))

(declare-fun b!505861 () Bool)

(declare-fun Unit!15449 () Unit!15446)

(assert (=> b!505861 (= e!296100 Unit!15449)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4089 0))(
  ( (MissingZero!4089 (index!18544 (_ BitVec 32))) (Found!4089 (index!18545 (_ BitVec 32))) (Intermediate!4089 (undefined!4901 Bool) (index!18546 (_ BitVec 32)) (x!47581 (_ BitVec 32))) (Undefined!4089) (MissingVacant!4089 (index!18547 (_ BitVec 32))) )
))
(declare-fun lt!230789 () SeekEntryResult!4089)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!230798 () Unit!15446)

(declare-fun lt!230796 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32476 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15446)

(assert (=> b!505861 (= lt!230798 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230796 #b00000000000000000000000000000000 (index!18546 lt!230789) (x!47581 lt!230789) mask!3524))))

(declare-fun lt!230797 () (_ BitVec 64))

(declare-fun res!307002 () Bool)

(declare-fun lt!230799 () array!32476)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32476 (_ BitVec 32)) SeekEntryResult!4089)

(assert (=> b!505861 (= res!307002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230796 lt!230797 lt!230799 mask!3524) (Intermediate!4089 false (index!18546 lt!230789) (x!47581 lt!230789))))))

(declare-fun e!296101 () Bool)

(assert (=> b!505861 (=> (not res!307002) (not e!296101))))

(assert (=> b!505861 e!296101))

(declare-fun b!505862 () Bool)

(declare-fun e!296104 () Bool)

(declare-fun e!296105 () Bool)

(assert (=> b!505862 (= e!296104 e!296105)))

(declare-fun res!307012 () Bool)

(assert (=> b!505862 (=> res!307012 e!296105)))

(assert (=> b!505862 (= res!307012 (or (bvsgt (x!47581 lt!230789) #b01111111111111111111111111111110) (bvslt lt!230796 #b00000000000000000000000000000000) (bvsge lt!230796 (size!15979 a!3235)) (bvslt (index!18546 lt!230789) #b00000000000000000000000000000000) (bvsge (index!18546 lt!230789) (size!15979 a!3235)) (not (= lt!230789 (Intermediate!4089 false (index!18546 lt!230789) (x!47581 lt!230789))))))))

(assert (=> b!505862 (= (index!18546 lt!230789) i!1204)))

(declare-fun lt!230794 () Unit!15446)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32476 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15446)

(assert (=> b!505862 (= lt!230794 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230796 #b00000000000000000000000000000000 (index!18546 lt!230789) (x!47581 lt!230789) mask!3524))))

(assert (=> b!505862 (and (or (= (select (arr!15615 a!3235) (index!18546 lt!230789)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15615 a!3235) (index!18546 lt!230789)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15615 a!3235) (index!18546 lt!230789)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15615 a!3235) (index!18546 lt!230789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230801 () Unit!15446)

(assert (=> b!505862 (= lt!230801 e!296100)))

(declare-fun c!59708 () Bool)

(assert (=> b!505862 (= c!59708 (= (select (arr!15615 a!3235) (index!18546 lt!230789)) (select (arr!15615 a!3235) j!176)))))

(assert (=> b!505862 (and (bvslt (x!47581 lt!230789) #b01111111111111111111111111111110) (or (= (select (arr!15615 a!3235) (index!18546 lt!230789)) (select (arr!15615 a!3235) j!176)) (= (select (arr!15615 a!3235) (index!18546 lt!230789)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15615 a!3235) (index!18546 lt!230789)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505863 () Bool)

(declare-fun e!296103 () Bool)

(assert (=> b!505863 (= e!296103 e!296107)))

(declare-fun res!307003 () Bool)

(assert (=> b!505863 (=> (not res!307003) (not e!296107))))

(declare-fun lt!230792 () SeekEntryResult!4089)

(assert (=> b!505863 (= res!307003 (or (= lt!230792 (MissingZero!4089 i!1204)) (= lt!230792 (MissingVacant!4089 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32476 (_ BitVec 32)) SeekEntryResult!4089)

(assert (=> b!505863 (= lt!230792 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505864 () Bool)

(declare-fun res!307010 () Bool)

(assert (=> b!505864 (=> (not res!307010) (not e!296107))))

(declare-datatypes ((List!9826 0))(
  ( (Nil!9823) (Cons!9822 (h!10699 (_ BitVec 64)) (t!16062 List!9826)) )
))
(declare-fun arrayNoDuplicates!0 (array!32476 (_ BitVec 32) List!9826) Bool)

(assert (=> b!505864 (= res!307010 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9823))))

(declare-fun b!505865 () Bool)

(assert (=> b!505865 (= e!296101 false)))

(declare-fun b!505866 () Bool)

(declare-fun res!307005 () Bool)

(assert (=> b!505866 (=> (not res!307005) (not e!296103))))

(declare-fun arrayContainsKey!0 (array!32476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505866 (= res!307005 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505867 () Bool)

(declare-fun res!307007 () Bool)

(assert (=> b!505867 (=> (not res!307007) (not e!296103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505867 (= res!307007 (validKeyInArray!0 (select (arr!15615 a!3235) j!176)))))

(declare-fun b!505868 () Bool)

(declare-fun res!307004 () Bool)

(assert (=> b!505868 (=> (not res!307004) (not e!296103))))

(assert (=> b!505868 (= res!307004 (validKeyInArray!0 k!2280))))

(declare-fun b!505859 () Bool)

(declare-fun res!307009 () Bool)

(assert (=> b!505859 (=> res!307009 e!296105)))

(declare-fun lt!230791 () SeekEntryResult!4089)

(assert (=> b!505859 (= res!307009 (not (= lt!230791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230796 lt!230797 lt!230799 mask!3524))))))

(declare-fun res!307008 () Bool)

(assert (=> start!45760 (=> (not res!307008) (not e!296103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45760 (= res!307008 (validMask!0 mask!3524))))

(assert (=> start!45760 e!296103))

(assert (=> start!45760 true))

(declare-fun array_inv!11389 (array!32476) Bool)

(assert (=> start!45760 (array_inv!11389 a!3235)))

(declare-fun b!505869 () Bool)

(assert (=> b!505869 (= e!296107 (not e!296104))))

(declare-fun res!307006 () Bool)

(assert (=> b!505869 (=> res!307006 e!296104)))

(assert (=> b!505869 (= res!307006 (or (= lt!230789 lt!230791) (undefined!4901 lt!230789) (not (is-Intermediate!4089 lt!230789))))))

(declare-fun lt!230795 () (_ BitVec 32))

(assert (=> b!505869 (= lt!230791 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230795 lt!230797 lt!230799 mask!3524))))

(assert (=> b!505869 (= lt!230789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230796 (select (arr!15615 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505869 (= lt!230795 (toIndex!0 lt!230797 mask!3524))))

(assert (=> b!505869 (= lt!230797 (select (store (arr!15615 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505869 (= lt!230796 (toIndex!0 (select (arr!15615 a!3235) j!176) mask!3524))))

(assert (=> b!505869 (= lt!230799 (array!32477 (store (arr!15615 a!3235) i!1204 k!2280) (size!15979 a!3235)))))

(declare-fun lt!230790 () SeekEntryResult!4089)

(assert (=> b!505869 (= lt!230790 (Found!4089 j!176))))

(declare-fun e!296102 () Bool)

(assert (=> b!505869 e!296102))

(declare-fun res!307011 () Bool)

(assert (=> b!505869 (=> (not res!307011) (not e!296102))))

(assert (=> b!505869 (= res!307011 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230793 () Unit!15446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15446)

(assert (=> b!505869 (= lt!230793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505870 () Bool)

(declare-fun res!307000 () Bool)

(assert (=> b!505870 (=> (not res!307000) (not e!296103))))

(assert (=> b!505870 (= res!307000 (and (= (size!15979 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15979 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15979 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505871 () Bool)

(declare-fun res!307013 () Bool)

(assert (=> b!505871 (=> res!307013 e!296105)))

(declare-fun e!296099 () Bool)

(assert (=> b!505871 (= res!307013 e!296099)))

(declare-fun res!306999 () Bool)

(assert (=> b!505871 (=> (not res!306999) (not e!296099))))

(assert (=> b!505871 (= res!306999 (bvsgt #b00000000000000000000000000000000 (x!47581 lt!230789)))))

(declare-fun b!505872 () Bool)

(assert (=> b!505872 (= e!296102 (= (seekEntryOrOpen!0 (select (arr!15615 a!3235) j!176) a!3235 mask!3524) (Found!4089 j!176)))))

(declare-fun b!505873 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32476 (_ BitVec 32)) SeekEntryResult!4089)

(assert (=> b!505873 (= e!296099 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230796 (index!18546 lt!230789) (select (arr!15615 a!3235) j!176) a!3235 mask!3524) lt!230790)))))

(declare-fun b!505874 () Bool)

(assert (=> b!505874 (= e!296105 true)))

(assert (=> b!505874 (= (seekEntryOrOpen!0 lt!230797 lt!230799 mask!3524) lt!230790)))

(declare-fun lt!230800 () Unit!15446)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32476 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15446)

(assert (=> b!505874 (= lt!230800 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230796 #b00000000000000000000000000000000 (index!18546 lt!230789) (x!47581 lt!230789) mask!3524))))

(assert (= (and start!45760 res!307008) b!505870))

(assert (= (and b!505870 res!307000) b!505867))

(assert (= (and b!505867 res!307007) b!505868))

(assert (= (and b!505868 res!307004) b!505866))

(assert (= (and b!505866 res!307005) b!505863))

(assert (= (and b!505863 res!307003) b!505858))

(assert (= (and b!505858 res!307001) b!505864))

(assert (= (and b!505864 res!307010) b!505869))

(assert (= (and b!505869 res!307011) b!505872))

(assert (= (and b!505869 (not res!307006)) b!505862))

(assert (= (and b!505862 c!59708) b!505861))

(assert (= (and b!505862 (not c!59708)) b!505860))

(assert (= (and b!505861 res!307002) b!505865))

(assert (= (and b!505862 (not res!307012)) b!505871))

(assert (= (and b!505871 res!306999) b!505873))

(assert (= (and b!505871 (not res!307013)) b!505859))

(assert (= (and b!505859 (not res!307009)) b!505874))

(declare-fun m!486547 () Bool)

(assert (=> b!505867 m!486547))

(assert (=> b!505867 m!486547))

(declare-fun m!486549 () Bool)

(assert (=> b!505867 m!486549))

(declare-fun m!486551 () Bool)

(assert (=> b!505864 m!486551))

(declare-fun m!486553 () Bool)

(assert (=> b!505861 m!486553))

(declare-fun m!486555 () Bool)

(assert (=> b!505861 m!486555))

(declare-fun m!486557 () Bool)

(assert (=> b!505863 m!486557))

(assert (=> b!505873 m!486547))

(assert (=> b!505873 m!486547))

(declare-fun m!486559 () Bool)

(assert (=> b!505873 m!486559))

(declare-fun m!486561 () Bool)

(assert (=> b!505874 m!486561))

(declare-fun m!486563 () Bool)

(assert (=> b!505874 m!486563))

(assert (=> b!505872 m!486547))

(assert (=> b!505872 m!486547))

(declare-fun m!486565 () Bool)

(assert (=> b!505872 m!486565))

(declare-fun m!486567 () Bool)

(assert (=> b!505868 m!486567))

(declare-fun m!486569 () Bool)

(assert (=> b!505862 m!486569))

(declare-fun m!486571 () Bool)

(assert (=> b!505862 m!486571))

(assert (=> b!505862 m!486547))

(declare-fun m!486573 () Bool)

(assert (=> b!505866 m!486573))

(declare-fun m!486575 () Bool)

(assert (=> b!505858 m!486575))

(declare-fun m!486577 () Bool)

(assert (=> b!505869 m!486577))

(declare-fun m!486579 () Bool)

(assert (=> b!505869 m!486579))

(declare-fun m!486581 () Bool)

(assert (=> b!505869 m!486581))

(declare-fun m!486583 () Bool)

(assert (=> b!505869 m!486583))

(assert (=> b!505869 m!486547))

(declare-fun m!486585 () Bool)

(assert (=> b!505869 m!486585))

(assert (=> b!505869 m!486547))

(declare-fun m!486587 () Bool)

(assert (=> b!505869 m!486587))

(assert (=> b!505869 m!486547))

(declare-fun m!486589 () Bool)

(assert (=> b!505869 m!486589))

(declare-fun m!486591 () Bool)

(assert (=> b!505869 m!486591))

(declare-fun m!486593 () Bool)

(assert (=> start!45760 m!486593))

(declare-fun m!486595 () Bool)

(assert (=> start!45760 m!486595))

(assert (=> b!505859 m!486555))

(push 1)

