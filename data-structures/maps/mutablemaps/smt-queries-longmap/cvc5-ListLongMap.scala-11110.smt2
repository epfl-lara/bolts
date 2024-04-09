; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129796 () Bool)

(assert start!129796)

(declare-fun b!1522956 () Bool)

(declare-fun e!849164 () Bool)

(declare-fun e!849161 () Bool)

(assert (=> b!1522956 (= e!849164 e!849161)))

(declare-fun res!1042010 () Bool)

(assert (=> b!1522956 (=> (not res!1042010) (not e!849161))))

(declare-datatypes ((SeekEntryResult!13072 0))(
  ( (MissingZero!13072 (index!54682 (_ BitVec 32))) (Found!13072 (index!54683 (_ BitVec 32))) (Intermediate!13072 (undefined!13884 Bool) (index!54684 (_ BitVec 32)) (x!136385 (_ BitVec 32))) (Undefined!13072) (MissingVacant!13072 (index!54685 (_ BitVec 32))) )
))
(declare-fun lt!659778 () SeekEntryResult!13072)

(declare-fun lt!659779 () SeekEntryResult!13072)

(assert (=> b!1522956 (= res!1042010 (= lt!659778 lt!659779))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522956 (= lt!659779 (Intermediate!13072 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101319 0))(
  ( (array!101320 (arr!48886 (Array (_ BitVec 32) (_ BitVec 64))) (size!49437 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101319)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101319 (_ BitVec 32)) SeekEntryResult!13072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522956 (= lt!659778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48886 a!2804) j!70) mask!2512) (select (arr!48886 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!849162 () Bool)

(declare-fun b!1522957 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101319 (_ BitVec 32)) SeekEntryResult!13072)

(assert (=> b!1522957 (= e!849162 (= (seekEntry!0 (select (arr!48886 a!2804) j!70) a!2804 mask!2512) (Found!13072 j!70)))))

(declare-fun b!1522958 () Bool)

(declare-fun res!1042009 () Bool)

(assert (=> b!1522958 (=> (not res!1042009) (not e!849164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101319 (_ BitVec 32)) Bool)

(assert (=> b!1522958 (= res!1042009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522959 () Bool)

(declare-fun res!1042002 () Bool)

(assert (=> b!1522959 (=> (not res!1042002) (not e!849164))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522959 (= res!1042002 (validKeyInArray!0 (select (arr!48886 a!2804) i!961)))))

(declare-fun b!1522960 () Bool)

(declare-fun res!1042011 () Bool)

(assert (=> b!1522960 (=> (not res!1042011) (not e!849161))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522960 (= res!1042011 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48886 a!2804) j!70) a!2804 mask!2512) lt!659779))))

(declare-fun b!1522961 () Bool)

(assert (=> b!1522961 (= e!849161 (not true))))

(assert (=> b!1522961 e!849162))

(declare-fun res!1042008 () Bool)

(assert (=> b!1522961 (=> (not res!1042008) (not e!849162))))

(assert (=> b!1522961 (= res!1042008 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50884 0))(
  ( (Unit!50885) )
))
(declare-fun lt!659777 () Unit!50884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50884)

(assert (=> b!1522961 (= lt!659777 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522962 () Bool)

(declare-fun res!1042007 () Bool)

(assert (=> b!1522962 (=> (not res!1042007) (not e!849164))))

(declare-datatypes ((List!35549 0))(
  ( (Nil!35546) (Cons!35545 (h!36970 (_ BitVec 64)) (t!50250 List!35549)) )
))
(declare-fun arrayNoDuplicates!0 (array!101319 (_ BitVec 32) List!35549) Bool)

(assert (=> b!1522962 (= res!1042007 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35546))))

(declare-fun b!1522963 () Bool)

(declare-fun res!1042006 () Bool)

(assert (=> b!1522963 (=> (not res!1042006) (not e!849161))))

(assert (=> b!1522963 (= res!1042006 (= lt!659778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48886 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48886 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101320 (store (arr!48886 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49437 a!2804)) mask!2512)))))

(declare-fun res!1042001 () Bool)

(assert (=> start!129796 (=> (not res!1042001) (not e!849164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129796 (= res!1042001 (validMask!0 mask!2512))))

(assert (=> start!129796 e!849164))

(assert (=> start!129796 true))

(declare-fun array_inv!37831 (array!101319) Bool)

(assert (=> start!129796 (array_inv!37831 a!2804)))

(declare-fun b!1522964 () Bool)

(declare-fun res!1042004 () Bool)

(assert (=> b!1522964 (=> (not res!1042004) (not e!849164))))

(assert (=> b!1522964 (= res!1042004 (validKeyInArray!0 (select (arr!48886 a!2804) j!70)))))

(declare-fun b!1522965 () Bool)

(declare-fun res!1042005 () Bool)

(assert (=> b!1522965 (=> (not res!1042005) (not e!849164))))

(assert (=> b!1522965 (= res!1042005 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49437 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49437 a!2804))))))

(declare-fun b!1522966 () Bool)

(declare-fun res!1042003 () Bool)

(assert (=> b!1522966 (=> (not res!1042003) (not e!849164))))

(assert (=> b!1522966 (= res!1042003 (and (= (size!49437 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49437 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49437 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129796 res!1042001) b!1522966))

(assert (= (and b!1522966 res!1042003) b!1522959))

(assert (= (and b!1522959 res!1042002) b!1522964))

(assert (= (and b!1522964 res!1042004) b!1522958))

(assert (= (and b!1522958 res!1042009) b!1522962))

(assert (= (and b!1522962 res!1042007) b!1522965))

(assert (= (and b!1522965 res!1042005) b!1522956))

(assert (= (and b!1522956 res!1042010) b!1522960))

(assert (= (and b!1522960 res!1042011) b!1522963))

(assert (= (and b!1522963 res!1042006) b!1522961))

(assert (= (and b!1522961 res!1042008) b!1522957))

(declare-fun m!1406091 () Bool)

(assert (=> b!1522960 m!1406091))

(assert (=> b!1522960 m!1406091))

(declare-fun m!1406093 () Bool)

(assert (=> b!1522960 m!1406093))

(declare-fun m!1406095 () Bool)

(assert (=> b!1522958 m!1406095))

(declare-fun m!1406097 () Bool)

(assert (=> b!1522959 m!1406097))

(assert (=> b!1522959 m!1406097))

(declare-fun m!1406099 () Bool)

(assert (=> b!1522959 m!1406099))

(declare-fun m!1406101 () Bool)

(assert (=> b!1522962 m!1406101))

(assert (=> b!1522957 m!1406091))

(assert (=> b!1522957 m!1406091))

(declare-fun m!1406103 () Bool)

(assert (=> b!1522957 m!1406103))

(declare-fun m!1406105 () Bool)

(assert (=> b!1522961 m!1406105))

(declare-fun m!1406107 () Bool)

(assert (=> b!1522961 m!1406107))

(assert (=> b!1522956 m!1406091))

(assert (=> b!1522956 m!1406091))

(declare-fun m!1406109 () Bool)

(assert (=> b!1522956 m!1406109))

(assert (=> b!1522956 m!1406109))

(assert (=> b!1522956 m!1406091))

(declare-fun m!1406111 () Bool)

(assert (=> b!1522956 m!1406111))

(assert (=> b!1522964 m!1406091))

(assert (=> b!1522964 m!1406091))

(declare-fun m!1406113 () Bool)

(assert (=> b!1522964 m!1406113))

(declare-fun m!1406115 () Bool)

(assert (=> b!1522963 m!1406115))

(declare-fun m!1406117 () Bool)

(assert (=> b!1522963 m!1406117))

(assert (=> b!1522963 m!1406117))

(declare-fun m!1406119 () Bool)

(assert (=> b!1522963 m!1406119))

(assert (=> b!1522963 m!1406119))

(assert (=> b!1522963 m!1406117))

(declare-fun m!1406121 () Bool)

(assert (=> b!1522963 m!1406121))

(declare-fun m!1406123 () Bool)

(assert (=> start!129796 m!1406123))

(declare-fun m!1406125 () Bool)

(assert (=> start!129796 m!1406125))

(push 1)

