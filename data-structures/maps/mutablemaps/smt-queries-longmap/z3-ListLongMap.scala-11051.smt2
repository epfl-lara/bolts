; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129186 () Bool)

(assert start!129186)

(declare-fun b!1515517 () Bool)

(declare-fun res!1035493 () Bool)

(declare-fun e!845762 () Bool)

(assert (=> b!1515517 (=> (not res!1035493) (not e!845762))))

(declare-datatypes ((SeekEntryResult!12902 0))(
  ( (MissingZero!12902 (index!54002 (_ BitVec 32))) (Found!12902 (index!54003 (_ BitVec 32))) (Intermediate!12902 (undefined!13714 Bool) (index!54004 (_ BitVec 32)) (x!135713 (_ BitVec 32))) (Undefined!12902) (MissingVacant!12902 (index!54005 (_ BitVec 32))) )
))
(declare-fun lt!656921 () SeekEntryResult!12902)

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100955 0))(
  ( (array!100956 (arr!48710 (Array (_ BitVec 32) (_ BitVec 64))) (size!49261 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100955)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100955 (_ BitVec 32)) SeekEntryResult!12902)

(assert (=> b!1515517 (= res!1035493 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48710 a!2804) j!70) a!2804 mask!2512) lt!656921))))

(declare-fun b!1515518 () Bool)

(declare-fun res!1035497 () Bool)

(declare-fun e!845756 () Bool)

(assert (=> b!1515518 (=> (not res!1035497) (not e!845756))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515518 (= res!1035497 (and (= (size!49261 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49261 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49261 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515519 () Bool)

(declare-fun res!1035500 () Bool)

(assert (=> b!1515519 (=> (not res!1035500) (not e!845756))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515519 (= res!1035500 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49261 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49261 a!2804))))))

(declare-fun b!1515520 () Bool)

(declare-fun e!845760 () Bool)

(assert (=> b!1515520 (= e!845760 true)))

(declare-fun lt!656918 () SeekEntryResult!12902)

(declare-fun lt!656922 () SeekEntryResult!12902)

(assert (=> b!1515520 (= lt!656918 lt!656922)))

(declare-datatypes ((Unit!50628 0))(
  ( (Unit!50629) )
))
(declare-fun lt!656920 () Unit!50628)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50628)

(assert (=> b!1515520 (= lt!656920 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515521 () Bool)

(declare-fun e!845758 () Bool)

(declare-fun e!845757 () Bool)

(assert (=> b!1515521 (= e!845758 (not e!845757))))

(declare-fun res!1035498 () Bool)

(assert (=> b!1515521 (=> res!1035498 e!845757)))

(declare-fun lt!656923 () (_ BitVec 64))

(assert (=> b!1515521 (= res!1035498 (or (not (= (select (arr!48710 a!2804) j!70) lt!656923)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48710 a!2804) index!487) (select (arr!48710 a!2804) j!70)) (not (= (select (arr!48710 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845759 () Bool)

(assert (=> b!1515521 e!845759))

(declare-fun res!1035499 () Bool)

(assert (=> b!1515521 (=> (not res!1035499) (not e!845759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100955 (_ BitVec 32)) Bool)

(assert (=> b!1515521 (= res!1035499 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656917 () Unit!50628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50628)

(assert (=> b!1515521 (= lt!656917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515522 () Bool)

(assert (=> b!1515522 (= e!845757 e!845760)))

(declare-fun res!1035496 () Bool)

(assert (=> b!1515522 (=> res!1035496 e!845760)))

(assert (=> b!1515522 (= res!1035496 (not (= lt!656922 (Found!12902 j!70))))))

(declare-fun lt!656915 () SeekEntryResult!12902)

(assert (=> b!1515522 (= lt!656915 lt!656918)))

(declare-fun lt!656914 () array!100955)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100955 (_ BitVec 32)) SeekEntryResult!12902)

(assert (=> b!1515522 (= lt!656918 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656923 lt!656914 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100955 (_ BitVec 32)) SeekEntryResult!12902)

(assert (=> b!1515522 (= lt!656915 (seekEntryOrOpen!0 lt!656923 lt!656914 mask!2512))))

(declare-fun lt!656919 () SeekEntryResult!12902)

(assert (=> b!1515522 (= lt!656919 lt!656922)))

(assert (=> b!1515522 (= lt!656922 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48710 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515522 (= lt!656919 (seekEntryOrOpen!0 (select (arr!48710 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515523 () Bool)

(assert (=> b!1515523 (= e!845756 e!845762)))

(declare-fun res!1035492 () Bool)

(assert (=> b!1515523 (=> (not res!1035492) (not e!845762))))

(declare-fun lt!656916 () SeekEntryResult!12902)

(assert (=> b!1515523 (= res!1035492 (= lt!656916 lt!656921))))

(assert (=> b!1515523 (= lt!656921 (Intermediate!12902 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515523 (= lt!656916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48710 a!2804) j!70) mask!2512) (select (arr!48710 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515524 () Bool)

(declare-fun res!1035494 () Bool)

(assert (=> b!1515524 (=> (not res!1035494) (not e!845756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515524 (= res!1035494 (validKeyInArray!0 (select (arr!48710 a!2804) j!70)))))

(declare-fun res!1035502 () Bool)

(assert (=> start!129186 (=> (not res!1035502) (not e!845756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129186 (= res!1035502 (validMask!0 mask!2512))))

(assert (=> start!129186 e!845756))

(assert (=> start!129186 true))

(declare-fun array_inv!37655 (array!100955) Bool)

(assert (=> start!129186 (array_inv!37655 a!2804)))

(declare-fun b!1515525 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100955 (_ BitVec 32)) SeekEntryResult!12902)

(assert (=> b!1515525 (= e!845759 (= (seekEntry!0 (select (arr!48710 a!2804) j!70) a!2804 mask!2512) (Found!12902 j!70)))))

(declare-fun b!1515526 () Bool)

(assert (=> b!1515526 (= e!845762 e!845758)))

(declare-fun res!1035503 () Bool)

(assert (=> b!1515526 (=> (not res!1035503) (not e!845758))))

(assert (=> b!1515526 (= res!1035503 (= lt!656916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656923 mask!2512) lt!656923 lt!656914 mask!2512)))))

(assert (=> b!1515526 (= lt!656923 (select (store (arr!48710 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515526 (= lt!656914 (array!100956 (store (arr!48710 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49261 a!2804)))))

(declare-fun b!1515527 () Bool)

(declare-fun res!1035501 () Bool)

(assert (=> b!1515527 (=> (not res!1035501) (not e!845756))))

(declare-datatypes ((List!35373 0))(
  ( (Nil!35370) (Cons!35369 (h!36782 (_ BitVec 64)) (t!50074 List!35373)) )
))
(declare-fun arrayNoDuplicates!0 (array!100955 (_ BitVec 32) List!35373) Bool)

(assert (=> b!1515527 (= res!1035501 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35370))))

(declare-fun b!1515528 () Bool)

(declare-fun res!1035504 () Bool)

(assert (=> b!1515528 (=> (not res!1035504) (not e!845756))))

(assert (=> b!1515528 (= res!1035504 (validKeyInArray!0 (select (arr!48710 a!2804) i!961)))))

(declare-fun b!1515529 () Bool)

(declare-fun res!1035495 () Bool)

(assert (=> b!1515529 (=> (not res!1035495) (not e!845756))))

(assert (=> b!1515529 (= res!1035495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129186 res!1035502) b!1515518))

(assert (= (and b!1515518 res!1035497) b!1515528))

(assert (= (and b!1515528 res!1035504) b!1515524))

(assert (= (and b!1515524 res!1035494) b!1515529))

(assert (= (and b!1515529 res!1035495) b!1515527))

(assert (= (and b!1515527 res!1035501) b!1515519))

(assert (= (and b!1515519 res!1035500) b!1515523))

(assert (= (and b!1515523 res!1035492) b!1515517))

(assert (= (and b!1515517 res!1035493) b!1515526))

(assert (= (and b!1515526 res!1035503) b!1515521))

(assert (= (and b!1515521 res!1035499) b!1515525))

(assert (= (and b!1515521 (not res!1035498)) b!1515522))

(assert (= (and b!1515522 (not res!1035496)) b!1515520))

(declare-fun m!1398705 () Bool)

(assert (=> b!1515521 m!1398705))

(declare-fun m!1398707 () Bool)

(assert (=> b!1515521 m!1398707))

(declare-fun m!1398709 () Bool)

(assert (=> b!1515521 m!1398709))

(declare-fun m!1398711 () Bool)

(assert (=> b!1515521 m!1398711))

(declare-fun m!1398713 () Bool)

(assert (=> b!1515529 m!1398713))

(declare-fun m!1398715 () Bool)

(assert (=> b!1515526 m!1398715))

(assert (=> b!1515526 m!1398715))

(declare-fun m!1398717 () Bool)

(assert (=> b!1515526 m!1398717))

(declare-fun m!1398719 () Bool)

(assert (=> b!1515526 m!1398719))

(declare-fun m!1398721 () Bool)

(assert (=> b!1515526 m!1398721))

(declare-fun m!1398723 () Bool)

(assert (=> start!129186 m!1398723))

(declare-fun m!1398725 () Bool)

(assert (=> start!129186 m!1398725))

(declare-fun m!1398727 () Bool)

(assert (=> b!1515520 m!1398727))

(assert (=> b!1515523 m!1398705))

(assert (=> b!1515523 m!1398705))

(declare-fun m!1398729 () Bool)

(assert (=> b!1515523 m!1398729))

(assert (=> b!1515523 m!1398729))

(assert (=> b!1515523 m!1398705))

(declare-fun m!1398731 () Bool)

(assert (=> b!1515523 m!1398731))

(assert (=> b!1515524 m!1398705))

(assert (=> b!1515524 m!1398705))

(declare-fun m!1398733 () Bool)

(assert (=> b!1515524 m!1398733))

(declare-fun m!1398735 () Bool)

(assert (=> b!1515527 m!1398735))

(declare-fun m!1398737 () Bool)

(assert (=> b!1515522 m!1398737))

(assert (=> b!1515522 m!1398705))

(declare-fun m!1398739 () Bool)

(assert (=> b!1515522 m!1398739))

(assert (=> b!1515522 m!1398705))

(declare-fun m!1398741 () Bool)

(assert (=> b!1515522 m!1398741))

(assert (=> b!1515522 m!1398705))

(declare-fun m!1398743 () Bool)

(assert (=> b!1515522 m!1398743))

(declare-fun m!1398745 () Bool)

(assert (=> b!1515528 m!1398745))

(assert (=> b!1515528 m!1398745))

(declare-fun m!1398747 () Bool)

(assert (=> b!1515528 m!1398747))

(assert (=> b!1515525 m!1398705))

(assert (=> b!1515525 m!1398705))

(declare-fun m!1398749 () Bool)

(assert (=> b!1515525 m!1398749))

(assert (=> b!1515517 m!1398705))

(assert (=> b!1515517 m!1398705))

(declare-fun m!1398751 () Bool)

(assert (=> b!1515517 m!1398751))

(check-sat (not b!1515520) (not b!1515525) (not b!1515527) (not b!1515523) (not b!1515526) (not b!1515521) (not b!1515529) (not start!129186) (not b!1515524) (not b!1515517) (not b!1515522) (not b!1515528))
(check-sat)
