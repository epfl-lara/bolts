; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129250 () Bool)

(assert start!129250)

(declare-fun b!1516702 () Bool)

(declare-fun res!1036687 () Bool)

(declare-fun e!846300 () Bool)

(assert (=> b!1516702 (=> (not res!1036687) (not e!846300))))

(declare-datatypes ((array!101019 0))(
  ( (array!101020 (arr!48742 (Array (_ BitVec 32) (_ BitVec 64))) (size!49293 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101019)

(declare-datatypes ((List!35405 0))(
  ( (Nil!35402) (Cons!35401 (h!36814 (_ BitVec 64)) (t!50106 List!35405)) )
))
(declare-fun arrayNoDuplicates!0 (array!101019 (_ BitVec 32) List!35405) Bool)

(assert (=> b!1516702 (= res!1036687 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35402))))

(declare-fun b!1516703 () Bool)

(declare-fun e!846303 () Bool)

(declare-fun e!846304 () Bool)

(assert (=> b!1516703 (= e!846303 (not e!846304))))

(declare-fun res!1036689 () Bool)

(assert (=> b!1516703 (=> res!1036689 e!846304)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516703 (= res!1036689 (or (not (= (select (arr!48742 a!2804) j!70) (select (store (arr!48742 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846302 () Bool)

(assert (=> b!1516703 e!846302))

(declare-fun res!1036685 () Bool)

(assert (=> b!1516703 (=> (not res!1036685) (not e!846302))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101019 (_ BitVec 32)) Bool)

(assert (=> b!1516703 (= res!1036685 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50692 0))(
  ( (Unit!50693) )
))
(declare-fun lt!657480 () Unit!50692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50692)

(assert (=> b!1516703 (= lt!657480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516704 () Bool)

(declare-fun res!1036684 () Bool)

(assert (=> b!1516704 (=> (not res!1036684) (not e!846300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516704 (= res!1036684 (validKeyInArray!0 (select (arr!48742 a!2804) j!70)))))

(declare-fun b!1516705 () Bool)

(declare-fun res!1036682 () Bool)

(assert (=> b!1516705 (=> (not res!1036682) (not e!846300))))

(assert (=> b!1516705 (= res!1036682 (validKeyInArray!0 (select (arr!48742 a!2804) i!961)))))

(declare-fun res!1036678 () Bool)

(assert (=> start!129250 (=> (not res!1036678) (not e!846300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129250 (= res!1036678 (validMask!0 mask!2512))))

(assert (=> start!129250 e!846300))

(assert (=> start!129250 true))

(declare-fun array_inv!37687 (array!101019) Bool)

(assert (=> start!129250 (array_inv!37687 a!2804)))

(declare-fun b!1516706 () Bool)

(declare-datatypes ((SeekEntryResult!12934 0))(
  ( (MissingZero!12934 (index!54130 (_ BitVec 32))) (Found!12934 (index!54131 (_ BitVec 32))) (Intermediate!12934 (undefined!13746 Bool) (index!54132 (_ BitVec 32)) (x!135833 (_ BitVec 32))) (Undefined!12934) (MissingVacant!12934 (index!54133 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101019 (_ BitVec 32)) SeekEntryResult!12934)

(assert (=> b!1516706 (= e!846302 (= (seekEntry!0 (select (arr!48742 a!2804) j!70) a!2804 mask!2512) (Found!12934 j!70)))))

(declare-fun b!1516707 () Bool)

(declare-fun e!846305 () Bool)

(assert (=> b!1516707 (= e!846304 e!846305)))

(declare-fun res!1036679 () Bool)

(assert (=> b!1516707 (=> res!1036679 e!846305)))

(declare-fun lt!657481 () (_ BitVec 32))

(assert (=> b!1516707 (= res!1036679 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657481 #b00000000000000000000000000000000) (bvsge lt!657481 (size!49293 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516707 (= lt!657481 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516708 () Bool)

(assert (=> b!1516708 (= e!846300 e!846303)))

(declare-fun res!1036680 () Bool)

(assert (=> b!1516708 (=> (not res!1036680) (not e!846303))))

(declare-fun lt!657477 () SeekEntryResult!12934)

(declare-fun lt!657479 () SeekEntryResult!12934)

(assert (=> b!1516708 (= res!1036680 (= lt!657477 lt!657479))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516708 (= lt!657479 (Intermediate!12934 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101019 (_ BitVec 32)) SeekEntryResult!12934)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516708 (= lt!657477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48742 a!2804) j!70) mask!2512) (select (arr!48742 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516709 () Bool)

(declare-fun res!1036681 () Bool)

(assert (=> b!1516709 (=> (not res!1036681) (not e!846300))))

(assert (=> b!1516709 (= res!1036681 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49293 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49293 a!2804))))))

(declare-fun b!1516710 () Bool)

(declare-fun res!1036686 () Bool)

(assert (=> b!1516710 (=> (not res!1036686) (not e!846303))))

(assert (=> b!1516710 (= res!1036686 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48742 a!2804) j!70) a!2804 mask!2512) lt!657479))))

(declare-fun b!1516711 () Bool)

(assert (=> b!1516711 (= e!846305 true)))

(declare-fun lt!657478 () SeekEntryResult!12934)

(assert (=> b!1516711 (= lt!657478 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657481 (select (arr!48742 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516712 () Bool)

(declare-fun res!1036688 () Bool)

(assert (=> b!1516712 (=> (not res!1036688) (not e!846300))))

(assert (=> b!1516712 (= res!1036688 (and (= (size!49293 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49293 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49293 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516713 () Bool)

(declare-fun res!1036677 () Bool)

(assert (=> b!1516713 (=> (not res!1036677) (not e!846303))))

(assert (=> b!1516713 (= res!1036677 (= lt!657477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48742 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48742 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101020 (store (arr!48742 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49293 a!2804)) mask!2512)))))

(declare-fun b!1516714 () Bool)

(declare-fun res!1036683 () Bool)

(assert (=> b!1516714 (=> (not res!1036683) (not e!846300))))

(assert (=> b!1516714 (= res!1036683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129250 res!1036678) b!1516712))

(assert (= (and b!1516712 res!1036688) b!1516705))

(assert (= (and b!1516705 res!1036682) b!1516704))

(assert (= (and b!1516704 res!1036684) b!1516714))

(assert (= (and b!1516714 res!1036683) b!1516702))

(assert (= (and b!1516702 res!1036687) b!1516709))

(assert (= (and b!1516709 res!1036681) b!1516708))

(assert (= (and b!1516708 res!1036680) b!1516710))

(assert (= (and b!1516710 res!1036686) b!1516713))

(assert (= (and b!1516713 res!1036677) b!1516703))

(assert (= (and b!1516703 res!1036685) b!1516706))

(assert (= (and b!1516703 (not res!1036689)) b!1516707))

(assert (= (and b!1516707 (not res!1036679)) b!1516711))

(declare-fun m!1400031 () Bool)

(assert (=> b!1516704 m!1400031))

(assert (=> b!1516704 m!1400031))

(declare-fun m!1400033 () Bool)

(assert (=> b!1516704 m!1400033))

(declare-fun m!1400035 () Bool)

(assert (=> b!1516714 m!1400035))

(declare-fun m!1400037 () Bool)

(assert (=> start!129250 m!1400037))

(declare-fun m!1400039 () Bool)

(assert (=> start!129250 m!1400039))

(assert (=> b!1516711 m!1400031))

(assert (=> b!1516711 m!1400031))

(declare-fun m!1400041 () Bool)

(assert (=> b!1516711 m!1400041))

(declare-fun m!1400043 () Bool)

(assert (=> b!1516705 m!1400043))

(assert (=> b!1516705 m!1400043))

(declare-fun m!1400045 () Bool)

(assert (=> b!1516705 m!1400045))

(declare-fun m!1400047 () Bool)

(assert (=> b!1516702 m!1400047))

(assert (=> b!1516710 m!1400031))

(assert (=> b!1516710 m!1400031))

(declare-fun m!1400049 () Bool)

(assert (=> b!1516710 m!1400049))

(declare-fun m!1400051 () Bool)

(assert (=> b!1516707 m!1400051))

(assert (=> b!1516703 m!1400031))

(declare-fun m!1400053 () Bool)

(assert (=> b!1516703 m!1400053))

(declare-fun m!1400055 () Bool)

(assert (=> b!1516703 m!1400055))

(declare-fun m!1400057 () Bool)

(assert (=> b!1516703 m!1400057))

(declare-fun m!1400059 () Bool)

(assert (=> b!1516703 m!1400059))

(assert (=> b!1516713 m!1400055))

(assert (=> b!1516713 m!1400057))

(assert (=> b!1516713 m!1400057))

(declare-fun m!1400061 () Bool)

(assert (=> b!1516713 m!1400061))

(assert (=> b!1516713 m!1400061))

(assert (=> b!1516713 m!1400057))

(declare-fun m!1400063 () Bool)

(assert (=> b!1516713 m!1400063))

(assert (=> b!1516706 m!1400031))

(assert (=> b!1516706 m!1400031))

(declare-fun m!1400065 () Bool)

(assert (=> b!1516706 m!1400065))

(assert (=> b!1516708 m!1400031))

(assert (=> b!1516708 m!1400031))

(declare-fun m!1400067 () Bool)

(assert (=> b!1516708 m!1400067))

(assert (=> b!1516708 m!1400067))

(assert (=> b!1516708 m!1400031))

(declare-fun m!1400069 () Bool)

(assert (=> b!1516708 m!1400069))

(push 1)

