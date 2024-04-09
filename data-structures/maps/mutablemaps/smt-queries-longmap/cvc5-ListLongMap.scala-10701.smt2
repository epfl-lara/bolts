; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125386 () Bool)

(assert start!125386)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!823134 () Bool)

(declare-datatypes ((array!98751 0))(
  ( (array!98752 (arr!47659 (Array (_ BitVec 32) (_ BitVec 64))) (size!48210 (_ BitVec 32))) )
))
(declare-fun lt!641148 () array!98751)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!641152 () (_ BitVec 64))

(declare-fun b!1464739 () Bool)

(declare-fun lt!641146 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11934 0))(
  ( (MissingZero!11934 (index!50127 (_ BitVec 32))) (Found!11934 (index!50128 (_ BitVec 32))) (Intermediate!11934 (undefined!12746 Bool) (index!50129 (_ BitVec 32)) (x!131714 (_ BitVec 32))) (Undefined!11934) (MissingVacant!11934 (index!50130 (_ BitVec 32))) )
))
(declare-fun lt!641147 () SeekEntryResult!11934)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98751 (_ BitVec 32)) SeekEntryResult!11934)

(assert (=> b!1464739 (= e!823134 (not (= lt!641147 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641146 lt!641152 lt!641148 mask!2687))))))

(declare-fun b!1464740 () Bool)

(declare-fun res!993848 () Bool)

(declare-fun e!823138 () Bool)

(assert (=> b!1464740 (=> (not res!993848) (not e!823138))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464740 (= res!993848 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464741 () Bool)

(declare-fun res!993847 () Bool)

(declare-fun e!823141 () Bool)

(assert (=> b!1464741 (=> (not res!993847) (not e!823141))))

(declare-fun a!2862 () array!98751)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464741 (= res!993847 (validKeyInArray!0 (select (arr!47659 a!2862) i!1006)))))

(declare-fun b!1464742 () Bool)

(declare-fun e!823133 () Bool)

(assert (=> b!1464742 (= e!823141 e!823133)))

(declare-fun res!993852 () Bool)

(assert (=> b!1464742 (=> (not res!993852) (not e!823133))))

(assert (=> b!1464742 (= res!993852 (= (select (store (arr!47659 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464742 (= lt!641148 (array!98752 (store (arr!47659 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48210 a!2862)))))

(declare-fun b!1464743 () Bool)

(declare-fun e!823142 () Bool)

(assert (=> b!1464743 (= e!823142 e!823138)))

(declare-fun res!993860 () Bool)

(assert (=> b!1464743 (=> (not res!993860) (not e!823138))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464743 (= res!993860 (= lt!641147 (Intermediate!11934 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464743 (= lt!641147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641152 mask!2687) lt!641152 lt!641148 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1464743 (= lt!641152 (select (store (arr!47659 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464744 () Bool)

(declare-fun res!993858 () Bool)

(assert (=> b!1464744 (=> (not res!993858) (not e!823141))))

(assert (=> b!1464744 (= res!993858 (and (= (size!48210 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48210 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48210 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464745 () Bool)

(declare-fun res!993863 () Bool)

(assert (=> b!1464745 (=> (not res!993863) (not e!823141))))

(declare-datatypes ((List!34340 0))(
  ( (Nil!34337) (Cons!34336 (h!35686 (_ BitVec 64)) (t!49041 List!34340)) )
))
(declare-fun arrayNoDuplicates!0 (array!98751 (_ BitVec 32) List!34340) Bool)

(assert (=> b!1464745 (= res!993863 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34337))))

(declare-fun b!1464746 () Bool)

(assert (=> b!1464746 (= e!823133 e!823142)))

(declare-fun res!993862 () Bool)

(assert (=> b!1464746 (=> (not res!993862) (not e!823142))))

(declare-fun lt!641151 () SeekEntryResult!11934)

(assert (=> b!1464746 (= res!993862 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47659 a!2862) j!93) mask!2687) (select (arr!47659 a!2862) j!93) a!2862 mask!2687) lt!641151))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1464746 (= lt!641151 (Intermediate!11934 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464747 () Bool)

(declare-fun e!823136 () Bool)

(assert (=> b!1464747 (= e!823136 true)))

(declare-fun lt!641149 () Bool)

(assert (=> b!1464747 (= lt!641149 e!823134)))

(declare-fun c!134960 () Bool)

(assert (=> b!1464747 (= c!134960 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464748 () Bool)

(declare-fun res!993853 () Bool)

(assert (=> b!1464748 (=> res!993853 e!823136)))

(assert (=> b!1464748 (= res!993853 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641146 (select (arr!47659 a!2862) j!93) a!2862 mask!2687) lt!641151)))))

(declare-fun b!1464749 () Bool)

(declare-fun res!993855 () Bool)

(assert (=> b!1464749 (=> (not res!993855) (not e!823142))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1464749 (= res!993855 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47659 a!2862) j!93) a!2862 mask!2687) lt!641151))))

(declare-fun b!1464750 () Bool)

(declare-fun res!993851 () Bool)

(assert (=> b!1464750 (=> (not res!993851) (not e!823141))))

(assert (=> b!1464750 (= res!993851 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48210 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48210 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48210 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464751 () Bool)

(declare-fun res!993861 () Bool)

(assert (=> b!1464751 (=> (not res!993861) (not e!823138))))

(declare-fun e!823139 () Bool)

(assert (=> b!1464751 (= res!993861 e!823139)))

(declare-fun c!134959 () Bool)

(assert (=> b!1464751 (= c!134959 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464752 () Bool)

(assert (=> b!1464752 (= e!823139 (= lt!641147 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641152 lt!641148 mask!2687)))))

(declare-fun b!1464753 () Bool)

(declare-fun res!993857 () Bool)

(declare-fun e!823140 () Bool)

(assert (=> b!1464753 (=> (not res!993857) (not e!823140))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98751 (_ BitVec 32)) SeekEntryResult!11934)

(assert (=> b!1464753 (= res!993857 (= (seekEntryOrOpen!0 (select (arr!47659 a!2862) j!93) a!2862 mask!2687) (Found!11934 j!93)))))

(declare-fun b!1464754 () Bool)

(declare-fun res!993859 () Bool)

(assert (=> b!1464754 (=> (not res!993859) (not e!823141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98751 (_ BitVec 32)) Bool)

(assert (=> b!1464754 (= res!993859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464755 () Bool)

(assert (=> b!1464755 (= e!823140 (or (= (select (arr!47659 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47659 a!2862) intermediateBeforeIndex!19) (select (arr!47659 a!2862) j!93))))))

(declare-fun b!1464756 () Bool)

(declare-fun res!993849 () Bool)

(assert (=> b!1464756 (=> (not res!993849) (not e!823141))))

(assert (=> b!1464756 (= res!993849 (validKeyInArray!0 (select (arr!47659 a!2862) j!93)))))

(declare-fun res!993856 () Bool)

(assert (=> start!125386 (=> (not res!993856) (not e!823141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125386 (= res!993856 (validMask!0 mask!2687))))

(assert (=> start!125386 e!823141))

(assert (=> start!125386 true))

(declare-fun array_inv!36604 (array!98751) Bool)

(assert (=> start!125386 (array_inv!36604 a!2862)))

(declare-fun b!1464757 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98751 (_ BitVec 32)) SeekEntryResult!11934)

(assert (=> b!1464757 (= e!823134 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641146 intermediateAfterIndex!19 lt!641152 lt!641148 mask!2687) (seekEntryOrOpen!0 lt!641152 lt!641148 mask!2687))))))

(declare-fun b!1464758 () Bool)

(declare-fun e!823135 () Bool)

(assert (=> b!1464758 (= e!823138 (not e!823135))))

(declare-fun res!993850 () Bool)

(assert (=> b!1464758 (=> res!993850 e!823135)))

(assert (=> b!1464758 (= res!993850 (or (and (= (select (arr!47659 a!2862) index!646) (select (store (arr!47659 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47659 a!2862) index!646) (select (arr!47659 a!2862) j!93))) (= (select (arr!47659 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464758 e!823140))

(declare-fun res!993854 () Bool)

(assert (=> b!1464758 (=> (not res!993854) (not e!823140))))

(assert (=> b!1464758 (= res!993854 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49312 0))(
  ( (Unit!49313) )
))
(declare-fun lt!641150 () Unit!49312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49312)

(assert (=> b!1464758 (= lt!641150 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464759 () Bool)

(assert (=> b!1464759 (= e!823139 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641152 lt!641148 mask!2687) (seekEntryOrOpen!0 lt!641152 lt!641148 mask!2687)))))

(declare-fun b!1464760 () Bool)

(assert (=> b!1464760 (= e!823135 e!823136)))

(declare-fun res!993864 () Bool)

(assert (=> b!1464760 (=> res!993864 e!823136)))

(assert (=> b!1464760 (= res!993864 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641146 #b00000000000000000000000000000000) (bvsge lt!641146 (size!48210 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464760 (= lt!641146 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125386 res!993856) b!1464744))

(assert (= (and b!1464744 res!993858) b!1464741))

(assert (= (and b!1464741 res!993847) b!1464756))

(assert (= (and b!1464756 res!993849) b!1464754))

(assert (= (and b!1464754 res!993859) b!1464745))

(assert (= (and b!1464745 res!993863) b!1464750))

(assert (= (and b!1464750 res!993851) b!1464742))

(assert (= (and b!1464742 res!993852) b!1464746))

(assert (= (and b!1464746 res!993862) b!1464749))

(assert (= (and b!1464749 res!993855) b!1464743))

(assert (= (and b!1464743 res!993860) b!1464751))

(assert (= (and b!1464751 c!134959) b!1464752))

(assert (= (and b!1464751 (not c!134959)) b!1464759))

(assert (= (and b!1464751 res!993861) b!1464740))

(assert (= (and b!1464740 res!993848) b!1464758))

(assert (= (and b!1464758 res!993854) b!1464753))

(assert (= (and b!1464753 res!993857) b!1464755))

(assert (= (and b!1464758 (not res!993850)) b!1464760))

(assert (= (and b!1464760 (not res!993864)) b!1464748))

(assert (= (and b!1464748 (not res!993853)) b!1464747))

(assert (= (and b!1464747 c!134960) b!1464739))

(assert (= (and b!1464747 (not c!134960)) b!1464757))

(declare-fun m!1351965 () Bool)

(assert (=> b!1464746 m!1351965))

(assert (=> b!1464746 m!1351965))

(declare-fun m!1351967 () Bool)

(assert (=> b!1464746 m!1351967))

(assert (=> b!1464746 m!1351967))

(assert (=> b!1464746 m!1351965))

(declare-fun m!1351969 () Bool)

(assert (=> b!1464746 m!1351969))

(assert (=> b!1464756 m!1351965))

(assert (=> b!1464756 m!1351965))

(declare-fun m!1351971 () Bool)

(assert (=> b!1464756 m!1351971))

(declare-fun m!1351973 () Bool)

(assert (=> b!1464758 m!1351973))

(declare-fun m!1351975 () Bool)

(assert (=> b!1464758 m!1351975))

(declare-fun m!1351977 () Bool)

(assert (=> b!1464758 m!1351977))

(declare-fun m!1351979 () Bool)

(assert (=> b!1464758 m!1351979))

(declare-fun m!1351981 () Bool)

(assert (=> b!1464758 m!1351981))

(assert (=> b!1464758 m!1351965))

(declare-fun m!1351983 () Bool)

(assert (=> b!1464745 m!1351983))

(assert (=> b!1464753 m!1351965))

(assert (=> b!1464753 m!1351965))

(declare-fun m!1351985 () Bool)

(assert (=> b!1464753 m!1351985))

(assert (=> b!1464749 m!1351965))

(assert (=> b!1464749 m!1351965))

(declare-fun m!1351987 () Bool)

(assert (=> b!1464749 m!1351987))

(declare-fun m!1351989 () Bool)

(assert (=> start!125386 m!1351989))

(declare-fun m!1351991 () Bool)

(assert (=> start!125386 m!1351991))

(declare-fun m!1351993 () Bool)

(assert (=> b!1464752 m!1351993))

(declare-fun m!1351995 () Bool)

(assert (=> b!1464757 m!1351995))

(declare-fun m!1351997 () Bool)

(assert (=> b!1464757 m!1351997))

(declare-fun m!1351999 () Bool)

(assert (=> b!1464741 m!1351999))

(assert (=> b!1464741 m!1351999))

(declare-fun m!1352001 () Bool)

(assert (=> b!1464741 m!1352001))

(declare-fun m!1352003 () Bool)

(assert (=> b!1464743 m!1352003))

(assert (=> b!1464743 m!1352003))

(declare-fun m!1352005 () Bool)

(assert (=> b!1464743 m!1352005))

(assert (=> b!1464743 m!1351975))

(declare-fun m!1352007 () Bool)

(assert (=> b!1464743 m!1352007))

(declare-fun m!1352009 () Bool)

(assert (=> b!1464739 m!1352009))

(declare-fun m!1352011 () Bool)

(assert (=> b!1464760 m!1352011))

(assert (=> b!1464742 m!1351975))

(declare-fun m!1352013 () Bool)

(assert (=> b!1464742 m!1352013))

(declare-fun m!1352015 () Bool)

(assert (=> b!1464755 m!1352015))

(assert (=> b!1464755 m!1351965))

(declare-fun m!1352017 () Bool)

(assert (=> b!1464759 m!1352017))

(assert (=> b!1464759 m!1351997))

(declare-fun m!1352019 () Bool)

(assert (=> b!1464754 m!1352019))

(assert (=> b!1464748 m!1351965))

(assert (=> b!1464748 m!1351965))

(declare-fun m!1352021 () Bool)

(assert (=> b!1464748 m!1352021))

(push 1)

