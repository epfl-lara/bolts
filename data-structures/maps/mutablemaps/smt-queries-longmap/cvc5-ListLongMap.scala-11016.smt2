; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128974 () Bool)

(assert start!128974)

(declare-fun b!1511271 () Bool)

(declare-fun e!843788 () Bool)

(declare-fun e!843787 () Bool)

(assert (=> b!1511271 (= e!843788 e!843787)))

(declare-fun res!1031254 () Bool)

(assert (=> b!1511271 (=> (not res!1031254) (not e!843787))))

(declare-datatypes ((SeekEntryResult!12796 0))(
  ( (MissingZero!12796 (index!53578 (_ BitVec 32))) (Found!12796 (index!53579 (_ BitVec 32))) (Intermediate!12796 (undefined!13608 Bool) (index!53580 (_ BitVec 32)) (x!135327 (_ BitVec 32))) (Undefined!12796) (MissingVacant!12796 (index!53581 (_ BitVec 32))) )
))
(declare-fun lt!655367 () SeekEntryResult!12796)

(declare-fun lt!655369 () SeekEntryResult!12796)

(assert (=> b!1511271 (= res!1031254 (= lt!655367 lt!655369))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511271 (= lt!655369 (Intermediate!12796 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100743 0))(
  ( (array!100744 (arr!48604 (Array (_ BitVec 32) (_ BitVec 64))) (size!49155 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100743)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100743 (_ BitVec 32)) SeekEntryResult!12796)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511271 (= lt!655367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48604 a!2804) j!70) mask!2512) (select (arr!48604 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511272 () Bool)

(declare-fun res!1031250 () Bool)

(assert (=> b!1511272 (=> (not res!1031250) (not e!843788))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1511272 (= res!1031250 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49155 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49155 a!2804))))))

(declare-fun b!1511273 () Bool)

(declare-fun res!1031252 () Bool)

(assert (=> b!1511273 (=> (not res!1031252) (not e!843788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100743 (_ BitVec 32)) Bool)

(assert (=> b!1511273 (= res!1031252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511274 () Bool)

(declare-fun res!1031248 () Bool)

(assert (=> b!1511274 (=> (not res!1031248) (not e!843788))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511274 (= res!1031248 (and (= (size!49155 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49155 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49155 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511275 () Bool)

(assert (=> b!1511275 (= e!843787 (not true))))

(declare-fun e!843786 () Bool)

(assert (=> b!1511275 e!843786))

(declare-fun res!1031247 () Bool)

(assert (=> b!1511275 (=> (not res!1031247) (not e!843786))))

(assert (=> b!1511275 (= res!1031247 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50416 0))(
  ( (Unit!50417) )
))
(declare-fun lt!655368 () Unit!50416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50416)

(assert (=> b!1511275 (= lt!655368 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1031246 () Bool)

(assert (=> start!128974 (=> (not res!1031246) (not e!843788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128974 (= res!1031246 (validMask!0 mask!2512))))

(assert (=> start!128974 e!843788))

(assert (=> start!128974 true))

(declare-fun array_inv!37549 (array!100743) Bool)

(assert (=> start!128974 (array_inv!37549 a!2804)))

(declare-fun b!1511276 () Bool)

(declare-fun res!1031249 () Bool)

(assert (=> b!1511276 (=> (not res!1031249) (not e!843787))))

(assert (=> b!1511276 (= res!1031249 (= lt!655367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48604 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48604 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100744 (store (arr!48604 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49155 a!2804)) mask!2512)))))

(declare-fun b!1511277 () Bool)

(declare-fun res!1031251 () Bool)

(assert (=> b!1511277 (=> (not res!1031251) (not e!843788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511277 (= res!1031251 (validKeyInArray!0 (select (arr!48604 a!2804) j!70)))))

(declare-fun b!1511278 () Bool)

(declare-fun res!1031256 () Bool)

(assert (=> b!1511278 (=> (not res!1031256) (not e!843787))))

(assert (=> b!1511278 (= res!1031256 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48604 a!2804) j!70) a!2804 mask!2512) lt!655369))))

(declare-fun b!1511279 () Bool)

(declare-fun res!1031253 () Bool)

(assert (=> b!1511279 (=> (not res!1031253) (not e!843788))))

(declare-datatypes ((List!35267 0))(
  ( (Nil!35264) (Cons!35263 (h!36676 (_ BitVec 64)) (t!49968 List!35267)) )
))
(declare-fun arrayNoDuplicates!0 (array!100743 (_ BitVec 32) List!35267) Bool)

(assert (=> b!1511279 (= res!1031253 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35264))))

(declare-fun b!1511280 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100743 (_ BitVec 32)) SeekEntryResult!12796)

(assert (=> b!1511280 (= e!843786 (= (seekEntry!0 (select (arr!48604 a!2804) j!70) a!2804 mask!2512) (Found!12796 j!70)))))

(declare-fun b!1511281 () Bool)

(declare-fun res!1031255 () Bool)

(assert (=> b!1511281 (=> (not res!1031255) (not e!843788))))

(assert (=> b!1511281 (= res!1031255 (validKeyInArray!0 (select (arr!48604 a!2804) i!961)))))

(assert (= (and start!128974 res!1031246) b!1511274))

(assert (= (and b!1511274 res!1031248) b!1511281))

(assert (= (and b!1511281 res!1031255) b!1511277))

(assert (= (and b!1511277 res!1031251) b!1511273))

(assert (= (and b!1511273 res!1031252) b!1511279))

(assert (= (and b!1511279 res!1031253) b!1511272))

(assert (= (and b!1511272 res!1031250) b!1511271))

(assert (= (and b!1511271 res!1031254) b!1511278))

(assert (= (and b!1511278 res!1031256) b!1511276))

(assert (= (and b!1511276 res!1031249) b!1511275))

(assert (= (and b!1511275 res!1031247) b!1511280))

(declare-fun m!1394013 () Bool)

(assert (=> b!1511276 m!1394013))

(declare-fun m!1394015 () Bool)

(assert (=> b!1511276 m!1394015))

(assert (=> b!1511276 m!1394015))

(declare-fun m!1394017 () Bool)

(assert (=> b!1511276 m!1394017))

(assert (=> b!1511276 m!1394017))

(assert (=> b!1511276 m!1394015))

(declare-fun m!1394019 () Bool)

(assert (=> b!1511276 m!1394019))

(declare-fun m!1394021 () Bool)

(assert (=> b!1511281 m!1394021))

(assert (=> b!1511281 m!1394021))

(declare-fun m!1394023 () Bool)

(assert (=> b!1511281 m!1394023))

(declare-fun m!1394025 () Bool)

(assert (=> b!1511278 m!1394025))

(assert (=> b!1511278 m!1394025))

(declare-fun m!1394027 () Bool)

(assert (=> b!1511278 m!1394027))

(declare-fun m!1394029 () Bool)

(assert (=> b!1511273 m!1394029))

(assert (=> b!1511277 m!1394025))

(assert (=> b!1511277 m!1394025))

(declare-fun m!1394031 () Bool)

(assert (=> b!1511277 m!1394031))

(declare-fun m!1394033 () Bool)

(assert (=> b!1511275 m!1394033))

(declare-fun m!1394035 () Bool)

(assert (=> b!1511275 m!1394035))

(declare-fun m!1394037 () Bool)

(assert (=> start!128974 m!1394037))

(declare-fun m!1394039 () Bool)

(assert (=> start!128974 m!1394039))

(declare-fun m!1394041 () Bool)

(assert (=> b!1511279 m!1394041))

(assert (=> b!1511280 m!1394025))

(assert (=> b!1511280 m!1394025))

(declare-fun m!1394043 () Bool)

(assert (=> b!1511280 m!1394043))

(assert (=> b!1511271 m!1394025))

(assert (=> b!1511271 m!1394025))

(declare-fun m!1394045 () Bool)

(assert (=> b!1511271 m!1394045))

(assert (=> b!1511271 m!1394045))

(assert (=> b!1511271 m!1394025))

(declare-fun m!1394047 () Bool)

(assert (=> b!1511271 m!1394047))

(push 1)

