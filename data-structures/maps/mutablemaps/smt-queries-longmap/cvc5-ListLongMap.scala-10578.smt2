; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124648 () Bool)

(assert start!124648)

(declare-fun b!1442760 () Bool)

(declare-fun e!813131 () Bool)

(declare-fun e!813133 () Bool)

(assert (=> b!1442760 (= e!813131 e!813133)))

(declare-fun res!975041 () Bool)

(assert (=> b!1442760 (=> (not res!975041) (not e!813133))))

(declare-datatypes ((SeekEntryResult!11565 0))(
  ( (MissingZero!11565 (index!48651 (_ BitVec 32))) (Found!11565 (index!48652 (_ BitVec 32))) (Intermediate!11565 (undefined!12377 Bool) (index!48653 (_ BitVec 32)) (x!130361 (_ BitVec 32))) (Undefined!11565) (MissingVacant!11565 (index!48654 (_ BitVec 32))) )
))
(declare-fun lt!633621 () SeekEntryResult!11565)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442760 (= res!975041 (= lt!633621 (Intermediate!11565 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633622 () (_ BitVec 64))

(declare-datatypes ((array!98013 0))(
  ( (array!98014 (arr!47290 (Array (_ BitVec 32) (_ BitVec 64))) (size!47841 (_ BitVec 32))) )
))
(declare-fun lt!633619 () array!98013)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98013 (_ BitVec 32)) SeekEntryResult!11565)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442760 (= lt!633621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633622 mask!2687) lt!633622 lt!633619 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98013)

(assert (=> b!1442760 (= lt!633622 (select (store (arr!47290 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442761 () Bool)

(declare-fun res!975046 () Bool)

(declare-fun e!813128 () Bool)

(assert (=> b!1442761 (=> (not res!975046) (not e!813128))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98013 (_ BitVec 32)) SeekEntryResult!11565)

(assert (=> b!1442761 (= res!975046 (= (seekEntryOrOpen!0 (select (arr!47290 a!2862) j!93) a!2862 mask!2687) (Found!11565 j!93)))))

(declare-fun b!1442762 () Bool)

(declare-fun e!813129 () Bool)

(declare-fun e!813130 () Bool)

(assert (=> b!1442762 (= e!813129 e!813130)))

(declare-fun res!975054 () Bool)

(assert (=> b!1442762 (=> (not res!975054) (not e!813130))))

(assert (=> b!1442762 (= res!975054 (= (select (store (arr!47290 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442762 (= lt!633619 (array!98014 (store (arr!47290 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47841 a!2862)))))

(declare-fun b!1442763 () Bool)

(declare-fun res!975042 () Bool)

(assert (=> b!1442763 (=> (not res!975042) (not e!813129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98013 (_ BitVec 32)) Bool)

(assert (=> b!1442763 (= res!975042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442764 () Bool)

(assert (=> b!1442764 (= e!813130 e!813131)))

(declare-fun res!975047 () Bool)

(assert (=> b!1442764 (=> (not res!975047) (not e!813131))))

(declare-fun lt!633620 () SeekEntryResult!11565)

(assert (=> b!1442764 (= res!975047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47290 a!2862) j!93) mask!2687) (select (arr!47290 a!2862) j!93) a!2862 mask!2687) lt!633620))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442764 (= lt!633620 (Intermediate!11565 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442765 () Bool)

(declare-fun res!975050 () Bool)

(assert (=> b!1442765 (=> (not res!975050) (not e!813129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442765 (= res!975050 (validKeyInArray!0 (select (arr!47290 a!2862) j!93)))))

(declare-fun res!975044 () Bool)

(assert (=> start!124648 (=> (not res!975044) (not e!813129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124648 (= res!975044 (validMask!0 mask!2687))))

(assert (=> start!124648 e!813129))

(assert (=> start!124648 true))

(declare-fun array_inv!36235 (array!98013) Bool)

(assert (=> start!124648 (array_inv!36235 a!2862)))

(declare-fun b!1442766 () Bool)

(declare-fun res!975053 () Bool)

(assert (=> b!1442766 (=> (not res!975053) (not e!813129))))

(assert (=> b!1442766 (= res!975053 (validKeyInArray!0 (select (arr!47290 a!2862) i!1006)))))

(declare-fun b!1442767 () Bool)

(declare-fun res!975040 () Bool)

(assert (=> b!1442767 (=> (not res!975040) (not e!813129))))

(declare-datatypes ((List!33971 0))(
  ( (Nil!33968) (Cons!33967 (h!35317 (_ BitVec 64)) (t!48672 List!33971)) )
))
(declare-fun arrayNoDuplicates!0 (array!98013 (_ BitVec 32) List!33971) Bool)

(assert (=> b!1442767 (= res!975040 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33968))))

(declare-fun b!1442768 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1442768 (= e!813133 (not (or (not (= (select (arr!47290 a!2862) index!646) (select (store (arr!47290 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47290 a!2862) index!646) (select (arr!47290 a!2862) j!93))) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1442768 e!813128))

(declare-fun res!975049 () Bool)

(assert (=> b!1442768 (=> (not res!975049) (not e!813128))))

(assert (=> b!1442768 (= res!975049 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48574 0))(
  ( (Unit!48575) )
))
(declare-fun lt!633618 () Unit!48574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48574)

(assert (=> b!1442768 (= lt!633618 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442769 () Bool)

(assert (=> b!1442769 (= e!813128 (or (= (select (arr!47290 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47290 a!2862) intermediateBeforeIndex!19) (select (arr!47290 a!2862) j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1442770 () Bool)

(declare-fun e!813132 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98013 (_ BitVec 32)) SeekEntryResult!11565)

(assert (=> b!1442770 (= e!813132 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633622 lt!633619 mask!2687) (seekEntryOrOpen!0 lt!633622 lt!633619 mask!2687)))))

(declare-fun b!1442771 () Bool)

(declare-fun res!975052 () Bool)

(assert (=> b!1442771 (=> (not res!975052) (not e!813129))))

(assert (=> b!1442771 (= res!975052 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47841 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47841 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47841 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442772 () Bool)

(assert (=> b!1442772 (= e!813132 (= lt!633621 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633622 lt!633619 mask!2687)))))

(declare-fun b!1442773 () Bool)

(declare-fun res!975043 () Bool)

(assert (=> b!1442773 (=> (not res!975043) (not e!813133))))

(assert (=> b!1442773 (= res!975043 e!813132)))

(declare-fun c!133373 () Bool)

(assert (=> b!1442773 (= c!133373 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442774 () Bool)

(declare-fun res!975045 () Bool)

(assert (=> b!1442774 (=> (not res!975045) (not e!813129))))

(assert (=> b!1442774 (= res!975045 (and (= (size!47841 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47841 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47841 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442775 () Bool)

(declare-fun res!975051 () Bool)

(assert (=> b!1442775 (=> (not res!975051) (not e!813131))))

(assert (=> b!1442775 (= res!975051 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47290 a!2862) j!93) a!2862 mask!2687) lt!633620))))

(declare-fun b!1442776 () Bool)

(declare-fun res!975048 () Bool)

(assert (=> b!1442776 (=> (not res!975048) (not e!813133))))

(assert (=> b!1442776 (= res!975048 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124648 res!975044) b!1442774))

(assert (= (and b!1442774 res!975045) b!1442766))

(assert (= (and b!1442766 res!975053) b!1442765))

(assert (= (and b!1442765 res!975050) b!1442763))

(assert (= (and b!1442763 res!975042) b!1442767))

(assert (= (and b!1442767 res!975040) b!1442771))

(assert (= (and b!1442771 res!975052) b!1442762))

(assert (= (and b!1442762 res!975054) b!1442764))

(assert (= (and b!1442764 res!975047) b!1442775))

(assert (= (and b!1442775 res!975051) b!1442760))

(assert (= (and b!1442760 res!975041) b!1442773))

(assert (= (and b!1442773 c!133373) b!1442772))

(assert (= (and b!1442773 (not c!133373)) b!1442770))

(assert (= (and b!1442773 res!975043) b!1442776))

(assert (= (and b!1442776 res!975048) b!1442768))

(assert (= (and b!1442768 res!975049) b!1442761))

(assert (= (and b!1442761 res!975046) b!1442769))

(declare-fun m!1331931 () Bool)

(assert (=> start!124648 m!1331931))

(declare-fun m!1331933 () Bool)

(assert (=> start!124648 m!1331933))

(declare-fun m!1331935 () Bool)

(assert (=> b!1442760 m!1331935))

(assert (=> b!1442760 m!1331935))

(declare-fun m!1331937 () Bool)

(assert (=> b!1442760 m!1331937))

(declare-fun m!1331939 () Bool)

(assert (=> b!1442760 m!1331939))

(declare-fun m!1331941 () Bool)

(assert (=> b!1442760 m!1331941))

(declare-fun m!1331943 () Bool)

(assert (=> b!1442767 m!1331943))

(declare-fun m!1331945 () Bool)

(assert (=> b!1442772 m!1331945))

(declare-fun m!1331947 () Bool)

(assert (=> b!1442770 m!1331947))

(declare-fun m!1331949 () Bool)

(assert (=> b!1442770 m!1331949))

(assert (=> b!1442762 m!1331939))

(declare-fun m!1331951 () Bool)

(assert (=> b!1442762 m!1331951))

(declare-fun m!1331953 () Bool)

(assert (=> b!1442766 m!1331953))

(assert (=> b!1442766 m!1331953))

(declare-fun m!1331955 () Bool)

(assert (=> b!1442766 m!1331955))

(declare-fun m!1331957 () Bool)

(assert (=> b!1442764 m!1331957))

(assert (=> b!1442764 m!1331957))

(declare-fun m!1331959 () Bool)

(assert (=> b!1442764 m!1331959))

(assert (=> b!1442764 m!1331959))

(assert (=> b!1442764 m!1331957))

(declare-fun m!1331961 () Bool)

(assert (=> b!1442764 m!1331961))

(declare-fun m!1331963 () Bool)

(assert (=> b!1442769 m!1331963))

(assert (=> b!1442769 m!1331957))

(assert (=> b!1442765 m!1331957))

(assert (=> b!1442765 m!1331957))

(declare-fun m!1331965 () Bool)

(assert (=> b!1442765 m!1331965))

(declare-fun m!1331967 () Bool)

(assert (=> b!1442763 m!1331967))

(assert (=> b!1442775 m!1331957))

(assert (=> b!1442775 m!1331957))

(declare-fun m!1331969 () Bool)

(assert (=> b!1442775 m!1331969))

(assert (=> b!1442761 m!1331957))

(assert (=> b!1442761 m!1331957))

(declare-fun m!1331971 () Bool)

(assert (=> b!1442761 m!1331971))

(declare-fun m!1331973 () Bool)

(assert (=> b!1442768 m!1331973))

(assert (=> b!1442768 m!1331939))

(declare-fun m!1331975 () Bool)

(assert (=> b!1442768 m!1331975))

(declare-fun m!1331977 () Bool)

(assert (=> b!1442768 m!1331977))

(declare-fun m!1331979 () Bool)

(assert (=> b!1442768 m!1331979))

(assert (=> b!1442768 m!1331957))

(push 1)

