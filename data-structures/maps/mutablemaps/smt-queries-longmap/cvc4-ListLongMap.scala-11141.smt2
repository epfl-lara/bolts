; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130244 () Bool)

(assert start!130244)

(declare-fun b!1528225 () Bool)

(declare-fun res!1046070 () Bool)

(declare-fun e!851788 () Bool)

(assert (=> b!1528225 (=> (not res!1046070) (not e!851788))))

(declare-datatypes ((array!101521 0))(
  ( (array!101522 (arr!48981 (Array (_ BitVec 32) (_ BitVec 64))) (size!49532 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101521)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528225 (= res!1046070 (validKeyInArray!0 (select (arr!48981 a!2804) i!961)))))

(declare-fun b!1528226 () Bool)

(declare-fun e!851789 () Bool)

(assert (=> b!1528226 (= e!851788 e!851789)))

(declare-fun res!1046081 () Bool)

(assert (=> b!1528226 (=> (not res!1046081) (not e!851789))))

(declare-datatypes ((SeekEntryResult!13167 0))(
  ( (MissingZero!13167 (index!55062 (_ BitVec 32))) (Found!13167 (index!55063 (_ BitVec 32))) (Intermediate!13167 (undefined!13979 Bool) (index!55064 (_ BitVec 32)) (x!136761 (_ BitVec 32))) (Undefined!13167) (MissingVacant!13167 (index!55065 (_ BitVec 32))) )
))
(declare-fun lt!661838 () SeekEntryResult!13167)

(declare-fun lt!661837 () SeekEntryResult!13167)

(assert (=> b!1528226 (= res!1046081 (= lt!661838 lt!661837))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528226 (= lt!661837 (Intermediate!13167 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101521 (_ BitVec 32)) SeekEntryResult!13167)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528226 (= lt!661838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48981 a!2804) j!70) mask!2512) (select (arr!48981 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528228 () Bool)

(declare-fun e!851791 () Bool)

(declare-fun e!851792 () Bool)

(assert (=> b!1528228 (= e!851791 (not e!851792))))

(declare-fun res!1046080 () Bool)

(assert (=> b!1528228 (=> res!1046080 e!851792)))

(declare-fun lt!661836 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1528228 (= res!1046080 (or (not (= (select (arr!48981 a!2804) j!70) lt!661836)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48981 a!2804) index!487) (select (arr!48981 a!2804) j!70)) (not (= (select (arr!48981 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851787 () Bool)

(assert (=> b!1528228 e!851787))

(declare-fun res!1046082 () Bool)

(assert (=> b!1528228 (=> (not res!1046082) (not e!851787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101521 (_ BitVec 32)) Bool)

(assert (=> b!1528228 (= res!1046082 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51074 0))(
  ( (Unit!51075) )
))
(declare-fun lt!661834 () Unit!51074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51074)

(assert (=> b!1528228 (= lt!661834 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528229 () Bool)

(declare-fun res!1046073 () Bool)

(assert (=> b!1528229 (=> (not res!1046073) (not e!851788))))

(assert (=> b!1528229 (= res!1046073 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49532 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49532 a!2804))))))

(declare-fun b!1528230 () Bool)

(declare-fun res!1046079 () Bool)

(assert (=> b!1528230 (=> (not res!1046079) (not e!851788))))

(assert (=> b!1528230 (= res!1046079 (and (= (size!49532 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49532 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49532 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528231 () Bool)

(assert (=> b!1528231 (= e!851789 e!851791)))

(declare-fun res!1046075 () Bool)

(assert (=> b!1528231 (=> (not res!1046075) (not e!851791))))

(declare-fun lt!661842 () array!101521)

(assert (=> b!1528231 (= res!1046075 (= lt!661838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661836 mask!2512) lt!661836 lt!661842 mask!2512)))))

(assert (=> b!1528231 (= lt!661836 (select (store (arr!48981 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528231 (= lt!661842 (array!101522 (store (arr!48981 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49532 a!2804)))))

(declare-fun b!1528232 () Bool)

(declare-fun e!851790 () Bool)

(assert (=> b!1528232 (= e!851792 e!851790)))

(declare-fun res!1046078 () Bool)

(assert (=> b!1528232 (=> res!1046078 e!851790)))

(declare-fun lt!661839 () SeekEntryResult!13167)

(assert (=> b!1528232 (= res!1046078 (not (= lt!661839 (Found!13167 j!70))))))

(declare-fun lt!661843 () SeekEntryResult!13167)

(declare-fun lt!661840 () SeekEntryResult!13167)

(assert (=> b!1528232 (= lt!661843 lt!661840)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101521 (_ BitVec 32)) SeekEntryResult!13167)

(assert (=> b!1528232 (= lt!661840 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661836 lt!661842 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101521 (_ BitVec 32)) SeekEntryResult!13167)

(assert (=> b!1528232 (= lt!661843 (seekEntryOrOpen!0 lt!661836 lt!661842 mask!2512))))

(declare-fun lt!661835 () SeekEntryResult!13167)

(assert (=> b!1528232 (= lt!661835 lt!661839)))

(assert (=> b!1528232 (= lt!661839 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48981 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528232 (= lt!661835 (seekEntryOrOpen!0 (select (arr!48981 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528233 () Bool)

(declare-fun res!1046072 () Bool)

(assert (=> b!1528233 (=> (not res!1046072) (not e!851789))))

(assert (=> b!1528233 (= res!1046072 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48981 a!2804) j!70) a!2804 mask!2512) lt!661837))))

(declare-fun res!1046076 () Bool)

(assert (=> start!130244 (=> (not res!1046076) (not e!851788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130244 (= res!1046076 (validMask!0 mask!2512))))

(assert (=> start!130244 e!851788))

(assert (=> start!130244 true))

(declare-fun array_inv!37926 (array!101521) Bool)

(assert (=> start!130244 (array_inv!37926 a!2804)))

(declare-fun b!1528227 () Bool)

(declare-fun res!1046071 () Bool)

(assert (=> b!1528227 (=> (not res!1046071) (not e!851788))))

(declare-datatypes ((List!35644 0))(
  ( (Nil!35641) (Cons!35640 (h!37077 (_ BitVec 64)) (t!50345 List!35644)) )
))
(declare-fun arrayNoDuplicates!0 (array!101521 (_ BitVec 32) List!35644) Bool)

(assert (=> b!1528227 (= res!1046071 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35641))))

(declare-fun b!1528234 () Bool)

(declare-fun res!1046074 () Bool)

(assert (=> b!1528234 (=> (not res!1046074) (not e!851788))))

(assert (=> b!1528234 (= res!1046074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528235 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101521 (_ BitVec 32)) SeekEntryResult!13167)

(assert (=> b!1528235 (= e!851787 (= (seekEntry!0 (select (arr!48981 a!2804) j!70) a!2804 mask!2512) (Found!13167 j!70)))))

(declare-fun b!1528236 () Bool)

(declare-fun res!1046077 () Bool)

(assert (=> b!1528236 (=> (not res!1046077) (not e!851788))))

(assert (=> b!1528236 (= res!1046077 (validKeyInArray!0 (select (arr!48981 a!2804) j!70)))))

(declare-fun b!1528237 () Bool)

(assert (=> b!1528237 (= e!851790 true)))

(assert (=> b!1528237 (= lt!661840 lt!661839)))

(declare-fun lt!661841 () Unit!51074)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51074)

(assert (=> b!1528237 (= lt!661841 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(assert (= (and start!130244 res!1046076) b!1528230))

(assert (= (and b!1528230 res!1046079) b!1528225))

(assert (= (and b!1528225 res!1046070) b!1528236))

(assert (= (and b!1528236 res!1046077) b!1528234))

(assert (= (and b!1528234 res!1046074) b!1528227))

(assert (= (and b!1528227 res!1046071) b!1528229))

(assert (= (and b!1528229 res!1046073) b!1528226))

(assert (= (and b!1528226 res!1046081) b!1528233))

(assert (= (and b!1528233 res!1046072) b!1528231))

(assert (= (and b!1528231 res!1046075) b!1528228))

(assert (= (and b!1528228 res!1046082) b!1528235))

(assert (= (and b!1528228 (not res!1046080)) b!1528232))

(assert (= (and b!1528232 (not res!1046078)) b!1528237))

(declare-fun m!1411089 () Bool)

(assert (=> b!1528235 m!1411089))

(assert (=> b!1528235 m!1411089))

(declare-fun m!1411091 () Bool)

(assert (=> b!1528235 m!1411091))

(declare-fun m!1411093 () Bool)

(assert (=> start!130244 m!1411093))

(declare-fun m!1411095 () Bool)

(assert (=> start!130244 m!1411095))

(declare-fun m!1411097 () Bool)

(assert (=> b!1528225 m!1411097))

(assert (=> b!1528225 m!1411097))

(declare-fun m!1411099 () Bool)

(assert (=> b!1528225 m!1411099))

(declare-fun m!1411101 () Bool)

(assert (=> b!1528234 m!1411101))

(assert (=> b!1528236 m!1411089))

(assert (=> b!1528236 m!1411089))

(declare-fun m!1411103 () Bool)

(assert (=> b!1528236 m!1411103))

(assert (=> b!1528228 m!1411089))

(declare-fun m!1411105 () Bool)

(assert (=> b!1528228 m!1411105))

(declare-fun m!1411107 () Bool)

(assert (=> b!1528228 m!1411107))

(declare-fun m!1411109 () Bool)

(assert (=> b!1528228 m!1411109))

(assert (=> b!1528233 m!1411089))

(assert (=> b!1528233 m!1411089))

(declare-fun m!1411111 () Bool)

(assert (=> b!1528233 m!1411111))

(declare-fun m!1411113 () Bool)

(assert (=> b!1528227 m!1411113))

(declare-fun m!1411115 () Bool)

(assert (=> b!1528237 m!1411115))

(declare-fun m!1411117 () Bool)

(assert (=> b!1528231 m!1411117))

(assert (=> b!1528231 m!1411117))

(declare-fun m!1411119 () Bool)

(assert (=> b!1528231 m!1411119))

(declare-fun m!1411121 () Bool)

(assert (=> b!1528231 m!1411121))

(declare-fun m!1411123 () Bool)

(assert (=> b!1528231 m!1411123))

(assert (=> b!1528226 m!1411089))

(assert (=> b!1528226 m!1411089))

(declare-fun m!1411125 () Bool)

(assert (=> b!1528226 m!1411125))

(assert (=> b!1528226 m!1411125))

(assert (=> b!1528226 m!1411089))

(declare-fun m!1411127 () Bool)

(assert (=> b!1528226 m!1411127))

(declare-fun m!1411129 () Bool)

(assert (=> b!1528232 m!1411129))

(assert (=> b!1528232 m!1411089))

(declare-fun m!1411131 () Bool)

(assert (=> b!1528232 m!1411131))

(assert (=> b!1528232 m!1411089))

(declare-fun m!1411133 () Bool)

(assert (=> b!1528232 m!1411133))

(assert (=> b!1528232 m!1411089))

(declare-fun m!1411135 () Bool)

(assert (=> b!1528232 m!1411135))

(push 1)

