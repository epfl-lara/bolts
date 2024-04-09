; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128966 () Bool)

(assert start!128966)

(declare-fun b!1511139 () Bool)

(declare-fun res!1031121 () Bool)

(declare-fun e!843738 () Bool)

(assert (=> b!1511139 (=> (not res!1031121) (not e!843738))))

(declare-datatypes ((array!100735 0))(
  ( (array!100736 (arr!48600 (Array (_ BitVec 32) (_ BitVec 64))) (size!49151 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100735)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511139 (= res!1031121 (validKeyInArray!0 (select (arr!48600 a!2804) j!70)))))

(declare-fun b!1511140 () Bool)

(declare-fun res!1031124 () Bool)

(assert (=> b!1511140 (=> (not res!1031124) (not e!843738))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1511140 (= res!1031124 (and (= (size!49151 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49151 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49151 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511141 () Bool)

(declare-fun res!1031120 () Bool)

(assert (=> b!1511141 (=> (not res!1031120) (not e!843738))))

(assert (=> b!1511141 (= res!1031120 (validKeyInArray!0 (select (arr!48600 a!2804) i!961)))))

(declare-fun b!1511142 () Bool)

(declare-fun res!1031115 () Bool)

(declare-fun e!843739 () Bool)

(assert (=> b!1511142 (=> (not res!1031115) (not e!843739))))

(declare-datatypes ((SeekEntryResult!12792 0))(
  ( (MissingZero!12792 (index!53562 (_ BitVec 32))) (Found!12792 (index!53563 (_ BitVec 32))) (Intermediate!12792 (undefined!13604 Bool) (index!53564 (_ BitVec 32)) (x!135307 (_ BitVec 32))) (Undefined!12792) (MissingVacant!12792 (index!53565 (_ BitVec 32))) )
))
(declare-fun lt!655332 () SeekEntryResult!12792)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100735 (_ BitVec 32)) SeekEntryResult!12792)

(assert (=> b!1511142 (= res!1031115 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48600 a!2804) j!70) a!2804 mask!2512) lt!655332))))

(declare-fun b!1511143 () Bool)

(declare-fun e!843740 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100735 (_ BitVec 32)) SeekEntryResult!12792)

(assert (=> b!1511143 (= e!843740 (= (seekEntry!0 (select (arr!48600 a!2804) j!70) a!2804 mask!2512) (Found!12792 j!70)))))

(declare-fun b!1511144 () Bool)

(declare-fun res!1031122 () Bool)

(assert (=> b!1511144 (=> (not res!1031122) (not e!843738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100735 (_ BitVec 32)) Bool)

(assert (=> b!1511144 (= res!1031122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511145 () Bool)

(declare-fun res!1031118 () Bool)

(assert (=> b!1511145 (=> (not res!1031118) (not e!843738))))

(declare-datatypes ((List!35263 0))(
  ( (Nil!35260) (Cons!35259 (h!36672 (_ BitVec 64)) (t!49964 List!35263)) )
))
(declare-fun arrayNoDuplicates!0 (array!100735 (_ BitVec 32) List!35263) Bool)

(assert (=> b!1511145 (= res!1031118 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35260))))

(declare-fun b!1511146 () Bool)

(declare-fun res!1031123 () Bool)

(assert (=> b!1511146 (=> (not res!1031123) (not e!843738))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511146 (= res!1031123 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49151 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49151 a!2804))))))

(declare-fun b!1511147 () Bool)

(assert (=> b!1511147 (= e!843739 (not (or (not (= (select (arr!48600 a!2804) j!70) (select (store (arr!48600 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48600 a!2804) index!487) (select (arr!48600 a!2804) j!70)) (not (= (select (arr!48600 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1511147 e!843740))

(declare-fun res!1031114 () Bool)

(assert (=> b!1511147 (=> (not res!1031114) (not e!843740))))

(assert (=> b!1511147 (= res!1031114 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50408 0))(
  ( (Unit!50409) )
))
(declare-fun lt!655331 () Unit!50408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50408)

(assert (=> b!1511147 (= lt!655331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511148 () Bool)

(declare-fun res!1031117 () Bool)

(assert (=> b!1511148 (=> (not res!1031117) (not e!843739))))

(declare-fun lt!655333 () SeekEntryResult!12792)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511148 (= res!1031117 (= lt!655333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48600 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48600 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100736 (store (arr!48600 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49151 a!2804)) mask!2512)))))

(declare-fun b!1511149 () Bool)

(assert (=> b!1511149 (= e!843738 e!843739)))

(declare-fun res!1031116 () Bool)

(assert (=> b!1511149 (=> (not res!1031116) (not e!843739))))

(assert (=> b!1511149 (= res!1031116 (= lt!655333 lt!655332))))

(assert (=> b!1511149 (= lt!655332 (Intermediate!12792 false resIndex!21 resX!21))))

(assert (=> b!1511149 (= lt!655333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48600 a!2804) j!70) mask!2512) (select (arr!48600 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1031119 () Bool)

(assert (=> start!128966 (=> (not res!1031119) (not e!843738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128966 (= res!1031119 (validMask!0 mask!2512))))

(assert (=> start!128966 e!843738))

(assert (=> start!128966 true))

(declare-fun array_inv!37545 (array!100735) Bool)

(assert (=> start!128966 (array_inv!37545 a!2804)))

(assert (= (and start!128966 res!1031119) b!1511140))

(assert (= (and b!1511140 res!1031124) b!1511141))

(assert (= (and b!1511141 res!1031120) b!1511139))

(assert (= (and b!1511139 res!1031121) b!1511144))

(assert (= (and b!1511144 res!1031122) b!1511145))

(assert (= (and b!1511145 res!1031118) b!1511146))

(assert (= (and b!1511146 res!1031123) b!1511149))

(assert (= (and b!1511149 res!1031116) b!1511142))

(assert (= (and b!1511142 res!1031115) b!1511148))

(assert (= (and b!1511148 res!1031117) b!1511147))

(assert (= (and b!1511147 res!1031114) b!1511143))

(declare-fun m!1393867 () Bool)

(assert (=> b!1511145 m!1393867))

(declare-fun m!1393869 () Bool)

(assert (=> b!1511148 m!1393869))

(declare-fun m!1393871 () Bool)

(assert (=> b!1511148 m!1393871))

(assert (=> b!1511148 m!1393871))

(declare-fun m!1393873 () Bool)

(assert (=> b!1511148 m!1393873))

(assert (=> b!1511148 m!1393873))

(assert (=> b!1511148 m!1393871))

(declare-fun m!1393875 () Bool)

(assert (=> b!1511148 m!1393875))

(declare-fun m!1393877 () Bool)

(assert (=> b!1511139 m!1393877))

(assert (=> b!1511139 m!1393877))

(declare-fun m!1393879 () Bool)

(assert (=> b!1511139 m!1393879))

(assert (=> b!1511143 m!1393877))

(assert (=> b!1511143 m!1393877))

(declare-fun m!1393881 () Bool)

(assert (=> b!1511143 m!1393881))

(assert (=> b!1511142 m!1393877))

(assert (=> b!1511142 m!1393877))

(declare-fun m!1393883 () Bool)

(assert (=> b!1511142 m!1393883))

(declare-fun m!1393885 () Bool)

(assert (=> b!1511144 m!1393885))

(assert (=> b!1511149 m!1393877))

(assert (=> b!1511149 m!1393877))

(declare-fun m!1393887 () Bool)

(assert (=> b!1511149 m!1393887))

(assert (=> b!1511149 m!1393887))

(assert (=> b!1511149 m!1393877))

(declare-fun m!1393889 () Bool)

(assert (=> b!1511149 m!1393889))

(declare-fun m!1393891 () Bool)

(assert (=> b!1511141 m!1393891))

(assert (=> b!1511141 m!1393891))

(declare-fun m!1393893 () Bool)

(assert (=> b!1511141 m!1393893))

(declare-fun m!1393895 () Bool)

(assert (=> start!128966 m!1393895))

(declare-fun m!1393897 () Bool)

(assert (=> start!128966 m!1393897))

(assert (=> b!1511147 m!1393877))

(declare-fun m!1393899 () Bool)

(assert (=> b!1511147 m!1393899))

(assert (=> b!1511147 m!1393869))

(declare-fun m!1393901 () Bool)

(assert (=> b!1511147 m!1393901))

(assert (=> b!1511147 m!1393871))

(declare-fun m!1393903 () Bool)

(assert (=> b!1511147 m!1393903))

(push 1)

(assert (not b!1511144))

(assert (not b!1511143))

(assert (not b!1511142))

(assert (not b!1511141))

(assert (not start!128966))

(assert (not b!1511139))

(assert (not b!1511149))

(assert (not b!1511145))

(assert (not b!1511148))

(assert (not b!1511147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

