; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125000 () Bool)

(assert start!125000)

(declare-fun b!1452375 () Bool)

(declare-fun res!983602 () Bool)

(declare-fun e!817631 () Bool)

(assert (=> b!1452375 (=> (not res!983602) (not e!817631))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98365 0))(
  ( (array!98366 (arr!47466 (Array (_ BitVec 32) (_ BitVec 64))) (size!48017 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98365)

(assert (=> b!1452375 (= res!983602 (and (= (size!48017 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48017 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48017 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452376 () Bool)

(declare-fun e!817627 () Bool)

(assert (=> b!1452376 (= e!817627 (not true))))

(declare-fun e!817625 () Bool)

(assert (=> b!1452376 e!817625))

(declare-fun res!983607 () Bool)

(assert (=> b!1452376 (=> (not res!983607) (not e!817625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98365 (_ BitVec 32)) Bool)

(assert (=> b!1452376 (= res!983607 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48926 0))(
  ( (Unit!48927) )
))
(declare-fun lt!636892 () Unit!48926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48926)

(assert (=> b!1452376 (= lt!636892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452377 () Bool)

(declare-fun res!983609 () Bool)

(assert (=> b!1452377 (=> (not res!983609) (not e!817631))))

(assert (=> b!1452377 (= res!983609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452378 () Bool)

(declare-fun res!983610 () Bool)

(assert (=> b!1452378 (=> (not res!983610) (not e!817625))))

(declare-datatypes ((SeekEntryResult!11741 0))(
  ( (MissingZero!11741 (index!49355 (_ BitVec 32))) (Found!11741 (index!49356 (_ BitVec 32))) (Intermediate!11741 (undefined!12553 Bool) (index!49357 (_ BitVec 32)) (x!131001 (_ BitVec 32))) (Undefined!11741) (MissingVacant!11741 (index!49358 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98365 (_ BitVec 32)) SeekEntryResult!11741)

(assert (=> b!1452378 (= res!983610 (= (seekEntryOrOpen!0 (select (arr!47466 a!2862) j!93) a!2862 mask!2687) (Found!11741 j!93)))))

(declare-fun b!1452379 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!636890 () (_ BitVec 64))

(declare-fun e!817629 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636888 () array!98365)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98365 (_ BitVec 32)) SeekEntryResult!11741)

(assert (=> b!1452379 (= e!817629 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636890 lt!636888 mask!2687) (seekEntryOrOpen!0 lt!636890 lt!636888 mask!2687)))))

(declare-fun b!1452380 () Bool)

(declare-fun res!983605 () Bool)

(declare-fun e!817626 () Bool)

(assert (=> b!1452380 (=> (not res!983605) (not e!817626))))

(declare-fun lt!636891 () SeekEntryResult!11741)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98365 (_ BitVec 32)) SeekEntryResult!11741)

(assert (=> b!1452380 (= res!983605 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47466 a!2862) j!93) a!2862 mask!2687) lt!636891))))

(declare-fun b!1452381 () Bool)

(declare-fun e!817630 () Bool)

(assert (=> b!1452381 (= e!817630 e!817626)))

(declare-fun res!983611 () Bool)

(assert (=> b!1452381 (=> (not res!983611) (not e!817626))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452381 (= res!983611 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47466 a!2862) j!93) mask!2687) (select (arr!47466 a!2862) j!93) a!2862 mask!2687) lt!636891))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452381 (= lt!636891 (Intermediate!11741 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452382 () Bool)

(declare-fun res!983606 () Bool)

(assert (=> b!1452382 (=> (not res!983606) (not e!817631))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452382 (= res!983606 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48017 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48017 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48017 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452383 () Bool)

(assert (=> b!1452383 (= e!817631 e!817630)))

(declare-fun res!983608 () Bool)

(assert (=> b!1452383 (=> (not res!983608) (not e!817630))))

(assert (=> b!1452383 (= res!983608 (= (select (store (arr!47466 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452383 (= lt!636888 (array!98366 (store (arr!47466 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48017 a!2862)))))

(declare-fun res!983600 () Bool)

(assert (=> start!125000 (=> (not res!983600) (not e!817631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125000 (= res!983600 (validMask!0 mask!2687))))

(assert (=> start!125000 e!817631))

(assert (=> start!125000 true))

(declare-fun array_inv!36411 (array!98365) Bool)

(assert (=> start!125000 (array_inv!36411 a!2862)))

(declare-fun b!1452384 () Bool)

(assert (=> b!1452384 (= e!817626 e!817627)))

(declare-fun res!983613 () Bool)

(assert (=> b!1452384 (=> (not res!983613) (not e!817627))))

(declare-fun lt!636889 () SeekEntryResult!11741)

(assert (=> b!1452384 (= res!983613 (= lt!636889 (Intermediate!11741 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452384 (= lt!636889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636890 mask!2687) lt!636890 lt!636888 mask!2687))))

(assert (=> b!1452384 (= lt!636890 (select (store (arr!47466 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452385 () Bool)

(declare-fun res!983604 () Bool)

(assert (=> b!1452385 (=> (not res!983604) (not e!817627))))

(assert (=> b!1452385 (= res!983604 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452386 () Bool)

(assert (=> b!1452386 (= e!817625 (and (or (= (select (arr!47466 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47466 a!2862) intermediateBeforeIndex!19) (select (arr!47466 a!2862) j!93))) (or (and (= (select (arr!47466 a!2862) index!646) (select (store (arr!47466 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47466 a!2862) index!646) (select (arr!47466 a!2862) j!93))) (= (select (arr!47466 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47466 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452387 () Bool)

(declare-fun res!983612 () Bool)

(assert (=> b!1452387 (=> (not res!983612) (not e!817631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452387 (= res!983612 (validKeyInArray!0 (select (arr!47466 a!2862) i!1006)))))

(declare-fun b!1452388 () Bool)

(declare-fun res!983599 () Bool)

(assert (=> b!1452388 (=> (not res!983599) (not e!817631))))

(assert (=> b!1452388 (= res!983599 (validKeyInArray!0 (select (arr!47466 a!2862) j!93)))))

(declare-fun b!1452389 () Bool)

(assert (=> b!1452389 (= e!817629 (= lt!636889 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636890 lt!636888 mask!2687)))))

(declare-fun b!1452390 () Bool)

(declare-fun res!983603 () Bool)

(assert (=> b!1452390 (=> (not res!983603) (not e!817627))))

(assert (=> b!1452390 (= res!983603 e!817629)))

(declare-fun c!133901 () Bool)

(assert (=> b!1452390 (= c!133901 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452391 () Bool)

(declare-fun res!983601 () Bool)

(assert (=> b!1452391 (=> (not res!983601) (not e!817631))))

(declare-datatypes ((List!34147 0))(
  ( (Nil!34144) (Cons!34143 (h!35493 (_ BitVec 64)) (t!48848 List!34147)) )
))
(declare-fun arrayNoDuplicates!0 (array!98365 (_ BitVec 32) List!34147) Bool)

(assert (=> b!1452391 (= res!983601 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34144))))

(assert (= (and start!125000 res!983600) b!1452375))

(assert (= (and b!1452375 res!983602) b!1452387))

(assert (= (and b!1452387 res!983612) b!1452388))

(assert (= (and b!1452388 res!983599) b!1452377))

(assert (= (and b!1452377 res!983609) b!1452391))

(assert (= (and b!1452391 res!983601) b!1452382))

(assert (= (and b!1452382 res!983606) b!1452383))

(assert (= (and b!1452383 res!983608) b!1452381))

(assert (= (and b!1452381 res!983611) b!1452380))

(assert (= (and b!1452380 res!983605) b!1452384))

(assert (= (and b!1452384 res!983613) b!1452390))

(assert (= (and b!1452390 c!133901) b!1452389))

(assert (= (and b!1452390 (not c!133901)) b!1452379))

(assert (= (and b!1452390 res!983603) b!1452385))

(assert (= (and b!1452385 res!983604) b!1452376))

(assert (= (and b!1452376 res!983607) b!1452378))

(assert (= (and b!1452378 res!983610) b!1452386))

(declare-fun m!1341007 () Bool)

(assert (=> b!1452381 m!1341007))

(assert (=> b!1452381 m!1341007))

(declare-fun m!1341009 () Bool)

(assert (=> b!1452381 m!1341009))

(assert (=> b!1452381 m!1341009))

(assert (=> b!1452381 m!1341007))

(declare-fun m!1341011 () Bool)

(assert (=> b!1452381 m!1341011))

(declare-fun m!1341013 () Bool)

(assert (=> b!1452387 m!1341013))

(assert (=> b!1452387 m!1341013))

(declare-fun m!1341015 () Bool)

(assert (=> b!1452387 m!1341015))

(declare-fun m!1341017 () Bool)

(assert (=> b!1452391 m!1341017))

(assert (=> b!1452380 m!1341007))

(assert (=> b!1452380 m!1341007))

(declare-fun m!1341019 () Bool)

(assert (=> b!1452380 m!1341019))

(declare-fun m!1341021 () Bool)

(assert (=> b!1452379 m!1341021))

(declare-fun m!1341023 () Bool)

(assert (=> b!1452379 m!1341023))

(declare-fun m!1341025 () Bool)

(assert (=> b!1452376 m!1341025))

(declare-fun m!1341027 () Bool)

(assert (=> b!1452376 m!1341027))

(declare-fun m!1341029 () Bool)

(assert (=> start!125000 m!1341029))

(declare-fun m!1341031 () Bool)

(assert (=> start!125000 m!1341031))

(assert (=> b!1452388 m!1341007))

(assert (=> b!1452388 m!1341007))

(declare-fun m!1341033 () Bool)

(assert (=> b!1452388 m!1341033))

(declare-fun m!1341035 () Bool)

(assert (=> b!1452386 m!1341035))

(declare-fun m!1341037 () Bool)

(assert (=> b!1452386 m!1341037))

(declare-fun m!1341039 () Bool)

(assert (=> b!1452386 m!1341039))

(declare-fun m!1341041 () Bool)

(assert (=> b!1452386 m!1341041))

(assert (=> b!1452386 m!1341007))

(assert (=> b!1452378 m!1341007))

(assert (=> b!1452378 m!1341007))

(declare-fun m!1341043 () Bool)

(assert (=> b!1452378 m!1341043))

(declare-fun m!1341045 () Bool)

(assert (=> b!1452389 m!1341045))

(assert (=> b!1452383 m!1341035))

(declare-fun m!1341047 () Bool)

(assert (=> b!1452383 m!1341047))

(declare-fun m!1341049 () Bool)

(assert (=> b!1452384 m!1341049))

(assert (=> b!1452384 m!1341049))

(declare-fun m!1341051 () Bool)

(assert (=> b!1452384 m!1341051))

(assert (=> b!1452384 m!1341035))

(declare-fun m!1341053 () Bool)

(assert (=> b!1452384 m!1341053))

(declare-fun m!1341055 () Bool)

(assert (=> b!1452377 m!1341055))

(push 1)

