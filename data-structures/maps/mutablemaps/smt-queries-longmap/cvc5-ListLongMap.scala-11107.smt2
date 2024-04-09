; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129778 () Bool)

(assert start!129778)

(declare-fun b!1522659 () Bool)

(declare-fun res!1041714 () Bool)

(declare-fun e!849056 () Bool)

(assert (=> b!1522659 (=> (not res!1041714) (not e!849056))))

(declare-datatypes ((array!101301 0))(
  ( (array!101302 (arr!48877 (Array (_ BitVec 32) (_ BitVec 64))) (size!49428 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101301)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101301 (_ BitVec 32)) Bool)

(assert (=> b!1522659 (= res!1041714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1041707 () Bool)

(assert (=> start!129778 (=> (not res!1041707) (not e!849056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129778 (= res!1041707 (validMask!0 mask!2512))))

(assert (=> start!129778 e!849056))

(assert (=> start!129778 true))

(declare-fun array_inv!37822 (array!101301) Bool)

(assert (=> start!129778 (array_inv!37822 a!2804)))

(declare-fun b!1522660 () Bool)

(declare-fun res!1041706 () Bool)

(assert (=> b!1522660 (=> (not res!1041706) (not e!849056))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522660 (= res!1041706 (validKeyInArray!0 (select (arr!48877 a!2804) i!961)))))

(declare-fun b!1522661 () Bool)

(declare-fun res!1041711 () Bool)

(assert (=> b!1522661 (=> (not res!1041711) (not e!849056))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522661 (= res!1041711 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49428 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49428 a!2804))))))

(declare-fun b!1522662 () Bool)

(declare-fun e!849055 () Bool)

(assert (=> b!1522662 (= e!849056 e!849055)))

(declare-fun res!1041705 () Bool)

(assert (=> b!1522662 (=> (not res!1041705) (not e!849055))))

(declare-datatypes ((SeekEntryResult!13063 0))(
  ( (MissingZero!13063 (index!54646 (_ BitVec 32))) (Found!13063 (index!54647 (_ BitVec 32))) (Intermediate!13063 (undefined!13875 Bool) (index!54648 (_ BitVec 32)) (x!136352 (_ BitVec 32))) (Undefined!13063) (MissingVacant!13063 (index!54649 (_ BitVec 32))) )
))
(declare-fun lt!659696 () SeekEntryResult!13063)

(declare-fun lt!659697 () SeekEntryResult!13063)

(assert (=> b!1522662 (= res!1041705 (= lt!659696 lt!659697))))

(assert (=> b!1522662 (= lt!659697 (Intermediate!13063 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101301 (_ BitVec 32)) SeekEntryResult!13063)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522662 (= lt!659696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48877 a!2804) j!70) mask!2512) (select (arr!48877 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522663 () Bool)

(declare-fun res!1041709 () Bool)

(assert (=> b!1522663 (=> (not res!1041709) (not e!849055))))

(assert (=> b!1522663 (= res!1041709 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48877 a!2804) j!70) a!2804 mask!2512) lt!659697))))

(declare-fun b!1522664 () Bool)

(declare-fun res!1041713 () Bool)

(assert (=> b!1522664 (=> (not res!1041713) (not e!849056))))

(declare-datatypes ((List!35540 0))(
  ( (Nil!35537) (Cons!35536 (h!36961 (_ BitVec 64)) (t!50241 List!35540)) )
))
(declare-fun arrayNoDuplicates!0 (array!101301 (_ BitVec 32) List!35540) Bool)

(assert (=> b!1522664 (= res!1041713 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35537))))

(declare-fun b!1522665 () Bool)

(declare-fun res!1041712 () Bool)

(assert (=> b!1522665 (=> (not res!1041712) (not e!849056))))

(assert (=> b!1522665 (= res!1041712 (and (= (size!49428 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49428 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49428 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522666 () Bool)

(declare-fun res!1041708 () Bool)

(assert (=> b!1522666 (=> (not res!1041708) (not e!849056))))

(assert (=> b!1522666 (= res!1041708 (validKeyInArray!0 (select (arr!48877 a!2804) j!70)))))

(declare-fun e!849053 () Bool)

(declare-fun b!1522667 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101301 (_ BitVec 32)) SeekEntryResult!13063)

(assert (=> b!1522667 (= e!849053 (= (seekEntry!0 (select (arr!48877 a!2804) j!70) a!2804 mask!2512) (Found!13063 j!70)))))

(declare-fun b!1522668 () Bool)

(declare-fun res!1041704 () Bool)

(assert (=> b!1522668 (=> (not res!1041704) (not e!849055))))

(assert (=> b!1522668 (= res!1041704 (= lt!659696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48877 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48877 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101302 (store (arr!48877 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49428 a!2804)) mask!2512)))))

(declare-fun b!1522669 () Bool)

(assert (=> b!1522669 (= e!849055 (not true))))

(assert (=> b!1522669 e!849053))

(declare-fun res!1041710 () Bool)

(assert (=> b!1522669 (=> (not res!1041710) (not e!849053))))

(assert (=> b!1522669 (= res!1041710 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50866 0))(
  ( (Unit!50867) )
))
(declare-fun lt!659698 () Unit!50866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50866)

(assert (=> b!1522669 (= lt!659698 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129778 res!1041707) b!1522665))

(assert (= (and b!1522665 res!1041712) b!1522660))

(assert (= (and b!1522660 res!1041706) b!1522666))

(assert (= (and b!1522666 res!1041708) b!1522659))

(assert (= (and b!1522659 res!1041714) b!1522664))

(assert (= (and b!1522664 res!1041713) b!1522661))

(assert (= (and b!1522661 res!1041711) b!1522662))

(assert (= (and b!1522662 res!1041705) b!1522663))

(assert (= (and b!1522663 res!1041709) b!1522668))

(assert (= (and b!1522668 res!1041704) b!1522669))

(assert (= (and b!1522669 res!1041710) b!1522667))

(declare-fun m!1405767 () Bool)

(assert (=> start!129778 m!1405767))

(declare-fun m!1405769 () Bool)

(assert (=> start!129778 m!1405769))

(declare-fun m!1405771 () Bool)

(assert (=> b!1522663 m!1405771))

(assert (=> b!1522663 m!1405771))

(declare-fun m!1405773 () Bool)

(assert (=> b!1522663 m!1405773))

(declare-fun m!1405775 () Bool)

(assert (=> b!1522669 m!1405775))

(declare-fun m!1405777 () Bool)

(assert (=> b!1522669 m!1405777))

(assert (=> b!1522662 m!1405771))

(assert (=> b!1522662 m!1405771))

(declare-fun m!1405779 () Bool)

(assert (=> b!1522662 m!1405779))

(assert (=> b!1522662 m!1405779))

(assert (=> b!1522662 m!1405771))

(declare-fun m!1405781 () Bool)

(assert (=> b!1522662 m!1405781))

(declare-fun m!1405783 () Bool)

(assert (=> b!1522659 m!1405783))

(declare-fun m!1405785 () Bool)

(assert (=> b!1522668 m!1405785))

(declare-fun m!1405787 () Bool)

(assert (=> b!1522668 m!1405787))

(assert (=> b!1522668 m!1405787))

(declare-fun m!1405789 () Bool)

(assert (=> b!1522668 m!1405789))

(assert (=> b!1522668 m!1405789))

(assert (=> b!1522668 m!1405787))

(declare-fun m!1405791 () Bool)

(assert (=> b!1522668 m!1405791))

(assert (=> b!1522667 m!1405771))

(assert (=> b!1522667 m!1405771))

(declare-fun m!1405793 () Bool)

(assert (=> b!1522667 m!1405793))

(assert (=> b!1522666 m!1405771))

(assert (=> b!1522666 m!1405771))

(declare-fun m!1405795 () Bool)

(assert (=> b!1522666 m!1405795))

(declare-fun m!1405797 () Bool)

(assert (=> b!1522660 m!1405797))

(assert (=> b!1522660 m!1405797))

(declare-fun m!1405799 () Bool)

(assert (=> b!1522660 m!1405799))

(declare-fun m!1405801 () Bool)

(assert (=> b!1522664 m!1405801))

(push 1)

