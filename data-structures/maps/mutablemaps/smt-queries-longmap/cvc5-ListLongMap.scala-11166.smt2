; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130570 () Bool)

(assert start!130570)

(declare-fun b!1531830 () Bool)

(declare-fun res!1049111 () Bool)

(declare-fun e!853541 () Bool)

(assert (=> b!1531830 (=> (not res!1049111) (not e!853541))))

(declare-datatypes ((array!101676 0))(
  ( (array!101677 (arr!49054 (Array (_ BitVec 32) (_ BitVec 64))) (size!49605 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101676)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531830 (= res!1049111 (validKeyInArray!0 (select (arr!49054 a!2804) j!70)))))

(declare-fun b!1531832 () Bool)

(declare-fun res!1049110 () Bool)

(declare-fun e!853545 () Bool)

(assert (=> b!1531832 (=> res!1049110 e!853545)))

(declare-datatypes ((SeekEntryResult!13240 0))(
  ( (MissingZero!13240 (index!55354 (_ BitVec 32))) (Found!13240 (index!55355 (_ BitVec 32))) (Intermediate!13240 (undefined!14052 Bool) (index!55356 (_ BitVec 32)) (x!137061 (_ BitVec 32))) (Undefined!13240) (MissingVacant!13240 (index!55357 (_ BitVec 32))) )
))
(declare-fun lt!663389 () SeekEntryResult!13240)

(declare-fun lt!663386 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101676 (_ BitVec 32)) SeekEntryResult!13240)

(assert (=> b!1531832 (= res!1049110 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663386 (select (arr!49054 a!2804) j!70) a!2804 mask!2512) lt!663389)))))

(declare-fun b!1531833 () Bool)

(declare-fun res!1049120 () Bool)

(assert (=> b!1531833 (=> (not res!1049120) (not e!853541))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1531833 (= res!1049120 (validKeyInArray!0 (select (arr!49054 a!2804) i!961)))))

(declare-fun b!1531834 () Bool)

(declare-fun e!853542 () Bool)

(declare-fun e!853546 () Bool)

(assert (=> b!1531834 (= e!853542 e!853546)))

(declare-fun res!1049117 () Bool)

(assert (=> b!1531834 (=> (not res!1049117) (not e!853546))))

(declare-fun lt!663388 () (_ BitVec 64))

(declare-fun lt!663391 () SeekEntryResult!13240)

(declare-fun lt!663387 () array!101676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531834 (= res!1049117 (= lt!663391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663388 mask!2512) lt!663388 lt!663387 mask!2512)))))

(assert (=> b!1531834 (= lt!663388 (select (store (arr!49054 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531834 (= lt!663387 (array!101677 (store (arr!49054 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49605 a!2804)))))

(declare-fun b!1531835 () Bool)

(declare-fun res!1049108 () Bool)

(assert (=> b!1531835 (=> (not res!1049108) (not e!853541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101676 (_ BitVec 32)) Bool)

(assert (=> b!1531835 (= res!1049108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531836 () Bool)

(assert (=> b!1531836 (= e!853545 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101676 (_ BitVec 32)) SeekEntryResult!13240)

(assert (=> b!1531836 (= (seekEntryOrOpen!0 (select (arr!49054 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663388 lt!663387 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((Unit!51220 0))(
  ( (Unit!51221) )
))
(declare-fun lt!663390 () Unit!51220)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101676 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51220)

(assert (=> b!1531836 (= lt!663390 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663386 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531837 () Bool)

(assert (=> b!1531837 (= e!853541 e!853542)))

(declare-fun res!1049116 () Bool)

(assert (=> b!1531837 (=> (not res!1049116) (not e!853542))))

(assert (=> b!1531837 (= res!1049116 (= lt!663391 lt!663389))))

(assert (=> b!1531837 (= lt!663389 (Intermediate!13240 false resIndex!21 resX!21))))

(assert (=> b!1531837 (= lt!663391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49054 a!2804) j!70) mask!2512) (select (arr!49054 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531838 () Bool)

(declare-fun e!853544 () Bool)

(assert (=> b!1531838 (= e!853546 (not e!853544))))

(declare-fun res!1049121 () Bool)

(assert (=> b!1531838 (=> res!1049121 e!853544)))

(assert (=> b!1531838 (= res!1049121 (or (not (= (select (arr!49054 a!2804) j!70) lt!663388)) (= x!534 resX!21)))))

(declare-fun e!853543 () Bool)

(assert (=> b!1531838 e!853543))

(declare-fun res!1049112 () Bool)

(assert (=> b!1531838 (=> (not res!1049112) (not e!853543))))

(assert (=> b!1531838 (= res!1049112 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663385 () Unit!51220)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101676 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51220)

(assert (=> b!1531838 (= lt!663385 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531839 () Bool)

(assert (=> b!1531839 (= e!853544 e!853545)))

(declare-fun res!1049109 () Bool)

(assert (=> b!1531839 (=> res!1049109 e!853545)))

(assert (=> b!1531839 (= res!1049109 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663386 #b00000000000000000000000000000000) (bvsge lt!663386 (size!49605 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531839 (= lt!663386 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531840 () Bool)

(declare-fun res!1049118 () Bool)

(assert (=> b!1531840 (=> (not res!1049118) (not e!853542))))

(assert (=> b!1531840 (= res!1049118 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49054 a!2804) j!70) a!2804 mask!2512) lt!663389))))

(declare-fun b!1531841 () Bool)

(declare-fun res!1049119 () Bool)

(assert (=> b!1531841 (=> (not res!1049119) (not e!853541))))

(assert (=> b!1531841 (= res!1049119 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49605 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49605 a!2804))))))

(declare-fun b!1531831 () Bool)

(declare-fun res!1049115 () Bool)

(assert (=> b!1531831 (=> (not res!1049115) (not e!853541))))

(assert (=> b!1531831 (= res!1049115 (and (= (size!49605 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49605 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49605 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1049113 () Bool)

(assert (=> start!130570 (=> (not res!1049113) (not e!853541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130570 (= res!1049113 (validMask!0 mask!2512))))

(assert (=> start!130570 e!853541))

(assert (=> start!130570 true))

(declare-fun array_inv!37999 (array!101676) Bool)

(assert (=> start!130570 (array_inv!37999 a!2804)))

(declare-fun b!1531842 () Bool)

(declare-fun res!1049114 () Bool)

(assert (=> b!1531842 (=> (not res!1049114) (not e!853541))))

(declare-datatypes ((List!35717 0))(
  ( (Nil!35714) (Cons!35713 (h!37159 (_ BitVec 64)) (t!50418 List!35717)) )
))
(declare-fun arrayNoDuplicates!0 (array!101676 (_ BitVec 32) List!35717) Bool)

(assert (=> b!1531842 (= res!1049114 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35714))))

(declare-fun b!1531843 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101676 (_ BitVec 32)) SeekEntryResult!13240)

(assert (=> b!1531843 (= e!853543 (= (seekEntry!0 (select (arr!49054 a!2804) j!70) a!2804 mask!2512) (Found!13240 j!70)))))

(assert (= (and start!130570 res!1049113) b!1531831))

(assert (= (and b!1531831 res!1049115) b!1531833))

(assert (= (and b!1531833 res!1049120) b!1531830))

(assert (= (and b!1531830 res!1049111) b!1531835))

(assert (= (and b!1531835 res!1049108) b!1531842))

(assert (= (and b!1531842 res!1049114) b!1531841))

(assert (= (and b!1531841 res!1049119) b!1531837))

(assert (= (and b!1531837 res!1049116) b!1531840))

(assert (= (and b!1531840 res!1049118) b!1531834))

(assert (= (and b!1531834 res!1049117) b!1531838))

(assert (= (and b!1531838 res!1049112) b!1531843))

(assert (= (and b!1531838 (not res!1049121)) b!1531839))

(assert (= (and b!1531839 (not res!1049109)) b!1531832))

(assert (= (and b!1531832 (not res!1049110)) b!1531836))

(declare-fun m!1414557 () Bool)

(assert (=> b!1531838 m!1414557))

(declare-fun m!1414559 () Bool)

(assert (=> b!1531838 m!1414559))

(declare-fun m!1414561 () Bool)

(assert (=> b!1531838 m!1414561))

(assert (=> b!1531836 m!1414557))

(assert (=> b!1531836 m!1414557))

(declare-fun m!1414563 () Bool)

(assert (=> b!1531836 m!1414563))

(declare-fun m!1414565 () Bool)

(assert (=> b!1531836 m!1414565))

(declare-fun m!1414567 () Bool)

(assert (=> b!1531836 m!1414567))

(declare-fun m!1414569 () Bool)

(assert (=> b!1531833 m!1414569))

(assert (=> b!1531833 m!1414569))

(declare-fun m!1414571 () Bool)

(assert (=> b!1531833 m!1414571))

(declare-fun m!1414573 () Bool)

(assert (=> b!1531834 m!1414573))

(assert (=> b!1531834 m!1414573))

(declare-fun m!1414575 () Bool)

(assert (=> b!1531834 m!1414575))

(declare-fun m!1414577 () Bool)

(assert (=> b!1531834 m!1414577))

(declare-fun m!1414579 () Bool)

(assert (=> b!1531834 m!1414579))

(declare-fun m!1414581 () Bool)

(assert (=> start!130570 m!1414581))

(declare-fun m!1414583 () Bool)

(assert (=> start!130570 m!1414583))

(assert (=> b!1531843 m!1414557))

(assert (=> b!1531843 m!1414557))

(declare-fun m!1414585 () Bool)

(assert (=> b!1531843 m!1414585))

(declare-fun m!1414587 () Bool)

(assert (=> b!1531842 m!1414587))

(assert (=> b!1531832 m!1414557))

(assert (=> b!1531832 m!1414557))

(declare-fun m!1414589 () Bool)

(assert (=> b!1531832 m!1414589))

(assert (=> b!1531840 m!1414557))

(assert (=> b!1531840 m!1414557))

(declare-fun m!1414591 () Bool)

(assert (=> b!1531840 m!1414591))

(declare-fun m!1414593 () Bool)

(assert (=> b!1531835 m!1414593))

(declare-fun m!1414595 () Bool)

(assert (=> b!1531839 m!1414595))

(assert (=> b!1531830 m!1414557))

(assert (=> b!1531830 m!1414557))

(declare-fun m!1414597 () Bool)

(assert (=> b!1531830 m!1414597))

(assert (=> b!1531837 m!1414557))

(assert (=> b!1531837 m!1414557))

(declare-fun m!1414599 () Bool)

(assert (=> b!1531837 m!1414599))

(assert (=> b!1531837 m!1414599))

(assert (=> b!1531837 m!1414557))

(declare-fun m!1414601 () Bool)

(assert (=> b!1531837 m!1414601))

(push 1)

