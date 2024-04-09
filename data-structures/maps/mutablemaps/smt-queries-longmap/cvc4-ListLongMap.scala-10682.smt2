; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125276 () Bool)

(assert start!125276)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!821486 () Bool)

(declare-fun lt!639997 () (_ BitVec 64))

(declare-datatypes ((array!98641 0))(
  ( (array!98642 (arr!47604 (Array (_ BitVec 32) (_ BitVec 64))) (size!48155 (_ BitVec 32))) )
))
(declare-fun lt!639993 () array!98641)

(declare-fun lt!639994 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1461109 () Bool)

(declare-datatypes ((SeekEntryResult!11879 0))(
  ( (MissingZero!11879 (index!49907 (_ BitVec 32))) (Found!11879 (index!49908 (_ BitVec 32))) (Intermediate!11879 (undefined!12691 Bool) (index!49909 (_ BitVec 32)) (x!131507 (_ BitVec 32))) (Undefined!11879) (MissingVacant!11879 (index!49910 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98641 (_ BitVec 32)) SeekEntryResult!11879)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98641 (_ BitVec 32)) SeekEntryResult!11879)

(assert (=> b!1461109 (= e!821486 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639994 intermediateAfterIndex!19 lt!639997 lt!639993 mask!2687) (seekEntryOrOpen!0 lt!639997 lt!639993 mask!2687))))))

(declare-fun b!1461110 () Bool)

(declare-fun res!990879 () Bool)

(declare-fun e!821488 () Bool)

(assert (=> b!1461110 (=> (not res!990879) (not e!821488))))

(declare-fun a!2862 () array!98641)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1461110 (= res!990879 (= (seekEntryOrOpen!0 (select (arr!47604 a!2862) j!93) a!2862 mask!2687) (Found!11879 j!93)))))

(declare-fun b!1461111 () Bool)

(declare-fun e!821491 () Bool)

(declare-fun e!821484 () Bool)

(assert (=> b!1461111 (= e!821491 e!821484)))

(declare-fun res!990893 () Bool)

(assert (=> b!1461111 (=> (not res!990893) (not e!821484))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461111 (= res!990893 (= (select (store (arr!47604 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461111 (= lt!639993 (array!98642 (store (arr!47604 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48155 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1461112 () Bool)

(assert (=> b!1461112 (= e!821488 (or (= (select (arr!47604 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47604 a!2862) intermediateBeforeIndex!19) (select (arr!47604 a!2862) j!93))))))

(declare-fun b!1461113 () Bool)

(declare-fun res!990885 () Bool)

(declare-fun e!821487 () Bool)

(assert (=> b!1461113 (=> res!990885 e!821487)))

(declare-fun lt!639996 () SeekEntryResult!11879)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98641 (_ BitVec 32)) SeekEntryResult!11879)

(assert (=> b!1461113 (= res!990885 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639994 (select (arr!47604 a!2862) j!93) a!2862 mask!2687) lt!639996)))))

(declare-fun b!1461114 () Bool)

(declare-fun res!990882 () Bool)

(assert (=> b!1461114 (=> (not res!990882) (not e!821491))))

(assert (=> b!1461114 (= res!990882 (and (= (size!48155 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48155 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48155 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461115 () Bool)

(declare-fun res!990887 () Bool)

(assert (=> b!1461115 (=> (not res!990887) (not e!821491))))

(declare-datatypes ((List!34285 0))(
  ( (Nil!34282) (Cons!34281 (h!35631 (_ BitVec 64)) (t!48986 List!34285)) )
))
(declare-fun arrayNoDuplicates!0 (array!98641 (_ BitVec 32) List!34285) Bool)

(assert (=> b!1461115 (= res!990887 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34282))))

(declare-fun b!1461116 () Bool)

(declare-fun e!821489 () Bool)

(assert (=> b!1461116 (= e!821484 e!821489)))

(declare-fun res!990886 () Bool)

(assert (=> b!1461116 (=> (not res!990886) (not e!821489))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461116 (= res!990886 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47604 a!2862) j!93) mask!2687) (select (arr!47604 a!2862) j!93) a!2862 mask!2687) lt!639996))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461116 (= lt!639996 (Intermediate!11879 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461117 () Bool)

(declare-fun e!821483 () Bool)

(assert (=> b!1461117 (= e!821489 e!821483)))

(declare-fun res!990888 () Bool)

(assert (=> b!1461117 (=> (not res!990888) (not e!821483))))

(declare-fun lt!639992 () SeekEntryResult!11879)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461117 (= res!990888 (= lt!639992 (Intermediate!11879 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461117 (= lt!639992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639997 mask!2687) lt!639997 lt!639993 mask!2687))))

(assert (=> b!1461117 (= lt!639997 (select (store (arr!47604 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461118 () Bool)

(assert (=> b!1461118 (= e!821486 (not (= lt!639992 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639994 lt!639997 lt!639993 mask!2687))))))

(declare-fun b!1461119 () Bool)

(declare-fun res!990877 () Bool)

(assert (=> b!1461119 (=> (not res!990877) (not e!821489))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1461119 (= res!990877 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47604 a!2862) j!93) a!2862 mask!2687) lt!639996))))

(declare-fun b!1461120 () Bool)

(declare-fun res!990891 () Bool)

(assert (=> b!1461120 (=> (not res!990891) (not e!821491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98641 (_ BitVec 32)) Bool)

(assert (=> b!1461120 (= res!990891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461121 () Bool)

(declare-fun e!821490 () Bool)

(assert (=> b!1461121 (= e!821490 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639997 lt!639993 mask!2687) (seekEntryOrOpen!0 lt!639997 lt!639993 mask!2687)))))

(declare-fun b!1461122 () Bool)

(assert (=> b!1461122 (= e!821490 (= lt!639992 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639997 lt!639993 mask!2687)))))

(declare-fun b!1461123 () Bool)

(declare-fun res!990892 () Bool)

(assert (=> b!1461123 (=> (not res!990892) (not e!821483))))

(assert (=> b!1461123 (= res!990892 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461124 () Bool)

(declare-fun e!821492 () Bool)

(assert (=> b!1461124 (= e!821483 (not e!821492))))

(declare-fun res!990881 () Bool)

(assert (=> b!1461124 (=> res!990881 e!821492)))

(assert (=> b!1461124 (= res!990881 (or (and (= (select (arr!47604 a!2862) index!646) (select (store (arr!47604 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47604 a!2862) index!646) (select (arr!47604 a!2862) j!93))) (= (select (arr!47604 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461124 e!821488))

(declare-fun res!990884 () Bool)

(assert (=> b!1461124 (=> (not res!990884) (not e!821488))))

(assert (=> b!1461124 (= res!990884 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49202 0))(
  ( (Unit!49203) )
))
(declare-fun lt!639995 () Unit!49202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49202)

(assert (=> b!1461124 (= lt!639995 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!990883 () Bool)

(assert (=> start!125276 (=> (not res!990883) (not e!821491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125276 (= res!990883 (validMask!0 mask!2687))))

(assert (=> start!125276 e!821491))

(assert (=> start!125276 true))

(declare-fun array_inv!36549 (array!98641) Bool)

(assert (=> start!125276 (array_inv!36549 a!2862)))

(declare-fun b!1461125 () Bool)

(declare-fun res!990880 () Bool)

(assert (=> b!1461125 (=> (not res!990880) (not e!821483))))

(assert (=> b!1461125 (= res!990880 e!821490)))

(declare-fun c!134629 () Bool)

(assert (=> b!1461125 (= c!134629 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461126 () Bool)

(declare-fun res!990878 () Bool)

(assert (=> b!1461126 (=> (not res!990878) (not e!821491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461126 (= res!990878 (validKeyInArray!0 (select (arr!47604 a!2862) i!1006)))))

(declare-fun b!1461127 () Bool)

(declare-fun res!990890 () Bool)

(assert (=> b!1461127 (=> (not res!990890) (not e!821491))))

(assert (=> b!1461127 (= res!990890 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48155 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48155 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48155 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461128 () Bool)

(declare-fun res!990894 () Bool)

(assert (=> b!1461128 (=> (not res!990894) (not e!821491))))

(assert (=> b!1461128 (= res!990894 (validKeyInArray!0 (select (arr!47604 a!2862) j!93)))))

(declare-fun b!1461129 () Bool)

(assert (=> b!1461129 (= e!821492 e!821487)))

(declare-fun res!990889 () Bool)

(assert (=> b!1461129 (=> res!990889 e!821487)))

(assert (=> b!1461129 (= res!990889 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639994 #b00000000000000000000000000000000) (bvsge lt!639994 (size!48155 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461129 (= lt!639994 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461130 () Bool)

(assert (=> b!1461130 (= e!821487 true)))

(declare-fun lt!639991 () Bool)

(assert (=> b!1461130 (= lt!639991 e!821486)))

(declare-fun c!134630 () Bool)

(assert (=> b!1461130 (= c!134630 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125276 res!990883) b!1461114))

(assert (= (and b!1461114 res!990882) b!1461126))

(assert (= (and b!1461126 res!990878) b!1461128))

(assert (= (and b!1461128 res!990894) b!1461120))

(assert (= (and b!1461120 res!990891) b!1461115))

(assert (= (and b!1461115 res!990887) b!1461127))

(assert (= (and b!1461127 res!990890) b!1461111))

(assert (= (and b!1461111 res!990893) b!1461116))

(assert (= (and b!1461116 res!990886) b!1461119))

(assert (= (and b!1461119 res!990877) b!1461117))

(assert (= (and b!1461117 res!990888) b!1461125))

(assert (= (and b!1461125 c!134629) b!1461122))

(assert (= (and b!1461125 (not c!134629)) b!1461121))

(assert (= (and b!1461125 res!990880) b!1461123))

(assert (= (and b!1461123 res!990892) b!1461124))

(assert (= (and b!1461124 res!990884) b!1461110))

(assert (= (and b!1461110 res!990879) b!1461112))

(assert (= (and b!1461124 (not res!990881)) b!1461129))

(assert (= (and b!1461129 (not res!990889)) b!1461113))

(assert (= (and b!1461113 (not res!990885)) b!1461130))

(assert (= (and b!1461130 c!134630) b!1461118))

(assert (= (and b!1461130 (not c!134630)) b!1461109))

(declare-fun m!1348775 () Bool)

(assert (=> b!1461124 m!1348775))

(declare-fun m!1348777 () Bool)

(assert (=> b!1461124 m!1348777))

(declare-fun m!1348779 () Bool)

(assert (=> b!1461124 m!1348779))

(declare-fun m!1348781 () Bool)

(assert (=> b!1461124 m!1348781))

(declare-fun m!1348783 () Bool)

(assert (=> b!1461124 m!1348783))

(declare-fun m!1348785 () Bool)

(assert (=> b!1461124 m!1348785))

(assert (=> b!1461128 m!1348785))

(assert (=> b!1461128 m!1348785))

(declare-fun m!1348787 () Bool)

(assert (=> b!1461128 m!1348787))

(assert (=> b!1461113 m!1348785))

(assert (=> b!1461113 m!1348785))

(declare-fun m!1348789 () Bool)

(assert (=> b!1461113 m!1348789))

(declare-fun m!1348791 () Bool)

(assert (=> b!1461120 m!1348791))

(declare-fun m!1348793 () Bool)

(assert (=> b!1461118 m!1348793))

(assert (=> b!1461119 m!1348785))

(assert (=> b!1461119 m!1348785))

(declare-fun m!1348795 () Bool)

(assert (=> b!1461119 m!1348795))

(declare-fun m!1348797 () Bool)

(assert (=> b!1461121 m!1348797))

(declare-fun m!1348799 () Bool)

(assert (=> b!1461121 m!1348799))

(declare-fun m!1348801 () Bool)

(assert (=> b!1461109 m!1348801))

(assert (=> b!1461109 m!1348799))

(assert (=> b!1461111 m!1348777))

(declare-fun m!1348803 () Bool)

(assert (=> b!1461111 m!1348803))

(declare-fun m!1348805 () Bool)

(assert (=> b!1461126 m!1348805))

(assert (=> b!1461126 m!1348805))

(declare-fun m!1348807 () Bool)

(assert (=> b!1461126 m!1348807))

(declare-fun m!1348809 () Bool)

(assert (=> start!125276 m!1348809))

(declare-fun m!1348811 () Bool)

(assert (=> start!125276 m!1348811))

(declare-fun m!1348813 () Bool)

(assert (=> b!1461112 m!1348813))

(assert (=> b!1461112 m!1348785))

(declare-fun m!1348815 () Bool)

(assert (=> b!1461129 m!1348815))

(declare-fun m!1348817 () Bool)

(assert (=> b!1461122 m!1348817))

(declare-fun m!1348819 () Bool)

(assert (=> b!1461117 m!1348819))

(assert (=> b!1461117 m!1348819))

(declare-fun m!1348821 () Bool)

(assert (=> b!1461117 m!1348821))

(assert (=> b!1461117 m!1348777))

(declare-fun m!1348823 () Bool)

(assert (=> b!1461117 m!1348823))

(declare-fun m!1348825 () Bool)

(assert (=> b!1461115 m!1348825))

(assert (=> b!1461110 m!1348785))

(assert (=> b!1461110 m!1348785))

(declare-fun m!1348827 () Bool)

(assert (=> b!1461110 m!1348827))

(assert (=> b!1461116 m!1348785))

(assert (=> b!1461116 m!1348785))

(declare-fun m!1348829 () Bool)

(assert (=> b!1461116 m!1348829))

(assert (=> b!1461116 m!1348829))

(assert (=> b!1461116 m!1348785))

(declare-fun m!1348831 () Bool)

(assert (=> b!1461116 m!1348831))

(push 1)

