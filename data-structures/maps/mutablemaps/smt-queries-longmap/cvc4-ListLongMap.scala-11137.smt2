; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130154 () Bool)

(assert start!130154)

(declare-fun b!1527321 () Bool)

(declare-fun res!1045500 () Bool)

(declare-fun e!851289 () Bool)

(assert (=> b!1527321 (=> (not res!1045500) (not e!851289))))

(declare-datatypes ((array!101494 0))(
  ( (array!101495 (arr!48969 (Array (_ BitVec 32) (_ BitVec 64))) (size!49520 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101494)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527321 (= res!1045500 (validKeyInArray!0 (select (arr!48969 a!2804) j!70)))))

(declare-fun b!1527322 () Bool)

(declare-fun e!851293 () Bool)

(assert (=> b!1527322 (= e!851289 e!851293)))

(declare-fun res!1045505 () Bool)

(assert (=> b!1527322 (=> (not res!1045505) (not e!851293))))

(declare-datatypes ((SeekEntryResult!13155 0))(
  ( (MissingZero!13155 (index!55014 (_ BitVec 32))) (Found!13155 (index!55015 (_ BitVec 32))) (Intermediate!13155 (undefined!13967 Bool) (index!55016 (_ BitVec 32)) (x!136708 (_ BitVec 32))) (Undefined!13155) (MissingVacant!13155 (index!55017 (_ BitVec 32))) )
))
(declare-fun lt!661359 () SeekEntryResult!13155)

(declare-fun lt!661356 () SeekEntryResult!13155)

(assert (=> b!1527322 (= res!1045505 (= lt!661359 lt!661356))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1527322 (= lt!661356 (Intermediate!13155 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101494 (_ BitVec 32)) SeekEntryResult!13155)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527322 (= lt!661359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48969 a!2804) j!70) mask!2512) (select (arr!48969 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527323 () Bool)

(declare-fun res!1045501 () Bool)

(assert (=> b!1527323 (=> (not res!1045501) (not e!851289))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1527323 (= res!1045501 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49520 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49520 a!2804))))))

(declare-fun b!1527324 () Bool)

(declare-fun res!1045495 () Bool)

(declare-fun e!851291 () Bool)

(assert (=> b!1527324 (=> (not res!1045495) (not e!851291))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101494 (_ BitVec 32)) SeekEntryResult!13155)

(assert (=> b!1527324 (= res!1045495 (= (seekEntry!0 (select (arr!48969 a!2804) j!70) a!2804 mask!2512) (Found!13155 j!70)))))

(declare-fun e!851290 () Bool)

(declare-fun b!1527325 () Bool)

(declare-fun lt!661360 () (_ BitVec 64))

(declare-fun lt!661358 () array!101494)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101494 (_ BitVec 32)) SeekEntryResult!13155)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101494 (_ BitVec 32)) SeekEntryResult!13155)

(assert (=> b!1527325 (= e!851290 (= (seekEntryOrOpen!0 lt!661360 lt!661358 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661360 lt!661358 mask!2512)))))

(declare-fun b!1527326 () Bool)

(declare-fun res!1045506 () Bool)

(assert (=> b!1527326 (=> (not res!1045506) (not e!851289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101494 (_ BitVec 32)) Bool)

(assert (=> b!1527326 (= res!1045506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527327 () Bool)

(declare-fun e!851292 () Bool)

(assert (=> b!1527327 (= e!851292 (not true))))

(assert (=> b!1527327 e!851291))

(declare-fun res!1045502 () Bool)

(assert (=> b!1527327 (=> (not res!1045502) (not e!851291))))

(assert (=> b!1527327 (= res!1045502 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51050 0))(
  ( (Unit!51051) )
))
(declare-fun lt!661357 () Unit!51050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51050)

(assert (=> b!1527327 (= lt!661357 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527328 () Bool)

(declare-fun res!1045496 () Bool)

(assert (=> b!1527328 (=> (not res!1045496) (not e!851289))))

(declare-datatypes ((List!35632 0))(
  ( (Nil!35629) (Cons!35628 (h!37062 (_ BitVec 64)) (t!50333 List!35632)) )
))
(declare-fun arrayNoDuplicates!0 (array!101494 (_ BitVec 32) List!35632) Bool)

(assert (=> b!1527328 (= res!1045496 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35629))))

(declare-fun b!1527329 () Bool)

(assert (=> b!1527329 (= e!851293 e!851292)))

(declare-fun res!1045499 () Bool)

(assert (=> b!1527329 (=> (not res!1045499) (not e!851292))))

(assert (=> b!1527329 (= res!1045499 (= lt!661359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661360 mask!2512) lt!661360 lt!661358 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1527329 (= lt!661360 (select (store (arr!48969 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527329 (= lt!661358 (array!101495 (store (arr!48969 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49520 a!2804)))))

(declare-fun b!1527330 () Bool)

(declare-fun res!1045504 () Bool)

(assert (=> b!1527330 (=> (not res!1045504) (not e!851289))))

(assert (=> b!1527330 (= res!1045504 (validKeyInArray!0 (select (arr!48969 a!2804) i!961)))))

(declare-fun b!1527331 () Bool)

(declare-fun e!851294 () Bool)

(assert (=> b!1527331 (= e!851291 e!851294)))

(declare-fun res!1045497 () Bool)

(assert (=> b!1527331 (=> res!1045497 e!851294)))

(assert (=> b!1527331 (= res!1045497 (or (not (= (select (arr!48969 a!2804) j!70) lt!661360)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48969 a!2804) index!487) (select (arr!48969 a!2804) j!70)) (not (= (select (arr!48969 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1045503 () Bool)

(assert (=> start!130154 (=> (not res!1045503) (not e!851289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130154 (= res!1045503 (validMask!0 mask!2512))))

(assert (=> start!130154 e!851289))

(assert (=> start!130154 true))

(declare-fun array_inv!37914 (array!101494) Bool)

(assert (=> start!130154 (array_inv!37914 a!2804)))

(declare-fun b!1527332 () Bool)

(declare-fun res!1045494 () Bool)

(assert (=> b!1527332 (=> (not res!1045494) (not e!851293))))

(assert (=> b!1527332 (= res!1045494 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48969 a!2804) j!70) a!2804 mask!2512) lt!661356))))

(declare-fun b!1527333 () Bool)

(assert (=> b!1527333 (= e!851294 e!851290)))

(declare-fun res!1045493 () Bool)

(assert (=> b!1527333 (=> (not res!1045493) (not e!851290))))

(assert (=> b!1527333 (= res!1045493 (= (seekEntryOrOpen!0 (select (arr!48969 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48969 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527334 () Bool)

(declare-fun res!1045498 () Bool)

(assert (=> b!1527334 (=> (not res!1045498) (not e!851289))))

(assert (=> b!1527334 (= res!1045498 (and (= (size!49520 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49520 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49520 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130154 res!1045503) b!1527334))

(assert (= (and b!1527334 res!1045498) b!1527330))

(assert (= (and b!1527330 res!1045504) b!1527321))

(assert (= (and b!1527321 res!1045500) b!1527326))

(assert (= (and b!1527326 res!1045506) b!1527328))

(assert (= (and b!1527328 res!1045496) b!1527323))

(assert (= (and b!1527323 res!1045501) b!1527322))

(assert (= (and b!1527322 res!1045505) b!1527332))

(assert (= (and b!1527332 res!1045494) b!1527329))

(assert (= (and b!1527329 res!1045499) b!1527327))

(assert (= (and b!1527327 res!1045502) b!1527324))

(assert (= (and b!1527324 res!1045495) b!1527331))

(assert (= (and b!1527331 (not res!1045497)) b!1527333))

(assert (= (and b!1527333 res!1045493) b!1527325))

(declare-fun m!1410269 () Bool)

(assert (=> b!1527321 m!1410269))

(assert (=> b!1527321 m!1410269))

(declare-fun m!1410271 () Bool)

(assert (=> b!1527321 m!1410271))

(declare-fun m!1410273 () Bool)

(assert (=> b!1527330 m!1410273))

(assert (=> b!1527330 m!1410273))

(declare-fun m!1410275 () Bool)

(assert (=> b!1527330 m!1410275))

(assert (=> b!1527331 m!1410269))

(declare-fun m!1410277 () Bool)

(assert (=> b!1527331 m!1410277))

(declare-fun m!1410279 () Bool)

(assert (=> b!1527329 m!1410279))

(assert (=> b!1527329 m!1410279))

(declare-fun m!1410281 () Bool)

(assert (=> b!1527329 m!1410281))

(declare-fun m!1410283 () Bool)

(assert (=> b!1527329 m!1410283))

(declare-fun m!1410285 () Bool)

(assert (=> b!1527329 m!1410285))

(declare-fun m!1410287 () Bool)

(assert (=> b!1527326 m!1410287))

(declare-fun m!1410289 () Bool)

(assert (=> start!130154 m!1410289))

(declare-fun m!1410291 () Bool)

(assert (=> start!130154 m!1410291))

(declare-fun m!1410293 () Bool)

(assert (=> b!1527328 m!1410293))

(assert (=> b!1527322 m!1410269))

(assert (=> b!1527322 m!1410269))

(declare-fun m!1410295 () Bool)

(assert (=> b!1527322 m!1410295))

(assert (=> b!1527322 m!1410295))

(assert (=> b!1527322 m!1410269))

(declare-fun m!1410297 () Bool)

(assert (=> b!1527322 m!1410297))

(assert (=> b!1527324 m!1410269))

(assert (=> b!1527324 m!1410269))

(declare-fun m!1410299 () Bool)

(assert (=> b!1527324 m!1410299))

(assert (=> b!1527333 m!1410269))

(assert (=> b!1527333 m!1410269))

(declare-fun m!1410301 () Bool)

(assert (=> b!1527333 m!1410301))

(assert (=> b!1527333 m!1410269))

(declare-fun m!1410303 () Bool)

(assert (=> b!1527333 m!1410303))

(declare-fun m!1410305 () Bool)

(assert (=> b!1527327 m!1410305))

(declare-fun m!1410307 () Bool)

(assert (=> b!1527327 m!1410307))

(assert (=> b!1527332 m!1410269))

(assert (=> b!1527332 m!1410269))

(declare-fun m!1410309 () Bool)

(assert (=> b!1527332 m!1410309))

(declare-fun m!1410311 () Bool)

(assert (=> b!1527325 m!1410311))

(declare-fun m!1410313 () Bool)

(assert (=> b!1527325 m!1410313))

(push 1)

