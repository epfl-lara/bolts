; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125812 () Bool)

(assert start!125812)

(declare-fun b!1471719 () Bool)

(declare-fun e!826071 () Bool)

(assert (=> b!1471719 (= e!826071 (not true))))

(declare-fun e!826072 () Bool)

(assert (=> b!1471719 e!826072))

(declare-fun res!999574 () Bool)

(assert (=> b!1471719 (=> (not res!999574) (not e!826072))))

(declare-datatypes ((array!99063 0))(
  ( (array!99064 (arr!47812 (Array (_ BitVec 32) (_ BitVec 64))) (size!48363 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99063)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99063 (_ BitVec 32)) Bool)

(assert (=> b!1471719 (= res!999574 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49438 0))(
  ( (Unit!49439) )
))
(declare-fun lt!643324 () Unit!49438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49438)

(assert (=> b!1471719 (= lt!643324 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471720 () Bool)

(declare-fun res!999565 () Bool)

(declare-fun e!826075 () Bool)

(assert (=> b!1471720 (=> (not res!999565) (not e!826075))))

(assert (=> b!1471720 (= res!999565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471721 () Bool)

(declare-fun res!999577 () Bool)

(assert (=> b!1471721 (=> (not res!999577) (not e!826075))))

(declare-datatypes ((List!34493 0))(
  ( (Nil!34490) (Cons!34489 (h!35845 (_ BitVec 64)) (t!49194 List!34493)) )
))
(declare-fun arrayNoDuplicates!0 (array!99063 (_ BitVec 32) List!34493) Bool)

(assert (=> b!1471721 (= res!999577 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34490))))

(declare-fun b!1471722 () Bool)

(declare-fun e!826070 () Bool)

(assert (=> b!1471722 (= e!826070 e!826071)))

(declare-fun res!999578 () Bool)

(assert (=> b!1471722 (=> (not res!999578) (not e!826071))))

(declare-datatypes ((SeekEntryResult!12075 0))(
  ( (MissingZero!12075 (index!50691 (_ BitVec 32))) (Found!12075 (index!50692 (_ BitVec 32))) (Intermediate!12075 (undefined!12887 Bool) (index!50693 (_ BitVec 32)) (x!132281 (_ BitVec 32))) (Undefined!12075) (MissingVacant!12075 (index!50694 (_ BitVec 32))) )
))
(declare-fun lt!643327 () SeekEntryResult!12075)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471722 (= res!999578 (= lt!643327 (Intermediate!12075 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643325 () array!99063)

(declare-fun lt!643326 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99063 (_ BitVec 32)) SeekEntryResult!12075)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471722 (= lt!643327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643326 mask!2687) lt!643326 lt!643325 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1471722 (= lt!643326 (select (store (arr!47812 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471723 () Bool)

(declare-fun e!826076 () Bool)

(assert (=> b!1471723 (= e!826076 e!826070)))

(declare-fun res!999579 () Bool)

(assert (=> b!1471723 (=> (not res!999579) (not e!826070))))

(declare-fun lt!643323 () SeekEntryResult!12075)

(assert (=> b!1471723 (= res!999579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47812 a!2862) j!93) mask!2687) (select (arr!47812 a!2862) j!93) a!2862 mask!2687) lt!643323))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1471723 (= lt!643323 (Intermediate!12075 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471724 () Bool)

(declare-fun res!999568 () Bool)

(assert (=> b!1471724 (=> (not res!999568) (not e!826071))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1471724 (= res!999568 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471725 () Bool)

(assert (=> b!1471725 (= e!826075 e!826076)))

(declare-fun res!999575 () Bool)

(assert (=> b!1471725 (=> (not res!999575) (not e!826076))))

(assert (=> b!1471725 (= res!999575 (= (select (store (arr!47812 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471725 (= lt!643325 (array!99064 (store (arr!47812 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48363 a!2862)))))

(declare-fun b!1471726 () Bool)

(declare-fun res!999576 () Bool)

(assert (=> b!1471726 (=> (not res!999576) (not e!826072))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99063 (_ BitVec 32)) SeekEntryResult!12075)

(assert (=> b!1471726 (= res!999576 (= (seekEntryOrOpen!0 (select (arr!47812 a!2862) j!93) a!2862 mask!2687) (Found!12075 j!93)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1471727 () Bool)

(declare-fun e!826073 () Bool)

(assert (=> b!1471727 (= e!826073 (= lt!643327 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643326 lt!643325 mask!2687)))))

(declare-fun b!1471728 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99063 (_ BitVec 32)) SeekEntryResult!12075)

(assert (=> b!1471728 (= e!826073 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643326 lt!643325 mask!2687) (seekEntryOrOpen!0 lt!643326 lt!643325 mask!2687)))))

(declare-fun b!1471729 () Bool)

(declare-fun res!999571 () Bool)

(assert (=> b!1471729 (=> (not res!999571) (not e!826075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471729 (= res!999571 (validKeyInArray!0 (select (arr!47812 a!2862) j!93)))))

(declare-fun b!1471730 () Bool)

(declare-fun res!999569 () Bool)

(assert (=> b!1471730 (=> (not res!999569) (not e!826075))))

(assert (=> b!1471730 (= res!999569 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48363 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48363 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48363 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471731 () Bool)

(declare-fun res!999570 () Bool)

(assert (=> b!1471731 (=> (not res!999570) (not e!826071))))

(assert (=> b!1471731 (= res!999570 e!826073)))

(declare-fun c!135593 () Bool)

(assert (=> b!1471731 (= c!135593 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471732 () Bool)

(declare-fun res!999566 () Bool)

(assert (=> b!1471732 (=> (not res!999566) (not e!826075))))

(assert (=> b!1471732 (= res!999566 (and (= (size!48363 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48363 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48363 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471733 () Bool)

(assert (=> b!1471733 (= e!826072 (or (= (select (arr!47812 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47812 a!2862) intermediateBeforeIndex!19) (select (arr!47812 a!2862) j!93))))))

(declare-fun res!999573 () Bool)

(assert (=> start!125812 (=> (not res!999573) (not e!826075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125812 (= res!999573 (validMask!0 mask!2687))))

(assert (=> start!125812 e!826075))

(assert (=> start!125812 true))

(declare-fun array_inv!36757 (array!99063) Bool)

(assert (=> start!125812 (array_inv!36757 a!2862)))

(declare-fun b!1471734 () Bool)

(declare-fun res!999572 () Bool)

(assert (=> b!1471734 (=> (not res!999572) (not e!826070))))

(assert (=> b!1471734 (= res!999572 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47812 a!2862) j!93) a!2862 mask!2687) lt!643323))))

(declare-fun b!1471735 () Bool)

(declare-fun res!999567 () Bool)

(assert (=> b!1471735 (=> (not res!999567) (not e!826075))))

(assert (=> b!1471735 (= res!999567 (validKeyInArray!0 (select (arr!47812 a!2862) i!1006)))))

(assert (= (and start!125812 res!999573) b!1471732))

(assert (= (and b!1471732 res!999566) b!1471735))

(assert (= (and b!1471735 res!999567) b!1471729))

(assert (= (and b!1471729 res!999571) b!1471720))

(assert (= (and b!1471720 res!999565) b!1471721))

(assert (= (and b!1471721 res!999577) b!1471730))

(assert (= (and b!1471730 res!999569) b!1471725))

(assert (= (and b!1471725 res!999575) b!1471723))

(assert (= (and b!1471723 res!999579) b!1471734))

(assert (= (and b!1471734 res!999572) b!1471722))

(assert (= (and b!1471722 res!999578) b!1471731))

(assert (= (and b!1471731 c!135593) b!1471727))

(assert (= (and b!1471731 (not c!135593)) b!1471728))

(assert (= (and b!1471731 res!999570) b!1471724))

(assert (= (and b!1471724 res!999568) b!1471719))

(assert (= (and b!1471719 res!999574) b!1471726))

(assert (= (and b!1471726 res!999576) b!1471733))

(declare-fun m!1358553 () Bool)

(assert (=> b!1471720 m!1358553))

(declare-fun m!1358555 () Bool)

(assert (=> b!1471725 m!1358555))

(declare-fun m!1358557 () Bool)

(assert (=> b!1471725 m!1358557))

(declare-fun m!1358559 () Bool)

(assert (=> b!1471723 m!1358559))

(assert (=> b!1471723 m!1358559))

(declare-fun m!1358561 () Bool)

(assert (=> b!1471723 m!1358561))

(assert (=> b!1471723 m!1358561))

(assert (=> b!1471723 m!1358559))

(declare-fun m!1358563 () Bool)

(assert (=> b!1471723 m!1358563))

(declare-fun m!1358565 () Bool)

(assert (=> b!1471727 m!1358565))

(declare-fun m!1358567 () Bool)

(assert (=> start!125812 m!1358567))

(declare-fun m!1358569 () Bool)

(assert (=> start!125812 m!1358569))

(declare-fun m!1358571 () Bool)

(assert (=> b!1471735 m!1358571))

(assert (=> b!1471735 m!1358571))

(declare-fun m!1358573 () Bool)

(assert (=> b!1471735 m!1358573))

(assert (=> b!1471729 m!1358559))

(assert (=> b!1471729 m!1358559))

(declare-fun m!1358575 () Bool)

(assert (=> b!1471729 m!1358575))

(assert (=> b!1471726 m!1358559))

(assert (=> b!1471726 m!1358559))

(declare-fun m!1358577 () Bool)

(assert (=> b!1471726 m!1358577))

(declare-fun m!1358579 () Bool)

(assert (=> b!1471733 m!1358579))

(assert (=> b!1471733 m!1358559))

(declare-fun m!1358581 () Bool)

(assert (=> b!1471728 m!1358581))

(declare-fun m!1358583 () Bool)

(assert (=> b!1471728 m!1358583))

(assert (=> b!1471734 m!1358559))

(assert (=> b!1471734 m!1358559))

(declare-fun m!1358585 () Bool)

(assert (=> b!1471734 m!1358585))

(declare-fun m!1358587 () Bool)

(assert (=> b!1471719 m!1358587))

(declare-fun m!1358589 () Bool)

(assert (=> b!1471719 m!1358589))

(declare-fun m!1358591 () Bool)

(assert (=> b!1471721 m!1358591))

(declare-fun m!1358593 () Bool)

(assert (=> b!1471722 m!1358593))

(assert (=> b!1471722 m!1358593))

(declare-fun m!1358595 () Bool)

(assert (=> b!1471722 m!1358595))

(assert (=> b!1471722 m!1358555))

(declare-fun m!1358597 () Bool)

(assert (=> b!1471722 m!1358597))

(push 1)

