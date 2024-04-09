; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130470 () Bool)

(assert start!130470)

(declare-fun res!1048212 () Bool)

(declare-fun e!852987 () Bool)

(assert (=> start!130470 (=> (not res!1048212) (not e!852987))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130470 (= res!1048212 (validMask!0 mask!2512))))

(assert (=> start!130470 e!852987))

(assert (=> start!130470 true))

(declare-datatypes ((array!101633 0))(
  ( (array!101634 (arr!49034 (Array (_ BitVec 32) (_ BitVec 64))) (size!49585 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101633)

(declare-fun array_inv!37979 (array!101633) Bool)

(assert (=> start!130470 (array_inv!37979 a!2804)))

(declare-fun b!1530725 () Bool)

(declare-fun e!852988 () Bool)

(declare-fun e!852989 () Bool)

(assert (=> b!1530725 (= e!852988 (not e!852989))))

(declare-fun res!1048205 () Bool)

(assert (=> b!1530725 (=> res!1048205 e!852989)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1530725 (= res!1048205 (or (not (= (select (arr!49034 a!2804) j!70) (select (store (arr!49034 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852986 () Bool)

(assert (=> b!1530725 e!852986))

(declare-fun res!1048214 () Bool)

(assert (=> b!1530725 (=> (not res!1048214) (not e!852986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101633 (_ BitVec 32)) Bool)

(assert (=> b!1530725 (= res!1048214 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51180 0))(
  ( (Unit!51181) )
))
(declare-fun lt!662927 () Unit!51180)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51180)

(assert (=> b!1530725 (= lt!662927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530726 () Bool)

(declare-fun res!1048206 () Bool)

(assert (=> b!1530726 (=> (not res!1048206) (not e!852988))))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13220 0))(
  ( (MissingZero!13220 (index!55274 (_ BitVec 32))) (Found!13220 (index!55275 (_ BitVec 32))) (Intermediate!13220 (undefined!14032 Bool) (index!55276 (_ BitVec 32)) (x!136976 (_ BitVec 32))) (Undefined!13220) (MissingVacant!13220 (index!55277 (_ BitVec 32))) )
))
(declare-fun lt!662928 () SeekEntryResult!13220)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101633 (_ BitVec 32)) SeekEntryResult!13220)

(assert (=> b!1530726 (= res!1048206 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49034 a!2804) j!70) a!2804 mask!2512) lt!662928))))

(declare-fun b!1530727 () Bool)

(declare-fun res!1048207 () Bool)

(assert (=> b!1530727 (=> (not res!1048207) (not e!852987))))

(assert (=> b!1530727 (= res!1048207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530728 () Bool)

(assert (=> b!1530728 (= e!852989 true)))

(declare-fun lt!662926 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530728 (= lt!662926 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530729 () Bool)

(assert (=> b!1530729 (= e!852987 e!852988)))

(declare-fun res!1048210 () Bool)

(assert (=> b!1530729 (=> (not res!1048210) (not e!852988))))

(declare-fun lt!662929 () SeekEntryResult!13220)

(assert (=> b!1530729 (= res!1048210 (= lt!662929 lt!662928))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530729 (= lt!662928 (Intermediate!13220 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530729 (= lt!662929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49034 a!2804) j!70) mask!2512) (select (arr!49034 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530730 () Bool)

(declare-fun res!1048204 () Bool)

(assert (=> b!1530730 (=> (not res!1048204) (not e!852987))))

(declare-datatypes ((List!35697 0))(
  ( (Nil!35694) (Cons!35693 (h!37136 (_ BitVec 64)) (t!50398 List!35697)) )
))
(declare-fun arrayNoDuplicates!0 (array!101633 (_ BitVec 32) List!35697) Bool)

(assert (=> b!1530730 (= res!1048204 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35694))))

(declare-fun b!1530731 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101633 (_ BitVec 32)) SeekEntryResult!13220)

(assert (=> b!1530731 (= e!852986 (= (seekEntry!0 (select (arr!49034 a!2804) j!70) a!2804 mask!2512) (Found!13220 j!70)))))

(declare-fun b!1530732 () Bool)

(declare-fun res!1048209 () Bool)

(assert (=> b!1530732 (=> (not res!1048209) (not e!852987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530732 (= res!1048209 (validKeyInArray!0 (select (arr!49034 a!2804) j!70)))))

(declare-fun b!1530733 () Bool)

(declare-fun res!1048213 () Bool)

(assert (=> b!1530733 (=> (not res!1048213) (not e!852988))))

(assert (=> b!1530733 (= res!1048213 (= lt!662929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49034 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49034 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101634 (store (arr!49034 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49585 a!2804)) mask!2512)))))

(declare-fun b!1530734 () Bool)

(declare-fun res!1048208 () Bool)

(assert (=> b!1530734 (=> (not res!1048208) (not e!852987))))

(assert (=> b!1530734 (= res!1048208 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49585 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49585 a!2804))))))

(declare-fun b!1530735 () Bool)

(declare-fun res!1048215 () Bool)

(assert (=> b!1530735 (=> (not res!1048215) (not e!852987))))

(assert (=> b!1530735 (= res!1048215 (and (= (size!49585 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49585 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49585 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530736 () Bool)

(declare-fun res!1048211 () Bool)

(assert (=> b!1530736 (=> (not res!1048211) (not e!852987))))

(assert (=> b!1530736 (= res!1048211 (validKeyInArray!0 (select (arr!49034 a!2804) i!961)))))

(assert (= (and start!130470 res!1048212) b!1530735))

(assert (= (and b!1530735 res!1048215) b!1530736))

(assert (= (and b!1530736 res!1048211) b!1530732))

(assert (= (and b!1530732 res!1048209) b!1530727))

(assert (= (and b!1530727 res!1048207) b!1530730))

(assert (= (and b!1530730 res!1048204) b!1530734))

(assert (= (and b!1530734 res!1048208) b!1530729))

(assert (= (and b!1530729 res!1048210) b!1530726))

(assert (= (and b!1530726 res!1048206) b!1530733))

(assert (= (and b!1530733 res!1048213) b!1530725))

(assert (= (and b!1530725 res!1048214) b!1530731))

(assert (= (and b!1530725 (not res!1048205)) b!1530728))

(declare-fun m!1413539 () Bool)

(assert (=> b!1530727 m!1413539))

(declare-fun m!1413541 () Bool)

(assert (=> b!1530725 m!1413541))

(declare-fun m!1413543 () Bool)

(assert (=> b!1530725 m!1413543))

(declare-fun m!1413545 () Bool)

(assert (=> b!1530725 m!1413545))

(declare-fun m!1413547 () Bool)

(assert (=> b!1530725 m!1413547))

(declare-fun m!1413549 () Bool)

(assert (=> b!1530725 m!1413549))

(declare-fun m!1413551 () Bool)

(assert (=> start!130470 m!1413551))

(declare-fun m!1413553 () Bool)

(assert (=> start!130470 m!1413553))

(declare-fun m!1413555 () Bool)

(assert (=> b!1530728 m!1413555))

(assert (=> b!1530729 m!1413541))

(assert (=> b!1530729 m!1413541))

(declare-fun m!1413557 () Bool)

(assert (=> b!1530729 m!1413557))

(assert (=> b!1530729 m!1413557))

(assert (=> b!1530729 m!1413541))

(declare-fun m!1413559 () Bool)

(assert (=> b!1530729 m!1413559))

(assert (=> b!1530733 m!1413545))

(assert (=> b!1530733 m!1413547))

(assert (=> b!1530733 m!1413547))

(declare-fun m!1413561 () Bool)

(assert (=> b!1530733 m!1413561))

(assert (=> b!1530733 m!1413561))

(assert (=> b!1530733 m!1413547))

(declare-fun m!1413563 () Bool)

(assert (=> b!1530733 m!1413563))

(assert (=> b!1530732 m!1413541))

(assert (=> b!1530732 m!1413541))

(declare-fun m!1413565 () Bool)

(assert (=> b!1530732 m!1413565))

(assert (=> b!1530726 m!1413541))

(assert (=> b!1530726 m!1413541))

(declare-fun m!1413567 () Bool)

(assert (=> b!1530726 m!1413567))

(assert (=> b!1530731 m!1413541))

(assert (=> b!1530731 m!1413541))

(declare-fun m!1413569 () Bool)

(assert (=> b!1530731 m!1413569))

(declare-fun m!1413571 () Bool)

(assert (=> b!1530730 m!1413571))

(declare-fun m!1413573 () Bool)

(assert (=> b!1530736 m!1413573))

(assert (=> b!1530736 m!1413573))

(declare-fun m!1413575 () Bool)

(assert (=> b!1530736 m!1413575))

(check-sat (not b!1530728) (not b!1530733) (not b!1530736) (not b!1530727) (not b!1530725) (not start!130470) (not b!1530732) (not b!1530726) (not b!1530730) (not b!1530731) (not b!1530729))
(check-sat)
