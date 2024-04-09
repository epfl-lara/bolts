; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47738 () Bool)

(assert start!47738)

(declare-fun b!524893 () Bool)

(declare-fun res!321858 () Bool)

(declare-fun e!306082 () Bool)

(assert (=> b!524893 (=> (not res!321858) (not e!306082))))

(declare-datatypes ((array!33335 0))(
  ( (array!33336 (arr!16016 (Array (_ BitVec 32) (_ BitVec 64))) (size!16380 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33335)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33335 (_ BitVec 32)) Bool)

(assert (=> b!524893 (= res!321858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524894 () Bool)

(declare-fun e!306081 () Bool)

(assert (=> b!524894 (= e!306081 true)))

(declare-datatypes ((SeekEntryResult!4490 0))(
  ( (MissingZero!4490 (index!20172 (_ BitVec 32))) (Found!4490 (index!20173 (_ BitVec 32))) (Intermediate!4490 (undefined!5302 Bool) (index!20174 (_ BitVec 32)) (x!49178 (_ BitVec 32))) (Undefined!4490) (MissingVacant!4490 (index!20175 (_ BitVec 32))) )
))
(declare-fun lt!241109 () SeekEntryResult!4490)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524894 (= (index!20174 lt!241109) i!1204)))

(declare-datatypes ((Unit!16426 0))(
  ( (Unit!16427) )
))
(declare-fun lt!241107 () Unit!16426)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241115 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33335 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16426)

(assert (=> b!524894 (= lt!241107 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241115 #b00000000000000000000000000000000 (index!20174 lt!241109) (x!49178 lt!241109) mask!3524))))

(assert (=> b!524894 (and (or (= (select (arr!16016 a!3235) (index!20174 lt!241109)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16016 a!3235) (index!20174 lt!241109)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16016 a!3235) (index!20174 lt!241109)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16016 a!3235) (index!20174 lt!241109)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241113 () Unit!16426)

(declare-fun e!306076 () Unit!16426)

(assert (=> b!524894 (= lt!241113 e!306076)))

(declare-fun c!61823 () Bool)

(assert (=> b!524894 (= c!61823 (= (select (arr!16016 a!3235) (index!20174 lt!241109)) (select (arr!16016 a!3235) j!176)))))

(assert (=> b!524894 (and (bvslt (x!49178 lt!241109) #b01111111111111111111111111111110) (or (= (select (arr!16016 a!3235) (index!20174 lt!241109)) (select (arr!16016 a!3235) j!176)) (= (select (arr!16016 a!3235) (index!20174 lt!241109)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16016 a!3235) (index!20174 lt!241109)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524895 () Bool)

(declare-fun res!321869 () Bool)

(assert (=> b!524895 (=> res!321869 e!306081)))

(assert (=> b!524895 (= res!321869 (or (undefined!5302 lt!241109) (not (is-Intermediate!4490 lt!241109))))))

(declare-fun b!524896 () Bool)

(declare-fun Unit!16428 () Unit!16426)

(assert (=> b!524896 (= e!306076 Unit!16428)))

(declare-fun b!524898 () Bool)

(declare-fun res!321861 () Bool)

(assert (=> b!524898 (=> (not res!321861) (not e!306082))))

(declare-datatypes ((List!10227 0))(
  ( (Nil!10224) (Cons!10223 (h!11154 (_ BitVec 64)) (t!16463 List!10227)) )
))
(declare-fun arrayNoDuplicates!0 (array!33335 (_ BitVec 32) List!10227) Bool)

(assert (=> b!524898 (= res!321861 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10224))))

(declare-fun b!524899 () Bool)

(declare-fun res!321859 () Bool)

(declare-fun e!306080 () Bool)

(assert (=> b!524899 (=> (not res!321859) (not e!306080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524899 (= res!321859 (validKeyInArray!0 k!2280))))

(declare-fun b!524900 () Bool)

(declare-fun Unit!16429 () Unit!16426)

(assert (=> b!524900 (= e!306076 Unit!16429)))

(declare-fun lt!241112 () Unit!16426)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33335 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16426)

(assert (=> b!524900 (= lt!241112 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241115 #b00000000000000000000000000000000 (index!20174 lt!241109) (x!49178 lt!241109) mask!3524))))

(declare-fun lt!241110 () (_ BitVec 64))

(declare-fun lt!241108 () array!33335)

(declare-fun res!321860 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33335 (_ BitVec 32)) SeekEntryResult!4490)

(assert (=> b!524900 (= res!321860 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241115 lt!241110 lt!241108 mask!3524) (Intermediate!4490 false (index!20174 lt!241109) (x!49178 lt!241109))))))

(declare-fun e!306078 () Bool)

(assert (=> b!524900 (=> (not res!321860) (not e!306078))))

(assert (=> b!524900 e!306078))

(declare-fun b!524901 () Bool)

(assert (=> b!524901 (= e!306078 false)))

(declare-fun b!524902 () Bool)

(assert (=> b!524902 (= e!306082 (not e!306081))))

(declare-fun res!321865 () Bool)

(assert (=> b!524902 (=> res!321865 e!306081)))

(declare-fun lt!241111 () (_ BitVec 32))

(assert (=> b!524902 (= res!321865 (= lt!241109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241111 lt!241110 lt!241108 mask!3524)))))

(assert (=> b!524902 (= lt!241109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241115 (select (arr!16016 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524902 (= lt!241111 (toIndex!0 lt!241110 mask!3524))))

(assert (=> b!524902 (= lt!241110 (select (store (arr!16016 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524902 (= lt!241115 (toIndex!0 (select (arr!16016 a!3235) j!176) mask!3524))))

(assert (=> b!524902 (= lt!241108 (array!33336 (store (arr!16016 a!3235) i!1204 k!2280) (size!16380 a!3235)))))

(declare-fun e!306079 () Bool)

(assert (=> b!524902 e!306079))

(declare-fun res!321866 () Bool)

(assert (=> b!524902 (=> (not res!321866) (not e!306079))))

(assert (=> b!524902 (= res!321866 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241106 () Unit!16426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16426)

(assert (=> b!524902 (= lt!241106 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524903 () Bool)

(declare-fun res!321863 () Bool)

(assert (=> b!524903 (=> (not res!321863) (not e!306080))))

(assert (=> b!524903 (= res!321863 (and (= (size!16380 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16380 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16380 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524904 () Bool)

(assert (=> b!524904 (= e!306080 e!306082)))

(declare-fun res!321862 () Bool)

(assert (=> b!524904 (=> (not res!321862) (not e!306082))))

(declare-fun lt!241114 () SeekEntryResult!4490)

(assert (=> b!524904 (= res!321862 (or (= lt!241114 (MissingZero!4490 i!1204)) (= lt!241114 (MissingVacant!4490 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33335 (_ BitVec 32)) SeekEntryResult!4490)

(assert (=> b!524904 (= lt!241114 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524905 () Bool)

(declare-fun res!321867 () Bool)

(assert (=> b!524905 (=> (not res!321867) (not e!306080))))

(declare-fun arrayContainsKey!0 (array!33335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524905 (= res!321867 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524906 () Bool)

(assert (=> b!524906 (= e!306079 (= (seekEntryOrOpen!0 (select (arr!16016 a!3235) j!176) a!3235 mask!3524) (Found!4490 j!176)))))

(declare-fun res!321864 () Bool)

(assert (=> start!47738 (=> (not res!321864) (not e!306080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47738 (= res!321864 (validMask!0 mask!3524))))

(assert (=> start!47738 e!306080))

(assert (=> start!47738 true))

(declare-fun array_inv!11790 (array!33335) Bool)

(assert (=> start!47738 (array_inv!11790 a!3235)))

(declare-fun b!524897 () Bool)

(declare-fun res!321868 () Bool)

(assert (=> b!524897 (=> (not res!321868) (not e!306080))))

(assert (=> b!524897 (= res!321868 (validKeyInArray!0 (select (arr!16016 a!3235) j!176)))))

(assert (= (and start!47738 res!321864) b!524903))

(assert (= (and b!524903 res!321863) b!524897))

(assert (= (and b!524897 res!321868) b!524899))

(assert (= (and b!524899 res!321859) b!524905))

(assert (= (and b!524905 res!321867) b!524904))

(assert (= (and b!524904 res!321862) b!524893))

(assert (= (and b!524893 res!321858) b!524898))

(assert (= (and b!524898 res!321861) b!524902))

(assert (= (and b!524902 res!321866) b!524906))

(assert (= (and b!524902 (not res!321865)) b!524895))

(assert (= (and b!524895 (not res!321869)) b!524894))

(assert (= (and b!524894 c!61823) b!524900))

(assert (= (and b!524894 (not c!61823)) b!524896))

(assert (= (and b!524900 res!321860) b!524901))

(declare-fun m!505571 () Bool)

(assert (=> b!524900 m!505571))

(declare-fun m!505573 () Bool)

(assert (=> b!524900 m!505573))

(declare-fun m!505575 () Bool)

(assert (=> b!524906 m!505575))

(assert (=> b!524906 m!505575))

(declare-fun m!505577 () Bool)

(assert (=> b!524906 m!505577))

(assert (=> b!524897 m!505575))

(assert (=> b!524897 m!505575))

(declare-fun m!505579 () Bool)

(assert (=> b!524897 m!505579))

(declare-fun m!505581 () Bool)

(assert (=> b!524899 m!505581))

(declare-fun m!505583 () Bool)

(assert (=> b!524904 m!505583))

(declare-fun m!505585 () Bool)

(assert (=> b!524893 m!505585))

(declare-fun m!505587 () Bool)

(assert (=> b!524898 m!505587))

(declare-fun m!505589 () Bool)

(assert (=> b!524902 m!505589))

(declare-fun m!505591 () Bool)

(assert (=> b!524902 m!505591))

(declare-fun m!505593 () Bool)

(assert (=> b!524902 m!505593))

(assert (=> b!524902 m!505575))

(declare-fun m!505595 () Bool)

(assert (=> b!524902 m!505595))

(declare-fun m!505597 () Bool)

(assert (=> b!524902 m!505597))

(assert (=> b!524902 m!505575))

(assert (=> b!524902 m!505575))

(declare-fun m!505599 () Bool)

(assert (=> b!524902 m!505599))

(declare-fun m!505601 () Bool)

(assert (=> b!524902 m!505601))

(declare-fun m!505603 () Bool)

(assert (=> b!524902 m!505603))

(declare-fun m!505605 () Bool)

(assert (=> b!524894 m!505605))

(declare-fun m!505607 () Bool)

(assert (=> b!524894 m!505607))

(assert (=> b!524894 m!505575))

(declare-fun m!505609 () Bool)

(assert (=> start!47738 m!505609))

(declare-fun m!505611 () Bool)

(assert (=> start!47738 m!505611))

(declare-fun m!505613 () Bool)

(assert (=> b!524905 m!505613))

(push 1)

