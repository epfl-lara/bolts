; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130468 () Bool)

(assert start!130468)

(declare-fun b!1530689 () Bool)

(declare-fun res!1048177 () Bool)

(declare-fun e!852972 () Bool)

(assert (=> b!1530689 (=> (not res!1048177) (not e!852972))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101631 0))(
  ( (array!101632 (arr!49033 (Array (_ BitVec 32) (_ BitVec 64))) (size!49584 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101631)

(assert (=> b!1530689 (= res!1048177 (and (= (size!49584 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49584 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49584 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530690 () Bool)

(declare-fun res!1048173 () Bool)

(assert (=> b!1530690 (=> (not res!1048173) (not e!852972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530690 (= res!1048173 (validKeyInArray!0 (select (arr!49033 a!2804) i!961)))))

(declare-fun b!1530691 () Bool)

(declare-fun res!1048176 () Bool)

(assert (=> b!1530691 (=> (not res!1048176) (not e!852972))))

(declare-datatypes ((List!35696 0))(
  ( (Nil!35693) (Cons!35692 (h!37135 (_ BitVec 64)) (t!50397 List!35696)) )
))
(declare-fun arrayNoDuplicates!0 (array!101631 (_ BitVec 32) List!35696) Bool)

(assert (=> b!1530691 (= res!1048176 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35693))))

(declare-fun b!1530692 () Bool)

(declare-fun e!852973 () Bool)

(declare-datatypes ((SeekEntryResult!13219 0))(
  ( (MissingZero!13219 (index!55270 (_ BitVec 32))) (Found!13219 (index!55271 (_ BitVec 32))) (Intermediate!13219 (undefined!14031 Bool) (index!55272 (_ BitVec 32)) (x!136975 (_ BitVec 32))) (Undefined!13219) (MissingVacant!13219 (index!55273 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101631 (_ BitVec 32)) SeekEntryResult!13219)

(assert (=> b!1530692 (= e!852973 (= (seekEntry!0 (select (arr!49033 a!2804) j!70) a!2804 mask!2512) (Found!13219 j!70)))))

(declare-fun b!1530694 () Bool)

(declare-fun e!852974 () Bool)

(assert (=> b!1530694 (= e!852974 true)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!662914 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530694 (= lt!662914 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530695 () Bool)

(declare-fun res!1048179 () Bool)

(assert (=> b!1530695 (=> (not res!1048179) (not e!852972))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530695 (= res!1048179 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49584 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49584 a!2804))))))

(declare-fun b!1530696 () Bool)

(declare-fun e!852971 () Bool)

(assert (=> b!1530696 (= e!852972 e!852971)))

(declare-fun res!1048171 () Bool)

(assert (=> b!1530696 (=> (not res!1048171) (not e!852971))))

(declare-fun lt!662916 () SeekEntryResult!13219)

(declare-fun lt!662917 () SeekEntryResult!13219)

(assert (=> b!1530696 (= res!1048171 (= lt!662916 lt!662917))))

(assert (=> b!1530696 (= lt!662917 (Intermediate!13219 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101631 (_ BitVec 32)) SeekEntryResult!13219)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530696 (= lt!662916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49033 a!2804) j!70) mask!2512) (select (arr!49033 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530697 () Bool)

(declare-fun res!1048170 () Bool)

(assert (=> b!1530697 (=> (not res!1048170) (not e!852972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101631 (_ BitVec 32)) Bool)

(assert (=> b!1530697 (= res!1048170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530698 () Bool)

(declare-fun res!1048168 () Bool)

(assert (=> b!1530698 (=> (not res!1048168) (not e!852972))))

(assert (=> b!1530698 (= res!1048168 (validKeyInArray!0 (select (arr!49033 a!2804) j!70)))))

(declare-fun b!1530699 () Bool)

(declare-fun res!1048178 () Bool)

(assert (=> b!1530699 (=> (not res!1048178) (not e!852971))))

(assert (=> b!1530699 (= res!1048178 (= lt!662916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49033 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49033 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101632 (store (arr!49033 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49584 a!2804)) mask!2512)))))

(declare-fun b!1530700 () Bool)

(assert (=> b!1530700 (= e!852971 (not e!852974))))

(declare-fun res!1048169 () Bool)

(assert (=> b!1530700 (=> res!1048169 e!852974)))

(assert (=> b!1530700 (= res!1048169 (or (not (= (select (arr!49033 a!2804) j!70) (select (store (arr!49033 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1530700 e!852973))

(declare-fun res!1048175 () Bool)

(assert (=> b!1530700 (=> (not res!1048175) (not e!852973))))

(assert (=> b!1530700 (= res!1048175 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51178 0))(
  ( (Unit!51179) )
))
(declare-fun lt!662915 () Unit!51178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51178)

(assert (=> b!1530700 (= lt!662915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1048174 () Bool)

(assert (=> start!130468 (=> (not res!1048174) (not e!852972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130468 (= res!1048174 (validMask!0 mask!2512))))

(assert (=> start!130468 e!852972))

(assert (=> start!130468 true))

(declare-fun array_inv!37978 (array!101631) Bool)

(assert (=> start!130468 (array_inv!37978 a!2804)))

(declare-fun b!1530693 () Bool)

(declare-fun res!1048172 () Bool)

(assert (=> b!1530693 (=> (not res!1048172) (not e!852971))))

(assert (=> b!1530693 (= res!1048172 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49033 a!2804) j!70) a!2804 mask!2512) lt!662917))))

(assert (= (and start!130468 res!1048174) b!1530689))

(assert (= (and b!1530689 res!1048177) b!1530690))

(assert (= (and b!1530690 res!1048173) b!1530698))

(assert (= (and b!1530698 res!1048168) b!1530697))

(assert (= (and b!1530697 res!1048170) b!1530691))

(assert (= (and b!1530691 res!1048176) b!1530695))

(assert (= (and b!1530695 res!1048179) b!1530696))

(assert (= (and b!1530696 res!1048171) b!1530693))

(assert (= (and b!1530693 res!1048172) b!1530699))

(assert (= (and b!1530699 res!1048178) b!1530700))

(assert (= (and b!1530700 res!1048175) b!1530692))

(assert (= (and b!1530700 (not res!1048169)) b!1530694))

(declare-fun m!1413501 () Bool)

(assert (=> start!130468 m!1413501))

(declare-fun m!1413503 () Bool)

(assert (=> start!130468 m!1413503))

(declare-fun m!1413505 () Bool)

(assert (=> b!1530700 m!1413505))

(declare-fun m!1413507 () Bool)

(assert (=> b!1530700 m!1413507))

(declare-fun m!1413509 () Bool)

(assert (=> b!1530700 m!1413509))

(declare-fun m!1413511 () Bool)

(assert (=> b!1530700 m!1413511))

(declare-fun m!1413513 () Bool)

(assert (=> b!1530700 m!1413513))

(assert (=> b!1530698 m!1413505))

(assert (=> b!1530698 m!1413505))

(declare-fun m!1413515 () Bool)

(assert (=> b!1530698 m!1413515))

(assert (=> b!1530699 m!1413509))

(assert (=> b!1530699 m!1413511))

(assert (=> b!1530699 m!1413511))

(declare-fun m!1413517 () Bool)

(assert (=> b!1530699 m!1413517))

(assert (=> b!1530699 m!1413517))

(assert (=> b!1530699 m!1413511))

(declare-fun m!1413519 () Bool)

(assert (=> b!1530699 m!1413519))

(assert (=> b!1530696 m!1413505))

(assert (=> b!1530696 m!1413505))

(declare-fun m!1413521 () Bool)

(assert (=> b!1530696 m!1413521))

(assert (=> b!1530696 m!1413521))

(assert (=> b!1530696 m!1413505))

(declare-fun m!1413523 () Bool)

(assert (=> b!1530696 m!1413523))

(assert (=> b!1530693 m!1413505))

(assert (=> b!1530693 m!1413505))

(declare-fun m!1413525 () Bool)

(assert (=> b!1530693 m!1413525))

(declare-fun m!1413527 () Bool)

(assert (=> b!1530691 m!1413527))

(declare-fun m!1413529 () Bool)

(assert (=> b!1530694 m!1413529))

(declare-fun m!1413531 () Bool)

(assert (=> b!1530690 m!1413531))

(assert (=> b!1530690 m!1413531))

(declare-fun m!1413533 () Bool)

(assert (=> b!1530690 m!1413533))

(assert (=> b!1530692 m!1413505))

(assert (=> b!1530692 m!1413505))

(declare-fun m!1413535 () Bool)

(assert (=> b!1530692 m!1413535))

(declare-fun m!1413537 () Bool)

(assert (=> b!1530697 m!1413537))

(push 1)

