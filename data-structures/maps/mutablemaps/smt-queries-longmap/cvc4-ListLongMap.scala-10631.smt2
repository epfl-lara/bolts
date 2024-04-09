; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124970 () Bool)

(assert start!124970)

(declare-fun b!1451609 () Bool)

(declare-fun e!817312 () Bool)

(declare-fun e!817311 () Bool)

(assert (=> b!1451609 (= e!817312 (not e!817311))))

(declare-fun res!982923 () Bool)

(assert (=> b!1451609 (=> res!982923 e!817311)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98335 0))(
  ( (array!98336 (arr!47451 (Array (_ BitVec 32) (_ BitVec 64))) (size!48002 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98335)

(assert (=> b!1451609 (= res!982923 (or (and (= (select (arr!47451 a!2862) index!646) (select (store (arr!47451 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47451 a!2862) index!646) (select (arr!47451 a!2862) j!93))) (= (select (arr!47451 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun e!817316 () Bool)

(assert (=> b!1451609 e!817316))

(declare-fun res!982933 () Bool)

(assert (=> b!1451609 (=> (not res!982933) (not e!817316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98335 (_ BitVec 32)) Bool)

(assert (=> b!1451609 (= res!982933 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48896 0))(
  ( (Unit!48897) )
))
(declare-fun lt!636666 () Unit!48896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48896)

(assert (=> b!1451609 (= lt!636666 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!982932 () Bool)

(declare-fun e!817313 () Bool)

(assert (=> start!124970 (=> (not res!982932) (not e!817313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124970 (= res!982932 (validMask!0 mask!2687))))

(assert (=> start!124970 e!817313))

(assert (=> start!124970 true))

(declare-fun array_inv!36396 (array!98335) Bool)

(assert (=> start!124970 (array_inv!36396 a!2862)))

(declare-fun b!1451610 () Bool)

(declare-fun res!982924 () Bool)

(assert (=> b!1451610 (=> (not res!982924) (not e!817313))))

(assert (=> b!1451610 (= res!982924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451611 () Bool)

(declare-fun res!982937 () Bool)

(assert (=> b!1451611 (=> (not res!982937) (not e!817316))))

(declare-datatypes ((SeekEntryResult!11726 0))(
  ( (MissingZero!11726 (index!49295 (_ BitVec 32))) (Found!11726 (index!49296 (_ BitVec 32))) (Intermediate!11726 (undefined!12538 Bool) (index!49297 (_ BitVec 32)) (x!130946 (_ BitVec 32))) (Undefined!11726) (MissingVacant!11726 (index!49298 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98335 (_ BitVec 32)) SeekEntryResult!11726)

(assert (=> b!1451611 (= res!982937 (= (seekEntryOrOpen!0 (select (arr!47451 a!2862) j!93) a!2862 mask!2687) (Found!11726 j!93)))))

(declare-fun b!1451612 () Bool)

(declare-fun res!982925 () Bool)

(assert (=> b!1451612 (=> (not res!982925) (not e!817313))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451612 (= res!982925 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48002 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48002 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48002 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451613 () Bool)

(declare-fun res!982929 () Bool)

(assert (=> b!1451613 (=> (not res!982929) (not e!817313))))

(declare-datatypes ((List!34132 0))(
  ( (Nil!34129) (Cons!34128 (h!35478 (_ BitVec 64)) (t!48833 List!34132)) )
))
(declare-fun arrayNoDuplicates!0 (array!98335 (_ BitVec 32) List!34132) Bool)

(assert (=> b!1451613 (= res!982929 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34129))))

(declare-fun b!1451614 () Bool)

(declare-fun res!982935 () Bool)

(declare-fun e!817309 () Bool)

(assert (=> b!1451614 (=> (not res!982935) (not e!817309))))

(declare-fun lt!636667 () SeekEntryResult!11726)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98335 (_ BitVec 32)) SeekEntryResult!11726)

(assert (=> b!1451614 (= res!982935 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47451 a!2862) j!93) a!2862 mask!2687) lt!636667))))

(declare-fun b!1451615 () Bool)

(declare-fun res!982927 () Bool)

(assert (=> b!1451615 (=> (not res!982927) (not e!817312))))

(declare-fun e!817310 () Bool)

(assert (=> b!1451615 (= res!982927 e!817310)))

(declare-fun c!133856 () Bool)

(assert (=> b!1451615 (= c!133856 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!636665 () array!98335)

(declare-fun lt!636663 () SeekEntryResult!11726)

(declare-fun b!1451616 () Bool)

(declare-fun lt!636664 () (_ BitVec 64))

(assert (=> b!1451616 (= e!817310 (= lt!636663 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636664 lt!636665 mask!2687)))))

(declare-fun b!1451617 () Bool)

(declare-fun res!982934 () Bool)

(assert (=> b!1451617 (=> (not res!982934) (not e!817312))))

(assert (=> b!1451617 (= res!982934 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451618 () Bool)

(declare-fun e!817314 () Bool)

(assert (=> b!1451618 (= e!817313 e!817314)))

(declare-fun res!982938 () Bool)

(assert (=> b!1451618 (=> (not res!982938) (not e!817314))))

(assert (=> b!1451618 (= res!982938 (= (select (store (arr!47451 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451618 (= lt!636665 (array!98336 (store (arr!47451 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48002 a!2862)))))

(declare-fun b!1451619 () Bool)

(declare-fun res!982926 () Bool)

(assert (=> b!1451619 (=> (not res!982926) (not e!817313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451619 (= res!982926 (validKeyInArray!0 (select (arr!47451 a!2862) i!1006)))))

(declare-fun b!1451620 () Bool)

(assert (=> b!1451620 (= e!817309 e!817312)))

(declare-fun res!982936 () Bool)

(assert (=> b!1451620 (=> (not res!982936) (not e!817312))))

(assert (=> b!1451620 (= res!982936 (= lt!636663 (Intermediate!11726 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451620 (= lt!636663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636664 mask!2687) lt!636664 lt!636665 mask!2687))))

(assert (=> b!1451620 (= lt!636664 (select (store (arr!47451 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451621 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98335 (_ BitVec 32)) SeekEntryResult!11726)

(assert (=> b!1451621 (= e!817310 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636664 lt!636665 mask!2687) (seekEntryOrOpen!0 lt!636664 lt!636665 mask!2687)))))

(declare-fun b!1451622 () Bool)

(assert (=> b!1451622 (= e!817314 e!817309)))

(declare-fun res!982931 () Bool)

(assert (=> b!1451622 (=> (not res!982931) (not e!817309))))

(assert (=> b!1451622 (= res!982931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47451 a!2862) j!93) mask!2687) (select (arr!47451 a!2862) j!93) a!2862 mask!2687) lt!636667))))

(assert (=> b!1451622 (= lt!636667 (Intermediate!11726 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451623 () Bool)

(declare-fun res!982930 () Bool)

(assert (=> b!1451623 (=> (not res!982930) (not e!817313))))

(assert (=> b!1451623 (= res!982930 (and (= (size!48002 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48002 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48002 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451624 () Bool)

(declare-fun res!982928 () Bool)

(assert (=> b!1451624 (=> (not res!982928) (not e!817313))))

(assert (=> b!1451624 (= res!982928 (validKeyInArray!0 (select (arr!47451 a!2862) j!93)))))

(declare-fun b!1451625 () Bool)

(assert (=> b!1451625 (= e!817316 (and (or (= (select (arr!47451 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47451 a!2862) intermediateBeforeIndex!19) (select (arr!47451 a!2862) j!93))) (or (and (= (select (arr!47451 a!2862) index!646) (select (store (arr!47451 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47451 a!2862) index!646) (select (arr!47451 a!2862) j!93))) (= (select (arr!47451 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47451 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451626 () Bool)

(assert (=> b!1451626 (= e!817311 (validKeyInArray!0 lt!636664))))

(assert (= (and start!124970 res!982932) b!1451623))

(assert (= (and b!1451623 res!982930) b!1451619))

(assert (= (and b!1451619 res!982926) b!1451624))

(assert (= (and b!1451624 res!982928) b!1451610))

(assert (= (and b!1451610 res!982924) b!1451613))

(assert (= (and b!1451613 res!982929) b!1451612))

(assert (= (and b!1451612 res!982925) b!1451618))

(assert (= (and b!1451618 res!982938) b!1451622))

(assert (= (and b!1451622 res!982931) b!1451614))

(assert (= (and b!1451614 res!982935) b!1451620))

(assert (= (and b!1451620 res!982936) b!1451615))

(assert (= (and b!1451615 c!133856) b!1451616))

(assert (= (and b!1451615 (not c!133856)) b!1451621))

(assert (= (and b!1451615 res!982927) b!1451617))

(assert (= (and b!1451617 res!982934) b!1451609))

(assert (= (and b!1451609 res!982933) b!1451611))

(assert (= (and b!1451611 res!982937) b!1451625))

(assert (= (and b!1451609 (not res!982923)) b!1451626))

(declare-fun m!1340255 () Bool)

(assert (=> b!1451626 m!1340255))

(declare-fun m!1340257 () Bool)

(assert (=> b!1451614 m!1340257))

(assert (=> b!1451614 m!1340257))

(declare-fun m!1340259 () Bool)

(assert (=> b!1451614 m!1340259))

(assert (=> b!1451611 m!1340257))

(assert (=> b!1451611 m!1340257))

(declare-fun m!1340261 () Bool)

(assert (=> b!1451611 m!1340261))

(declare-fun m!1340263 () Bool)

(assert (=> b!1451613 m!1340263))

(declare-fun m!1340265 () Bool)

(assert (=> b!1451619 m!1340265))

(assert (=> b!1451619 m!1340265))

(declare-fun m!1340267 () Bool)

(assert (=> b!1451619 m!1340267))

(declare-fun m!1340269 () Bool)

(assert (=> b!1451621 m!1340269))

(declare-fun m!1340271 () Bool)

(assert (=> b!1451621 m!1340271))

(declare-fun m!1340273 () Bool)

(assert (=> b!1451618 m!1340273))

(declare-fun m!1340275 () Bool)

(assert (=> b!1451618 m!1340275))

(declare-fun m!1340277 () Bool)

(assert (=> b!1451610 m!1340277))

(declare-fun m!1340279 () Bool)

(assert (=> b!1451609 m!1340279))

(assert (=> b!1451609 m!1340273))

(declare-fun m!1340281 () Bool)

(assert (=> b!1451609 m!1340281))

(declare-fun m!1340283 () Bool)

(assert (=> b!1451609 m!1340283))

(declare-fun m!1340285 () Bool)

(assert (=> b!1451609 m!1340285))

(assert (=> b!1451609 m!1340257))

(assert (=> b!1451624 m!1340257))

(assert (=> b!1451624 m!1340257))

(declare-fun m!1340287 () Bool)

(assert (=> b!1451624 m!1340287))

(declare-fun m!1340289 () Bool)

(assert (=> b!1451620 m!1340289))

(assert (=> b!1451620 m!1340289))

(declare-fun m!1340291 () Bool)

(assert (=> b!1451620 m!1340291))

(assert (=> b!1451620 m!1340273))

(declare-fun m!1340293 () Bool)

(assert (=> b!1451620 m!1340293))

(declare-fun m!1340295 () Bool)

(assert (=> start!124970 m!1340295))

(declare-fun m!1340297 () Bool)

(assert (=> start!124970 m!1340297))

(assert (=> b!1451625 m!1340273))

(declare-fun m!1340299 () Bool)

(assert (=> b!1451625 m!1340299))

(assert (=> b!1451625 m!1340281))

(assert (=> b!1451625 m!1340283))

(assert (=> b!1451625 m!1340257))

(assert (=> b!1451622 m!1340257))

(assert (=> b!1451622 m!1340257))

(declare-fun m!1340301 () Bool)

(assert (=> b!1451622 m!1340301))

(assert (=> b!1451622 m!1340301))

(assert (=> b!1451622 m!1340257))

(declare-fun m!1340303 () Bool)

(assert (=> b!1451622 m!1340303))

(declare-fun m!1340305 () Bool)

(assert (=> b!1451616 m!1340305))

(push 1)

