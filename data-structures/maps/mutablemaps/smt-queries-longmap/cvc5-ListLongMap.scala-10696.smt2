; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125356 () Bool)

(assert start!125356)

(declare-fun b!1463749 () Bool)

(declare-fun e!822689 () Bool)

(assert (=> b!1463749 (= e!822689 true)))

(declare-fun lt!640832 () Bool)

(declare-fun e!822684 () Bool)

(assert (=> b!1463749 (= lt!640832 e!822684)))

(declare-fun c!134870 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1463749 (= c!134870 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463750 () Bool)

(declare-fun res!993042 () Bool)

(declare-fun e!822692 () Bool)

(assert (=> b!1463750 (=> (not res!993042) (not e!822692))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11919 0))(
  ( (MissingZero!11919 (index!50067 (_ BitVec 32))) (Found!11919 (index!50068 (_ BitVec 32))) (Intermediate!11919 (undefined!12731 Bool) (index!50069 (_ BitVec 32)) (x!131659 (_ BitVec 32))) (Undefined!11919) (MissingVacant!11919 (index!50070 (_ BitVec 32))) )
))
(declare-fun lt!640836 () SeekEntryResult!11919)

(declare-datatypes ((array!98721 0))(
  ( (array!98722 (arr!47644 (Array (_ BitVec 32) (_ BitVec 64))) (size!48195 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98721)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98721 (_ BitVec 32)) SeekEntryResult!11919)

(assert (=> b!1463750 (= res!993042 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47644 a!2862) j!93) a!2862 mask!2687) lt!640836))))

(declare-fun b!1463751 () Bool)

(declare-fun res!993047 () Bool)

(declare-fun e!822685 () Bool)

(assert (=> b!1463751 (=> (not res!993047) (not e!822685))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463751 (= res!993047 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48195 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48195 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48195 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463752 () Bool)

(declare-fun res!993040 () Bool)

(assert (=> b!1463752 (=> (not res!993040) (not e!822685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98721 (_ BitVec 32)) Bool)

(assert (=> b!1463752 (= res!993040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463753 () Bool)

(declare-fun e!822690 () Bool)

(assert (=> b!1463753 (= e!822685 e!822690)))

(declare-fun res!993037 () Bool)

(assert (=> b!1463753 (=> (not res!993037) (not e!822690))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463753 (= res!993037 (= (select (store (arr!47644 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640834 () array!98721)

(assert (=> b!1463753 (= lt!640834 (array!98722 (store (arr!47644 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48195 a!2862)))))

(declare-fun b!1463754 () Bool)

(declare-fun e!822691 () Bool)

(assert (=> b!1463754 (= e!822691 (or (= (select (arr!47644 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47644 a!2862) intermediateBeforeIndex!19) (select (arr!47644 a!2862) j!93))))))

(declare-fun b!1463756 () Bool)

(declare-fun res!993041 () Bool)

(assert (=> b!1463756 (=> (not res!993041) (not e!822685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463756 (= res!993041 (validKeyInArray!0 (select (arr!47644 a!2862) j!93)))))

(declare-fun b!1463757 () Bool)

(declare-fun res!993053 () Bool)

(assert (=> b!1463757 (=> (not res!993053) (not e!822691))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98721 (_ BitVec 32)) SeekEntryResult!11919)

(assert (=> b!1463757 (= res!993053 (= (seekEntryOrOpen!0 (select (arr!47644 a!2862) j!93) a!2862 mask!2687) (Found!11919 j!93)))))

(declare-fun b!1463758 () Bool)

(declare-fun res!993039 () Bool)

(declare-fun e!822686 () Bool)

(assert (=> b!1463758 (=> (not res!993039) (not e!822686))))

(assert (=> b!1463758 (= res!993039 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463759 () Bool)

(declare-fun e!822688 () Bool)

(assert (=> b!1463759 (= e!822688 e!822689)))

(declare-fun res!993048 () Bool)

(assert (=> b!1463759 (=> res!993048 e!822689)))

(declare-fun lt!640831 () (_ BitVec 32))

(assert (=> b!1463759 (= res!993048 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640831 #b00000000000000000000000000000000) (bvsge lt!640831 (size!48195 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463759 (= lt!640831 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463760 () Bool)

(assert (=> b!1463760 (= e!822686 (not e!822688))))

(declare-fun res!993046 () Bool)

(assert (=> b!1463760 (=> res!993046 e!822688)))

(assert (=> b!1463760 (= res!993046 (or (and (= (select (arr!47644 a!2862) index!646) (select (store (arr!47644 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47644 a!2862) index!646) (select (arr!47644 a!2862) j!93))) (= (select (arr!47644 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463760 e!822691))

(declare-fun res!993049 () Bool)

(assert (=> b!1463760 (=> (not res!993049) (not e!822691))))

(assert (=> b!1463760 (= res!993049 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49282 0))(
  ( (Unit!49283) )
))
(declare-fun lt!640835 () Unit!49282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49282)

(assert (=> b!1463760 (= lt!640835 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463761 () Bool)

(declare-fun lt!640837 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98721 (_ BitVec 32)) SeekEntryResult!11919)

(assert (=> b!1463761 (= e!822684 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640831 intermediateAfterIndex!19 lt!640837 lt!640834 mask!2687) (seekEntryOrOpen!0 lt!640837 lt!640834 mask!2687))))))

(declare-fun b!1463762 () Bool)

(declare-fun lt!640833 () SeekEntryResult!11919)

(assert (=> b!1463762 (= e!822684 (not (= lt!640833 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640831 lt!640837 lt!640834 mask!2687))))))

(declare-fun b!1463763 () Bool)

(assert (=> b!1463763 (= e!822692 e!822686)))

(declare-fun res!993050 () Bool)

(assert (=> b!1463763 (=> (not res!993050) (not e!822686))))

(assert (=> b!1463763 (= res!993050 (= lt!640833 (Intermediate!11919 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463763 (= lt!640833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640837 mask!2687) lt!640837 lt!640834 mask!2687))))

(assert (=> b!1463763 (= lt!640837 (select (store (arr!47644 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463764 () Bool)

(assert (=> b!1463764 (= e!822690 e!822692)))

(declare-fun res!993038 () Bool)

(assert (=> b!1463764 (=> (not res!993038) (not e!822692))))

(assert (=> b!1463764 (= res!993038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47644 a!2862) j!93) mask!2687) (select (arr!47644 a!2862) j!93) a!2862 mask!2687) lt!640836))))

(assert (=> b!1463764 (= lt!640836 (Intermediate!11919 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463765 () Bool)

(declare-fun res!993051 () Bool)

(assert (=> b!1463765 (=> res!993051 e!822689)))

(assert (=> b!1463765 (= res!993051 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640831 (select (arr!47644 a!2862) j!93) a!2862 mask!2687) lt!640836)))))

(declare-fun b!1463766 () Bool)

(declare-fun e!822683 () Bool)

(assert (=> b!1463766 (= e!822683 (= lt!640833 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640837 lt!640834 mask!2687)))))

(declare-fun b!1463767 () Bool)

(declare-fun res!993052 () Bool)

(assert (=> b!1463767 (=> (not res!993052) (not e!822686))))

(assert (=> b!1463767 (= res!993052 e!822683)))

(declare-fun c!134869 () Bool)

(assert (=> b!1463767 (= c!134869 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463768 () Bool)

(declare-fun res!993043 () Bool)

(assert (=> b!1463768 (=> (not res!993043) (not e!822685))))

(assert (=> b!1463768 (= res!993043 (validKeyInArray!0 (select (arr!47644 a!2862) i!1006)))))

(declare-fun res!993054 () Bool)

(assert (=> start!125356 (=> (not res!993054) (not e!822685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125356 (= res!993054 (validMask!0 mask!2687))))

(assert (=> start!125356 e!822685))

(assert (=> start!125356 true))

(declare-fun array_inv!36589 (array!98721) Bool)

(assert (=> start!125356 (array_inv!36589 a!2862)))

(declare-fun b!1463755 () Bool)

(declare-fun res!993044 () Bool)

(assert (=> b!1463755 (=> (not res!993044) (not e!822685))))

(assert (=> b!1463755 (= res!993044 (and (= (size!48195 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48195 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48195 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463769 () Bool)

(assert (=> b!1463769 (= e!822683 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640837 lt!640834 mask!2687) (seekEntryOrOpen!0 lt!640837 lt!640834 mask!2687)))))

(declare-fun b!1463770 () Bool)

(declare-fun res!993045 () Bool)

(assert (=> b!1463770 (=> (not res!993045) (not e!822685))))

(declare-datatypes ((List!34325 0))(
  ( (Nil!34322) (Cons!34321 (h!35671 (_ BitVec 64)) (t!49026 List!34325)) )
))
(declare-fun arrayNoDuplicates!0 (array!98721 (_ BitVec 32) List!34325) Bool)

(assert (=> b!1463770 (= res!993045 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34322))))

(assert (= (and start!125356 res!993054) b!1463755))

(assert (= (and b!1463755 res!993044) b!1463768))

(assert (= (and b!1463768 res!993043) b!1463756))

(assert (= (and b!1463756 res!993041) b!1463752))

(assert (= (and b!1463752 res!993040) b!1463770))

(assert (= (and b!1463770 res!993045) b!1463751))

(assert (= (and b!1463751 res!993047) b!1463753))

(assert (= (and b!1463753 res!993037) b!1463764))

(assert (= (and b!1463764 res!993038) b!1463750))

(assert (= (and b!1463750 res!993042) b!1463763))

(assert (= (and b!1463763 res!993050) b!1463767))

(assert (= (and b!1463767 c!134869) b!1463766))

(assert (= (and b!1463767 (not c!134869)) b!1463769))

(assert (= (and b!1463767 res!993052) b!1463758))

(assert (= (and b!1463758 res!993039) b!1463760))

(assert (= (and b!1463760 res!993049) b!1463757))

(assert (= (and b!1463757 res!993053) b!1463754))

(assert (= (and b!1463760 (not res!993046)) b!1463759))

(assert (= (and b!1463759 (not res!993048)) b!1463765))

(assert (= (and b!1463765 (not res!993051)) b!1463749))

(assert (= (and b!1463749 c!134870) b!1463762))

(assert (= (and b!1463749 (not c!134870)) b!1463761))

(declare-fun m!1351095 () Bool)

(assert (=> b!1463760 m!1351095))

(declare-fun m!1351097 () Bool)

(assert (=> b!1463760 m!1351097))

(declare-fun m!1351099 () Bool)

(assert (=> b!1463760 m!1351099))

(declare-fun m!1351101 () Bool)

(assert (=> b!1463760 m!1351101))

(declare-fun m!1351103 () Bool)

(assert (=> b!1463760 m!1351103))

(declare-fun m!1351105 () Bool)

(assert (=> b!1463760 m!1351105))

(declare-fun m!1351107 () Bool)

(assert (=> b!1463763 m!1351107))

(assert (=> b!1463763 m!1351107))

(declare-fun m!1351109 () Bool)

(assert (=> b!1463763 m!1351109))

(assert (=> b!1463763 m!1351097))

(declare-fun m!1351111 () Bool)

(assert (=> b!1463763 m!1351111))

(declare-fun m!1351113 () Bool)

(assert (=> b!1463752 m!1351113))

(assert (=> b!1463765 m!1351105))

(assert (=> b!1463765 m!1351105))

(declare-fun m!1351115 () Bool)

(assert (=> b!1463765 m!1351115))

(assert (=> b!1463756 m!1351105))

(assert (=> b!1463756 m!1351105))

(declare-fun m!1351117 () Bool)

(assert (=> b!1463756 m!1351117))

(assert (=> b!1463764 m!1351105))

(assert (=> b!1463764 m!1351105))

(declare-fun m!1351119 () Bool)

(assert (=> b!1463764 m!1351119))

(assert (=> b!1463764 m!1351119))

(assert (=> b!1463764 m!1351105))

(declare-fun m!1351121 () Bool)

(assert (=> b!1463764 m!1351121))

(assert (=> b!1463750 m!1351105))

(assert (=> b!1463750 m!1351105))

(declare-fun m!1351123 () Bool)

(assert (=> b!1463750 m!1351123))

(declare-fun m!1351125 () Bool)

(assert (=> b!1463769 m!1351125))

(declare-fun m!1351127 () Bool)

(assert (=> b!1463769 m!1351127))

(declare-fun m!1351129 () Bool)

(assert (=> b!1463768 m!1351129))

(assert (=> b!1463768 m!1351129))

(declare-fun m!1351131 () Bool)

(assert (=> b!1463768 m!1351131))

(assert (=> b!1463753 m!1351097))

(declare-fun m!1351133 () Bool)

(assert (=> b!1463753 m!1351133))

(declare-fun m!1351135 () Bool)

(assert (=> b!1463766 m!1351135))

(declare-fun m!1351137 () Bool)

(assert (=> b!1463759 m!1351137))

(declare-fun m!1351139 () Bool)

(assert (=> b!1463761 m!1351139))

(assert (=> b!1463761 m!1351127))

(declare-fun m!1351141 () Bool)

(assert (=> b!1463770 m!1351141))

(declare-fun m!1351143 () Bool)

(assert (=> b!1463762 m!1351143))

(declare-fun m!1351145 () Bool)

(assert (=> b!1463754 m!1351145))

(assert (=> b!1463754 m!1351105))

(assert (=> b!1463757 m!1351105))

(assert (=> b!1463757 m!1351105))

(declare-fun m!1351147 () Bool)

(assert (=> b!1463757 m!1351147))

(declare-fun m!1351149 () Bool)

(assert (=> start!125356 m!1351149))

(declare-fun m!1351151 () Bool)

(assert (=> start!125356 m!1351151))

(push 1)

