; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129804 () Bool)

(assert start!129804)

(declare-fun b!1523088 () Bool)

(declare-fun res!1042140 () Bool)

(declare-fun e!849209 () Bool)

(assert (=> b!1523088 (=> (not res!1042140) (not e!849209))))

(declare-datatypes ((SeekEntryResult!13076 0))(
  ( (MissingZero!13076 (index!54698 (_ BitVec 32))) (Found!13076 (index!54699 (_ BitVec 32))) (Intermediate!13076 (undefined!13888 Bool) (index!54700 (_ BitVec 32)) (x!136397 (_ BitVec 32))) (Undefined!13076) (MissingVacant!13076 (index!54701 (_ BitVec 32))) )
))
(declare-fun lt!659814 () SeekEntryResult!13076)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101327 0))(
  ( (array!101328 (arr!48890 (Array (_ BitVec 32) (_ BitVec 64))) (size!49441 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101327)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101327 (_ BitVec 32)) SeekEntryResult!13076)

(assert (=> b!1523088 (= res!1042140 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48890 a!2804) j!70) a!2804 mask!2512) lt!659814))))

(declare-fun b!1523089 () Bool)

(declare-fun res!1042142 () Bool)

(declare-fun e!849212 () Bool)

(assert (=> b!1523089 (=> (not res!1042142) (not e!849212))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1523089 (= res!1042142 (and (= (size!49441 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49441 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49441 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523090 () Bool)

(declare-fun res!1042133 () Bool)

(assert (=> b!1523090 (=> (not res!1042133) (not e!849209))))

(declare-fun lt!659815 () SeekEntryResult!13076)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523090 (= res!1042133 (= lt!659815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48890 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48890 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101328 (store (arr!48890 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49441 a!2804)) mask!2512)))))

(declare-fun b!1523091 () Bool)

(declare-fun res!1042136 () Bool)

(assert (=> b!1523091 (=> (not res!1042136) (not e!849212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523091 (= res!1042136 (validKeyInArray!0 (select (arr!48890 a!2804) i!961)))))

(declare-fun res!1042137 () Bool)

(assert (=> start!129804 (=> (not res!1042137) (not e!849212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129804 (= res!1042137 (validMask!0 mask!2512))))

(assert (=> start!129804 e!849212))

(assert (=> start!129804 true))

(declare-fun array_inv!37835 (array!101327) Bool)

(assert (=> start!129804 (array_inv!37835 a!2804)))

(declare-fun b!1523092 () Bool)

(declare-fun res!1042134 () Bool)

(assert (=> b!1523092 (=> (not res!1042134) (not e!849212))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1523092 (= res!1042134 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49441 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49441 a!2804))))))

(declare-fun b!1523093 () Bool)

(declare-fun res!1042135 () Bool)

(assert (=> b!1523093 (=> (not res!1042135) (not e!849212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101327 (_ BitVec 32)) Bool)

(assert (=> b!1523093 (= res!1042135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523094 () Bool)

(declare-fun res!1042141 () Bool)

(assert (=> b!1523094 (=> (not res!1042141) (not e!849212))))

(assert (=> b!1523094 (= res!1042141 (validKeyInArray!0 (select (arr!48890 a!2804) j!70)))))

(declare-fun b!1523095 () Bool)

(assert (=> b!1523095 (= e!849212 e!849209)))

(declare-fun res!1042143 () Bool)

(assert (=> b!1523095 (=> (not res!1042143) (not e!849209))))

(assert (=> b!1523095 (= res!1042143 (= lt!659815 lt!659814))))

(assert (=> b!1523095 (= lt!659814 (Intermediate!13076 false resIndex!21 resX!21))))

(assert (=> b!1523095 (= lt!659815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48890 a!2804) j!70) mask!2512) (select (arr!48890 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523096 () Bool)

(assert (=> b!1523096 (= e!849209 (not true))))

(declare-fun e!849210 () Bool)

(assert (=> b!1523096 e!849210))

(declare-fun res!1042139 () Bool)

(assert (=> b!1523096 (=> (not res!1042139) (not e!849210))))

(assert (=> b!1523096 (= res!1042139 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50892 0))(
  ( (Unit!50893) )
))
(declare-fun lt!659813 () Unit!50892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50892)

(assert (=> b!1523096 (= lt!659813 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523097 () Bool)

(declare-fun res!1042138 () Bool)

(assert (=> b!1523097 (=> (not res!1042138) (not e!849212))))

(declare-datatypes ((List!35553 0))(
  ( (Nil!35550) (Cons!35549 (h!36974 (_ BitVec 64)) (t!50254 List!35553)) )
))
(declare-fun arrayNoDuplicates!0 (array!101327 (_ BitVec 32) List!35553) Bool)

(assert (=> b!1523097 (= res!1042138 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35550))))

(declare-fun b!1523098 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101327 (_ BitVec 32)) SeekEntryResult!13076)

(assert (=> b!1523098 (= e!849210 (= (seekEntry!0 (select (arr!48890 a!2804) j!70) a!2804 mask!2512) (Found!13076 j!70)))))

(assert (= (and start!129804 res!1042137) b!1523089))

(assert (= (and b!1523089 res!1042142) b!1523091))

(assert (= (and b!1523091 res!1042136) b!1523094))

(assert (= (and b!1523094 res!1042141) b!1523093))

(assert (= (and b!1523093 res!1042135) b!1523097))

(assert (= (and b!1523097 res!1042138) b!1523092))

(assert (= (and b!1523092 res!1042134) b!1523095))

(assert (= (and b!1523095 res!1042143) b!1523088))

(assert (= (and b!1523088 res!1042140) b!1523090))

(assert (= (and b!1523090 res!1042133) b!1523096))

(assert (= (and b!1523096 res!1042139) b!1523098))

(declare-fun m!1406235 () Bool)

(assert (=> b!1523094 m!1406235))

(assert (=> b!1523094 m!1406235))

(declare-fun m!1406237 () Bool)

(assert (=> b!1523094 m!1406237))

(declare-fun m!1406239 () Bool)

(assert (=> b!1523093 m!1406239))

(declare-fun m!1406241 () Bool)

(assert (=> start!129804 m!1406241))

(declare-fun m!1406243 () Bool)

(assert (=> start!129804 m!1406243))

(assert (=> b!1523088 m!1406235))

(assert (=> b!1523088 m!1406235))

(declare-fun m!1406245 () Bool)

(assert (=> b!1523088 m!1406245))

(assert (=> b!1523095 m!1406235))

(assert (=> b!1523095 m!1406235))

(declare-fun m!1406247 () Bool)

(assert (=> b!1523095 m!1406247))

(assert (=> b!1523095 m!1406247))

(assert (=> b!1523095 m!1406235))

(declare-fun m!1406249 () Bool)

(assert (=> b!1523095 m!1406249))

(declare-fun m!1406251 () Bool)

(assert (=> b!1523090 m!1406251))

(declare-fun m!1406253 () Bool)

(assert (=> b!1523090 m!1406253))

(assert (=> b!1523090 m!1406253))

(declare-fun m!1406255 () Bool)

(assert (=> b!1523090 m!1406255))

(assert (=> b!1523090 m!1406255))

(assert (=> b!1523090 m!1406253))

(declare-fun m!1406257 () Bool)

(assert (=> b!1523090 m!1406257))

(declare-fun m!1406259 () Bool)

(assert (=> b!1523096 m!1406259))

(declare-fun m!1406261 () Bool)

(assert (=> b!1523096 m!1406261))

(declare-fun m!1406263 () Bool)

(assert (=> b!1523097 m!1406263))

(declare-fun m!1406265 () Bool)

(assert (=> b!1523091 m!1406265))

(assert (=> b!1523091 m!1406265))

(declare-fun m!1406267 () Bool)

(assert (=> b!1523091 m!1406267))

(assert (=> b!1523098 m!1406235))

(assert (=> b!1523098 m!1406235))

(declare-fun m!1406269 () Bool)

(assert (=> b!1523098 m!1406269))

(check-sat (not b!1523091) (not b!1523093) (not start!129804) (not b!1523096) (not b!1523095) (not b!1523088) (not b!1523098) (not b!1523097) (not b!1523090) (not b!1523094))
(check-sat)
