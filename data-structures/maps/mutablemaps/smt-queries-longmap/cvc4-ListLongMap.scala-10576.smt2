; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124640 () Bool)

(assert start!124640)

(declare-fun b!1442556 () Bool)

(declare-fun res!974872 () Bool)

(declare-fun e!813046 () Bool)

(assert (=> b!1442556 (=> (not res!974872) (not e!813046))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442556 (= res!974872 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442557 () Bool)

(declare-fun e!813048 () Bool)

(declare-fun e!813047 () Bool)

(assert (=> b!1442557 (= e!813048 e!813047)))

(declare-fun res!974868 () Bool)

(assert (=> b!1442557 (=> (not res!974868) (not e!813047))))

(declare-datatypes ((array!98005 0))(
  ( (array!98006 (arr!47286 (Array (_ BitVec 32) (_ BitVec 64))) (size!47837 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98005)

(assert (=> b!1442557 (= res!974868 (= (select (store (arr!47286 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633559 () array!98005)

(assert (=> b!1442557 (= lt!633559 (array!98006 (store (arr!47286 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47837 a!2862)))))

(declare-fun b!1442558 () Bool)

(declare-fun res!974866 () Bool)

(assert (=> b!1442558 (=> (not res!974866) (not e!813048))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1442558 (= res!974866 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47837 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47837 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47837 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442559 () Bool)

(declare-fun res!974864 () Bool)

(assert (=> b!1442559 (=> (not res!974864) (not e!813048))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442559 (= res!974864 (validKeyInArray!0 (select (arr!47286 a!2862) j!93)))))

(declare-fun b!1442560 () Bool)

(declare-fun res!974873 () Bool)

(assert (=> b!1442560 (=> (not res!974873) (not e!813048))))

(assert (=> b!1442560 (= res!974873 (validKeyInArray!0 (select (arr!47286 a!2862) i!1006)))))

(declare-fun res!974863 () Bool)

(assert (=> start!124640 (=> (not res!974863) (not e!813048))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124640 (= res!974863 (validMask!0 mask!2687))))

(assert (=> start!124640 e!813048))

(assert (=> start!124640 true))

(declare-fun array_inv!36231 (array!98005) Bool)

(assert (=> start!124640 (array_inv!36231 a!2862)))

(declare-fun b!1442561 () Bool)

(assert (=> b!1442561 (= e!813046 (not true))))

(declare-fun e!813044 () Bool)

(assert (=> b!1442561 e!813044))

(declare-fun res!974874 () Bool)

(assert (=> b!1442561 (=> (not res!974874) (not e!813044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98005 (_ BitVec 32)) Bool)

(assert (=> b!1442561 (= res!974874 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48566 0))(
  ( (Unit!48567) )
))
(declare-fun lt!633562 () Unit!48566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48566)

(assert (=> b!1442561 (= lt!633562 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442562 () Bool)

(declare-fun e!813045 () Bool)

(assert (=> b!1442562 (= e!813045 e!813046)))

(declare-fun res!974862 () Bool)

(assert (=> b!1442562 (=> (not res!974862) (not e!813046))))

(declare-datatypes ((SeekEntryResult!11561 0))(
  ( (MissingZero!11561 (index!48635 (_ BitVec 32))) (Found!11561 (index!48636 (_ BitVec 32))) (Intermediate!11561 (undefined!12373 Bool) (index!48637 (_ BitVec 32)) (x!130341 (_ BitVec 32))) (Undefined!11561) (MissingVacant!11561 (index!48638 (_ BitVec 32))) )
))
(declare-fun lt!633558 () SeekEntryResult!11561)

(assert (=> b!1442562 (= res!974862 (= lt!633558 (Intermediate!11561 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633560 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98005 (_ BitVec 32)) SeekEntryResult!11561)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442562 (= lt!633558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633560 mask!2687) lt!633560 lt!633559 mask!2687))))

(assert (=> b!1442562 (= lt!633560 (select (store (arr!47286 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442563 () Bool)

(declare-fun res!974860 () Bool)

(assert (=> b!1442563 (=> (not res!974860) (not e!813048))))

(declare-datatypes ((List!33967 0))(
  ( (Nil!33964) (Cons!33963 (h!35313 (_ BitVec 64)) (t!48668 List!33967)) )
))
(declare-fun arrayNoDuplicates!0 (array!98005 (_ BitVec 32) List!33967) Bool)

(assert (=> b!1442563 (= res!974860 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33964))))

(declare-fun b!1442564 () Bool)

(declare-fun res!974870 () Bool)

(assert (=> b!1442564 (=> (not res!974870) (not e!813045))))

(declare-fun lt!633561 () SeekEntryResult!11561)

(assert (=> b!1442564 (= res!974870 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47286 a!2862) j!93) a!2862 mask!2687) lt!633561))))

(declare-fun b!1442565 () Bool)

(assert (=> b!1442565 (= e!813047 e!813045)))

(declare-fun res!974869 () Bool)

(assert (=> b!1442565 (=> (not res!974869) (not e!813045))))

(assert (=> b!1442565 (= res!974869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47286 a!2862) j!93) mask!2687) (select (arr!47286 a!2862) j!93) a!2862 mask!2687) lt!633561))))

(assert (=> b!1442565 (= lt!633561 (Intermediate!11561 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442566 () Bool)

(declare-fun e!813050 () Bool)

(assert (=> b!1442566 (= e!813050 (= lt!633558 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633560 lt!633559 mask!2687)))))

(declare-fun b!1442567 () Bool)

(declare-fun res!974861 () Bool)

(assert (=> b!1442567 (=> (not res!974861) (not e!813048))))

(assert (=> b!1442567 (= res!974861 (and (= (size!47837 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47837 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47837 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442568 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98005 (_ BitVec 32)) SeekEntryResult!11561)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98005 (_ BitVec 32)) SeekEntryResult!11561)

(assert (=> b!1442568 (= e!813050 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633560 lt!633559 mask!2687) (seekEntryOrOpen!0 lt!633560 lt!633559 mask!2687)))))

(declare-fun b!1442569 () Bool)

(declare-fun res!974867 () Bool)

(assert (=> b!1442569 (=> (not res!974867) (not e!813044))))

(assert (=> b!1442569 (= res!974867 (= (seekEntryOrOpen!0 (select (arr!47286 a!2862) j!93) a!2862 mask!2687) (Found!11561 j!93)))))

(declare-fun b!1442570 () Bool)

(declare-fun res!974865 () Bool)

(assert (=> b!1442570 (=> (not res!974865) (not e!813048))))

(assert (=> b!1442570 (= res!974865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442571 () Bool)

(assert (=> b!1442571 (= e!813044 (or (= (select (arr!47286 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47286 a!2862) intermediateBeforeIndex!19) (select (arr!47286 a!2862) j!93))))))

(declare-fun b!1442572 () Bool)

(declare-fun res!974871 () Bool)

(assert (=> b!1442572 (=> (not res!974871) (not e!813046))))

(assert (=> b!1442572 (= res!974871 e!813050)))

(declare-fun c!133361 () Bool)

(assert (=> b!1442572 (= c!133361 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124640 res!974863) b!1442567))

(assert (= (and b!1442567 res!974861) b!1442560))

(assert (= (and b!1442560 res!974873) b!1442559))

(assert (= (and b!1442559 res!974864) b!1442570))

(assert (= (and b!1442570 res!974865) b!1442563))

(assert (= (and b!1442563 res!974860) b!1442558))

(assert (= (and b!1442558 res!974866) b!1442557))

(assert (= (and b!1442557 res!974868) b!1442565))

(assert (= (and b!1442565 res!974869) b!1442564))

(assert (= (and b!1442564 res!974870) b!1442562))

(assert (= (and b!1442562 res!974862) b!1442572))

(assert (= (and b!1442572 c!133361) b!1442566))

(assert (= (and b!1442572 (not c!133361)) b!1442568))

(assert (= (and b!1442572 res!974871) b!1442556))

(assert (= (and b!1442556 res!974872) b!1442561))

(assert (= (and b!1442561 res!974874) b!1442569))

(assert (= (and b!1442569 res!974867) b!1442571))

(declare-fun m!1331747 () Bool)

(assert (=> b!1442557 m!1331747))

(declare-fun m!1331749 () Bool)

(assert (=> b!1442557 m!1331749))

(declare-fun m!1331751 () Bool)

(assert (=> b!1442570 m!1331751))

(declare-fun m!1331753 () Bool)

(assert (=> b!1442560 m!1331753))

(assert (=> b!1442560 m!1331753))

(declare-fun m!1331755 () Bool)

(assert (=> b!1442560 m!1331755))

(declare-fun m!1331757 () Bool)

(assert (=> b!1442561 m!1331757))

(declare-fun m!1331759 () Bool)

(assert (=> b!1442561 m!1331759))

(declare-fun m!1331761 () Bool)

(assert (=> b!1442562 m!1331761))

(assert (=> b!1442562 m!1331761))

(declare-fun m!1331763 () Bool)

(assert (=> b!1442562 m!1331763))

(assert (=> b!1442562 m!1331747))

(declare-fun m!1331765 () Bool)

(assert (=> b!1442562 m!1331765))

(declare-fun m!1331767 () Bool)

(assert (=> b!1442565 m!1331767))

(assert (=> b!1442565 m!1331767))

(declare-fun m!1331769 () Bool)

(assert (=> b!1442565 m!1331769))

(assert (=> b!1442565 m!1331769))

(assert (=> b!1442565 m!1331767))

(declare-fun m!1331771 () Bool)

(assert (=> b!1442565 m!1331771))

(declare-fun m!1331773 () Bool)

(assert (=> b!1442563 m!1331773))

(declare-fun m!1331775 () Bool)

(assert (=> start!124640 m!1331775))

(declare-fun m!1331777 () Bool)

(assert (=> start!124640 m!1331777))

(assert (=> b!1442564 m!1331767))

(assert (=> b!1442564 m!1331767))

(declare-fun m!1331779 () Bool)

(assert (=> b!1442564 m!1331779))

(assert (=> b!1442559 m!1331767))

(assert (=> b!1442559 m!1331767))

(declare-fun m!1331781 () Bool)

(assert (=> b!1442559 m!1331781))

(declare-fun m!1331783 () Bool)

(assert (=> b!1442566 m!1331783))

(declare-fun m!1331785 () Bool)

(assert (=> b!1442571 m!1331785))

(assert (=> b!1442571 m!1331767))

(declare-fun m!1331787 () Bool)

(assert (=> b!1442568 m!1331787))

(declare-fun m!1331789 () Bool)

(assert (=> b!1442568 m!1331789))

(assert (=> b!1442569 m!1331767))

(assert (=> b!1442569 m!1331767))

(declare-fun m!1331791 () Bool)

(assert (=> b!1442569 m!1331791))

(push 1)

(assert (not b!1442560))

(assert (not b!1442562))

(assert (not start!124640))

(assert (not b!1442570))

(assert (not b!1442561))

(assert (not b!1442569))

(assert (not b!1442566))

(assert (not b!1442565))

(assert (not b!1442564))

(assert (not b!1442559))

(assert (not b!1442563))

(assert (not b!1442568))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

