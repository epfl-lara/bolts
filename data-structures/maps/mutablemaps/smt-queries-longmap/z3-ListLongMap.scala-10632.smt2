; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124974 () Bool)

(assert start!124974)

(declare-fun res!983027 () Bool)

(declare-fun e!817353 () Bool)

(assert (=> start!124974 (=> (not res!983027) (not e!817353))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124974 (= res!983027 (validMask!0 mask!2687))))

(assert (=> start!124974 e!817353))

(assert (=> start!124974 true))

(declare-datatypes ((array!98339 0))(
  ( (array!98340 (arr!47453 (Array (_ BitVec 32) (_ BitVec 64))) (size!48004 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98339)

(declare-fun array_inv!36398 (array!98339) Bool)

(assert (=> start!124974 (array_inv!36398 a!2862)))

(declare-fun b!1451712 () Bool)

(declare-fun e!817354 () Bool)

(declare-fun e!817356 () Bool)

(assert (=> b!1451712 (= e!817354 e!817356)))

(declare-fun res!983024 () Bool)

(assert (=> b!1451712 (=> (not res!983024) (not e!817356))))

(declare-datatypes ((SeekEntryResult!11728 0))(
  ( (MissingZero!11728 (index!49303 (_ BitVec 32))) (Found!11728 (index!49304 (_ BitVec 32))) (Intermediate!11728 (undefined!12540 Bool) (index!49305 (_ BitVec 32)) (x!130956 (_ BitVec 32))) (Undefined!11728) (MissingVacant!11728 (index!49306 (_ BitVec 32))) )
))
(declare-fun lt!636696 () SeekEntryResult!11728)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451712 (= res!983024 (= lt!636696 (Intermediate!11728 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636693 () (_ BitVec 64))

(declare-fun lt!636697 () array!98339)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98339 (_ BitVec 32)) SeekEntryResult!11728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451712 (= lt!636696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636693 mask!2687) lt!636693 lt!636697 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451712 (= lt!636693 (select (store (arr!47453 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451713 () Bool)

(declare-fun res!983018 () Bool)

(assert (=> b!1451713 (=> (not res!983018) (not e!817353))))

(assert (=> b!1451713 (= res!983018 (and (= (size!48004 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48004 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48004 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451714 () Bool)

(declare-fun res!983026 () Bool)

(assert (=> b!1451714 (=> (not res!983026) (not e!817353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98339 (_ BitVec 32)) Bool)

(assert (=> b!1451714 (= res!983026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451715 () Bool)

(assert (=> b!1451715 (= e!817356 (not true))))

(declare-fun e!817358 () Bool)

(assert (=> b!1451715 e!817358))

(declare-fun res!983023 () Bool)

(assert (=> b!1451715 (=> (not res!983023) (not e!817358))))

(assert (=> b!1451715 (= res!983023 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48900 0))(
  ( (Unit!48901) )
))
(declare-fun lt!636695 () Unit!48900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48900)

(assert (=> b!1451715 (= lt!636695 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451716 () Bool)

(declare-fun res!983028 () Bool)

(assert (=> b!1451716 (=> (not res!983028) (not e!817356))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451716 (= res!983028 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451717 () Bool)

(declare-fun res!983014 () Bool)

(assert (=> b!1451717 (=> (not res!983014) (not e!817353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451717 (= res!983014 (validKeyInArray!0 (select (arr!47453 a!2862) j!93)))))

(declare-fun b!1451718 () Bool)

(declare-fun res!983025 () Bool)

(assert (=> b!1451718 (=> (not res!983025) (not e!817353))))

(assert (=> b!1451718 (= res!983025 (validKeyInArray!0 (select (arr!47453 a!2862) i!1006)))))

(declare-fun b!1451719 () Bool)

(declare-fun e!817357 () Bool)

(assert (=> b!1451719 (= e!817353 e!817357)))

(declare-fun res!983017 () Bool)

(assert (=> b!1451719 (=> (not res!983017) (not e!817357))))

(assert (=> b!1451719 (= res!983017 (= (select (store (arr!47453 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451719 (= lt!636697 (array!98340 (store (arr!47453 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48004 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1451720 () Bool)

(assert (=> b!1451720 (= e!817358 (and (or (= (select (arr!47453 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47453 a!2862) intermediateBeforeIndex!19) (select (arr!47453 a!2862) j!93))) (or (and (= (select (arr!47453 a!2862) index!646) (select (store (arr!47453 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47453 a!2862) index!646) (select (arr!47453 a!2862) j!93))) (= (select (arr!47453 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47453 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451721 () Bool)

(declare-fun res!983015 () Bool)

(assert (=> b!1451721 (=> (not res!983015) (not e!817353))))

(declare-datatypes ((List!34134 0))(
  ( (Nil!34131) (Cons!34130 (h!35480 (_ BitVec 64)) (t!48835 List!34134)) )
))
(declare-fun arrayNoDuplicates!0 (array!98339 (_ BitVec 32) List!34134) Bool)

(assert (=> b!1451721 (= res!983015 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34131))))

(declare-fun b!1451722 () Bool)

(declare-fun res!983019 () Bool)

(assert (=> b!1451722 (=> (not res!983019) (not e!817356))))

(declare-fun e!817352 () Bool)

(assert (=> b!1451722 (= res!983019 e!817352)))

(declare-fun c!133862 () Bool)

(assert (=> b!1451722 (= c!133862 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451723 () Bool)

(declare-fun res!983021 () Bool)

(assert (=> b!1451723 (=> (not res!983021) (not e!817354))))

(declare-fun lt!636694 () SeekEntryResult!11728)

(assert (=> b!1451723 (= res!983021 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47453 a!2862) j!93) a!2862 mask!2687) lt!636694))))

(declare-fun b!1451724 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98339 (_ BitVec 32)) SeekEntryResult!11728)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98339 (_ BitVec 32)) SeekEntryResult!11728)

(assert (=> b!1451724 (= e!817352 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636693 lt!636697 mask!2687) (seekEntryOrOpen!0 lt!636693 lt!636697 mask!2687)))))

(declare-fun b!1451725 () Bool)

(declare-fun res!983020 () Bool)

(assert (=> b!1451725 (=> (not res!983020) (not e!817353))))

(assert (=> b!1451725 (= res!983020 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48004 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48004 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48004 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451726 () Bool)

(declare-fun res!983022 () Bool)

(assert (=> b!1451726 (=> (not res!983022) (not e!817358))))

(assert (=> b!1451726 (= res!983022 (= (seekEntryOrOpen!0 (select (arr!47453 a!2862) j!93) a!2862 mask!2687) (Found!11728 j!93)))))

(declare-fun b!1451727 () Bool)

(assert (=> b!1451727 (= e!817352 (= lt!636696 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636693 lt!636697 mask!2687)))))

(declare-fun b!1451728 () Bool)

(assert (=> b!1451728 (= e!817357 e!817354)))

(declare-fun res!983016 () Bool)

(assert (=> b!1451728 (=> (not res!983016) (not e!817354))))

(assert (=> b!1451728 (= res!983016 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47453 a!2862) j!93) mask!2687) (select (arr!47453 a!2862) j!93) a!2862 mask!2687) lt!636694))))

(assert (=> b!1451728 (= lt!636694 (Intermediate!11728 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124974 res!983027) b!1451713))

(assert (= (and b!1451713 res!983018) b!1451718))

(assert (= (and b!1451718 res!983025) b!1451717))

(assert (= (and b!1451717 res!983014) b!1451714))

(assert (= (and b!1451714 res!983026) b!1451721))

(assert (= (and b!1451721 res!983015) b!1451725))

(assert (= (and b!1451725 res!983020) b!1451719))

(assert (= (and b!1451719 res!983017) b!1451728))

(assert (= (and b!1451728 res!983016) b!1451723))

(assert (= (and b!1451723 res!983021) b!1451712))

(assert (= (and b!1451712 res!983024) b!1451722))

(assert (= (and b!1451722 c!133862) b!1451727))

(assert (= (and b!1451722 (not c!133862)) b!1451724))

(assert (= (and b!1451722 res!983019) b!1451716))

(assert (= (and b!1451716 res!983028) b!1451715))

(assert (= (and b!1451715 res!983023) b!1451726))

(assert (= (and b!1451726 res!983022) b!1451720))

(declare-fun m!1340357 () Bool)

(assert (=> b!1451724 m!1340357))

(declare-fun m!1340359 () Bool)

(assert (=> b!1451724 m!1340359))

(declare-fun m!1340361 () Bool)

(assert (=> b!1451726 m!1340361))

(assert (=> b!1451726 m!1340361))

(declare-fun m!1340363 () Bool)

(assert (=> b!1451726 m!1340363))

(declare-fun m!1340365 () Bool)

(assert (=> b!1451718 m!1340365))

(assert (=> b!1451718 m!1340365))

(declare-fun m!1340367 () Bool)

(assert (=> b!1451718 m!1340367))

(declare-fun m!1340369 () Bool)

(assert (=> start!124974 m!1340369))

(declare-fun m!1340371 () Bool)

(assert (=> start!124974 m!1340371))

(assert (=> b!1451723 m!1340361))

(assert (=> b!1451723 m!1340361))

(declare-fun m!1340373 () Bool)

(assert (=> b!1451723 m!1340373))

(assert (=> b!1451717 m!1340361))

(assert (=> b!1451717 m!1340361))

(declare-fun m!1340375 () Bool)

(assert (=> b!1451717 m!1340375))

(declare-fun m!1340377 () Bool)

(assert (=> b!1451719 m!1340377))

(declare-fun m!1340379 () Bool)

(assert (=> b!1451719 m!1340379))

(assert (=> b!1451720 m!1340377))

(declare-fun m!1340381 () Bool)

(assert (=> b!1451720 m!1340381))

(declare-fun m!1340383 () Bool)

(assert (=> b!1451720 m!1340383))

(declare-fun m!1340385 () Bool)

(assert (=> b!1451720 m!1340385))

(assert (=> b!1451720 m!1340361))

(declare-fun m!1340387 () Bool)

(assert (=> b!1451712 m!1340387))

(assert (=> b!1451712 m!1340387))

(declare-fun m!1340389 () Bool)

(assert (=> b!1451712 m!1340389))

(assert (=> b!1451712 m!1340377))

(declare-fun m!1340391 () Bool)

(assert (=> b!1451712 m!1340391))

(assert (=> b!1451728 m!1340361))

(assert (=> b!1451728 m!1340361))

(declare-fun m!1340393 () Bool)

(assert (=> b!1451728 m!1340393))

(assert (=> b!1451728 m!1340393))

(assert (=> b!1451728 m!1340361))

(declare-fun m!1340395 () Bool)

(assert (=> b!1451728 m!1340395))

(declare-fun m!1340397 () Bool)

(assert (=> b!1451727 m!1340397))

(declare-fun m!1340399 () Bool)

(assert (=> b!1451714 m!1340399))

(declare-fun m!1340401 () Bool)

(assert (=> b!1451721 m!1340401))

(declare-fun m!1340403 () Bool)

(assert (=> b!1451715 m!1340403))

(declare-fun m!1340405 () Bool)

(assert (=> b!1451715 m!1340405))

(check-sat (not b!1451728) (not b!1451727) (not b!1451718) (not start!124974) (not b!1451717) (not b!1451721) (not b!1451715) (not b!1451712) (not b!1451723) (not b!1451724) (not b!1451714) (not b!1451726))
(check-sat)
