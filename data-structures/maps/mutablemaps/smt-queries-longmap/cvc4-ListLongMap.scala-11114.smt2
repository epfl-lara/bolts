; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129824 () Bool)

(assert start!129824)

(declare-fun b!1523418 () Bool)

(declare-fun res!1042464 () Bool)

(declare-fun e!849332 () Bool)

(assert (=> b!1523418 (=> (not res!1042464) (not e!849332))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101347 0))(
  ( (array!101348 (arr!48900 (Array (_ BitVec 32) (_ BitVec 64))) (size!49451 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101347)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13086 0))(
  ( (MissingZero!13086 (index!54738 (_ BitVec 32))) (Found!13086 (index!54739 (_ BitVec 32))) (Intermediate!13086 (undefined!13898 Bool) (index!54740 (_ BitVec 32)) (x!136431 (_ BitVec 32))) (Undefined!13086) (MissingVacant!13086 (index!54741 (_ BitVec 32))) )
))
(declare-fun lt!659903 () SeekEntryResult!13086)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101347 (_ BitVec 32)) SeekEntryResult!13086)

(assert (=> b!1523418 (= res!1042464 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48900 a!2804) j!70) a!2804 mask!2512) lt!659903))))

(declare-fun b!1523419 () Bool)

(declare-fun res!1042472 () Bool)

(declare-fun e!849331 () Bool)

(assert (=> b!1523419 (=> (not res!1042472) (not e!849331))))

(declare-datatypes ((List!35563 0))(
  ( (Nil!35560) (Cons!35559 (h!36984 (_ BitVec 64)) (t!50264 List!35563)) )
))
(declare-fun arrayNoDuplicates!0 (array!101347 (_ BitVec 32) List!35563) Bool)

(assert (=> b!1523419 (= res!1042472 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35560))))

(declare-fun b!1523420 () Bool)

(declare-fun res!1042469 () Bool)

(assert (=> b!1523420 (=> (not res!1042469) (not e!849331))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523420 (= res!1042469 (validKeyInArray!0 (select (arr!48900 a!2804) i!961)))))

(declare-fun b!1523421 () Bool)

(assert (=> b!1523421 (= e!849331 e!849332)))

(declare-fun res!1042465 () Bool)

(assert (=> b!1523421 (=> (not res!1042465) (not e!849332))))

(declare-fun lt!659905 () SeekEntryResult!13086)

(assert (=> b!1523421 (= res!1042465 (= lt!659905 lt!659903))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523421 (= lt!659903 (Intermediate!13086 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523421 (= lt!659905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48900 a!2804) j!70) mask!2512) (select (arr!48900 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523422 () Bool)

(declare-fun res!1042466 () Bool)

(assert (=> b!1523422 (=> (not res!1042466) (not e!849331))))

(assert (=> b!1523422 (= res!1042466 (validKeyInArray!0 (select (arr!48900 a!2804) j!70)))))

(declare-fun res!1042468 () Bool)

(assert (=> start!129824 (=> (not res!1042468) (not e!849331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129824 (= res!1042468 (validMask!0 mask!2512))))

(assert (=> start!129824 e!849331))

(assert (=> start!129824 true))

(declare-fun array_inv!37845 (array!101347) Bool)

(assert (=> start!129824 (array_inv!37845 a!2804)))

(declare-fun b!1523423 () Bool)

(assert (=> b!1523423 (= e!849332 (not true))))

(declare-fun e!849330 () Bool)

(assert (=> b!1523423 e!849330))

(declare-fun res!1042470 () Bool)

(assert (=> b!1523423 (=> (not res!1042470) (not e!849330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101347 (_ BitVec 32)) Bool)

(assert (=> b!1523423 (= res!1042470 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50912 0))(
  ( (Unit!50913) )
))
(declare-fun lt!659904 () Unit!50912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50912)

(assert (=> b!1523423 (= lt!659904 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523424 () Bool)

(declare-fun res!1042463 () Bool)

(assert (=> b!1523424 (=> (not res!1042463) (not e!849332))))

(assert (=> b!1523424 (= res!1042463 (= lt!659905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48900 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48900 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101348 (store (arr!48900 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49451 a!2804)) mask!2512)))))

(declare-fun b!1523425 () Bool)

(declare-fun res!1042467 () Bool)

(assert (=> b!1523425 (=> (not res!1042467) (not e!849331))))

(assert (=> b!1523425 (= res!1042467 (and (= (size!49451 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49451 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49451 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523426 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101347 (_ BitVec 32)) SeekEntryResult!13086)

(assert (=> b!1523426 (= e!849330 (= (seekEntry!0 (select (arr!48900 a!2804) j!70) a!2804 mask!2512) (Found!13086 j!70)))))

(declare-fun b!1523427 () Bool)

(declare-fun res!1042471 () Bool)

(assert (=> b!1523427 (=> (not res!1042471) (not e!849331))))

(assert (=> b!1523427 (= res!1042471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523428 () Bool)

(declare-fun res!1042473 () Bool)

(assert (=> b!1523428 (=> (not res!1042473) (not e!849331))))

(assert (=> b!1523428 (= res!1042473 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49451 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49451 a!2804))))))

(assert (= (and start!129824 res!1042468) b!1523425))

(assert (= (and b!1523425 res!1042467) b!1523420))

(assert (= (and b!1523420 res!1042469) b!1523422))

(assert (= (and b!1523422 res!1042466) b!1523427))

(assert (= (and b!1523427 res!1042471) b!1523419))

(assert (= (and b!1523419 res!1042472) b!1523428))

(assert (= (and b!1523428 res!1042473) b!1523421))

(assert (= (and b!1523421 res!1042465) b!1523418))

(assert (= (and b!1523418 res!1042464) b!1523424))

(assert (= (and b!1523424 res!1042463) b!1523423))

(assert (= (and b!1523423 res!1042470) b!1523426))

(declare-fun m!1406595 () Bool)

(assert (=> b!1523422 m!1406595))

(assert (=> b!1523422 m!1406595))

(declare-fun m!1406597 () Bool)

(assert (=> b!1523422 m!1406597))

(assert (=> b!1523418 m!1406595))

(assert (=> b!1523418 m!1406595))

(declare-fun m!1406599 () Bool)

(assert (=> b!1523418 m!1406599))

(assert (=> b!1523421 m!1406595))

(assert (=> b!1523421 m!1406595))

(declare-fun m!1406601 () Bool)

(assert (=> b!1523421 m!1406601))

(assert (=> b!1523421 m!1406601))

(assert (=> b!1523421 m!1406595))

(declare-fun m!1406603 () Bool)

(assert (=> b!1523421 m!1406603))

(declare-fun m!1406605 () Bool)

(assert (=> b!1523419 m!1406605))

(declare-fun m!1406607 () Bool)

(assert (=> b!1523423 m!1406607))

(declare-fun m!1406609 () Bool)

(assert (=> b!1523423 m!1406609))

(declare-fun m!1406611 () Bool)

(assert (=> start!129824 m!1406611))

(declare-fun m!1406613 () Bool)

(assert (=> start!129824 m!1406613))

(declare-fun m!1406615 () Bool)

(assert (=> b!1523424 m!1406615))

(declare-fun m!1406617 () Bool)

(assert (=> b!1523424 m!1406617))

(assert (=> b!1523424 m!1406617))

(declare-fun m!1406619 () Bool)

(assert (=> b!1523424 m!1406619))

(assert (=> b!1523424 m!1406619))

(assert (=> b!1523424 m!1406617))

(declare-fun m!1406621 () Bool)

(assert (=> b!1523424 m!1406621))

(declare-fun m!1406623 () Bool)

(assert (=> b!1523420 m!1406623))

(assert (=> b!1523420 m!1406623))

(declare-fun m!1406625 () Bool)

(assert (=> b!1523420 m!1406625))

(assert (=> b!1523426 m!1406595))

(assert (=> b!1523426 m!1406595))

(declare-fun m!1406627 () Bool)

(assert (=> b!1523426 m!1406627))

(declare-fun m!1406629 () Bool)

(assert (=> b!1523427 m!1406629))

(push 1)

(assert (not b!1523420))

