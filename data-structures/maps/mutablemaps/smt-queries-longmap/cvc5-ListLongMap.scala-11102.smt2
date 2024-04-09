; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129666 () Bool)

(assert start!129666)

(declare-fun b!1521742 () Bool)

(declare-fun res!1041107 () Bool)

(declare-fun e!848623 () Bool)

(assert (=> b!1521742 (=> (not res!1041107) (not e!848623))))

(declare-datatypes ((array!101268 0))(
  ( (array!101269 (arr!48862 (Array (_ BitVec 32) (_ BitVec 64))) (size!49413 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101268)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521742 (= res!1041107 (validKeyInArray!0 (select (arr!48862 a!2804) i!961)))))

(declare-fun b!1521744 () Bool)

(declare-fun res!1041105 () Bool)

(assert (=> b!1521744 (=> (not res!1041105) (not e!848623))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521744 (= res!1041105 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49413 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49413 a!2804))))))

(declare-fun b!1521745 () Bool)

(declare-fun res!1041110 () Bool)

(assert (=> b!1521745 (=> (not res!1041110) (not e!848623))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521745 (= res!1041110 (and (= (size!49413 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49413 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49413 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521746 () Bool)

(declare-fun res!1041106 () Bool)

(assert (=> b!1521746 (=> (not res!1041106) (not e!848623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101268 (_ BitVec 32)) Bool)

(assert (=> b!1521746 (= res!1041106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521747 () Bool)

(declare-fun res!1041104 () Bool)

(assert (=> b!1521747 (=> (not res!1041104) (not e!848623))))

(assert (=> b!1521747 (= res!1041104 (validKeyInArray!0 (select (arr!48862 a!2804) j!70)))))

(declare-fun res!1041102 () Bool)

(assert (=> start!129666 (=> (not res!1041102) (not e!848623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129666 (= res!1041102 (validMask!0 mask!2512))))

(assert (=> start!129666 e!848623))

(assert (=> start!129666 true))

(declare-fun array_inv!37807 (array!101268) Bool)

(assert (=> start!129666 (array_inv!37807 a!2804)))

(declare-fun b!1521743 () Bool)

(declare-fun res!1041103 () Bool)

(assert (=> b!1521743 (=> (not res!1041103) (not e!848623))))

(declare-datatypes ((List!35525 0))(
  ( (Nil!35522) (Cons!35521 (h!36943 (_ BitVec 64)) (t!50226 List!35525)) )
))
(declare-fun arrayNoDuplicates!0 (array!101268 (_ BitVec 32) List!35525) Bool)

(assert (=> b!1521743 (= res!1041103 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35522))))

(declare-fun b!1521748 () Bool)

(declare-fun res!1041111 () Bool)

(declare-fun e!848622 () Bool)

(assert (=> b!1521748 (=> (not res!1041111) (not e!848622))))

(declare-datatypes ((SeekEntryResult!13048 0))(
  ( (MissingZero!13048 (index!54586 (_ BitVec 32))) (Found!13048 (index!54587 (_ BitVec 32))) (Intermediate!13048 (undefined!13860 Bool) (index!54588 (_ BitVec 32)) (x!136287 (_ BitVec 32))) (Undefined!13048) (MissingVacant!13048 (index!54589 (_ BitVec 32))) )
))
(declare-fun lt!659367 () SeekEntryResult!13048)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101268 (_ BitVec 32)) SeekEntryResult!13048)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521748 (= res!1041111 (= lt!659367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48862 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48862 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101269 (store (arr!48862 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49413 a!2804)) mask!2512)))))

(declare-fun b!1521749 () Bool)

(assert (=> b!1521749 (= e!848622 (bvsgt #b00000000000000000000000000000000 (size!49413 a!2804)))))

(declare-fun b!1521750 () Bool)

(assert (=> b!1521750 (= e!848623 e!848622)))

(declare-fun res!1041108 () Bool)

(assert (=> b!1521750 (=> (not res!1041108) (not e!848622))))

(declare-fun lt!659368 () SeekEntryResult!13048)

(assert (=> b!1521750 (= res!1041108 (= lt!659367 lt!659368))))

(assert (=> b!1521750 (= lt!659368 (Intermediate!13048 false resIndex!21 resX!21))))

(assert (=> b!1521750 (= lt!659367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48862 a!2804) j!70) mask!2512) (select (arr!48862 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521751 () Bool)

(declare-fun res!1041109 () Bool)

(assert (=> b!1521751 (=> (not res!1041109) (not e!848622))))

(assert (=> b!1521751 (= res!1041109 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48862 a!2804) j!70) a!2804 mask!2512) lt!659368))))

(assert (= (and start!129666 res!1041102) b!1521745))

(assert (= (and b!1521745 res!1041110) b!1521742))

(assert (= (and b!1521742 res!1041107) b!1521747))

(assert (= (and b!1521747 res!1041104) b!1521746))

(assert (= (and b!1521746 res!1041106) b!1521743))

(assert (= (and b!1521743 res!1041103) b!1521744))

(assert (= (and b!1521744 res!1041105) b!1521750))

(assert (= (and b!1521750 res!1041108) b!1521751))

(assert (= (and b!1521751 res!1041109) b!1521748))

(assert (= (and b!1521748 res!1041111) b!1521749))

(declare-fun m!1404911 () Bool)

(assert (=> b!1521750 m!1404911))

(assert (=> b!1521750 m!1404911))

(declare-fun m!1404913 () Bool)

(assert (=> b!1521750 m!1404913))

(assert (=> b!1521750 m!1404913))

(assert (=> b!1521750 m!1404911))

(declare-fun m!1404915 () Bool)

(assert (=> b!1521750 m!1404915))

(declare-fun m!1404917 () Bool)

(assert (=> b!1521742 m!1404917))

(assert (=> b!1521742 m!1404917))

(declare-fun m!1404919 () Bool)

(assert (=> b!1521742 m!1404919))

(assert (=> b!1521751 m!1404911))

(assert (=> b!1521751 m!1404911))

(declare-fun m!1404921 () Bool)

(assert (=> b!1521751 m!1404921))

(declare-fun m!1404923 () Bool)

(assert (=> b!1521748 m!1404923))

(declare-fun m!1404925 () Bool)

(assert (=> b!1521748 m!1404925))

(assert (=> b!1521748 m!1404925))

(declare-fun m!1404927 () Bool)

(assert (=> b!1521748 m!1404927))

(assert (=> b!1521748 m!1404927))

(assert (=> b!1521748 m!1404925))

(declare-fun m!1404929 () Bool)

(assert (=> b!1521748 m!1404929))

(assert (=> b!1521747 m!1404911))

(assert (=> b!1521747 m!1404911))

(declare-fun m!1404931 () Bool)

(assert (=> b!1521747 m!1404931))

(declare-fun m!1404933 () Bool)

(assert (=> b!1521743 m!1404933))

(declare-fun m!1404935 () Bool)

(assert (=> b!1521746 m!1404935))

(declare-fun m!1404937 () Bool)

(assert (=> start!129666 m!1404937))

(declare-fun m!1404939 () Bool)

(assert (=> start!129666 m!1404939))

(push 1)

