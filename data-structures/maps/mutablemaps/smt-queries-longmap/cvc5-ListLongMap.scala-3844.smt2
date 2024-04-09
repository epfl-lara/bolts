; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52892 () Bool)

(assert start!52892)

(declare-fun b!576167 () Bool)

(declare-fun res!364557 () Bool)

(declare-fun e!331501 () Bool)

(assert (=> b!576167 (=> (not res!364557) (not e!331501))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35934 0))(
  ( (array!35935 (arr!17244 (Array (_ BitVec 32) (_ BitVec 64))) (size!17608 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35934)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5700 0))(
  ( (MissingZero!5700 (index!25027 (_ BitVec 32))) (Found!5700 (index!25028 (_ BitVec 32))) (Intermediate!5700 (undefined!6512 Bool) (index!25029 (_ BitVec 32)) (x!53950 (_ BitVec 32))) (Undefined!5700) (MissingVacant!5700 (index!25030 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35934 (_ BitVec 32)) SeekEntryResult!5700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576167 (= res!364557 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17244 a!3118) j!142) mask!3119) (select (arr!17244 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17244 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17244 a!3118) i!1132 k!1914) j!142) (array!35935 (store (arr!17244 a!3118) i!1132 k!1914) (size!17608 a!3118)) mask!3119)))))

(declare-fun b!576168 () Bool)

(declare-fun res!364553 () Bool)

(assert (=> b!576168 (=> (not res!364553) (not e!331501))))

(declare-datatypes ((List!11377 0))(
  ( (Nil!11374) (Cons!11373 (h!12415 (_ BitVec 64)) (t!17613 List!11377)) )
))
(declare-fun arrayNoDuplicates!0 (array!35934 (_ BitVec 32) List!11377) Bool)

(assert (=> b!576168 (= res!364553 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11374))))

(declare-fun res!364558 () Bool)

(declare-fun e!331504 () Bool)

(assert (=> start!52892 (=> (not res!364558) (not e!331504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52892 (= res!364558 (validMask!0 mask!3119))))

(assert (=> start!52892 e!331504))

(assert (=> start!52892 true))

(declare-fun array_inv!13018 (array!35934) Bool)

(assert (=> start!52892 (array_inv!13018 a!3118)))

(declare-fun b!576169 () Bool)

(declare-fun res!364551 () Bool)

(assert (=> b!576169 (=> (not res!364551) (not e!331504))))

(assert (=> b!576169 (= res!364551 (and (= (size!17608 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17608 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17608 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576170 () Bool)

(declare-fun res!364556 () Bool)

(assert (=> b!576170 (=> (not res!364556) (not e!331501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35934 (_ BitVec 32)) Bool)

(assert (=> b!576170 (= res!364556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576171 () Bool)

(assert (=> b!576171 (= e!331504 e!331501)))

(declare-fun res!364559 () Bool)

(assert (=> b!576171 (=> (not res!364559) (not e!331501))))

(declare-fun lt!263609 () SeekEntryResult!5700)

(assert (=> b!576171 (= res!364559 (or (= lt!263609 (MissingZero!5700 i!1132)) (= lt!263609 (MissingVacant!5700 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35934 (_ BitVec 32)) SeekEntryResult!5700)

(assert (=> b!576171 (= lt!263609 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576172 () Bool)

(declare-fun res!364552 () Bool)

(assert (=> b!576172 (=> (not res!364552) (not e!331504))))

(declare-fun arrayContainsKey!0 (array!35934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576172 (= res!364552 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576173 () Bool)

(declare-fun res!364555 () Bool)

(assert (=> b!576173 (=> (not res!364555) (not e!331504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576173 (= res!364555 (validKeyInArray!0 (select (arr!17244 a!3118) j!142)))))

(declare-fun b!576174 () Bool)

(declare-fun e!331502 () Bool)

(assert (=> b!576174 (= e!331502 (= (seekEntryOrOpen!0 (select (arr!17244 a!3118) j!142) a!3118 mask!3119) (Found!5700 j!142)))))

(declare-fun b!576175 () Bool)

(assert (=> b!576175 (= e!331501 (not true))))

(assert (=> b!576175 e!331502))

(declare-fun res!364550 () Bool)

(assert (=> b!576175 (=> (not res!364550) (not e!331502))))

(assert (=> b!576175 (= res!364550 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18102 0))(
  ( (Unit!18103) )
))
(declare-fun lt!263608 () Unit!18102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35934 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18102)

(assert (=> b!576175 (= lt!263608 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576176 () Bool)

(declare-fun res!364554 () Bool)

(assert (=> b!576176 (=> (not res!364554) (not e!331504))))

(assert (=> b!576176 (= res!364554 (validKeyInArray!0 k!1914))))

(assert (= (and start!52892 res!364558) b!576169))

(assert (= (and b!576169 res!364551) b!576173))

(assert (= (and b!576173 res!364555) b!576176))

(assert (= (and b!576176 res!364554) b!576172))

(assert (= (and b!576172 res!364552) b!576171))

(assert (= (and b!576171 res!364559) b!576170))

(assert (= (and b!576170 res!364556) b!576168))

(assert (= (and b!576168 res!364553) b!576167))

(assert (= (and b!576167 res!364557) b!576175))

(assert (= (and b!576175 res!364550) b!576174))

(declare-fun m!555151 () Bool)

(assert (=> b!576171 m!555151))

(declare-fun m!555153 () Bool)

(assert (=> b!576174 m!555153))

(assert (=> b!576174 m!555153))

(declare-fun m!555155 () Bool)

(assert (=> b!576174 m!555155))

(assert (=> b!576167 m!555153))

(declare-fun m!555157 () Bool)

(assert (=> b!576167 m!555157))

(assert (=> b!576167 m!555153))

(declare-fun m!555159 () Bool)

(assert (=> b!576167 m!555159))

(declare-fun m!555161 () Bool)

(assert (=> b!576167 m!555161))

(assert (=> b!576167 m!555159))

(declare-fun m!555163 () Bool)

(assert (=> b!576167 m!555163))

(assert (=> b!576167 m!555157))

(assert (=> b!576167 m!555153))

(declare-fun m!555165 () Bool)

(assert (=> b!576167 m!555165))

(declare-fun m!555167 () Bool)

(assert (=> b!576167 m!555167))

(assert (=> b!576167 m!555159))

(assert (=> b!576167 m!555161))

(declare-fun m!555169 () Bool)

(assert (=> b!576175 m!555169))

(declare-fun m!555171 () Bool)

(assert (=> b!576175 m!555171))

(declare-fun m!555173 () Bool)

(assert (=> b!576168 m!555173))

(declare-fun m!555175 () Bool)

(assert (=> start!52892 m!555175))

(declare-fun m!555177 () Bool)

(assert (=> start!52892 m!555177))

(declare-fun m!555179 () Bool)

(assert (=> b!576172 m!555179))

(assert (=> b!576173 m!555153))

(assert (=> b!576173 m!555153))

(declare-fun m!555181 () Bool)

(assert (=> b!576173 m!555181))

(declare-fun m!555183 () Bool)

(assert (=> b!576176 m!555183))

(declare-fun m!555185 () Bool)

(assert (=> b!576170 m!555185))

(push 1)

