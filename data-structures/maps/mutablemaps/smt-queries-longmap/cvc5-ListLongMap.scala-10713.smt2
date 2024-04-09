; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125458 () Bool)

(assert start!125458)

(declare-fun b!1467117 () Bool)

(declare-fun res!995793 () Bool)

(declare-fun e!824151 () Bool)

(assert (=> b!1467117 (=> (not res!995793) (not e!824151))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98823 0))(
  ( (array!98824 (arr!47695 (Array (_ BitVec 32) (_ BitVec 64))) (size!48246 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98823)

(assert (=> b!1467117 (= res!995793 (and (= (size!48246 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48246 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48246 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467118 () Bool)

(declare-fun res!995808 () Bool)

(declare-fun e!824152 () Bool)

(assert (=> b!1467118 (=> (not res!995808) (not e!824152))))

(declare-datatypes ((SeekEntryResult!11970 0))(
  ( (MissingZero!11970 (index!50271 (_ BitVec 32))) (Found!11970 (index!50272 (_ BitVec 32))) (Intermediate!11970 (undefined!12782 Bool) (index!50273 (_ BitVec 32)) (x!131846 (_ BitVec 32))) (Undefined!11970) (MissingVacant!11970 (index!50274 (_ BitVec 32))) )
))
(declare-fun lt!641967 () SeekEntryResult!11970)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98823 (_ BitVec 32)) SeekEntryResult!11970)

(assert (=> b!1467118 (= res!995808 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47695 a!2862) j!93) a!2862 mask!2687) lt!641967))))

(declare-fun b!1467119 () Bool)

(declare-fun res!995809 () Bool)

(assert (=> b!1467119 (=> (not res!995809) (not e!824151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467119 (= res!995809 (validKeyInArray!0 (select (arr!47695 a!2862) j!93)))))

(declare-fun b!1467120 () Bool)

(declare-fun res!995800 () Bool)

(assert (=> b!1467120 (=> (not res!995800) (not e!824151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98823 (_ BitVec 32)) Bool)

(assert (=> b!1467120 (= res!995800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467121 () Bool)

(declare-fun res!995797 () Bool)

(assert (=> b!1467121 (=> (not res!995797) (not e!824151))))

(assert (=> b!1467121 (= res!995797 (validKeyInArray!0 (select (arr!47695 a!2862) i!1006)))))

(declare-fun b!1467122 () Bool)

(declare-fun e!824159 () Bool)

(assert (=> b!1467122 (= e!824159 e!824152)))

(declare-fun res!995799 () Bool)

(assert (=> b!1467122 (=> (not res!995799) (not e!824152))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467122 (= res!995799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47695 a!2862) j!93) mask!2687) (select (arr!47695 a!2862) j!93) a!2862 mask!2687) lt!641967))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467122 (= lt!641967 (Intermediate!11970 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467123 () Bool)

(declare-fun res!995802 () Bool)

(declare-fun e!824155 () Bool)

(assert (=> b!1467123 (=> (not res!995802) (not e!824155))))

(declare-fun e!824157 () Bool)

(assert (=> b!1467123 (= res!995802 e!824157)))

(declare-fun c!135176 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1467123 (= c!135176 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1467124 () Bool)

(assert (=> b!1467124 (= e!824151 e!824159)))

(declare-fun res!995810 () Bool)

(assert (=> b!1467124 (=> (not res!995810) (not e!824159))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467124 (= res!995810 (= (select (store (arr!47695 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!641974 () array!98823)

(assert (=> b!1467124 (= lt!641974 (array!98824 (store (arr!47695 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48246 a!2862)))))

(declare-fun lt!641971 () (_ BitVec 64))

(declare-fun b!1467125 () Bool)

(declare-fun e!824153 () Bool)

(declare-fun lt!641969 () SeekEntryResult!11970)

(declare-fun lt!641973 () (_ BitVec 32))

(assert (=> b!1467125 (= e!824153 (not (= lt!641969 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641973 lt!641971 lt!641974 mask!2687))))))

(declare-fun b!1467126 () Bool)

(declare-fun res!995804 () Bool)

(assert (=> b!1467126 (=> (not res!995804) (not e!824151))))

(assert (=> b!1467126 (= res!995804 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48246 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48246 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48246 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1467127 () Bool)

(assert (=> b!1467127 (= e!824157 (= lt!641969 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641971 lt!641974 mask!2687)))))

(declare-fun b!1467128 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98823 (_ BitVec 32)) SeekEntryResult!11970)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98823 (_ BitVec 32)) SeekEntryResult!11970)

(assert (=> b!1467128 (= e!824153 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641973 intermediateAfterIndex!19 lt!641971 lt!641974 mask!2687) (seekEntryOrOpen!0 lt!641971 lt!641974 mask!2687))))))

(declare-fun b!1467129 () Bool)

(declare-fun res!995805 () Bool)

(assert (=> b!1467129 (=> (not res!995805) (not e!824151))))

(declare-datatypes ((List!34376 0))(
  ( (Nil!34373) (Cons!34372 (h!35722 (_ BitVec 64)) (t!49077 List!34376)) )
))
(declare-fun arrayNoDuplicates!0 (array!98823 (_ BitVec 32) List!34376) Bool)

(assert (=> b!1467129 (= res!995805 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34373))))

(declare-fun b!1467130 () Bool)

(declare-fun res!995807 () Bool)

(declare-fun e!824154 () Bool)

(assert (=> b!1467130 (=> res!995807 e!824154)))

(assert (=> b!1467130 (= res!995807 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1467131 () Bool)

(declare-fun res!995806 () Bool)

(assert (=> b!1467131 (=> res!995806 e!824154)))

(assert (=> b!1467131 (= res!995806 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641973 (select (arr!47695 a!2862) j!93) a!2862 mask!2687) lt!641967)))))

(declare-fun b!1467132 () Bool)

(declare-fun e!824158 () Bool)

(assert (=> b!1467132 (= e!824158 e!824154)))

(declare-fun res!995794 () Bool)

(assert (=> b!1467132 (=> res!995794 e!824154)))

(assert (=> b!1467132 (= res!995794 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641973 #b00000000000000000000000000000000) (bvsge lt!641973 (size!48246 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467132 (= lt!641973 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1467133 () Bool)

(declare-fun e!824150 () Bool)

(assert (=> b!1467133 (= e!824150 (validKeyInArray!0 lt!641971))))

(declare-fun b!1467134 () Bool)

(declare-fun res!995796 () Bool)

(assert (=> b!1467134 (=> (not res!995796) (not e!824155))))

(assert (=> b!1467134 (= res!995796 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1467135 () Bool)

(assert (=> b!1467135 (= e!824157 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641971 lt!641974 mask!2687) (seekEntryOrOpen!0 lt!641971 lt!641974 mask!2687)))))

(declare-fun b!1467136 () Bool)

(declare-fun res!995811 () Bool)

(assert (=> b!1467136 (=> res!995811 e!824154)))

(assert (=> b!1467136 (= res!995811 e!824153)))

(declare-fun c!135175 () Bool)

(assert (=> b!1467136 (= c!135175 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1467137 () Bool)

(assert (=> b!1467137 (= e!824154 e!824150)))

(declare-fun res!995801 () Bool)

(assert (=> b!1467137 (=> res!995801 e!824150)))

(assert (=> b!1467137 (= res!995801 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!641972 () SeekEntryResult!11970)

(assert (=> b!1467137 (= lt!641972 (seekEntryOrOpen!0 lt!641971 lt!641974 mask!2687))))

(declare-datatypes ((Unit!49384 0))(
  ( (Unit!49385) )
))
(declare-fun lt!641968 () Unit!49384)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49384)

(assert (=> b!1467137 (= lt!641968 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641973 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1467138 () Bool)

(assert (=> b!1467138 (= e!824152 e!824155)))

(declare-fun res!995798 () Bool)

(assert (=> b!1467138 (=> (not res!995798) (not e!824155))))

(assert (=> b!1467138 (= res!995798 (= lt!641969 (Intermediate!11970 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1467138 (= lt!641969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641971 mask!2687) lt!641971 lt!641974 mask!2687))))

(assert (=> b!1467138 (= lt!641971 (select (store (arr!47695 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1467139 () Bool)

(assert (=> b!1467139 (= e!824155 (not e!824158))))

(declare-fun res!995795 () Bool)

(assert (=> b!1467139 (=> res!995795 e!824158)))

(assert (=> b!1467139 (= res!995795 (or (and (= (select (arr!47695 a!2862) index!646) (select (store (arr!47695 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47695 a!2862) index!646) (select (arr!47695 a!2862) j!93))) (= (select (arr!47695 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1467139 (and (= lt!641972 (Found!11970 j!93)) (or (= (select (arr!47695 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47695 a!2862) intermediateBeforeIndex!19) (select (arr!47695 a!2862) j!93))))))

(assert (=> b!1467139 (= lt!641972 (seekEntryOrOpen!0 (select (arr!47695 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1467139 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641970 () Unit!49384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49384)

(assert (=> b!1467139 (= lt!641970 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!995803 () Bool)

(assert (=> start!125458 (=> (not res!995803) (not e!824151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125458 (= res!995803 (validMask!0 mask!2687))))

(assert (=> start!125458 e!824151))

(assert (=> start!125458 true))

(declare-fun array_inv!36640 (array!98823) Bool)

(assert (=> start!125458 (array_inv!36640 a!2862)))

(assert (= (and start!125458 res!995803) b!1467117))

(assert (= (and b!1467117 res!995793) b!1467121))

(assert (= (and b!1467121 res!995797) b!1467119))

(assert (= (and b!1467119 res!995809) b!1467120))

(assert (= (and b!1467120 res!995800) b!1467129))

(assert (= (and b!1467129 res!995805) b!1467126))

(assert (= (and b!1467126 res!995804) b!1467124))

(assert (= (and b!1467124 res!995810) b!1467122))

(assert (= (and b!1467122 res!995799) b!1467118))

(assert (= (and b!1467118 res!995808) b!1467138))

(assert (= (and b!1467138 res!995798) b!1467123))

(assert (= (and b!1467123 c!135176) b!1467127))

(assert (= (and b!1467123 (not c!135176)) b!1467135))

(assert (= (and b!1467123 res!995802) b!1467134))

(assert (= (and b!1467134 res!995796) b!1467139))

(assert (= (and b!1467139 (not res!995795)) b!1467132))

(assert (= (and b!1467132 (not res!995794)) b!1467131))

(assert (= (and b!1467131 (not res!995806)) b!1467136))

(assert (= (and b!1467136 c!135175) b!1467125))

(assert (= (and b!1467136 (not c!135175)) b!1467128))

(assert (= (and b!1467136 (not res!995811)) b!1467130))

(assert (= (and b!1467130 (not res!995807)) b!1467137))

(assert (= (and b!1467137 (not res!995801)) b!1467133))

(declare-fun m!1354095 () Bool)

(assert (=> b!1467135 m!1354095))

(declare-fun m!1354097 () Bool)

(assert (=> b!1467135 m!1354097))

(declare-fun m!1354099 () Bool)

(assert (=> b!1467129 m!1354099))

(declare-fun m!1354101 () Bool)

(assert (=> b!1467121 m!1354101))

(assert (=> b!1467121 m!1354101))

(declare-fun m!1354103 () Bool)

(assert (=> b!1467121 m!1354103))

(declare-fun m!1354105 () Bool)

(assert (=> b!1467128 m!1354105))

(assert (=> b!1467128 m!1354097))

(declare-fun m!1354107 () Bool)

(assert (=> b!1467122 m!1354107))

(assert (=> b!1467122 m!1354107))

(declare-fun m!1354109 () Bool)

(assert (=> b!1467122 m!1354109))

(assert (=> b!1467122 m!1354109))

(assert (=> b!1467122 m!1354107))

(declare-fun m!1354111 () Bool)

(assert (=> b!1467122 m!1354111))

(declare-fun m!1354113 () Bool)

(assert (=> b!1467139 m!1354113))

(declare-fun m!1354115 () Bool)

(assert (=> b!1467139 m!1354115))

(declare-fun m!1354117 () Bool)

(assert (=> b!1467139 m!1354117))

(declare-fun m!1354119 () Bool)

(assert (=> b!1467139 m!1354119))

(declare-fun m!1354121 () Bool)

(assert (=> b!1467139 m!1354121))

(assert (=> b!1467139 m!1354107))

(declare-fun m!1354123 () Bool)

(assert (=> b!1467139 m!1354123))

(declare-fun m!1354125 () Bool)

(assert (=> b!1467139 m!1354125))

(assert (=> b!1467139 m!1354107))

(declare-fun m!1354127 () Bool)

(assert (=> b!1467133 m!1354127))

(declare-fun m!1354129 () Bool)

(assert (=> b!1467120 m!1354129))

(declare-fun m!1354131 () Bool)

(assert (=> b!1467138 m!1354131))

(assert (=> b!1467138 m!1354131))

(declare-fun m!1354133 () Bool)

(assert (=> b!1467138 m!1354133))

(assert (=> b!1467138 m!1354115))

(declare-fun m!1354135 () Bool)

(assert (=> b!1467138 m!1354135))

(declare-fun m!1354137 () Bool)

(assert (=> b!1467132 m!1354137))

(declare-fun m!1354139 () Bool)

(assert (=> b!1467127 m!1354139))

(assert (=> b!1467119 m!1354107))

(assert (=> b!1467119 m!1354107))

(declare-fun m!1354141 () Bool)

(assert (=> b!1467119 m!1354141))

(assert (=> b!1467118 m!1354107))

(assert (=> b!1467118 m!1354107))

(declare-fun m!1354143 () Bool)

(assert (=> b!1467118 m!1354143))

(declare-fun m!1354145 () Bool)

(assert (=> start!125458 m!1354145))

(declare-fun m!1354147 () Bool)

(assert (=> start!125458 m!1354147))

(assert (=> b!1467131 m!1354107))

(assert (=> b!1467131 m!1354107))

(declare-fun m!1354149 () Bool)

(assert (=> b!1467131 m!1354149))

(assert (=> b!1467124 m!1354115))

(declare-fun m!1354151 () Bool)

(assert (=> b!1467124 m!1354151))

(declare-fun m!1354153 () Bool)

(assert (=> b!1467125 m!1354153))

(assert (=> b!1467137 m!1354097))

(declare-fun m!1354155 () Bool)

(assert (=> b!1467137 m!1354155))

(push 1)

