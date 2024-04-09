; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130152 () Bool)

(assert start!130152)

(declare-fun b!1527279 () Bool)

(declare-fun res!1045460 () Bool)

(declare-fun e!851272 () Bool)

(assert (=> b!1527279 (=> (not res!1045460) (not e!851272))))

(declare-datatypes ((array!101492 0))(
  ( (array!101493 (arr!48968 (Array (_ BitVec 32) (_ BitVec 64))) (size!49519 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101492)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101492 (_ BitVec 32)) Bool)

(assert (=> b!1527279 (= res!1045460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527280 () Bool)

(declare-fun e!851273 () Bool)

(assert (=> b!1527280 (= e!851273 (not true))))

(declare-fun e!851267 () Bool)

(assert (=> b!1527280 e!851267))

(declare-fun res!1045462 () Bool)

(assert (=> b!1527280 (=> (not res!1045462) (not e!851267))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1527280 (= res!1045462 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51048 0))(
  ( (Unit!51049) )
))
(declare-fun lt!661344 () Unit!51048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51048)

(assert (=> b!1527280 (= lt!661344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527281 () Bool)

(declare-fun res!1045456 () Bool)

(assert (=> b!1527281 (=> (not res!1045456) (not e!851272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527281 (= res!1045456 (validKeyInArray!0 (select (arr!48968 a!2804) j!70)))))

(declare-fun b!1527282 () Bool)

(declare-fun e!851269 () Bool)

(declare-fun e!851268 () Bool)

(assert (=> b!1527282 (= e!851269 e!851268)))

(declare-fun res!1045451 () Bool)

(assert (=> b!1527282 (=> (not res!1045451) (not e!851268))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13154 0))(
  ( (MissingZero!13154 (index!55010 (_ BitVec 32))) (Found!13154 (index!55011 (_ BitVec 32))) (Intermediate!13154 (undefined!13966 Bool) (index!55012 (_ BitVec 32)) (x!136707 (_ BitVec 32))) (Undefined!13154) (MissingVacant!13154 (index!55013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101492 (_ BitVec 32)) SeekEntryResult!13154)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101492 (_ BitVec 32)) SeekEntryResult!13154)

(assert (=> b!1527282 (= res!1045451 (= (seekEntryOrOpen!0 (select (arr!48968 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48968 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527283 () Bool)

(declare-fun e!851271 () Bool)

(assert (=> b!1527283 (= e!851272 e!851271)))

(declare-fun res!1045457 () Bool)

(assert (=> b!1527283 (=> (not res!1045457) (not e!851271))))

(declare-fun lt!661341 () SeekEntryResult!13154)

(declare-fun lt!661342 () SeekEntryResult!13154)

(assert (=> b!1527283 (= res!1045457 (= lt!661341 lt!661342))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1527283 (= lt!661342 (Intermediate!13154 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101492 (_ BitVec 32)) SeekEntryResult!13154)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527283 (= lt!661341 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48968 a!2804) j!70) mask!2512) (select (arr!48968 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527284 () Bool)

(declare-fun res!1045458 () Bool)

(assert (=> b!1527284 (=> (not res!1045458) (not e!851272))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1527284 (= res!1045458 (validKeyInArray!0 (select (arr!48968 a!2804) i!961)))))

(declare-fun b!1527285 () Bool)

(declare-fun res!1045461 () Bool)

(assert (=> b!1527285 (=> (not res!1045461) (not e!851267))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101492 (_ BitVec 32)) SeekEntryResult!13154)

(assert (=> b!1527285 (= res!1045461 (= (seekEntry!0 (select (arr!48968 a!2804) j!70) a!2804 mask!2512) (Found!13154 j!70)))))

(declare-fun b!1527286 () Bool)

(assert (=> b!1527286 (= e!851271 e!851273)))

(declare-fun res!1045453 () Bool)

(assert (=> b!1527286 (=> (not res!1045453) (not e!851273))))

(declare-fun lt!661345 () (_ BitVec 64))

(declare-fun lt!661343 () array!101492)

(assert (=> b!1527286 (= res!1045453 (= lt!661341 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661345 mask!2512) lt!661345 lt!661343 mask!2512)))))

(assert (=> b!1527286 (= lt!661345 (select (store (arr!48968 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527286 (= lt!661343 (array!101493 (store (arr!48968 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49519 a!2804)))))

(declare-fun b!1527287 () Bool)

(declare-fun res!1045452 () Bool)

(assert (=> b!1527287 (=> (not res!1045452) (not e!851272))))

(declare-datatypes ((List!35631 0))(
  ( (Nil!35628) (Cons!35627 (h!37061 (_ BitVec 64)) (t!50332 List!35631)) )
))
(declare-fun arrayNoDuplicates!0 (array!101492 (_ BitVec 32) List!35631) Bool)

(assert (=> b!1527287 (= res!1045452 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35628))))

(declare-fun b!1527288 () Bool)

(declare-fun res!1045459 () Bool)

(assert (=> b!1527288 (=> (not res!1045459) (not e!851272))))

(assert (=> b!1527288 (= res!1045459 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49519 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49519 a!2804))))))

(declare-fun b!1527290 () Bool)

(assert (=> b!1527290 (= e!851267 e!851269)))

(declare-fun res!1045454 () Bool)

(assert (=> b!1527290 (=> res!1045454 e!851269)))

(assert (=> b!1527290 (= res!1045454 (or (not (= (select (arr!48968 a!2804) j!70) lt!661345)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48968 a!2804) index!487) (select (arr!48968 a!2804) j!70)) (not (= (select (arr!48968 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527291 () Bool)

(declare-fun res!1045464 () Bool)

(assert (=> b!1527291 (=> (not res!1045464) (not e!851272))))

(assert (=> b!1527291 (= res!1045464 (and (= (size!49519 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49519 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49519 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527292 () Bool)

(declare-fun res!1045455 () Bool)

(assert (=> b!1527292 (=> (not res!1045455) (not e!851271))))

(assert (=> b!1527292 (= res!1045455 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48968 a!2804) j!70) a!2804 mask!2512) lt!661342))))

(declare-fun res!1045463 () Bool)

(assert (=> start!130152 (=> (not res!1045463) (not e!851272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130152 (= res!1045463 (validMask!0 mask!2512))))

(assert (=> start!130152 e!851272))

(assert (=> start!130152 true))

(declare-fun array_inv!37913 (array!101492) Bool)

(assert (=> start!130152 (array_inv!37913 a!2804)))

(declare-fun b!1527289 () Bool)

(assert (=> b!1527289 (= e!851268 (= (seekEntryOrOpen!0 lt!661345 lt!661343 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661345 lt!661343 mask!2512)))))

(assert (= (and start!130152 res!1045463) b!1527291))

(assert (= (and b!1527291 res!1045464) b!1527284))

(assert (= (and b!1527284 res!1045458) b!1527281))

(assert (= (and b!1527281 res!1045456) b!1527279))

(assert (= (and b!1527279 res!1045460) b!1527287))

(assert (= (and b!1527287 res!1045452) b!1527288))

(assert (= (and b!1527288 res!1045459) b!1527283))

(assert (= (and b!1527283 res!1045457) b!1527292))

(assert (= (and b!1527292 res!1045455) b!1527286))

(assert (= (and b!1527286 res!1045453) b!1527280))

(assert (= (and b!1527280 res!1045462) b!1527285))

(assert (= (and b!1527285 res!1045461) b!1527290))

(assert (= (and b!1527290 (not res!1045454)) b!1527282))

(assert (= (and b!1527282 res!1045451) b!1527289))

(declare-fun m!1410223 () Bool)

(assert (=> b!1527281 m!1410223))

(assert (=> b!1527281 m!1410223))

(declare-fun m!1410225 () Bool)

(assert (=> b!1527281 m!1410225))

(assert (=> b!1527285 m!1410223))

(assert (=> b!1527285 m!1410223))

(declare-fun m!1410227 () Bool)

(assert (=> b!1527285 m!1410227))

(declare-fun m!1410229 () Bool)

(assert (=> b!1527289 m!1410229))

(declare-fun m!1410231 () Bool)

(assert (=> b!1527289 m!1410231))

(assert (=> b!1527282 m!1410223))

(assert (=> b!1527282 m!1410223))

(declare-fun m!1410233 () Bool)

(assert (=> b!1527282 m!1410233))

(assert (=> b!1527282 m!1410223))

(declare-fun m!1410235 () Bool)

(assert (=> b!1527282 m!1410235))

(declare-fun m!1410237 () Bool)

(assert (=> b!1527286 m!1410237))

(assert (=> b!1527286 m!1410237))

(declare-fun m!1410239 () Bool)

(assert (=> b!1527286 m!1410239))

(declare-fun m!1410241 () Bool)

(assert (=> b!1527286 m!1410241))

(declare-fun m!1410243 () Bool)

(assert (=> b!1527286 m!1410243))

(declare-fun m!1410245 () Bool)

(assert (=> b!1527287 m!1410245))

(assert (=> b!1527292 m!1410223))

(assert (=> b!1527292 m!1410223))

(declare-fun m!1410247 () Bool)

(assert (=> b!1527292 m!1410247))

(declare-fun m!1410249 () Bool)

(assert (=> b!1527279 m!1410249))

(assert (=> b!1527290 m!1410223))

(declare-fun m!1410251 () Bool)

(assert (=> b!1527290 m!1410251))

(assert (=> b!1527283 m!1410223))

(assert (=> b!1527283 m!1410223))

(declare-fun m!1410253 () Bool)

(assert (=> b!1527283 m!1410253))

(assert (=> b!1527283 m!1410253))

(assert (=> b!1527283 m!1410223))

(declare-fun m!1410255 () Bool)

(assert (=> b!1527283 m!1410255))

(declare-fun m!1410257 () Bool)

(assert (=> b!1527280 m!1410257))

(declare-fun m!1410259 () Bool)

(assert (=> b!1527280 m!1410259))

(declare-fun m!1410261 () Bool)

(assert (=> b!1527284 m!1410261))

(assert (=> b!1527284 m!1410261))

(declare-fun m!1410263 () Bool)

(assert (=> b!1527284 m!1410263))

(declare-fun m!1410265 () Bool)

(assert (=> start!130152 m!1410265))

(declare-fun m!1410267 () Bool)

(assert (=> start!130152 m!1410267))

(check-sat (not start!130152) (not b!1527282) (not b!1527289) (not b!1527283) (not b!1527281) (not b!1527279) (not b!1527287) (not b!1527292) (not b!1527280) (not b!1527286) (not b!1527284) (not b!1527285))
(check-sat)
