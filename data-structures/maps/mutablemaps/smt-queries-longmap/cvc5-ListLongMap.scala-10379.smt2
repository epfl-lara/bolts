; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122236 () Bool)

(assert start!122236)

(declare-fun b!1417486 () Bool)

(declare-fun res!953326 () Bool)

(declare-fun e!802249 () Bool)

(assert (=> b!1417486 (=> (not res!953326) (not e!802249))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96738 0))(
  ( (array!96739 (arr!46693 (Array (_ BitVec 32) (_ BitVec 64))) (size!47244 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96738)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417486 (= res!953326 (and (= (size!47244 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47244 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47244 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417487 () Bool)

(declare-fun e!802248 () Bool)

(declare-datatypes ((SeekEntryResult!11026 0))(
  ( (MissingZero!11026 (index!46495 (_ BitVec 32))) (Found!11026 (index!46496 (_ BitVec 32))) (Intermediate!11026 (undefined!11838 Bool) (index!46497 (_ BitVec 32)) (x!128104 (_ BitVec 32))) (Undefined!11026) (MissingVacant!11026 (index!46498 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96738 (_ BitVec 32)) SeekEntryResult!11026)

(assert (=> b!1417487 (= e!802248 (= (seekEntryOrOpen!0 (select (arr!46693 a!2901) j!112) a!2901 mask!2840) (Found!11026 j!112)))))

(declare-fun b!1417488 () Bool)

(declare-fun res!953331 () Bool)

(assert (=> b!1417488 (=> (not res!953331) (not e!802249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417488 (= res!953331 (validKeyInArray!0 (select (arr!46693 a!2901) j!112)))))

(declare-fun res!953329 () Bool)

(assert (=> start!122236 (=> (not res!953329) (not e!802249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122236 (= res!953329 (validMask!0 mask!2840))))

(assert (=> start!122236 e!802249))

(assert (=> start!122236 true))

(declare-fun array_inv!35638 (array!96738) Bool)

(assert (=> start!122236 (array_inv!35638 a!2901)))

(declare-fun b!1417489 () Bool)

(declare-fun res!953328 () Bool)

(assert (=> b!1417489 (=> (not res!953328) (not e!802249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96738 (_ BitVec 32)) Bool)

(assert (=> b!1417489 (= res!953328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417490 () Bool)

(declare-fun res!953325 () Bool)

(assert (=> b!1417490 (=> (not res!953325) (not e!802249))))

(assert (=> b!1417490 (= res!953325 (validKeyInArray!0 (select (arr!46693 a!2901) i!1037)))))

(declare-fun b!1417491 () Bool)

(assert (=> b!1417491 (= e!802249 (not true))))

(assert (=> b!1417491 e!802248))

(declare-fun res!953327 () Bool)

(assert (=> b!1417491 (=> (not res!953327) (not e!802248))))

(assert (=> b!1417491 (= res!953327 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47976 0))(
  ( (Unit!47977) )
))
(declare-fun lt!625347 () Unit!47976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96738 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47976)

(assert (=> b!1417491 (= lt!625347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!625348 () SeekEntryResult!11026)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96738 (_ BitVec 32)) SeekEntryResult!11026)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417491 (= lt!625348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46693 a!2901) j!112) mask!2840) (select (arr!46693 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417492 () Bool)

(declare-fun res!953330 () Bool)

(assert (=> b!1417492 (=> (not res!953330) (not e!802249))))

(declare-datatypes ((List!33392 0))(
  ( (Nil!33389) (Cons!33388 (h!34681 (_ BitVec 64)) (t!48093 List!33392)) )
))
(declare-fun arrayNoDuplicates!0 (array!96738 (_ BitVec 32) List!33392) Bool)

(assert (=> b!1417492 (= res!953330 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33389))))

(assert (= (and start!122236 res!953329) b!1417486))

(assert (= (and b!1417486 res!953326) b!1417490))

(assert (= (and b!1417490 res!953325) b!1417488))

(assert (= (and b!1417488 res!953331) b!1417489))

(assert (= (and b!1417489 res!953328) b!1417492))

(assert (= (and b!1417492 res!953330) b!1417491))

(assert (= (and b!1417491 res!953327) b!1417487))

(declare-fun m!1308293 () Bool)

(assert (=> b!1417489 m!1308293))

(declare-fun m!1308295 () Bool)

(assert (=> b!1417487 m!1308295))

(assert (=> b!1417487 m!1308295))

(declare-fun m!1308297 () Bool)

(assert (=> b!1417487 m!1308297))

(assert (=> b!1417491 m!1308295))

(declare-fun m!1308299 () Bool)

(assert (=> b!1417491 m!1308299))

(assert (=> b!1417491 m!1308295))

(declare-fun m!1308301 () Bool)

(assert (=> b!1417491 m!1308301))

(assert (=> b!1417491 m!1308299))

(assert (=> b!1417491 m!1308295))

(declare-fun m!1308303 () Bool)

(assert (=> b!1417491 m!1308303))

(declare-fun m!1308305 () Bool)

(assert (=> b!1417491 m!1308305))

(declare-fun m!1308307 () Bool)

(assert (=> b!1417492 m!1308307))

(declare-fun m!1308309 () Bool)

(assert (=> start!122236 m!1308309))

(declare-fun m!1308311 () Bool)

(assert (=> start!122236 m!1308311))

(assert (=> b!1417488 m!1308295))

(assert (=> b!1417488 m!1308295))

(declare-fun m!1308313 () Bool)

(assert (=> b!1417488 m!1308313))

(declare-fun m!1308315 () Bool)

(assert (=> b!1417490 m!1308315))

(assert (=> b!1417490 m!1308315))

(declare-fun m!1308317 () Bool)

(assert (=> b!1417490 m!1308317))

(push 1)

(assert (not b!1417490))

(assert (not b!1417487))

(assert (not b!1417492))

(assert (not b!1417491))

(assert (not b!1417489))

(assert (not b!1417488))

(assert (not start!122236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

