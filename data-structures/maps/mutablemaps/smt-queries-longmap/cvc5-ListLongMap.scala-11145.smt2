; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130264 () Bool)

(assert start!130264)

(declare-fun b!1528613 () Bool)

(declare-fun res!1046459 () Bool)

(declare-fun e!851993 () Bool)

(assert (=> b!1528613 (=> (not res!1046459) (not e!851993))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101541 0))(
  ( (array!101542 (arr!48991 (Array (_ BitVec 32) (_ BitVec 64))) (size!49542 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101541)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528613 (= res!1046459 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49542 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49542 a!2804))))))

(declare-fun b!1528614 () Bool)

(declare-fun e!851995 () Bool)

(declare-fun e!851996 () Bool)

(assert (=> b!1528614 (= e!851995 (not e!851996))))

(declare-fun res!1046458 () Bool)

(assert (=> b!1528614 (=> res!1046458 e!851996)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528614 (= res!1046458 (or (not (= (select (arr!48991 a!2804) j!70) (select (store (arr!48991 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!851994 () Bool)

(assert (=> b!1528614 e!851994))

(declare-fun res!1046462 () Bool)

(assert (=> b!1528614 (=> (not res!1046462) (not e!851994))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101541 (_ BitVec 32)) Bool)

(assert (=> b!1528614 (= res!1046462 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51094 0))(
  ( (Unit!51095) )
))
(declare-fun lt!662124 () Unit!51094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51094)

(assert (=> b!1528614 (= lt!662124 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528615 () Bool)

(declare-fun res!1046467 () Bool)

(assert (=> b!1528615 (=> (not res!1046467) (not e!851993))))

(assert (=> b!1528615 (= res!1046467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528616 () Bool)

(declare-datatypes ((SeekEntryResult!13177 0))(
  ( (MissingZero!13177 (index!55102 (_ BitVec 32))) (Found!13177 (index!55103 (_ BitVec 32))) (Intermediate!13177 (undefined!13989 Bool) (index!55104 (_ BitVec 32)) (x!136803 (_ BitVec 32))) (Undefined!13177) (MissingVacant!13177 (index!55105 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101541 (_ BitVec 32)) SeekEntryResult!13177)

(assert (=> b!1528616 (= e!851994 (= (seekEntry!0 (select (arr!48991 a!2804) j!70) a!2804 mask!2512) (Found!13177 j!70)))))

(declare-fun b!1528617 () Bool)

(assert (=> b!1528617 (= e!851996 true)))

(declare-fun lt!662125 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528617 (= lt!662125 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1046466 () Bool)

(assert (=> start!130264 (=> (not res!1046466) (not e!851993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130264 (= res!1046466 (validMask!0 mask!2512))))

(assert (=> start!130264 e!851993))

(assert (=> start!130264 true))

(declare-fun array_inv!37936 (array!101541) Bool)

(assert (=> start!130264 (array_inv!37936 a!2804)))

(declare-fun b!1528618 () Bool)

(declare-fun res!1046465 () Bool)

(assert (=> b!1528618 (=> (not res!1046465) (not e!851995))))

(declare-fun lt!662122 () SeekEntryResult!13177)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101541 (_ BitVec 32)) SeekEntryResult!13177)

(assert (=> b!1528618 (= res!1046465 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48991 a!2804) j!70) a!2804 mask!2512) lt!662122))))

(declare-fun b!1528619 () Bool)

(declare-fun res!1046469 () Bool)

(assert (=> b!1528619 (=> (not res!1046469) (not e!851993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528619 (= res!1046469 (validKeyInArray!0 (select (arr!48991 a!2804) i!961)))))

(declare-fun b!1528620 () Bool)

(declare-fun res!1046460 () Bool)

(assert (=> b!1528620 (=> (not res!1046460) (not e!851993))))

(assert (=> b!1528620 (= res!1046460 (validKeyInArray!0 (select (arr!48991 a!2804) j!70)))))

(declare-fun b!1528621 () Bool)

(assert (=> b!1528621 (= e!851993 e!851995)))

(declare-fun res!1046463 () Bool)

(assert (=> b!1528621 (=> (not res!1046463) (not e!851995))))

(declare-fun lt!662123 () SeekEntryResult!13177)

(assert (=> b!1528621 (= res!1046463 (= lt!662123 lt!662122))))

(assert (=> b!1528621 (= lt!662122 (Intermediate!13177 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528621 (= lt!662123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48991 a!2804) j!70) mask!2512) (select (arr!48991 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528622 () Bool)

(declare-fun res!1046461 () Bool)

(assert (=> b!1528622 (=> (not res!1046461) (not e!851993))))

(assert (=> b!1528622 (= res!1046461 (and (= (size!49542 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49542 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49542 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528623 () Bool)

(declare-fun res!1046468 () Bool)

(assert (=> b!1528623 (=> (not res!1046468) (not e!851993))))

(declare-datatypes ((List!35654 0))(
  ( (Nil!35651) (Cons!35650 (h!37087 (_ BitVec 64)) (t!50355 List!35654)) )
))
(declare-fun arrayNoDuplicates!0 (array!101541 (_ BitVec 32) List!35654) Bool)

(assert (=> b!1528623 (= res!1046468 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35651))))

(declare-fun b!1528624 () Bool)

(declare-fun res!1046464 () Bool)

(assert (=> b!1528624 (=> (not res!1046464) (not e!851995))))

(assert (=> b!1528624 (= res!1046464 (= lt!662123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48991 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48991 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101542 (store (arr!48991 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49542 a!2804)) mask!2512)))))

(assert (= (and start!130264 res!1046466) b!1528622))

(assert (= (and b!1528622 res!1046461) b!1528619))

(assert (= (and b!1528619 res!1046469) b!1528620))

(assert (= (and b!1528620 res!1046460) b!1528615))

(assert (= (and b!1528615 res!1046467) b!1528623))

(assert (= (and b!1528623 res!1046468) b!1528613))

(assert (= (and b!1528613 res!1046459) b!1528621))

(assert (= (and b!1528621 res!1046463) b!1528618))

(assert (= (and b!1528618 res!1046465) b!1528624))

(assert (= (and b!1528624 res!1046464) b!1528614))

(assert (= (and b!1528614 res!1046462) b!1528616))

(assert (= (and b!1528614 (not res!1046458)) b!1528617))

(declare-fun m!1411569 () Bool)

(assert (=> b!1528615 m!1411569))

(declare-fun m!1411571 () Bool)

(assert (=> b!1528620 m!1411571))

(assert (=> b!1528620 m!1411571))

(declare-fun m!1411573 () Bool)

(assert (=> b!1528620 m!1411573))

(declare-fun m!1411575 () Bool)

(assert (=> b!1528619 m!1411575))

(assert (=> b!1528619 m!1411575))

(declare-fun m!1411577 () Bool)

(assert (=> b!1528619 m!1411577))

(declare-fun m!1411579 () Bool)

(assert (=> b!1528617 m!1411579))

(assert (=> b!1528618 m!1411571))

(assert (=> b!1528618 m!1411571))

(declare-fun m!1411581 () Bool)

(assert (=> b!1528618 m!1411581))

(declare-fun m!1411583 () Bool)

(assert (=> b!1528624 m!1411583))

(declare-fun m!1411585 () Bool)

(assert (=> b!1528624 m!1411585))

(assert (=> b!1528624 m!1411585))

(declare-fun m!1411587 () Bool)

(assert (=> b!1528624 m!1411587))

(assert (=> b!1528624 m!1411587))

(assert (=> b!1528624 m!1411585))

(declare-fun m!1411589 () Bool)

(assert (=> b!1528624 m!1411589))

(declare-fun m!1411591 () Bool)

(assert (=> start!130264 m!1411591))

(declare-fun m!1411593 () Bool)

(assert (=> start!130264 m!1411593))

(declare-fun m!1411595 () Bool)

(assert (=> b!1528623 m!1411595))

(assert (=> b!1528621 m!1411571))

(assert (=> b!1528621 m!1411571))

(declare-fun m!1411597 () Bool)

(assert (=> b!1528621 m!1411597))

(assert (=> b!1528621 m!1411597))

(assert (=> b!1528621 m!1411571))

(declare-fun m!1411599 () Bool)

(assert (=> b!1528621 m!1411599))

(assert (=> b!1528616 m!1411571))

(assert (=> b!1528616 m!1411571))

(declare-fun m!1411601 () Bool)

(assert (=> b!1528616 m!1411601))

(assert (=> b!1528614 m!1411571))

(declare-fun m!1411603 () Bool)

(assert (=> b!1528614 m!1411603))

(assert (=> b!1528614 m!1411583))

(assert (=> b!1528614 m!1411585))

(declare-fun m!1411605 () Bool)

(assert (=> b!1528614 m!1411605))

(push 1)

