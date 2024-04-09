; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129820 () Bool)

(assert start!129820)

(declare-fun b!1523352 () Bool)

(declare-fun res!1042400 () Bool)

(declare-fun e!849308 () Bool)

(assert (=> b!1523352 (=> (not res!1042400) (not e!849308))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101343 0))(
  ( (array!101344 (arr!48898 (Array (_ BitVec 32) (_ BitVec 64))) (size!49449 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101343)

(assert (=> b!1523352 (= res!1042400 (and (= (size!49449 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49449 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49449 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1042405 () Bool)

(assert (=> start!129820 (=> (not res!1042405) (not e!849308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129820 (= res!1042405 (validMask!0 mask!2512))))

(assert (=> start!129820 e!849308))

(assert (=> start!129820 true))

(declare-fun array_inv!37843 (array!101343) Bool)

(assert (=> start!129820 (array_inv!37843 a!2804)))

(declare-fun b!1523353 () Bool)

(declare-fun e!849306 () Bool)

(assert (=> b!1523353 (= e!849308 e!849306)))

(declare-fun res!1042404 () Bool)

(assert (=> b!1523353 (=> (not res!1042404) (not e!849306))))

(declare-datatypes ((SeekEntryResult!13084 0))(
  ( (MissingZero!13084 (index!54730 (_ BitVec 32))) (Found!13084 (index!54731 (_ BitVec 32))) (Intermediate!13084 (undefined!13896 Bool) (index!54732 (_ BitVec 32)) (x!136429 (_ BitVec 32))) (Undefined!13084) (MissingVacant!13084 (index!54733 (_ BitVec 32))) )
))
(declare-fun lt!659886 () SeekEntryResult!13084)

(declare-fun lt!659885 () SeekEntryResult!13084)

(assert (=> b!1523353 (= res!1042404 (= lt!659886 lt!659885))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523353 (= lt!659885 (Intermediate!13084 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101343 (_ BitVec 32)) SeekEntryResult!13084)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523353 (= lt!659886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48898 a!2804) j!70) mask!2512) (select (arr!48898 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523354 () Bool)

(declare-fun res!1042399 () Bool)

(assert (=> b!1523354 (=> (not res!1042399) (not e!849308))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523354 (= res!1042399 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49449 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49449 a!2804))))))

(declare-fun b!1523355 () Bool)

(declare-fun res!1042402 () Bool)

(assert (=> b!1523355 (=> (not res!1042402) (not e!849308))))

(declare-datatypes ((List!35561 0))(
  ( (Nil!35558) (Cons!35557 (h!36982 (_ BitVec 64)) (t!50262 List!35561)) )
))
(declare-fun arrayNoDuplicates!0 (array!101343 (_ BitVec 32) List!35561) Bool)

(assert (=> b!1523355 (= res!1042402 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35558))))

(declare-fun b!1523356 () Bool)

(declare-fun res!1042398 () Bool)

(assert (=> b!1523356 (=> (not res!1042398) (not e!849308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101343 (_ BitVec 32)) Bool)

(assert (=> b!1523356 (= res!1042398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523357 () Bool)

(declare-fun res!1042406 () Bool)

(assert (=> b!1523357 (=> (not res!1042406) (not e!849306))))

(assert (=> b!1523357 (= res!1042406 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48898 a!2804) j!70) a!2804 mask!2512) lt!659885))))

(declare-fun b!1523358 () Bool)

(declare-fun res!1042407 () Bool)

(assert (=> b!1523358 (=> (not res!1042407) (not e!849308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523358 (= res!1042407 (validKeyInArray!0 (select (arr!48898 a!2804) j!70)))))

(declare-fun b!1523359 () Bool)

(declare-fun res!1042403 () Bool)

(assert (=> b!1523359 (=> (not res!1042403) (not e!849306))))

(assert (=> b!1523359 (= res!1042403 (= lt!659886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48898 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48898 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101344 (store (arr!48898 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49449 a!2804)) mask!2512)))))

(declare-fun b!1523360 () Bool)

(declare-fun res!1042401 () Bool)

(assert (=> b!1523360 (=> (not res!1042401) (not e!849308))))

(assert (=> b!1523360 (= res!1042401 (validKeyInArray!0 (select (arr!48898 a!2804) i!961)))))

(declare-fun e!849307 () Bool)

(declare-fun b!1523361 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101343 (_ BitVec 32)) SeekEntryResult!13084)

(assert (=> b!1523361 (= e!849307 (= (seekEntry!0 (select (arr!48898 a!2804) j!70) a!2804 mask!2512) (Found!13084 j!70)))))

(declare-fun b!1523362 () Bool)

(assert (=> b!1523362 (= e!849306 (not true))))

(assert (=> b!1523362 e!849307))

(declare-fun res!1042397 () Bool)

(assert (=> b!1523362 (=> (not res!1042397) (not e!849307))))

(assert (=> b!1523362 (= res!1042397 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50908 0))(
  ( (Unit!50909) )
))
(declare-fun lt!659887 () Unit!50908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101343 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50908)

(assert (=> b!1523362 (= lt!659887 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129820 res!1042405) b!1523352))

(assert (= (and b!1523352 res!1042400) b!1523360))

(assert (= (and b!1523360 res!1042401) b!1523358))

(assert (= (and b!1523358 res!1042407) b!1523356))

(assert (= (and b!1523356 res!1042398) b!1523355))

(assert (= (and b!1523355 res!1042402) b!1523354))

(assert (= (and b!1523354 res!1042399) b!1523353))

(assert (= (and b!1523353 res!1042404) b!1523357))

(assert (= (and b!1523357 res!1042406) b!1523359))

(assert (= (and b!1523359 res!1042403) b!1523362))

(assert (= (and b!1523362 res!1042397) b!1523361))

(declare-fun m!1406523 () Bool)

(assert (=> b!1523356 m!1406523))

(declare-fun m!1406525 () Bool)

(assert (=> b!1523362 m!1406525))

(declare-fun m!1406527 () Bool)

(assert (=> b!1523362 m!1406527))

(declare-fun m!1406529 () Bool)

(assert (=> b!1523355 m!1406529))

(declare-fun m!1406531 () Bool)

(assert (=> b!1523358 m!1406531))

(assert (=> b!1523358 m!1406531))

(declare-fun m!1406533 () Bool)

(assert (=> b!1523358 m!1406533))

(assert (=> b!1523361 m!1406531))

(assert (=> b!1523361 m!1406531))

(declare-fun m!1406535 () Bool)

(assert (=> b!1523361 m!1406535))

(declare-fun m!1406537 () Bool)

(assert (=> start!129820 m!1406537))

(declare-fun m!1406539 () Bool)

(assert (=> start!129820 m!1406539))

(declare-fun m!1406541 () Bool)

(assert (=> b!1523359 m!1406541))

(declare-fun m!1406543 () Bool)

(assert (=> b!1523359 m!1406543))

(assert (=> b!1523359 m!1406543))

(declare-fun m!1406545 () Bool)

(assert (=> b!1523359 m!1406545))

(assert (=> b!1523359 m!1406545))

(assert (=> b!1523359 m!1406543))

(declare-fun m!1406547 () Bool)

(assert (=> b!1523359 m!1406547))

(assert (=> b!1523357 m!1406531))

(assert (=> b!1523357 m!1406531))

(declare-fun m!1406549 () Bool)

(assert (=> b!1523357 m!1406549))

(assert (=> b!1523353 m!1406531))

(assert (=> b!1523353 m!1406531))

(declare-fun m!1406551 () Bool)

(assert (=> b!1523353 m!1406551))

(assert (=> b!1523353 m!1406551))

(assert (=> b!1523353 m!1406531))

(declare-fun m!1406553 () Bool)

(assert (=> b!1523353 m!1406553))

(declare-fun m!1406555 () Bool)

(assert (=> b!1523360 m!1406555))

(assert (=> b!1523360 m!1406555))

(declare-fun m!1406557 () Bool)

(assert (=> b!1523360 m!1406557))

(push 1)

