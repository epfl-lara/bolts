; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129018 () Bool)

(assert start!129018)

(declare-fun b!1512088 () Bool)

(declare-fun res!1032070 () Bool)

(declare-fun e!844103 () Bool)

(assert (=> b!1512088 (=> (not res!1032070) (not e!844103))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100787 0))(
  ( (array!100788 (arr!48626 (Array (_ BitVec 32) (_ BitVec 64))) (size!49177 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100787)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512088 (= res!1032070 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49177 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49177 a!2804))))))

(declare-fun b!1512089 () Bool)

(declare-fun res!1032073 () Bool)

(assert (=> b!1512089 (=> (not res!1032073) (not e!844103))))

(declare-datatypes ((List!35289 0))(
  ( (Nil!35286) (Cons!35285 (h!36698 (_ BitVec 64)) (t!49990 List!35289)) )
))
(declare-fun arrayNoDuplicates!0 (array!100787 (_ BitVec 32) List!35289) Bool)

(assert (=> b!1512089 (= res!1032073 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35286))))

(declare-fun b!1512090 () Bool)

(declare-fun res!1032065 () Bool)

(declare-fun e!844102 () Bool)

(assert (=> b!1512090 (=> (not res!1032065) (not e!844102))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12818 0))(
  ( (MissingZero!12818 (index!53666 (_ BitVec 32))) (Found!12818 (index!53667 (_ BitVec 32))) (Intermediate!12818 (undefined!13630 Bool) (index!53668 (_ BitVec 32)) (x!135405 (_ BitVec 32))) (Undefined!12818) (MissingVacant!12818 (index!53669 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100787 (_ BitVec 32)) SeekEntryResult!12818)

(assert (=> b!1512090 (= res!1032065 (= (seekEntry!0 (select (arr!48626 a!2804) j!70) a!2804 mask!2512) (Found!12818 j!70)))))

(declare-fun b!1512091 () Bool)

(declare-fun res!1032064 () Bool)

(declare-fun e!844101 () Bool)

(assert (=> b!1512091 (=> (not res!1032064) (not e!844101))))

(declare-fun lt!655567 () SeekEntryResult!12818)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100787 (_ BitVec 32)) SeekEntryResult!12818)

(assert (=> b!1512091 (= res!1032064 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48626 a!2804) j!70) a!2804 mask!2512) lt!655567))))

(declare-fun b!1512092 () Bool)

(declare-fun res!1032075 () Bool)

(assert (=> b!1512092 (=> (not res!1032075) (not e!844103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512092 (= res!1032075 (validKeyInArray!0 (select (arr!48626 a!2804) j!70)))))

(declare-fun b!1512093 () Bool)

(declare-fun res!1032071 () Bool)

(assert (=> b!1512093 (=> (not res!1032071) (not e!844101))))

(declare-fun lt!655566 () SeekEntryResult!12818)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512093 (= res!1032071 (= lt!655566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48626 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48626 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100788 (store (arr!48626 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49177 a!2804)) mask!2512)))))

(declare-fun res!1032069 () Bool)

(assert (=> start!129018 (=> (not res!1032069) (not e!844103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129018 (= res!1032069 (validMask!0 mask!2512))))

(assert (=> start!129018 e!844103))

(assert (=> start!129018 true))

(declare-fun array_inv!37571 (array!100787) Bool)

(assert (=> start!129018 (array_inv!37571 a!2804)))

(declare-fun b!1512094 () Bool)

(declare-fun e!844099 () Bool)

(assert (=> b!1512094 (= e!844102 e!844099)))

(declare-fun res!1032067 () Bool)

(assert (=> b!1512094 (=> res!1032067 e!844099)))

(assert (=> b!1512094 (= res!1032067 (or (not (= (select (arr!48626 a!2804) j!70) (select (store (arr!48626 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48626 a!2804) index!487) (select (arr!48626 a!2804) j!70)) (not (= (select (arr!48626 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512095 () Bool)

(assert (=> b!1512095 (= e!844103 e!844101)))

(declare-fun res!1032063 () Bool)

(assert (=> b!1512095 (=> (not res!1032063) (not e!844101))))

(assert (=> b!1512095 (= res!1032063 (= lt!655566 lt!655567))))

(assert (=> b!1512095 (= lt!655567 (Intermediate!12818 false resIndex!21 resX!21))))

(assert (=> b!1512095 (= lt!655566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48626 a!2804) j!70) mask!2512) (select (arr!48626 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512096 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100787 (_ BitVec 32)) SeekEntryResult!12818)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100787 (_ BitVec 32)) SeekEntryResult!12818)

(assert (=> b!1512096 (= e!844099 (= (seekEntryOrOpen!0 (select (arr!48626 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48626 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512097 () Bool)

(assert (=> b!1512097 (= e!844101 (not true))))

(assert (=> b!1512097 e!844102))

(declare-fun res!1032074 () Bool)

(assert (=> b!1512097 (=> (not res!1032074) (not e!844102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100787 (_ BitVec 32)) Bool)

(assert (=> b!1512097 (= res!1032074 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50460 0))(
  ( (Unit!50461) )
))
(declare-fun lt!655565 () Unit!50460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50460)

(assert (=> b!1512097 (= lt!655565 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512098 () Bool)

(declare-fun res!1032068 () Bool)

(assert (=> b!1512098 (=> (not res!1032068) (not e!844103))))

(assert (=> b!1512098 (= res!1032068 (validKeyInArray!0 (select (arr!48626 a!2804) i!961)))))

(declare-fun b!1512099 () Bool)

(declare-fun res!1032066 () Bool)

(assert (=> b!1512099 (=> (not res!1032066) (not e!844103))))

(assert (=> b!1512099 (= res!1032066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512100 () Bool)

(declare-fun res!1032072 () Bool)

(assert (=> b!1512100 (=> (not res!1032072) (not e!844103))))

(assert (=> b!1512100 (= res!1032072 (and (= (size!49177 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49177 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49177 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129018 res!1032069) b!1512100))

(assert (= (and b!1512100 res!1032072) b!1512098))

(assert (= (and b!1512098 res!1032068) b!1512092))

(assert (= (and b!1512092 res!1032075) b!1512099))

(assert (= (and b!1512099 res!1032066) b!1512089))

(assert (= (and b!1512089 res!1032073) b!1512088))

(assert (= (and b!1512088 res!1032070) b!1512095))

(assert (= (and b!1512095 res!1032063) b!1512091))

(assert (= (and b!1512091 res!1032064) b!1512093))

(assert (= (and b!1512093 res!1032071) b!1512097))

(assert (= (and b!1512097 res!1032074) b!1512090))

(assert (= (and b!1512090 res!1032065) b!1512094))

(assert (= (and b!1512094 (not res!1032067)) b!1512096))

(declare-fun m!1394889 () Bool)

(assert (=> b!1512095 m!1394889))

(assert (=> b!1512095 m!1394889))

(declare-fun m!1394891 () Bool)

(assert (=> b!1512095 m!1394891))

(assert (=> b!1512095 m!1394891))

(assert (=> b!1512095 m!1394889))

(declare-fun m!1394893 () Bool)

(assert (=> b!1512095 m!1394893))

(assert (=> b!1512094 m!1394889))

(declare-fun m!1394895 () Bool)

(assert (=> b!1512094 m!1394895))

(declare-fun m!1394897 () Bool)

(assert (=> b!1512094 m!1394897))

(declare-fun m!1394899 () Bool)

(assert (=> b!1512094 m!1394899))

(assert (=> b!1512092 m!1394889))

(assert (=> b!1512092 m!1394889))

(declare-fun m!1394901 () Bool)

(assert (=> b!1512092 m!1394901))

(declare-fun m!1394903 () Bool)

(assert (=> b!1512097 m!1394903))

(declare-fun m!1394905 () Bool)

(assert (=> b!1512097 m!1394905))

(assert (=> b!1512091 m!1394889))

(assert (=> b!1512091 m!1394889))

(declare-fun m!1394907 () Bool)

(assert (=> b!1512091 m!1394907))

(declare-fun m!1394909 () Bool)

(assert (=> start!129018 m!1394909))

(declare-fun m!1394911 () Bool)

(assert (=> start!129018 m!1394911))

(declare-fun m!1394913 () Bool)

(assert (=> b!1512089 m!1394913))

(declare-fun m!1394915 () Bool)

(assert (=> b!1512099 m!1394915))

(assert (=> b!1512093 m!1394895))

(assert (=> b!1512093 m!1394897))

(assert (=> b!1512093 m!1394897))

(declare-fun m!1394917 () Bool)

(assert (=> b!1512093 m!1394917))

(assert (=> b!1512093 m!1394917))

(assert (=> b!1512093 m!1394897))

(declare-fun m!1394919 () Bool)

(assert (=> b!1512093 m!1394919))

(assert (=> b!1512096 m!1394889))

(assert (=> b!1512096 m!1394889))

(declare-fun m!1394921 () Bool)

(assert (=> b!1512096 m!1394921))

(assert (=> b!1512096 m!1394889))

(declare-fun m!1394923 () Bool)

(assert (=> b!1512096 m!1394923))

(declare-fun m!1394925 () Bool)

(assert (=> b!1512098 m!1394925))

(assert (=> b!1512098 m!1394925))

(declare-fun m!1394927 () Bool)

(assert (=> b!1512098 m!1394927))

(assert (=> b!1512090 m!1394889))

(assert (=> b!1512090 m!1394889))

(declare-fun m!1394929 () Bool)

(assert (=> b!1512090 m!1394929))

(check-sat (not b!1512091) (not b!1512090) (not b!1512092) (not b!1512099) (not b!1512095) (not b!1512097) (not start!129018) (not b!1512093) (not b!1512096) (not b!1512098) (not b!1512089))
(check-sat)
