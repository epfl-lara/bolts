; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125006 () Bool)

(assert start!125006)

(declare-fun b!1452528 () Bool)

(declare-fun res!983743 () Bool)

(declare-fun e!817689 () Bool)

(assert (=> b!1452528 (=> (not res!983743) (not e!817689))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98371 0))(
  ( (array!98372 (arr!47469 (Array (_ BitVec 32) (_ BitVec 64))) (size!48020 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98371)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1452528 (= res!983743 (and (= (size!48020 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48020 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48020 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!983740 () Bool)

(assert (=> start!125006 (=> (not res!983740) (not e!817689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125006 (= res!983740 (validMask!0 mask!2687))))

(assert (=> start!125006 e!817689))

(assert (=> start!125006 true))

(declare-fun array_inv!36414 (array!98371) Bool)

(assert (=> start!125006 (array_inv!36414 a!2862)))

(declare-fun b!1452529 () Bool)

(declare-fun res!983741 () Bool)

(assert (=> b!1452529 (=> (not res!983741) (not e!817689))))

(declare-datatypes ((List!34150 0))(
  ( (Nil!34147) (Cons!34146 (h!35496 (_ BitVec 64)) (t!48851 List!34150)) )
))
(declare-fun arrayNoDuplicates!0 (array!98371 (_ BitVec 32) List!34150) Bool)

(assert (=> b!1452529 (= res!983741 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34147))))

(declare-datatypes ((SeekEntryResult!11744 0))(
  ( (MissingZero!11744 (index!49367 (_ BitVec 32))) (Found!11744 (index!49368 (_ BitVec 32))) (Intermediate!11744 (undefined!12556 Bool) (index!49369 (_ BitVec 32)) (x!131012 (_ BitVec 32))) (Undefined!11744) (MissingVacant!11744 (index!49370 (_ BitVec 32))) )
))
(declare-fun lt!636936 () SeekEntryResult!11744)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636933 () array!98371)

(declare-fun e!817688 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1452530 () Bool)

(declare-fun lt!636935 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98371 (_ BitVec 32)) SeekEntryResult!11744)

(assert (=> b!1452530 (= e!817688 (= lt!636936 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636935 lt!636933 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun e!817693 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1452531 () Bool)

(assert (=> b!1452531 (= e!817693 (and (or (= (select (arr!47469 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47469 a!2862) intermediateBeforeIndex!19) (select (arr!47469 a!2862) j!93))) (or (and (= (select (arr!47469 a!2862) index!646) (select (store (arr!47469 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47469 a!2862) index!646) (select (arr!47469 a!2862) j!93))) (= (select (arr!47469 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47469 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452532 () Bool)

(declare-fun e!817694 () Bool)

(declare-fun e!817690 () Bool)

(assert (=> b!1452532 (= e!817694 e!817690)))

(declare-fun res!983739 () Bool)

(assert (=> b!1452532 (=> (not res!983739) (not e!817690))))

(declare-fun lt!636937 () SeekEntryResult!11744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452532 (= res!983739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47469 a!2862) j!93) mask!2687) (select (arr!47469 a!2862) j!93) a!2862 mask!2687) lt!636937))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452532 (= lt!636937 (Intermediate!11744 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452533 () Bool)

(declare-fun res!983738 () Bool)

(assert (=> b!1452533 (=> (not res!983738) (not e!817689))))

(assert (=> b!1452533 (= res!983738 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48020 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48020 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48020 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452534 () Bool)

(declare-fun res!983735 () Bool)

(declare-fun e!817691 () Bool)

(assert (=> b!1452534 (=> (not res!983735) (not e!817691))))

(assert (=> b!1452534 (= res!983735 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452535 () Bool)

(declare-fun res!983736 () Bool)

(assert (=> b!1452535 (=> (not res!983736) (not e!817689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452535 (= res!983736 (validKeyInArray!0 (select (arr!47469 a!2862) j!93)))))

(declare-fun b!1452536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98371 (_ BitVec 32)) SeekEntryResult!11744)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98371 (_ BitVec 32)) SeekEntryResult!11744)

(assert (=> b!1452536 (= e!817688 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636935 lt!636933 mask!2687) (seekEntryOrOpen!0 lt!636935 lt!636933 mask!2687)))))

(declare-fun b!1452537 () Bool)

(declare-fun res!983742 () Bool)

(assert (=> b!1452537 (=> (not res!983742) (not e!817690))))

(assert (=> b!1452537 (= res!983742 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47469 a!2862) j!93) a!2862 mask!2687) lt!636937))))

(declare-fun b!1452538 () Bool)

(assert (=> b!1452538 (= e!817691 (not (or (and (= (select (arr!47469 a!2862) index!646) (select (store (arr!47469 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47469 a!2862) index!646) (select (arr!47469 a!2862) j!93))) (= (select (arr!47469 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvslt intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1452538 e!817693))

(declare-fun res!983745 () Bool)

(assert (=> b!1452538 (=> (not res!983745) (not e!817693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98371 (_ BitVec 32)) Bool)

(assert (=> b!1452538 (= res!983745 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48932 0))(
  ( (Unit!48933) )
))
(declare-fun lt!636934 () Unit!48932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98371 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48932)

(assert (=> b!1452538 (= lt!636934 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452539 () Bool)

(declare-fun res!983737 () Bool)

(assert (=> b!1452539 (=> (not res!983737) (not e!817693))))

(assert (=> b!1452539 (= res!983737 (= (seekEntryOrOpen!0 (select (arr!47469 a!2862) j!93) a!2862 mask!2687) (Found!11744 j!93)))))

(declare-fun b!1452540 () Bool)

(assert (=> b!1452540 (= e!817689 e!817694)))

(declare-fun res!983748 () Bool)

(assert (=> b!1452540 (=> (not res!983748) (not e!817694))))

(assert (=> b!1452540 (= res!983748 (= (select (store (arr!47469 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452540 (= lt!636933 (array!98372 (store (arr!47469 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48020 a!2862)))))

(declare-fun b!1452541 () Bool)

(declare-fun res!983744 () Bool)

(assert (=> b!1452541 (=> (not res!983744) (not e!817689))))

(assert (=> b!1452541 (= res!983744 (validKeyInArray!0 (select (arr!47469 a!2862) i!1006)))))

(declare-fun b!1452542 () Bool)

(declare-fun res!983747 () Bool)

(assert (=> b!1452542 (=> (not res!983747) (not e!817691))))

(assert (=> b!1452542 (= res!983747 e!817688)))

(declare-fun c!133910 () Bool)

(assert (=> b!1452542 (= c!133910 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452543 () Bool)

(assert (=> b!1452543 (= e!817690 e!817691)))

(declare-fun res!983746 () Bool)

(assert (=> b!1452543 (=> (not res!983746) (not e!817691))))

(assert (=> b!1452543 (= res!983746 (= lt!636936 (Intermediate!11744 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452543 (= lt!636936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636935 mask!2687) lt!636935 lt!636933 mask!2687))))

(assert (=> b!1452543 (= lt!636935 (select (store (arr!47469 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452544 () Bool)

(declare-fun res!983734 () Bool)

(assert (=> b!1452544 (=> (not res!983734) (not e!817689))))

(assert (=> b!1452544 (= res!983734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125006 res!983740) b!1452528))

(assert (= (and b!1452528 res!983743) b!1452541))

(assert (= (and b!1452541 res!983744) b!1452535))

(assert (= (and b!1452535 res!983736) b!1452544))

(assert (= (and b!1452544 res!983734) b!1452529))

(assert (= (and b!1452529 res!983741) b!1452533))

(assert (= (and b!1452533 res!983738) b!1452540))

(assert (= (and b!1452540 res!983748) b!1452532))

(assert (= (and b!1452532 res!983739) b!1452537))

(assert (= (and b!1452537 res!983742) b!1452543))

(assert (= (and b!1452543 res!983746) b!1452542))

(assert (= (and b!1452542 c!133910) b!1452530))

(assert (= (and b!1452542 (not c!133910)) b!1452536))

(assert (= (and b!1452542 res!983747) b!1452534))

(assert (= (and b!1452534 res!983735) b!1452538))

(assert (= (and b!1452538 res!983745) b!1452539))

(assert (= (and b!1452539 res!983737) b!1452531))

(declare-fun m!1341157 () Bool)

(assert (=> b!1452529 m!1341157))

(declare-fun m!1341159 () Bool)

(assert (=> b!1452540 m!1341159))

(declare-fun m!1341161 () Bool)

(assert (=> b!1452540 m!1341161))

(declare-fun m!1341163 () Bool)

(assert (=> start!125006 m!1341163))

(declare-fun m!1341165 () Bool)

(assert (=> start!125006 m!1341165))

(declare-fun m!1341167 () Bool)

(assert (=> b!1452539 m!1341167))

(assert (=> b!1452539 m!1341167))

(declare-fun m!1341169 () Bool)

(assert (=> b!1452539 m!1341169))

(declare-fun m!1341171 () Bool)

(assert (=> b!1452543 m!1341171))

(assert (=> b!1452543 m!1341171))

(declare-fun m!1341173 () Bool)

(assert (=> b!1452543 m!1341173))

(assert (=> b!1452543 m!1341159))

(declare-fun m!1341175 () Bool)

(assert (=> b!1452543 m!1341175))

(declare-fun m!1341177 () Bool)

(assert (=> b!1452541 m!1341177))

(assert (=> b!1452541 m!1341177))

(declare-fun m!1341179 () Bool)

(assert (=> b!1452541 m!1341179))

(declare-fun m!1341181 () Bool)

(assert (=> b!1452530 m!1341181))

(assert (=> b!1452531 m!1341159))

(declare-fun m!1341183 () Bool)

(assert (=> b!1452531 m!1341183))

(declare-fun m!1341185 () Bool)

(assert (=> b!1452531 m!1341185))

(declare-fun m!1341187 () Bool)

(assert (=> b!1452531 m!1341187))

(assert (=> b!1452531 m!1341167))

(assert (=> b!1452535 m!1341167))

(assert (=> b!1452535 m!1341167))

(declare-fun m!1341189 () Bool)

(assert (=> b!1452535 m!1341189))

(declare-fun m!1341191 () Bool)

(assert (=> b!1452544 m!1341191))

(assert (=> b!1452537 m!1341167))

(assert (=> b!1452537 m!1341167))

(declare-fun m!1341193 () Bool)

(assert (=> b!1452537 m!1341193))

(assert (=> b!1452532 m!1341167))

(assert (=> b!1452532 m!1341167))

(declare-fun m!1341195 () Bool)

(assert (=> b!1452532 m!1341195))

(assert (=> b!1452532 m!1341195))

(assert (=> b!1452532 m!1341167))

(declare-fun m!1341197 () Bool)

(assert (=> b!1452532 m!1341197))

(declare-fun m!1341199 () Bool)

(assert (=> b!1452536 m!1341199))

(declare-fun m!1341201 () Bool)

(assert (=> b!1452536 m!1341201))

(declare-fun m!1341203 () Bool)

(assert (=> b!1452538 m!1341203))

(assert (=> b!1452538 m!1341159))

(assert (=> b!1452538 m!1341185))

(assert (=> b!1452538 m!1341187))

(declare-fun m!1341205 () Bool)

(assert (=> b!1452538 m!1341205))

(assert (=> b!1452538 m!1341167))

(push 1)

(assert (not b!1452536))

(assert (not b!1452532))

(assert (not b!1452529))

(assert (not b!1452538))

(assert (not b!1452541))

(assert (not b!1452530))

(assert (not b!1452539))

(assert (not b!1452537))

(assert (not b!1452543))

(assert (not start!125006))

(assert (not b!1452544))

(assert (not b!1452535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

