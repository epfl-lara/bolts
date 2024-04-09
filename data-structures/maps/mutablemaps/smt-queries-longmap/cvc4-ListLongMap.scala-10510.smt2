; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123920 () Bool)

(assert start!123920)

(declare-fun b!1435620 () Bool)

(declare-fun res!968743 () Bool)

(declare-fun e!810224 () Bool)

(assert (=> b!1435620 (=> (not res!968743) (not e!810224))))

(declare-datatypes ((array!97582 0))(
  ( (array!97583 (arr!47088 (Array (_ BitVec 32) (_ BitVec 64))) (size!47639 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97582)

(declare-datatypes ((List!33778 0))(
  ( (Nil!33775) (Cons!33774 (h!35109 (_ BitVec 64)) (t!48479 List!33778)) )
))
(declare-fun arrayNoDuplicates!0 (array!97582 (_ BitVec 32) List!33778) Bool)

(assert (=> b!1435620 (= res!968743 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33775))))

(declare-fun b!1435621 () Bool)

(declare-fun res!968745 () Bool)

(assert (=> b!1435621 (=> (not res!968745) (not e!810224))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435621 (= res!968745 (validKeyInArray!0 (select (arr!47088 a!2831) i!982)))))

(declare-fun b!1435623 () Bool)

(declare-fun e!810223 () Bool)

(assert (=> b!1435623 (= e!810223 true)))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435623 (and (not undefinedAfter!5) (= intermediateAfterIndex!13 i!982) (bvslt intermediateAfterX!13 intermediateBeforeX!13))))

(declare-datatypes ((Unit!48472 0))(
  ( (Unit!48473) )
))
(declare-fun lt!631930 () Unit!48472)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!631929 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!97582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!48472)

(assert (=> b!1435623 (= lt!631930 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2831 i!982 j!81 (bvadd #b00000000000000000000000000000001 x!605) lt!631929 intermediateBeforeX!13 intermediateBeforeIndex!13 intermediateAfterX!13 intermediateAfterIndex!13 undefinedAfter!5 mask!2608))))

(declare-fun b!1435624 () Bool)

(declare-fun res!968742 () Bool)

(assert (=> b!1435624 (=> res!968742 e!810223)))

(declare-fun lt!631925 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11389 0))(
  ( (MissingZero!11389 (index!47947 (_ BitVec 32))) (Found!11389 (index!47948 (_ BitVec 32))) (Intermediate!11389 (undefined!12201 Bool) (index!47949 (_ BitVec 32)) (x!129614 (_ BitVec 32))) (Undefined!11389) (MissingVacant!11389 (index!47950 (_ BitVec 32))) )
))
(declare-fun lt!631926 () SeekEntryResult!11389)

(declare-fun lt!631927 () array!97582)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97582 (_ BitVec 32)) SeekEntryResult!11389)

(assert (=> b!1435624 (= res!968742 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631929 lt!631925 lt!631927 mask!2608) lt!631926)))))

(declare-fun b!1435625 () Bool)

(declare-fun e!810225 () Bool)

(declare-fun e!810221 () Bool)

(assert (=> b!1435625 (= e!810225 (not e!810221))))

(declare-fun res!968741 () Bool)

(assert (=> b!1435625 (=> res!968741 e!810221)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1435625 (= res!968741 (or (= (select (arr!47088 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47088 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47088 a!2831) index!585) (select (arr!47088 a!2831) j!81)) (= (select (store (arr!47088 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!810226 () Bool)

(assert (=> b!1435625 e!810226))

(declare-fun res!968739 () Bool)

(assert (=> b!1435625 (=> (not res!968739) (not e!810226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97582 (_ BitVec 32)) Bool)

(assert (=> b!1435625 (= res!968739 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-fun lt!631928 () Unit!48472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48472)

(assert (=> b!1435625 (= lt!631928 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435626 () Bool)

(declare-fun e!810227 () Bool)

(assert (=> b!1435626 (= e!810227 e!810225)))

(declare-fun res!968736 () Bool)

(assert (=> b!1435626 (=> (not res!968736) (not e!810225))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435626 (= res!968736 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631925 mask!2608) lt!631925 lt!631927 mask!2608) lt!631926))))

(assert (=> b!1435626 (= lt!631926 (Intermediate!11389 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435626 (= lt!631925 (select (store (arr!47088 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435626 (= lt!631927 (array!97583 (store (arr!47088 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47639 a!2831)))))

(declare-fun b!1435627 () Bool)

(declare-fun res!968747 () Bool)

(assert (=> b!1435627 (=> (not res!968747) (not e!810224))))

(assert (=> b!1435627 (= res!968747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435628 () Bool)

(declare-fun res!968737 () Bool)

(assert (=> b!1435628 (=> (not res!968737) (not e!810224))))

(assert (=> b!1435628 (= res!968737 (and (= (size!47639 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47639 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47639 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435629 () Bool)

(declare-fun res!968746 () Bool)

(assert (=> b!1435629 (=> res!968746 e!810223)))

(declare-fun lt!631924 () SeekEntryResult!11389)

(assert (=> b!1435629 (= res!968746 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631929 (select (arr!47088 a!2831) j!81) a!2831 mask!2608) lt!631924)))))

(declare-fun b!1435630 () Bool)

(assert (=> b!1435630 (= e!810224 e!810227)))

(declare-fun res!968735 () Bool)

(assert (=> b!1435630 (=> (not res!968735) (not e!810227))))

(assert (=> b!1435630 (= res!968735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47088 a!2831) j!81) mask!2608) (select (arr!47088 a!2831) j!81) a!2831 mask!2608) lt!631924))))

(assert (=> b!1435630 (= lt!631924 (Intermediate!11389 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435631 () Bool)

(declare-fun res!968744 () Bool)

(assert (=> b!1435631 (=> (not res!968744) (not e!810225))))

(assert (=> b!1435631 (= res!968744 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47088 a!2831) j!81) a!2831 mask!2608) lt!631924))))

(declare-fun b!1435632 () Bool)

(declare-fun res!968738 () Bool)

(assert (=> b!1435632 (=> (not res!968738) (not e!810225))))

(assert (=> b!1435632 (= res!968738 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631925 lt!631927 mask!2608) lt!631926))))

(declare-fun res!968748 () Bool)

(assert (=> start!123920 (=> (not res!968748) (not e!810224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123920 (= res!968748 (validMask!0 mask!2608))))

(assert (=> start!123920 e!810224))

(assert (=> start!123920 true))

(declare-fun array_inv!36033 (array!97582) Bool)

(assert (=> start!123920 (array_inv!36033 a!2831)))

(declare-fun b!1435622 () Bool)

(assert (=> b!1435622 (= e!810221 e!810223)))

(declare-fun res!968740 () Bool)

(assert (=> b!1435622 (=> res!968740 e!810223)))

(assert (=> b!1435622 (= res!968740 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631929 #b00000000000000000000000000000000) (bvsge lt!631929 (size!47639 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435622 (= lt!631929 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435633 () Bool)

(declare-fun res!968751 () Bool)

(assert (=> b!1435633 (=> (not res!968751) (not e!810224))))

(assert (=> b!1435633 (= res!968751 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47639 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47639 a!2831))))))

(declare-fun b!1435634 () Bool)

(declare-fun res!968749 () Bool)

(assert (=> b!1435634 (=> (not res!968749) (not e!810224))))

(assert (=> b!1435634 (= res!968749 (validKeyInArray!0 (select (arr!47088 a!2831) j!81)))))

(declare-fun b!1435635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97582 (_ BitVec 32)) SeekEntryResult!11389)

(assert (=> b!1435635 (= e!810226 (= (seekEntryOrOpen!0 (select (arr!47088 a!2831) j!81) a!2831 mask!2608) (Found!11389 j!81)))))

(declare-fun b!1435636 () Bool)

(declare-fun res!968750 () Bool)

(assert (=> b!1435636 (=> (not res!968750) (not e!810225))))

(assert (=> b!1435636 (= res!968750 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123920 res!968748) b!1435628))

(assert (= (and b!1435628 res!968737) b!1435621))

(assert (= (and b!1435621 res!968745) b!1435634))

(assert (= (and b!1435634 res!968749) b!1435627))

(assert (= (and b!1435627 res!968747) b!1435620))

(assert (= (and b!1435620 res!968743) b!1435633))

(assert (= (and b!1435633 res!968751) b!1435630))

(assert (= (and b!1435630 res!968735) b!1435626))

(assert (= (and b!1435626 res!968736) b!1435631))

(assert (= (and b!1435631 res!968744) b!1435632))

(assert (= (and b!1435632 res!968738) b!1435636))

(assert (= (and b!1435636 res!968750) b!1435625))

(assert (= (and b!1435625 res!968739) b!1435635))

(assert (= (and b!1435625 (not res!968741)) b!1435622))

(assert (= (and b!1435622 (not res!968740)) b!1435629))

(assert (= (and b!1435629 (not res!968746)) b!1435624))

(assert (= (and b!1435624 (not res!968742)) b!1435623))

(declare-fun m!1325025 () Bool)

(assert (=> b!1435624 m!1325025))

(declare-fun m!1325027 () Bool)

(assert (=> b!1435623 m!1325027))

(declare-fun m!1325029 () Bool)

(assert (=> b!1435635 m!1325029))

(assert (=> b!1435635 m!1325029))

(declare-fun m!1325031 () Bool)

(assert (=> b!1435635 m!1325031))

(declare-fun m!1325033 () Bool)

(assert (=> b!1435621 m!1325033))

(assert (=> b!1435621 m!1325033))

(declare-fun m!1325035 () Bool)

(assert (=> b!1435621 m!1325035))

(assert (=> b!1435634 m!1325029))

(assert (=> b!1435634 m!1325029))

(declare-fun m!1325037 () Bool)

(assert (=> b!1435634 m!1325037))

(declare-fun m!1325039 () Bool)

(assert (=> b!1435620 m!1325039))

(declare-fun m!1325041 () Bool)

(assert (=> b!1435625 m!1325041))

(declare-fun m!1325043 () Bool)

(assert (=> b!1435625 m!1325043))

(declare-fun m!1325045 () Bool)

(assert (=> b!1435625 m!1325045))

(declare-fun m!1325047 () Bool)

(assert (=> b!1435625 m!1325047))

(assert (=> b!1435625 m!1325029))

(declare-fun m!1325049 () Bool)

(assert (=> b!1435625 m!1325049))

(declare-fun m!1325051 () Bool)

(assert (=> b!1435626 m!1325051))

(assert (=> b!1435626 m!1325051))

(declare-fun m!1325053 () Bool)

(assert (=> b!1435626 m!1325053))

(assert (=> b!1435626 m!1325041))

(declare-fun m!1325055 () Bool)

(assert (=> b!1435626 m!1325055))

(declare-fun m!1325057 () Bool)

(assert (=> start!123920 m!1325057))

(declare-fun m!1325059 () Bool)

(assert (=> start!123920 m!1325059))

(declare-fun m!1325061 () Bool)

(assert (=> b!1435632 m!1325061))

(declare-fun m!1325063 () Bool)

(assert (=> b!1435627 m!1325063))

(assert (=> b!1435629 m!1325029))

(assert (=> b!1435629 m!1325029))

(declare-fun m!1325065 () Bool)

(assert (=> b!1435629 m!1325065))

(declare-fun m!1325067 () Bool)

(assert (=> b!1435622 m!1325067))

(assert (=> b!1435631 m!1325029))

(assert (=> b!1435631 m!1325029))

(declare-fun m!1325069 () Bool)

(assert (=> b!1435631 m!1325069))

(assert (=> b!1435630 m!1325029))

(assert (=> b!1435630 m!1325029))

(declare-fun m!1325071 () Bool)

(assert (=> b!1435630 m!1325071))

(assert (=> b!1435630 m!1325071))

(assert (=> b!1435630 m!1325029))

(declare-fun m!1325073 () Bool)

(assert (=> b!1435630 m!1325073))

(push 1)

