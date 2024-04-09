; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124994 () Bool)

(assert start!124994)

(declare-fun b!1452222 () Bool)

(declare-fun res!983466 () Bool)

(declare-fun e!817567 () Bool)

(assert (=> b!1452222 (=> (not res!983466) (not e!817567))))

(declare-datatypes ((array!98359 0))(
  ( (array!98360 (arr!47463 (Array (_ BitVec 32) (_ BitVec 64))) (size!48014 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98359)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452222 (= res!983466 (validKeyInArray!0 (select (arr!47463 a!2862) j!93)))))

(declare-fun b!1452223 () Bool)

(declare-fun res!983470 () Bool)

(declare-fun e!817566 () Bool)

(assert (=> b!1452223 (=> (not res!983470) (not e!817566))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1452223 (= res!983470 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452224 () Bool)

(declare-fun res!983465 () Bool)

(assert (=> b!1452224 (=> (not res!983465) (not e!817566))))

(declare-fun e!817565 () Bool)

(assert (=> b!1452224 (= res!983465 e!817565)))

(declare-fun c!133892 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452224 (= c!133892 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1452226 () Bool)

(declare-fun e!817568 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1452226 (= e!817568 (and (or (= (select (arr!47463 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47463 a!2862) intermediateBeforeIndex!19) (select (arr!47463 a!2862) j!93))) (or (and (= (select (arr!47463 a!2862) index!646) (select (store (arr!47463 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47463 a!2862) index!646) (select (arr!47463 a!2862) j!93))) (= (select (arr!47463 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47463 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1452227 () Bool)

(assert (=> b!1452227 (= e!817566 (not (or (and (= (select (arr!47463 a!2862) index!646) (select (store (arr!47463 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47463 a!2862) index!646) (select (arr!47463 a!2862) j!93))) (= (select (arr!47463 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1452227 e!817568))

(declare-fun res!983467 () Bool)

(assert (=> b!1452227 (=> (not res!983467) (not e!817568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98359 (_ BitVec 32)) Bool)

(assert (=> b!1452227 (= res!983467 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48920 0))(
  ( (Unit!48921) )
))
(declare-fun lt!636847 () Unit!48920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48920)

(assert (=> b!1452227 (= lt!636847 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!636844 () array!98359)

(declare-datatypes ((SeekEntryResult!11738 0))(
  ( (MissingZero!11738 (index!49343 (_ BitVec 32))) (Found!11738 (index!49344 (_ BitVec 32))) (Intermediate!11738 (undefined!12550 Bool) (index!49345 (_ BitVec 32)) (x!130990 (_ BitVec 32))) (Undefined!11738) (MissingVacant!11738 (index!49346 (_ BitVec 32))) )
))
(declare-fun lt!636846 () SeekEntryResult!11738)

(declare-fun lt!636843 () (_ BitVec 64))

(declare-fun b!1452228 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98359 (_ BitVec 32)) SeekEntryResult!11738)

(assert (=> b!1452228 (= e!817565 (= lt!636846 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636843 lt!636844 mask!2687)))))

(declare-fun b!1452229 () Bool)

(declare-fun res!983472 () Bool)

(assert (=> b!1452229 (=> (not res!983472) (not e!817567))))

(declare-datatypes ((List!34144 0))(
  ( (Nil!34141) (Cons!34140 (h!35490 (_ BitVec 64)) (t!48845 List!34144)) )
))
(declare-fun arrayNoDuplicates!0 (array!98359 (_ BitVec 32) List!34144) Bool)

(assert (=> b!1452229 (= res!983472 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34141))))

(declare-fun b!1452230 () Bool)

(declare-fun res!983468 () Bool)

(assert (=> b!1452230 (=> (not res!983468) (not e!817568))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98359 (_ BitVec 32)) SeekEntryResult!11738)

(assert (=> b!1452230 (= res!983468 (= (seekEntryOrOpen!0 (select (arr!47463 a!2862) j!93) a!2862 mask!2687) (Found!11738 j!93)))))

(declare-fun b!1452231 () Bool)

(declare-fun e!817562 () Bool)

(assert (=> b!1452231 (= e!817567 e!817562)))

(declare-fun res!983477 () Bool)

(assert (=> b!1452231 (=> (not res!983477) (not e!817562))))

(assert (=> b!1452231 (= res!983477 (= (select (store (arr!47463 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452231 (= lt!636844 (array!98360 (store (arr!47463 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48014 a!2862)))))

(declare-fun b!1452232 () Bool)

(declare-fun e!817563 () Bool)

(assert (=> b!1452232 (= e!817563 e!817566)))

(declare-fun res!983476 () Bool)

(assert (=> b!1452232 (=> (not res!983476) (not e!817566))))

(assert (=> b!1452232 (= res!983476 (= lt!636846 (Intermediate!11738 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452232 (= lt!636846 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636843 mask!2687) lt!636843 lt!636844 mask!2687))))

(assert (=> b!1452232 (= lt!636843 (select (store (arr!47463 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452233 () Bool)

(declare-fun res!983475 () Bool)

(assert (=> b!1452233 (=> (not res!983475) (not e!817567))))

(assert (=> b!1452233 (= res!983475 (and (= (size!48014 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48014 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48014 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452234 () Bool)

(assert (=> b!1452234 (= e!817562 e!817563)))

(declare-fun res!983464 () Bool)

(assert (=> b!1452234 (=> (not res!983464) (not e!817563))))

(declare-fun lt!636845 () SeekEntryResult!11738)

(assert (=> b!1452234 (= res!983464 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47463 a!2862) j!93) mask!2687) (select (arr!47463 a!2862) j!93) a!2862 mask!2687) lt!636845))))

(assert (=> b!1452234 (= lt!636845 (Intermediate!11738 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452235 () Bool)

(declare-fun res!983478 () Bool)

(assert (=> b!1452235 (=> (not res!983478) (not e!817567))))

(assert (=> b!1452235 (= res!983478 (validKeyInArray!0 (select (arr!47463 a!2862) i!1006)))))

(declare-fun b!1452236 () Bool)

(declare-fun res!983474 () Bool)

(assert (=> b!1452236 (=> (not res!983474) (not e!817563))))

(assert (=> b!1452236 (= res!983474 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47463 a!2862) j!93) a!2862 mask!2687) lt!636845))))

(declare-fun b!1452237 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98359 (_ BitVec 32)) SeekEntryResult!11738)

(assert (=> b!1452237 (= e!817565 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636843 lt!636844 mask!2687) (seekEntryOrOpen!0 lt!636843 lt!636844 mask!2687)))))

(declare-fun b!1452238 () Bool)

(declare-fun res!983471 () Bool)

(assert (=> b!1452238 (=> (not res!983471) (not e!817567))))

(assert (=> b!1452238 (= res!983471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452225 () Bool)

(declare-fun res!983473 () Bool)

(assert (=> b!1452225 (=> (not res!983473) (not e!817567))))

(assert (=> b!1452225 (= res!983473 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48014 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48014 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48014 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!983469 () Bool)

(assert (=> start!124994 (=> (not res!983469) (not e!817567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124994 (= res!983469 (validMask!0 mask!2687))))

(assert (=> start!124994 e!817567))

(assert (=> start!124994 true))

(declare-fun array_inv!36408 (array!98359) Bool)

(assert (=> start!124994 (array_inv!36408 a!2862)))

(assert (= (and start!124994 res!983469) b!1452233))

(assert (= (and b!1452233 res!983475) b!1452235))

(assert (= (and b!1452235 res!983478) b!1452222))

(assert (= (and b!1452222 res!983466) b!1452238))

(assert (= (and b!1452238 res!983471) b!1452229))

(assert (= (and b!1452229 res!983472) b!1452225))

(assert (= (and b!1452225 res!983473) b!1452231))

(assert (= (and b!1452231 res!983477) b!1452234))

(assert (= (and b!1452234 res!983464) b!1452236))

(assert (= (and b!1452236 res!983474) b!1452232))

(assert (= (and b!1452232 res!983476) b!1452224))

(assert (= (and b!1452224 c!133892) b!1452228))

(assert (= (and b!1452224 (not c!133892)) b!1452237))

(assert (= (and b!1452224 res!983465) b!1452223))

(assert (= (and b!1452223 res!983470) b!1452227))

(assert (= (and b!1452227 res!983467) b!1452230))

(assert (= (and b!1452230 res!983468) b!1452226))

(declare-fun m!1340857 () Bool)

(assert (=> b!1452229 m!1340857))

(declare-fun m!1340859 () Bool)

(assert (=> b!1452230 m!1340859))

(assert (=> b!1452230 m!1340859))

(declare-fun m!1340861 () Bool)

(assert (=> b!1452230 m!1340861))

(declare-fun m!1340863 () Bool)

(assert (=> b!1452237 m!1340863))

(declare-fun m!1340865 () Bool)

(assert (=> b!1452237 m!1340865))

(declare-fun m!1340867 () Bool)

(assert (=> b!1452227 m!1340867))

(declare-fun m!1340869 () Bool)

(assert (=> b!1452227 m!1340869))

(declare-fun m!1340871 () Bool)

(assert (=> b!1452227 m!1340871))

(declare-fun m!1340873 () Bool)

(assert (=> b!1452227 m!1340873))

(declare-fun m!1340875 () Bool)

(assert (=> b!1452227 m!1340875))

(assert (=> b!1452227 m!1340859))

(assert (=> b!1452222 m!1340859))

(assert (=> b!1452222 m!1340859))

(declare-fun m!1340877 () Bool)

(assert (=> b!1452222 m!1340877))

(assert (=> b!1452231 m!1340869))

(declare-fun m!1340879 () Bool)

(assert (=> b!1452231 m!1340879))

(declare-fun m!1340881 () Bool)

(assert (=> b!1452235 m!1340881))

(assert (=> b!1452235 m!1340881))

(declare-fun m!1340883 () Bool)

(assert (=> b!1452235 m!1340883))

(assert (=> b!1452236 m!1340859))

(assert (=> b!1452236 m!1340859))

(declare-fun m!1340885 () Bool)

(assert (=> b!1452236 m!1340885))

(assert (=> b!1452226 m!1340869))

(declare-fun m!1340887 () Bool)

(assert (=> b!1452226 m!1340887))

(assert (=> b!1452226 m!1340871))

(assert (=> b!1452226 m!1340873))

(assert (=> b!1452226 m!1340859))

(declare-fun m!1340889 () Bool)

(assert (=> b!1452238 m!1340889))

(declare-fun m!1340891 () Bool)

(assert (=> b!1452232 m!1340891))

(assert (=> b!1452232 m!1340891))

(declare-fun m!1340893 () Bool)

(assert (=> b!1452232 m!1340893))

(assert (=> b!1452232 m!1340869))

(declare-fun m!1340895 () Bool)

(assert (=> b!1452232 m!1340895))

(declare-fun m!1340897 () Bool)

(assert (=> b!1452228 m!1340897))

(declare-fun m!1340899 () Bool)

(assert (=> start!124994 m!1340899))

(declare-fun m!1340901 () Bool)

(assert (=> start!124994 m!1340901))

(assert (=> b!1452234 m!1340859))

(assert (=> b!1452234 m!1340859))

(declare-fun m!1340903 () Bool)

(assert (=> b!1452234 m!1340903))

(assert (=> b!1452234 m!1340903))

(assert (=> b!1452234 m!1340859))

(declare-fun m!1340905 () Bool)

(assert (=> b!1452234 m!1340905))

(push 1)

(assert (not b!1452232))

(assert (not b!1452229))

(assert (not b!1452235))

(assert (not b!1452228))

(assert (not b!1452238))

(assert (not b!1452237))

(assert (not b!1452236))

(assert (not b!1452222))

(assert (not b!1452227))

(assert (not b!1452230))

(assert (not start!124994))

(assert (not b!1452234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

