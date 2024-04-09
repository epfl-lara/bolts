; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129180 () Bool)

(assert start!129180)

(declare-fun b!1515400 () Bool)

(declare-fun res!1035375 () Bool)

(declare-fun e!845694 () Bool)

(assert (=> b!1515400 (=> (not res!1035375) (not e!845694))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100949 0))(
  ( (array!100950 (arr!48707 (Array (_ BitVec 32) (_ BitVec 64))) (size!49258 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100949)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515400 (= res!1035375 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49258 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49258 a!2804))))))

(declare-fun b!1515401 () Bool)

(declare-fun res!1035386 () Bool)

(assert (=> b!1515401 (=> (not res!1035386) (not e!845694))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515401 (= res!1035386 (validKeyInArray!0 (select (arr!48707 a!2804) i!961)))))

(declare-fun b!1515402 () Bool)

(declare-fun e!845697 () Bool)

(assert (=> b!1515402 (= e!845697 true)))

(declare-datatypes ((SeekEntryResult!12899 0))(
  ( (MissingZero!12899 (index!53990 (_ BitVec 32))) (Found!12899 (index!53991 (_ BitVec 32))) (Intermediate!12899 (undefined!13711 Bool) (index!53992 (_ BitVec 32)) (x!135702 (_ BitVec 32))) (Undefined!12899) (MissingVacant!12899 (index!53993 (_ BitVec 32))) )
))
(declare-fun lt!656824 () SeekEntryResult!12899)

(declare-fun lt!656829 () SeekEntryResult!12899)

(assert (=> b!1515402 (= lt!656824 lt!656829)))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((Unit!50622 0))(
  ( (Unit!50623) )
))
(declare-fun lt!656831 () Unit!50622)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50622)

(assert (=> b!1515402 (= lt!656831 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515403 () Bool)

(declare-fun e!845699 () Bool)

(assert (=> b!1515403 (= e!845694 e!845699)))

(declare-fun res!1035377 () Bool)

(assert (=> b!1515403 (=> (not res!1035377) (not e!845699))))

(declare-fun lt!656832 () SeekEntryResult!12899)

(declare-fun lt!656826 () SeekEntryResult!12899)

(assert (=> b!1515403 (= res!1035377 (= lt!656832 lt!656826))))

(assert (=> b!1515403 (= lt!656826 (Intermediate!12899 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100949 (_ BitVec 32)) SeekEntryResult!12899)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515403 (= lt!656832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48707 a!2804) j!70) mask!2512) (select (arr!48707 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515404 () Bool)

(declare-fun e!845695 () Bool)

(assert (=> b!1515404 (= e!845699 e!845695)))

(declare-fun res!1035380 () Bool)

(assert (=> b!1515404 (=> (not res!1035380) (not e!845695))))

(declare-fun lt!656830 () array!100949)

(declare-fun lt!656828 () (_ BitVec 64))

(assert (=> b!1515404 (= res!1035380 (= lt!656832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656828 mask!2512) lt!656828 lt!656830 mask!2512)))))

(assert (=> b!1515404 (= lt!656828 (select (store (arr!48707 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515404 (= lt!656830 (array!100950 (store (arr!48707 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49258 a!2804)))))

(declare-fun b!1515405 () Bool)

(declare-fun res!1035384 () Bool)

(assert (=> b!1515405 (=> (not res!1035384) (not e!845699))))

(assert (=> b!1515405 (= res!1035384 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48707 a!2804) j!70) a!2804 mask!2512) lt!656826))))

(declare-fun b!1515406 () Bool)

(declare-fun e!845698 () Bool)

(assert (=> b!1515406 (= e!845695 (not e!845698))))

(declare-fun res!1035383 () Bool)

(assert (=> b!1515406 (=> res!1035383 e!845698)))

(assert (=> b!1515406 (= res!1035383 (or (not (= (select (arr!48707 a!2804) j!70) lt!656828)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48707 a!2804) index!487) (select (arr!48707 a!2804) j!70)) (not (= (select (arr!48707 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845696 () Bool)

(assert (=> b!1515406 e!845696))

(declare-fun res!1035382 () Bool)

(assert (=> b!1515406 (=> (not res!1035382) (not e!845696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100949 (_ BitVec 32)) Bool)

(assert (=> b!1515406 (= res!1035382 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656825 () Unit!50622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50622)

(assert (=> b!1515406 (= lt!656825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515407 () Bool)

(declare-fun res!1035381 () Bool)

(assert (=> b!1515407 (=> (not res!1035381) (not e!845694))))

(assert (=> b!1515407 (= res!1035381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515408 () Bool)

(declare-fun res!1035379 () Bool)

(assert (=> b!1515408 (=> (not res!1035379) (not e!845694))))

(assert (=> b!1515408 (= res!1035379 (and (= (size!49258 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49258 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49258 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515409 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100949 (_ BitVec 32)) SeekEntryResult!12899)

(assert (=> b!1515409 (= e!845696 (= (seekEntry!0 (select (arr!48707 a!2804) j!70) a!2804 mask!2512) (Found!12899 j!70)))))

(declare-fun b!1515410 () Bool)

(declare-fun res!1035385 () Bool)

(assert (=> b!1515410 (=> (not res!1035385) (not e!845694))))

(assert (=> b!1515410 (= res!1035385 (validKeyInArray!0 (select (arr!48707 a!2804) j!70)))))

(declare-fun b!1515411 () Bool)

(assert (=> b!1515411 (= e!845698 e!845697)))

(declare-fun res!1035378 () Bool)

(assert (=> b!1515411 (=> res!1035378 e!845697)))

(assert (=> b!1515411 (= res!1035378 (not (= lt!656829 (Found!12899 j!70))))))

(declare-fun lt!656833 () SeekEntryResult!12899)

(assert (=> b!1515411 (= lt!656833 lt!656824)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100949 (_ BitVec 32)) SeekEntryResult!12899)

(assert (=> b!1515411 (= lt!656824 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656828 lt!656830 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100949 (_ BitVec 32)) SeekEntryResult!12899)

(assert (=> b!1515411 (= lt!656833 (seekEntryOrOpen!0 lt!656828 lt!656830 mask!2512))))

(declare-fun lt!656827 () SeekEntryResult!12899)

(assert (=> b!1515411 (= lt!656827 lt!656829)))

(assert (=> b!1515411 (= lt!656829 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48707 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515411 (= lt!656827 (seekEntryOrOpen!0 (select (arr!48707 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515412 () Bool)

(declare-fun res!1035376 () Bool)

(assert (=> b!1515412 (=> (not res!1035376) (not e!845694))))

(declare-datatypes ((List!35370 0))(
  ( (Nil!35367) (Cons!35366 (h!36779 (_ BitVec 64)) (t!50071 List!35370)) )
))
(declare-fun arrayNoDuplicates!0 (array!100949 (_ BitVec 32) List!35370) Bool)

(assert (=> b!1515412 (= res!1035376 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35367))))

(declare-fun res!1035387 () Bool)

(assert (=> start!129180 (=> (not res!1035387) (not e!845694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129180 (= res!1035387 (validMask!0 mask!2512))))

(assert (=> start!129180 e!845694))

(assert (=> start!129180 true))

(declare-fun array_inv!37652 (array!100949) Bool)

(assert (=> start!129180 (array_inv!37652 a!2804)))

(assert (= (and start!129180 res!1035387) b!1515408))

(assert (= (and b!1515408 res!1035379) b!1515401))

(assert (= (and b!1515401 res!1035386) b!1515410))

(assert (= (and b!1515410 res!1035385) b!1515407))

(assert (= (and b!1515407 res!1035381) b!1515412))

(assert (= (and b!1515412 res!1035376) b!1515400))

(assert (= (and b!1515400 res!1035375) b!1515403))

(assert (= (and b!1515403 res!1035377) b!1515405))

(assert (= (and b!1515405 res!1035384) b!1515404))

(assert (= (and b!1515404 res!1035380) b!1515406))

(assert (= (and b!1515406 res!1035382) b!1515409))

(assert (= (and b!1515406 (not res!1035383)) b!1515411))

(assert (= (and b!1515411 (not res!1035378)) b!1515402))

(declare-fun m!1398561 () Bool)

(assert (=> b!1515406 m!1398561))

(declare-fun m!1398563 () Bool)

(assert (=> b!1515406 m!1398563))

(declare-fun m!1398565 () Bool)

(assert (=> b!1515406 m!1398565))

(declare-fun m!1398567 () Bool)

(assert (=> b!1515406 m!1398567))

(declare-fun m!1398569 () Bool)

(assert (=> b!1515402 m!1398569))

(declare-fun m!1398571 () Bool)

(assert (=> start!129180 m!1398571))

(declare-fun m!1398573 () Bool)

(assert (=> start!129180 m!1398573))

(assert (=> b!1515409 m!1398561))

(assert (=> b!1515409 m!1398561))

(declare-fun m!1398575 () Bool)

(assert (=> b!1515409 m!1398575))

(assert (=> b!1515411 m!1398561))

(declare-fun m!1398577 () Bool)

(assert (=> b!1515411 m!1398577))

(assert (=> b!1515411 m!1398561))

(assert (=> b!1515411 m!1398561))

(declare-fun m!1398579 () Bool)

(assert (=> b!1515411 m!1398579))

(declare-fun m!1398581 () Bool)

(assert (=> b!1515411 m!1398581))

(declare-fun m!1398583 () Bool)

(assert (=> b!1515411 m!1398583))

(declare-fun m!1398585 () Bool)

(assert (=> b!1515404 m!1398585))

(assert (=> b!1515404 m!1398585))

(declare-fun m!1398587 () Bool)

(assert (=> b!1515404 m!1398587))

(declare-fun m!1398589 () Bool)

(assert (=> b!1515404 m!1398589))

(declare-fun m!1398591 () Bool)

(assert (=> b!1515404 m!1398591))

(assert (=> b!1515410 m!1398561))

(assert (=> b!1515410 m!1398561))

(declare-fun m!1398593 () Bool)

(assert (=> b!1515410 m!1398593))

(declare-fun m!1398595 () Bool)

(assert (=> b!1515407 m!1398595))

(declare-fun m!1398597 () Bool)

(assert (=> b!1515401 m!1398597))

(assert (=> b!1515401 m!1398597))

(declare-fun m!1398599 () Bool)

(assert (=> b!1515401 m!1398599))

(declare-fun m!1398601 () Bool)

(assert (=> b!1515412 m!1398601))

(assert (=> b!1515403 m!1398561))

(assert (=> b!1515403 m!1398561))

(declare-fun m!1398603 () Bool)

(assert (=> b!1515403 m!1398603))

(assert (=> b!1515403 m!1398603))

(assert (=> b!1515403 m!1398561))

(declare-fun m!1398605 () Bool)

(assert (=> b!1515403 m!1398605))

(assert (=> b!1515405 m!1398561))

(assert (=> b!1515405 m!1398561))

(declare-fun m!1398607 () Bool)

(assert (=> b!1515405 m!1398607))

(check-sat (not b!1515406) (not b!1515411) (not b!1515402) (not b!1515410) (not b!1515407) (not b!1515401) (not b!1515404) (not b!1515405) (not start!129180) (not b!1515409) (not b!1515412) (not b!1515403))
(check-sat)
