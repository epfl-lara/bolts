; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130278 () Bool)

(assert start!130278)

(declare-fun b!1528865 () Bool)

(declare-fun res!1046717 () Bool)

(declare-fun e!852101 () Bool)

(assert (=> b!1528865 (=> (not res!1046717) (not e!852101))))

(declare-datatypes ((array!101555 0))(
  ( (array!101556 (arr!48998 (Array (_ BitVec 32) (_ BitVec 64))) (size!49549 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101555)

(declare-datatypes ((List!35661 0))(
  ( (Nil!35658) (Cons!35657 (h!37094 (_ BitVec 64)) (t!50362 List!35661)) )
))
(declare-fun arrayNoDuplicates!0 (array!101555 (_ BitVec 32) List!35661) Bool)

(assert (=> b!1528865 (= res!1046717 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35658))))

(declare-fun b!1528867 () Bool)

(declare-fun e!852098 () Bool)

(assert (=> b!1528867 (= e!852101 e!852098)))

(declare-fun res!1046721 () Bool)

(assert (=> b!1528867 (=> (not res!1046721) (not e!852098))))

(declare-datatypes ((SeekEntryResult!13184 0))(
  ( (MissingZero!13184 (index!55130 (_ BitVec 32))) (Found!13184 (index!55131 (_ BitVec 32))) (Intermediate!13184 (undefined!13996 Bool) (index!55132 (_ BitVec 32)) (x!136826 (_ BitVec 32))) (Undefined!13184) (MissingVacant!13184 (index!55133 (_ BitVec 32))) )
))
(declare-fun lt!662207 () SeekEntryResult!13184)

(declare-fun lt!662206 () SeekEntryResult!13184)

(assert (=> b!1528867 (= res!1046721 (= lt!662207 lt!662206))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528867 (= lt!662206 (Intermediate!13184 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101555 (_ BitVec 32)) SeekEntryResult!13184)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528867 (= lt!662207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48998 a!2804) j!70) mask!2512) (select (arr!48998 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528868 () Bool)

(declare-fun e!852100 () Bool)

(assert (=> b!1528868 (= e!852098 (not e!852100))))

(declare-fun res!1046719 () Bool)

(assert (=> b!1528868 (=> res!1046719 e!852100)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1528868 (= res!1046719 (or (not (= (select (arr!48998 a!2804) j!70) (select (store (arr!48998 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852099 () Bool)

(assert (=> b!1528868 e!852099))

(declare-fun res!1046711 () Bool)

(assert (=> b!1528868 (=> (not res!1046711) (not e!852099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101555 (_ BitVec 32)) Bool)

(assert (=> b!1528868 (= res!1046711 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51108 0))(
  ( (Unit!51109) )
))
(declare-fun lt!662208 () Unit!51108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51108)

(assert (=> b!1528868 (= lt!662208 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528869 () Bool)

(declare-fun res!1046718 () Bool)

(assert (=> b!1528869 (=> (not res!1046718) (not e!852101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528869 (= res!1046718 (validKeyInArray!0 (select (arr!48998 a!2804) i!961)))))

(declare-fun b!1528870 () Bool)

(declare-fun res!1046715 () Bool)

(assert (=> b!1528870 (=> (not res!1046715) (not e!852098))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1528870 (= res!1046715 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48998 a!2804) j!70) a!2804 mask!2512) lt!662206))))

(declare-fun b!1528866 () Bool)

(declare-fun res!1046713 () Bool)

(assert (=> b!1528866 (=> (not res!1046713) (not e!852098))))

(assert (=> b!1528866 (= res!1046713 (= lt!662207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48998 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48998 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101556 (store (arr!48998 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49549 a!2804)) mask!2512)))))

(declare-fun res!1046714 () Bool)

(assert (=> start!130278 (=> (not res!1046714) (not e!852101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130278 (= res!1046714 (validMask!0 mask!2512))))

(assert (=> start!130278 e!852101))

(assert (=> start!130278 true))

(declare-fun array_inv!37943 (array!101555) Bool)

(assert (=> start!130278 (array_inv!37943 a!2804)))

(declare-fun b!1528871 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101555 (_ BitVec 32)) SeekEntryResult!13184)

(assert (=> b!1528871 (= e!852099 (= (seekEntry!0 (select (arr!48998 a!2804) j!70) a!2804 mask!2512) (Found!13184 j!70)))))

(declare-fun b!1528872 () Bool)

(assert (=> b!1528872 (= e!852100 true)))

(declare-fun lt!662209 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528872 (= lt!662209 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528873 () Bool)

(declare-fun res!1046712 () Bool)

(assert (=> b!1528873 (=> (not res!1046712) (not e!852101))))

(assert (=> b!1528873 (= res!1046712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528874 () Bool)

(declare-fun res!1046716 () Bool)

(assert (=> b!1528874 (=> (not res!1046716) (not e!852101))))

(assert (=> b!1528874 (= res!1046716 (validKeyInArray!0 (select (arr!48998 a!2804) j!70)))))

(declare-fun b!1528875 () Bool)

(declare-fun res!1046720 () Bool)

(assert (=> b!1528875 (=> (not res!1046720) (not e!852101))))

(assert (=> b!1528875 (= res!1046720 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49549 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49549 a!2804))))))

(declare-fun b!1528876 () Bool)

(declare-fun res!1046710 () Bool)

(assert (=> b!1528876 (=> (not res!1046710) (not e!852101))))

(assert (=> b!1528876 (= res!1046710 (and (= (size!49549 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49549 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49549 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130278 res!1046714) b!1528876))

(assert (= (and b!1528876 res!1046710) b!1528869))

(assert (= (and b!1528869 res!1046718) b!1528874))

(assert (= (and b!1528874 res!1046716) b!1528873))

(assert (= (and b!1528873 res!1046712) b!1528865))

(assert (= (and b!1528865 res!1046717) b!1528875))

(assert (= (and b!1528875 res!1046720) b!1528867))

(assert (= (and b!1528867 res!1046721) b!1528870))

(assert (= (and b!1528870 res!1046715) b!1528866))

(assert (= (and b!1528866 res!1046713) b!1528868))

(assert (= (and b!1528868 res!1046711) b!1528871))

(assert (= (and b!1528868 (not res!1046719)) b!1528872))

(declare-fun m!1411835 () Bool)

(assert (=> b!1528874 m!1411835))

(assert (=> b!1528874 m!1411835))

(declare-fun m!1411837 () Bool)

(assert (=> b!1528874 m!1411837))

(declare-fun m!1411839 () Bool)

(assert (=> b!1528865 m!1411839))

(declare-fun m!1411841 () Bool)

(assert (=> b!1528873 m!1411841))

(declare-fun m!1411843 () Bool)

(assert (=> b!1528869 m!1411843))

(assert (=> b!1528869 m!1411843))

(declare-fun m!1411845 () Bool)

(assert (=> b!1528869 m!1411845))

(assert (=> b!1528871 m!1411835))

(assert (=> b!1528871 m!1411835))

(declare-fun m!1411847 () Bool)

(assert (=> b!1528871 m!1411847))

(assert (=> b!1528868 m!1411835))

(declare-fun m!1411849 () Bool)

(assert (=> b!1528868 m!1411849))

(declare-fun m!1411851 () Bool)

(assert (=> b!1528868 m!1411851))

(declare-fun m!1411853 () Bool)

(assert (=> b!1528868 m!1411853))

(declare-fun m!1411855 () Bool)

(assert (=> b!1528868 m!1411855))

(declare-fun m!1411857 () Bool)

(assert (=> start!130278 m!1411857))

(declare-fun m!1411859 () Bool)

(assert (=> start!130278 m!1411859))

(assert (=> b!1528867 m!1411835))

(assert (=> b!1528867 m!1411835))

(declare-fun m!1411861 () Bool)

(assert (=> b!1528867 m!1411861))

(assert (=> b!1528867 m!1411861))

(assert (=> b!1528867 m!1411835))

(declare-fun m!1411863 () Bool)

(assert (=> b!1528867 m!1411863))

(assert (=> b!1528866 m!1411851))

(assert (=> b!1528866 m!1411853))

(assert (=> b!1528866 m!1411853))

(declare-fun m!1411865 () Bool)

(assert (=> b!1528866 m!1411865))

(assert (=> b!1528866 m!1411865))

(assert (=> b!1528866 m!1411853))

(declare-fun m!1411867 () Bool)

(assert (=> b!1528866 m!1411867))

(declare-fun m!1411869 () Bool)

(assert (=> b!1528872 m!1411869))

(assert (=> b!1528870 m!1411835))

(assert (=> b!1528870 m!1411835))

(declare-fun m!1411871 () Bool)

(assert (=> b!1528870 m!1411871))

(check-sat (not b!1528865) (not b!1528871) (not b!1528873) (not b!1528874) (not b!1528870) (not b!1528867) (not b!1528866) (not b!1528869) (not b!1528868) (not b!1528872) (not start!130278))
(check-sat)
