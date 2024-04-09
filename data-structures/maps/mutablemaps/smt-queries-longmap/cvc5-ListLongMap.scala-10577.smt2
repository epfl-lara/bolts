; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124642 () Bool)

(assert start!124642)

(declare-fun b!1442607 () Bool)

(declare-fun res!974913 () Bool)

(declare-fun e!813067 () Bool)

(assert (=> b!1442607 (=> (not res!974913) (not e!813067))))

(declare-datatypes ((array!98007 0))(
  ( (array!98008 (arr!47287 (Array (_ BitVec 32) (_ BitVec 64))) (size!47838 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98007)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98007 (_ BitVec 32)) Bool)

(assert (=> b!1442607 (= res!974913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442608 () Bool)

(declare-fun res!974909 () Bool)

(declare-fun e!813070 () Bool)

(assert (=> b!1442608 (=> (not res!974909) (not e!813070))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11562 0))(
  ( (MissingZero!11562 (index!48639 (_ BitVec 32))) (Found!11562 (index!48640 (_ BitVec 32))) (Intermediate!11562 (undefined!12374 Bool) (index!48641 (_ BitVec 32)) (x!130350 (_ BitVec 32))) (Undefined!11562) (MissingVacant!11562 (index!48642 (_ BitVec 32))) )
))
(declare-fun lt!633576 () SeekEntryResult!11562)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98007 (_ BitVec 32)) SeekEntryResult!11562)

(assert (=> b!1442608 (= res!974909 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47287 a!2862) j!93) a!2862 mask!2687) lt!633576))))

(declare-fun b!1442610 () Bool)

(declare-fun res!974907 () Bool)

(assert (=> b!1442610 (=> (not res!974907) (not e!813067))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442610 (= res!974907 (and (= (size!47838 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47838 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47838 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442611 () Bool)

(declare-fun e!813068 () Bool)

(assert (=> b!1442611 (= e!813068 e!813070)))

(declare-fun res!974914 () Bool)

(assert (=> b!1442611 (=> (not res!974914) (not e!813070))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442611 (= res!974914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47287 a!2862) j!93) mask!2687) (select (arr!47287 a!2862) j!93) a!2862 mask!2687) lt!633576))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442611 (= lt!633576 (Intermediate!11562 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442612 () Bool)

(declare-fun res!974905 () Bool)

(assert (=> b!1442612 (=> (not res!974905) (not e!813067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442612 (= res!974905 (validKeyInArray!0 (select (arr!47287 a!2862) i!1006)))))

(declare-fun b!1442613 () Bool)

(declare-fun res!974912 () Bool)

(declare-fun e!813065 () Bool)

(assert (=> b!1442613 (=> (not res!974912) (not e!813065))))

(declare-fun e!813069 () Bool)

(assert (=> b!1442613 (= res!974912 e!813069)))

(declare-fun c!133364 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442613 (= c!133364 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442614 () Bool)

(declare-fun res!974911 () Bool)

(assert (=> b!1442614 (=> (not res!974911) (not e!813065))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442614 (= res!974911 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442615 () Bool)

(declare-fun lt!633575 () (_ BitVec 64))

(declare-fun lt!633577 () SeekEntryResult!11562)

(declare-fun lt!633573 () array!98007)

(assert (=> b!1442615 (= e!813069 (= lt!633577 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633575 lt!633573 mask!2687)))))

(declare-fun b!1442616 () Bool)

(assert (=> b!1442616 (= e!813070 e!813065)))

(declare-fun res!974910 () Bool)

(assert (=> b!1442616 (=> (not res!974910) (not e!813065))))

(assert (=> b!1442616 (= res!974910 (= lt!633577 (Intermediate!11562 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442616 (= lt!633577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633575 mask!2687) lt!633575 lt!633573 mask!2687))))

(assert (=> b!1442616 (= lt!633575 (select (store (arr!47287 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442617 () Bool)

(declare-fun res!974919 () Bool)

(declare-fun e!813071 () Bool)

(assert (=> b!1442617 (=> (not res!974919) (not e!813071))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98007 (_ BitVec 32)) SeekEntryResult!11562)

(assert (=> b!1442617 (= res!974919 (= (seekEntryOrOpen!0 (select (arr!47287 a!2862) j!93) a!2862 mask!2687) (Found!11562 j!93)))))

(declare-fun b!1442618 () Bool)

(declare-fun res!974906 () Bool)

(assert (=> b!1442618 (=> (not res!974906) (not e!813067))))

(declare-datatypes ((List!33968 0))(
  ( (Nil!33965) (Cons!33964 (h!35314 (_ BitVec 64)) (t!48669 List!33968)) )
))
(declare-fun arrayNoDuplicates!0 (array!98007 (_ BitVec 32) List!33968) Bool)

(assert (=> b!1442618 (= res!974906 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33965))))

(declare-fun b!1442619 () Bool)

(declare-fun res!974918 () Bool)

(assert (=> b!1442619 (=> (not res!974918) (not e!813067))))

(assert (=> b!1442619 (= res!974918 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47838 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47838 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47838 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!974908 () Bool)

(assert (=> start!124642 (=> (not res!974908) (not e!813067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124642 (= res!974908 (validMask!0 mask!2687))))

(assert (=> start!124642 e!813067))

(assert (=> start!124642 true))

(declare-fun array_inv!36232 (array!98007) Bool)

(assert (=> start!124642 (array_inv!36232 a!2862)))

(declare-fun b!1442609 () Bool)

(declare-fun res!974917 () Bool)

(assert (=> b!1442609 (=> (not res!974917) (not e!813067))))

(assert (=> b!1442609 (= res!974917 (validKeyInArray!0 (select (arr!47287 a!2862) j!93)))))

(declare-fun b!1442620 () Bool)

(assert (=> b!1442620 (= e!813071 (or (= (select (arr!47287 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47287 a!2862) intermediateBeforeIndex!19) (select (arr!47287 a!2862) j!93))))))

(declare-fun b!1442621 () Bool)

(assert (=> b!1442621 (= e!813067 e!813068)))

(declare-fun res!974916 () Bool)

(assert (=> b!1442621 (=> (not res!974916) (not e!813068))))

(assert (=> b!1442621 (= res!974916 (= (select (store (arr!47287 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442621 (= lt!633573 (array!98008 (store (arr!47287 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47838 a!2862)))))

(declare-fun b!1442622 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98007 (_ BitVec 32)) SeekEntryResult!11562)

(assert (=> b!1442622 (= e!813069 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633575 lt!633573 mask!2687) (seekEntryOrOpen!0 lt!633575 lt!633573 mask!2687)))))

(declare-fun b!1442623 () Bool)

(assert (=> b!1442623 (= e!813065 (not true))))

(assert (=> b!1442623 e!813071))

(declare-fun res!974915 () Bool)

(assert (=> b!1442623 (=> (not res!974915) (not e!813071))))

(assert (=> b!1442623 (= res!974915 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48568 0))(
  ( (Unit!48569) )
))
(declare-fun lt!633574 () Unit!48568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48568)

(assert (=> b!1442623 (= lt!633574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124642 res!974908) b!1442610))

(assert (= (and b!1442610 res!974907) b!1442612))

(assert (= (and b!1442612 res!974905) b!1442609))

(assert (= (and b!1442609 res!974917) b!1442607))

(assert (= (and b!1442607 res!974913) b!1442618))

(assert (= (and b!1442618 res!974906) b!1442619))

(assert (= (and b!1442619 res!974918) b!1442621))

(assert (= (and b!1442621 res!974916) b!1442611))

(assert (= (and b!1442611 res!974914) b!1442608))

(assert (= (and b!1442608 res!974909) b!1442616))

(assert (= (and b!1442616 res!974910) b!1442613))

(assert (= (and b!1442613 c!133364) b!1442615))

(assert (= (and b!1442613 (not c!133364)) b!1442622))

(assert (= (and b!1442613 res!974912) b!1442614))

(assert (= (and b!1442614 res!974911) b!1442623))

(assert (= (and b!1442623 res!974915) b!1442617))

(assert (= (and b!1442617 res!974919) b!1442620))

(declare-fun m!1331793 () Bool)

(assert (=> b!1442608 m!1331793))

(assert (=> b!1442608 m!1331793))

(declare-fun m!1331795 () Bool)

(assert (=> b!1442608 m!1331795))

(declare-fun m!1331797 () Bool)

(assert (=> b!1442616 m!1331797))

(assert (=> b!1442616 m!1331797))

(declare-fun m!1331799 () Bool)

(assert (=> b!1442616 m!1331799))

(declare-fun m!1331801 () Bool)

(assert (=> b!1442616 m!1331801))

(declare-fun m!1331803 () Bool)

(assert (=> b!1442616 m!1331803))

(declare-fun m!1331805 () Bool)

(assert (=> b!1442623 m!1331805))

(declare-fun m!1331807 () Bool)

(assert (=> b!1442623 m!1331807))

(declare-fun m!1331809 () Bool)

(assert (=> start!124642 m!1331809))

(declare-fun m!1331811 () Bool)

(assert (=> start!124642 m!1331811))

(assert (=> b!1442609 m!1331793))

(assert (=> b!1442609 m!1331793))

(declare-fun m!1331813 () Bool)

(assert (=> b!1442609 m!1331813))

(declare-fun m!1331815 () Bool)

(assert (=> b!1442618 m!1331815))

(declare-fun m!1331817 () Bool)

(assert (=> b!1442622 m!1331817))

(declare-fun m!1331819 () Bool)

(assert (=> b!1442622 m!1331819))

(assert (=> b!1442611 m!1331793))

(assert (=> b!1442611 m!1331793))

(declare-fun m!1331821 () Bool)

(assert (=> b!1442611 m!1331821))

(assert (=> b!1442611 m!1331821))

(assert (=> b!1442611 m!1331793))

(declare-fun m!1331823 () Bool)

(assert (=> b!1442611 m!1331823))

(assert (=> b!1442621 m!1331801))

(declare-fun m!1331825 () Bool)

(assert (=> b!1442621 m!1331825))

(declare-fun m!1331827 () Bool)

(assert (=> b!1442607 m!1331827))

(declare-fun m!1331829 () Bool)

(assert (=> b!1442615 m!1331829))

(declare-fun m!1331831 () Bool)

(assert (=> b!1442612 m!1331831))

(assert (=> b!1442612 m!1331831))

(declare-fun m!1331833 () Bool)

(assert (=> b!1442612 m!1331833))

(assert (=> b!1442617 m!1331793))

(assert (=> b!1442617 m!1331793))

(declare-fun m!1331835 () Bool)

(assert (=> b!1442617 m!1331835))

(declare-fun m!1331837 () Bool)

(assert (=> b!1442620 m!1331837))

(assert (=> b!1442620 m!1331793))

(push 1)

