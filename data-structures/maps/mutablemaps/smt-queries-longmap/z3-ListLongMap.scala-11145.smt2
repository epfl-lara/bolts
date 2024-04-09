; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130266 () Bool)

(assert start!130266)

(declare-fun b!1528649 () Bool)

(declare-fun res!1046497 () Bool)

(declare-fun e!852007 () Bool)

(assert (=> b!1528649 (=> (not res!1046497) (not e!852007))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101543 0))(
  ( (array!101544 (arr!48992 (Array (_ BitVec 32) (_ BitVec 64))) (size!49543 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101543)

(declare-datatypes ((SeekEntryResult!13178 0))(
  ( (MissingZero!13178 (index!55106 (_ BitVec 32))) (Found!13178 (index!55107 (_ BitVec 32))) (Intermediate!13178 (undefined!13990 Bool) (index!55108 (_ BitVec 32)) (x!136804 (_ BitVec 32))) (Undefined!13178) (MissingVacant!13178 (index!55109 (_ BitVec 32))) )
))
(declare-fun lt!662137 () SeekEntryResult!13178)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101543 (_ BitVec 32)) SeekEntryResult!13178)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528649 (= res!1046497 (= lt!662137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48992 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48992 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101544 (store (arr!48992 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49543 a!2804)) mask!2512)))))

(declare-fun b!1528650 () Bool)

(declare-fun res!1046499 () Bool)

(declare-fun e!852008 () Bool)

(assert (=> b!1528650 (=> (not res!1046499) (not e!852008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528650 (= res!1046499 (validKeyInArray!0 (select (arr!48992 a!2804) j!70)))))

(declare-fun b!1528651 () Bool)

(declare-fun res!1046503 () Bool)

(assert (=> b!1528651 (=> (not res!1046503) (not e!852008))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528651 (= res!1046503 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49543 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49543 a!2804))))))

(declare-fun res!1046505 () Bool)

(assert (=> start!130266 (=> (not res!1046505) (not e!852008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130266 (= res!1046505 (validMask!0 mask!2512))))

(assert (=> start!130266 e!852008))

(assert (=> start!130266 true))

(declare-fun array_inv!37937 (array!101543) Bool)

(assert (=> start!130266 (array_inv!37937 a!2804)))

(declare-fun b!1528652 () Bool)

(declare-fun res!1046495 () Bool)

(assert (=> b!1528652 (=> (not res!1046495) (not e!852008))))

(assert (=> b!1528652 (= res!1046495 (validKeyInArray!0 (select (arr!48992 a!2804) i!961)))))

(declare-fun b!1528653 () Bool)

(declare-fun res!1046502 () Bool)

(assert (=> b!1528653 (=> (not res!1046502) (not e!852007))))

(declare-fun lt!662134 () SeekEntryResult!13178)

(assert (=> b!1528653 (= res!1046502 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48992 a!2804) j!70) a!2804 mask!2512) lt!662134))))

(declare-fun b!1528654 () Bool)

(declare-fun e!852011 () Bool)

(assert (=> b!1528654 (= e!852007 (not e!852011))))

(declare-fun res!1046498 () Bool)

(assert (=> b!1528654 (=> res!1046498 e!852011)))

(assert (=> b!1528654 (= res!1046498 (or (not (= (select (arr!48992 a!2804) j!70) (select (store (arr!48992 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852010 () Bool)

(assert (=> b!1528654 e!852010))

(declare-fun res!1046500 () Bool)

(assert (=> b!1528654 (=> (not res!1046500) (not e!852010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101543 (_ BitVec 32)) Bool)

(assert (=> b!1528654 (= res!1046500 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51096 0))(
  ( (Unit!51097) )
))
(declare-fun lt!662136 () Unit!51096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51096)

(assert (=> b!1528654 (= lt!662136 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528655 () Bool)

(declare-fun res!1046496 () Bool)

(assert (=> b!1528655 (=> (not res!1046496) (not e!852008))))

(declare-datatypes ((List!35655 0))(
  ( (Nil!35652) (Cons!35651 (h!37088 (_ BitVec 64)) (t!50356 List!35655)) )
))
(declare-fun arrayNoDuplicates!0 (array!101543 (_ BitVec 32) List!35655) Bool)

(assert (=> b!1528655 (= res!1046496 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35652))))

(declare-fun b!1528656 () Bool)

(assert (=> b!1528656 (= e!852008 e!852007)))

(declare-fun res!1046494 () Bool)

(assert (=> b!1528656 (=> (not res!1046494) (not e!852007))))

(assert (=> b!1528656 (= res!1046494 (= lt!662137 lt!662134))))

(assert (=> b!1528656 (= lt!662134 (Intermediate!13178 false resIndex!21 resX!21))))

(assert (=> b!1528656 (= lt!662137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48992 a!2804) j!70) mask!2512) (select (arr!48992 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528657 () Bool)

(declare-fun res!1046501 () Bool)

(assert (=> b!1528657 (=> (not res!1046501) (not e!852008))))

(assert (=> b!1528657 (= res!1046501 (and (= (size!49543 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49543 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49543 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528658 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101543 (_ BitVec 32)) SeekEntryResult!13178)

(assert (=> b!1528658 (= e!852010 (= (seekEntry!0 (select (arr!48992 a!2804) j!70) a!2804 mask!2512) (Found!13178 j!70)))))

(declare-fun b!1528659 () Bool)

(assert (=> b!1528659 (= e!852011 true)))

(declare-fun lt!662135 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528659 (= lt!662135 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528660 () Bool)

(declare-fun res!1046504 () Bool)

(assert (=> b!1528660 (=> (not res!1046504) (not e!852008))))

(assert (=> b!1528660 (= res!1046504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130266 res!1046505) b!1528657))

(assert (= (and b!1528657 res!1046501) b!1528652))

(assert (= (and b!1528652 res!1046495) b!1528650))

(assert (= (and b!1528650 res!1046499) b!1528660))

(assert (= (and b!1528660 res!1046504) b!1528655))

(assert (= (and b!1528655 res!1046496) b!1528651))

(assert (= (and b!1528651 res!1046503) b!1528656))

(assert (= (and b!1528656 res!1046494) b!1528653))

(assert (= (and b!1528653 res!1046502) b!1528649))

(assert (= (and b!1528649 res!1046497) b!1528654))

(assert (= (and b!1528654 res!1046500) b!1528658))

(assert (= (and b!1528654 (not res!1046498)) b!1528659))

(declare-fun m!1411607 () Bool)

(assert (=> b!1528649 m!1411607))

(declare-fun m!1411609 () Bool)

(assert (=> b!1528649 m!1411609))

(assert (=> b!1528649 m!1411609))

(declare-fun m!1411611 () Bool)

(assert (=> b!1528649 m!1411611))

(assert (=> b!1528649 m!1411611))

(assert (=> b!1528649 m!1411609))

(declare-fun m!1411613 () Bool)

(assert (=> b!1528649 m!1411613))

(declare-fun m!1411615 () Bool)

(assert (=> b!1528655 m!1411615))

(declare-fun m!1411617 () Bool)

(assert (=> b!1528658 m!1411617))

(assert (=> b!1528658 m!1411617))

(declare-fun m!1411619 () Bool)

(assert (=> b!1528658 m!1411619))

(assert (=> b!1528656 m!1411617))

(assert (=> b!1528656 m!1411617))

(declare-fun m!1411621 () Bool)

(assert (=> b!1528656 m!1411621))

(assert (=> b!1528656 m!1411621))

(assert (=> b!1528656 m!1411617))

(declare-fun m!1411623 () Bool)

(assert (=> b!1528656 m!1411623))

(declare-fun m!1411625 () Bool)

(assert (=> b!1528652 m!1411625))

(assert (=> b!1528652 m!1411625))

(declare-fun m!1411627 () Bool)

(assert (=> b!1528652 m!1411627))

(declare-fun m!1411629 () Bool)

(assert (=> b!1528659 m!1411629))

(declare-fun m!1411631 () Bool)

(assert (=> start!130266 m!1411631))

(declare-fun m!1411633 () Bool)

(assert (=> start!130266 m!1411633))

(declare-fun m!1411635 () Bool)

(assert (=> b!1528660 m!1411635))

(assert (=> b!1528653 m!1411617))

(assert (=> b!1528653 m!1411617))

(declare-fun m!1411637 () Bool)

(assert (=> b!1528653 m!1411637))

(assert (=> b!1528650 m!1411617))

(assert (=> b!1528650 m!1411617))

(declare-fun m!1411639 () Bool)

(assert (=> b!1528650 m!1411639))

(assert (=> b!1528654 m!1411617))

(declare-fun m!1411641 () Bool)

(assert (=> b!1528654 m!1411641))

(assert (=> b!1528654 m!1411607))

(assert (=> b!1528654 m!1411609))

(declare-fun m!1411643 () Bool)

(assert (=> b!1528654 m!1411643))

(check-sat (not b!1528660) (not b!1528653) (not b!1528654) (not b!1528650) (not start!130266) (not b!1528655) (not b!1528658) (not b!1528659) (not b!1528652) (not b!1528656) (not b!1528649))
(check-sat)
