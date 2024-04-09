; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130478 () Bool)

(assert start!130478)

(declare-fun b!1530869 () Bool)

(declare-fun res!1048358 () Bool)

(declare-fun e!853047 () Bool)

(assert (=> b!1530869 (=> (not res!1048358) (not e!853047))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101641 0))(
  ( (array!101642 (arr!49038 (Array (_ BitVec 32) (_ BitVec 64))) (size!49589 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101641)

(assert (=> b!1530869 (= res!1048358 (and (= (size!49589 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49589 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49589 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530870 () Bool)

(declare-fun res!1048359 () Bool)

(assert (=> b!1530870 (=> (not res!1048359) (not e!853047))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530870 (= res!1048359 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49589 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49589 a!2804))))))

(declare-fun b!1530872 () Bool)

(declare-fun res!1048349 () Bool)

(assert (=> b!1530872 (=> (not res!1048349) (not e!853047))))

(declare-datatypes ((List!35701 0))(
  ( (Nil!35698) (Cons!35697 (h!37140 (_ BitVec 64)) (t!50402 List!35701)) )
))
(declare-fun arrayNoDuplicates!0 (array!101641 (_ BitVec 32) List!35701) Bool)

(assert (=> b!1530872 (= res!1048349 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35698))))

(declare-fun b!1530873 () Bool)

(declare-fun e!853049 () Bool)

(declare-fun e!853045 () Bool)

(assert (=> b!1530873 (= e!853049 (not e!853045))))

(declare-fun res!1048354 () Bool)

(assert (=> b!1530873 (=> res!1048354 e!853045)))

(assert (=> b!1530873 (= res!1048354 (or (not (= (select (arr!49038 a!2804) j!70) (select (store (arr!49038 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853046 () Bool)

(assert (=> b!1530873 e!853046))

(declare-fun res!1048351 () Bool)

(assert (=> b!1530873 (=> (not res!1048351) (not e!853046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101641 (_ BitVec 32)) Bool)

(assert (=> b!1530873 (= res!1048351 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51188 0))(
  ( (Unit!51189) )
))
(declare-fun lt!662974 () Unit!51188)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51188)

(assert (=> b!1530873 (= lt!662974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530874 () Bool)

(declare-fun res!1048353 () Bool)

(assert (=> b!1530874 (=> (not res!1048353) (not e!853049))))

(declare-datatypes ((SeekEntryResult!13224 0))(
  ( (MissingZero!13224 (index!55290 (_ BitVec 32))) (Found!13224 (index!55291 (_ BitVec 32))) (Intermediate!13224 (undefined!14036 Bool) (index!55292 (_ BitVec 32)) (x!136988 (_ BitVec 32))) (Undefined!13224) (MissingVacant!13224 (index!55293 (_ BitVec 32))) )
))
(declare-fun lt!662977 () SeekEntryResult!13224)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101641 (_ BitVec 32)) SeekEntryResult!13224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530874 (= res!1048353 (= lt!662977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49038 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49038 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101642 (store (arr!49038 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49589 a!2804)) mask!2512)))))

(declare-fun b!1530875 () Bool)

(declare-fun res!1048352 () Bool)

(assert (=> b!1530875 (=> (not res!1048352) (not e!853047))))

(assert (=> b!1530875 (= res!1048352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530871 () Bool)

(assert (=> b!1530871 (= e!853045 true)))

(declare-fun lt!662976 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530871 (= lt!662976 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1048356 () Bool)

(assert (=> start!130478 (=> (not res!1048356) (not e!853047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130478 (= res!1048356 (validMask!0 mask!2512))))

(assert (=> start!130478 e!853047))

(assert (=> start!130478 true))

(declare-fun array_inv!37983 (array!101641) Bool)

(assert (=> start!130478 (array_inv!37983 a!2804)))

(declare-fun b!1530876 () Bool)

(declare-fun res!1048350 () Bool)

(assert (=> b!1530876 (=> (not res!1048350) (not e!853047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530876 (= res!1048350 (validKeyInArray!0 (select (arr!49038 a!2804) j!70)))))

(declare-fun b!1530877 () Bool)

(declare-fun res!1048357 () Bool)

(assert (=> b!1530877 (=> (not res!1048357) (not e!853047))))

(assert (=> b!1530877 (= res!1048357 (validKeyInArray!0 (select (arr!49038 a!2804) i!961)))))

(declare-fun b!1530878 () Bool)

(declare-fun res!1048355 () Bool)

(assert (=> b!1530878 (=> (not res!1048355) (not e!853049))))

(declare-fun lt!662975 () SeekEntryResult!13224)

(assert (=> b!1530878 (= res!1048355 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49038 a!2804) j!70) a!2804 mask!2512) lt!662975))))

(declare-fun b!1530879 () Bool)

(assert (=> b!1530879 (= e!853047 e!853049)))

(declare-fun res!1048348 () Bool)

(assert (=> b!1530879 (=> (not res!1048348) (not e!853049))))

(assert (=> b!1530879 (= res!1048348 (= lt!662977 lt!662975))))

(assert (=> b!1530879 (= lt!662975 (Intermediate!13224 false resIndex!21 resX!21))))

(assert (=> b!1530879 (= lt!662977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49038 a!2804) j!70) mask!2512) (select (arr!49038 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530880 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101641 (_ BitVec 32)) SeekEntryResult!13224)

(assert (=> b!1530880 (= e!853046 (= (seekEntry!0 (select (arr!49038 a!2804) j!70) a!2804 mask!2512) (Found!13224 j!70)))))

(assert (= (and start!130478 res!1048356) b!1530869))

(assert (= (and b!1530869 res!1048358) b!1530877))

(assert (= (and b!1530877 res!1048357) b!1530876))

(assert (= (and b!1530876 res!1048350) b!1530875))

(assert (= (and b!1530875 res!1048352) b!1530872))

(assert (= (and b!1530872 res!1048349) b!1530870))

(assert (= (and b!1530870 res!1048359) b!1530879))

(assert (= (and b!1530879 res!1048348) b!1530878))

(assert (= (and b!1530878 res!1048355) b!1530874))

(assert (= (and b!1530874 res!1048353) b!1530873))

(assert (= (and b!1530873 res!1048351) b!1530880))

(assert (= (and b!1530873 (not res!1048354)) b!1530871))

(declare-fun m!1413691 () Bool)

(assert (=> b!1530880 m!1413691))

(assert (=> b!1530880 m!1413691))

(declare-fun m!1413693 () Bool)

(assert (=> b!1530880 m!1413693))

(declare-fun m!1413695 () Bool)

(assert (=> b!1530877 m!1413695))

(assert (=> b!1530877 m!1413695))

(declare-fun m!1413697 () Bool)

(assert (=> b!1530877 m!1413697))

(assert (=> b!1530879 m!1413691))

(assert (=> b!1530879 m!1413691))

(declare-fun m!1413699 () Bool)

(assert (=> b!1530879 m!1413699))

(assert (=> b!1530879 m!1413699))

(assert (=> b!1530879 m!1413691))

(declare-fun m!1413701 () Bool)

(assert (=> b!1530879 m!1413701))

(declare-fun m!1413703 () Bool)

(assert (=> start!130478 m!1413703))

(declare-fun m!1413705 () Bool)

(assert (=> start!130478 m!1413705))

(assert (=> b!1530876 m!1413691))

(assert (=> b!1530876 m!1413691))

(declare-fun m!1413707 () Bool)

(assert (=> b!1530876 m!1413707))

(declare-fun m!1413709 () Bool)

(assert (=> b!1530875 m!1413709))

(assert (=> b!1530873 m!1413691))

(declare-fun m!1413711 () Bool)

(assert (=> b!1530873 m!1413711))

(declare-fun m!1413713 () Bool)

(assert (=> b!1530873 m!1413713))

(declare-fun m!1413715 () Bool)

(assert (=> b!1530873 m!1413715))

(declare-fun m!1413717 () Bool)

(assert (=> b!1530873 m!1413717))

(assert (=> b!1530874 m!1413713))

(assert (=> b!1530874 m!1413715))

(assert (=> b!1530874 m!1413715))

(declare-fun m!1413719 () Bool)

(assert (=> b!1530874 m!1413719))

(assert (=> b!1530874 m!1413719))

(assert (=> b!1530874 m!1413715))

(declare-fun m!1413721 () Bool)

(assert (=> b!1530874 m!1413721))

(declare-fun m!1413723 () Bool)

(assert (=> b!1530871 m!1413723))

(assert (=> b!1530878 m!1413691))

(assert (=> b!1530878 m!1413691))

(declare-fun m!1413725 () Bool)

(assert (=> b!1530878 m!1413725))

(declare-fun m!1413727 () Bool)

(assert (=> b!1530872 m!1413727))

(push 1)

