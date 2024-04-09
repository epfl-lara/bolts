; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47794 () Bool)

(assert start!47794)

(declare-fun b!526069 () Bool)

(declare-fun res!322870 () Bool)

(declare-fun e!306664 () Bool)

(assert (=> b!526069 (=> (not res!322870) (not e!306664))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526069 (= res!322870 (validKeyInArray!0 k!2280))))

(declare-fun b!526070 () Bool)

(declare-fun res!322866 () Bool)

(assert (=> b!526070 (=> (not res!322866) (not e!306664))))

(declare-datatypes ((array!33391 0))(
  ( (array!33392 (arr!16044 (Array (_ BitVec 32) (_ BitVec 64))) (size!16408 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33391)

(declare-fun arrayContainsKey!0 (array!33391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526070 (= res!322866 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526071 () Bool)

(declare-fun e!306670 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4518 0))(
  ( (MissingZero!4518 (index!20284 (_ BitVec 32))) (Found!4518 (index!20285 (_ BitVec 32))) (Intermediate!4518 (undefined!5330 Bool) (index!20286 (_ BitVec 32)) (x!49286 (_ BitVec 32))) (Undefined!4518) (MissingVacant!4518 (index!20287 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33391 (_ BitVec 32)) SeekEntryResult!4518)

(assert (=> b!526071 (= e!306670 (= (seekEntryOrOpen!0 (select (arr!16044 a!3235) j!176) a!3235 mask!3524) (Found!4518 j!176)))))

(declare-fun b!526072 () Bool)

(declare-fun res!322875 () Bool)

(declare-fun e!306665 () Bool)

(assert (=> b!526072 (=> (not res!322875) (not e!306665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33391 (_ BitVec 32)) Bool)

(assert (=> b!526072 (= res!322875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!322874 () Bool)

(assert (=> start!47794 (=> (not res!322874) (not e!306664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47794 (= res!322874 (validMask!0 mask!3524))))

(assert (=> start!47794 e!306664))

(assert (=> start!47794 true))

(declare-fun array_inv!11818 (array!33391) Bool)

(assert (=> start!47794 (array_inv!11818 a!3235)))

(declare-fun b!526073 () Bool)

(declare-datatypes ((Unit!16538 0))(
  ( (Unit!16539) )
))
(declare-fun e!306668 () Unit!16538)

(declare-fun Unit!16540 () Unit!16538)

(assert (=> b!526073 (= e!306668 Unit!16540)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!241952 () SeekEntryResult!4518)

(declare-fun lt!241951 () (_ BitVec 32))

(declare-fun lt!241948 () Unit!16538)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33391 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16538)

(assert (=> b!526073 (= lt!241948 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241951 #b00000000000000000000000000000000 (index!20286 lt!241952) (x!49286 lt!241952) mask!3524))))

(declare-fun lt!241955 () array!33391)

(declare-fun res!322867 () Bool)

(declare-fun lt!241954 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33391 (_ BitVec 32)) SeekEntryResult!4518)

(assert (=> b!526073 (= res!322867 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241951 lt!241954 lt!241955 mask!3524) (Intermediate!4518 false (index!20286 lt!241952) (x!49286 lt!241952))))))

(declare-fun e!306667 () Bool)

(assert (=> b!526073 (=> (not res!322867) (not e!306667))))

(assert (=> b!526073 e!306667))

(declare-fun b!526074 () Bool)

(declare-fun res!322877 () Bool)

(assert (=> b!526074 (=> (not res!322877) (not e!306664))))

(assert (=> b!526074 (= res!322877 (and (= (size!16408 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16408 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16408 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526075 () Bool)

(assert (=> b!526075 (= e!306664 e!306665)))

(declare-fun res!322871 () Bool)

(assert (=> b!526075 (=> (not res!322871) (not e!306665))))

(declare-fun lt!241953 () SeekEntryResult!4518)

(assert (=> b!526075 (= res!322871 (or (= lt!241953 (MissingZero!4518 i!1204)) (= lt!241953 (MissingVacant!4518 i!1204))))))

(assert (=> b!526075 (= lt!241953 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526076 () Bool)

(declare-fun res!322868 () Bool)

(assert (=> b!526076 (=> (not res!322868) (not e!306665))))

(declare-datatypes ((List!10255 0))(
  ( (Nil!10252) (Cons!10251 (h!11182 (_ BitVec 64)) (t!16491 List!10255)) )
))
(declare-fun arrayNoDuplicates!0 (array!33391 (_ BitVec 32) List!10255) Bool)

(assert (=> b!526076 (= res!322868 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10252))))

(declare-fun b!526077 () Bool)

(assert (=> b!526077 (= e!306667 false)))

(declare-fun b!526078 () Bool)

(declare-fun e!306666 () Bool)

(assert (=> b!526078 (= e!306665 (not e!306666))))

(declare-fun res!322869 () Bool)

(assert (=> b!526078 (=> res!322869 e!306666)))

(declare-fun lt!241949 () (_ BitVec 32))

(assert (=> b!526078 (= res!322869 (= lt!241952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241949 lt!241954 lt!241955 mask!3524)))))

(assert (=> b!526078 (= lt!241952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241951 (select (arr!16044 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526078 (= lt!241949 (toIndex!0 lt!241954 mask!3524))))

(assert (=> b!526078 (= lt!241954 (select (store (arr!16044 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526078 (= lt!241951 (toIndex!0 (select (arr!16044 a!3235) j!176) mask!3524))))

(assert (=> b!526078 (= lt!241955 (array!33392 (store (arr!16044 a!3235) i!1204 k!2280) (size!16408 a!3235)))))

(assert (=> b!526078 e!306670))

(declare-fun res!322872 () Bool)

(assert (=> b!526078 (=> (not res!322872) (not e!306670))))

(assert (=> b!526078 (= res!322872 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241946 () Unit!16538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16538)

(assert (=> b!526078 (= lt!241946 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526079 () Bool)

(declare-fun Unit!16541 () Unit!16538)

(assert (=> b!526079 (= e!306668 Unit!16541)))

(declare-fun b!526080 () Bool)

(declare-fun res!322876 () Bool)

(assert (=> b!526080 (=> (not res!322876) (not e!306664))))

(assert (=> b!526080 (= res!322876 (validKeyInArray!0 (select (arr!16044 a!3235) j!176)))))

(declare-fun b!526081 () Bool)

(declare-fun res!322873 () Bool)

(assert (=> b!526081 (=> res!322873 e!306666)))

(assert (=> b!526081 (= res!322873 (or (undefined!5330 lt!241952) (not (is-Intermediate!4518 lt!241952))))))

(declare-fun b!526082 () Bool)

(assert (=> b!526082 (= e!306666 true)))

(assert (=> b!526082 (= (index!20286 lt!241952) i!1204)))

(declare-fun lt!241950 () Unit!16538)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33391 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16538)

(assert (=> b!526082 (= lt!241950 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241951 #b00000000000000000000000000000000 (index!20286 lt!241952) (x!49286 lt!241952) mask!3524))))

(assert (=> b!526082 (and (or (= (select (arr!16044 a!3235) (index!20286 lt!241952)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16044 a!3235) (index!20286 lt!241952)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16044 a!3235) (index!20286 lt!241952)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16044 a!3235) (index!20286 lt!241952)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241947 () Unit!16538)

(assert (=> b!526082 (= lt!241947 e!306668)))

(declare-fun c!61907 () Bool)

(assert (=> b!526082 (= c!61907 (= (select (arr!16044 a!3235) (index!20286 lt!241952)) (select (arr!16044 a!3235) j!176)))))

(assert (=> b!526082 (and (bvslt (x!49286 lt!241952) #b01111111111111111111111111111110) (or (= (select (arr!16044 a!3235) (index!20286 lt!241952)) (select (arr!16044 a!3235) j!176)) (= (select (arr!16044 a!3235) (index!20286 lt!241952)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16044 a!3235) (index!20286 lt!241952)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47794 res!322874) b!526074))

(assert (= (and b!526074 res!322877) b!526080))

(assert (= (and b!526080 res!322876) b!526069))

(assert (= (and b!526069 res!322870) b!526070))

(assert (= (and b!526070 res!322866) b!526075))

(assert (= (and b!526075 res!322871) b!526072))

(assert (= (and b!526072 res!322875) b!526076))

(assert (= (and b!526076 res!322868) b!526078))

(assert (= (and b!526078 res!322872) b!526071))

(assert (= (and b!526078 (not res!322869)) b!526081))

(assert (= (and b!526081 (not res!322873)) b!526082))

(assert (= (and b!526082 c!61907) b!526073))

(assert (= (and b!526082 (not c!61907)) b!526079))

(assert (= (and b!526073 res!322867) b!526077))

(declare-fun m!506803 () Bool)

(assert (=> b!526082 m!506803))

(declare-fun m!506805 () Bool)

(assert (=> b!526082 m!506805))

(declare-fun m!506807 () Bool)

(assert (=> b!526082 m!506807))

(declare-fun m!506809 () Bool)

(assert (=> b!526072 m!506809))

(declare-fun m!506811 () Bool)

(assert (=> b!526073 m!506811))

(declare-fun m!506813 () Bool)

(assert (=> b!526073 m!506813))

(declare-fun m!506815 () Bool)

(assert (=> b!526075 m!506815))

(declare-fun m!506817 () Bool)

(assert (=> b!526070 m!506817))

(declare-fun m!506819 () Bool)

(assert (=> start!47794 m!506819))

(declare-fun m!506821 () Bool)

(assert (=> start!47794 m!506821))

(assert (=> b!526071 m!506807))

(assert (=> b!526071 m!506807))

(declare-fun m!506823 () Bool)

(assert (=> b!526071 m!506823))

(declare-fun m!506825 () Bool)

(assert (=> b!526076 m!506825))

(declare-fun m!506827 () Bool)

(assert (=> b!526069 m!506827))

(assert (=> b!526080 m!506807))

(assert (=> b!526080 m!506807))

(declare-fun m!506829 () Bool)

(assert (=> b!526080 m!506829))

(declare-fun m!506831 () Bool)

(assert (=> b!526078 m!506831))

(declare-fun m!506833 () Bool)

(assert (=> b!526078 m!506833))

(declare-fun m!506835 () Bool)

(assert (=> b!526078 m!506835))

(assert (=> b!526078 m!506807))

(declare-fun m!506837 () Bool)

(assert (=> b!526078 m!506837))

(declare-fun m!506839 () Bool)

(assert (=> b!526078 m!506839))

(assert (=> b!526078 m!506807))

(declare-fun m!506841 () Bool)

(assert (=> b!526078 m!506841))

(assert (=> b!526078 m!506807))

(declare-fun m!506843 () Bool)

(assert (=> b!526078 m!506843))

(declare-fun m!506845 () Bool)

(assert (=> b!526078 m!506845))

(push 1)

