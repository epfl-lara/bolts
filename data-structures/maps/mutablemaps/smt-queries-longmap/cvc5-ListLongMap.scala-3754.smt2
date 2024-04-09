; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51536 () Bool)

(assert start!51536)

(declare-fun b!563420 () Bool)

(declare-fun res!354726 () Bool)

(declare-fun e!324658 () Bool)

(assert (=> b!563420 (=> (not res!354726) (not e!324658))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563420 (= res!354726 (validKeyInArray!0 k!1914))))

(declare-fun b!563421 () Bool)

(declare-fun res!354727 () Bool)

(assert (=> b!563421 (=> (not res!354727) (not e!324658))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35355 0))(
  ( (array!35356 (arr!16974 (Array (_ BitVec 32) (_ BitVec 64))) (size!17338 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35355)

(assert (=> b!563421 (= res!354727 (and (= (size!17338 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17338 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17338 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563422 () Bool)

(declare-fun res!354722 () Bool)

(declare-fun e!324655 () Bool)

(assert (=> b!563422 (=> (not res!354722) (not e!324655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35355 (_ BitVec 32)) Bool)

(assert (=> b!563422 (= res!354722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563423 () Bool)

(declare-fun res!354730 () Bool)

(assert (=> b!563423 (=> (not res!354730) (not e!324658))))

(assert (=> b!563423 (= res!354730 (validKeyInArray!0 (select (arr!16974 a!3118) j!142)))))

(declare-fun b!563424 () Bool)

(assert (=> b!563424 (= e!324658 e!324655)))

(declare-fun res!354729 () Bool)

(assert (=> b!563424 (=> (not res!354729) (not e!324655))))

(declare-datatypes ((SeekEntryResult!5430 0))(
  ( (MissingZero!5430 (index!23947 (_ BitVec 32))) (Found!5430 (index!23948 (_ BitVec 32))) (Intermediate!5430 (undefined!6242 Bool) (index!23949 (_ BitVec 32)) (x!52864 (_ BitVec 32))) (Undefined!5430) (MissingVacant!5430 (index!23950 (_ BitVec 32))) )
))
(declare-fun lt!257231 () SeekEntryResult!5430)

(assert (=> b!563424 (= res!354729 (or (= lt!257231 (MissingZero!5430 i!1132)) (= lt!257231 (MissingVacant!5430 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35355 (_ BitVec 32)) SeekEntryResult!5430)

(assert (=> b!563424 (= lt!257231 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563425 () Bool)

(declare-fun e!324656 () Bool)

(assert (=> b!563425 (= e!324656 (= (seekEntryOrOpen!0 (select (arr!16974 a!3118) j!142) a!3118 mask!3119) (Found!5430 j!142)))))

(declare-fun b!563426 () Bool)

(declare-fun res!354731 () Bool)

(assert (=> b!563426 (=> (not res!354731) (not e!324655))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35355 (_ BitVec 32)) SeekEntryResult!5430)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563426 (= res!354731 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16974 a!3118) j!142) mask!3119) (select (arr!16974 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16974 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16974 a!3118) i!1132 k!1914) j!142) (array!35356 (store (arr!16974 a!3118) i!1132 k!1914) (size!17338 a!3118)) mask!3119)))))

(declare-fun res!354728 () Bool)

(assert (=> start!51536 (=> (not res!354728) (not e!324658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51536 (= res!354728 (validMask!0 mask!3119))))

(assert (=> start!51536 e!324658))

(assert (=> start!51536 true))

(declare-fun array_inv!12748 (array!35355) Bool)

(assert (=> start!51536 (array_inv!12748 a!3118)))

(declare-fun b!563427 () Bool)

(assert (=> b!563427 (= e!324655 (not true))))

(assert (=> b!563427 e!324656))

(declare-fun res!354724 () Bool)

(assert (=> b!563427 (=> (not res!354724) (not e!324656))))

(assert (=> b!563427 (= res!354724 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17634 0))(
  ( (Unit!17635) )
))
(declare-fun lt!257230 () Unit!17634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17634)

(assert (=> b!563427 (= lt!257230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563428 () Bool)

(declare-fun res!354725 () Bool)

(assert (=> b!563428 (=> (not res!354725) (not e!324658))))

(declare-fun arrayContainsKey!0 (array!35355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563428 (= res!354725 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563429 () Bool)

(declare-fun res!354723 () Bool)

(assert (=> b!563429 (=> (not res!354723) (not e!324655))))

(declare-datatypes ((List!11107 0))(
  ( (Nil!11104) (Cons!11103 (h!12106 (_ BitVec 64)) (t!17343 List!11107)) )
))
(declare-fun arrayNoDuplicates!0 (array!35355 (_ BitVec 32) List!11107) Bool)

(assert (=> b!563429 (= res!354723 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11104))))

(assert (= (and start!51536 res!354728) b!563421))

(assert (= (and b!563421 res!354727) b!563423))

(assert (= (and b!563423 res!354730) b!563420))

(assert (= (and b!563420 res!354726) b!563428))

(assert (= (and b!563428 res!354725) b!563424))

(assert (= (and b!563424 res!354729) b!563422))

(assert (= (and b!563422 res!354722) b!563429))

(assert (= (and b!563429 res!354723) b!563426))

(assert (= (and b!563426 res!354731) b!563427))

(assert (= (and b!563427 res!354724) b!563425))

(declare-fun m!541837 () Bool)

(assert (=> b!563423 m!541837))

(assert (=> b!563423 m!541837))

(declare-fun m!541839 () Bool)

(assert (=> b!563423 m!541839))

(declare-fun m!541841 () Bool)

(assert (=> b!563420 m!541841))

(assert (=> b!563425 m!541837))

(assert (=> b!563425 m!541837))

(declare-fun m!541843 () Bool)

(assert (=> b!563425 m!541843))

(declare-fun m!541845 () Bool)

(assert (=> b!563429 m!541845))

(declare-fun m!541847 () Bool)

(assert (=> b!563428 m!541847))

(declare-fun m!541849 () Bool)

(assert (=> start!51536 m!541849))

(declare-fun m!541851 () Bool)

(assert (=> start!51536 m!541851))

(declare-fun m!541853 () Bool)

(assert (=> b!563424 m!541853))

(declare-fun m!541855 () Bool)

(assert (=> b!563427 m!541855))

(declare-fun m!541857 () Bool)

(assert (=> b!563427 m!541857))

(declare-fun m!541859 () Bool)

(assert (=> b!563422 m!541859))

(assert (=> b!563426 m!541837))

(declare-fun m!541861 () Bool)

(assert (=> b!563426 m!541861))

(assert (=> b!563426 m!541837))

(declare-fun m!541863 () Bool)

(assert (=> b!563426 m!541863))

(declare-fun m!541865 () Bool)

(assert (=> b!563426 m!541865))

(assert (=> b!563426 m!541863))

(declare-fun m!541867 () Bool)

(assert (=> b!563426 m!541867))

(assert (=> b!563426 m!541861))

(assert (=> b!563426 m!541837))

(declare-fun m!541869 () Bool)

(assert (=> b!563426 m!541869))

(declare-fun m!541871 () Bool)

(assert (=> b!563426 m!541871))

(assert (=> b!563426 m!541863))

(assert (=> b!563426 m!541865))

(push 1)

