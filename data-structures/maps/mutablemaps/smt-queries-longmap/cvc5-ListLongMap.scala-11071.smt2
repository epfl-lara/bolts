; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129304 () Bool)

(assert start!129304)

(declare-fun b!1517755 () Bool)

(declare-fun res!1037730 () Bool)

(declare-fun e!846789 () Bool)

(assert (=> b!1517755 (=> (not res!1037730) (not e!846789))))

(declare-datatypes ((array!101073 0))(
  ( (array!101074 (arr!48769 (Array (_ BitVec 32) (_ BitVec 64))) (size!49320 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101073)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517755 (= res!1037730 (validKeyInArray!0 (select (arr!48769 a!2804) j!70)))))

(declare-fun b!1517756 () Bool)

(declare-fun e!846786 () Bool)

(declare-fun e!846791 () Bool)

(assert (=> b!1517756 (= e!846786 e!846791)))

(declare-fun res!1037740 () Bool)

(assert (=> b!1517756 (=> res!1037740 e!846791)))

(declare-fun lt!657885 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517756 (= res!1037740 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657885 #b00000000000000000000000000000000) (bvsge lt!657885 (size!49320 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517756 (= lt!657885 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517758 () Bool)

(declare-fun e!846788 () Bool)

(assert (=> b!1517758 (= e!846789 e!846788)))

(declare-fun res!1037742 () Bool)

(assert (=> b!1517758 (=> (not res!1037742) (not e!846788))))

(declare-datatypes ((SeekEntryResult!12961 0))(
  ( (MissingZero!12961 (index!54238 (_ BitVec 32))) (Found!12961 (index!54239 (_ BitVec 32))) (Intermediate!12961 (undefined!13773 Bool) (index!54240 (_ BitVec 32)) (x!135932 (_ BitVec 32))) (Undefined!12961) (MissingVacant!12961 (index!54241 (_ BitVec 32))) )
))
(declare-fun lt!657884 () SeekEntryResult!12961)

(declare-fun lt!657883 () SeekEntryResult!12961)

(assert (=> b!1517758 (= res!1037742 (= lt!657884 lt!657883))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517758 (= lt!657883 (Intermediate!12961 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101073 (_ BitVec 32)) SeekEntryResult!12961)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517758 (= lt!657884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48769 a!2804) j!70) mask!2512) (select (arr!48769 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517759 () Bool)

(assert (=> b!1517759 (= e!846788 (not e!846786))))

(declare-fun res!1037736 () Bool)

(assert (=> b!1517759 (=> res!1037736 e!846786)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517759 (= res!1037736 (or (not (= (select (arr!48769 a!2804) j!70) (select (store (arr!48769 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846787 () Bool)

(assert (=> b!1517759 e!846787))

(declare-fun res!1037733 () Bool)

(assert (=> b!1517759 (=> (not res!1037733) (not e!846787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101073 (_ BitVec 32)) Bool)

(assert (=> b!1517759 (= res!1037733 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50746 0))(
  ( (Unit!50747) )
))
(declare-fun lt!657882 () Unit!50746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50746)

(assert (=> b!1517759 (= lt!657882 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517760 () Bool)

(declare-fun res!1037734 () Bool)

(assert (=> b!1517760 (=> (not res!1037734) (not e!846789))))

(assert (=> b!1517760 (= res!1037734 (validKeyInArray!0 (select (arr!48769 a!2804) i!961)))))

(declare-fun b!1517761 () Bool)

(declare-fun res!1037737 () Bool)

(assert (=> b!1517761 (=> (not res!1037737) (not e!846789))))

(assert (=> b!1517761 (= res!1037737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517762 () Bool)

(declare-fun res!1037741 () Bool)

(assert (=> b!1517762 (=> (not res!1037741) (not e!846788))))

(assert (=> b!1517762 (= res!1037741 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48769 a!2804) j!70) a!2804 mask!2512) lt!657883))))

(declare-fun b!1517763 () Bool)

(assert (=> b!1517763 (= e!846791 true)))

(declare-fun lt!657886 () SeekEntryResult!12961)

(assert (=> b!1517763 (= lt!657886 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657885 (select (arr!48769 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517764 () Bool)

(declare-fun res!1037739 () Bool)

(assert (=> b!1517764 (=> (not res!1037739) (not e!846789))))

(assert (=> b!1517764 (= res!1037739 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49320 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49320 a!2804))))))

(declare-fun b!1517765 () Bool)

(declare-fun res!1037738 () Bool)

(assert (=> b!1517765 (=> (not res!1037738) (not e!846789))))

(assert (=> b!1517765 (= res!1037738 (and (= (size!49320 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49320 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49320 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1037731 () Bool)

(assert (=> start!129304 (=> (not res!1037731) (not e!846789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129304 (= res!1037731 (validMask!0 mask!2512))))

(assert (=> start!129304 e!846789))

(assert (=> start!129304 true))

(declare-fun array_inv!37714 (array!101073) Bool)

(assert (=> start!129304 (array_inv!37714 a!2804)))

(declare-fun b!1517757 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101073 (_ BitVec 32)) SeekEntryResult!12961)

(assert (=> b!1517757 (= e!846787 (= (seekEntry!0 (select (arr!48769 a!2804) j!70) a!2804 mask!2512) (Found!12961 j!70)))))

(declare-fun b!1517766 () Bool)

(declare-fun res!1037732 () Bool)

(assert (=> b!1517766 (=> (not res!1037732) (not e!846788))))

(assert (=> b!1517766 (= res!1037732 (= lt!657884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48769 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48769 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101074 (store (arr!48769 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49320 a!2804)) mask!2512)))))

(declare-fun b!1517767 () Bool)

(declare-fun res!1037735 () Bool)

(assert (=> b!1517767 (=> (not res!1037735) (not e!846789))))

(declare-datatypes ((List!35432 0))(
  ( (Nil!35429) (Cons!35428 (h!36841 (_ BitVec 64)) (t!50133 List!35432)) )
))
(declare-fun arrayNoDuplicates!0 (array!101073 (_ BitVec 32) List!35432) Bool)

(assert (=> b!1517767 (= res!1037735 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35429))))

(assert (= (and start!129304 res!1037731) b!1517765))

(assert (= (and b!1517765 res!1037738) b!1517760))

(assert (= (and b!1517760 res!1037734) b!1517755))

(assert (= (and b!1517755 res!1037730) b!1517761))

(assert (= (and b!1517761 res!1037737) b!1517767))

(assert (= (and b!1517767 res!1037735) b!1517764))

(assert (= (and b!1517764 res!1037739) b!1517758))

(assert (= (and b!1517758 res!1037742) b!1517762))

(assert (= (and b!1517762 res!1037741) b!1517766))

(assert (= (and b!1517766 res!1037732) b!1517759))

(assert (= (and b!1517759 res!1037733) b!1517757))

(assert (= (and b!1517759 (not res!1037736)) b!1517756))

(assert (= (and b!1517756 (not res!1037740)) b!1517763))

(declare-fun m!1401111 () Bool)

(assert (=> b!1517755 m!1401111))

(assert (=> b!1517755 m!1401111))

(declare-fun m!1401113 () Bool)

(assert (=> b!1517755 m!1401113))

(assert (=> b!1517758 m!1401111))

(assert (=> b!1517758 m!1401111))

(declare-fun m!1401115 () Bool)

(assert (=> b!1517758 m!1401115))

(assert (=> b!1517758 m!1401115))

(assert (=> b!1517758 m!1401111))

(declare-fun m!1401117 () Bool)

(assert (=> b!1517758 m!1401117))

(declare-fun m!1401119 () Bool)

(assert (=> b!1517756 m!1401119))

(declare-fun m!1401121 () Bool)

(assert (=> b!1517760 m!1401121))

(assert (=> b!1517760 m!1401121))

(declare-fun m!1401123 () Bool)

(assert (=> b!1517760 m!1401123))

(assert (=> b!1517757 m!1401111))

(assert (=> b!1517757 m!1401111))

(declare-fun m!1401125 () Bool)

(assert (=> b!1517757 m!1401125))

(declare-fun m!1401127 () Bool)

(assert (=> b!1517767 m!1401127))

(assert (=> b!1517759 m!1401111))

(declare-fun m!1401129 () Bool)

(assert (=> b!1517759 m!1401129))

(declare-fun m!1401131 () Bool)

(assert (=> b!1517759 m!1401131))

(declare-fun m!1401133 () Bool)

(assert (=> b!1517759 m!1401133))

(declare-fun m!1401135 () Bool)

(assert (=> b!1517759 m!1401135))

(declare-fun m!1401137 () Bool)

(assert (=> start!129304 m!1401137))

(declare-fun m!1401139 () Bool)

(assert (=> start!129304 m!1401139))

(assert (=> b!1517766 m!1401131))

(assert (=> b!1517766 m!1401133))

(assert (=> b!1517766 m!1401133))

(declare-fun m!1401141 () Bool)

(assert (=> b!1517766 m!1401141))

(assert (=> b!1517766 m!1401141))

(assert (=> b!1517766 m!1401133))

(declare-fun m!1401143 () Bool)

(assert (=> b!1517766 m!1401143))

(assert (=> b!1517763 m!1401111))

(assert (=> b!1517763 m!1401111))

(declare-fun m!1401145 () Bool)

(assert (=> b!1517763 m!1401145))

(assert (=> b!1517762 m!1401111))

(assert (=> b!1517762 m!1401111))

(declare-fun m!1401147 () Bool)

(assert (=> b!1517762 m!1401147))

(declare-fun m!1401149 () Bool)

(assert (=> b!1517761 m!1401149))

(push 1)

