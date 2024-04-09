; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130328 () Bool)

(assert start!130328)

(declare-fun b!1529765 () Bool)

(declare-fun res!1047617 () Bool)

(declare-fun e!852475 () Bool)

(assert (=> b!1529765 (=> (not res!1047617) (not e!852475))))

(declare-datatypes ((SeekEntryResult!13209 0))(
  ( (MissingZero!13209 (index!55230 (_ BitVec 32))) (Found!13209 (index!55231 (_ BitVec 32))) (Intermediate!13209 (undefined!14021 Bool) (index!55232 (_ BitVec 32)) (x!136915 (_ BitVec 32))) (Undefined!13209) (MissingVacant!13209 (index!55233 (_ BitVec 32))) )
))
(declare-fun lt!662509 () SeekEntryResult!13209)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101605 0))(
  ( (array!101606 (arr!49023 (Array (_ BitVec 32) (_ BitVec 64))) (size!49574 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101605)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101605 (_ BitVec 32)) SeekEntryResult!13209)

(assert (=> b!1529765 (= res!1047617 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49023 a!2804) j!70) a!2804 mask!2512) lt!662509))))

(declare-fun b!1529766 () Bool)

(declare-fun res!1047620 () Bool)

(declare-fun e!852474 () Bool)

(assert (=> b!1529766 (=> (not res!1047620) (not e!852474))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529766 (= res!1047620 (validKeyInArray!0 (select (arr!49023 a!2804) i!961)))))

(declare-fun b!1529767 () Bool)

(declare-fun res!1047618 () Bool)

(assert (=> b!1529767 (=> (not res!1047618) (not e!852474))))

(assert (=> b!1529767 (= res!1047618 (and (= (size!49574 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49574 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49574 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529768 () Bool)

(declare-fun res!1047621 () Bool)

(assert (=> b!1529768 (=> (not res!1047621) (not e!852474))))

(declare-datatypes ((List!35686 0))(
  ( (Nil!35683) (Cons!35682 (h!37119 (_ BitVec 64)) (t!50387 List!35686)) )
))
(declare-fun arrayNoDuplicates!0 (array!101605 (_ BitVec 32) List!35686) Bool)

(assert (=> b!1529768 (= res!1047621 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35683))))

(declare-fun e!852473 () Bool)

(declare-fun b!1529769 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101605 (_ BitVec 32)) SeekEntryResult!13209)

(assert (=> b!1529769 (= e!852473 (= (seekEntry!0 (select (arr!49023 a!2804) j!70) a!2804 mask!2512) (Found!13209 j!70)))))

(declare-fun b!1529770 () Bool)

(declare-fun res!1047614 () Bool)

(assert (=> b!1529770 (=> (not res!1047614) (not e!852475))))

(declare-fun lt!662507 () SeekEntryResult!13209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529770 (= res!1047614 (= lt!662507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49023 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49023 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101606 (store (arr!49023 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49574 a!2804)) mask!2512)))))

(declare-fun b!1529771 () Bool)

(declare-fun e!852476 () Bool)

(assert (=> b!1529771 (= e!852475 (not e!852476))))

(declare-fun res!1047615 () Bool)

(assert (=> b!1529771 (=> res!1047615 e!852476)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529771 (= res!1047615 (or (not (= (select (arr!49023 a!2804) j!70) (select (store (arr!49023 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529771 e!852473))

(declare-fun res!1047619 () Bool)

(assert (=> b!1529771 (=> (not res!1047619) (not e!852473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101605 (_ BitVec 32)) Bool)

(assert (=> b!1529771 (= res!1047619 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51158 0))(
  ( (Unit!51159) )
))
(declare-fun lt!662506 () Unit!51158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51158)

(assert (=> b!1529771 (= lt!662506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529772 () Bool)

(assert (=> b!1529772 (= e!852476 true)))

(declare-fun lt!662508 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529772 (= lt!662508 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529774 () Bool)

(declare-fun res!1047616 () Bool)

(assert (=> b!1529774 (=> (not res!1047616) (not e!852474))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529774 (= res!1047616 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49574 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49574 a!2804))))))

(declare-fun b!1529775 () Bool)

(assert (=> b!1529775 (= e!852474 e!852475)))

(declare-fun res!1047613 () Bool)

(assert (=> b!1529775 (=> (not res!1047613) (not e!852475))))

(assert (=> b!1529775 (= res!1047613 (= lt!662507 lt!662509))))

(assert (=> b!1529775 (= lt!662509 (Intermediate!13209 false resIndex!21 resX!21))))

(assert (=> b!1529775 (= lt!662507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49023 a!2804) j!70) mask!2512) (select (arr!49023 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529776 () Bool)

(declare-fun res!1047612 () Bool)

(assert (=> b!1529776 (=> (not res!1047612) (not e!852474))))

(assert (=> b!1529776 (= res!1047612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529773 () Bool)

(declare-fun res!1047611 () Bool)

(assert (=> b!1529773 (=> (not res!1047611) (not e!852474))))

(assert (=> b!1529773 (= res!1047611 (validKeyInArray!0 (select (arr!49023 a!2804) j!70)))))

(declare-fun res!1047610 () Bool)

(assert (=> start!130328 (=> (not res!1047610) (not e!852474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130328 (= res!1047610 (validMask!0 mask!2512))))

(assert (=> start!130328 e!852474))

(assert (=> start!130328 true))

(declare-fun array_inv!37968 (array!101605) Bool)

(assert (=> start!130328 (array_inv!37968 a!2804)))

(assert (= (and start!130328 res!1047610) b!1529767))

(assert (= (and b!1529767 res!1047618) b!1529766))

(assert (= (and b!1529766 res!1047620) b!1529773))

(assert (= (and b!1529773 res!1047611) b!1529776))

(assert (= (and b!1529776 res!1047612) b!1529768))

(assert (= (and b!1529768 res!1047621) b!1529774))

(assert (= (and b!1529774 res!1047616) b!1529775))

(assert (= (and b!1529775 res!1047613) b!1529765))

(assert (= (and b!1529765 res!1047617) b!1529770))

(assert (= (and b!1529770 res!1047614) b!1529771))

(assert (= (and b!1529771 res!1047619) b!1529769))

(assert (= (and b!1529771 (not res!1047615)) b!1529772))

(declare-fun m!1412785 () Bool)

(assert (=> b!1529776 m!1412785))

(declare-fun m!1412787 () Bool)

(assert (=> b!1529765 m!1412787))

(assert (=> b!1529765 m!1412787))

(declare-fun m!1412789 () Bool)

(assert (=> b!1529765 m!1412789))

(declare-fun m!1412791 () Bool)

(assert (=> b!1529766 m!1412791))

(assert (=> b!1529766 m!1412791))

(declare-fun m!1412793 () Bool)

(assert (=> b!1529766 m!1412793))

(declare-fun m!1412795 () Bool)

(assert (=> b!1529772 m!1412795))

(declare-fun m!1412797 () Bool)

(assert (=> start!130328 m!1412797))

(declare-fun m!1412799 () Bool)

(assert (=> start!130328 m!1412799))

(assert (=> b!1529775 m!1412787))

(assert (=> b!1529775 m!1412787))

(declare-fun m!1412801 () Bool)

(assert (=> b!1529775 m!1412801))

(assert (=> b!1529775 m!1412801))

(assert (=> b!1529775 m!1412787))

(declare-fun m!1412803 () Bool)

(assert (=> b!1529775 m!1412803))

(assert (=> b!1529773 m!1412787))

(assert (=> b!1529773 m!1412787))

(declare-fun m!1412805 () Bool)

(assert (=> b!1529773 m!1412805))

(declare-fun m!1412807 () Bool)

(assert (=> b!1529770 m!1412807))

(declare-fun m!1412809 () Bool)

(assert (=> b!1529770 m!1412809))

(assert (=> b!1529770 m!1412809))

(declare-fun m!1412811 () Bool)

(assert (=> b!1529770 m!1412811))

(assert (=> b!1529770 m!1412811))

(assert (=> b!1529770 m!1412809))

(declare-fun m!1412813 () Bool)

(assert (=> b!1529770 m!1412813))

(assert (=> b!1529771 m!1412787))

(declare-fun m!1412815 () Bool)

(assert (=> b!1529771 m!1412815))

(assert (=> b!1529771 m!1412807))

(assert (=> b!1529771 m!1412809))

(declare-fun m!1412817 () Bool)

(assert (=> b!1529771 m!1412817))

(assert (=> b!1529769 m!1412787))

(assert (=> b!1529769 m!1412787))

(declare-fun m!1412819 () Bool)

(assert (=> b!1529769 m!1412819))

(declare-fun m!1412821 () Bool)

(assert (=> b!1529768 m!1412821))

(push 1)

