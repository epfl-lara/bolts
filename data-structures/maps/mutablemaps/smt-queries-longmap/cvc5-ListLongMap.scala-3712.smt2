; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51086 () Bool)

(assert start!51086)

(declare-fun b!557788 () Bool)

(declare-fun res!349810 () Bool)

(declare-fun e!321338 () Bool)

(assert (=> b!557788 (=> (not res!349810) (not e!321338))))

(declare-datatypes ((array!35094 0))(
  ( (array!35095 (arr!16848 (Array (_ BitVec 32) (_ BitVec 64))) (size!17212 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35094)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35094 (_ BitVec 32)) Bool)

(assert (=> b!557788 (= res!349810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557789 () Bool)

(declare-fun e!321340 () Bool)

(assert (=> b!557789 (= e!321340 e!321338)))

(declare-fun res!349811 () Bool)

(assert (=> b!557789 (=> (not res!349811) (not e!321338))))

(declare-datatypes ((SeekEntryResult!5304 0))(
  ( (MissingZero!5304 (index!23443 (_ BitVec 32))) (Found!5304 (index!23444 (_ BitVec 32))) (Intermediate!5304 (undefined!6116 Bool) (index!23445 (_ BitVec 32)) (x!52375 (_ BitVec 32))) (Undefined!5304) (MissingVacant!5304 (index!23446 (_ BitVec 32))) )
))
(declare-fun lt!253497 () SeekEntryResult!5304)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557789 (= res!349811 (or (= lt!253497 (MissingZero!5304 i!1132)) (= lt!253497 (MissingVacant!5304 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35094 (_ BitVec 32)) SeekEntryResult!5304)

(assert (=> b!557789 (= lt!253497 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557790 () Bool)

(declare-fun res!349804 () Bool)

(assert (=> b!557790 (=> (not res!349804) (not e!321340))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557790 (= res!349804 (validKeyInArray!0 (select (arr!16848 a!3118) j!142)))))

(declare-fun b!557791 () Bool)

(declare-fun res!349805 () Bool)

(assert (=> b!557791 (=> (not res!349805) (not e!321340))))

(assert (=> b!557791 (= res!349805 (and (= (size!17212 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17212 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17212 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557792 () Bool)

(declare-fun res!349801 () Bool)

(assert (=> b!557792 (=> (not res!349801) (not e!321340))))

(declare-fun arrayContainsKey!0 (array!35094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557792 (= res!349801 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557793 () Bool)

(declare-fun res!349806 () Bool)

(assert (=> b!557793 (=> (not res!349806) (not e!321340))))

(assert (=> b!557793 (= res!349806 (validKeyInArray!0 k!1914))))

(declare-fun b!557794 () Bool)

(declare-fun e!321342 () Bool)

(declare-fun e!321341 () Bool)

(assert (=> b!557794 (= e!321342 e!321341)))

(declare-fun res!349809 () Bool)

(assert (=> b!557794 (=> res!349809 e!321341)))

(declare-fun lt!253495 () SeekEntryResult!5304)

(assert (=> b!557794 (= res!349809 (or (undefined!6116 lt!253495) (not (is-Intermediate!5304 lt!253495)) (= (select (arr!16848 a!3118) (index!23445 lt!253495)) (select (arr!16848 a!3118) j!142)) (= (select (arr!16848 a!3118) (index!23445 lt!253495)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557795 () Bool)

(declare-fun res!349803 () Bool)

(assert (=> b!557795 (=> (not res!349803) (not e!321338))))

(declare-datatypes ((List!10981 0))(
  ( (Nil!10978) (Cons!10977 (h!11971 (_ BitVec 64)) (t!17217 List!10981)) )
))
(declare-fun arrayNoDuplicates!0 (array!35094 (_ BitVec 32) List!10981) Bool)

(assert (=> b!557795 (= res!349803 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10978))))

(declare-fun lt!253499 () SeekEntryResult!5304)

(declare-fun b!557797 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35094 (_ BitVec 32)) SeekEntryResult!5304)

(assert (=> b!557797 (= e!321341 (= lt!253499 (seekKeyOrZeroReturnVacant!0 (x!52375 lt!253495) (index!23445 lt!253495) (index!23445 lt!253495) (select (arr!16848 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557798 () Bool)

(declare-fun e!321339 () Bool)

(assert (=> b!557798 (= e!321339 (not (or (undefined!6116 lt!253495) (not (is-Intermediate!5304 lt!253495)) (= (select (arr!16848 a!3118) (index!23445 lt!253495)) (select (arr!16848 a!3118) j!142)) (= (select (arr!16848 a!3118) (index!23445 lt!253495)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!557798 e!321342))

(declare-fun res!349807 () Bool)

(assert (=> b!557798 (=> (not res!349807) (not e!321342))))

(assert (=> b!557798 (= res!349807 (= lt!253499 (Found!5304 j!142)))))

(assert (=> b!557798 (= lt!253499 (seekEntryOrOpen!0 (select (arr!16848 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557798 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17382 0))(
  ( (Unit!17383) )
))
(declare-fun lt!253496 () Unit!17382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35094 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17382)

(assert (=> b!557798 (= lt!253496 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557796 () Bool)

(assert (=> b!557796 (= e!321338 e!321339)))

(declare-fun res!349802 () Bool)

(assert (=> b!557796 (=> (not res!349802) (not e!321339))))

(declare-fun lt!253498 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35094 (_ BitVec 32)) SeekEntryResult!5304)

(assert (=> b!557796 (= res!349802 (= lt!253495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253498 (select (store (arr!16848 a!3118) i!1132 k!1914) j!142) (array!35095 (store (arr!16848 a!3118) i!1132 k!1914) (size!17212 a!3118)) mask!3119)))))

(declare-fun lt!253494 () (_ BitVec 32))

(assert (=> b!557796 (= lt!253495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253494 (select (arr!16848 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557796 (= lt!253498 (toIndex!0 (select (store (arr!16848 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557796 (= lt!253494 (toIndex!0 (select (arr!16848 a!3118) j!142) mask!3119))))

(declare-fun res!349808 () Bool)

(assert (=> start!51086 (=> (not res!349808) (not e!321340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51086 (= res!349808 (validMask!0 mask!3119))))

(assert (=> start!51086 e!321340))

(assert (=> start!51086 true))

(declare-fun array_inv!12622 (array!35094) Bool)

(assert (=> start!51086 (array_inv!12622 a!3118)))

(assert (= (and start!51086 res!349808) b!557791))

(assert (= (and b!557791 res!349805) b!557790))

(assert (= (and b!557790 res!349804) b!557793))

(assert (= (and b!557793 res!349806) b!557792))

(assert (= (and b!557792 res!349801) b!557789))

(assert (= (and b!557789 res!349811) b!557788))

(assert (= (and b!557788 res!349810) b!557795))

(assert (= (and b!557795 res!349803) b!557796))

(assert (= (and b!557796 res!349802) b!557798))

(assert (= (and b!557798 res!349807) b!557794))

(assert (= (and b!557794 (not res!349809)) b!557797))

(declare-fun m!535711 () Bool)

(assert (=> start!51086 m!535711))

(declare-fun m!535713 () Bool)

(assert (=> start!51086 m!535713))

(declare-fun m!535715 () Bool)

(assert (=> b!557796 m!535715))

(declare-fun m!535717 () Bool)

(assert (=> b!557796 m!535717))

(declare-fun m!535719 () Bool)

(assert (=> b!557796 m!535719))

(declare-fun m!535721 () Bool)

(assert (=> b!557796 m!535721))

(assert (=> b!557796 m!535715))

(assert (=> b!557796 m!535715))

(declare-fun m!535723 () Bool)

(assert (=> b!557796 m!535723))

(assert (=> b!557796 m!535719))

(declare-fun m!535725 () Bool)

(assert (=> b!557796 m!535725))

(assert (=> b!557796 m!535719))

(declare-fun m!535727 () Bool)

(assert (=> b!557796 m!535727))

(declare-fun m!535729 () Bool)

(assert (=> b!557793 m!535729))

(assert (=> b!557797 m!535715))

(assert (=> b!557797 m!535715))

(declare-fun m!535731 () Bool)

(assert (=> b!557797 m!535731))

(declare-fun m!535733 () Bool)

(assert (=> b!557789 m!535733))

(declare-fun m!535735 () Bool)

(assert (=> b!557795 m!535735))

(declare-fun m!535737 () Bool)

(assert (=> b!557792 m!535737))

(declare-fun m!535739 () Bool)

(assert (=> b!557794 m!535739))

(assert (=> b!557794 m!535715))

(declare-fun m!535741 () Bool)

(assert (=> b!557788 m!535741))

(assert (=> b!557790 m!535715))

(assert (=> b!557790 m!535715))

(declare-fun m!535743 () Bool)

(assert (=> b!557790 m!535743))

(assert (=> b!557798 m!535739))

(assert (=> b!557798 m!535715))

(declare-fun m!535745 () Bool)

(assert (=> b!557798 m!535745))

(declare-fun m!535747 () Bool)

(assert (=> b!557798 m!535747))

(assert (=> b!557798 m!535715))

(declare-fun m!535749 () Bool)

(assert (=> b!557798 m!535749))

(push 1)

