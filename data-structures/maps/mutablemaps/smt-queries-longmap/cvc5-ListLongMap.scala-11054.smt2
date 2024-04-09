; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129202 () Bool)

(assert start!129202)

(declare-fun b!1515831 () Bool)

(declare-fun res!1035810 () Bool)

(declare-fun e!845931 () Bool)

(assert (=> b!1515831 (=> (not res!1035810) (not e!845931))))

(declare-datatypes ((array!100971 0))(
  ( (array!100972 (arr!48718 (Array (_ BitVec 32) (_ BitVec 64))) (size!49269 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100971)

(declare-datatypes ((List!35381 0))(
  ( (Nil!35378) (Cons!35377 (h!36790 (_ BitVec 64)) (t!50082 List!35381)) )
))
(declare-fun arrayNoDuplicates!0 (array!100971 (_ BitVec 32) List!35381) Bool)

(assert (=> b!1515831 (= res!1035810 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35378))))

(declare-fun b!1515832 () Bool)

(declare-fun res!1035806 () Bool)

(assert (=> b!1515832 (=> (not res!1035806) (not e!845931))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515832 (= res!1035806 (validKeyInArray!0 (select (arr!48718 a!2804) j!70)))))

(declare-fun b!1515833 () Bool)

(declare-fun e!845929 () Bool)

(declare-fun e!845933 () Bool)

(assert (=> b!1515833 (= e!845929 e!845933)))

(declare-fun res!1035807 () Bool)

(assert (=> b!1515833 (=> (not res!1035807) (not e!845933))))

(declare-datatypes ((SeekEntryResult!12910 0))(
  ( (MissingZero!12910 (index!54034 (_ BitVec 32))) (Found!12910 (index!54035 (_ BitVec 32))) (Intermediate!12910 (undefined!13722 Bool) (index!54036 (_ BitVec 32)) (x!135745 (_ BitVec 32))) (Undefined!12910) (MissingVacant!12910 (index!54037 (_ BitVec 32))) )
))
(declare-fun lt!657154 () SeekEntryResult!12910)

(declare-fun lt!657160 () array!100971)

(declare-fun lt!657156 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100971 (_ BitVec 32)) SeekEntryResult!12910)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515833 (= res!1035807 (= lt!657154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657156 mask!2512) lt!657156 lt!657160 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515833 (= lt!657156 (select (store (arr!48718 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515833 (= lt!657160 (array!100972 (store (arr!48718 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49269 a!2804)))))

(declare-fun b!1515834 () Bool)

(assert (=> b!1515834 (= e!845931 e!845929)))

(declare-fun res!1035814 () Bool)

(assert (=> b!1515834 (=> (not res!1035814) (not e!845929))))

(declare-fun lt!657158 () SeekEntryResult!12910)

(assert (=> b!1515834 (= res!1035814 (= lt!657154 lt!657158))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515834 (= lt!657158 (Intermediate!12910 false resIndex!21 resX!21))))

(assert (=> b!1515834 (= lt!657154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48718 a!2804) j!70) mask!2512) (select (arr!48718 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515835 () Bool)

(declare-fun res!1035813 () Bool)

(assert (=> b!1515835 (=> (not res!1035813) (not e!845931))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1515835 (= res!1035813 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49269 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49269 a!2804))))))

(declare-fun b!1515836 () Bool)

(declare-fun e!845932 () Bool)

(assert (=> b!1515836 (= e!845932 (validKeyInArray!0 lt!657156))))

(declare-fun b!1515838 () Bool)

(declare-fun res!1035817 () Bool)

(assert (=> b!1515838 (=> (not res!1035817) (not e!845931))))

(assert (=> b!1515838 (= res!1035817 (validKeyInArray!0 (select (arr!48718 a!2804) i!961)))))

(declare-fun b!1515839 () Bool)

(declare-fun res!1035815 () Bool)

(assert (=> b!1515839 (=> (not res!1035815) (not e!845931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100971 (_ BitVec 32)) Bool)

(assert (=> b!1515839 (= res!1035815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515840 () Bool)

(declare-fun e!845928 () Bool)

(assert (=> b!1515840 (= e!845928 e!845932)))

(declare-fun res!1035808 () Bool)

(assert (=> b!1515840 (=> res!1035808 e!845932)))

(assert (=> b!1515840 (= res!1035808 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!657157 () SeekEntryResult!12910)

(declare-fun lt!657163 () SeekEntryResult!12910)

(assert (=> b!1515840 (= lt!657157 lt!657163)))

(declare-datatypes ((Unit!50644 0))(
  ( (Unit!50645) )
))
(declare-fun lt!657155 () Unit!50644)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50644)

(assert (=> b!1515840 (= lt!657155 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515841 () Bool)

(declare-fun res!1035816 () Bool)

(assert (=> b!1515841 (=> (not res!1035816) (not e!845931))))

(assert (=> b!1515841 (= res!1035816 (and (= (size!49269 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49269 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49269 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515842 () Bool)

(declare-fun res!1035811 () Bool)

(assert (=> b!1515842 (=> (not res!1035811) (not e!845929))))

(assert (=> b!1515842 (= res!1035811 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48718 a!2804) j!70) a!2804 mask!2512) lt!657158))))

(declare-fun e!845930 () Bool)

(declare-fun b!1515843 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100971 (_ BitVec 32)) SeekEntryResult!12910)

(assert (=> b!1515843 (= e!845930 (= (seekEntry!0 (select (arr!48718 a!2804) j!70) a!2804 mask!2512) (Found!12910 j!70)))))

(declare-fun b!1515844 () Bool)

(declare-fun e!845927 () Bool)

(assert (=> b!1515844 (= e!845933 (not e!845927))))

(declare-fun res!1035819 () Bool)

(assert (=> b!1515844 (=> res!1035819 e!845927)))

(assert (=> b!1515844 (= res!1035819 (or (not (= (select (arr!48718 a!2804) j!70) lt!657156)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48718 a!2804) index!487) (select (arr!48718 a!2804) j!70)) (not (= (select (arr!48718 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515844 e!845930))

(declare-fun res!1035809 () Bool)

(assert (=> b!1515844 (=> (not res!1035809) (not e!845930))))

(assert (=> b!1515844 (= res!1035809 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!657162 () Unit!50644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50644)

(assert (=> b!1515844 (= lt!657162 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1035812 () Bool)

(assert (=> start!129202 (=> (not res!1035812) (not e!845931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129202 (= res!1035812 (validMask!0 mask!2512))))

(assert (=> start!129202 e!845931))

(assert (=> start!129202 true))

(declare-fun array_inv!37663 (array!100971) Bool)

(assert (=> start!129202 (array_inv!37663 a!2804)))

(declare-fun b!1515837 () Bool)

(assert (=> b!1515837 (= e!845927 e!845928)))

(declare-fun res!1035818 () Bool)

(assert (=> b!1515837 (=> res!1035818 e!845928)))

(assert (=> b!1515837 (= res!1035818 (not (= lt!657163 (Found!12910 j!70))))))

(declare-fun lt!657161 () SeekEntryResult!12910)

(assert (=> b!1515837 (= lt!657161 lt!657157)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100971 (_ BitVec 32)) SeekEntryResult!12910)

(assert (=> b!1515837 (= lt!657157 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657156 lt!657160 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100971 (_ BitVec 32)) SeekEntryResult!12910)

(assert (=> b!1515837 (= lt!657161 (seekEntryOrOpen!0 lt!657156 lt!657160 mask!2512))))

(declare-fun lt!657159 () SeekEntryResult!12910)

(assert (=> b!1515837 (= lt!657159 lt!657163)))

(assert (=> b!1515837 (= lt!657163 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48718 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515837 (= lt!657159 (seekEntryOrOpen!0 (select (arr!48718 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129202 res!1035812) b!1515841))

(assert (= (and b!1515841 res!1035816) b!1515838))

(assert (= (and b!1515838 res!1035817) b!1515832))

(assert (= (and b!1515832 res!1035806) b!1515839))

(assert (= (and b!1515839 res!1035815) b!1515831))

(assert (= (and b!1515831 res!1035810) b!1515835))

(assert (= (and b!1515835 res!1035813) b!1515834))

(assert (= (and b!1515834 res!1035814) b!1515842))

(assert (= (and b!1515842 res!1035811) b!1515833))

(assert (= (and b!1515833 res!1035807) b!1515844))

(assert (= (and b!1515844 res!1035809) b!1515843))

(assert (= (and b!1515844 (not res!1035819)) b!1515837))

(assert (= (and b!1515837 (not res!1035818)) b!1515840))

(assert (= (and b!1515840 (not res!1035808)) b!1515836))

(declare-fun m!1399089 () Bool)

(assert (=> b!1515838 m!1399089))

(assert (=> b!1515838 m!1399089))

(declare-fun m!1399091 () Bool)

(assert (=> b!1515838 m!1399091))

(declare-fun m!1399093 () Bool)

(assert (=> b!1515840 m!1399093))

(declare-fun m!1399095 () Bool)

(assert (=> b!1515836 m!1399095))

(declare-fun m!1399097 () Bool)

(assert (=> b!1515837 m!1399097))

(declare-fun m!1399099 () Bool)

(assert (=> b!1515837 m!1399099))

(declare-fun m!1399101 () Bool)

(assert (=> b!1515837 m!1399101))

(assert (=> b!1515837 m!1399097))

(declare-fun m!1399103 () Bool)

(assert (=> b!1515837 m!1399103))

(declare-fun m!1399105 () Bool)

(assert (=> b!1515837 m!1399105))

(assert (=> b!1515837 m!1399097))

(assert (=> b!1515842 m!1399097))

(assert (=> b!1515842 m!1399097))

(declare-fun m!1399107 () Bool)

(assert (=> b!1515842 m!1399107))

(assert (=> b!1515843 m!1399097))

(assert (=> b!1515843 m!1399097))

(declare-fun m!1399109 () Bool)

(assert (=> b!1515843 m!1399109))

(declare-fun m!1399111 () Bool)

(assert (=> b!1515833 m!1399111))

(assert (=> b!1515833 m!1399111))

(declare-fun m!1399113 () Bool)

(assert (=> b!1515833 m!1399113))

(declare-fun m!1399115 () Bool)

(assert (=> b!1515833 m!1399115))

(declare-fun m!1399117 () Bool)

(assert (=> b!1515833 m!1399117))

(declare-fun m!1399119 () Bool)

(assert (=> b!1515839 m!1399119))

(declare-fun m!1399121 () Bool)

(assert (=> start!129202 m!1399121))

(declare-fun m!1399123 () Bool)

(assert (=> start!129202 m!1399123))

(assert (=> b!1515834 m!1399097))

(assert (=> b!1515834 m!1399097))

(declare-fun m!1399125 () Bool)

(assert (=> b!1515834 m!1399125))

(assert (=> b!1515834 m!1399125))

(assert (=> b!1515834 m!1399097))

(declare-fun m!1399127 () Bool)

(assert (=> b!1515834 m!1399127))

(declare-fun m!1399129 () Bool)

(assert (=> b!1515831 m!1399129))

(assert (=> b!1515844 m!1399097))

(declare-fun m!1399131 () Bool)

(assert (=> b!1515844 m!1399131))

(declare-fun m!1399133 () Bool)

(assert (=> b!1515844 m!1399133))

(declare-fun m!1399135 () Bool)

(assert (=> b!1515844 m!1399135))

(assert (=> b!1515832 m!1399097))

(assert (=> b!1515832 m!1399097))

(declare-fun m!1399137 () Bool)

(assert (=> b!1515832 m!1399137))

(push 1)

