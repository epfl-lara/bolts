; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130274 () Bool)

(assert start!130274)

(declare-fun b!1528793 () Bool)

(declare-fun e!852069 () Bool)

(declare-fun e!852071 () Bool)

(assert (=> b!1528793 (= e!852069 e!852071)))

(declare-fun res!1046649 () Bool)

(assert (=> b!1528793 (=> (not res!1046649) (not e!852071))))

(declare-datatypes ((SeekEntryResult!13182 0))(
  ( (MissingZero!13182 (index!55122 (_ BitVec 32))) (Found!13182 (index!55123 (_ BitVec 32))) (Intermediate!13182 (undefined!13994 Bool) (index!55124 (_ BitVec 32)) (x!136816 (_ BitVec 32))) (Undefined!13182) (MissingVacant!13182 (index!55125 (_ BitVec 32))) )
))
(declare-fun lt!662182 () SeekEntryResult!13182)

(declare-fun lt!662183 () SeekEntryResult!13182)

(assert (=> b!1528793 (= res!1046649 (= lt!662182 lt!662183))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528793 (= lt!662183 (Intermediate!13182 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101551 0))(
  ( (array!101552 (arr!48996 (Array (_ BitVec 32) (_ BitVec 64))) (size!49547 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101551)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101551 (_ BitVec 32)) SeekEntryResult!13182)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528793 (= lt!662182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48996 a!2804) j!70) mask!2512) (select (arr!48996 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528794 () Bool)

(declare-fun res!1046641 () Bool)

(assert (=> b!1528794 (=> (not res!1046641) (not e!852069))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1528794 (= res!1046641 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49547 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49547 a!2804))))))

(declare-fun res!1046643 () Bool)

(assert (=> start!130274 (=> (not res!1046643) (not e!852069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130274 (= res!1046643 (validMask!0 mask!2512))))

(assert (=> start!130274 e!852069))

(assert (=> start!130274 true))

(declare-fun array_inv!37941 (array!101551) Bool)

(assert (=> start!130274 (array_inv!37941 a!2804)))

(declare-fun b!1528795 () Bool)

(declare-fun e!852067 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101551 (_ BitVec 32)) SeekEntryResult!13182)

(assert (=> b!1528795 (= e!852067 (= (seekEntry!0 (select (arr!48996 a!2804) j!70) a!2804 mask!2512) (Found!13182 j!70)))))

(declare-fun b!1528796 () Bool)

(declare-fun res!1046640 () Bool)

(assert (=> b!1528796 (=> (not res!1046640) (not e!852069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101551 (_ BitVec 32)) Bool)

(assert (=> b!1528796 (= res!1046640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528797 () Bool)

(declare-fun e!852070 () Bool)

(assert (=> b!1528797 (= e!852071 (not e!852070))))

(declare-fun res!1046644 () Bool)

(assert (=> b!1528797 (=> res!1046644 e!852070)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1528797 (= res!1046644 (or (not (= (select (arr!48996 a!2804) j!70) (select (store (arr!48996 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1528797 e!852067))

(declare-fun res!1046645 () Bool)

(assert (=> b!1528797 (=> (not res!1046645) (not e!852067))))

(assert (=> b!1528797 (= res!1046645 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51104 0))(
  ( (Unit!51105) )
))
(declare-fun lt!662185 () Unit!51104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51104)

(assert (=> b!1528797 (= lt!662185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528798 () Bool)

(declare-fun res!1046642 () Bool)

(assert (=> b!1528798 (=> (not res!1046642) (not e!852069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528798 (= res!1046642 (validKeyInArray!0 (select (arr!48996 a!2804) i!961)))))

(declare-fun b!1528799 () Bool)

(assert (=> b!1528799 (= e!852070 true)))

(declare-fun lt!662184 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528799 (= lt!662184 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528800 () Bool)

(declare-fun res!1046639 () Bool)

(assert (=> b!1528800 (=> (not res!1046639) (not e!852069))))

(declare-datatypes ((List!35659 0))(
  ( (Nil!35656) (Cons!35655 (h!37092 (_ BitVec 64)) (t!50360 List!35659)) )
))
(declare-fun arrayNoDuplicates!0 (array!101551 (_ BitVec 32) List!35659) Bool)

(assert (=> b!1528800 (= res!1046639 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35656))))

(declare-fun b!1528801 () Bool)

(declare-fun res!1046646 () Bool)

(assert (=> b!1528801 (=> (not res!1046646) (not e!852071))))

(assert (=> b!1528801 (= res!1046646 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48996 a!2804) j!70) a!2804 mask!2512) lt!662183))))

(declare-fun b!1528802 () Bool)

(declare-fun res!1046648 () Bool)

(assert (=> b!1528802 (=> (not res!1046648) (not e!852069))))

(assert (=> b!1528802 (= res!1046648 (and (= (size!49547 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49547 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49547 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528803 () Bool)

(declare-fun res!1046647 () Bool)

(assert (=> b!1528803 (=> (not res!1046647) (not e!852071))))

(assert (=> b!1528803 (= res!1046647 (= lt!662182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48996 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48996 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101552 (store (arr!48996 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49547 a!2804)) mask!2512)))))

(declare-fun b!1528804 () Bool)

(declare-fun res!1046638 () Bool)

(assert (=> b!1528804 (=> (not res!1046638) (not e!852069))))

(assert (=> b!1528804 (= res!1046638 (validKeyInArray!0 (select (arr!48996 a!2804) j!70)))))

(assert (= (and start!130274 res!1046643) b!1528802))

(assert (= (and b!1528802 res!1046648) b!1528798))

(assert (= (and b!1528798 res!1046642) b!1528804))

(assert (= (and b!1528804 res!1046638) b!1528796))

(assert (= (and b!1528796 res!1046640) b!1528800))

(assert (= (and b!1528800 res!1046639) b!1528794))

(assert (= (and b!1528794 res!1046641) b!1528793))

(assert (= (and b!1528793 res!1046649) b!1528801))

(assert (= (and b!1528801 res!1046646) b!1528803))

(assert (= (and b!1528803 res!1046647) b!1528797))

(assert (= (and b!1528797 res!1046645) b!1528795))

(assert (= (and b!1528797 (not res!1046644)) b!1528799))

(declare-fun m!1411759 () Bool)

(assert (=> b!1528796 m!1411759))

(declare-fun m!1411761 () Bool)

(assert (=> b!1528798 m!1411761))

(assert (=> b!1528798 m!1411761))

(declare-fun m!1411763 () Bool)

(assert (=> b!1528798 m!1411763))

(declare-fun m!1411765 () Bool)

(assert (=> b!1528800 m!1411765))

(declare-fun m!1411767 () Bool)

(assert (=> b!1528799 m!1411767))

(declare-fun m!1411769 () Bool)

(assert (=> b!1528797 m!1411769))

(declare-fun m!1411771 () Bool)

(assert (=> b!1528797 m!1411771))

(declare-fun m!1411773 () Bool)

(assert (=> b!1528797 m!1411773))

(declare-fun m!1411775 () Bool)

(assert (=> b!1528797 m!1411775))

(declare-fun m!1411777 () Bool)

(assert (=> b!1528797 m!1411777))

(assert (=> b!1528803 m!1411773))

(assert (=> b!1528803 m!1411775))

(assert (=> b!1528803 m!1411775))

(declare-fun m!1411779 () Bool)

(assert (=> b!1528803 m!1411779))

(assert (=> b!1528803 m!1411779))

(assert (=> b!1528803 m!1411775))

(declare-fun m!1411781 () Bool)

(assert (=> b!1528803 m!1411781))

(assert (=> b!1528801 m!1411769))

(assert (=> b!1528801 m!1411769))

(declare-fun m!1411783 () Bool)

(assert (=> b!1528801 m!1411783))

(assert (=> b!1528793 m!1411769))

(assert (=> b!1528793 m!1411769))

(declare-fun m!1411785 () Bool)

(assert (=> b!1528793 m!1411785))

(assert (=> b!1528793 m!1411785))

(assert (=> b!1528793 m!1411769))

(declare-fun m!1411787 () Bool)

(assert (=> b!1528793 m!1411787))

(assert (=> b!1528795 m!1411769))

(assert (=> b!1528795 m!1411769))

(declare-fun m!1411789 () Bool)

(assert (=> b!1528795 m!1411789))

(assert (=> b!1528804 m!1411769))

(assert (=> b!1528804 m!1411769))

(declare-fun m!1411791 () Bool)

(assert (=> b!1528804 m!1411791))

(declare-fun m!1411793 () Bool)

(assert (=> start!130274 m!1411793))

(declare-fun m!1411795 () Bool)

(assert (=> start!130274 m!1411795))

(push 1)

