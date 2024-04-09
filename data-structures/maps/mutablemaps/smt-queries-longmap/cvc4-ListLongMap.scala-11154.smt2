; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130322 () Bool)

(assert start!130322)

(declare-fun b!1529657 () Bool)

(declare-fun res!1047513 () Bool)

(declare-fun e!852428 () Bool)

(assert (=> b!1529657 (=> (not res!1047513) (not e!852428))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101599 0))(
  ( (array!101600 (arr!49020 (Array (_ BitVec 32) (_ BitVec 64))) (size!49571 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101599)

(assert (=> b!1529657 (= res!1047513 (and (= (size!49571 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49571 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49571 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529658 () Bool)

(declare-fun e!852431 () Bool)

(assert (=> b!1529658 (= e!852428 e!852431)))

(declare-fun res!1047510 () Bool)

(assert (=> b!1529658 (=> (not res!1047510) (not e!852431))))

(declare-datatypes ((SeekEntryResult!13206 0))(
  ( (MissingZero!13206 (index!55218 (_ BitVec 32))) (Found!13206 (index!55219 (_ BitVec 32))) (Intermediate!13206 (undefined!14018 Bool) (index!55220 (_ BitVec 32)) (x!136904 (_ BitVec 32))) (Undefined!13206) (MissingVacant!13206 (index!55221 (_ BitVec 32))) )
))
(declare-fun lt!662471 () SeekEntryResult!13206)

(declare-fun lt!662473 () SeekEntryResult!13206)

(assert (=> b!1529658 (= res!1047510 (= lt!662471 lt!662473))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529658 (= lt!662473 (Intermediate!13206 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101599 (_ BitVec 32)) SeekEntryResult!13206)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529658 (= lt!662471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49020 a!2804) j!70) mask!2512) (select (arr!49020 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529659 () Bool)

(declare-fun e!852427 () Bool)

(assert (=> b!1529659 (= e!852427 true)))

(declare-fun lt!662472 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529659 (= lt!662472 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529660 () Bool)

(declare-fun res!1047508 () Bool)

(assert (=> b!1529660 (=> (not res!1047508) (not e!852428))))

(assert (=> b!1529660 (= res!1047508 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49571 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49571 a!2804))))))

(declare-fun b!1529661 () Bool)

(assert (=> b!1529661 (= e!852431 (not e!852427))))

(declare-fun res!1047507 () Bool)

(assert (=> b!1529661 (=> res!1047507 e!852427)))

(assert (=> b!1529661 (= res!1047507 (or (not (= (select (arr!49020 a!2804) j!70) (select (store (arr!49020 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852430 () Bool)

(assert (=> b!1529661 e!852430))

(declare-fun res!1047509 () Bool)

(assert (=> b!1529661 (=> (not res!1047509) (not e!852430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101599 (_ BitVec 32)) Bool)

(assert (=> b!1529661 (= res!1047509 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51152 0))(
  ( (Unit!51153) )
))
(declare-fun lt!662470 () Unit!51152)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51152)

(assert (=> b!1529661 (= lt!662470 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529662 () Bool)

(declare-fun res!1047512 () Bool)

(assert (=> b!1529662 (=> (not res!1047512) (not e!852428))))

(assert (=> b!1529662 (= res!1047512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529663 () Bool)

(declare-fun res!1047505 () Bool)

(assert (=> b!1529663 (=> (not res!1047505) (not e!852431))))

(assert (=> b!1529663 (= res!1047505 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49020 a!2804) j!70) a!2804 mask!2512) lt!662473))))

(declare-fun b!1529665 () Bool)

(declare-fun res!1047511 () Bool)

(assert (=> b!1529665 (=> (not res!1047511) (not e!852431))))

(assert (=> b!1529665 (= res!1047511 (= lt!662471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49020 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49020 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101600 (store (arr!49020 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49571 a!2804)) mask!2512)))))

(declare-fun b!1529666 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101599 (_ BitVec 32)) SeekEntryResult!13206)

(assert (=> b!1529666 (= e!852430 (= (seekEntry!0 (select (arr!49020 a!2804) j!70) a!2804 mask!2512) (Found!13206 j!70)))))

(declare-fun b!1529667 () Bool)

(declare-fun res!1047506 () Bool)

(assert (=> b!1529667 (=> (not res!1047506) (not e!852428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529667 (= res!1047506 (validKeyInArray!0 (select (arr!49020 a!2804) i!961)))))

(declare-fun b!1529668 () Bool)

(declare-fun res!1047504 () Bool)

(assert (=> b!1529668 (=> (not res!1047504) (not e!852428))))

(assert (=> b!1529668 (= res!1047504 (validKeyInArray!0 (select (arr!49020 a!2804) j!70)))))

(declare-fun b!1529664 () Bool)

(declare-fun res!1047502 () Bool)

(assert (=> b!1529664 (=> (not res!1047502) (not e!852428))))

(declare-datatypes ((List!35683 0))(
  ( (Nil!35680) (Cons!35679 (h!37116 (_ BitVec 64)) (t!50384 List!35683)) )
))
(declare-fun arrayNoDuplicates!0 (array!101599 (_ BitVec 32) List!35683) Bool)

(assert (=> b!1529664 (= res!1047502 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35680))))

(declare-fun res!1047503 () Bool)

(assert (=> start!130322 (=> (not res!1047503) (not e!852428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130322 (= res!1047503 (validMask!0 mask!2512))))

(assert (=> start!130322 e!852428))

(assert (=> start!130322 true))

(declare-fun array_inv!37965 (array!101599) Bool)

(assert (=> start!130322 (array_inv!37965 a!2804)))

(assert (= (and start!130322 res!1047503) b!1529657))

(assert (= (and b!1529657 res!1047513) b!1529667))

(assert (= (and b!1529667 res!1047506) b!1529668))

(assert (= (and b!1529668 res!1047504) b!1529662))

(assert (= (and b!1529662 res!1047512) b!1529664))

(assert (= (and b!1529664 res!1047502) b!1529660))

(assert (= (and b!1529660 res!1047508) b!1529658))

(assert (= (and b!1529658 res!1047510) b!1529663))

(assert (= (and b!1529663 res!1047505) b!1529665))

(assert (= (and b!1529665 res!1047511) b!1529661))

(assert (= (and b!1529661 res!1047509) b!1529666))

(assert (= (and b!1529661 (not res!1047507)) b!1529659))

(declare-fun m!1412671 () Bool)

(assert (=> b!1529658 m!1412671))

(assert (=> b!1529658 m!1412671))

(declare-fun m!1412673 () Bool)

(assert (=> b!1529658 m!1412673))

(assert (=> b!1529658 m!1412673))

(assert (=> b!1529658 m!1412671))

(declare-fun m!1412675 () Bool)

(assert (=> b!1529658 m!1412675))

(declare-fun m!1412677 () Bool)

(assert (=> b!1529664 m!1412677))

(declare-fun m!1412679 () Bool)

(assert (=> b!1529662 m!1412679))

(assert (=> b!1529663 m!1412671))

(assert (=> b!1529663 m!1412671))

(declare-fun m!1412681 () Bool)

(assert (=> b!1529663 m!1412681))

(assert (=> b!1529661 m!1412671))

(declare-fun m!1412683 () Bool)

(assert (=> b!1529661 m!1412683))

(declare-fun m!1412685 () Bool)

(assert (=> b!1529661 m!1412685))

(declare-fun m!1412687 () Bool)

(assert (=> b!1529661 m!1412687))

(declare-fun m!1412689 () Bool)

(assert (=> b!1529661 m!1412689))

(declare-fun m!1412691 () Bool)

(assert (=> b!1529667 m!1412691))

(assert (=> b!1529667 m!1412691))

(declare-fun m!1412693 () Bool)

(assert (=> b!1529667 m!1412693))

(assert (=> b!1529668 m!1412671))

(assert (=> b!1529668 m!1412671))

(declare-fun m!1412695 () Bool)

(assert (=> b!1529668 m!1412695))

(assert (=> b!1529666 m!1412671))

(assert (=> b!1529666 m!1412671))

(declare-fun m!1412697 () Bool)

(assert (=> b!1529666 m!1412697))

(declare-fun m!1412699 () Bool)

(assert (=> start!130322 m!1412699))

(declare-fun m!1412701 () Bool)

(assert (=> start!130322 m!1412701))

(assert (=> b!1529665 m!1412685))

(assert (=> b!1529665 m!1412687))

(assert (=> b!1529665 m!1412687))

(declare-fun m!1412703 () Bool)

(assert (=> b!1529665 m!1412703))

(assert (=> b!1529665 m!1412703))

(assert (=> b!1529665 m!1412687))

(declare-fun m!1412705 () Bool)

(assert (=> b!1529665 m!1412705))

(declare-fun m!1412707 () Bool)

(assert (=> b!1529659 m!1412707))

(push 1)

