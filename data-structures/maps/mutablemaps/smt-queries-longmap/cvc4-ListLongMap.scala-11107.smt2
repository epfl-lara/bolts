; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129782 () Bool)

(assert start!129782)

(declare-fun b!1522725 () Bool)

(declare-fun res!1041778 () Bool)

(declare-fun e!849079 () Bool)

(assert (=> b!1522725 (=> (not res!1041778) (not e!849079))))

(declare-datatypes ((SeekEntryResult!13065 0))(
  ( (MissingZero!13065 (index!54654 (_ BitVec 32))) (Found!13065 (index!54655 (_ BitVec 32))) (Intermediate!13065 (undefined!13877 Bool) (index!54656 (_ BitVec 32)) (x!136354 (_ BitVec 32))) (Undefined!13065) (MissingVacant!13065 (index!54657 (_ BitVec 32))) )
))
(declare-fun lt!659715 () SeekEntryResult!13065)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101305 0))(
  ( (array!101306 (arr!48879 (Array (_ BitVec 32) (_ BitVec 64))) (size!49430 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101305)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101305 (_ BitVec 32)) SeekEntryResult!13065)

(assert (=> b!1522725 (= res!1041778 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48879 a!2804) j!70) a!2804 mask!2512) lt!659715))))

(declare-fun b!1522726 () Bool)

(declare-fun e!849080 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101305 (_ BitVec 32)) SeekEntryResult!13065)

(assert (=> b!1522726 (= e!849080 (= (seekEntry!0 (select (arr!48879 a!2804) j!70) a!2804 mask!2512) (Found!13065 j!70)))))

(declare-fun b!1522727 () Bool)

(declare-fun res!1041780 () Bool)

(declare-fun e!849078 () Bool)

(assert (=> b!1522727 (=> (not res!1041780) (not e!849078))))

(declare-datatypes ((List!35542 0))(
  ( (Nil!35539) (Cons!35538 (h!36963 (_ BitVec 64)) (t!50243 List!35542)) )
))
(declare-fun arrayNoDuplicates!0 (array!101305 (_ BitVec 32) List!35542) Bool)

(assert (=> b!1522727 (= res!1041780 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35539))))

(declare-fun b!1522728 () Bool)

(assert (=> b!1522728 (= e!849079 (not true))))

(assert (=> b!1522728 e!849080))

(declare-fun res!1041779 () Bool)

(assert (=> b!1522728 (=> (not res!1041779) (not e!849080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101305 (_ BitVec 32)) Bool)

(assert (=> b!1522728 (= res!1041779 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50870 0))(
  ( (Unit!50871) )
))
(declare-fun lt!659716 () Unit!50870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50870)

(assert (=> b!1522728 (= lt!659716 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522729 () Bool)

(declare-fun res!1041774 () Bool)

(assert (=> b!1522729 (=> (not res!1041774) (not e!849078))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522729 (= res!1041774 (validKeyInArray!0 (select (arr!48879 a!2804) i!961)))))

(declare-fun b!1522730 () Bool)

(declare-fun res!1041777 () Bool)

(assert (=> b!1522730 (=> (not res!1041777) (not e!849078))))

(assert (=> b!1522730 (= res!1041777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1041776 () Bool)

(assert (=> start!129782 (=> (not res!1041776) (not e!849078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129782 (= res!1041776 (validMask!0 mask!2512))))

(assert (=> start!129782 e!849078))

(assert (=> start!129782 true))

(declare-fun array_inv!37824 (array!101305) Bool)

(assert (=> start!129782 (array_inv!37824 a!2804)))

(declare-fun b!1522731 () Bool)

(declare-fun res!1041770 () Bool)

(assert (=> b!1522731 (=> (not res!1041770) (not e!849079))))

(declare-fun lt!659714 () SeekEntryResult!13065)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522731 (= res!1041770 (= lt!659714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48879 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48879 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101306 (store (arr!48879 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49430 a!2804)) mask!2512)))))

(declare-fun b!1522732 () Bool)

(declare-fun res!1041772 () Bool)

(assert (=> b!1522732 (=> (not res!1041772) (not e!849078))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522732 (= res!1041772 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49430 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49430 a!2804))))))

(declare-fun b!1522733 () Bool)

(declare-fun res!1041771 () Bool)

(assert (=> b!1522733 (=> (not res!1041771) (not e!849078))))

(assert (=> b!1522733 (= res!1041771 (and (= (size!49430 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49430 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49430 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522734 () Bool)

(assert (=> b!1522734 (= e!849078 e!849079)))

(declare-fun res!1041773 () Bool)

(assert (=> b!1522734 (=> (not res!1041773) (not e!849079))))

(assert (=> b!1522734 (= res!1041773 (= lt!659714 lt!659715))))

(assert (=> b!1522734 (= lt!659715 (Intermediate!13065 false resIndex!21 resX!21))))

(assert (=> b!1522734 (= lt!659714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48879 a!2804) j!70) mask!2512) (select (arr!48879 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522735 () Bool)

(declare-fun res!1041775 () Bool)

(assert (=> b!1522735 (=> (not res!1041775) (not e!849078))))

(assert (=> b!1522735 (= res!1041775 (validKeyInArray!0 (select (arr!48879 a!2804) j!70)))))

(assert (= (and start!129782 res!1041776) b!1522733))

(assert (= (and b!1522733 res!1041771) b!1522729))

(assert (= (and b!1522729 res!1041774) b!1522735))

(assert (= (and b!1522735 res!1041775) b!1522730))

(assert (= (and b!1522730 res!1041777) b!1522727))

(assert (= (and b!1522727 res!1041780) b!1522732))

(assert (= (and b!1522732 res!1041772) b!1522734))

(assert (= (and b!1522734 res!1041773) b!1522725))

(assert (= (and b!1522725 res!1041778) b!1522731))

(assert (= (and b!1522731 res!1041770) b!1522728))

(assert (= (and b!1522728 res!1041779) b!1522726))

(declare-fun m!1405839 () Bool)

(assert (=> b!1522734 m!1405839))

(assert (=> b!1522734 m!1405839))

(declare-fun m!1405841 () Bool)

(assert (=> b!1522734 m!1405841))

(assert (=> b!1522734 m!1405841))

(assert (=> b!1522734 m!1405839))

(declare-fun m!1405843 () Bool)

(assert (=> b!1522734 m!1405843))

(declare-fun m!1405845 () Bool)

(assert (=> b!1522729 m!1405845))

(assert (=> b!1522729 m!1405845))

(declare-fun m!1405847 () Bool)

(assert (=> b!1522729 m!1405847))

(declare-fun m!1405849 () Bool)

(assert (=> start!129782 m!1405849))

(declare-fun m!1405851 () Bool)

(assert (=> start!129782 m!1405851))

(assert (=> b!1522735 m!1405839))

(assert (=> b!1522735 m!1405839))

(declare-fun m!1405853 () Bool)

(assert (=> b!1522735 m!1405853))

(declare-fun m!1405855 () Bool)

(assert (=> b!1522728 m!1405855))

(declare-fun m!1405857 () Bool)

(assert (=> b!1522728 m!1405857))

(assert (=> b!1522725 m!1405839))

(assert (=> b!1522725 m!1405839))

(declare-fun m!1405859 () Bool)

(assert (=> b!1522725 m!1405859))

(declare-fun m!1405861 () Bool)

(assert (=> b!1522730 m!1405861))

(declare-fun m!1405863 () Bool)

(assert (=> b!1522731 m!1405863))

(declare-fun m!1405865 () Bool)

(assert (=> b!1522731 m!1405865))

(assert (=> b!1522731 m!1405865))

(declare-fun m!1405867 () Bool)

(assert (=> b!1522731 m!1405867))

(assert (=> b!1522731 m!1405867))

(assert (=> b!1522731 m!1405865))

(declare-fun m!1405869 () Bool)

(assert (=> b!1522731 m!1405869))

(declare-fun m!1405871 () Bool)

(assert (=> b!1522727 m!1405871))

(assert (=> b!1522726 m!1405839))

(assert (=> b!1522726 m!1405839))

(declare-fun m!1405873 () Bool)

(assert (=> b!1522726 m!1405873))

(push 1)

(assert (not b!1522729))

(assert (not b!1522726))

