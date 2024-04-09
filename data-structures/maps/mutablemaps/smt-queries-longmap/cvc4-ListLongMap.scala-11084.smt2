; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129386 () Bool)

(assert start!129386)

(declare-fun b!1519433 () Bool)

(declare-fun res!1039409 () Bool)

(declare-fun e!847607 () Bool)

(assert (=> b!1519433 (=> (not res!1039409) (not e!847607))))

(declare-datatypes ((array!101155 0))(
  ( (array!101156 (arr!48810 (Array (_ BitVec 32) (_ BitVec 64))) (size!49361 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101155)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101155 (_ BitVec 32)) Bool)

(assert (=> b!1519433 (= res!1039409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519434 () Bool)

(declare-fun e!847608 () Bool)

(declare-fun e!847605 () Bool)

(assert (=> b!1519434 (= e!847608 (not e!847605))))

(declare-fun res!1039414 () Bool)

(assert (=> b!1519434 (=> res!1039414 e!847605)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!658645 () (_ BitVec 64))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1519434 (= res!1039414 (or (not (= (select (arr!48810 a!2804) j!70) lt!658645)) (= x!534 resX!21)))))

(declare-fun e!847603 () Bool)

(assert (=> b!1519434 e!847603))

(declare-fun res!1039420 () Bool)

(assert (=> b!1519434 (=> (not res!1039420) (not e!847603))))

(assert (=> b!1519434 (= res!1039420 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50828 0))(
  ( (Unit!50829) )
))
(declare-fun lt!658639 () Unit!50828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50828)

(assert (=> b!1519434 (= lt!658639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519435 () Bool)

(declare-fun e!847604 () Bool)

(assert (=> b!1519435 (= e!847607 e!847604)))

(declare-fun res!1039419 () Bool)

(assert (=> b!1519435 (=> (not res!1039419) (not e!847604))))

(declare-datatypes ((SeekEntryResult!13002 0))(
  ( (MissingZero!13002 (index!54402 (_ BitVec 32))) (Found!13002 (index!54403 (_ BitVec 32))) (Intermediate!13002 (undefined!13814 Bool) (index!54404 (_ BitVec 32)) (x!136077 (_ BitVec 32))) (Undefined!13002) (MissingVacant!13002 (index!54405 (_ BitVec 32))) )
))
(declare-fun lt!658642 () SeekEntryResult!13002)

(declare-fun lt!658644 () SeekEntryResult!13002)

(assert (=> b!1519435 (= res!1039419 (= lt!658642 lt!658644))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1519435 (= lt!658644 (Intermediate!13002 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101155 (_ BitVec 32)) SeekEntryResult!13002)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519435 (= lt!658642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48810 a!2804) j!70) mask!2512) (select (arr!48810 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519436 () Bool)

(declare-fun res!1039408 () Bool)

(assert (=> b!1519436 (=> (not res!1039408) (not e!847607))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1519436 (= res!1039408 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49361 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49361 a!2804))))))

(declare-fun b!1519437 () Bool)

(declare-fun res!1039422 () Bool)

(assert (=> b!1519437 (=> (not res!1039422) (not e!847607))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1519437 (= res!1039422 (and (= (size!49361 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49361 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49361 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519438 () Bool)

(declare-fun res!1039412 () Bool)

(assert (=> b!1519438 (=> (not res!1039412) (not e!847607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519438 (= res!1039412 (validKeyInArray!0 (select (arr!48810 a!2804) j!70)))))

(declare-fun b!1519439 () Bool)

(declare-fun e!847609 () Bool)

(assert (=> b!1519439 (= e!847605 e!847609)))

(declare-fun res!1039417 () Bool)

(assert (=> b!1519439 (=> res!1039417 e!847609)))

(declare-fun lt!658643 () (_ BitVec 32))

(assert (=> b!1519439 (= res!1039417 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658643 #b00000000000000000000000000000000) (bvsge lt!658643 (size!49361 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519439 (= lt!658643 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519440 () Bool)

(declare-fun e!847606 () Bool)

(assert (=> b!1519440 (= e!847609 e!847606)))

(declare-fun res!1039410 () Bool)

(assert (=> b!1519440 (=> res!1039410 e!847606)))

(assert (=> b!1519440 (= res!1039410 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!658641 () array!101155)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101155 (_ BitVec 32)) SeekEntryResult!13002)

(assert (=> b!1519440 (= (seekEntryOrOpen!0 (select (arr!48810 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658645 lt!658641 mask!2512))))

(declare-fun lt!658640 () Unit!50828)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50828)

(assert (=> b!1519440 (= lt!658640 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658643 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519441 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101155 (_ BitVec 32)) SeekEntryResult!13002)

(assert (=> b!1519441 (= e!847603 (= (seekEntry!0 (select (arr!48810 a!2804) j!70) a!2804 mask!2512) (Found!13002 j!70)))))

(declare-fun b!1519442 () Bool)

(assert (=> b!1519442 (= e!847606 (validKeyInArray!0 lt!658645))))

(declare-fun b!1519444 () Bool)

(assert (=> b!1519444 (= e!847604 e!847608)))

(declare-fun res!1039416 () Bool)

(assert (=> b!1519444 (=> (not res!1039416) (not e!847608))))

(assert (=> b!1519444 (= res!1039416 (= lt!658642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658645 mask!2512) lt!658645 lt!658641 mask!2512)))))

(assert (=> b!1519444 (= lt!658645 (select (store (arr!48810 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519444 (= lt!658641 (array!101156 (store (arr!48810 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49361 a!2804)))))

(declare-fun b!1519445 () Bool)

(declare-fun res!1039411 () Bool)

(assert (=> b!1519445 (=> res!1039411 e!847609)))

(assert (=> b!1519445 (= res!1039411 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658643 (select (arr!48810 a!2804) j!70) a!2804 mask!2512) lt!658644)))))

(declare-fun b!1519446 () Bool)

(declare-fun res!1039415 () Bool)

(assert (=> b!1519446 (=> (not res!1039415) (not e!847607))))

(assert (=> b!1519446 (= res!1039415 (validKeyInArray!0 (select (arr!48810 a!2804) i!961)))))

(declare-fun b!1519447 () Bool)

(declare-fun res!1039413 () Bool)

(assert (=> b!1519447 (=> (not res!1039413) (not e!847607))))

(declare-datatypes ((List!35473 0))(
  ( (Nil!35470) (Cons!35469 (h!36882 (_ BitVec 64)) (t!50174 List!35473)) )
))
(declare-fun arrayNoDuplicates!0 (array!101155 (_ BitVec 32) List!35473) Bool)

(assert (=> b!1519447 (= res!1039413 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35470))))

(declare-fun b!1519443 () Bool)

(declare-fun res!1039418 () Bool)

(assert (=> b!1519443 (=> (not res!1039418) (not e!847604))))

(assert (=> b!1519443 (= res!1039418 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48810 a!2804) j!70) a!2804 mask!2512) lt!658644))))

(declare-fun res!1039421 () Bool)

(assert (=> start!129386 (=> (not res!1039421) (not e!847607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129386 (= res!1039421 (validMask!0 mask!2512))))

(assert (=> start!129386 e!847607))

(assert (=> start!129386 true))

(declare-fun array_inv!37755 (array!101155) Bool)

(assert (=> start!129386 (array_inv!37755 a!2804)))

(assert (= (and start!129386 res!1039421) b!1519437))

(assert (= (and b!1519437 res!1039422) b!1519446))

(assert (= (and b!1519446 res!1039415) b!1519438))

(assert (= (and b!1519438 res!1039412) b!1519433))

(assert (= (and b!1519433 res!1039409) b!1519447))

(assert (= (and b!1519447 res!1039413) b!1519436))

(assert (= (and b!1519436 res!1039408) b!1519435))

(assert (= (and b!1519435 res!1039419) b!1519443))

(assert (= (and b!1519443 res!1039418) b!1519444))

(assert (= (and b!1519444 res!1039416) b!1519434))

(assert (= (and b!1519434 res!1039420) b!1519441))

(assert (= (and b!1519434 (not res!1039414)) b!1519439))

(assert (= (and b!1519439 (not res!1039417)) b!1519445))

(assert (= (and b!1519445 (not res!1039411)) b!1519440))

(assert (= (and b!1519440 (not res!1039410)) b!1519442))

(declare-fun m!1402893 () Bool)

(assert (=> b!1519440 m!1402893))

(assert (=> b!1519440 m!1402893))

(declare-fun m!1402895 () Bool)

(assert (=> b!1519440 m!1402895))

(declare-fun m!1402897 () Bool)

(assert (=> b!1519440 m!1402897))

(declare-fun m!1402899 () Bool)

(assert (=> b!1519440 m!1402899))

(declare-fun m!1402901 () Bool)

(assert (=> b!1519442 m!1402901))

(assert (=> b!1519435 m!1402893))

(assert (=> b!1519435 m!1402893))

(declare-fun m!1402903 () Bool)

(assert (=> b!1519435 m!1402903))

(assert (=> b!1519435 m!1402903))

(assert (=> b!1519435 m!1402893))

(declare-fun m!1402905 () Bool)

(assert (=> b!1519435 m!1402905))

(assert (=> b!1519434 m!1402893))

(declare-fun m!1402907 () Bool)

(assert (=> b!1519434 m!1402907))

(declare-fun m!1402909 () Bool)

(assert (=> b!1519434 m!1402909))

(assert (=> b!1519438 m!1402893))

(assert (=> b!1519438 m!1402893))

(declare-fun m!1402911 () Bool)

(assert (=> b!1519438 m!1402911))

(declare-fun m!1402913 () Bool)

(assert (=> b!1519433 m!1402913))

(declare-fun m!1402915 () Bool)

(assert (=> b!1519444 m!1402915))

(assert (=> b!1519444 m!1402915))

(declare-fun m!1402917 () Bool)

(assert (=> b!1519444 m!1402917))

(declare-fun m!1402919 () Bool)

(assert (=> b!1519444 m!1402919))

(declare-fun m!1402921 () Bool)

(assert (=> b!1519444 m!1402921))

(declare-fun m!1402923 () Bool)

(assert (=> start!129386 m!1402923))

(declare-fun m!1402925 () Bool)

(assert (=> start!129386 m!1402925))

(declare-fun m!1402927 () Bool)

(assert (=> b!1519447 m!1402927))

(declare-fun m!1402929 () Bool)

(assert (=> b!1519439 m!1402929))

(assert (=> b!1519441 m!1402893))

(assert (=> b!1519441 m!1402893))

(declare-fun m!1402931 () Bool)

(assert (=> b!1519441 m!1402931))

(assert (=> b!1519445 m!1402893))

(assert (=> b!1519445 m!1402893))

(declare-fun m!1402933 () Bool)

(assert (=> b!1519445 m!1402933))

(assert (=> b!1519443 m!1402893))

(assert (=> b!1519443 m!1402893))

(declare-fun m!1402935 () Bool)

(assert (=> b!1519443 m!1402935))

(declare-fun m!1402937 () Bool)

(assert (=> b!1519446 m!1402937))

(assert (=> b!1519446 m!1402937))

(declare-fun m!1402939 () Bool)

(assert (=> b!1519446 m!1402939))

(push 1)

(assert (not b!1519446))

(assert (not b!1519440))

(assert (not b!1519443))

(assert (not b!1519442))

(assert (not b!1519447))

(assert (not b!1519439))

(assert (not b!1519438))

(assert (not b!1519444))

(assert (not b!1519441))

(assert (not b!1519445))

(assert (not start!129386))

(assert (not b!1519435))

(assert (not b!1519434))

(assert (not b!1519433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

