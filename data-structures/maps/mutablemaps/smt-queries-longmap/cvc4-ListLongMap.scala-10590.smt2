; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124724 () Bool)

(assert start!124724)

(declare-fun b!1444761 () Bool)

(declare-fun res!976820 () Bool)

(declare-fun e!813985 () Bool)

(assert (=> b!1444761 (=> (not res!976820) (not e!813985))))

(declare-fun e!813984 () Bool)

(assert (=> b!1444761 (= res!976820 e!813984)))

(declare-fun c!133487 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444761 (= c!133487 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444762 () Bool)

(declare-fun res!976819 () Bool)

(assert (=> b!1444762 (=> (not res!976819) (not e!813985))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444762 (= res!976819 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444763 () Bool)

(declare-fun res!976818 () Bool)

(declare-fun e!813986 () Bool)

(assert (=> b!1444763 (=> (not res!976818) (not e!813986))))

(declare-datatypes ((array!98089 0))(
  ( (array!98090 (arr!47328 (Array (_ BitVec 32) (_ BitVec 64))) (size!47879 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98089)

(declare-datatypes ((List!34009 0))(
  ( (Nil!34006) (Cons!34005 (h!35355 (_ BitVec 64)) (t!48710 List!34009)) )
))
(declare-fun arrayNoDuplicates!0 (array!98089 (_ BitVec 32) List!34009) Bool)

(assert (=> b!1444763 (= res!976818 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34006))))

(declare-fun res!976821 () Bool)

(assert (=> start!124724 (=> (not res!976821) (not e!813986))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124724 (= res!976821 (validMask!0 mask!2687))))

(assert (=> start!124724 e!813986))

(assert (=> start!124724 true))

(declare-fun array_inv!36273 (array!98089) Bool)

(assert (=> start!124724 (array_inv!36273 a!2862)))

(declare-fun b!1444764 () Bool)

(declare-fun res!976814 () Bool)

(declare-fun e!813980 () Bool)

(assert (=> b!1444764 (=> (not res!976814) (not e!813980))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11603 0))(
  ( (MissingZero!11603 (index!48803 (_ BitVec 32))) (Found!11603 (index!48804 (_ BitVec 32))) (Intermediate!11603 (undefined!12415 Bool) (index!48805 (_ BitVec 32)) (x!130495 (_ BitVec 32))) (Undefined!11603) (MissingVacant!11603 (index!48806 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98089 (_ BitVec 32)) SeekEntryResult!11603)

(assert (=> b!1444764 (= res!976814 (= (seekEntryOrOpen!0 (select (arr!47328 a!2862) j!93) a!2862 mask!2687) (Found!11603 j!93)))))

(declare-fun b!1444765 () Bool)

(declare-fun res!976823 () Bool)

(assert (=> b!1444765 (=> (not res!976823) (not e!813986))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1444765 (= res!976823 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47879 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47879 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47879 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444766 () Bool)

(declare-fun res!976816 () Bool)

(assert (=> b!1444766 (=> (not res!976816) (not e!813986))))

(assert (=> b!1444766 (= res!976816 (and (= (size!47879 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47879 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47879 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444767 () Bool)

(assert (=> b!1444767 (= e!813980 (or (= (select (arr!47328 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47328 a!2862) intermediateBeforeIndex!19) (select (arr!47328 a!2862) j!93))))))

(declare-fun b!1444768 () Bool)

(declare-fun e!813982 () Bool)

(assert (=> b!1444768 (= e!813986 e!813982)))

(declare-fun res!976822 () Bool)

(assert (=> b!1444768 (=> (not res!976822) (not e!813982))))

(assert (=> b!1444768 (= res!976822 (= (select (store (arr!47328 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634260 () array!98089)

(assert (=> b!1444768 (= lt!634260 (array!98090 (store (arr!47328 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47879 a!2862)))))

(declare-fun b!1444769 () Bool)

(declare-fun res!976826 () Bool)

(assert (=> b!1444769 (=> (not res!976826) (not e!813986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444769 (= res!976826 (validKeyInArray!0 (select (arr!47328 a!2862) i!1006)))))

(declare-fun b!1444770 () Bool)

(declare-fun res!976824 () Bool)

(assert (=> b!1444770 (=> (not res!976824) (not e!813986))))

(assert (=> b!1444770 (= res!976824 (validKeyInArray!0 (select (arr!47328 a!2862) j!93)))))

(declare-fun b!1444771 () Bool)

(declare-fun res!976815 () Bool)

(declare-fun e!813981 () Bool)

(assert (=> b!1444771 (=> (not res!976815) (not e!813981))))

(declare-fun lt!634262 () SeekEntryResult!11603)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98089 (_ BitVec 32)) SeekEntryResult!11603)

(assert (=> b!1444771 (= res!976815 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47328 a!2862) j!93) a!2862 mask!2687) lt!634262))))

(declare-fun b!1444772 () Bool)

(declare-fun res!976813 () Bool)

(assert (=> b!1444772 (=> (not res!976813) (not e!813986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98089 (_ BitVec 32)) Bool)

(assert (=> b!1444772 (= res!976813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!634264 () (_ BitVec 64))

(declare-fun b!1444773 () Bool)

(declare-fun lt!634261 () SeekEntryResult!11603)

(assert (=> b!1444773 (= e!813984 (= lt!634261 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634264 lt!634260 mask!2687)))))

(declare-fun b!1444774 () Bool)

(assert (=> b!1444774 (= e!813982 e!813981)))

(declare-fun res!976825 () Bool)

(assert (=> b!1444774 (=> (not res!976825) (not e!813981))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444774 (= res!976825 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47328 a!2862) j!93) mask!2687) (select (arr!47328 a!2862) j!93) a!2862 mask!2687) lt!634262))))

(assert (=> b!1444774 (= lt!634262 (Intermediate!11603 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444775 () Bool)

(assert (=> b!1444775 (= e!813981 e!813985)))

(declare-fun res!976827 () Bool)

(assert (=> b!1444775 (=> (not res!976827) (not e!813985))))

(assert (=> b!1444775 (= res!976827 (= lt!634261 (Intermediate!11603 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444775 (= lt!634261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634264 mask!2687) lt!634264 lt!634260 mask!2687))))

(assert (=> b!1444775 (= lt!634264 (select (store (arr!47328 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444776 () Bool)

(assert (=> b!1444776 (= e!813985 (not (or (and (= (select (arr!47328 a!2862) index!646) (select (store (arr!47328 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47328 a!2862) index!646) (select (arr!47328 a!2862) j!93))) (not (= (select (arr!47328 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1444776 e!813980))

(declare-fun res!976817 () Bool)

(assert (=> b!1444776 (=> (not res!976817) (not e!813980))))

(assert (=> b!1444776 (= res!976817 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48650 0))(
  ( (Unit!48651) )
))
(declare-fun lt!634263 () Unit!48650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48650)

(assert (=> b!1444776 (= lt!634263 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444777 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98089 (_ BitVec 32)) SeekEntryResult!11603)

(assert (=> b!1444777 (= e!813984 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634264 lt!634260 mask!2687) (seekEntryOrOpen!0 lt!634264 lt!634260 mask!2687)))))

(assert (= (and start!124724 res!976821) b!1444766))

(assert (= (and b!1444766 res!976816) b!1444769))

(assert (= (and b!1444769 res!976826) b!1444770))

(assert (= (and b!1444770 res!976824) b!1444772))

(assert (= (and b!1444772 res!976813) b!1444763))

(assert (= (and b!1444763 res!976818) b!1444765))

(assert (= (and b!1444765 res!976823) b!1444768))

(assert (= (and b!1444768 res!976822) b!1444774))

(assert (= (and b!1444774 res!976825) b!1444771))

(assert (= (and b!1444771 res!976815) b!1444775))

(assert (= (and b!1444775 res!976827) b!1444761))

(assert (= (and b!1444761 c!133487) b!1444773))

(assert (= (and b!1444761 (not c!133487)) b!1444777))

(assert (= (and b!1444761 res!976820) b!1444762))

(assert (= (and b!1444762 res!976819) b!1444776))

(assert (= (and b!1444776 res!976817) b!1444764))

(assert (= (and b!1444764 res!976814) b!1444767))

(declare-fun m!1333819 () Bool)

(assert (=> b!1444774 m!1333819))

(assert (=> b!1444774 m!1333819))

(declare-fun m!1333821 () Bool)

(assert (=> b!1444774 m!1333821))

(assert (=> b!1444774 m!1333821))

(assert (=> b!1444774 m!1333819))

(declare-fun m!1333823 () Bool)

(assert (=> b!1444774 m!1333823))

(declare-fun m!1333825 () Bool)

(assert (=> b!1444777 m!1333825))

(declare-fun m!1333827 () Bool)

(assert (=> b!1444777 m!1333827))

(assert (=> b!1444764 m!1333819))

(assert (=> b!1444764 m!1333819))

(declare-fun m!1333829 () Bool)

(assert (=> b!1444764 m!1333829))

(declare-fun m!1333831 () Bool)

(assert (=> start!124724 m!1333831))

(declare-fun m!1333833 () Bool)

(assert (=> start!124724 m!1333833))

(declare-fun m!1333835 () Bool)

(assert (=> b!1444772 m!1333835))

(declare-fun m!1333837 () Bool)

(assert (=> b!1444768 m!1333837))

(declare-fun m!1333839 () Bool)

(assert (=> b!1444768 m!1333839))

(declare-fun m!1333841 () Bool)

(assert (=> b!1444776 m!1333841))

(assert (=> b!1444776 m!1333837))

(declare-fun m!1333843 () Bool)

(assert (=> b!1444776 m!1333843))

(declare-fun m!1333845 () Bool)

(assert (=> b!1444776 m!1333845))

(declare-fun m!1333847 () Bool)

(assert (=> b!1444776 m!1333847))

(assert (=> b!1444776 m!1333819))

(declare-fun m!1333849 () Bool)

(assert (=> b!1444769 m!1333849))

(assert (=> b!1444769 m!1333849))

(declare-fun m!1333851 () Bool)

(assert (=> b!1444769 m!1333851))

(declare-fun m!1333853 () Bool)

(assert (=> b!1444767 m!1333853))

(assert (=> b!1444767 m!1333819))

(assert (=> b!1444770 m!1333819))

(assert (=> b!1444770 m!1333819))

(declare-fun m!1333855 () Bool)

(assert (=> b!1444770 m!1333855))

(assert (=> b!1444771 m!1333819))

(assert (=> b!1444771 m!1333819))

(declare-fun m!1333857 () Bool)

(assert (=> b!1444771 m!1333857))

(declare-fun m!1333859 () Bool)

(assert (=> b!1444773 m!1333859))

(declare-fun m!1333861 () Bool)

(assert (=> b!1444775 m!1333861))

(assert (=> b!1444775 m!1333861))

(declare-fun m!1333863 () Bool)

(assert (=> b!1444775 m!1333863))

(assert (=> b!1444775 m!1333837))

(declare-fun m!1333865 () Bool)

(assert (=> b!1444775 m!1333865))

(declare-fun m!1333867 () Bool)

(assert (=> b!1444763 m!1333867))

(push 1)

(assert (not b!1444769))

(assert (not b!1444770))

(assert (not b!1444777))

(assert (not b!1444763))

(assert (not start!124724))

(assert (not b!1444773))

