; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129370 () Bool)

(assert start!129370)

(declare-fun res!1039071 () Bool)

(declare-fun e!847427 () Bool)

(assert (=> start!129370 (=> (not res!1039071) (not e!847427))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129370 (= res!1039071 (validMask!0 mask!2512))))

(assert (=> start!129370 e!847427))

(assert (=> start!129370 true))

(declare-datatypes ((array!101139 0))(
  ( (array!101140 (arr!48802 (Array (_ BitVec 32) (_ BitVec 64))) (size!49353 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101139)

(declare-fun array_inv!37747 (array!101139) Bool)

(assert (=> start!129370 (array_inv!37747 a!2804)))

(declare-fun b!1519089 () Bool)

(declare-fun e!847429 () Bool)

(declare-fun e!847432 () Bool)

(assert (=> b!1519089 (= e!847429 e!847432)))

(declare-fun res!1039064 () Bool)

(assert (=> b!1519089 (=> (not res!1039064) (not e!847432))))

(declare-datatypes ((SeekEntryResult!12994 0))(
  ( (MissingZero!12994 (index!54370 (_ BitVec 32))) (Found!12994 (index!54371 (_ BitVec 32))) (Intermediate!12994 (undefined!13806 Bool) (index!54372 (_ BitVec 32)) (x!136053 (_ BitVec 32))) (Undefined!12994) (MissingVacant!12994 (index!54373 (_ BitVec 32))) )
))
(declare-fun lt!658471 () SeekEntryResult!12994)

(declare-fun lt!658473 () (_ BitVec 64))

(declare-fun lt!658474 () array!101139)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101139 (_ BitVec 32)) SeekEntryResult!12994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519089 (= res!1039064 (= lt!658471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658473 mask!2512) lt!658473 lt!658474 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1519089 (= lt!658473 (select (store (arr!48802 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519089 (= lt!658474 (array!101140 (store (arr!48802 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49353 a!2804)))))

(declare-fun b!1519090 () Bool)

(declare-fun res!1039072 () Bool)

(assert (=> b!1519090 (=> (not res!1039072) (not e!847427))))

(declare-datatypes ((List!35465 0))(
  ( (Nil!35462) (Cons!35461 (h!36874 (_ BitVec 64)) (t!50166 List!35465)) )
))
(declare-fun arrayNoDuplicates!0 (array!101139 (_ BitVec 32) List!35465) Bool)

(assert (=> b!1519090 (= res!1039072 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35462))))

(declare-fun b!1519091 () Bool)

(declare-fun e!847428 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101139 (_ BitVec 32)) SeekEntryResult!12994)

(assert (=> b!1519091 (= e!847428 (= (seekEntry!0 (select (arr!48802 a!2804) j!70) a!2804 mask!2512) (Found!12994 j!70)))))

(declare-fun b!1519092 () Bool)

(declare-fun res!1039073 () Bool)

(assert (=> b!1519092 (=> (not res!1039073) (not e!847427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519092 (= res!1039073 (validKeyInArray!0 (select (arr!48802 a!2804) i!961)))))

(declare-fun b!1519093 () Bool)

(declare-fun res!1039067 () Bool)

(assert (=> b!1519093 (=> (not res!1039067) (not e!847427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101139 (_ BitVec 32)) Bool)

(assert (=> b!1519093 (= res!1039067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519094 () Bool)

(declare-fun res!1039065 () Bool)

(assert (=> b!1519094 (=> (not res!1039065) (not e!847427))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1519094 (= res!1039065 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49353 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49353 a!2804))))))

(declare-fun b!1519095 () Bool)

(declare-fun e!847431 () Bool)

(declare-fun e!847433 () Bool)

(assert (=> b!1519095 (= e!847431 e!847433)))

(declare-fun res!1039066 () Bool)

(assert (=> b!1519095 (=> res!1039066 e!847433)))

(declare-fun lt!658475 () (_ BitVec 32))

(assert (=> b!1519095 (= res!1039066 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658475 #b00000000000000000000000000000000) (bvsge lt!658475 (size!49353 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519095 (= lt!658475 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519096 () Bool)

(declare-fun res!1039069 () Bool)

(assert (=> b!1519096 (=> (not res!1039069) (not e!847429))))

(declare-fun lt!658477 () SeekEntryResult!12994)

(assert (=> b!1519096 (= res!1039069 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48802 a!2804) j!70) a!2804 mask!2512) lt!658477))))

(declare-fun b!1519097 () Bool)

(declare-fun res!1039068 () Bool)

(assert (=> b!1519097 (=> (not res!1039068) (not e!847427))))

(assert (=> b!1519097 (= res!1039068 (validKeyInArray!0 (select (arr!48802 a!2804) j!70)))))

(declare-fun b!1519098 () Bool)

(assert (=> b!1519098 (= e!847432 (not e!847431))))

(declare-fun res!1039070 () Bool)

(assert (=> b!1519098 (=> res!1039070 e!847431)))

(assert (=> b!1519098 (= res!1039070 (or (not (= (select (arr!48802 a!2804) j!70) lt!658473)) (= x!534 resX!21)))))

(assert (=> b!1519098 e!847428))

(declare-fun res!1039076 () Bool)

(assert (=> b!1519098 (=> (not res!1039076) (not e!847428))))

(assert (=> b!1519098 (= res!1039076 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50812 0))(
  ( (Unit!50813) )
))
(declare-fun lt!658476 () Unit!50812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50812)

(assert (=> b!1519098 (= lt!658476 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519099 () Bool)

(declare-fun res!1039077 () Bool)

(assert (=> b!1519099 (=> res!1039077 e!847433)))

(assert (=> b!1519099 (= res!1039077 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658475 (select (arr!48802 a!2804) j!70) a!2804 mask!2512) lt!658477)))))

(declare-fun b!1519100 () Bool)

(declare-fun res!1039075 () Bool)

(assert (=> b!1519100 (=> (not res!1039075) (not e!847427))))

(assert (=> b!1519100 (= res!1039075 (and (= (size!49353 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49353 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49353 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519101 () Bool)

(assert (=> b!1519101 (= e!847433 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101139 (_ BitVec 32)) SeekEntryResult!12994)

(assert (=> b!1519101 (= (seekEntryOrOpen!0 (select (arr!48802 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658473 lt!658474 mask!2512))))

(declare-fun lt!658472 () Unit!50812)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50812)

(assert (=> b!1519101 (= lt!658472 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658475 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519102 () Bool)

(assert (=> b!1519102 (= e!847427 e!847429)))

(declare-fun res!1039074 () Bool)

(assert (=> b!1519102 (=> (not res!1039074) (not e!847429))))

(assert (=> b!1519102 (= res!1039074 (= lt!658471 lt!658477))))

(assert (=> b!1519102 (= lt!658477 (Intermediate!12994 false resIndex!21 resX!21))))

(assert (=> b!1519102 (= lt!658471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48802 a!2804) j!70) mask!2512) (select (arr!48802 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129370 res!1039071) b!1519100))

(assert (= (and b!1519100 res!1039075) b!1519092))

(assert (= (and b!1519092 res!1039073) b!1519097))

(assert (= (and b!1519097 res!1039068) b!1519093))

(assert (= (and b!1519093 res!1039067) b!1519090))

(assert (= (and b!1519090 res!1039072) b!1519094))

(assert (= (and b!1519094 res!1039065) b!1519102))

(assert (= (and b!1519102 res!1039074) b!1519096))

(assert (= (and b!1519096 res!1039069) b!1519089))

(assert (= (and b!1519089 res!1039064) b!1519098))

(assert (= (and b!1519098 res!1039076) b!1519091))

(assert (= (and b!1519098 (not res!1039070)) b!1519095))

(assert (= (and b!1519095 (not res!1039066)) b!1519099))

(assert (= (and b!1519099 (not res!1039077)) b!1519101))

(declare-fun m!1402521 () Bool)

(assert (=> b!1519099 m!1402521))

(assert (=> b!1519099 m!1402521))

(declare-fun m!1402523 () Bool)

(assert (=> b!1519099 m!1402523))

(declare-fun m!1402525 () Bool)

(assert (=> b!1519093 m!1402525))

(assert (=> b!1519097 m!1402521))

(assert (=> b!1519097 m!1402521))

(declare-fun m!1402527 () Bool)

(assert (=> b!1519097 m!1402527))

(declare-fun m!1402529 () Bool)

(assert (=> b!1519089 m!1402529))

(assert (=> b!1519089 m!1402529))

(declare-fun m!1402531 () Bool)

(assert (=> b!1519089 m!1402531))

(declare-fun m!1402533 () Bool)

(assert (=> b!1519089 m!1402533))

(declare-fun m!1402535 () Bool)

(assert (=> b!1519089 m!1402535))

(declare-fun m!1402537 () Bool)

(assert (=> b!1519090 m!1402537))

(assert (=> b!1519101 m!1402521))

(assert (=> b!1519101 m!1402521))

(declare-fun m!1402539 () Bool)

(assert (=> b!1519101 m!1402539))

(declare-fun m!1402541 () Bool)

(assert (=> b!1519101 m!1402541))

(declare-fun m!1402543 () Bool)

(assert (=> b!1519101 m!1402543))

(declare-fun m!1402545 () Bool)

(assert (=> start!129370 m!1402545))

(declare-fun m!1402547 () Bool)

(assert (=> start!129370 m!1402547))

(declare-fun m!1402549 () Bool)

(assert (=> b!1519095 m!1402549))

(assert (=> b!1519102 m!1402521))

(assert (=> b!1519102 m!1402521))

(declare-fun m!1402551 () Bool)

(assert (=> b!1519102 m!1402551))

(assert (=> b!1519102 m!1402551))

(assert (=> b!1519102 m!1402521))

(declare-fun m!1402553 () Bool)

(assert (=> b!1519102 m!1402553))

(assert (=> b!1519098 m!1402521))

(declare-fun m!1402555 () Bool)

(assert (=> b!1519098 m!1402555))

(declare-fun m!1402557 () Bool)

(assert (=> b!1519098 m!1402557))

(assert (=> b!1519096 m!1402521))

(assert (=> b!1519096 m!1402521))

(declare-fun m!1402559 () Bool)

(assert (=> b!1519096 m!1402559))

(declare-fun m!1402561 () Bool)

(assert (=> b!1519092 m!1402561))

(assert (=> b!1519092 m!1402561))

(declare-fun m!1402563 () Bool)

(assert (=> b!1519092 m!1402563))

(assert (=> b!1519091 m!1402521))

(assert (=> b!1519091 m!1402521))

(declare-fun m!1402565 () Bool)

(assert (=> b!1519091 m!1402565))

(push 1)

