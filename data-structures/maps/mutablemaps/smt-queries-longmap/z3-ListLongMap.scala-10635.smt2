; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124992 () Bool)

(assert start!124992)

(declare-fun b!1452171 () Bool)

(declare-fun e!817545 () Bool)

(declare-fun e!817546 () Bool)

(assert (=> b!1452171 (= e!817545 e!817546)))

(declare-fun res!983425 () Bool)

(assert (=> b!1452171 (=> (not res!983425) (not e!817546))))

(declare-datatypes ((array!98357 0))(
  ( (array!98358 (arr!47462 (Array (_ BitVec 32) (_ BitVec 64))) (size!48013 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98357)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11737 0))(
  ( (MissingZero!11737 (index!49339 (_ BitVec 32))) (Found!11737 (index!49340 (_ BitVec 32))) (Intermediate!11737 (undefined!12549 Bool) (index!49341 (_ BitVec 32)) (x!130989 (_ BitVec 32))) (Undefined!11737) (MissingVacant!11737 (index!49342 (_ BitVec 32))) )
))
(declare-fun lt!636829 () SeekEntryResult!11737)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98357 (_ BitVec 32)) SeekEntryResult!11737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452171 (= res!983425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47462 a!2862) j!93) mask!2687) (select (arr!47462 a!2862) j!93) a!2862 mask!2687) lt!636829))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452171 (= lt!636829 (Intermediate!11737 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452172 () Bool)

(declare-fun res!983419 () Bool)

(declare-fun e!817544 () Bool)

(assert (=> b!1452172 (=> (not res!983419) (not e!817544))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452172 (= res!983419 (and (= (size!48013 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48013 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48013 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!817542 () Bool)

(declare-fun lt!636831 () array!98357)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1452173 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!636832 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98357 (_ BitVec 32)) SeekEntryResult!11737)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98357 (_ BitVec 32)) SeekEntryResult!11737)

(assert (=> b!1452173 (= e!817542 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636832 lt!636831 mask!2687) (seekEntryOrOpen!0 lt!636832 lt!636831 mask!2687)))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1452174 () Bool)

(declare-fun e!817543 () Bool)

(assert (=> b!1452174 (= e!817543 (and (or (= (select (arr!47462 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47462 a!2862) intermediateBeforeIndex!19) (select (arr!47462 a!2862) j!93))) (or (and (= (select (arr!47462 a!2862) index!646) (select (store (arr!47462 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47462 a!2862) index!646) (select (arr!47462 a!2862) j!93))) (= (select (arr!47462 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47462 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452175 () Bool)

(declare-fun res!983421 () Bool)

(assert (=> b!1452175 (=> (not res!983421) (not e!817544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452175 (= res!983421 (validKeyInArray!0 (select (arr!47462 a!2862) i!1006)))))

(declare-fun b!1452176 () Bool)

(declare-fun res!983426 () Bool)

(declare-fun e!817547 () Bool)

(assert (=> b!1452176 (=> (not res!983426) (not e!817547))))

(assert (=> b!1452176 (= res!983426 e!817542)))

(declare-fun c!133889 () Bool)

(assert (=> b!1452176 (= c!133889 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452177 () Bool)

(declare-fun res!983424 () Bool)

(assert (=> b!1452177 (=> (not res!983424) (not e!817544))))

(declare-datatypes ((List!34143 0))(
  ( (Nil!34140) (Cons!34139 (h!35489 (_ BitVec 64)) (t!48844 List!34143)) )
))
(declare-fun arrayNoDuplicates!0 (array!98357 (_ BitVec 32) List!34143) Bool)

(assert (=> b!1452177 (= res!983424 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34140))))

(declare-fun res!983429 () Bool)

(assert (=> start!124992 (=> (not res!983429) (not e!817544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124992 (= res!983429 (validMask!0 mask!2687))))

(assert (=> start!124992 e!817544))

(assert (=> start!124992 true))

(declare-fun array_inv!36407 (array!98357) Bool)

(assert (=> start!124992 (array_inv!36407 a!2862)))

(declare-fun b!1452178 () Bool)

(declare-fun res!983431 () Bool)

(assert (=> b!1452178 (=> (not res!983431) (not e!817544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98357 (_ BitVec 32)) Bool)

(assert (=> b!1452178 (= res!983431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452179 () Bool)

(assert (=> b!1452179 (= e!817544 e!817545)))

(declare-fun res!983428 () Bool)

(assert (=> b!1452179 (=> (not res!983428) (not e!817545))))

(assert (=> b!1452179 (= res!983428 (= (select (store (arr!47462 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452179 (= lt!636831 (array!98358 (store (arr!47462 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48013 a!2862)))))

(declare-fun b!1452180 () Bool)

(declare-fun res!983432 () Bool)

(assert (=> b!1452180 (=> (not res!983432) (not e!817543))))

(assert (=> b!1452180 (= res!983432 (= (seekEntryOrOpen!0 (select (arr!47462 a!2862) j!93) a!2862 mask!2687) (Found!11737 j!93)))))

(declare-fun b!1452181 () Bool)

(declare-fun res!983423 () Bool)

(assert (=> b!1452181 (=> (not res!983423) (not e!817544))))

(assert (=> b!1452181 (= res!983423 (validKeyInArray!0 (select (arr!47462 a!2862) j!93)))))

(declare-fun b!1452182 () Bool)

(assert (=> b!1452182 (= e!817546 e!817547)))

(declare-fun res!983433 () Bool)

(assert (=> b!1452182 (=> (not res!983433) (not e!817547))))

(declare-fun lt!636830 () SeekEntryResult!11737)

(assert (=> b!1452182 (= res!983433 (= lt!636830 (Intermediate!11737 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452182 (= lt!636830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636832 mask!2687) lt!636832 lt!636831 mask!2687))))

(assert (=> b!1452182 (= lt!636832 (select (store (arr!47462 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452183 () Bool)

(assert (=> b!1452183 (= e!817542 (= lt!636830 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636832 lt!636831 mask!2687)))))

(declare-fun b!1452184 () Bool)

(declare-fun res!983422 () Bool)

(assert (=> b!1452184 (=> (not res!983422) (not e!817547))))

(assert (=> b!1452184 (= res!983422 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452185 () Bool)

(declare-fun res!983427 () Bool)

(assert (=> b!1452185 (=> (not res!983427) (not e!817546))))

(assert (=> b!1452185 (= res!983427 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47462 a!2862) j!93) a!2862 mask!2687) lt!636829))))

(declare-fun b!1452186 () Bool)

(assert (=> b!1452186 (= e!817547 (not (or (and (= (select (arr!47462 a!2862) index!646) (select (store (arr!47462 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47462 a!2862) index!646) (select (arr!47462 a!2862) j!93))) (= (select (arr!47462 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1452186 e!817543))

(declare-fun res!983430 () Bool)

(assert (=> b!1452186 (=> (not res!983430) (not e!817543))))

(assert (=> b!1452186 (= res!983430 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48918 0))(
  ( (Unit!48919) )
))
(declare-fun lt!636828 () Unit!48918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48918)

(assert (=> b!1452186 (= lt!636828 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452187 () Bool)

(declare-fun res!983420 () Bool)

(assert (=> b!1452187 (=> (not res!983420) (not e!817544))))

(assert (=> b!1452187 (= res!983420 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48013 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48013 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48013 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124992 res!983429) b!1452172))

(assert (= (and b!1452172 res!983419) b!1452175))

(assert (= (and b!1452175 res!983421) b!1452181))

(assert (= (and b!1452181 res!983423) b!1452178))

(assert (= (and b!1452178 res!983431) b!1452177))

(assert (= (and b!1452177 res!983424) b!1452187))

(assert (= (and b!1452187 res!983420) b!1452179))

(assert (= (and b!1452179 res!983428) b!1452171))

(assert (= (and b!1452171 res!983425) b!1452185))

(assert (= (and b!1452185 res!983427) b!1452182))

(assert (= (and b!1452182 res!983433) b!1452176))

(assert (= (and b!1452176 c!133889) b!1452183))

(assert (= (and b!1452176 (not c!133889)) b!1452173))

(assert (= (and b!1452176 res!983426) b!1452184))

(assert (= (and b!1452184 res!983422) b!1452186))

(assert (= (and b!1452186 res!983430) b!1452180))

(assert (= (and b!1452180 res!983432) b!1452174))

(declare-fun m!1340807 () Bool)

(assert (=> start!124992 m!1340807))

(declare-fun m!1340809 () Bool)

(assert (=> start!124992 m!1340809))

(declare-fun m!1340811 () Bool)

(assert (=> b!1452179 m!1340811))

(declare-fun m!1340813 () Bool)

(assert (=> b!1452179 m!1340813))

(declare-fun m!1340815 () Bool)

(assert (=> b!1452171 m!1340815))

(assert (=> b!1452171 m!1340815))

(declare-fun m!1340817 () Bool)

(assert (=> b!1452171 m!1340817))

(assert (=> b!1452171 m!1340817))

(assert (=> b!1452171 m!1340815))

(declare-fun m!1340819 () Bool)

(assert (=> b!1452171 m!1340819))

(declare-fun m!1340821 () Bool)

(assert (=> b!1452177 m!1340821))

(declare-fun m!1340823 () Bool)

(assert (=> b!1452182 m!1340823))

(assert (=> b!1452182 m!1340823))

(declare-fun m!1340825 () Bool)

(assert (=> b!1452182 m!1340825))

(assert (=> b!1452182 m!1340811))

(declare-fun m!1340827 () Bool)

(assert (=> b!1452182 m!1340827))

(declare-fun m!1340829 () Bool)

(assert (=> b!1452183 m!1340829))

(assert (=> b!1452185 m!1340815))

(assert (=> b!1452185 m!1340815))

(declare-fun m!1340831 () Bool)

(assert (=> b!1452185 m!1340831))

(assert (=> b!1452174 m!1340811))

(declare-fun m!1340833 () Bool)

(assert (=> b!1452174 m!1340833))

(declare-fun m!1340835 () Bool)

(assert (=> b!1452174 m!1340835))

(declare-fun m!1340837 () Bool)

(assert (=> b!1452174 m!1340837))

(assert (=> b!1452174 m!1340815))

(declare-fun m!1340839 () Bool)

(assert (=> b!1452175 m!1340839))

(assert (=> b!1452175 m!1340839))

(declare-fun m!1340841 () Bool)

(assert (=> b!1452175 m!1340841))

(declare-fun m!1340843 () Bool)

(assert (=> b!1452173 m!1340843))

(declare-fun m!1340845 () Bool)

(assert (=> b!1452173 m!1340845))

(declare-fun m!1340847 () Bool)

(assert (=> b!1452178 m!1340847))

(assert (=> b!1452181 m!1340815))

(assert (=> b!1452181 m!1340815))

(declare-fun m!1340849 () Bool)

(assert (=> b!1452181 m!1340849))

(assert (=> b!1452180 m!1340815))

(assert (=> b!1452180 m!1340815))

(declare-fun m!1340851 () Bool)

(assert (=> b!1452180 m!1340851))

(declare-fun m!1340853 () Bool)

(assert (=> b!1452186 m!1340853))

(assert (=> b!1452186 m!1340811))

(assert (=> b!1452186 m!1340835))

(assert (=> b!1452186 m!1340837))

(declare-fun m!1340855 () Bool)

(assert (=> b!1452186 m!1340855))

(assert (=> b!1452186 m!1340815))

(check-sat (not b!1452180) (not b!1452186) (not b!1452183) (not b!1452182) (not b!1452178) (not b!1452181) (not b!1452177) (not b!1452175) (not b!1452173) (not b!1452171) (not b!1452185) (not start!124992))
(check-sat)
