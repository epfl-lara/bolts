; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129114 () Bool)

(assert start!129114)

(declare-fun res!1034022 () Bool)

(declare-fun e!845002 () Bool)

(assert (=> start!129114 (=> (not res!1034022) (not e!845002))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129114 (= res!1034022 (validMask!0 mask!2512))))

(assert (=> start!129114 e!845002))

(assert (=> start!129114 true))

(declare-datatypes ((array!100883 0))(
  ( (array!100884 (arr!48674 (Array (_ BitVec 32) (_ BitVec 64))) (size!49225 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100883)

(declare-fun array_inv!37619 (array!100883) Bool)

(assert (=> start!129114 (array_inv!37619 a!2804)))

(declare-fun b!1514046 () Bool)

(declare-fun res!1034034 () Bool)

(declare-fun e!845006 () Bool)

(assert (=> b!1514046 (=> (not res!1034034) (not e!845006))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12866 0))(
  ( (MissingZero!12866 (index!53858 (_ BitVec 32))) (Found!12866 (index!53859 (_ BitVec 32))) (Intermediate!12866 (undefined!13678 Bool) (index!53860 (_ BitVec 32)) (x!135581 (_ BitVec 32))) (Undefined!12866) (MissingVacant!12866 (index!53861 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100883 (_ BitVec 32)) SeekEntryResult!12866)

(assert (=> b!1514046 (= res!1034034 (= (seekEntry!0 (select (arr!48674 a!2804) j!70) a!2804 mask!2512) (Found!12866 j!70)))))

(declare-fun b!1514047 () Bool)

(declare-fun res!1034030 () Bool)

(assert (=> b!1514047 (=> (not res!1034030) (not e!845002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514047 (= res!1034030 (validKeyInArray!0 (select (arr!48674 a!2804) j!70)))))

(declare-fun b!1514048 () Bool)

(declare-fun res!1034032 () Bool)

(declare-fun e!845000 () Bool)

(assert (=> b!1514048 (=> (not res!1034032) (not e!845000))))

(declare-fun lt!656169 () SeekEntryResult!12866)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100883 (_ BitVec 32)) SeekEntryResult!12866)

(assert (=> b!1514048 (= res!1034032 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48674 a!2804) j!70) a!2804 mask!2512) lt!656169))))

(declare-fun b!1514049 () Bool)

(declare-fun res!1034025 () Bool)

(assert (=> b!1514049 (=> (not res!1034025) (not e!845002))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514049 (= res!1034025 (validKeyInArray!0 (select (arr!48674 a!2804) i!961)))))

(declare-fun b!1514050 () Bool)

(declare-fun e!845004 () Bool)

(assert (=> b!1514050 (= e!845004 (not true))))

(assert (=> b!1514050 e!845006))

(declare-fun res!1034021 () Bool)

(assert (=> b!1514050 (=> (not res!1034021) (not e!845006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100883 (_ BitVec 32)) Bool)

(assert (=> b!1514050 (= res!1034021 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50556 0))(
  ( (Unit!50557) )
))
(declare-fun lt!656170 () Unit!50556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50556)

(assert (=> b!1514050 (= lt!656170 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514051 () Bool)

(assert (=> b!1514051 (= e!845000 e!845004)))

(declare-fun res!1034027 () Bool)

(assert (=> b!1514051 (=> (not res!1034027) (not e!845004))))

(declare-fun lt!656173 () array!100883)

(declare-fun lt!656171 () SeekEntryResult!12866)

(declare-fun lt!656172 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514051 (= res!1034027 (= lt!656171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656172 mask!2512) lt!656172 lt!656173 mask!2512)))))

(assert (=> b!1514051 (= lt!656172 (select (store (arr!48674 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514051 (= lt!656173 (array!100884 (store (arr!48674 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49225 a!2804)))))

(declare-fun b!1514052 () Bool)

(declare-fun e!845003 () Bool)

(assert (=> b!1514052 (= e!845006 e!845003)))

(declare-fun res!1034024 () Bool)

(assert (=> b!1514052 (=> res!1034024 e!845003)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514052 (= res!1034024 (or (not (= (select (arr!48674 a!2804) j!70) lt!656172)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48674 a!2804) index!487) (select (arr!48674 a!2804) j!70)) (not (= (select (arr!48674 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514053 () Bool)

(declare-fun res!1034029 () Bool)

(assert (=> b!1514053 (=> (not res!1034029) (not e!845002))))

(assert (=> b!1514053 (= res!1034029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514054 () Bool)

(declare-fun res!1034023 () Bool)

(assert (=> b!1514054 (=> (not res!1034023) (not e!845002))))

(declare-datatypes ((List!35337 0))(
  ( (Nil!35334) (Cons!35333 (h!36746 (_ BitVec 64)) (t!50038 List!35337)) )
))
(declare-fun arrayNoDuplicates!0 (array!100883 (_ BitVec 32) List!35337) Bool)

(assert (=> b!1514054 (= res!1034023 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35334))))

(declare-fun b!1514055 () Bool)

(declare-fun res!1034026 () Bool)

(assert (=> b!1514055 (=> (not res!1034026) (not e!845002))))

(assert (=> b!1514055 (= res!1034026 (and (= (size!49225 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49225 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49225 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514056 () Bool)

(declare-fun e!845001 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100883 (_ BitVec 32)) SeekEntryResult!12866)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100883 (_ BitVec 32)) SeekEntryResult!12866)

(assert (=> b!1514056 (= e!845001 (= (seekEntryOrOpen!0 lt!656172 lt!656173 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656172 lt!656173 mask!2512)))))

(declare-fun b!1514057 () Bool)

(assert (=> b!1514057 (= e!845002 e!845000)))

(declare-fun res!1034028 () Bool)

(assert (=> b!1514057 (=> (not res!1034028) (not e!845000))))

(assert (=> b!1514057 (= res!1034028 (= lt!656171 lt!656169))))

(assert (=> b!1514057 (= lt!656169 (Intermediate!12866 false resIndex!21 resX!21))))

(assert (=> b!1514057 (= lt!656171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48674 a!2804) j!70) mask!2512) (select (arr!48674 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514058 () Bool)

(assert (=> b!1514058 (= e!845003 e!845001)))

(declare-fun res!1034031 () Bool)

(assert (=> b!1514058 (=> (not res!1034031) (not e!845001))))

(assert (=> b!1514058 (= res!1034031 (= (seekEntryOrOpen!0 (select (arr!48674 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48674 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514059 () Bool)

(declare-fun res!1034033 () Bool)

(assert (=> b!1514059 (=> (not res!1034033) (not e!845002))))

(assert (=> b!1514059 (= res!1034033 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49225 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49225 a!2804))))))

(assert (= (and start!129114 res!1034022) b!1514055))

(assert (= (and b!1514055 res!1034026) b!1514049))

(assert (= (and b!1514049 res!1034025) b!1514047))

(assert (= (and b!1514047 res!1034030) b!1514053))

(assert (= (and b!1514053 res!1034029) b!1514054))

(assert (= (and b!1514054 res!1034023) b!1514059))

(assert (= (and b!1514059 res!1034033) b!1514057))

(assert (= (and b!1514057 res!1034028) b!1514048))

(assert (= (and b!1514048 res!1034032) b!1514051))

(assert (= (and b!1514051 res!1034027) b!1514050))

(assert (= (and b!1514050 res!1034021) b!1514046))

(assert (= (and b!1514046 res!1034034) b!1514052))

(assert (= (and b!1514052 (not res!1034024)) b!1514058))

(assert (= (and b!1514058 res!1034031) b!1514056))

(declare-fun m!1397023 () Bool)

(assert (=> b!1514046 m!1397023))

(assert (=> b!1514046 m!1397023))

(declare-fun m!1397025 () Bool)

(assert (=> b!1514046 m!1397025))

(declare-fun m!1397027 () Bool)

(assert (=> b!1514054 m!1397027))

(assert (=> b!1514057 m!1397023))

(assert (=> b!1514057 m!1397023))

(declare-fun m!1397029 () Bool)

(assert (=> b!1514057 m!1397029))

(assert (=> b!1514057 m!1397029))

(assert (=> b!1514057 m!1397023))

(declare-fun m!1397031 () Bool)

(assert (=> b!1514057 m!1397031))

(declare-fun m!1397033 () Bool)

(assert (=> b!1514050 m!1397033))

(declare-fun m!1397035 () Bool)

(assert (=> b!1514050 m!1397035))

(declare-fun m!1397037 () Bool)

(assert (=> b!1514053 m!1397037))

(assert (=> b!1514058 m!1397023))

(assert (=> b!1514058 m!1397023))

(declare-fun m!1397039 () Bool)

(assert (=> b!1514058 m!1397039))

(assert (=> b!1514058 m!1397023))

(declare-fun m!1397041 () Bool)

(assert (=> b!1514058 m!1397041))

(declare-fun m!1397043 () Bool)

(assert (=> b!1514056 m!1397043))

(declare-fun m!1397045 () Bool)

(assert (=> b!1514056 m!1397045))

(assert (=> b!1514052 m!1397023))

(declare-fun m!1397047 () Bool)

(assert (=> b!1514052 m!1397047))

(assert (=> b!1514047 m!1397023))

(assert (=> b!1514047 m!1397023))

(declare-fun m!1397049 () Bool)

(assert (=> b!1514047 m!1397049))

(assert (=> b!1514048 m!1397023))

(assert (=> b!1514048 m!1397023))

(declare-fun m!1397051 () Bool)

(assert (=> b!1514048 m!1397051))

(declare-fun m!1397053 () Bool)

(assert (=> start!129114 m!1397053))

(declare-fun m!1397055 () Bool)

(assert (=> start!129114 m!1397055))

(declare-fun m!1397057 () Bool)

(assert (=> b!1514049 m!1397057))

(assert (=> b!1514049 m!1397057))

(declare-fun m!1397059 () Bool)

(assert (=> b!1514049 m!1397059))

(declare-fun m!1397061 () Bool)

(assert (=> b!1514051 m!1397061))

(assert (=> b!1514051 m!1397061))

(declare-fun m!1397063 () Bool)

(assert (=> b!1514051 m!1397063))

(declare-fun m!1397065 () Bool)

(assert (=> b!1514051 m!1397065))

(declare-fun m!1397067 () Bool)

(assert (=> b!1514051 m!1397067))

(check-sat (not b!1514051) (not b!1514053) (not b!1514056) (not b!1514049) (not b!1514054) (not b!1514057) (not start!129114) (not b!1514047) (not b!1514048) (not b!1514050) (not b!1514058) (not b!1514046))
(check-sat)
