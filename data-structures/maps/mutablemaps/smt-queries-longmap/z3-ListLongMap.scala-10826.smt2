; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126714 () Bool)

(assert start!126714)

(declare-fun b!1487179 () Bool)

(declare-fun res!1011561 () Bool)

(declare-fun e!833657 () Bool)

(assert (=> b!1487179 (=> (not res!1011561) (not e!833657))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99530 0))(
  ( (array!99531 (arr!48035 (Array (_ BitVec 32) (_ BitVec 64))) (size!48586 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99530)

(assert (=> b!1487179 (= res!1011561 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48586 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48586 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48586 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487180 () Bool)

(declare-fun res!1011563 () Bool)

(declare-fun e!833655 () Bool)

(assert (=> b!1487180 (=> (not res!1011563) (not e!833655))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12298 0))(
  ( (MissingZero!12298 (index!51583 (_ BitVec 32))) (Found!12298 (index!51584 (_ BitVec 32))) (Intermediate!12298 (undefined!13110 Bool) (index!51585 (_ BitVec 32)) (x!133165 (_ BitVec 32))) (Undefined!12298) (MissingVacant!12298 (index!51586 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99530 (_ BitVec 32)) SeekEntryResult!12298)

(assert (=> b!1487180 (= res!1011563 (= (seekEntryOrOpen!0 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) (Found!12298 j!93)))))

(declare-fun b!1487181 () Bool)

(declare-fun res!1011566 () Bool)

(declare-fun e!833660 () Bool)

(assert (=> b!1487181 (=> (not res!1011566) (not e!833660))))

(declare-fun e!833658 () Bool)

(assert (=> b!1487181 (= res!1011566 e!833658)))

(declare-fun c!137336 () Bool)

(assert (=> b!1487181 (= c!137336 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1011570 () Bool)

(assert (=> start!126714 (=> (not res!1011570) (not e!833657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126714 (= res!1011570 (validMask!0 mask!2687))))

(assert (=> start!126714 e!833657))

(assert (=> start!126714 true))

(declare-fun array_inv!36980 (array!99530) Bool)

(assert (=> start!126714 (array_inv!36980 a!2862)))

(declare-fun b!1487182 () Bool)

(declare-fun res!1011560 () Bool)

(assert (=> b!1487182 (=> (not res!1011560) (not e!833655))))

(assert (=> b!1487182 (= res!1011560 (or (= (select (arr!48035 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48035 a!2862) intermediateBeforeIndex!19) (select (arr!48035 a!2862) j!93))))))

(declare-fun b!1487183 () Bool)

(declare-fun res!1011578 () Bool)

(assert (=> b!1487183 (=> (not res!1011578) (not e!833657))))

(declare-datatypes ((List!34716 0))(
  ( (Nil!34713) (Cons!34712 (h!36089 (_ BitVec 64)) (t!49417 List!34716)) )
))
(declare-fun arrayNoDuplicates!0 (array!99530 (_ BitVec 32) List!34716) Bool)

(assert (=> b!1487183 (= res!1011578 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34713))))

(declare-fun e!833650 () Bool)

(declare-fun lt!648685 () (_ BitVec 32))

(declare-fun b!1487184 () Bool)

(declare-fun lt!648684 () SeekEntryResult!12298)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99530 (_ BitVec 32)) SeekEntryResult!12298)

(assert (=> b!1487184 (= e!833650 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648685 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648684))))

(declare-fun b!1487185 () Bool)

(declare-fun res!1011574 () Bool)

(assert (=> b!1487185 (=> (not res!1011574) (not e!833657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487185 (= res!1011574 (validKeyInArray!0 (select (arr!48035 a!2862) j!93)))))

(declare-fun b!1487186 () Bool)

(declare-fun e!833651 () Bool)

(assert (=> b!1487186 (= e!833651 e!833650)))

(declare-fun res!1011565 () Bool)

(assert (=> b!1487186 (=> res!1011565 e!833650)))

(assert (=> b!1487186 (= res!1011565 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648685 #b00000000000000000000000000000000) (bvsge lt!648685 (size!48586 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487186 (= lt!648685 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487187 () Bool)

(declare-fun res!1011568 () Bool)

(assert (=> b!1487187 (=> (not res!1011568) (not e!833657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99530 (_ BitVec 32)) Bool)

(assert (=> b!1487187 (= res!1011568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487188 () Bool)

(declare-fun res!1011567 () Bool)

(declare-fun e!833656 () Bool)

(assert (=> b!1487188 (=> (not res!1011567) (not e!833656))))

(assert (=> b!1487188 (= res!1011567 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648684))))

(declare-fun b!1487189 () Bool)

(declare-fun e!833653 () Bool)

(assert (=> b!1487189 (= e!833655 e!833653)))

(declare-fun res!1011562 () Bool)

(assert (=> b!1487189 (=> res!1011562 e!833653)))

(declare-fun lt!648682 () (_ BitVec 64))

(assert (=> b!1487189 (= res!1011562 (or (and (= (select (arr!48035 a!2862) index!646) lt!648682) (= (select (arr!48035 a!2862) index!646) (select (arr!48035 a!2862) j!93))) (= (select (arr!48035 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1487189 (= lt!648682 (select (store (arr!48035 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun e!833659 () Bool)

(declare-fun lt!648679 () (_ BitVec 64))

(declare-fun b!1487190 () Bool)

(declare-fun lt!648683 () array!99530)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99530 (_ BitVec 32)) SeekEntryResult!12298)

(assert (=> b!1487190 (= e!833659 (= (seekEntryOrOpen!0 lt!648679 lt!648683 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648679 lt!648683 mask!2687)))))

(declare-fun b!1487191 () Bool)

(declare-fun res!1011577 () Bool)

(assert (=> b!1487191 (=> (not res!1011577) (not e!833660))))

(assert (=> b!1487191 (= res!1011577 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487192 () Bool)

(assert (=> b!1487192 (= e!833653 e!833659)))

(declare-fun res!1011564 () Bool)

(assert (=> b!1487192 (=> (not res!1011564) (not e!833659))))

(assert (=> b!1487192 (= res!1011564 (and (= index!646 intermediateAfterIndex!19) (= lt!648682 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487193 () Bool)

(declare-fun e!833654 () Bool)

(assert (=> b!1487193 (= e!833657 e!833654)))

(declare-fun res!1011579 () Bool)

(assert (=> b!1487193 (=> (not res!1011579) (not e!833654))))

(assert (=> b!1487193 (= res!1011579 (= (select (store (arr!48035 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487193 (= lt!648683 (array!99531 (store (arr!48035 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48586 a!2862)))))

(declare-fun b!1487194 () Bool)

(assert (=> b!1487194 (= e!833660 (not e!833651))))

(declare-fun res!1011575 () Bool)

(assert (=> b!1487194 (=> res!1011575 e!833651)))

(assert (=> b!1487194 (= res!1011575 (or (and (= (select (arr!48035 a!2862) index!646) (select (store (arr!48035 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48035 a!2862) index!646) (select (arr!48035 a!2862) j!93))) (= (select (arr!48035 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487194 e!833655))

(declare-fun res!1011576 () Bool)

(assert (=> b!1487194 (=> (not res!1011576) (not e!833655))))

(assert (=> b!1487194 (= res!1011576 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49884 0))(
  ( (Unit!49885) )
))
(declare-fun lt!648681 () Unit!49884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49884)

(assert (=> b!1487194 (= lt!648681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487195 () Bool)

(declare-fun res!1011572 () Bool)

(assert (=> b!1487195 (=> (not res!1011572) (not e!833657))))

(assert (=> b!1487195 (= res!1011572 (and (= (size!48586 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48586 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48586 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487196 () Bool)

(declare-fun res!1011569 () Bool)

(assert (=> b!1487196 (=> (not res!1011569) (not e!833657))))

(assert (=> b!1487196 (= res!1011569 (validKeyInArray!0 (select (arr!48035 a!2862) i!1006)))))

(declare-fun b!1487197 () Bool)

(assert (=> b!1487197 (= e!833654 e!833656)))

(declare-fun res!1011573 () Bool)

(assert (=> b!1487197 (=> (not res!1011573) (not e!833656))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487197 (= res!1011573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648684))))

(assert (=> b!1487197 (= lt!648684 (Intermediate!12298 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!648680 () SeekEntryResult!12298)

(declare-fun b!1487198 () Bool)

(assert (=> b!1487198 (= e!833658 (= lt!648680 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648679 lt!648683 mask!2687)))))

(declare-fun b!1487199 () Bool)

(assert (=> b!1487199 (= e!833658 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648679 lt!648683 mask!2687) (seekEntryOrOpen!0 lt!648679 lt!648683 mask!2687)))))

(declare-fun b!1487200 () Bool)

(assert (=> b!1487200 (= e!833656 e!833660)))

(declare-fun res!1011571 () Bool)

(assert (=> b!1487200 (=> (not res!1011571) (not e!833660))))

(assert (=> b!1487200 (= res!1011571 (= lt!648680 (Intermediate!12298 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1487200 (= lt!648680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648679 mask!2687) lt!648679 lt!648683 mask!2687))))

(assert (=> b!1487200 (= lt!648679 (select (store (arr!48035 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!126714 res!1011570) b!1487195))

(assert (= (and b!1487195 res!1011572) b!1487196))

(assert (= (and b!1487196 res!1011569) b!1487185))

(assert (= (and b!1487185 res!1011574) b!1487187))

(assert (= (and b!1487187 res!1011568) b!1487183))

(assert (= (and b!1487183 res!1011578) b!1487179))

(assert (= (and b!1487179 res!1011561) b!1487193))

(assert (= (and b!1487193 res!1011579) b!1487197))

(assert (= (and b!1487197 res!1011573) b!1487188))

(assert (= (and b!1487188 res!1011567) b!1487200))

(assert (= (and b!1487200 res!1011571) b!1487181))

(assert (= (and b!1487181 c!137336) b!1487198))

(assert (= (and b!1487181 (not c!137336)) b!1487199))

(assert (= (and b!1487181 res!1011566) b!1487191))

(assert (= (and b!1487191 res!1011577) b!1487194))

(assert (= (and b!1487194 res!1011576) b!1487180))

(assert (= (and b!1487180 res!1011563) b!1487182))

(assert (= (and b!1487182 res!1011560) b!1487189))

(assert (= (and b!1487189 (not res!1011562)) b!1487192))

(assert (= (and b!1487192 res!1011564) b!1487190))

(assert (= (and b!1487194 (not res!1011575)) b!1487186))

(assert (= (and b!1487186 (not res!1011565)) b!1487184))

(declare-fun m!1371969 () Bool)

(assert (=> b!1487194 m!1371969))

(declare-fun m!1371971 () Bool)

(assert (=> b!1487194 m!1371971))

(declare-fun m!1371973 () Bool)

(assert (=> b!1487194 m!1371973))

(declare-fun m!1371975 () Bool)

(assert (=> b!1487194 m!1371975))

(declare-fun m!1371977 () Bool)

(assert (=> b!1487194 m!1371977))

(declare-fun m!1371979 () Bool)

(assert (=> b!1487194 m!1371979))

(declare-fun m!1371981 () Bool)

(assert (=> b!1487199 m!1371981))

(declare-fun m!1371983 () Bool)

(assert (=> b!1487199 m!1371983))

(assert (=> b!1487197 m!1371979))

(assert (=> b!1487197 m!1371979))

(declare-fun m!1371985 () Bool)

(assert (=> b!1487197 m!1371985))

(assert (=> b!1487197 m!1371985))

(assert (=> b!1487197 m!1371979))

(declare-fun m!1371987 () Bool)

(assert (=> b!1487197 m!1371987))

(assert (=> b!1487184 m!1371979))

(assert (=> b!1487184 m!1371979))

(declare-fun m!1371989 () Bool)

(assert (=> b!1487184 m!1371989))

(declare-fun m!1371991 () Bool)

(assert (=> b!1487183 m!1371991))

(assert (=> b!1487188 m!1371979))

(assert (=> b!1487188 m!1371979))

(declare-fun m!1371993 () Bool)

(assert (=> b!1487188 m!1371993))

(declare-fun m!1371995 () Bool)

(assert (=> b!1487182 m!1371995))

(assert (=> b!1487182 m!1371979))

(declare-fun m!1371997 () Bool)

(assert (=> start!126714 m!1371997))

(declare-fun m!1371999 () Bool)

(assert (=> start!126714 m!1371999))

(declare-fun m!1372001 () Bool)

(assert (=> b!1487186 m!1372001))

(assert (=> b!1487180 m!1371979))

(assert (=> b!1487180 m!1371979))

(declare-fun m!1372003 () Bool)

(assert (=> b!1487180 m!1372003))

(declare-fun m!1372005 () Bool)

(assert (=> b!1487200 m!1372005))

(assert (=> b!1487200 m!1372005))

(declare-fun m!1372007 () Bool)

(assert (=> b!1487200 m!1372007))

(assert (=> b!1487200 m!1371971))

(declare-fun m!1372009 () Bool)

(assert (=> b!1487200 m!1372009))

(declare-fun m!1372011 () Bool)

(assert (=> b!1487187 m!1372011))

(declare-fun m!1372013 () Bool)

(assert (=> b!1487198 m!1372013))

(assert (=> b!1487189 m!1371975))

(assert (=> b!1487189 m!1371979))

(assert (=> b!1487189 m!1371971))

(assert (=> b!1487189 m!1371973))

(declare-fun m!1372015 () Bool)

(assert (=> b!1487196 m!1372015))

(assert (=> b!1487196 m!1372015))

(declare-fun m!1372017 () Bool)

(assert (=> b!1487196 m!1372017))

(assert (=> b!1487193 m!1371971))

(declare-fun m!1372019 () Bool)

(assert (=> b!1487193 m!1372019))

(assert (=> b!1487185 m!1371979))

(assert (=> b!1487185 m!1371979))

(declare-fun m!1372021 () Bool)

(assert (=> b!1487185 m!1372021))

(assert (=> b!1487190 m!1371983))

(assert (=> b!1487190 m!1371981))

(check-sat (not b!1487180) (not b!1487199) (not b!1487185) (not start!126714) (not b!1487183) (not b!1487198) (not b!1487188) (not b!1487184) (not b!1487197) (not b!1487187) (not b!1487196) (not b!1487190) (not b!1487200) (not b!1487194) (not b!1487186))
(check-sat)
(get-model)

(declare-fun b!1487279 () Bool)

(declare-fun e!833700 () SeekEntryResult!12298)

(assert (=> b!1487279 (= e!833700 (Found!12298 index!646))))

(declare-fun b!1487280 () Bool)

(declare-fun e!833701 () SeekEntryResult!12298)

(assert (=> b!1487280 (= e!833701 e!833700)))

(declare-fun c!137347 () Bool)

(declare-fun lt!648712 () (_ BitVec 64))

(assert (=> b!1487280 (= c!137347 (= lt!648712 lt!648679))))

(declare-fun b!1487281 () Bool)

(declare-fun e!833702 () SeekEntryResult!12298)

(assert (=> b!1487281 (= e!833702 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648679 lt!648683 mask!2687))))

(declare-fun b!1487282 () Bool)

(assert (=> b!1487282 (= e!833701 Undefined!12298)))

(declare-fun b!1487283 () Bool)

(assert (=> b!1487283 (= e!833702 (MissingVacant!12298 intermediateAfterIndex!19))))

(declare-fun b!1487284 () Bool)

(declare-fun c!137346 () Bool)

(assert (=> b!1487284 (= c!137346 (= lt!648712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487284 (= e!833700 e!833702)))

(declare-fun d!156475 () Bool)

(declare-fun lt!648711 () SeekEntryResult!12298)

(get-info :version)

(assert (=> d!156475 (and (or ((_ is Undefined!12298) lt!648711) (not ((_ is Found!12298) lt!648711)) (and (bvsge (index!51584 lt!648711) #b00000000000000000000000000000000) (bvslt (index!51584 lt!648711) (size!48586 lt!648683)))) (or ((_ is Undefined!12298) lt!648711) ((_ is Found!12298) lt!648711) (not ((_ is MissingVacant!12298) lt!648711)) (not (= (index!51586 lt!648711) intermediateAfterIndex!19)) (and (bvsge (index!51586 lt!648711) #b00000000000000000000000000000000) (bvslt (index!51586 lt!648711) (size!48586 lt!648683)))) (or ((_ is Undefined!12298) lt!648711) (ite ((_ is Found!12298) lt!648711) (= (select (arr!48035 lt!648683) (index!51584 lt!648711)) lt!648679) (and ((_ is MissingVacant!12298) lt!648711) (= (index!51586 lt!648711) intermediateAfterIndex!19) (= (select (arr!48035 lt!648683) (index!51586 lt!648711)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156475 (= lt!648711 e!833701)))

(declare-fun c!137348 () Bool)

(assert (=> d!156475 (= c!137348 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156475 (= lt!648712 (select (arr!48035 lt!648683) index!646))))

(assert (=> d!156475 (validMask!0 mask!2687)))

(assert (=> d!156475 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648679 lt!648683 mask!2687) lt!648711)))

(assert (= (and d!156475 c!137348) b!1487282))

(assert (= (and d!156475 (not c!137348)) b!1487280))

(assert (= (and b!1487280 c!137347) b!1487279))

(assert (= (and b!1487280 (not c!137347)) b!1487284))

(assert (= (and b!1487284 c!137346) b!1487283))

(assert (= (and b!1487284 (not c!137346)) b!1487281))

(assert (=> b!1487281 m!1372001))

(assert (=> b!1487281 m!1372001))

(declare-fun m!1372077 () Bool)

(assert (=> b!1487281 m!1372077))

(declare-fun m!1372079 () Bool)

(assert (=> d!156475 m!1372079))

(declare-fun m!1372081 () Bool)

(assert (=> d!156475 m!1372081))

(declare-fun m!1372083 () Bool)

(assert (=> d!156475 m!1372083))

(assert (=> d!156475 m!1371997))

(assert (=> b!1487199 d!156475))

(declare-fun b!1487297 () Bool)

(declare-fun c!137357 () Bool)

(declare-fun lt!648719 () (_ BitVec 64))

(assert (=> b!1487297 (= c!137357 (= lt!648719 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833711 () SeekEntryResult!12298)

(declare-fun e!833710 () SeekEntryResult!12298)

(assert (=> b!1487297 (= e!833711 e!833710)))

(declare-fun b!1487298 () Bool)

(declare-fun lt!648721 () SeekEntryResult!12298)

(assert (=> b!1487298 (= e!833710 (seekKeyOrZeroReturnVacant!0 (x!133165 lt!648721) (index!51585 lt!648721) (index!51585 lt!648721) lt!648679 lt!648683 mask!2687))))

(declare-fun b!1487299 () Bool)

(declare-fun e!833709 () SeekEntryResult!12298)

(assert (=> b!1487299 (= e!833709 e!833711)))

(assert (=> b!1487299 (= lt!648719 (select (arr!48035 lt!648683) (index!51585 lt!648721)))))

(declare-fun c!137356 () Bool)

(assert (=> b!1487299 (= c!137356 (= lt!648719 lt!648679))))

(declare-fun b!1487300 () Bool)

(assert (=> b!1487300 (= e!833710 (MissingZero!12298 (index!51585 lt!648721)))))

(declare-fun b!1487301 () Bool)

(assert (=> b!1487301 (= e!833709 Undefined!12298)))

(declare-fun d!156477 () Bool)

(declare-fun lt!648720 () SeekEntryResult!12298)

(assert (=> d!156477 (and (or ((_ is Undefined!12298) lt!648720) (not ((_ is Found!12298) lt!648720)) (and (bvsge (index!51584 lt!648720) #b00000000000000000000000000000000) (bvslt (index!51584 lt!648720) (size!48586 lt!648683)))) (or ((_ is Undefined!12298) lt!648720) ((_ is Found!12298) lt!648720) (not ((_ is MissingZero!12298) lt!648720)) (and (bvsge (index!51583 lt!648720) #b00000000000000000000000000000000) (bvslt (index!51583 lt!648720) (size!48586 lt!648683)))) (or ((_ is Undefined!12298) lt!648720) ((_ is Found!12298) lt!648720) ((_ is MissingZero!12298) lt!648720) (not ((_ is MissingVacant!12298) lt!648720)) (and (bvsge (index!51586 lt!648720) #b00000000000000000000000000000000) (bvslt (index!51586 lt!648720) (size!48586 lt!648683)))) (or ((_ is Undefined!12298) lt!648720) (ite ((_ is Found!12298) lt!648720) (= (select (arr!48035 lt!648683) (index!51584 lt!648720)) lt!648679) (ite ((_ is MissingZero!12298) lt!648720) (= (select (arr!48035 lt!648683) (index!51583 lt!648720)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12298) lt!648720) (= (select (arr!48035 lt!648683) (index!51586 lt!648720)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156477 (= lt!648720 e!833709)))

(declare-fun c!137355 () Bool)

(assert (=> d!156477 (= c!137355 (and ((_ is Intermediate!12298) lt!648721) (undefined!13110 lt!648721)))))

(assert (=> d!156477 (= lt!648721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648679 mask!2687) lt!648679 lt!648683 mask!2687))))

(assert (=> d!156477 (validMask!0 mask!2687)))

(assert (=> d!156477 (= (seekEntryOrOpen!0 lt!648679 lt!648683 mask!2687) lt!648720)))

(declare-fun b!1487302 () Bool)

(assert (=> b!1487302 (= e!833711 (Found!12298 (index!51585 lt!648721)))))

(assert (= (and d!156477 c!137355) b!1487301))

(assert (= (and d!156477 (not c!137355)) b!1487299))

(assert (= (and b!1487299 c!137356) b!1487302))

(assert (= (and b!1487299 (not c!137356)) b!1487297))

(assert (= (and b!1487297 c!137357) b!1487300))

(assert (= (and b!1487297 (not c!137357)) b!1487298))

(declare-fun m!1372085 () Bool)

(assert (=> b!1487298 m!1372085))

(declare-fun m!1372087 () Bool)

(assert (=> b!1487299 m!1372087))

(assert (=> d!156477 m!1372005))

(declare-fun m!1372089 () Bool)

(assert (=> d!156477 m!1372089))

(declare-fun m!1372091 () Bool)

(assert (=> d!156477 m!1372091))

(declare-fun m!1372093 () Bool)

(assert (=> d!156477 m!1372093))

(assert (=> d!156477 m!1372005))

(assert (=> d!156477 m!1372007))

(assert (=> d!156477 m!1371997))

(assert (=> b!1487199 d!156477))

(declare-fun b!1487321 () Bool)

(declare-fun lt!648726 () SeekEntryResult!12298)

(assert (=> b!1487321 (and (bvsge (index!51585 lt!648726) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648726) (size!48586 a!2862)))))

(declare-fun res!1011646 () Bool)

(assert (=> b!1487321 (= res!1011646 (= (select (arr!48035 a!2862) (index!51585 lt!648726)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833726 () Bool)

(assert (=> b!1487321 (=> res!1011646 e!833726)))

(declare-fun b!1487322 () Bool)

(declare-fun e!833722 () Bool)

(declare-fun e!833725 () Bool)

(assert (=> b!1487322 (= e!833722 e!833725)))

(declare-fun res!1011647 () Bool)

(assert (=> b!1487322 (= res!1011647 (and ((_ is Intermediate!12298) lt!648726) (not (undefined!13110 lt!648726)) (bvslt (x!133165 lt!648726) #b01111111111111111111111111111110) (bvsge (x!133165 lt!648726) #b00000000000000000000000000000000) (bvsge (x!133165 lt!648726) x!665)))))

(assert (=> b!1487322 (=> (not res!1011647) (not e!833725))))

(declare-fun b!1487323 () Bool)

(assert (=> b!1487323 (and (bvsge (index!51585 lt!648726) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648726) (size!48586 a!2862)))))

(declare-fun res!1011648 () Bool)

(assert (=> b!1487323 (= res!1011648 (= (select (arr!48035 a!2862) (index!51585 lt!648726)) (select (arr!48035 a!2862) j!93)))))

(assert (=> b!1487323 (=> res!1011648 e!833726)))

(assert (=> b!1487323 (= e!833725 e!833726)))

(declare-fun e!833723 () SeekEntryResult!12298)

(declare-fun b!1487324 () Bool)

(assert (=> b!1487324 (= e!833723 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48035 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487325 () Bool)

(assert (=> b!1487325 (and (bvsge (index!51585 lt!648726) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648726) (size!48586 a!2862)))))

(assert (=> b!1487325 (= e!833726 (= (select (arr!48035 a!2862) (index!51585 lt!648726)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487327 () Bool)

(declare-fun e!833724 () SeekEntryResult!12298)

(assert (=> b!1487327 (= e!833724 e!833723)))

(declare-fun lt!648727 () (_ BitVec 64))

(declare-fun c!137364 () Bool)

(assert (=> b!1487327 (= c!137364 (or (= lt!648727 (select (arr!48035 a!2862) j!93)) (= (bvadd lt!648727 lt!648727) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487328 () Bool)

(assert (=> b!1487328 (= e!833724 (Intermediate!12298 true index!646 x!665))))

(declare-fun b!1487329 () Bool)

(assert (=> b!1487329 (= e!833722 (bvsge (x!133165 lt!648726) #b01111111111111111111111111111110))))

(declare-fun d!156479 () Bool)

(assert (=> d!156479 e!833722))

(declare-fun c!137366 () Bool)

(assert (=> d!156479 (= c!137366 (and ((_ is Intermediate!12298) lt!648726) (undefined!13110 lt!648726)))))

(assert (=> d!156479 (= lt!648726 e!833724)))

(declare-fun c!137365 () Bool)

(assert (=> d!156479 (= c!137365 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156479 (= lt!648727 (select (arr!48035 a!2862) index!646))))

(assert (=> d!156479 (validMask!0 mask!2687)))

(assert (=> d!156479 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648726)))

(declare-fun b!1487326 () Bool)

(assert (=> b!1487326 (= e!833723 (Intermediate!12298 false index!646 x!665))))

(assert (= (and d!156479 c!137365) b!1487328))

(assert (= (and d!156479 (not c!137365)) b!1487327))

(assert (= (and b!1487327 c!137364) b!1487326))

(assert (= (and b!1487327 (not c!137364)) b!1487324))

(assert (= (and d!156479 c!137366) b!1487329))

(assert (= (and d!156479 (not c!137366)) b!1487322))

(assert (= (and b!1487322 res!1011647) b!1487323))

(assert (= (and b!1487323 (not res!1011648)) b!1487321))

(assert (= (and b!1487321 (not res!1011646)) b!1487325))

(assert (=> d!156479 m!1371975))

(assert (=> d!156479 m!1371997))

(assert (=> b!1487324 m!1372001))

(assert (=> b!1487324 m!1372001))

(assert (=> b!1487324 m!1371979))

(declare-fun m!1372095 () Bool)

(assert (=> b!1487324 m!1372095))

(declare-fun m!1372097 () Bool)

(assert (=> b!1487323 m!1372097))

(assert (=> b!1487321 m!1372097))

(assert (=> b!1487325 m!1372097))

(assert (=> b!1487188 d!156479))

(declare-fun b!1487330 () Bool)

(declare-fun lt!648728 () SeekEntryResult!12298)

(assert (=> b!1487330 (and (bvsge (index!51585 lt!648728) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648728) (size!48586 lt!648683)))))

(declare-fun res!1011649 () Bool)

(assert (=> b!1487330 (= res!1011649 (= (select (arr!48035 lt!648683) (index!51585 lt!648728)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833731 () Bool)

(assert (=> b!1487330 (=> res!1011649 e!833731)))

(declare-fun b!1487331 () Bool)

(declare-fun e!833727 () Bool)

(declare-fun e!833730 () Bool)

(assert (=> b!1487331 (= e!833727 e!833730)))

(declare-fun res!1011650 () Bool)

(assert (=> b!1487331 (= res!1011650 (and ((_ is Intermediate!12298) lt!648728) (not (undefined!13110 lt!648728)) (bvslt (x!133165 lt!648728) #b01111111111111111111111111111110) (bvsge (x!133165 lt!648728) #b00000000000000000000000000000000) (bvsge (x!133165 lt!648728) x!665)))))

(assert (=> b!1487331 (=> (not res!1011650) (not e!833730))))

(declare-fun b!1487332 () Bool)

(assert (=> b!1487332 (and (bvsge (index!51585 lt!648728) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648728) (size!48586 lt!648683)))))

(declare-fun res!1011651 () Bool)

(assert (=> b!1487332 (= res!1011651 (= (select (arr!48035 lt!648683) (index!51585 lt!648728)) lt!648679))))

(assert (=> b!1487332 (=> res!1011651 e!833731)))

(assert (=> b!1487332 (= e!833730 e!833731)))

(declare-fun e!833728 () SeekEntryResult!12298)

(declare-fun b!1487333 () Bool)

(assert (=> b!1487333 (= e!833728 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648679 lt!648683 mask!2687))))

(declare-fun b!1487334 () Bool)

(assert (=> b!1487334 (and (bvsge (index!51585 lt!648728) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648728) (size!48586 lt!648683)))))

(assert (=> b!1487334 (= e!833731 (= (select (arr!48035 lt!648683) (index!51585 lt!648728)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487336 () Bool)

(declare-fun e!833729 () SeekEntryResult!12298)

(assert (=> b!1487336 (= e!833729 e!833728)))

(declare-fun c!137367 () Bool)

(declare-fun lt!648729 () (_ BitVec 64))

(assert (=> b!1487336 (= c!137367 (or (= lt!648729 lt!648679) (= (bvadd lt!648729 lt!648729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487337 () Bool)

(assert (=> b!1487337 (= e!833729 (Intermediate!12298 true index!646 x!665))))

(declare-fun b!1487338 () Bool)

(assert (=> b!1487338 (= e!833727 (bvsge (x!133165 lt!648728) #b01111111111111111111111111111110))))

(declare-fun d!156483 () Bool)

(assert (=> d!156483 e!833727))

(declare-fun c!137369 () Bool)

(assert (=> d!156483 (= c!137369 (and ((_ is Intermediate!12298) lt!648728) (undefined!13110 lt!648728)))))

(assert (=> d!156483 (= lt!648728 e!833729)))

(declare-fun c!137368 () Bool)

(assert (=> d!156483 (= c!137368 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156483 (= lt!648729 (select (arr!48035 lt!648683) index!646))))

(assert (=> d!156483 (validMask!0 mask!2687)))

(assert (=> d!156483 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648679 lt!648683 mask!2687) lt!648728)))

(declare-fun b!1487335 () Bool)

(assert (=> b!1487335 (= e!833728 (Intermediate!12298 false index!646 x!665))))

(assert (= (and d!156483 c!137368) b!1487337))

(assert (= (and d!156483 (not c!137368)) b!1487336))

(assert (= (and b!1487336 c!137367) b!1487335))

(assert (= (and b!1487336 (not c!137367)) b!1487333))

(assert (= (and d!156483 c!137369) b!1487338))

(assert (= (and d!156483 (not c!137369)) b!1487331))

(assert (= (and b!1487331 res!1011650) b!1487332))

(assert (= (and b!1487332 (not res!1011651)) b!1487330))

(assert (= (and b!1487330 (not res!1011649)) b!1487334))

(assert (=> d!156483 m!1372083))

(assert (=> d!156483 m!1371997))

(assert (=> b!1487333 m!1372001))

(assert (=> b!1487333 m!1372001))

(declare-fun m!1372099 () Bool)

(assert (=> b!1487333 m!1372099))

(declare-fun m!1372101 () Bool)

(assert (=> b!1487332 m!1372101))

(assert (=> b!1487330 m!1372101))

(assert (=> b!1487334 m!1372101))

(assert (=> b!1487198 d!156483))

(declare-fun d!156485 () Bool)

(declare-fun res!1011665 () Bool)

(declare-fun e!833752 () Bool)

(assert (=> d!156485 (=> res!1011665 e!833752)))

(assert (=> d!156485 (= res!1011665 (bvsge #b00000000000000000000000000000000 (size!48586 a!2862)))))

(assert (=> d!156485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!833752)))

(declare-fun b!1487362 () Bool)

(declare-fun e!833751 () Bool)

(declare-fun e!833750 () Bool)

(assert (=> b!1487362 (= e!833751 e!833750)))

(declare-fun lt!648737 () (_ BitVec 64))

(assert (=> b!1487362 (= lt!648737 (select (arr!48035 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!648736 () Unit!49884)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99530 (_ BitVec 64) (_ BitVec 32)) Unit!49884)

(assert (=> b!1487362 (= lt!648736 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648737 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1487362 (arrayContainsKey!0 a!2862 lt!648737 #b00000000000000000000000000000000)))

(declare-fun lt!648738 () Unit!49884)

(assert (=> b!1487362 (= lt!648738 lt!648736)))

(declare-fun res!1011666 () Bool)

(assert (=> b!1487362 (= res!1011666 (= (seekEntryOrOpen!0 (select (arr!48035 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12298 #b00000000000000000000000000000000)))))

(assert (=> b!1487362 (=> (not res!1011666) (not e!833750))))

(declare-fun b!1487363 () Bool)

(declare-fun call!67899 () Bool)

(assert (=> b!1487363 (= e!833750 call!67899)))

(declare-fun b!1487364 () Bool)

(assert (=> b!1487364 (= e!833751 call!67899)))

(declare-fun bm!67896 () Bool)

(assert (=> bm!67896 (= call!67899 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1487365 () Bool)

(assert (=> b!1487365 (= e!833752 e!833751)))

(declare-fun c!137375 () Bool)

(assert (=> b!1487365 (= c!137375 (validKeyInArray!0 (select (arr!48035 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156485 (not res!1011665)) b!1487365))

(assert (= (and b!1487365 c!137375) b!1487362))

(assert (= (and b!1487365 (not c!137375)) b!1487364))

(assert (= (and b!1487362 res!1011666) b!1487363))

(assert (= (or b!1487363 b!1487364) bm!67896))

(declare-fun m!1372111 () Bool)

(assert (=> b!1487362 m!1372111))

(declare-fun m!1372113 () Bool)

(assert (=> b!1487362 m!1372113))

(declare-fun m!1372115 () Bool)

(assert (=> b!1487362 m!1372115))

(assert (=> b!1487362 m!1372111))

(declare-fun m!1372117 () Bool)

(assert (=> b!1487362 m!1372117))

(declare-fun m!1372119 () Bool)

(assert (=> bm!67896 m!1372119))

(assert (=> b!1487365 m!1372111))

(assert (=> b!1487365 m!1372111))

(declare-fun m!1372121 () Bool)

(assert (=> b!1487365 m!1372121))

(assert (=> b!1487187 d!156485))

(declare-fun b!1487366 () Bool)

(declare-fun c!137378 () Bool)

(declare-fun lt!648739 () (_ BitVec 64))

(assert (=> b!1487366 (= c!137378 (= lt!648739 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833755 () SeekEntryResult!12298)

(declare-fun e!833754 () SeekEntryResult!12298)

(assert (=> b!1487366 (= e!833755 e!833754)))

(declare-fun b!1487367 () Bool)

(declare-fun lt!648741 () SeekEntryResult!12298)

(assert (=> b!1487367 (= e!833754 (seekKeyOrZeroReturnVacant!0 (x!133165 lt!648741) (index!51585 lt!648741) (index!51585 lt!648741) (select (arr!48035 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487368 () Bool)

(declare-fun e!833753 () SeekEntryResult!12298)

(assert (=> b!1487368 (= e!833753 e!833755)))

(assert (=> b!1487368 (= lt!648739 (select (arr!48035 a!2862) (index!51585 lt!648741)))))

(declare-fun c!137377 () Bool)

(assert (=> b!1487368 (= c!137377 (= lt!648739 (select (arr!48035 a!2862) j!93)))))

(declare-fun b!1487369 () Bool)

(assert (=> b!1487369 (= e!833754 (MissingZero!12298 (index!51585 lt!648741)))))

(declare-fun b!1487370 () Bool)

(assert (=> b!1487370 (= e!833753 Undefined!12298)))

(declare-fun d!156491 () Bool)

(declare-fun lt!648740 () SeekEntryResult!12298)

(assert (=> d!156491 (and (or ((_ is Undefined!12298) lt!648740) (not ((_ is Found!12298) lt!648740)) (and (bvsge (index!51584 lt!648740) #b00000000000000000000000000000000) (bvslt (index!51584 lt!648740) (size!48586 a!2862)))) (or ((_ is Undefined!12298) lt!648740) ((_ is Found!12298) lt!648740) (not ((_ is MissingZero!12298) lt!648740)) (and (bvsge (index!51583 lt!648740) #b00000000000000000000000000000000) (bvslt (index!51583 lt!648740) (size!48586 a!2862)))) (or ((_ is Undefined!12298) lt!648740) ((_ is Found!12298) lt!648740) ((_ is MissingZero!12298) lt!648740) (not ((_ is MissingVacant!12298) lt!648740)) (and (bvsge (index!51586 lt!648740) #b00000000000000000000000000000000) (bvslt (index!51586 lt!648740) (size!48586 a!2862)))) (or ((_ is Undefined!12298) lt!648740) (ite ((_ is Found!12298) lt!648740) (= (select (arr!48035 a!2862) (index!51584 lt!648740)) (select (arr!48035 a!2862) j!93)) (ite ((_ is MissingZero!12298) lt!648740) (= (select (arr!48035 a!2862) (index!51583 lt!648740)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12298) lt!648740) (= (select (arr!48035 a!2862) (index!51586 lt!648740)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156491 (= lt!648740 e!833753)))

(declare-fun c!137376 () Bool)

(assert (=> d!156491 (= c!137376 (and ((_ is Intermediate!12298) lt!648741) (undefined!13110 lt!648741)))))

(assert (=> d!156491 (= lt!648741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) (select (arr!48035 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156491 (validMask!0 mask!2687)))

(assert (=> d!156491 (= (seekEntryOrOpen!0 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648740)))

(declare-fun b!1487371 () Bool)

(assert (=> b!1487371 (= e!833755 (Found!12298 (index!51585 lt!648741)))))

(assert (= (and d!156491 c!137376) b!1487370))

(assert (= (and d!156491 (not c!137376)) b!1487368))

(assert (= (and b!1487368 c!137377) b!1487371))

(assert (= (and b!1487368 (not c!137377)) b!1487366))

(assert (= (and b!1487366 c!137378) b!1487369))

(assert (= (and b!1487366 (not c!137378)) b!1487367))

(assert (=> b!1487367 m!1371979))

(declare-fun m!1372123 () Bool)

(assert (=> b!1487367 m!1372123))

(declare-fun m!1372125 () Bool)

(assert (=> b!1487368 m!1372125))

(assert (=> d!156491 m!1371979))

(assert (=> d!156491 m!1371985))

(declare-fun m!1372127 () Bool)

(assert (=> d!156491 m!1372127))

(declare-fun m!1372129 () Bool)

(assert (=> d!156491 m!1372129))

(declare-fun m!1372131 () Bool)

(assert (=> d!156491 m!1372131))

(assert (=> d!156491 m!1371985))

(assert (=> d!156491 m!1371979))

(assert (=> d!156491 m!1371987))

(assert (=> d!156491 m!1371997))

(assert (=> b!1487180 d!156491))

(assert (=> b!1487190 d!156477))

(assert (=> b!1487190 d!156475))

(declare-fun b!1487378 () Bool)

(declare-fun lt!648748 () SeekEntryResult!12298)

(assert (=> b!1487378 (and (bvsge (index!51585 lt!648748) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648748) (size!48586 lt!648683)))))

(declare-fun res!1011669 () Bool)

(assert (=> b!1487378 (= res!1011669 (= (select (arr!48035 lt!648683) (index!51585 lt!648748)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833764 () Bool)

(assert (=> b!1487378 (=> res!1011669 e!833764)))

(declare-fun b!1487379 () Bool)

(declare-fun e!833760 () Bool)

(declare-fun e!833763 () Bool)

(assert (=> b!1487379 (= e!833760 e!833763)))

(declare-fun res!1011670 () Bool)

(assert (=> b!1487379 (= res!1011670 (and ((_ is Intermediate!12298) lt!648748) (not (undefined!13110 lt!648748)) (bvslt (x!133165 lt!648748) #b01111111111111111111111111111110) (bvsge (x!133165 lt!648748) #b00000000000000000000000000000000) (bvsge (x!133165 lt!648748) #b00000000000000000000000000000000)))))

(assert (=> b!1487379 (=> (not res!1011670) (not e!833763))))

(declare-fun b!1487380 () Bool)

(assert (=> b!1487380 (and (bvsge (index!51585 lt!648748) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648748) (size!48586 lt!648683)))))

(declare-fun res!1011671 () Bool)

(assert (=> b!1487380 (= res!1011671 (= (select (arr!48035 lt!648683) (index!51585 lt!648748)) lt!648679))))

(assert (=> b!1487380 (=> res!1011671 e!833764)))

(assert (=> b!1487380 (= e!833763 e!833764)))

(declare-fun b!1487381 () Bool)

(declare-fun e!833761 () SeekEntryResult!12298)

(assert (=> b!1487381 (= e!833761 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648679 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648679 lt!648683 mask!2687))))

(declare-fun b!1487382 () Bool)

(assert (=> b!1487382 (and (bvsge (index!51585 lt!648748) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648748) (size!48586 lt!648683)))))

(assert (=> b!1487382 (= e!833764 (= (select (arr!48035 lt!648683) (index!51585 lt!648748)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487384 () Bool)

(declare-fun e!833762 () SeekEntryResult!12298)

(assert (=> b!1487384 (= e!833762 e!833761)))

(declare-fun c!137381 () Bool)

(declare-fun lt!648749 () (_ BitVec 64))

(assert (=> b!1487384 (= c!137381 (or (= lt!648749 lt!648679) (= (bvadd lt!648749 lt!648749) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487385 () Bool)

(assert (=> b!1487385 (= e!833762 (Intermediate!12298 true (toIndex!0 lt!648679 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1487386 () Bool)

(assert (=> b!1487386 (= e!833760 (bvsge (x!133165 lt!648748) #b01111111111111111111111111111110))))

(declare-fun d!156493 () Bool)

(assert (=> d!156493 e!833760))

(declare-fun c!137383 () Bool)

(assert (=> d!156493 (= c!137383 (and ((_ is Intermediate!12298) lt!648748) (undefined!13110 lt!648748)))))

(assert (=> d!156493 (= lt!648748 e!833762)))

(declare-fun c!137382 () Bool)

(assert (=> d!156493 (= c!137382 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156493 (= lt!648749 (select (arr!48035 lt!648683) (toIndex!0 lt!648679 mask!2687)))))

(assert (=> d!156493 (validMask!0 mask!2687)))

(assert (=> d!156493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648679 mask!2687) lt!648679 lt!648683 mask!2687) lt!648748)))

(declare-fun b!1487383 () Bool)

(assert (=> b!1487383 (= e!833761 (Intermediate!12298 false (toIndex!0 lt!648679 mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156493 c!137382) b!1487385))

(assert (= (and d!156493 (not c!137382)) b!1487384))

(assert (= (and b!1487384 c!137381) b!1487383))

(assert (= (and b!1487384 (not c!137381)) b!1487381))

(assert (= (and d!156493 c!137383) b!1487386))

(assert (= (and d!156493 (not c!137383)) b!1487379))

(assert (= (and b!1487379 res!1011670) b!1487380))

(assert (= (and b!1487380 (not res!1011671)) b!1487378))

(assert (= (and b!1487378 (not res!1011669)) b!1487382))

(assert (=> d!156493 m!1372005))

(declare-fun m!1372133 () Bool)

(assert (=> d!156493 m!1372133))

(assert (=> d!156493 m!1371997))

(assert (=> b!1487381 m!1372005))

(declare-fun m!1372135 () Bool)

(assert (=> b!1487381 m!1372135))

(assert (=> b!1487381 m!1372135))

(declare-fun m!1372137 () Bool)

(assert (=> b!1487381 m!1372137))

(declare-fun m!1372139 () Bool)

(assert (=> b!1487380 m!1372139))

(assert (=> b!1487378 m!1372139))

(assert (=> b!1487382 m!1372139))

(assert (=> b!1487200 d!156493))

(declare-fun d!156495 () Bool)

(declare-fun lt!648758 () (_ BitVec 32))

(declare-fun lt!648757 () (_ BitVec 32))

(assert (=> d!156495 (= lt!648758 (bvmul (bvxor lt!648757 (bvlshr lt!648757 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156495 (= lt!648757 ((_ extract 31 0) (bvand (bvxor lt!648679 (bvlshr lt!648679 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156495 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1011674 (let ((h!36091 ((_ extract 31 0) (bvand (bvxor lt!648679 (bvlshr lt!648679 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133169 (bvmul (bvxor h!36091 (bvlshr h!36091 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133169 (bvlshr x!133169 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1011674 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1011674 #b00000000000000000000000000000000))))))

(assert (=> d!156495 (= (toIndex!0 lt!648679 mask!2687) (bvand (bvxor lt!648758 (bvlshr lt!648758 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487200 d!156495))

(declare-fun d!156499 () Bool)

(declare-fun res!1011677 () Bool)

(declare-fun e!833772 () Bool)

(assert (=> d!156499 (=> res!1011677 e!833772)))

(assert (=> d!156499 (= res!1011677 (bvsge j!93 (size!48586 a!2862)))))

(assert (=> d!156499 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!833772)))

(declare-fun b!1487393 () Bool)

(declare-fun e!833771 () Bool)

(declare-fun e!833770 () Bool)

(assert (=> b!1487393 (= e!833771 e!833770)))

(declare-fun lt!648760 () (_ BitVec 64))

(assert (=> b!1487393 (= lt!648760 (select (arr!48035 a!2862) j!93))))

(declare-fun lt!648759 () Unit!49884)

(assert (=> b!1487393 (= lt!648759 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648760 j!93))))

(assert (=> b!1487393 (arrayContainsKey!0 a!2862 lt!648760 #b00000000000000000000000000000000)))

(declare-fun lt!648761 () Unit!49884)

(assert (=> b!1487393 (= lt!648761 lt!648759)))

(declare-fun res!1011678 () Bool)

(assert (=> b!1487393 (= res!1011678 (= (seekEntryOrOpen!0 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) (Found!12298 j!93)))))

(assert (=> b!1487393 (=> (not res!1011678) (not e!833770))))

(declare-fun b!1487394 () Bool)

(declare-fun call!67903 () Bool)

(assert (=> b!1487394 (= e!833770 call!67903)))

(declare-fun b!1487395 () Bool)

(assert (=> b!1487395 (= e!833771 call!67903)))

(declare-fun bm!67900 () Bool)

(assert (=> bm!67900 (= call!67903 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1487396 () Bool)

(assert (=> b!1487396 (= e!833772 e!833771)))

(declare-fun c!137385 () Bool)

(assert (=> b!1487396 (= c!137385 (validKeyInArray!0 (select (arr!48035 a!2862) j!93)))))

(assert (= (and d!156499 (not res!1011677)) b!1487396))

(assert (= (and b!1487396 c!137385) b!1487393))

(assert (= (and b!1487396 (not c!137385)) b!1487395))

(assert (= (and b!1487393 res!1011678) b!1487394))

(assert (= (or b!1487394 b!1487395) bm!67900))

(assert (=> b!1487393 m!1371979))

(declare-fun m!1372147 () Bool)

(assert (=> b!1487393 m!1372147))

(declare-fun m!1372149 () Bool)

(assert (=> b!1487393 m!1372149))

(assert (=> b!1487393 m!1371979))

(assert (=> b!1487393 m!1372003))

(declare-fun m!1372151 () Bool)

(assert (=> bm!67900 m!1372151))

(assert (=> b!1487396 m!1371979))

(assert (=> b!1487396 m!1371979))

(assert (=> b!1487396 m!1372021))

(assert (=> b!1487194 d!156499))

(declare-fun d!156501 () Bool)

(assert (=> d!156501 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!648773 () Unit!49884)

(declare-fun choose!38 (array!99530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49884)

(assert (=> d!156501 (= lt!648773 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156501 (validMask!0 mask!2687)))

(assert (=> d!156501 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!648773)))

(declare-fun bs!42777 () Bool)

(assert (= bs!42777 d!156501))

(assert (=> bs!42777 m!1371977))

(declare-fun m!1372155 () Bool)

(assert (=> bs!42777 m!1372155))

(assert (=> bs!42777 m!1371997))

(assert (=> b!1487194 d!156501))

(declare-fun bm!67903 () Bool)

(declare-fun call!67906 () Bool)

(declare-fun c!137397 () Bool)

(assert (=> bm!67903 (= call!67906 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137397 (Cons!34712 (select (arr!48035 a!2862) #b00000000000000000000000000000000) Nil!34713) Nil!34713)))))

(declare-fun b!1487425 () Bool)

(declare-fun e!833790 () Bool)

(declare-fun e!833793 () Bool)

(assert (=> b!1487425 (= e!833790 e!833793)))

(assert (=> b!1487425 (= c!137397 (validKeyInArray!0 (select (arr!48035 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1487426 () Bool)

(declare-fun e!833791 () Bool)

(assert (=> b!1487426 (= e!833791 e!833790)))

(declare-fun res!1011685 () Bool)

(assert (=> b!1487426 (=> (not res!1011685) (not e!833790))))

(declare-fun e!833792 () Bool)

(assert (=> b!1487426 (= res!1011685 (not e!833792))))

(declare-fun res!1011686 () Bool)

(assert (=> b!1487426 (=> (not res!1011686) (not e!833792))))

(assert (=> b!1487426 (= res!1011686 (validKeyInArray!0 (select (arr!48035 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156505 () Bool)

(declare-fun res!1011687 () Bool)

(assert (=> d!156505 (=> res!1011687 e!833791)))

(assert (=> d!156505 (= res!1011687 (bvsge #b00000000000000000000000000000000 (size!48586 a!2862)))))

(assert (=> d!156505 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34713) e!833791)))

(declare-fun b!1487427 () Bool)

(assert (=> b!1487427 (= e!833793 call!67906)))

(declare-fun b!1487428 () Bool)

(assert (=> b!1487428 (= e!833793 call!67906)))

(declare-fun b!1487429 () Bool)

(declare-fun contains!9932 (List!34716 (_ BitVec 64)) Bool)

(assert (=> b!1487429 (= e!833792 (contains!9932 Nil!34713 (select (arr!48035 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156505 (not res!1011687)) b!1487426))

(assert (= (and b!1487426 res!1011686) b!1487429))

(assert (= (and b!1487426 res!1011685) b!1487425))

(assert (= (and b!1487425 c!137397) b!1487427))

(assert (= (and b!1487425 (not c!137397)) b!1487428))

(assert (= (or b!1487427 b!1487428) bm!67903))

(assert (=> bm!67903 m!1372111))

(declare-fun m!1372167 () Bool)

(assert (=> bm!67903 m!1372167))

(assert (=> b!1487425 m!1372111))

(assert (=> b!1487425 m!1372111))

(assert (=> b!1487425 m!1372121))

(assert (=> b!1487426 m!1372111))

(assert (=> b!1487426 m!1372111))

(assert (=> b!1487426 m!1372121))

(assert (=> b!1487429 m!1372111))

(assert (=> b!1487429 m!1372111))

(declare-fun m!1372169 () Bool)

(assert (=> b!1487429 m!1372169))

(assert (=> b!1487183 d!156505))

(declare-fun b!1487430 () Bool)

(declare-fun lt!648777 () SeekEntryResult!12298)

(assert (=> b!1487430 (and (bvsge (index!51585 lt!648777) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648777) (size!48586 a!2862)))))

(declare-fun res!1011688 () Bool)

(assert (=> b!1487430 (= res!1011688 (= (select (arr!48035 a!2862) (index!51585 lt!648777)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833798 () Bool)

(assert (=> b!1487430 (=> res!1011688 e!833798)))

(declare-fun b!1487431 () Bool)

(declare-fun e!833794 () Bool)

(declare-fun e!833797 () Bool)

(assert (=> b!1487431 (= e!833794 e!833797)))

(declare-fun res!1011689 () Bool)

(assert (=> b!1487431 (= res!1011689 (and ((_ is Intermediate!12298) lt!648777) (not (undefined!13110 lt!648777)) (bvslt (x!133165 lt!648777) #b01111111111111111111111111111110) (bvsge (x!133165 lt!648777) #b00000000000000000000000000000000) (bvsge (x!133165 lt!648777) #b00000000000000000000000000000000)))))

(assert (=> b!1487431 (=> (not res!1011689) (not e!833797))))

(declare-fun b!1487432 () Bool)

(assert (=> b!1487432 (and (bvsge (index!51585 lt!648777) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648777) (size!48586 a!2862)))))

(declare-fun res!1011690 () Bool)

(assert (=> b!1487432 (= res!1011690 (= (select (arr!48035 a!2862) (index!51585 lt!648777)) (select (arr!48035 a!2862) j!93)))))

(assert (=> b!1487432 (=> res!1011690 e!833798)))

(assert (=> b!1487432 (= e!833797 e!833798)))

(declare-fun e!833795 () SeekEntryResult!12298)

(declare-fun b!1487433 () Bool)

(assert (=> b!1487433 (= e!833795 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48035 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487434 () Bool)

(assert (=> b!1487434 (and (bvsge (index!51585 lt!648777) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648777) (size!48586 a!2862)))))

(assert (=> b!1487434 (= e!833798 (= (select (arr!48035 a!2862) (index!51585 lt!648777)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487436 () Bool)

(declare-fun e!833796 () SeekEntryResult!12298)

(assert (=> b!1487436 (= e!833796 e!833795)))

(declare-fun lt!648778 () (_ BitVec 64))

(declare-fun c!137398 () Bool)

(assert (=> b!1487436 (= c!137398 (or (= lt!648778 (select (arr!48035 a!2862) j!93)) (= (bvadd lt!648778 lt!648778) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487437 () Bool)

(assert (=> b!1487437 (= e!833796 (Intermediate!12298 true (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1487438 () Bool)

(assert (=> b!1487438 (= e!833794 (bvsge (x!133165 lt!648777) #b01111111111111111111111111111110))))

(declare-fun d!156509 () Bool)

(assert (=> d!156509 e!833794))

(declare-fun c!137400 () Bool)

(assert (=> d!156509 (= c!137400 (and ((_ is Intermediate!12298) lt!648777) (undefined!13110 lt!648777)))))

(assert (=> d!156509 (= lt!648777 e!833796)))

(declare-fun c!137399 () Bool)

(assert (=> d!156509 (= c!137399 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156509 (= lt!648778 (select (arr!48035 a!2862) (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687)))))

(assert (=> d!156509 (validMask!0 mask!2687)))

(assert (=> d!156509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648777)))

(declare-fun b!1487435 () Bool)

(assert (=> b!1487435 (= e!833795 (Intermediate!12298 false (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156509 c!137399) b!1487437))

(assert (= (and d!156509 (not c!137399)) b!1487436))

(assert (= (and b!1487436 c!137398) b!1487435))

(assert (= (and b!1487436 (not c!137398)) b!1487433))

(assert (= (and d!156509 c!137400) b!1487438))

(assert (= (and d!156509 (not c!137400)) b!1487431))

(assert (= (and b!1487431 res!1011689) b!1487432))

(assert (= (and b!1487432 (not res!1011690)) b!1487430))

(assert (= (and b!1487430 (not res!1011688)) b!1487434))

(assert (=> d!156509 m!1371985))

(declare-fun m!1372171 () Bool)

(assert (=> d!156509 m!1372171))

(assert (=> d!156509 m!1371997))

(assert (=> b!1487433 m!1371985))

(declare-fun m!1372173 () Bool)

(assert (=> b!1487433 m!1372173))

(assert (=> b!1487433 m!1372173))

(assert (=> b!1487433 m!1371979))

(declare-fun m!1372175 () Bool)

(assert (=> b!1487433 m!1372175))

(declare-fun m!1372177 () Bool)

(assert (=> b!1487432 m!1372177))

(assert (=> b!1487430 m!1372177))

(assert (=> b!1487434 m!1372177))

(assert (=> b!1487197 d!156509))

(declare-fun d!156511 () Bool)

(declare-fun lt!648780 () (_ BitVec 32))

(declare-fun lt!648779 () (_ BitVec 32))

(assert (=> d!156511 (= lt!648780 (bvmul (bvxor lt!648779 (bvlshr lt!648779 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156511 (= lt!648779 ((_ extract 31 0) (bvand (bvxor (select (arr!48035 a!2862) j!93) (bvlshr (select (arr!48035 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156511 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1011674 (let ((h!36091 ((_ extract 31 0) (bvand (bvxor (select (arr!48035 a!2862) j!93) (bvlshr (select (arr!48035 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133169 (bvmul (bvxor h!36091 (bvlshr h!36091 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133169 (bvlshr x!133169 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1011674 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1011674 #b00000000000000000000000000000000))))))

(assert (=> d!156511 (= (toIndex!0 (select (arr!48035 a!2862) j!93) mask!2687) (bvand (bvxor lt!648780 (bvlshr lt!648780 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487197 d!156511))

(declare-fun d!156513 () Bool)

(declare-fun lt!648793 () (_ BitVec 32))

(assert (=> d!156513 (and (bvsge lt!648793 #b00000000000000000000000000000000) (bvslt lt!648793 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156513 (= lt!648793 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156513 (validMask!0 mask!2687)))

(assert (=> d!156513 (= (nextIndex!0 index!646 x!665 mask!2687) lt!648793)))

(declare-fun bs!42778 () Bool)

(assert (= bs!42778 d!156513))

(declare-fun m!1372179 () Bool)

(assert (=> bs!42778 m!1372179))

(assert (=> bs!42778 m!1371997))

(assert (=> b!1487186 d!156513))

(declare-fun d!156515 () Bool)

(assert (=> d!156515 (= (validKeyInArray!0 (select (arr!48035 a!2862) i!1006)) (and (not (= (select (arr!48035 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48035 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487196 d!156515))

(declare-fun d!156517 () Bool)

(assert (=> d!156517 (= (validKeyInArray!0 (select (arr!48035 a!2862) j!93)) (and (not (= (select (arr!48035 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48035 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487185 d!156517))

(declare-fun d!156519 () Bool)

(assert (=> d!156519 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126714 d!156519))

(declare-fun d!156527 () Bool)

(assert (=> d!156527 (= (array_inv!36980 a!2862) (bvsge (size!48586 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126714 d!156527))

(declare-fun b!1487494 () Bool)

(declare-fun lt!648802 () SeekEntryResult!12298)

(assert (=> b!1487494 (and (bvsge (index!51585 lt!648802) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648802) (size!48586 a!2862)))))

(declare-fun res!1011712 () Bool)

(assert (=> b!1487494 (= res!1011712 (= (select (arr!48035 a!2862) (index!51585 lt!648802)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833838 () Bool)

(assert (=> b!1487494 (=> res!1011712 e!833838)))

(declare-fun b!1487495 () Bool)

(declare-fun e!833834 () Bool)

(declare-fun e!833837 () Bool)

(assert (=> b!1487495 (= e!833834 e!833837)))

(declare-fun res!1011713 () Bool)

(assert (=> b!1487495 (= res!1011713 (and ((_ is Intermediate!12298) lt!648802) (not (undefined!13110 lt!648802)) (bvslt (x!133165 lt!648802) #b01111111111111111111111111111110) (bvsge (x!133165 lt!648802) #b00000000000000000000000000000000) (bvsge (x!133165 lt!648802) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1487495 (=> (not res!1011713) (not e!833837))))

(declare-fun b!1487496 () Bool)

(assert (=> b!1487496 (and (bvsge (index!51585 lt!648802) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648802) (size!48586 a!2862)))))

(declare-fun res!1011714 () Bool)

(assert (=> b!1487496 (= res!1011714 (= (select (arr!48035 a!2862) (index!51585 lt!648802)) (select (arr!48035 a!2862) j!93)))))

(assert (=> b!1487496 (=> res!1011714 e!833838)))

(assert (=> b!1487496 (= e!833837 e!833838)))

(declare-fun e!833835 () SeekEntryResult!12298)

(declare-fun b!1487497 () Bool)

(assert (=> b!1487497 (= e!833835 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648685 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48035 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487498 () Bool)

(assert (=> b!1487498 (and (bvsge (index!51585 lt!648802) #b00000000000000000000000000000000) (bvslt (index!51585 lt!648802) (size!48586 a!2862)))))

(assert (=> b!1487498 (= e!833838 (= (select (arr!48035 a!2862) (index!51585 lt!648802)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487500 () Bool)

(declare-fun e!833836 () SeekEntryResult!12298)

(assert (=> b!1487500 (= e!833836 e!833835)))

(declare-fun lt!648803 () (_ BitVec 64))

(declare-fun c!137418 () Bool)

(assert (=> b!1487500 (= c!137418 (or (= lt!648803 (select (arr!48035 a!2862) j!93)) (= (bvadd lt!648803 lt!648803) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487501 () Bool)

(assert (=> b!1487501 (= e!833836 (Intermediate!12298 true lt!648685 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1487502 () Bool)

(assert (=> b!1487502 (= e!833834 (bvsge (x!133165 lt!648802) #b01111111111111111111111111111110))))

(declare-fun d!156529 () Bool)

(assert (=> d!156529 e!833834))

(declare-fun c!137420 () Bool)

(assert (=> d!156529 (= c!137420 (and ((_ is Intermediate!12298) lt!648802) (undefined!13110 lt!648802)))))

(assert (=> d!156529 (= lt!648802 e!833836)))

(declare-fun c!137419 () Bool)

(assert (=> d!156529 (= c!137419 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156529 (= lt!648803 (select (arr!48035 a!2862) lt!648685))))

(assert (=> d!156529 (validMask!0 mask!2687)))

(assert (=> d!156529 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648685 (select (arr!48035 a!2862) j!93) a!2862 mask!2687) lt!648802)))

(declare-fun b!1487499 () Bool)

(assert (=> b!1487499 (= e!833835 (Intermediate!12298 false lt!648685 (bvadd #b00000000000000000000000000000001 x!665)))))

(assert (= (and d!156529 c!137419) b!1487501))

(assert (= (and d!156529 (not c!137419)) b!1487500))

(assert (= (and b!1487500 c!137418) b!1487499))

(assert (= (and b!1487500 (not c!137418)) b!1487497))

(assert (= (and d!156529 c!137420) b!1487502))

(assert (= (and d!156529 (not c!137420)) b!1487495))

(assert (= (and b!1487495 res!1011713) b!1487496))

(assert (= (and b!1487496 (not res!1011714)) b!1487494))

(assert (= (and b!1487494 (not res!1011712)) b!1487498))

(declare-fun m!1372205 () Bool)

(assert (=> d!156529 m!1372205))

(assert (=> d!156529 m!1371997))

(declare-fun m!1372207 () Bool)

(assert (=> b!1487497 m!1372207))

(assert (=> b!1487497 m!1372207))

(assert (=> b!1487497 m!1371979))

(declare-fun m!1372209 () Bool)

(assert (=> b!1487497 m!1372209))

(declare-fun m!1372211 () Bool)

(assert (=> b!1487496 m!1372211))

(assert (=> b!1487494 m!1372211))

(assert (=> b!1487498 m!1372211))

(assert (=> b!1487184 d!156529))

(check-sat (not d!156475) (not b!1487396) (not d!156477) (not d!156491) (not b!1487367) (not b!1487426) (not b!1487497) (not b!1487381) (not d!156529) (not bm!67900) (not b!1487362) (not d!156501) (not bm!67896) (not b!1487365) (not d!156483) (not b!1487393) (not d!156509) (not b!1487324) (not bm!67903) (not b!1487281) (not b!1487433) (not d!156479) (not b!1487425) (not b!1487429) (not d!156493) (not d!156513) (not b!1487298) (not b!1487333))
(check-sat)
