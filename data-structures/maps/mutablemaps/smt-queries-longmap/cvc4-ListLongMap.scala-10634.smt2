; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124988 () Bool)

(assert start!124988)

(declare-fun b!1452069 () Bool)

(declare-fun e!817499 () Bool)

(declare-fun e!817504 () Bool)

(assert (=> b!1452069 (= e!817499 e!817504)))

(declare-fun res!983343 () Bool)

(assert (=> b!1452069 (=> (not res!983343) (not e!817504))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98353 0))(
  ( (array!98354 (arr!47460 (Array (_ BitVec 32) (_ BitVec 64))) (size!48011 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98353)

(assert (=> b!1452069 (= res!983343 (= (select (store (arr!47460 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636799 () array!98353)

(assert (=> b!1452069 (= lt!636799 (array!98354 (store (arr!47460 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48011 a!2862)))))

(declare-fun b!1452070 () Bool)

(declare-fun res!983338 () Bool)

(declare-fun e!817505 () Bool)

(assert (=> b!1452070 (=> (not res!983338) (not e!817505))))

(declare-fun e!817502 () Bool)

(assert (=> b!1452070 (= res!983338 e!817502)))

(declare-fun c!133883 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452070 (= c!133883 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452071 () Bool)

(declare-fun res!983342 () Bool)

(assert (=> b!1452071 (=> (not res!983342) (not e!817499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452071 (= res!983342 (validKeyInArray!0 (select (arr!47460 a!2862) i!1006)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1452072 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun e!817500 () Bool)

(assert (=> b!1452072 (= e!817500 (and (or (= (select (arr!47460 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47460 a!2862) intermediateBeforeIndex!19) (select (arr!47460 a!2862) j!93))) (or (and (= (select (arr!47460 a!2862) index!646) (select (store (arr!47460 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47460 a!2862) index!646) (select (arr!47460 a!2862) j!93))) (= (select (arr!47460 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47460 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452073 () Bool)

(declare-fun res!983340 () Bool)

(assert (=> b!1452073 (=> (not res!983340) (not e!817499))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98353 (_ BitVec 32)) Bool)

(assert (=> b!1452073 (= res!983340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452074 () Bool)

(declare-fun res!983329 () Bool)

(assert (=> b!1452074 (=> (not res!983329) (not e!817500))))

(declare-datatypes ((SeekEntryResult!11735 0))(
  ( (MissingZero!11735 (index!49331 (_ BitVec 32))) (Found!11735 (index!49332 (_ BitVec 32))) (Intermediate!11735 (undefined!12547 Bool) (index!49333 (_ BitVec 32)) (x!130979 (_ BitVec 32))) (Undefined!11735) (MissingVacant!11735 (index!49334 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98353 (_ BitVec 32)) SeekEntryResult!11735)

(assert (=> b!1452074 (= res!983329 (= (seekEntryOrOpen!0 (select (arr!47460 a!2862) j!93) a!2862 mask!2687) (Found!11735 j!93)))))

(declare-fun lt!636800 () (_ BitVec 64))

(declare-fun b!1452075 () Bool)

(declare-fun lt!636802 () SeekEntryResult!11735)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98353 (_ BitVec 32)) SeekEntryResult!11735)

(assert (=> b!1452075 (= e!817502 (= lt!636802 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636800 lt!636799 mask!2687)))))

(declare-fun b!1452076 () Bool)

(declare-fun e!817501 () Bool)

(assert (=> b!1452076 (= e!817504 e!817501)))

(declare-fun res!983331 () Bool)

(assert (=> b!1452076 (=> (not res!983331) (not e!817501))))

(declare-fun lt!636801 () SeekEntryResult!11735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452076 (= res!983331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47460 a!2862) j!93) mask!2687) (select (arr!47460 a!2862) j!93) a!2862 mask!2687) lt!636801))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452076 (= lt!636801 (Intermediate!11735 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452077 () Bool)

(declare-fun res!983336 () Bool)

(assert (=> b!1452077 (=> (not res!983336) (not e!817505))))

(assert (=> b!1452077 (= res!983336 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!983339 () Bool)

(assert (=> start!124988 (=> (not res!983339) (not e!817499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124988 (= res!983339 (validMask!0 mask!2687))))

(assert (=> start!124988 e!817499))

(assert (=> start!124988 true))

(declare-fun array_inv!36405 (array!98353) Bool)

(assert (=> start!124988 (array_inv!36405 a!2862)))

(declare-fun b!1452078 () Bool)

(assert (=> b!1452078 (= e!817505 (not true))))

(assert (=> b!1452078 e!817500))

(declare-fun res!983335 () Bool)

(assert (=> b!1452078 (=> (not res!983335) (not e!817500))))

(assert (=> b!1452078 (= res!983335 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48914 0))(
  ( (Unit!48915) )
))
(declare-fun lt!636798 () Unit!48914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48914)

(assert (=> b!1452078 (= lt!636798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452079 () Bool)

(declare-fun res!983333 () Bool)

(assert (=> b!1452079 (=> (not res!983333) (not e!817499))))

(assert (=> b!1452079 (= res!983333 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48011 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48011 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48011 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452080 () Bool)

(assert (=> b!1452080 (= e!817501 e!817505)))

(declare-fun res!983330 () Bool)

(assert (=> b!1452080 (=> (not res!983330) (not e!817505))))

(assert (=> b!1452080 (= res!983330 (= lt!636802 (Intermediate!11735 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452080 (= lt!636802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636800 mask!2687) lt!636800 lt!636799 mask!2687))))

(assert (=> b!1452080 (= lt!636800 (select (store (arr!47460 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452081 () Bool)

(declare-fun res!983341 () Bool)

(assert (=> b!1452081 (=> (not res!983341) (not e!817499))))

(assert (=> b!1452081 (= res!983341 (and (= (size!48011 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48011 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48011 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452082 () Bool)

(declare-fun res!983337 () Bool)

(assert (=> b!1452082 (=> (not res!983337) (not e!817501))))

(assert (=> b!1452082 (= res!983337 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47460 a!2862) j!93) a!2862 mask!2687) lt!636801))))

(declare-fun b!1452083 () Bool)

(declare-fun res!983332 () Bool)

(assert (=> b!1452083 (=> (not res!983332) (not e!817499))))

(assert (=> b!1452083 (= res!983332 (validKeyInArray!0 (select (arr!47460 a!2862) j!93)))))

(declare-fun b!1452084 () Bool)

(declare-fun res!983334 () Bool)

(assert (=> b!1452084 (=> (not res!983334) (not e!817499))))

(declare-datatypes ((List!34141 0))(
  ( (Nil!34138) (Cons!34137 (h!35487 (_ BitVec 64)) (t!48842 List!34141)) )
))
(declare-fun arrayNoDuplicates!0 (array!98353 (_ BitVec 32) List!34141) Bool)

(assert (=> b!1452084 (= res!983334 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34138))))

(declare-fun b!1452085 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98353 (_ BitVec 32)) SeekEntryResult!11735)

(assert (=> b!1452085 (= e!817502 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636800 lt!636799 mask!2687) (seekEntryOrOpen!0 lt!636800 lt!636799 mask!2687)))))

(assert (= (and start!124988 res!983339) b!1452081))

(assert (= (and b!1452081 res!983341) b!1452071))

(assert (= (and b!1452071 res!983342) b!1452083))

(assert (= (and b!1452083 res!983332) b!1452073))

(assert (= (and b!1452073 res!983340) b!1452084))

(assert (= (and b!1452084 res!983334) b!1452079))

(assert (= (and b!1452079 res!983333) b!1452069))

(assert (= (and b!1452069 res!983343) b!1452076))

(assert (= (and b!1452076 res!983331) b!1452082))

(assert (= (and b!1452082 res!983337) b!1452080))

(assert (= (and b!1452080 res!983330) b!1452070))

(assert (= (and b!1452070 c!133883) b!1452075))

(assert (= (and b!1452070 (not c!133883)) b!1452085))

(assert (= (and b!1452070 res!983338) b!1452077))

(assert (= (and b!1452077 res!983336) b!1452078))

(assert (= (and b!1452078 res!983335) b!1452074))

(assert (= (and b!1452074 res!983329) b!1452072))

(declare-fun m!1340707 () Bool)

(assert (=> b!1452069 m!1340707))

(declare-fun m!1340709 () Bool)

(assert (=> b!1452069 m!1340709))

(assert (=> b!1452072 m!1340707))

(declare-fun m!1340711 () Bool)

(assert (=> b!1452072 m!1340711))

(declare-fun m!1340713 () Bool)

(assert (=> b!1452072 m!1340713))

(declare-fun m!1340715 () Bool)

(assert (=> b!1452072 m!1340715))

(declare-fun m!1340717 () Bool)

(assert (=> b!1452072 m!1340717))

(declare-fun m!1340719 () Bool)

(assert (=> b!1452075 m!1340719))

(assert (=> b!1452082 m!1340717))

(assert (=> b!1452082 m!1340717))

(declare-fun m!1340721 () Bool)

(assert (=> b!1452082 m!1340721))

(declare-fun m!1340723 () Bool)

(assert (=> b!1452080 m!1340723))

(assert (=> b!1452080 m!1340723))

(declare-fun m!1340725 () Bool)

(assert (=> b!1452080 m!1340725))

(assert (=> b!1452080 m!1340707))

(declare-fun m!1340727 () Bool)

(assert (=> b!1452080 m!1340727))

(declare-fun m!1340729 () Bool)

(assert (=> b!1452084 m!1340729))

(assert (=> b!1452076 m!1340717))

(assert (=> b!1452076 m!1340717))

(declare-fun m!1340731 () Bool)

(assert (=> b!1452076 m!1340731))

(assert (=> b!1452076 m!1340731))

(assert (=> b!1452076 m!1340717))

(declare-fun m!1340733 () Bool)

(assert (=> b!1452076 m!1340733))

(declare-fun m!1340735 () Bool)

(assert (=> b!1452071 m!1340735))

(assert (=> b!1452071 m!1340735))

(declare-fun m!1340737 () Bool)

(assert (=> b!1452071 m!1340737))

(assert (=> b!1452083 m!1340717))

(assert (=> b!1452083 m!1340717))

(declare-fun m!1340739 () Bool)

(assert (=> b!1452083 m!1340739))

(declare-fun m!1340741 () Bool)

(assert (=> b!1452078 m!1340741))

(declare-fun m!1340743 () Bool)

(assert (=> b!1452078 m!1340743))

(assert (=> b!1452074 m!1340717))

(assert (=> b!1452074 m!1340717))

(declare-fun m!1340745 () Bool)

(assert (=> b!1452074 m!1340745))

(declare-fun m!1340747 () Bool)

(assert (=> b!1452073 m!1340747))

(declare-fun m!1340749 () Bool)

(assert (=> b!1452085 m!1340749))

(declare-fun m!1340751 () Bool)

(assert (=> b!1452085 m!1340751))

(declare-fun m!1340753 () Bool)

(assert (=> start!124988 m!1340753))

(declare-fun m!1340755 () Bool)

(assert (=> start!124988 m!1340755))

(push 1)

(assert (not b!1452074))

(assert (not b!1452073))

(assert (not b!1452085))

(assert (not b!1452084))

(assert (not b!1452075))

(assert (not b!1452071))

(assert (not b!1452080))

(assert (not b!1452076))

(assert (not start!124988))

(assert (not b!1452078))

(assert (not b!1452082))

(assert (not b!1452083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

