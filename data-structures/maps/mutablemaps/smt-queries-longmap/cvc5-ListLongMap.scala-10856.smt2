; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127156 () Bool)

(assert start!127156)

(declare-fun b!1494002 () Bool)

(declare-fun res!1016531 () Bool)

(declare-fun e!836902 () Bool)

(assert (=> b!1494002 (=> (not res!1016531) (not e!836902))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99720 0))(
  ( (array!99721 (arr!48124 (Array (_ BitVec 32) (_ BitVec 64))) (size!48675 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99720)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494002 (= res!1016531 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48675 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48675 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48675 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494003 () Bool)

(declare-fun res!1016534 () Bool)

(assert (=> b!1494003 (=> (not res!1016534) (not e!836902))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494003 (= res!1016534 (validKeyInArray!0 (select (arr!48124 a!2862) j!93)))))

(declare-fun b!1494004 () Bool)

(declare-fun e!836901 () Bool)

(declare-fun e!836899 () Bool)

(assert (=> b!1494004 (= e!836901 (not e!836899))))

(declare-fun res!1016527 () Bool)

(assert (=> b!1494004 (=> res!1016527 e!836899)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1494004 (= res!1016527 (or (and (= (select (arr!48124 a!2862) index!646) (select (store (arr!48124 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48124 a!2862) index!646) (select (arr!48124 a!2862) j!93))) (= (select (arr!48124 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836898 () Bool)

(assert (=> b!1494004 e!836898))

(declare-fun res!1016537 () Bool)

(assert (=> b!1494004 (=> (not res!1016537) (not e!836898))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99720 (_ BitVec 32)) Bool)

(assert (=> b!1494004 (= res!1016537 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50062 0))(
  ( (Unit!50063) )
))
(declare-fun lt!651181 () Unit!50062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50062)

(assert (=> b!1494004 (= lt!651181 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494005 () Bool)

(assert (=> b!1494005 (= e!836898 (or (= (select (arr!48124 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48124 a!2862) intermediateBeforeIndex!19) (select (arr!48124 a!2862) j!93))))))

(declare-fun b!1494006 () Bool)

(declare-fun res!1016525 () Bool)

(assert (=> b!1494006 (=> (not res!1016525) (not e!836902))))

(declare-datatypes ((List!34805 0))(
  ( (Nil!34802) (Cons!34801 (h!36190 (_ BitVec 64)) (t!49506 List!34805)) )
))
(declare-fun arrayNoDuplicates!0 (array!99720 (_ BitVec 32) List!34805) Bool)

(assert (=> b!1494006 (= res!1016525 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34802))))

(declare-fun b!1494007 () Bool)

(declare-fun e!836900 () Bool)

(assert (=> b!1494007 (= e!836902 e!836900)))

(declare-fun res!1016535 () Bool)

(assert (=> b!1494007 (=> (not res!1016535) (not e!836900))))

(assert (=> b!1494007 (= res!1016535 (= (select (store (arr!48124 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!651184 () array!99720)

(assert (=> b!1494007 (= lt!651184 (array!99721 (store (arr!48124 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48675 a!2862)))))

(declare-fun b!1494008 () Bool)

(declare-fun res!1016528 () Bool)

(assert (=> b!1494008 (=> (not res!1016528) (not e!836902))))

(assert (=> b!1494008 (= res!1016528 (validKeyInArray!0 (select (arr!48124 a!2862) i!1006)))))

(declare-fun b!1494009 () Bool)

(declare-fun res!1016536 () Bool)

(assert (=> b!1494009 (=> (not res!1016536) (not e!836901))))

(assert (=> b!1494009 (= res!1016536 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!651182 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12387 0))(
  ( (MissingZero!12387 (index!51939 (_ BitVec 32))) (Found!12387 (index!51940 (_ BitVec 32))) (Intermediate!12387 (undefined!13199 Bool) (index!51941 (_ BitVec 32)) (x!133542 (_ BitVec 32))) (Undefined!12387) (MissingVacant!12387 (index!51942 (_ BitVec 32))) )
))
(declare-fun lt!651183 () SeekEntryResult!12387)

(declare-fun b!1494010 () Bool)

(declare-fun e!836897 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99720 (_ BitVec 32)) SeekEntryResult!12387)

(assert (=> b!1494010 (= e!836897 (= lt!651183 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651182 lt!651184 mask!2687)))))

(declare-fun res!1016523 () Bool)

(assert (=> start!127156 (=> (not res!1016523) (not e!836902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127156 (= res!1016523 (validMask!0 mask!2687))))

(assert (=> start!127156 e!836902))

(assert (=> start!127156 true))

(declare-fun array_inv!37069 (array!99720) Bool)

(assert (=> start!127156 (array_inv!37069 a!2862)))

(declare-fun b!1494011 () Bool)

(declare-fun res!1016530 () Bool)

(assert (=> b!1494011 (=> (not res!1016530) (not e!836902))))

(assert (=> b!1494011 (= res!1016530 (and (= (size!48675 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48675 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48675 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494012 () Bool)

(assert (=> b!1494012 (= e!836899 true)))

(declare-fun lt!651179 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494012 (= lt!651179 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494013 () Bool)

(declare-fun res!1016533 () Bool)

(declare-fun e!836903 () Bool)

(assert (=> b!1494013 (=> (not res!1016533) (not e!836903))))

(declare-fun lt!651180 () SeekEntryResult!12387)

(assert (=> b!1494013 (= res!1016533 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48124 a!2862) j!93) a!2862 mask!2687) lt!651180))))

(declare-fun b!1494014 () Bool)

(declare-fun res!1016532 () Bool)

(assert (=> b!1494014 (=> (not res!1016532) (not e!836902))))

(assert (=> b!1494014 (= res!1016532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494015 () Bool)

(declare-fun res!1016526 () Bool)

(assert (=> b!1494015 (=> (not res!1016526) (not e!836898))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99720 (_ BitVec 32)) SeekEntryResult!12387)

(assert (=> b!1494015 (= res!1016526 (= (seekEntryOrOpen!0 (select (arr!48124 a!2862) j!93) a!2862 mask!2687) (Found!12387 j!93)))))

(declare-fun b!1494016 () Bool)

(assert (=> b!1494016 (= e!836903 e!836901)))

(declare-fun res!1016538 () Bool)

(assert (=> b!1494016 (=> (not res!1016538) (not e!836901))))

(assert (=> b!1494016 (= res!1016538 (= lt!651183 (Intermediate!12387 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494016 (= lt!651183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651182 mask!2687) lt!651182 lt!651184 mask!2687))))

(assert (=> b!1494016 (= lt!651182 (select (store (arr!48124 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494017 () Bool)

(declare-fun res!1016524 () Bool)

(assert (=> b!1494017 (=> (not res!1016524) (not e!836901))))

(assert (=> b!1494017 (= res!1016524 e!836897)))

(declare-fun c!138272 () Bool)

(assert (=> b!1494017 (= c!138272 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494018 () Bool)

(assert (=> b!1494018 (= e!836900 e!836903)))

(declare-fun res!1016529 () Bool)

(assert (=> b!1494018 (=> (not res!1016529) (not e!836903))))

(assert (=> b!1494018 (= res!1016529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48124 a!2862) j!93) mask!2687) (select (arr!48124 a!2862) j!93) a!2862 mask!2687) lt!651180))))

(assert (=> b!1494018 (= lt!651180 (Intermediate!12387 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494019 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99720 (_ BitVec 32)) SeekEntryResult!12387)

(assert (=> b!1494019 (= e!836897 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651182 lt!651184 mask!2687) (seekEntryOrOpen!0 lt!651182 lt!651184 mask!2687)))))

(assert (= (and start!127156 res!1016523) b!1494011))

(assert (= (and b!1494011 res!1016530) b!1494008))

(assert (= (and b!1494008 res!1016528) b!1494003))

(assert (= (and b!1494003 res!1016534) b!1494014))

(assert (= (and b!1494014 res!1016532) b!1494006))

(assert (= (and b!1494006 res!1016525) b!1494002))

(assert (= (and b!1494002 res!1016531) b!1494007))

(assert (= (and b!1494007 res!1016535) b!1494018))

(assert (= (and b!1494018 res!1016529) b!1494013))

(assert (= (and b!1494013 res!1016533) b!1494016))

(assert (= (and b!1494016 res!1016538) b!1494017))

(assert (= (and b!1494017 c!138272) b!1494010))

(assert (= (and b!1494017 (not c!138272)) b!1494019))

(assert (= (and b!1494017 res!1016524) b!1494009))

(assert (= (and b!1494009 res!1016536) b!1494004))

(assert (= (and b!1494004 res!1016537) b!1494015))

(assert (= (and b!1494015 res!1016526) b!1494005))

(assert (= (and b!1494004 (not res!1016527)) b!1494012))

(declare-fun m!1377819 () Bool)

(assert (=> b!1494014 m!1377819))

(declare-fun m!1377821 () Bool)

(assert (=> b!1494008 m!1377821))

(assert (=> b!1494008 m!1377821))

(declare-fun m!1377823 () Bool)

(assert (=> b!1494008 m!1377823))

(declare-fun m!1377825 () Bool)

(assert (=> b!1494018 m!1377825))

(assert (=> b!1494018 m!1377825))

(declare-fun m!1377827 () Bool)

(assert (=> b!1494018 m!1377827))

(assert (=> b!1494018 m!1377827))

(assert (=> b!1494018 m!1377825))

(declare-fun m!1377829 () Bool)

(assert (=> b!1494018 m!1377829))

(declare-fun m!1377831 () Bool)

(assert (=> b!1494012 m!1377831))

(assert (=> b!1494003 m!1377825))

(assert (=> b!1494003 m!1377825))

(declare-fun m!1377833 () Bool)

(assert (=> b!1494003 m!1377833))

(declare-fun m!1377835 () Bool)

(assert (=> b!1494005 m!1377835))

(assert (=> b!1494005 m!1377825))

(declare-fun m!1377837 () Bool)

(assert (=> b!1494004 m!1377837))

(declare-fun m!1377839 () Bool)

(assert (=> b!1494004 m!1377839))

(declare-fun m!1377841 () Bool)

(assert (=> b!1494004 m!1377841))

(declare-fun m!1377843 () Bool)

(assert (=> b!1494004 m!1377843))

(declare-fun m!1377845 () Bool)

(assert (=> b!1494004 m!1377845))

(assert (=> b!1494004 m!1377825))

(declare-fun m!1377847 () Bool)

(assert (=> b!1494019 m!1377847))

(declare-fun m!1377849 () Bool)

(assert (=> b!1494019 m!1377849))

(declare-fun m!1377851 () Bool)

(assert (=> b!1494010 m!1377851))

(assert (=> b!1494007 m!1377839))

(declare-fun m!1377853 () Bool)

(assert (=> b!1494007 m!1377853))

(declare-fun m!1377855 () Bool)

(assert (=> start!127156 m!1377855))

(declare-fun m!1377857 () Bool)

(assert (=> start!127156 m!1377857))

(declare-fun m!1377859 () Bool)

(assert (=> b!1494016 m!1377859))

(assert (=> b!1494016 m!1377859))

(declare-fun m!1377861 () Bool)

(assert (=> b!1494016 m!1377861))

(assert (=> b!1494016 m!1377839))

(declare-fun m!1377863 () Bool)

(assert (=> b!1494016 m!1377863))

(declare-fun m!1377865 () Bool)

(assert (=> b!1494006 m!1377865))

(assert (=> b!1494015 m!1377825))

(assert (=> b!1494015 m!1377825))

(declare-fun m!1377867 () Bool)

(assert (=> b!1494015 m!1377867))

(assert (=> b!1494013 m!1377825))

(assert (=> b!1494013 m!1377825))

(declare-fun m!1377869 () Bool)

(assert (=> b!1494013 m!1377869))

(push 1)

