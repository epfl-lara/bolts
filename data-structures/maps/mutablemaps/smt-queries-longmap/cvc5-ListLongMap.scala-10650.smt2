; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125080 () Bool)

(assert start!125080)

(declare-fun b!1454812 () Bool)

(declare-fun res!985690 () Bool)

(declare-fun e!818719 () Bool)

(assert (=> b!1454812 (=> (not res!985690) (not e!818719))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1454812 (= res!985690 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454813 () Bool)

(declare-fun res!985684 () Bool)

(declare-fun e!818715 () Bool)

(assert (=> b!1454813 (=> (not res!985684) (not e!818715))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98445 0))(
  ( (array!98446 (arr!47506 (Array (_ BitVec 32) (_ BitVec 64))) (size!48057 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98445)

(assert (=> b!1454813 (= res!985684 (and (= (size!48057 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48057 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48057 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454814 () Bool)

(declare-fun e!818722 () Bool)

(assert (=> b!1454814 (= e!818719 (not e!818722))))

(declare-fun res!985697 () Bool)

(assert (=> b!1454814 (=> res!985697 e!818722)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1454814 (= res!985697 (or (and (= (select (arr!47506 a!2862) index!646) (select (store (arr!47506 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47506 a!2862) index!646) (select (arr!47506 a!2862) j!93))) (= (select (arr!47506 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818714 () Bool)

(assert (=> b!1454814 e!818714))

(declare-fun res!985689 () Bool)

(assert (=> b!1454814 (=> (not res!985689) (not e!818714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98445 (_ BitVec 32)) Bool)

(assert (=> b!1454814 (= res!985689 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49006 0))(
  ( (Unit!49007) )
))
(declare-fun lt!637698 () Unit!49006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98445 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49006)

(assert (=> b!1454814 (= lt!637698 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454815 () Bool)

(declare-fun res!985699 () Bool)

(assert (=> b!1454815 (=> (not res!985699) (not e!818715))))

(assert (=> b!1454815 (= res!985699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454816 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1454816 (= e!818714 (and (or (= (select (arr!47506 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47506 a!2862) intermediateBeforeIndex!19) (select (arr!47506 a!2862) j!93))) (let ((bdg!53107 (select (store (arr!47506 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47506 a!2862) index!646) bdg!53107) (= (select (arr!47506 a!2862) index!646) (select (arr!47506 a!2862) j!93))) (= (select (arr!47506 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53107 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454817 () Bool)

(declare-fun e!818720 () Bool)

(assert (=> b!1454817 (= e!818715 e!818720)))

(declare-fun res!985701 () Bool)

(assert (=> b!1454817 (=> (not res!985701) (not e!818720))))

(assert (=> b!1454817 (= res!985701 (= (select (store (arr!47506 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637692 () array!98445)

(assert (=> b!1454817 (= lt!637692 (array!98446 (store (arr!47506 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48057 a!2862)))))

(declare-fun b!1454818 () Bool)

(declare-fun e!818718 () Bool)

(assert (=> b!1454818 (= e!818722 e!818718)))

(declare-fun res!985695 () Bool)

(assert (=> b!1454818 (=> res!985695 e!818718)))

(declare-fun lt!637695 () (_ BitVec 32))

(assert (=> b!1454818 (= res!985695 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637695 #b00000000000000000000000000000000) (bvsge lt!637695 (size!48057 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454818 (= lt!637695 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637696 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11781 0))(
  ( (MissingZero!11781 (index!49515 (_ BitVec 32))) (Found!11781 (index!49516 (_ BitVec 32))) (Intermediate!11781 (undefined!12593 Bool) (index!49517 (_ BitVec 32)) (x!131153 (_ BitVec 32))) (Undefined!11781) (MissingVacant!11781 (index!49518 (_ BitVec 32))) )
))
(declare-fun lt!637699 () SeekEntryResult!11781)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98445 (_ BitVec 32)) SeekEntryResult!11781)

(assert (=> b!1454818 (= lt!637699 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637696 lt!637692 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98445 (_ BitVec 32)) SeekEntryResult!11781)

(assert (=> b!1454818 (= lt!637699 (seekEntryOrOpen!0 lt!637696 lt!637692 mask!2687))))

(declare-fun b!1454819 () Bool)

(declare-fun e!818721 () Bool)

(assert (=> b!1454819 (= e!818721 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637696 lt!637692 mask!2687) (seekEntryOrOpen!0 lt!637696 lt!637692 mask!2687)))))

(declare-fun b!1454820 () Bool)

(declare-fun e!818723 () Bool)

(assert (=> b!1454820 (= e!818723 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637695 intermediateAfterIndex!19 lt!637696 lt!637692 mask!2687) lt!637699)))))

(declare-fun b!1454821 () Bool)

(declare-fun res!985692 () Bool)

(assert (=> b!1454821 (=> (not res!985692) (not e!818715))))

(assert (=> b!1454821 (= res!985692 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48057 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48057 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48057 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454822 () Bool)

(declare-fun res!985691 () Bool)

(assert (=> b!1454822 (=> (not res!985691) (not e!818719))))

(assert (=> b!1454822 (= res!985691 e!818721)))

(declare-fun c!134078 () Bool)

(assert (=> b!1454822 (= c!134078 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454823 () Bool)

(declare-fun res!985688 () Bool)

(assert (=> b!1454823 (=> (not res!985688) (not e!818715))))

(declare-datatypes ((List!34187 0))(
  ( (Nil!34184) (Cons!34183 (h!35533 (_ BitVec 64)) (t!48888 List!34187)) )
))
(declare-fun arrayNoDuplicates!0 (array!98445 (_ BitVec 32) List!34187) Bool)

(assert (=> b!1454823 (= res!985688 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34184))))

(declare-fun b!1454824 () Bool)

(declare-fun res!985686 () Bool)

(assert (=> b!1454824 (=> res!985686 e!818718)))

(declare-fun lt!637697 () SeekEntryResult!11781)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98445 (_ BitVec 32)) SeekEntryResult!11781)

(assert (=> b!1454824 (= res!985686 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637695 (select (arr!47506 a!2862) j!93) a!2862 mask!2687) lt!637697)))))

(declare-fun res!985693 () Bool)

(assert (=> start!125080 (=> (not res!985693) (not e!818715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125080 (= res!985693 (validMask!0 mask!2687))))

(assert (=> start!125080 e!818715))

(assert (=> start!125080 true))

(declare-fun array_inv!36451 (array!98445) Bool)

(assert (=> start!125080 (array_inv!36451 a!2862)))

(declare-fun b!1454825 () Bool)

(declare-fun e!818717 () Bool)

(assert (=> b!1454825 (= e!818720 e!818717)))

(declare-fun res!985685 () Bool)

(assert (=> b!1454825 (=> (not res!985685) (not e!818717))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454825 (= res!985685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47506 a!2862) j!93) mask!2687) (select (arr!47506 a!2862) j!93) a!2862 mask!2687) lt!637697))))

(assert (=> b!1454825 (= lt!637697 (Intermediate!11781 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454826 () Bool)

(declare-fun lt!637694 () SeekEntryResult!11781)

(assert (=> b!1454826 (= e!818721 (= lt!637694 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637696 lt!637692 mask!2687)))))

(declare-fun b!1454827 () Bool)

(declare-fun res!985700 () Bool)

(assert (=> b!1454827 (=> (not res!985700) (not e!818715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454827 (= res!985700 (validKeyInArray!0 (select (arr!47506 a!2862) i!1006)))))

(declare-fun b!1454828 () Bool)

(declare-fun res!985696 () Bool)

(assert (=> b!1454828 (=> (not res!985696) (not e!818717))))

(assert (=> b!1454828 (= res!985696 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47506 a!2862) j!93) a!2862 mask!2687) lt!637697))))

(declare-fun b!1454829 () Bool)

(declare-fun res!985694 () Bool)

(assert (=> b!1454829 (=> (not res!985694) (not e!818714))))

(assert (=> b!1454829 (= res!985694 (= (seekEntryOrOpen!0 (select (arr!47506 a!2862) j!93) a!2862 mask!2687) (Found!11781 j!93)))))

(declare-fun b!1454830 () Bool)

(assert (=> b!1454830 (= e!818717 e!818719)))

(declare-fun res!985698 () Bool)

(assert (=> b!1454830 (=> (not res!985698) (not e!818719))))

(assert (=> b!1454830 (= res!985698 (= lt!637694 (Intermediate!11781 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454830 (= lt!637694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637696 mask!2687) lt!637696 lt!637692 mask!2687))))

(assert (=> b!1454830 (= lt!637696 (select (store (arr!47506 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454831 () Bool)

(assert (=> b!1454831 (= e!818718 true)))

(declare-fun lt!637693 () Bool)

(assert (=> b!1454831 (= lt!637693 e!818723)))

(declare-fun c!134077 () Bool)

(assert (=> b!1454831 (= c!134077 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454832 () Bool)

(declare-fun res!985687 () Bool)

(assert (=> b!1454832 (=> (not res!985687) (not e!818715))))

(assert (=> b!1454832 (= res!985687 (validKeyInArray!0 (select (arr!47506 a!2862) j!93)))))

(declare-fun b!1454833 () Bool)

(assert (=> b!1454833 (= e!818723 (not (= lt!637694 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637695 lt!637696 lt!637692 mask!2687))))))

(assert (= (and start!125080 res!985693) b!1454813))

(assert (= (and b!1454813 res!985684) b!1454827))

(assert (= (and b!1454827 res!985700) b!1454832))

(assert (= (and b!1454832 res!985687) b!1454815))

(assert (= (and b!1454815 res!985699) b!1454823))

(assert (= (and b!1454823 res!985688) b!1454821))

(assert (= (and b!1454821 res!985692) b!1454817))

(assert (= (and b!1454817 res!985701) b!1454825))

(assert (= (and b!1454825 res!985685) b!1454828))

(assert (= (and b!1454828 res!985696) b!1454830))

(assert (= (and b!1454830 res!985698) b!1454822))

(assert (= (and b!1454822 c!134078) b!1454826))

(assert (= (and b!1454822 (not c!134078)) b!1454819))

(assert (= (and b!1454822 res!985691) b!1454812))

(assert (= (and b!1454812 res!985690) b!1454814))

(assert (= (and b!1454814 res!985689) b!1454829))

(assert (= (and b!1454829 res!985694) b!1454816))

(assert (= (and b!1454814 (not res!985697)) b!1454818))

(assert (= (and b!1454818 (not res!985695)) b!1454824))

(assert (= (and b!1454824 (not res!985686)) b!1454831))

(assert (= (and b!1454831 c!134077) b!1454833))

(assert (= (and b!1454831 (not c!134077)) b!1454820))

(declare-fun m!1343157 () Bool)

(assert (=> b!1454818 m!1343157))

(declare-fun m!1343159 () Bool)

(assert (=> b!1454818 m!1343159))

(declare-fun m!1343161 () Bool)

(assert (=> b!1454818 m!1343161))

(declare-fun m!1343163 () Bool)

(assert (=> b!1454829 m!1343163))

(assert (=> b!1454829 m!1343163))

(declare-fun m!1343165 () Bool)

(assert (=> b!1454829 m!1343165))

(declare-fun m!1343167 () Bool)

(assert (=> b!1454833 m!1343167))

(declare-fun m!1343169 () Bool)

(assert (=> b!1454823 m!1343169))

(declare-fun m!1343171 () Bool)

(assert (=> b!1454820 m!1343171))

(declare-fun m!1343173 () Bool)

(assert (=> b!1454814 m!1343173))

(declare-fun m!1343175 () Bool)

(assert (=> b!1454814 m!1343175))

(declare-fun m!1343177 () Bool)

(assert (=> b!1454814 m!1343177))

(declare-fun m!1343179 () Bool)

(assert (=> b!1454814 m!1343179))

(declare-fun m!1343181 () Bool)

(assert (=> b!1454814 m!1343181))

(assert (=> b!1454814 m!1343163))

(assert (=> b!1454828 m!1343163))

(assert (=> b!1454828 m!1343163))

(declare-fun m!1343183 () Bool)

(assert (=> b!1454828 m!1343183))

(declare-fun m!1343185 () Bool)

(assert (=> b!1454826 m!1343185))

(assert (=> b!1454825 m!1343163))

(assert (=> b!1454825 m!1343163))

(declare-fun m!1343187 () Bool)

(assert (=> b!1454825 m!1343187))

(assert (=> b!1454825 m!1343187))

(assert (=> b!1454825 m!1343163))

(declare-fun m!1343189 () Bool)

(assert (=> b!1454825 m!1343189))

(declare-fun m!1343191 () Bool)

(assert (=> b!1454827 m!1343191))

(assert (=> b!1454827 m!1343191))

(declare-fun m!1343193 () Bool)

(assert (=> b!1454827 m!1343193))

(assert (=> b!1454816 m!1343175))

(declare-fun m!1343195 () Bool)

(assert (=> b!1454816 m!1343195))

(assert (=> b!1454816 m!1343177))

(assert (=> b!1454816 m!1343179))

(assert (=> b!1454816 m!1343163))

(assert (=> b!1454824 m!1343163))

(assert (=> b!1454824 m!1343163))

(declare-fun m!1343197 () Bool)

(assert (=> b!1454824 m!1343197))

(assert (=> b!1454819 m!1343159))

(assert (=> b!1454819 m!1343161))

(assert (=> b!1454817 m!1343175))

(declare-fun m!1343199 () Bool)

(assert (=> b!1454817 m!1343199))

(declare-fun m!1343201 () Bool)

(assert (=> b!1454830 m!1343201))

(assert (=> b!1454830 m!1343201))

(declare-fun m!1343203 () Bool)

(assert (=> b!1454830 m!1343203))

(assert (=> b!1454830 m!1343175))

(declare-fun m!1343205 () Bool)

(assert (=> b!1454830 m!1343205))

(declare-fun m!1343207 () Bool)

(assert (=> b!1454815 m!1343207))

(assert (=> b!1454832 m!1343163))

(assert (=> b!1454832 m!1343163))

(declare-fun m!1343209 () Bool)

(assert (=> b!1454832 m!1343209))

(declare-fun m!1343211 () Bool)

(assert (=> start!125080 m!1343211))

(declare-fun m!1343213 () Bool)

(assert (=> start!125080 m!1343213))

(push 1)

