; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130284 () Bool)

(assert start!130284)

(declare-fun b!1528973 () Bool)

(declare-fun res!1046820 () Bool)

(declare-fun e!852143 () Bool)

(assert (=> b!1528973 (=> (not res!1046820) (not e!852143))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101561 0))(
  ( (array!101562 (arr!49001 (Array (_ BitVec 32) (_ BitVec 64))) (size!49552 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101561)

(assert (=> b!1528973 (= res!1046820 (and (= (size!49552 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49552 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49552 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528974 () Bool)

(declare-fun res!1046827 () Bool)

(assert (=> b!1528974 (=> (not res!1046827) (not e!852143))))

(declare-datatypes ((List!35664 0))(
  ( (Nil!35661) (Cons!35660 (h!37097 (_ BitVec 64)) (t!50365 List!35664)) )
))
(declare-fun arrayNoDuplicates!0 (array!101561 (_ BitVec 32) List!35664) Bool)

(assert (=> b!1528974 (= res!1046827 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35661))))

(declare-fun b!1528975 () Bool)

(declare-fun e!852145 () Bool)

(declare-fun e!852146 () Bool)

(assert (=> b!1528975 (= e!852145 (not e!852146))))

(declare-fun res!1046825 () Bool)

(assert (=> b!1528975 (=> res!1046825 e!852146)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1528975 (= res!1046825 (or (not (= (select (arr!49001 a!2804) j!70) (select (store (arr!49001 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852142 () Bool)

(assert (=> b!1528975 e!852142))

(declare-fun res!1046823 () Bool)

(assert (=> b!1528975 (=> (not res!1046823) (not e!852142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101561 (_ BitVec 32)) Bool)

(assert (=> b!1528975 (= res!1046823 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51114 0))(
  ( (Unit!51115) )
))
(declare-fun lt!662244 () Unit!51114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51114)

(assert (=> b!1528975 (= lt!662244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528976 () Bool)

(declare-fun res!1046818 () Bool)

(assert (=> b!1528976 (=> (not res!1046818) (not e!852143))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528976 (= res!1046818 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49552 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49552 a!2804))))))

(declare-fun b!1528977 () Bool)

(declare-datatypes ((SeekEntryResult!13187 0))(
  ( (MissingZero!13187 (index!55142 (_ BitVec 32))) (Found!13187 (index!55143 (_ BitVec 32))) (Intermediate!13187 (undefined!13999 Bool) (index!55144 (_ BitVec 32)) (x!136837 (_ BitVec 32))) (Undefined!13187) (MissingVacant!13187 (index!55145 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101561 (_ BitVec 32)) SeekEntryResult!13187)

(assert (=> b!1528977 (= e!852142 (= (seekEntry!0 (select (arr!49001 a!2804) j!70) a!2804 mask!2512) (Found!13187 j!70)))))

(declare-fun b!1528978 () Bool)

(declare-fun res!1046819 () Bool)

(assert (=> b!1528978 (=> (not res!1046819) (not e!852143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528978 (= res!1046819 (validKeyInArray!0 (select (arr!49001 a!2804) j!70)))))

(declare-fun b!1528979 () Bool)

(assert (=> b!1528979 (= e!852146 true)))

(declare-fun lt!662243 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528979 (= lt!662243 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1046828 () Bool)

(assert (=> start!130284 (=> (not res!1046828) (not e!852143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130284 (= res!1046828 (validMask!0 mask!2512))))

(assert (=> start!130284 e!852143))

(assert (=> start!130284 true))

(declare-fun array_inv!37946 (array!101561) Bool)

(assert (=> start!130284 (array_inv!37946 a!2804)))

(declare-fun b!1528980 () Bool)

(declare-fun res!1046821 () Bool)

(assert (=> b!1528980 (=> (not res!1046821) (not e!852143))))

(assert (=> b!1528980 (= res!1046821 (validKeyInArray!0 (select (arr!49001 a!2804) i!961)))))

(declare-fun b!1528981 () Bool)

(declare-fun res!1046826 () Bool)

(assert (=> b!1528981 (=> (not res!1046826) (not e!852143))))

(assert (=> b!1528981 (= res!1046826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528982 () Bool)

(declare-fun res!1046829 () Bool)

(assert (=> b!1528982 (=> (not res!1046829) (not e!852145))))

(declare-fun lt!662245 () SeekEntryResult!13187)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101561 (_ BitVec 32)) SeekEntryResult!13187)

(assert (=> b!1528982 (= res!1046829 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49001 a!2804) j!70) a!2804 mask!2512) lt!662245))))

(declare-fun b!1528983 () Bool)

(declare-fun res!1046824 () Bool)

(assert (=> b!1528983 (=> (not res!1046824) (not e!852145))))

(declare-fun lt!662242 () SeekEntryResult!13187)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528983 (= res!1046824 (= lt!662242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49001 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49001 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101562 (store (arr!49001 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49552 a!2804)) mask!2512)))))

(declare-fun b!1528984 () Bool)

(assert (=> b!1528984 (= e!852143 e!852145)))

(declare-fun res!1046822 () Bool)

(assert (=> b!1528984 (=> (not res!1046822) (not e!852145))))

(assert (=> b!1528984 (= res!1046822 (= lt!662242 lt!662245))))

(assert (=> b!1528984 (= lt!662245 (Intermediate!13187 false resIndex!21 resX!21))))

(assert (=> b!1528984 (= lt!662242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49001 a!2804) j!70) mask!2512) (select (arr!49001 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130284 res!1046828) b!1528973))

(assert (= (and b!1528973 res!1046820) b!1528980))

(assert (= (and b!1528980 res!1046821) b!1528978))

(assert (= (and b!1528978 res!1046819) b!1528981))

(assert (= (and b!1528981 res!1046826) b!1528974))

(assert (= (and b!1528974 res!1046827) b!1528976))

(assert (= (and b!1528976 res!1046818) b!1528984))

(assert (= (and b!1528984 res!1046822) b!1528982))

(assert (= (and b!1528982 res!1046829) b!1528983))

(assert (= (and b!1528983 res!1046824) b!1528975))

(assert (= (and b!1528975 res!1046823) b!1528977))

(assert (= (and b!1528975 (not res!1046825)) b!1528979))

(declare-fun m!1411949 () Bool)

(assert (=> b!1528978 m!1411949))

(assert (=> b!1528978 m!1411949))

(declare-fun m!1411951 () Bool)

(assert (=> b!1528978 m!1411951))

(assert (=> b!1528982 m!1411949))

(assert (=> b!1528982 m!1411949))

(declare-fun m!1411953 () Bool)

(assert (=> b!1528982 m!1411953))

(assert (=> b!1528975 m!1411949))

(declare-fun m!1411955 () Bool)

(assert (=> b!1528975 m!1411955))

(declare-fun m!1411957 () Bool)

(assert (=> b!1528975 m!1411957))

(declare-fun m!1411959 () Bool)

(assert (=> b!1528975 m!1411959))

(declare-fun m!1411961 () Bool)

(assert (=> b!1528975 m!1411961))

(declare-fun m!1411963 () Bool)

(assert (=> b!1528981 m!1411963))

(assert (=> b!1528977 m!1411949))

(assert (=> b!1528977 m!1411949))

(declare-fun m!1411965 () Bool)

(assert (=> b!1528977 m!1411965))

(declare-fun m!1411967 () Bool)

(assert (=> b!1528974 m!1411967))

(declare-fun m!1411969 () Bool)

(assert (=> b!1528979 m!1411969))

(assert (=> b!1528984 m!1411949))

(assert (=> b!1528984 m!1411949))

(declare-fun m!1411971 () Bool)

(assert (=> b!1528984 m!1411971))

(assert (=> b!1528984 m!1411971))

(assert (=> b!1528984 m!1411949))

(declare-fun m!1411973 () Bool)

(assert (=> b!1528984 m!1411973))

(assert (=> b!1528983 m!1411957))

(assert (=> b!1528983 m!1411959))

(assert (=> b!1528983 m!1411959))

(declare-fun m!1411975 () Bool)

(assert (=> b!1528983 m!1411975))

(assert (=> b!1528983 m!1411975))

(assert (=> b!1528983 m!1411959))

(declare-fun m!1411977 () Bool)

(assert (=> b!1528983 m!1411977))

(declare-fun m!1411979 () Bool)

(assert (=> start!130284 m!1411979))

(declare-fun m!1411981 () Bool)

(assert (=> start!130284 m!1411981))

(declare-fun m!1411983 () Bool)

(assert (=> b!1528980 m!1411983))

(assert (=> b!1528980 m!1411983))

(declare-fun m!1411985 () Bool)

(assert (=> b!1528980 m!1411985))

(check-sat (not b!1528977) (not b!1528982) (not b!1528984) (not b!1528974) (not b!1528975) (not b!1528979) (not b!1528983) (not b!1528981) (not b!1528978) (not b!1528980) (not start!130284))
