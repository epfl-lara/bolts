; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130302 () Bool)

(assert start!130302)

(declare-fun b!1529297 () Bool)

(declare-fun res!1047146 () Bool)

(declare-fun e!852279 () Bool)

(assert (=> b!1529297 (=> (not res!1047146) (not e!852279))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101579 0))(
  ( (array!101580 (arr!49010 (Array (_ BitVec 32) (_ BitVec 64))) (size!49561 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101579)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529297 (= res!1047146 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49561 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49561 a!2804))))))

(declare-fun res!1047151 () Bool)

(assert (=> start!130302 (=> (not res!1047151) (not e!852279))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130302 (= res!1047151 (validMask!0 mask!2512))))

(assert (=> start!130302 e!852279))

(assert (=> start!130302 true))

(declare-fun array_inv!37955 (array!101579) Bool)

(assert (=> start!130302 (array_inv!37955 a!2804)))

(declare-fun b!1529298 () Bool)

(declare-fun res!1047148 () Bool)

(assert (=> b!1529298 (=> (not res!1047148) (not e!852279))))

(declare-datatypes ((List!35673 0))(
  ( (Nil!35670) (Cons!35669 (h!37106 (_ BitVec 64)) (t!50374 List!35673)) )
))
(declare-fun arrayNoDuplicates!0 (array!101579 (_ BitVec 32) List!35673) Bool)

(assert (=> b!1529298 (= res!1047148 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35670))))

(declare-fun b!1529299 () Bool)

(declare-fun e!852277 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13196 0))(
  ( (MissingZero!13196 (index!55178 (_ BitVec 32))) (Found!13196 (index!55179 (_ BitVec 32))) (Intermediate!13196 (undefined!14008 Bool) (index!55180 (_ BitVec 32)) (x!136870 (_ BitVec 32))) (Undefined!13196) (MissingVacant!13196 (index!55181 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101579 (_ BitVec 32)) SeekEntryResult!13196)

(assert (=> b!1529299 (= e!852277 (= (seekEntry!0 (select (arr!49010 a!2804) j!70) a!2804 mask!2512) (Found!13196 j!70)))))

(declare-fun b!1529300 () Bool)

(declare-fun e!852278 () Bool)

(assert (=> b!1529300 (= e!852279 e!852278)))

(declare-fun res!1047149 () Bool)

(assert (=> b!1529300 (=> (not res!1047149) (not e!852278))))

(declare-fun lt!662351 () SeekEntryResult!13196)

(declare-fun lt!662353 () SeekEntryResult!13196)

(assert (=> b!1529300 (= res!1047149 (= lt!662351 lt!662353))))

(assert (=> b!1529300 (= lt!662353 (Intermediate!13196 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101579 (_ BitVec 32)) SeekEntryResult!13196)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529300 (= lt!662351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49010 a!2804) j!70) mask!2512) (select (arr!49010 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529301 () Bool)

(declare-fun e!852280 () Bool)

(assert (=> b!1529301 (= e!852280 true)))

(declare-fun lt!662350 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529301 (= lt!662350 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529302 () Bool)

(declare-fun res!1047145 () Bool)

(assert (=> b!1529302 (=> (not res!1047145) (not e!852279))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529302 (= res!1047145 (validKeyInArray!0 (select (arr!49010 a!2804) i!961)))))

(declare-fun b!1529303 () Bool)

(declare-fun res!1047147 () Bool)

(assert (=> b!1529303 (=> (not res!1047147) (not e!852279))))

(assert (=> b!1529303 (= res!1047147 (and (= (size!49561 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49561 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49561 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529304 () Bool)

(declare-fun res!1047144 () Bool)

(assert (=> b!1529304 (=> (not res!1047144) (not e!852279))))

(assert (=> b!1529304 (= res!1047144 (validKeyInArray!0 (select (arr!49010 a!2804) j!70)))))

(declare-fun b!1529305 () Bool)

(declare-fun res!1047152 () Bool)

(assert (=> b!1529305 (=> (not res!1047152) (not e!852279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101579 (_ BitVec 32)) Bool)

(assert (=> b!1529305 (= res!1047152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529306 () Bool)

(declare-fun res!1047142 () Bool)

(assert (=> b!1529306 (=> (not res!1047142) (not e!852278))))

(assert (=> b!1529306 (= res!1047142 (= lt!662351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49010 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49010 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101580 (store (arr!49010 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49561 a!2804)) mask!2512)))))

(declare-fun b!1529307 () Bool)

(assert (=> b!1529307 (= e!852278 (not e!852280))))

(declare-fun res!1047150 () Bool)

(assert (=> b!1529307 (=> res!1047150 e!852280)))

(assert (=> b!1529307 (= res!1047150 (or (not (= (select (arr!49010 a!2804) j!70) (select (store (arr!49010 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529307 e!852277))

(declare-fun res!1047143 () Bool)

(assert (=> b!1529307 (=> (not res!1047143) (not e!852277))))

(assert (=> b!1529307 (= res!1047143 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51132 0))(
  ( (Unit!51133) )
))
(declare-fun lt!662352 () Unit!51132)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51132)

(assert (=> b!1529307 (= lt!662352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529308 () Bool)

(declare-fun res!1047153 () Bool)

(assert (=> b!1529308 (=> (not res!1047153) (not e!852278))))

(assert (=> b!1529308 (= res!1047153 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49010 a!2804) j!70) a!2804 mask!2512) lt!662353))))

(assert (= (and start!130302 res!1047151) b!1529303))

(assert (= (and b!1529303 res!1047147) b!1529302))

(assert (= (and b!1529302 res!1047145) b!1529304))

(assert (= (and b!1529304 res!1047144) b!1529305))

(assert (= (and b!1529305 res!1047152) b!1529298))

(assert (= (and b!1529298 res!1047148) b!1529297))

(assert (= (and b!1529297 res!1047146) b!1529300))

(assert (= (and b!1529300 res!1047149) b!1529308))

(assert (= (and b!1529308 res!1047153) b!1529306))

(assert (= (and b!1529306 res!1047142) b!1529307))

(assert (= (and b!1529307 res!1047143) b!1529299))

(assert (= (and b!1529307 (not res!1047150)) b!1529301))

(declare-fun m!1412291 () Bool)

(assert (=> b!1529304 m!1412291))

(assert (=> b!1529304 m!1412291))

(declare-fun m!1412293 () Bool)

(assert (=> b!1529304 m!1412293))

(declare-fun m!1412295 () Bool)

(assert (=> b!1529305 m!1412295))

(declare-fun m!1412297 () Bool)

(assert (=> b!1529302 m!1412297))

(assert (=> b!1529302 m!1412297))

(declare-fun m!1412299 () Bool)

(assert (=> b!1529302 m!1412299))

(declare-fun m!1412301 () Bool)

(assert (=> b!1529301 m!1412301))

(assert (=> b!1529308 m!1412291))

(assert (=> b!1529308 m!1412291))

(declare-fun m!1412303 () Bool)

(assert (=> b!1529308 m!1412303))

(declare-fun m!1412305 () Bool)

(assert (=> start!130302 m!1412305))

(declare-fun m!1412307 () Bool)

(assert (=> start!130302 m!1412307))

(declare-fun m!1412309 () Bool)

(assert (=> b!1529306 m!1412309))

(declare-fun m!1412311 () Bool)

(assert (=> b!1529306 m!1412311))

(assert (=> b!1529306 m!1412311))

(declare-fun m!1412313 () Bool)

(assert (=> b!1529306 m!1412313))

(assert (=> b!1529306 m!1412313))

(assert (=> b!1529306 m!1412311))

(declare-fun m!1412315 () Bool)

(assert (=> b!1529306 m!1412315))

(assert (=> b!1529307 m!1412291))

(declare-fun m!1412317 () Bool)

(assert (=> b!1529307 m!1412317))

(assert (=> b!1529307 m!1412309))

(assert (=> b!1529307 m!1412311))

(declare-fun m!1412319 () Bool)

(assert (=> b!1529307 m!1412319))

(assert (=> b!1529299 m!1412291))

(assert (=> b!1529299 m!1412291))

(declare-fun m!1412321 () Bool)

(assert (=> b!1529299 m!1412321))

(assert (=> b!1529300 m!1412291))

(assert (=> b!1529300 m!1412291))

(declare-fun m!1412323 () Bool)

(assert (=> b!1529300 m!1412323))

(assert (=> b!1529300 m!1412323))

(assert (=> b!1529300 m!1412291))

(declare-fun m!1412325 () Bool)

(assert (=> b!1529300 m!1412325))

(declare-fun m!1412327 () Bool)

(assert (=> b!1529298 m!1412327))

(check-sat (not b!1529308) (not b!1529305) (not start!130302) (not b!1529306) (not b!1529298) (not b!1529304) (not b!1529307) (not b!1529300) (not b!1529299) (not b!1529302) (not b!1529301))
(check-sat)
