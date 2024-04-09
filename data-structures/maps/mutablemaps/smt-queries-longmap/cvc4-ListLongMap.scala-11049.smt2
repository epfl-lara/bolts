; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129176 () Bool)

(assert start!129176)

(declare-fun b!1515322 () Bool)

(declare-fun res!1035307 () Bool)

(declare-fun e!845652 () Bool)

(assert (=> b!1515322 (=> (not res!1035307) (not e!845652))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100945 0))(
  ( (array!100946 (arr!48705 (Array (_ BitVec 32) (_ BitVec 64))) (size!49256 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100945)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12897 0))(
  ( (MissingZero!12897 (index!53982 (_ BitVec 32))) (Found!12897 (index!53983 (_ BitVec 32))) (Intermediate!12897 (undefined!13709 Bool) (index!53984 (_ BitVec 32)) (x!135692 (_ BitVec 32))) (Undefined!12897) (MissingVacant!12897 (index!53985 (_ BitVec 32))) )
))
(declare-fun lt!656767 () SeekEntryResult!12897)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100945 (_ BitVec 32)) SeekEntryResult!12897)

(assert (=> b!1515322 (= res!1035307 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48705 a!2804) j!70) a!2804 mask!2512) lt!656767))))

(declare-fun b!1515323 () Bool)

(declare-fun e!845653 () Bool)

(assert (=> b!1515323 (= e!845653 true)))

(declare-fun lt!656771 () SeekEntryResult!12897)

(declare-fun lt!656773 () SeekEntryResult!12897)

(assert (=> b!1515323 (= lt!656771 lt!656773)))

(declare-datatypes ((Unit!50618 0))(
  ( (Unit!50619) )
))
(declare-fun lt!656766 () Unit!50618)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50618)

(assert (=> b!1515323 (= lt!656766 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun res!1035305 () Bool)

(declare-fun e!845654 () Bool)

(assert (=> start!129176 (=> (not res!1035305) (not e!845654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129176 (= res!1035305 (validMask!0 mask!2512))))

(assert (=> start!129176 e!845654))

(assert (=> start!129176 true))

(declare-fun array_inv!37650 (array!100945) Bool)

(assert (=> start!129176 (array_inv!37650 a!2804)))

(declare-fun b!1515324 () Bool)

(declare-fun res!1035309 () Bool)

(assert (=> b!1515324 (=> (not res!1035309) (not e!845654))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515324 (= res!1035309 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49256 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49256 a!2804))))))

(declare-fun b!1515325 () Bool)

(declare-fun res!1035300 () Bool)

(assert (=> b!1515325 (=> (not res!1035300) (not e!845654))))

(assert (=> b!1515325 (= res!1035300 (and (= (size!49256 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49256 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49256 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515326 () Bool)

(declare-fun res!1035306 () Bool)

(assert (=> b!1515326 (=> (not res!1035306) (not e!845654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100945 (_ BitVec 32)) Bool)

(assert (=> b!1515326 (= res!1035306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515327 () Bool)

(declare-fun res!1035304 () Bool)

(assert (=> b!1515327 (=> (not res!1035304) (not e!845654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515327 (= res!1035304 (validKeyInArray!0 (select (arr!48705 a!2804) i!961)))))

(declare-fun b!1515328 () Bool)

(declare-fun res!1035303 () Bool)

(assert (=> b!1515328 (=> (not res!1035303) (not e!845654))))

(assert (=> b!1515328 (= res!1035303 (validKeyInArray!0 (select (arr!48705 a!2804) j!70)))))

(declare-fun b!1515329 () Bool)

(declare-fun e!845655 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100945 (_ BitVec 32)) SeekEntryResult!12897)

(assert (=> b!1515329 (= e!845655 (= (seekEntry!0 (select (arr!48705 a!2804) j!70) a!2804 mask!2512) (Found!12897 j!70)))))

(declare-fun b!1515330 () Bool)

(declare-fun res!1035298 () Bool)

(assert (=> b!1515330 (=> (not res!1035298) (not e!845654))))

(declare-datatypes ((List!35368 0))(
  ( (Nil!35365) (Cons!35364 (h!36777 (_ BitVec 64)) (t!50069 List!35368)) )
))
(declare-fun arrayNoDuplicates!0 (array!100945 (_ BitVec 32) List!35368) Bool)

(assert (=> b!1515330 (= res!1035298 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35365))))

(declare-fun b!1515331 () Bool)

(assert (=> b!1515331 (= e!845654 e!845652)))

(declare-fun res!1035308 () Bool)

(assert (=> b!1515331 (=> (not res!1035308) (not e!845652))))

(declare-fun lt!656770 () SeekEntryResult!12897)

(assert (=> b!1515331 (= res!1035308 (= lt!656770 lt!656767))))

(assert (=> b!1515331 (= lt!656767 (Intermediate!12897 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515331 (= lt!656770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48705 a!2804) j!70) mask!2512) (select (arr!48705 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515332 () Bool)

(declare-fun e!845656 () Bool)

(assert (=> b!1515332 (= e!845652 e!845656)))

(declare-fun res!1035297 () Bool)

(assert (=> b!1515332 (=> (not res!1035297) (not e!845656))))

(declare-fun lt!656772 () array!100945)

(declare-fun lt!656765 () (_ BitVec 64))

(assert (=> b!1515332 (= res!1035297 (= lt!656770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656765 mask!2512) lt!656765 lt!656772 mask!2512)))))

(assert (=> b!1515332 (= lt!656765 (select (store (arr!48705 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515332 (= lt!656772 (array!100946 (store (arr!48705 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49256 a!2804)))))

(declare-fun b!1515333 () Bool)

(declare-fun e!845657 () Bool)

(assert (=> b!1515333 (= e!845657 e!845653)))

(declare-fun res!1035299 () Bool)

(assert (=> b!1515333 (=> res!1035299 e!845653)))

(assert (=> b!1515333 (= res!1035299 (not (= lt!656773 (Found!12897 j!70))))))

(declare-fun lt!656769 () SeekEntryResult!12897)

(assert (=> b!1515333 (= lt!656769 lt!656771)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100945 (_ BitVec 32)) SeekEntryResult!12897)

(assert (=> b!1515333 (= lt!656771 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656765 lt!656772 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100945 (_ BitVec 32)) SeekEntryResult!12897)

(assert (=> b!1515333 (= lt!656769 (seekEntryOrOpen!0 lt!656765 lt!656772 mask!2512))))

(declare-fun lt!656768 () SeekEntryResult!12897)

(assert (=> b!1515333 (= lt!656768 lt!656773)))

(assert (=> b!1515333 (= lt!656773 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48705 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515333 (= lt!656768 (seekEntryOrOpen!0 (select (arr!48705 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515334 () Bool)

(assert (=> b!1515334 (= e!845656 (not e!845657))))

(declare-fun res!1035301 () Bool)

(assert (=> b!1515334 (=> res!1035301 e!845657)))

(assert (=> b!1515334 (= res!1035301 (or (not (= (select (arr!48705 a!2804) j!70) lt!656765)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48705 a!2804) index!487) (select (arr!48705 a!2804) j!70)) (not (= (select (arr!48705 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515334 e!845655))

(declare-fun res!1035302 () Bool)

(assert (=> b!1515334 (=> (not res!1035302) (not e!845655))))

(assert (=> b!1515334 (= res!1035302 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656764 () Unit!50618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50618)

(assert (=> b!1515334 (= lt!656764 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129176 res!1035305) b!1515325))

(assert (= (and b!1515325 res!1035300) b!1515327))

(assert (= (and b!1515327 res!1035304) b!1515328))

(assert (= (and b!1515328 res!1035303) b!1515326))

(assert (= (and b!1515326 res!1035306) b!1515330))

(assert (= (and b!1515330 res!1035298) b!1515324))

(assert (= (and b!1515324 res!1035309) b!1515331))

(assert (= (and b!1515331 res!1035308) b!1515322))

(assert (= (and b!1515322 res!1035307) b!1515332))

(assert (= (and b!1515332 res!1035297) b!1515334))

(assert (= (and b!1515334 res!1035302) b!1515329))

(assert (= (and b!1515334 (not res!1035301)) b!1515333))

(assert (= (and b!1515333 (not res!1035299)) b!1515323))

(declare-fun m!1398465 () Bool)

(assert (=> b!1515326 m!1398465))

(declare-fun m!1398467 () Bool)

(assert (=> b!1515327 m!1398467))

(assert (=> b!1515327 m!1398467))

(declare-fun m!1398469 () Bool)

(assert (=> b!1515327 m!1398469))

(declare-fun m!1398471 () Bool)

(assert (=> b!1515328 m!1398471))

(assert (=> b!1515328 m!1398471))

(declare-fun m!1398473 () Bool)

(assert (=> b!1515328 m!1398473))

(declare-fun m!1398475 () Bool)

(assert (=> b!1515323 m!1398475))

(assert (=> b!1515334 m!1398471))

(declare-fun m!1398477 () Bool)

(assert (=> b!1515334 m!1398477))

(declare-fun m!1398479 () Bool)

(assert (=> b!1515334 m!1398479))

(declare-fun m!1398481 () Bool)

(assert (=> b!1515334 m!1398481))

(assert (=> b!1515322 m!1398471))

(assert (=> b!1515322 m!1398471))

(declare-fun m!1398483 () Bool)

(assert (=> b!1515322 m!1398483))

(assert (=> b!1515331 m!1398471))

(assert (=> b!1515331 m!1398471))

(declare-fun m!1398485 () Bool)

(assert (=> b!1515331 m!1398485))

(assert (=> b!1515331 m!1398485))

(assert (=> b!1515331 m!1398471))

(declare-fun m!1398487 () Bool)

(assert (=> b!1515331 m!1398487))

(declare-fun m!1398489 () Bool)

(assert (=> b!1515330 m!1398489))

(declare-fun m!1398491 () Bool)

(assert (=> b!1515332 m!1398491))

(assert (=> b!1515332 m!1398491))

(declare-fun m!1398493 () Bool)

(assert (=> b!1515332 m!1398493))

(declare-fun m!1398495 () Bool)

(assert (=> b!1515332 m!1398495))

(declare-fun m!1398497 () Bool)

(assert (=> b!1515332 m!1398497))

(declare-fun m!1398499 () Bool)

(assert (=> start!129176 m!1398499))

(declare-fun m!1398501 () Bool)

(assert (=> start!129176 m!1398501))

(assert (=> b!1515333 m!1398471))

(declare-fun m!1398503 () Bool)

(assert (=> b!1515333 m!1398503))

(declare-fun m!1398505 () Bool)

(assert (=> b!1515333 m!1398505))

(assert (=> b!1515333 m!1398471))

(declare-fun m!1398507 () Bool)

(assert (=> b!1515333 m!1398507))

(declare-fun m!1398509 () Bool)

(assert (=> b!1515333 m!1398509))

(assert (=> b!1515333 m!1398471))

(assert (=> b!1515329 m!1398471))

(assert (=> b!1515329 m!1398471))

(declare-fun m!1398511 () Bool)

(assert (=> b!1515329 m!1398511))

(push 1)

