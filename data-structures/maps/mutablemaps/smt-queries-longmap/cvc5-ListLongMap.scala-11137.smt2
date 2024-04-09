; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130150 () Bool)

(assert start!130150)

(declare-fun b!1527237 () Bool)

(declare-fun res!1045417 () Bool)

(declare-fun e!851246 () Bool)

(assert (=> b!1527237 (=> (not res!1045417) (not e!851246))))

(declare-datatypes ((array!101490 0))(
  ( (array!101491 (arr!48967 (Array (_ BitVec 32) (_ BitVec 64))) (size!49518 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101490)

(declare-datatypes ((List!35630 0))(
  ( (Nil!35627) (Cons!35626 (h!37060 (_ BitVec 64)) (t!50331 List!35630)) )
))
(declare-fun arrayNoDuplicates!0 (array!101490 (_ BitVec 32) List!35630) Bool)

(assert (=> b!1527237 (= res!1045417 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35627))))

(declare-fun b!1527238 () Bool)

(declare-fun res!1045411 () Bool)

(assert (=> b!1527238 (=> (not res!1045411) (not e!851246))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527238 (= res!1045411 (validKeyInArray!0 (select (arr!48967 a!2804) j!70)))))

(declare-fun b!1527239 () Bool)

(declare-fun res!1045415 () Bool)

(declare-fun e!851251 () Bool)

(assert (=> b!1527239 (=> (not res!1045415) (not e!851251))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13153 0))(
  ( (MissingZero!13153 (index!55006 (_ BitVec 32))) (Found!13153 (index!55007 (_ BitVec 32))) (Intermediate!13153 (undefined!13965 Bool) (index!55008 (_ BitVec 32)) (x!136706 (_ BitVec 32))) (Undefined!13153) (MissingVacant!13153 (index!55009 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101490 (_ BitVec 32)) SeekEntryResult!13153)

(assert (=> b!1527239 (= res!1045415 (= (seekEntry!0 (select (arr!48967 a!2804) j!70) a!2804 mask!2512) (Found!13153 j!70)))))

(declare-fun b!1527240 () Bool)

(declare-fun res!1045422 () Bool)

(assert (=> b!1527240 (=> (not res!1045422) (not e!851246))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1527240 (= res!1045422 (and (= (size!49518 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49518 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49518 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527241 () Bool)

(declare-fun e!851249 () Bool)

(declare-fun e!851248 () Bool)

(assert (=> b!1527241 (= e!851249 e!851248)))

(declare-fun res!1045412 () Bool)

(assert (=> b!1527241 (=> (not res!1045412) (not e!851248))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101490 (_ BitVec 32)) SeekEntryResult!13153)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101490 (_ BitVec 32)) SeekEntryResult!13153)

(assert (=> b!1527241 (= res!1045412 (= (seekEntryOrOpen!0 (select (arr!48967 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48967 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527242 () Bool)

(declare-fun e!851247 () Bool)

(assert (=> b!1527242 (= e!851247 (not true))))

(assert (=> b!1527242 e!851251))

(declare-fun res!1045421 () Bool)

(assert (=> b!1527242 (=> (not res!1045421) (not e!851251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101490 (_ BitVec 32)) Bool)

(assert (=> b!1527242 (= res!1045421 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51046 0))(
  ( (Unit!51047) )
))
(declare-fun lt!661327 () Unit!51046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51046)

(assert (=> b!1527242 (= lt!661327 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527243 () Bool)

(declare-fun e!851250 () Bool)

(assert (=> b!1527243 (= e!851250 e!851247)))

(declare-fun res!1045410 () Bool)

(assert (=> b!1527243 (=> (not res!1045410) (not e!851247))))

(declare-fun lt!661329 () array!101490)

(declare-fun lt!661326 () SeekEntryResult!13153)

(declare-fun lt!661330 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101490 (_ BitVec 32)) SeekEntryResult!13153)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527243 (= res!1045410 (= lt!661326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661330 mask!2512) lt!661330 lt!661329 mask!2512)))))

(assert (=> b!1527243 (= lt!661330 (select (store (arr!48967 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527243 (= lt!661329 (array!101491 (store (arr!48967 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49518 a!2804)))))

(declare-fun b!1527244 () Bool)

(declare-fun res!1045409 () Bool)

(assert (=> b!1527244 (=> (not res!1045409) (not e!851246))))

(assert (=> b!1527244 (= res!1045409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527245 () Bool)

(assert (=> b!1527245 (= e!851251 e!851249)))

(declare-fun res!1045413 () Bool)

(assert (=> b!1527245 (=> res!1045413 e!851249)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527245 (= res!1045413 (or (not (= (select (arr!48967 a!2804) j!70) lt!661330)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48967 a!2804) index!487) (select (arr!48967 a!2804) j!70)) (not (= (select (arr!48967 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1045419 () Bool)

(assert (=> start!130150 (=> (not res!1045419) (not e!851246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130150 (= res!1045419 (validMask!0 mask!2512))))

(assert (=> start!130150 e!851246))

(assert (=> start!130150 true))

(declare-fun array_inv!37912 (array!101490) Bool)

(assert (=> start!130150 (array_inv!37912 a!2804)))

(declare-fun b!1527246 () Bool)

(declare-fun res!1045418 () Bool)

(assert (=> b!1527246 (=> (not res!1045418) (not e!851246))))

(assert (=> b!1527246 (= res!1045418 (validKeyInArray!0 (select (arr!48967 a!2804) i!961)))))

(declare-fun b!1527247 () Bool)

(assert (=> b!1527247 (= e!851248 (= (seekEntryOrOpen!0 lt!661330 lt!661329 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661330 lt!661329 mask!2512)))))

(declare-fun b!1527248 () Bool)

(declare-fun res!1045420 () Bool)

(assert (=> b!1527248 (=> (not res!1045420) (not e!851246))))

(assert (=> b!1527248 (= res!1045420 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49518 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49518 a!2804))))))

(declare-fun b!1527249 () Bool)

(assert (=> b!1527249 (= e!851246 e!851250)))

(declare-fun res!1045414 () Bool)

(assert (=> b!1527249 (=> (not res!1045414) (not e!851250))))

(declare-fun lt!661328 () SeekEntryResult!13153)

(assert (=> b!1527249 (= res!1045414 (= lt!661326 lt!661328))))

(assert (=> b!1527249 (= lt!661328 (Intermediate!13153 false resIndex!21 resX!21))))

(assert (=> b!1527249 (= lt!661326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48967 a!2804) j!70) mask!2512) (select (arr!48967 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527250 () Bool)

(declare-fun res!1045416 () Bool)

(assert (=> b!1527250 (=> (not res!1045416) (not e!851250))))

(assert (=> b!1527250 (= res!1045416 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48967 a!2804) j!70) a!2804 mask!2512) lt!661328))))

(assert (= (and start!130150 res!1045419) b!1527240))

(assert (= (and b!1527240 res!1045422) b!1527246))

(assert (= (and b!1527246 res!1045418) b!1527238))

(assert (= (and b!1527238 res!1045411) b!1527244))

(assert (= (and b!1527244 res!1045409) b!1527237))

(assert (= (and b!1527237 res!1045417) b!1527248))

(assert (= (and b!1527248 res!1045420) b!1527249))

(assert (= (and b!1527249 res!1045414) b!1527250))

(assert (= (and b!1527250 res!1045416) b!1527243))

(assert (= (and b!1527243 res!1045410) b!1527242))

(assert (= (and b!1527242 res!1045421) b!1527239))

(assert (= (and b!1527239 res!1045415) b!1527245))

(assert (= (and b!1527245 (not res!1045413)) b!1527241))

(assert (= (and b!1527241 res!1045412) b!1527247))

(declare-fun m!1410177 () Bool)

(assert (=> b!1527249 m!1410177))

(assert (=> b!1527249 m!1410177))

(declare-fun m!1410179 () Bool)

(assert (=> b!1527249 m!1410179))

(assert (=> b!1527249 m!1410179))

(assert (=> b!1527249 m!1410177))

(declare-fun m!1410181 () Bool)

(assert (=> b!1527249 m!1410181))

(assert (=> b!1527250 m!1410177))

(assert (=> b!1527250 m!1410177))

(declare-fun m!1410183 () Bool)

(assert (=> b!1527250 m!1410183))

(declare-fun m!1410185 () Bool)

(assert (=> b!1527247 m!1410185))

(declare-fun m!1410187 () Bool)

(assert (=> b!1527247 m!1410187))

(assert (=> b!1527238 m!1410177))

(assert (=> b!1527238 m!1410177))

(declare-fun m!1410189 () Bool)

(assert (=> b!1527238 m!1410189))

(assert (=> b!1527241 m!1410177))

(assert (=> b!1527241 m!1410177))

(declare-fun m!1410191 () Bool)

(assert (=> b!1527241 m!1410191))

(assert (=> b!1527241 m!1410177))

(declare-fun m!1410193 () Bool)

(assert (=> b!1527241 m!1410193))

(declare-fun m!1410195 () Bool)

(assert (=> b!1527246 m!1410195))

(assert (=> b!1527246 m!1410195))

(declare-fun m!1410197 () Bool)

(assert (=> b!1527246 m!1410197))

(declare-fun m!1410199 () Bool)

(assert (=> b!1527244 m!1410199))

(declare-fun m!1410201 () Bool)

(assert (=> b!1527243 m!1410201))

(assert (=> b!1527243 m!1410201))

(declare-fun m!1410203 () Bool)

(assert (=> b!1527243 m!1410203))

(declare-fun m!1410205 () Bool)

(assert (=> b!1527243 m!1410205))

(declare-fun m!1410207 () Bool)

(assert (=> b!1527243 m!1410207))

(assert (=> b!1527245 m!1410177))

(declare-fun m!1410209 () Bool)

(assert (=> b!1527245 m!1410209))

(declare-fun m!1410211 () Bool)

(assert (=> b!1527242 m!1410211))

(declare-fun m!1410213 () Bool)

(assert (=> b!1527242 m!1410213))

(assert (=> b!1527239 m!1410177))

(assert (=> b!1527239 m!1410177))

(declare-fun m!1410215 () Bool)

(assert (=> b!1527239 m!1410215))

(declare-fun m!1410217 () Bool)

(assert (=> start!130150 m!1410217))

(declare-fun m!1410219 () Bool)

(assert (=> start!130150 m!1410219))

(declare-fun m!1410221 () Bool)

(assert (=> b!1527237 m!1410221))

(push 1)

