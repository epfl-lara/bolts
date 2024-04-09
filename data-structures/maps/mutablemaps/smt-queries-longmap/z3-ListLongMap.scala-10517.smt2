; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124050 () Bool)

(assert start!124050)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1436141 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!810496 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97631 0))(
  ( (array!97632 (arr!47108 (Array (_ BitVec 32) (_ BitVec 64))) (size!47659 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97631)

(assert (=> b!1436141 (= e!810496 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47659 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47659 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47659 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47108 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1436142 () Bool)

(declare-fun res!969206 () Bool)

(assert (=> b!1436142 (=> (not res!969206) (not e!810496))))

(declare-datatypes ((List!33789 0))(
  ( (Nil!33786) (Cons!33785 (h!35120 (_ BitVec 64)) (t!48490 List!33789)) )
))
(declare-fun arrayNoDuplicates!0 (array!97631 (_ BitVec 32) List!33789) Bool)

(assert (=> b!1436142 (= res!969206 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33786))))

(declare-fun b!1436144 () Bool)

(declare-fun res!969202 () Bool)

(assert (=> b!1436144 (=> (not res!969202) (not e!810496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436144 (= res!969202 (validKeyInArray!0 (select (arr!47108 a!2862) i!1006)))))

(declare-fun b!1436145 () Bool)

(declare-fun res!969203 () Bool)

(assert (=> b!1436145 (=> (not res!969203) (not e!810496))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436145 (= res!969203 (validKeyInArray!0 (select (arr!47108 a!2862) j!93)))))

(declare-fun b!1436146 () Bool)

(declare-fun res!969207 () Bool)

(assert (=> b!1436146 (=> (not res!969207) (not e!810496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97631 (_ BitVec 32)) Bool)

(assert (=> b!1436146 (= res!969207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!969205 () Bool)

(assert (=> start!124050 (=> (not res!969205) (not e!810496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124050 (= res!969205 (validMask!0 mask!2687))))

(assert (=> start!124050 e!810496))

(assert (=> start!124050 true))

(declare-fun array_inv!36053 (array!97631) Bool)

(assert (=> start!124050 (array_inv!36053 a!2862)))

(declare-fun b!1436143 () Bool)

(declare-fun res!969204 () Bool)

(assert (=> b!1436143 (=> (not res!969204) (not e!810496))))

(assert (=> b!1436143 (= res!969204 (and (= (size!47659 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47659 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47659 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124050 res!969205) b!1436143))

(assert (= (and b!1436143 res!969204) b!1436144))

(assert (= (and b!1436144 res!969202) b!1436145))

(assert (= (and b!1436145 res!969203) b!1436146))

(assert (= (and b!1436146 res!969207) b!1436142))

(assert (= (and b!1436142 res!969206) b!1436141))

(declare-fun m!1325545 () Bool)

(assert (=> b!1436146 m!1325545))

(declare-fun m!1325547 () Bool)

(assert (=> b!1436141 m!1325547))

(declare-fun m!1325549 () Bool)

(assert (=> b!1436141 m!1325549))

(declare-fun m!1325551 () Bool)

(assert (=> start!124050 m!1325551))

(declare-fun m!1325553 () Bool)

(assert (=> start!124050 m!1325553))

(declare-fun m!1325555 () Bool)

(assert (=> b!1436145 m!1325555))

(assert (=> b!1436145 m!1325555))

(declare-fun m!1325557 () Bool)

(assert (=> b!1436145 m!1325557))

(declare-fun m!1325559 () Bool)

(assert (=> b!1436142 m!1325559))

(declare-fun m!1325561 () Bool)

(assert (=> b!1436144 m!1325561))

(assert (=> b!1436144 m!1325561))

(declare-fun m!1325563 () Bool)

(assert (=> b!1436144 m!1325563))

(check-sat (not b!1436144) (not b!1436145) (not start!124050) (not b!1436142) (not b!1436146))
(check-sat)
(get-model)

(declare-fun b!1436175 () Bool)

(declare-fun e!810515 () Bool)

(declare-fun e!810514 () Bool)

(assert (=> b!1436175 (= e!810515 e!810514)))

(declare-fun res!969232 () Bool)

(assert (=> b!1436175 (=> (not res!969232) (not e!810514))))

(declare-fun e!810512 () Bool)

(assert (=> b!1436175 (= res!969232 (not e!810512))))

(declare-fun res!969233 () Bool)

(assert (=> b!1436175 (=> (not res!969233) (not e!810512))))

(assert (=> b!1436175 (= res!969233 (validKeyInArray!0 (select (arr!47108 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436176 () Bool)

(declare-fun e!810513 () Bool)

(assert (=> b!1436176 (= e!810514 e!810513)))

(declare-fun c!132977 () Bool)

(assert (=> b!1436176 (= c!132977 (validKeyInArray!0 (select (arr!47108 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67587 () Bool)

(declare-fun call!67590 () Bool)

(assert (=> bm!67587 (= call!67590 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132977 (Cons!33785 (select (arr!47108 a!2862) #b00000000000000000000000000000000) Nil!33786) Nil!33786)))))

(declare-fun d!154465 () Bool)

(declare-fun res!969234 () Bool)

(assert (=> d!154465 (=> res!969234 e!810515)))

(assert (=> d!154465 (= res!969234 (bvsge #b00000000000000000000000000000000 (size!47659 a!2862)))))

(assert (=> d!154465 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33786) e!810515)))

(declare-fun b!1436177 () Bool)

(assert (=> b!1436177 (= e!810513 call!67590)))

(declare-fun b!1436178 () Bool)

(declare-fun contains!9894 (List!33789 (_ BitVec 64)) Bool)

(assert (=> b!1436178 (= e!810512 (contains!9894 Nil!33786 (select (arr!47108 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436179 () Bool)

(assert (=> b!1436179 (= e!810513 call!67590)))

(assert (= (and d!154465 (not res!969234)) b!1436175))

(assert (= (and b!1436175 res!969233) b!1436178))

(assert (= (and b!1436175 res!969232) b!1436176))

(assert (= (and b!1436176 c!132977) b!1436177))

(assert (= (and b!1436176 (not c!132977)) b!1436179))

(assert (= (or b!1436177 b!1436179) bm!67587))

(declare-fun m!1325585 () Bool)

(assert (=> b!1436175 m!1325585))

(assert (=> b!1436175 m!1325585))

(declare-fun m!1325587 () Bool)

(assert (=> b!1436175 m!1325587))

(assert (=> b!1436176 m!1325585))

(assert (=> b!1436176 m!1325585))

(assert (=> b!1436176 m!1325587))

(assert (=> bm!67587 m!1325585))

(declare-fun m!1325589 () Bool)

(assert (=> bm!67587 m!1325589))

(assert (=> b!1436178 m!1325585))

(assert (=> b!1436178 m!1325585))

(declare-fun m!1325591 () Bool)

(assert (=> b!1436178 m!1325591))

(assert (=> b!1436142 d!154465))

(declare-fun d!154467 () Bool)

(assert (=> d!154467 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124050 d!154467))

(declare-fun d!154471 () Bool)

(assert (=> d!154471 (= (array_inv!36053 a!2862) (bvsge (size!47659 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124050 d!154471))

(declare-fun b!1436200 () Bool)

(declare-fun e!810533 () Bool)

(declare-fun call!67596 () Bool)

(assert (=> b!1436200 (= e!810533 call!67596)))

(declare-fun b!1436201 () Bool)

(declare-fun e!810532 () Bool)

(assert (=> b!1436201 (= e!810532 call!67596)))

(declare-fun b!1436202 () Bool)

(assert (=> b!1436202 (= e!810533 e!810532)))

(declare-fun lt!632040 () (_ BitVec 64))

(assert (=> b!1436202 (= lt!632040 (select (arr!47108 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48490 0))(
  ( (Unit!48491) )
))
(declare-fun lt!632039 () Unit!48490)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97631 (_ BitVec 64) (_ BitVec 32)) Unit!48490)

(assert (=> b!1436202 (= lt!632039 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632040 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436202 (arrayContainsKey!0 a!2862 lt!632040 #b00000000000000000000000000000000)))

(declare-fun lt!632041 () Unit!48490)

(assert (=> b!1436202 (= lt!632041 lt!632039)))

(declare-fun res!969245 () Bool)

(declare-datatypes ((SeekEntryResult!11398 0))(
  ( (MissingZero!11398 (index!47983 (_ BitVec 32))) (Found!11398 (index!47984 (_ BitVec 32))) (Intermediate!11398 (undefined!12210 Bool) (index!47985 (_ BitVec 32)) (x!129679 (_ BitVec 32))) (Undefined!11398) (MissingVacant!11398 (index!47986 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97631 (_ BitVec 32)) SeekEntryResult!11398)

(assert (=> b!1436202 (= res!969245 (= (seekEntryOrOpen!0 (select (arr!47108 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11398 #b00000000000000000000000000000000)))))

(assert (=> b!1436202 (=> (not res!969245) (not e!810532))))

(declare-fun d!154473 () Bool)

(declare-fun res!969246 () Bool)

(declare-fun e!810531 () Bool)

(assert (=> d!154473 (=> res!969246 e!810531)))

(assert (=> d!154473 (= res!969246 (bvsge #b00000000000000000000000000000000 (size!47659 a!2862)))))

(assert (=> d!154473 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810531)))

(declare-fun b!1436203 () Bool)

(assert (=> b!1436203 (= e!810531 e!810533)))

(declare-fun c!132983 () Bool)

(assert (=> b!1436203 (= c!132983 (validKeyInArray!0 (select (arr!47108 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67593 () Bool)

(assert (=> bm!67593 (= call!67596 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!154473 (not res!969246)) b!1436203))

(assert (= (and b!1436203 c!132983) b!1436202))

(assert (= (and b!1436203 (not c!132983)) b!1436200))

(assert (= (and b!1436202 res!969245) b!1436201))

(assert (= (or b!1436201 b!1436200) bm!67593))

(assert (=> b!1436202 m!1325585))

(declare-fun m!1325605 () Bool)

(assert (=> b!1436202 m!1325605))

(declare-fun m!1325607 () Bool)

(assert (=> b!1436202 m!1325607))

(assert (=> b!1436202 m!1325585))

(declare-fun m!1325609 () Bool)

(assert (=> b!1436202 m!1325609))

(assert (=> b!1436203 m!1325585))

(assert (=> b!1436203 m!1325585))

(assert (=> b!1436203 m!1325587))

(declare-fun m!1325611 () Bool)

(assert (=> bm!67593 m!1325611))

(assert (=> b!1436146 d!154473))

(declare-fun d!154481 () Bool)

(assert (=> d!154481 (= (validKeyInArray!0 (select (arr!47108 a!2862) j!93)) (and (not (= (select (arr!47108 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47108 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436145 d!154481))

(declare-fun d!154483 () Bool)

(assert (=> d!154483 (= (validKeyInArray!0 (select (arr!47108 a!2862) i!1006)) (and (not (= (select (arr!47108 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47108 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436144 d!154483))

(check-sat (not b!1436175) (not b!1436178) (not b!1436203) (not bm!67593) (not b!1436176) (not b!1436202) (not bm!67587))
(check-sat)
