; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129070 () Bool)

(assert start!129070)

(declare-fun b!1513122 () Bool)

(declare-fun res!1033107 () Bool)

(declare-fun e!844538 () Bool)

(assert (=> b!1513122 (=> (not res!1033107) (not e!844538))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((array!100839 0))(
  ( (array!100840 (arr!48652 (Array (_ BitVec 32) (_ BitVec 64))) (size!49203 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100839)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1513122 (= res!1033107 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49203 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49203 a!2804))))))

(declare-fun b!1513123 () Bool)

(declare-fun e!844539 () Bool)

(declare-fun e!844541 () Bool)

(assert (=> b!1513123 (= e!844539 e!844541)))

(declare-fun res!1033106 () Bool)

(assert (=> b!1513123 (=> (not res!1033106) (not e!844541))))

(declare-datatypes ((SeekEntryResult!12844 0))(
  ( (MissingZero!12844 (index!53770 (_ BitVec 32))) (Found!12844 (index!53771 (_ BitVec 32))) (Intermediate!12844 (undefined!13656 Bool) (index!53772 (_ BitVec 32)) (x!135503 (_ BitVec 32))) (Undefined!12844) (MissingVacant!12844 (index!53773 (_ BitVec 32))) )
))
(declare-fun lt!655839 () SeekEntryResult!12844)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!655842 () (_ BitVec 64))

(declare-fun lt!655843 () array!100839)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100839 (_ BitVec 32)) SeekEntryResult!12844)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513123 (= res!1033106 (= lt!655839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655842 mask!2512) lt!655842 lt!655843 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1513123 (= lt!655842 (select (store (arr!48652 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513123 (= lt!655843 (array!100840 (store (arr!48652 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49203 a!2804)))))

(declare-fun b!1513124 () Bool)

(declare-fun e!844542 () Bool)

(declare-fun e!844543 () Bool)

(assert (=> b!1513124 (= e!844542 e!844543)))

(declare-fun res!1033105 () Bool)

(assert (=> b!1513124 (=> res!1033105 e!844543)))

(assert (=> b!1513124 (= res!1033105 (or (not (= (select (arr!48652 a!2804) j!70) lt!655842)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48652 a!2804) index!487) (select (arr!48652 a!2804) j!70)) (not (= (select (arr!48652 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513125 () Bool)

(declare-fun res!1033100 () Bool)

(assert (=> b!1513125 (=> (not res!1033100) (not e!844538))))

(declare-datatypes ((List!35315 0))(
  ( (Nil!35312) (Cons!35311 (h!36724 (_ BitVec 64)) (t!50016 List!35315)) )
))
(declare-fun arrayNoDuplicates!0 (array!100839 (_ BitVec 32) List!35315) Bool)

(assert (=> b!1513125 (= res!1033100 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35312))))

(declare-fun b!1513126 () Bool)

(declare-fun res!1033097 () Bool)

(assert (=> b!1513126 (=> (not res!1033097) (not e!844538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513126 (= res!1033097 (validKeyInArray!0 (select (arr!48652 a!2804) i!961)))))

(declare-fun b!1513127 () Bool)

(assert (=> b!1513127 (= e!844541 (not true))))

(assert (=> b!1513127 e!844542))

(declare-fun res!1033108 () Bool)

(assert (=> b!1513127 (=> (not res!1033108) (not e!844542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100839 (_ BitVec 32)) Bool)

(assert (=> b!1513127 (= res!1033108 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50512 0))(
  ( (Unit!50513) )
))
(declare-fun lt!655840 () Unit!50512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50512)

(assert (=> b!1513127 (= lt!655840 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513128 () Bool)

(declare-fun res!1033110 () Bool)

(assert (=> b!1513128 (=> (not res!1033110) (not e!844538))))

(assert (=> b!1513128 (= res!1033110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513129 () Bool)

(assert (=> b!1513129 (= e!844538 e!844539)))

(declare-fun res!1033104 () Bool)

(assert (=> b!1513129 (=> (not res!1033104) (not e!844539))))

(declare-fun lt!655841 () SeekEntryResult!12844)

(assert (=> b!1513129 (= res!1033104 (= lt!655839 lt!655841))))

(assert (=> b!1513129 (= lt!655841 (Intermediate!12844 false resIndex!21 resX!21))))

(assert (=> b!1513129 (= lt!655839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48652 a!2804) j!70) mask!2512) (select (arr!48652 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513130 () Bool)

(declare-fun res!1033099 () Bool)

(assert (=> b!1513130 (=> (not res!1033099) (not e!844538))))

(assert (=> b!1513130 (= res!1033099 (validKeyInArray!0 (select (arr!48652 a!2804) j!70)))))

(declare-fun b!1513132 () Bool)

(declare-fun res!1033102 () Bool)

(assert (=> b!1513132 (=> (not res!1033102) (not e!844542))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100839 (_ BitVec 32)) SeekEntryResult!12844)

(assert (=> b!1513132 (= res!1033102 (= (seekEntry!0 (select (arr!48652 a!2804) j!70) a!2804 mask!2512) (Found!12844 j!70)))))

(declare-fun b!1513133 () Bool)

(declare-fun res!1033103 () Bool)

(assert (=> b!1513133 (=> (not res!1033103) (not e!844538))))

(assert (=> b!1513133 (= res!1033103 (and (= (size!49203 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49203 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49203 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513134 () Bool)

(declare-fun res!1033098 () Bool)

(assert (=> b!1513134 (=> (not res!1033098) (not e!844539))))

(assert (=> b!1513134 (= res!1033098 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48652 a!2804) j!70) a!2804 mask!2512) lt!655841))))

(declare-fun e!844540 () Bool)

(declare-fun b!1513135 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100839 (_ BitVec 32)) SeekEntryResult!12844)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100839 (_ BitVec 32)) SeekEntryResult!12844)

(assert (=> b!1513135 (= e!844540 (= (seekEntryOrOpen!0 lt!655842 lt!655843 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655842 lt!655843 mask!2512)))))

(declare-fun res!1033101 () Bool)

(assert (=> start!129070 (=> (not res!1033101) (not e!844538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129070 (= res!1033101 (validMask!0 mask!2512))))

(assert (=> start!129070 e!844538))

(assert (=> start!129070 true))

(declare-fun array_inv!37597 (array!100839) Bool)

(assert (=> start!129070 (array_inv!37597 a!2804)))

(declare-fun b!1513131 () Bool)

(assert (=> b!1513131 (= e!844543 e!844540)))

(declare-fun res!1033109 () Bool)

(assert (=> b!1513131 (=> (not res!1033109) (not e!844540))))

(assert (=> b!1513131 (= res!1033109 (= (seekEntryOrOpen!0 (select (arr!48652 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48652 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!129070 res!1033101) b!1513133))

(assert (= (and b!1513133 res!1033103) b!1513126))

(assert (= (and b!1513126 res!1033097) b!1513130))

(assert (= (and b!1513130 res!1033099) b!1513128))

(assert (= (and b!1513128 res!1033110) b!1513125))

(assert (= (and b!1513125 res!1033100) b!1513122))

(assert (= (and b!1513122 res!1033107) b!1513129))

(assert (= (and b!1513129 res!1033104) b!1513134))

(assert (= (and b!1513134 res!1033098) b!1513123))

(assert (= (and b!1513123 res!1033106) b!1513127))

(assert (= (and b!1513127 res!1033108) b!1513132))

(assert (= (and b!1513132 res!1033102) b!1513124))

(assert (= (and b!1513124 (not res!1033105)) b!1513131))

(assert (= (and b!1513131 res!1033109) b!1513135))

(declare-fun m!1396011 () Bool)

(assert (=> b!1513125 m!1396011))

(declare-fun m!1396013 () Bool)

(assert (=> start!129070 m!1396013))

(declare-fun m!1396015 () Bool)

(assert (=> start!129070 m!1396015))

(declare-fun m!1396017 () Bool)

(assert (=> b!1513129 m!1396017))

(assert (=> b!1513129 m!1396017))

(declare-fun m!1396019 () Bool)

(assert (=> b!1513129 m!1396019))

(assert (=> b!1513129 m!1396019))

(assert (=> b!1513129 m!1396017))

(declare-fun m!1396021 () Bool)

(assert (=> b!1513129 m!1396021))

(declare-fun m!1396023 () Bool)

(assert (=> b!1513135 m!1396023))

(declare-fun m!1396025 () Bool)

(assert (=> b!1513135 m!1396025))

(declare-fun m!1396027 () Bool)

(assert (=> b!1513128 m!1396027))

(declare-fun m!1396029 () Bool)

(assert (=> b!1513126 m!1396029))

(assert (=> b!1513126 m!1396029))

(declare-fun m!1396031 () Bool)

(assert (=> b!1513126 m!1396031))

(assert (=> b!1513132 m!1396017))

(assert (=> b!1513132 m!1396017))

(declare-fun m!1396033 () Bool)

(assert (=> b!1513132 m!1396033))

(assert (=> b!1513134 m!1396017))

(assert (=> b!1513134 m!1396017))

(declare-fun m!1396035 () Bool)

(assert (=> b!1513134 m!1396035))

(declare-fun m!1396037 () Bool)

(assert (=> b!1513127 m!1396037))

(declare-fun m!1396039 () Bool)

(assert (=> b!1513127 m!1396039))

(assert (=> b!1513124 m!1396017))

(declare-fun m!1396041 () Bool)

(assert (=> b!1513124 m!1396041))

(declare-fun m!1396043 () Bool)

(assert (=> b!1513123 m!1396043))

(assert (=> b!1513123 m!1396043))

(declare-fun m!1396045 () Bool)

(assert (=> b!1513123 m!1396045))

(declare-fun m!1396047 () Bool)

(assert (=> b!1513123 m!1396047))

(declare-fun m!1396049 () Bool)

(assert (=> b!1513123 m!1396049))

(assert (=> b!1513130 m!1396017))

(assert (=> b!1513130 m!1396017))

(declare-fun m!1396051 () Bool)

(assert (=> b!1513130 m!1396051))

(assert (=> b!1513131 m!1396017))

(assert (=> b!1513131 m!1396017))

(declare-fun m!1396053 () Bool)

(assert (=> b!1513131 m!1396053))

(assert (=> b!1513131 m!1396017))

(declare-fun m!1396055 () Bool)

(assert (=> b!1513131 m!1396055))

(push 1)

