; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130300 () Bool)

(assert start!130300)

(declare-fun b!1529262 () Bool)

(declare-fun e!852266 () Bool)

(declare-fun e!852264 () Bool)

(assert (=> b!1529262 (= e!852266 (not e!852264))))

(declare-fun res!1047107 () Bool)

(assert (=> b!1529262 (=> res!1047107 e!852264)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101577 0))(
  ( (array!101578 (arr!49009 (Array (_ BitVec 32) (_ BitVec 64))) (size!49560 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101577)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529262 (= res!1047107 (or (not (= (select (arr!49009 a!2804) j!70) (select (store (arr!49009 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852263 () Bool)

(assert (=> b!1529262 e!852263))

(declare-fun res!1047109 () Bool)

(assert (=> b!1529262 (=> (not res!1047109) (not e!852263))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101577 (_ BitVec 32)) Bool)

(assert (=> b!1529262 (= res!1047109 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51130 0))(
  ( (Unit!51131) )
))
(declare-fun lt!662341 () Unit!51130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51130)

(assert (=> b!1529262 (= lt!662341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529263 () Bool)

(declare-datatypes ((SeekEntryResult!13195 0))(
  ( (MissingZero!13195 (index!55174 (_ BitVec 32))) (Found!13195 (index!55175 (_ BitVec 32))) (Intermediate!13195 (undefined!14007 Bool) (index!55176 (_ BitVec 32)) (x!136869 (_ BitVec 32))) (Undefined!13195) (MissingVacant!13195 (index!55177 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101577 (_ BitVec 32)) SeekEntryResult!13195)

(assert (=> b!1529263 (= e!852263 (= (seekEntry!0 (select (arr!49009 a!2804) j!70) a!2804 mask!2512) (Found!13195 j!70)))))

(declare-fun b!1529264 () Bool)

(declare-fun res!1047113 () Bool)

(declare-fun e!852262 () Bool)

(assert (=> b!1529264 (=> (not res!1047113) (not e!852262))))

(assert (=> b!1529264 (= res!1047113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529265 () Bool)

(declare-fun res!1047114 () Bool)

(assert (=> b!1529265 (=> (not res!1047114) (not e!852262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529265 (= res!1047114 (validKeyInArray!0 (select (arr!49009 a!2804) j!70)))))

(declare-fun b!1529266 () Bool)

(declare-fun res!1047111 () Bool)

(assert (=> b!1529266 (=> (not res!1047111) (not e!852266))))

(declare-fun lt!662338 () SeekEntryResult!13195)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101577 (_ BitVec 32)) SeekEntryResult!13195)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529266 (= res!1047111 (= lt!662338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49009 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49009 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101578 (store (arr!49009 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49560 a!2804)) mask!2512)))))

(declare-fun b!1529261 () Bool)

(declare-fun res!1047106 () Bool)

(assert (=> b!1529261 (=> (not res!1047106) (not e!852262))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529261 (= res!1047106 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49560 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49560 a!2804))))))

(declare-fun res!1047108 () Bool)

(assert (=> start!130300 (=> (not res!1047108) (not e!852262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130300 (= res!1047108 (validMask!0 mask!2512))))

(assert (=> start!130300 e!852262))

(assert (=> start!130300 true))

(declare-fun array_inv!37954 (array!101577) Bool)

(assert (=> start!130300 (array_inv!37954 a!2804)))

(declare-fun b!1529267 () Bool)

(declare-fun res!1047110 () Bool)

(assert (=> b!1529267 (=> (not res!1047110) (not e!852266))))

(declare-fun lt!662340 () SeekEntryResult!13195)

(assert (=> b!1529267 (= res!1047110 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49009 a!2804) j!70) a!2804 mask!2512) lt!662340))))

(declare-fun b!1529268 () Bool)

(declare-fun res!1047117 () Bool)

(assert (=> b!1529268 (=> (not res!1047117) (not e!852262))))

(assert (=> b!1529268 (= res!1047117 (and (= (size!49560 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49560 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49560 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529269 () Bool)

(declare-fun res!1047112 () Bool)

(assert (=> b!1529269 (=> (not res!1047112) (not e!852262))))

(assert (=> b!1529269 (= res!1047112 (validKeyInArray!0 (select (arr!49009 a!2804) i!961)))))

(declare-fun b!1529270 () Bool)

(assert (=> b!1529270 (= e!852262 e!852266)))

(declare-fun res!1047116 () Bool)

(assert (=> b!1529270 (=> (not res!1047116) (not e!852266))))

(assert (=> b!1529270 (= res!1047116 (= lt!662338 lt!662340))))

(assert (=> b!1529270 (= lt!662340 (Intermediate!13195 false resIndex!21 resX!21))))

(assert (=> b!1529270 (= lt!662338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49009 a!2804) j!70) mask!2512) (select (arr!49009 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529271 () Bool)

(assert (=> b!1529271 (= e!852264 true)))

(declare-fun lt!662339 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529271 (= lt!662339 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529272 () Bool)

(declare-fun res!1047115 () Bool)

(assert (=> b!1529272 (=> (not res!1047115) (not e!852262))))

(declare-datatypes ((List!35672 0))(
  ( (Nil!35669) (Cons!35668 (h!37105 (_ BitVec 64)) (t!50373 List!35672)) )
))
(declare-fun arrayNoDuplicates!0 (array!101577 (_ BitVec 32) List!35672) Bool)

(assert (=> b!1529272 (= res!1047115 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35669))))

(assert (= (and start!130300 res!1047108) b!1529268))

(assert (= (and b!1529268 res!1047117) b!1529269))

(assert (= (and b!1529269 res!1047112) b!1529265))

(assert (= (and b!1529265 res!1047114) b!1529264))

(assert (= (and b!1529264 res!1047113) b!1529272))

(assert (= (and b!1529272 res!1047115) b!1529261))

(assert (= (and b!1529261 res!1047106) b!1529270))

(assert (= (and b!1529270 res!1047116) b!1529267))

(assert (= (and b!1529267 res!1047110) b!1529266))

(assert (= (and b!1529266 res!1047111) b!1529262))

(assert (= (and b!1529262 res!1047109) b!1529263))

(assert (= (and b!1529262 (not res!1047107)) b!1529271))

(declare-fun m!1412253 () Bool)

(assert (=> b!1529264 m!1412253))

(declare-fun m!1412255 () Bool)

(assert (=> b!1529265 m!1412255))

(assert (=> b!1529265 m!1412255))

(declare-fun m!1412257 () Bool)

(assert (=> b!1529265 m!1412257))

(assert (=> b!1529263 m!1412255))

(assert (=> b!1529263 m!1412255))

(declare-fun m!1412259 () Bool)

(assert (=> b!1529263 m!1412259))

(assert (=> b!1529267 m!1412255))

(assert (=> b!1529267 m!1412255))

(declare-fun m!1412261 () Bool)

(assert (=> b!1529267 m!1412261))

(declare-fun m!1412263 () Bool)

(assert (=> start!130300 m!1412263))

(declare-fun m!1412265 () Bool)

(assert (=> start!130300 m!1412265))

(assert (=> b!1529270 m!1412255))

(assert (=> b!1529270 m!1412255))

(declare-fun m!1412267 () Bool)

(assert (=> b!1529270 m!1412267))

(assert (=> b!1529270 m!1412267))

(assert (=> b!1529270 m!1412255))

(declare-fun m!1412269 () Bool)

(assert (=> b!1529270 m!1412269))

(declare-fun m!1412271 () Bool)

(assert (=> b!1529272 m!1412271))

(declare-fun m!1412273 () Bool)

(assert (=> b!1529271 m!1412273))

(assert (=> b!1529262 m!1412255))

(declare-fun m!1412275 () Bool)

(assert (=> b!1529262 m!1412275))

(declare-fun m!1412277 () Bool)

(assert (=> b!1529262 m!1412277))

(declare-fun m!1412279 () Bool)

(assert (=> b!1529262 m!1412279))

(declare-fun m!1412281 () Bool)

(assert (=> b!1529262 m!1412281))

(assert (=> b!1529266 m!1412277))

(assert (=> b!1529266 m!1412279))

(assert (=> b!1529266 m!1412279))

(declare-fun m!1412283 () Bool)

(assert (=> b!1529266 m!1412283))

(assert (=> b!1529266 m!1412283))

(assert (=> b!1529266 m!1412279))

(declare-fun m!1412285 () Bool)

(assert (=> b!1529266 m!1412285))

(declare-fun m!1412287 () Bool)

(assert (=> b!1529269 m!1412287))

(assert (=> b!1529269 m!1412287))

(declare-fun m!1412289 () Bool)

(assert (=> b!1529269 m!1412289))

(push 1)

