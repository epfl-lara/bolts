; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124934 () Bool)

(assert start!124934)

(declare-fun b!1450617 () Bool)

(declare-fun e!816857 () Bool)

(declare-fun e!816860 () Bool)

(assert (=> b!1450617 (= e!816857 e!816860)))

(declare-fun res!982051 () Bool)

(assert (=> b!1450617 (=> (not res!982051) (not e!816860))))

(declare-datatypes ((SeekEntryResult!11708 0))(
  ( (MissingZero!11708 (index!49223 (_ BitVec 32))) (Found!11708 (index!49224 (_ BitVec 32))) (Intermediate!11708 (undefined!12520 Bool) (index!49225 (_ BitVec 32)) (x!130880 (_ BitVec 32))) (Undefined!11708) (MissingVacant!11708 (index!49226 (_ BitVec 32))) )
))
(declare-fun lt!636336 () SeekEntryResult!11708)

(declare-datatypes ((array!98299 0))(
  ( (array!98300 (arr!47433 (Array (_ BitVec 32) (_ BitVec 64))) (size!47984 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98299)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98299 (_ BitVec 32)) SeekEntryResult!11708)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450617 (= res!982051 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47433 a!2862) j!93) mask!2687) (select (arr!47433 a!2862) j!93) a!2862 mask!2687) lt!636336))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450617 (= lt!636336 (Intermediate!11708 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450618 () Bool)

(declare-fun res!982055 () Bool)

(declare-fun e!816861 () Bool)

(assert (=> b!1450618 (=> (not res!982055) (not e!816861))))

(declare-fun e!816858 () Bool)

(assert (=> b!1450618 (= res!982055 e!816858)))

(declare-fun c!133802 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450618 (= c!133802 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450619 () Bool)

(declare-fun res!982052 () Bool)

(assert (=> b!1450619 (=> (not res!982052) (not e!816861))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450619 (= res!982052 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!982049 () Bool)

(declare-fun e!816865 () Bool)

(assert (=> start!124934 (=> (not res!982049) (not e!816865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124934 (= res!982049 (validMask!0 mask!2687))))

(assert (=> start!124934 e!816865))

(assert (=> start!124934 true))

(declare-fun array_inv!36378 (array!98299) Bool)

(assert (=> start!124934 (array_inv!36378 a!2862)))

(declare-fun b!1450620 () Bool)

(declare-fun res!982056 () Bool)

(assert (=> b!1450620 (=> (not res!982056) (not e!816865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450620 (= res!982056 (validKeyInArray!0 (select (arr!47433 a!2862) j!93)))))

(declare-fun b!1450621 () Bool)

(declare-fun res!982046 () Bool)

(assert (=> b!1450621 (=> (not res!982046) (not e!816865))))

(assert (=> b!1450621 (= res!982046 (validKeyInArray!0 (select (arr!47433 a!2862) i!1006)))))

(declare-fun b!1450622 () Bool)

(declare-fun res!982041 () Bool)

(assert (=> b!1450622 (=> (not res!982041) (not e!816865))))

(assert (=> b!1450622 (= res!982041 (and (= (size!47984 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47984 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47984 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450623 () Bool)

(declare-fun e!816862 () Bool)

(assert (=> b!1450623 (= e!816861 (not e!816862))))

(declare-fun res!982050 () Bool)

(assert (=> b!1450623 (=> res!982050 e!816862)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1450623 (= res!982050 (or (and (= (select (arr!47433 a!2862) index!646) (select (store (arr!47433 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47433 a!2862) index!646) (select (arr!47433 a!2862) j!93))) (not (= (select (arr!47433 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47433 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816863 () Bool)

(assert (=> b!1450623 e!816863))

(declare-fun res!982042 () Bool)

(assert (=> b!1450623 (=> (not res!982042) (not e!816863))))

(declare-fun lt!636338 () SeekEntryResult!11708)

(declare-fun lt!636339 () SeekEntryResult!11708)

(assert (=> b!1450623 (= res!982042 (and (= lt!636338 lt!636339) (or (= (select (arr!47433 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47433 a!2862) intermediateBeforeIndex!19) (select (arr!47433 a!2862) j!93)))))))

(assert (=> b!1450623 (= lt!636339 (Found!11708 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98299 (_ BitVec 32)) SeekEntryResult!11708)

(assert (=> b!1450623 (= lt!636338 (seekEntryOrOpen!0 (select (arr!47433 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98299 (_ BitVec 32)) Bool)

(assert (=> b!1450623 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48860 0))(
  ( (Unit!48861) )
))
(declare-fun lt!636341 () Unit!48860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48860)

(assert (=> b!1450623 (= lt!636341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!636343 () SeekEntryResult!11708)

(declare-fun lt!636342 () (_ BitVec 64))

(declare-fun lt!636340 () array!98299)

(declare-fun b!1450624 () Bool)

(assert (=> b!1450624 (= e!816858 (= lt!636343 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636342 lt!636340 mask!2687)))))

(declare-fun b!1450625 () Bool)

(declare-fun e!816864 () Bool)

(assert (=> b!1450625 (= e!816864 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450626 () Bool)

(declare-fun e!816866 () Bool)

(assert (=> b!1450626 (= e!816863 e!816866)))

(declare-fun res!982043 () Bool)

(assert (=> b!1450626 (=> res!982043 e!816866)))

(assert (=> b!1450626 (= res!982043 (or (and (= (select (arr!47433 a!2862) index!646) (select (store (arr!47433 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47433 a!2862) index!646) (select (arr!47433 a!2862) j!93))) (not (= (select (arr!47433 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450627 () Bool)

(declare-fun res!982044 () Bool)

(assert (=> b!1450627 (=> res!982044 e!816862)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98299 (_ BitVec 32)) SeekEntryResult!11708)

(assert (=> b!1450627 (= res!982044 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47433 a!2862) j!93) a!2862 mask!2687) lt!636339)))))

(declare-fun b!1450628 () Bool)

(assert (=> b!1450628 (= e!816866 e!816864)))

(declare-fun res!982048 () Bool)

(assert (=> b!1450628 (=> (not res!982048) (not e!816864))))

(assert (=> b!1450628 (= res!982048 (= lt!636338 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47433 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450629 () Bool)

(declare-fun res!982045 () Bool)

(assert (=> b!1450629 (=> (not res!982045) (not e!816865))))

(assert (=> b!1450629 (= res!982045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450630 () Bool)

(assert (=> b!1450630 (= e!816865 e!816857)))

(declare-fun res!982054 () Bool)

(assert (=> b!1450630 (=> (not res!982054) (not e!816857))))

(assert (=> b!1450630 (= res!982054 (= (select (store (arr!47433 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450630 (= lt!636340 (array!98300 (store (arr!47433 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47984 a!2862)))))

(declare-fun b!1450631 () Bool)

(declare-fun res!982040 () Bool)

(assert (=> b!1450631 (=> (not res!982040) (not e!816865))))

(declare-datatypes ((List!34114 0))(
  ( (Nil!34111) (Cons!34110 (h!35460 (_ BitVec 64)) (t!48815 List!34114)) )
))
(declare-fun arrayNoDuplicates!0 (array!98299 (_ BitVec 32) List!34114) Bool)

(assert (=> b!1450631 (= res!982040 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34111))))

(declare-fun b!1450632 () Bool)

(assert (=> b!1450632 (= e!816860 e!816861)))

(declare-fun res!982047 () Bool)

(assert (=> b!1450632 (=> (not res!982047) (not e!816861))))

(assert (=> b!1450632 (= res!982047 (= lt!636343 (Intermediate!11708 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450632 (= lt!636343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636342 mask!2687) lt!636342 lt!636340 mask!2687))))

(assert (=> b!1450632 (= lt!636342 (select (store (arr!47433 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450633 () Bool)

(assert (=> b!1450633 (= e!816862 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1450633 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636342 lt!636340 mask!2687) lt!636339)))

(declare-fun lt!636337 () Unit!48860)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48860)

(assert (=> b!1450633 (= lt!636337 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450634 () Bool)

(assert (=> b!1450634 (= e!816858 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636342 lt!636340 mask!2687) (seekEntryOrOpen!0 lt!636342 lt!636340 mask!2687)))))

(declare-fun b!1450635 () Bool)

(declare-fun res!982039 () Bool)

(assert (=> b!1450635 (=> (not res!982039) (not e!816860))))

(assert (=> b!1450635 (= res!982039 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47433 a!2862) j!93) a!2862 mask!2687) lt!636336))))

(declare-fun b!1450636 () Bool)

(declare-fun res!982053 () Bool)

(assert (=> b!1450636 (=> (not res!982053) (not e!816865))))

(assert (=> b!1450636 (= res!982053 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47984 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47984 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47984 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124934 res!982049) b!1450622))

(assert (= (and b!1450622 res!982041) b!1450621))

(assert (= (and b!1450621 res!982046) b!1450620))

(assert (= (and b!1450620 res!982056) b!1450629))

(assert (= (and b!1450629 res!982045) b!1450631))

(assert (= (and b!1450631 res!982040) b!1450636))

(assert (= (and b!1450636 res!982053) b!1450630))

(assert (= (and b!1450630 res!982054) b!1450617))

(assert (= (and b!1450617 res!982051) b!1450635))

(assert (= (and b!1450635 res!982039) b!1450632))

(assert (= (and b!1450632 res!982047) b!1450618))

(assert (= (and b!1450618 c!133802) b!1450624))

(assert (= (and b!1450618 (not c!133802)) b!1450634))

(assert (= (and b!1450618 res!982055) b!1450619))

(assert (= (and b!1450619 res!982052) b!1450623))

(assert (= (and b!1450623 res!982042) b!1450626))

(assert (= (and b!1450626 (not res!982043)) b!1450628))

(assert (= (and b!1450628 res!982048) b!1450625))

(assert (= (and b!1450623 (not res!982050)) b!1450627))

(assert (= (and b!1450627 (not res!982044)) b!1450633))

(declare-fun m!1339303 () Bool)

(assert (=> b!1450624 m!1339303))

(declare-fun m!1339305 () Bool)

(assert (=> b!1450631 m!1339305))

(declare-fun m!1339307 () Bool)

(assert (=> b!1450626 m!1339307))

(declare-fun m!1339309 () Bool)

(assert (=> b!1450626 m!1339309))

(declare-fun m!1339311 () Bool)

(assert (=> b!1450626 m!1339311))

(declare-fun m!1339313 () Bool)

(assert (=> b!1450626 m!1339313))

(assert (=> b!1450617 m!1339313))

(assert (=> b!1450617 m!1339313))

(declare-fun m!1339315 () Bool)

(assert (=> b!1450617 m!1339315))

(assert (=> b!1450617 m!1339315))

(assert (=> b!1450617 m!1339313))

(declare-fun m!1339317 () Bool)

(assert (=> b!1450617 m!1339317))

(declare-fun m!1339319 () Bool)

(assert (=> start!124934 m!1339319))

(declare-fun m!1339321 () Bool)

(assert (=> start!124934 m!1339321))

(declare-fun m!1339323 () Bool)

(assert (=> b!1450633 m!1339323))

(declare-fun m!1339325 () Bool)

(assert (=> b!1450633 m!1339325))

(assert (=> b!1450634 m!1339323))

(declare-fun m!1339327 () Bool)

(assert (=> b!1450634 m!1339327))

(declare-fun m!1339329 () Bool)

(assert (=> b!1450632 m!1339329))

(assert (=> b!1450632 m!1339329))

(declare-fun m!1339331 () Bool)

(assert (=> b!1450632 m!1339331))

(assert (=> b!1450632 m!1339309))

(declare-fun m!1339333 () Bool)

(assert (=> b!1450632 m!1339333))

(assert (=> b!1450635 m!1339313))

(assert (=> b!1450635 m!1339313))

(declare-fun m!1339335 () Bool)

(assert (=> b!1450635 m!1339335))

(assert (=> b!1450630 m!1339309))

(declare-fun m!1339337 () Bool)

(assert (=> b!1450630 m!1339337))

(assert (=> b!1450627 m!1339313))

(assert (=> b!1450627 m!1339313))

(declare-fun m!1339339 () Bool)

(assert (=> b!1450627 m!1339339))

(assert (=> b!1450620 m!1339313))

(assert (=> b!1450620 m!1339313))

(declare-fun m!1339341 () Bool)

(assert (=> b!1450620 m!1339341))

(declare-fun m!1339343 () Bool)

(assert (=> b!1450621 m!1339343))

(assert (=> b!1450621 m!1339343))

(declare-fun m!1339345 () Bool)

(assert (=> b!1450621 m!1339345))

(declare-fun m!1339347 () Bool)

(assert (=> b!1450629 m!1339347))

(assert (=> b!1450628 m!1339313))

(assert (=> b!1450628 m!1339313))

(declare-fun m!1339349 () Bool)

(assert (=> b!1450628 m!1339349))

(declare-fun m!1339351 () Bool)

(assert (=> b!1450623 m!1339351))

(assert (=> b!1450623 m!1339309))

(declare-fun m!1339353 () Bool)

(assert (=> b!1450623 m!1339353))

(assert (=> b!1450623 m!1339311))

(assert (=> b!1450623 m!1339307))

(assert (=> b!1450623 m!1339313))

(declare-fun m!1339355 () Bool)

(assert (=> b!1450623 m!1339355))

(declare-fun m!1339357 () Bool)

(assert (=> b!1450623 m!1339357))

(assert (=> b!1450623 m!1339313))

(push 1)

