; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124644 () Bool)

(assert start!124644)

(declare-fun b!1442658 () Bool)

(declare-fun e!813090 () Bool)

(assert (=> b!1442658 (= e!813090 (not true))))

(declare-fun e!813088 () Bool)

(assert (=> b!1442658 e!813088))

(declare-fun res!974961 () Bool)

(assert (=> b!1442658 (=> (not res!974961) (not e!813088))))

(declare-datatypes ((array!98009 0))(
  ( (array!98010 (arr!47288 (Array (_ BitVec 32) (_ BitVec 64))) (size!47839 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98009)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98009 (_ BitVec 32)) Bool)

(assert (=> b!1442658 (= res!974961 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48570 0))(
  ( (Unit!48571) )
))
(declare-fun lt!633589 () Unit!48570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48570)

(assert (=> b!1442658 (= lt!633589 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!813092 () Bool)

(declare-datatypes ((SeekEntryResult!11563 0))(
  ( (MissingZero!11563 (index!48643 (_ BitVec 32))) (Found!11563 (index!48644 (_ BitVec 32))) (Intermediate!11563 (undefined!12375 Bool) (index!48645 (_ BitVec 32)) (x!130351 (_ BitVec 32))) (Undefined!11563) (MissingVacant!11563 (index!48646 (_ BitVec 32))) )
))
(declare-fun lt!633590 () SeekEntryResult!11563)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1442659 () Bool)

(declare-fun lt!633592 () array!98009)

(declare-fun lt!633588 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98009 (_ BitVec 32)) SeekEntryResult!11563)

(assert (=> b!1442659 (= e!813092 (= lt!633590 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633588 lt!633592 mask!2687)))))

(declare-fun res!974956 () Bool)

(declare-fun e!813089 () Bool)

(assert (=> start!124644 (=> (not res!974956) (not e!813089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124644 (= res!974956 (validMask!0 mask!2687))))

(assert (=> start!124644 e!813089))

(assert (=> start!124644 true))

(declare-fun array_inv!36233 (array!98009) Bool)

(assert (=> start!124644 (array_inv!36233 a!2862)))

(declare-fun b!1442660 () Bool)

(declare-fun e!813086 () Bool)

(assert (=> b!1442660 (= e!813089 e!813086)))

(declare-fun res!974959 () Bool)

(assert (=> b!1442660 (=> (not res!974959) (not e!813086))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442660 (= res!974959 (= (select (store (arr!47288 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442660 (= lt!633592 (array!98010 (store (arr!47288 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47839 a!2862)))))

(declare-fun b!1442661 () Bool)

(declare-fun res!974954 () Bool)

(assert (=> b!1442661 (=> (not res!974954) (not e!813089))))

(assert (=> b!1442661 (= res!974954 (and (= (size!47839 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47839 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47839 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442662 () Bool)

(declare-fun e!813087 () Bool)

(assert (=> b!1442662 (= e!813087 e!813090)))

(declare-fun res!974951 () Bool)

(assert (=> b!1442662 (=> (not res!974951) (not e!813090))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442662 (= res!974951 (= lt!633590 (Intermediate!11563 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442662 (= lt!633590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633588 mask!2687) lt!633588 lt!633592 mask!2687))))

(assert (=> b!1442662 (= lt!633588 (select (store (arr!47288 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442663 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98009 (_ BitVec 32)) SeekEntryResult!11563)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98009 (_ BitVec 32)) SeekEntryResult!11563)

(assert (=> b!1442663 (= e!813092 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633588 lt!633592 mask!2687) (seekEntryOrOpen!0 lt!633588 lt!633592 mask!2687)))))

(declare-fun b!1442664 () Bool)

(declare-fun res!974955 () Bool)

(assert (=> b!1442664 (=> (not res!974955) (not e!813089))))

(assert (=> b!1442664 (= res!974955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1442665 () Bool)

(assert (=> b!1442665 (= e!813088 (or (= (select (arr!47288 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47288 a!2862) intermediateBeforeIndex!19) (select (arr!47288 a!2862) j!93))))))

(declare-fun b!1442666 () Bool)

(declare-fun res!974958 () Bool)

(assert (=> b!1442666 (=> (not res!974958) (not e!813088))))

(assert (=> b!1442666 (= res!974958 (= (seekEntryOrOpen!0 (select (arr!47288 a!2862) j!93) a!2862 mask!2687) (Found!11563 j!93)))))

(declare-fun b!1442667 () Bool)

(declare-fun res!974963 () Bool)

(assert (=> b!1442667 (=> (not res!974963) (not e!813089))))

(declare-datatypes ((List!33969 0))(
  ( (Nil!33966) (Cons!33965 (h!35315 (_ BitVec 64)) (t!48670 List!33969)) )
))
(declare-fun arrayNoDuplicates!0 (array!98009 (_ BitVec 32) List!33969) Bool)

(assert (=> b!1442667 (= res!974963 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33966))))

(declare-fun b!1442668 () Bool)

(declare-fun res!974964 () Bool)

(assert (=> b!1442668 (=> (not res!974964) (not e!813089))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442668 (= res!974964 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47839 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47839 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47839 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442669 () Bool)

(declare-fun res!974957 () Bool)

(assert (=> b!1442669 (=> (not res!974957) (not e!813090))))

(assert (=> b!1442669 (= res!974957 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442670 () Bool)

(declare-fun res!974952 () Bool)

(assert (=> b!1442670 (=> (not res!974952) (not e!813087))))

(declare-fun lt!633591 () SeekEntryResult!11563)

(assert (=> b!1442670 (= res!974952 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47288 a!2862) j!93) a!2862 mask!2687) lt!633591))))

(declare-fun b!1442671 () Bool)

(declare-fun res!974960 () Bool)

(assert (=> b!1442671 (=> (not res!974960) (not e!813089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442671 (= res!974960 (validKeyInArray!0 (select (arr!47288 a!2862) i!1006)))))

(declare-fun b!1442672 () Bool)

(assert (=> b!1442672 (= e!813086 e!813087)))

(declare-fun res!974962 () Bool)

(assert (=> b!1442672 (=> (not res!974962) (not e!813087))))

(assert (=> b!1442672 (= res!974962 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47288 a!2862) j!93) mask!2687) (select (arr!47288 a!2862) j!93) a!2862 mask!2687) lt!633591))))

(assert (=> b!1442672 (= lt!633591 (Intermediate!11563 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442673 () Bool)

(declare-fun res!974950 () Bool)

(assert (=> b!1442673 (=> (not res!974950) (not e!813090))))

(assert (=> b!1442673 (= res!974950 e!813092)))

(declare-fun c!133367 () Bool)

(assert (=> b!1442673 (= c!133367 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442674 () Bool)

(declare-fun res!974953 () Bool)

(assert (=> b!1442674 (=> (not res!974953) (not e!813089))))

(assert (=> b!1442674 (= res!974953 (validKeyInArray!0 (select (arr!47288 a!2862) j!93)))))

(assert (= (and start!124644 res!974956) b!1442661))

(assert (= (and b!1442661 res!974954) b!1442671))

(assert (= (and b!1442671 res!974960) b!1442674))

(assert (= (and b!1442674 res!974953) b!1442664))

(assert (= (and b!1442664 res!974955) b!1442667))

(assert (= (and b!1442667 res!974963) b!1442668))

(assert (= (and b!1442668 res!974964) b!1442660))

(assert (= (and b!1442660 res!974959) b!1442672))

(assert (= (and b!1442672 res!974962) b!1442670))

(assert (= (and b!1442670 res!974952) b!1442662))

(assert (= (and b!1442662 res!974951) b!1442673))

(assert (= (and b!1442673 c!133367) b!1442659))

(assert (= (and b!1442673 (not c!133367)) b!1442663))

(assert (= (and b!1442673 res!974950) b!1442669))

(assert (= (and b!1442669 res!974957) b!1442658))

(assert (= (and b!1442658 res!974961) b!1442666))

(assert (= (and b!1442666 res!974958) b!1442665))

(declare-fun m!1331839 () Bool)

(assert (=> b!1442662 m!1331839))

(assert (=> b!1442662 m!1331839))

(declare-fun m!1331841 () Bool)

(assert (=> b!1442662 m!1331841))

(declare-fun m!1331843 () Bool)

(assert (=> b!1442662 m!1331843))

(declare-fun m!1331845 () Bool)

(assert (=> b!1442662 m!1331845))

(declare-fun m!1331847 () Bool)

(assert (=> b!1442672 m!1331847))

(assert (=> b!1442672 m!1331847))

(declare-fun m!1331849 () Bool)

(assert (=> b!1442672 m!1331849))

(assert (=> b!1442672 m!1331849))

(assert (=> b!1442672 m!1331847))

(declare-fun m!1331851 () Bool)

(assert (=> b!1442672 m!1331851))

(declare-fun m!1331853 () Bool)

(assert (=> b!1442671 m!1331853))

(assert (=> b!1442671 m!1331853))

(declare-fun m!1331855 () Bool)

(assert (=> b!1442671 m!1331855))

(declare-fun m!1331857 () Bool)

(assert (=> b!1442663 m!1331857))

(declare-fun m!1331859 () Bool)

(assert (=> b!1442663 m!1331859))

(assert (=> b!1442670 m!1331847))

(assert (=> b!1442670 m!1331847))

(declare-fun m!1331861 () Bool)

(assert (=> b!1442670 m!1331861))

(declare-fun m!1331863 () Bool)

(assert (=> b!1442659 m!1331863))

(assert (=> b!1442674 m!1331847))

(assert (=> b!1442674 m!1331847))

(declare-fun m!1331865 () Bool)

(assert (=> b!1442674 m!1331865))

(declare-fun m!1331867 () Bool)

(assert (=> b!1442667 m!1331867))

(declare-fun m!1331869 () Bool)

(assert (=> b!1442665 m!1331869))

(assert (=> b!1442665 m!1331847))

(declare-fun m!1331871 () Bool)

(assert (=> start!124644 m!1331871))

(declare-fun m!1331873 () Bool)

(assert (=> start!124644 m!1331873))

(assert (=> b!1442660 m!1331843))

(declare-fun m!1331875 () Bool)

(assert (=> b!1442660 m!1331875))

(declare-fun m!1331877 () Bool)

(assert (=> b!1442658 m!1331877))

(declare-fun m!1331879 () Bool)

(assert (=> b!1442658 m!1331879))

(assert (=> b!1442666 m!1331847))

(assert (=> b!1442666 m!1331847))

(declare-fun m!1331881 () Bool)

(assert (=> b!1442666 m!1331881))

(declare-fun m!1331883 () Bool)

(assert (=> b!1442664 m!1331883))

(check-sat (not b!1442672) (not b!1442664) (not b!1442670) (not b!1442659) (not start!124644) (not b!1442667) (not b!1442674) (not b!1442663) (not b!1442666) (not b!1442658) (not b!1442662) (not b!1442671))
(check-sat)
