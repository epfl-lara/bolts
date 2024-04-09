; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124198 () Bool)

(assert start!124198)

(declare-fun b!1437200 () Bool)

(declare-fun res!970193 () Bool)

(declare-fun e!810880 () Bool)

(assert (=> b!1437200 (=> (not res!970193) (not e!810880))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97719 0))(
  ( (array!97720 (arr!47149 (Array (_ BitVec 32) (_ BitVec 64))) (size!47700 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97719)

(assert (=> b!1437200 (= res!970193 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47700 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47700 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47700 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47149 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437201 () Bool)

(declare-fun e!810879 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1437201 (= e!810879 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1437202 () Bool)

(declare-fun res!970194 () Bool)

(assert (=> b!1437202 (=> (not res!970194) (not e!810880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437202 (= res!970194 (validKeyInArray!0 (select (arr!47149 a!2862) i!1006)))))

(declare-fun b!1437203 () Bool)

(declare-fun res!970192 () Bool)

(assert (=> b!1437203 (=> (not res!970192) (not e!810880))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1437203 (= res!970192 (validKeyInArray!0 (select (arr!47149 a!2862) j!93)))))

(declare-fun b!1437204 () Bool)

(declare-fun res!970200 () Bool)

(assert (=> b!1437204 (=> (not res!970200) (not e!810880))))

(declare-datatypes ((List!33830 0))(
  ( (Nil!33827) (Cons!33826 (h!35164 (_ BitVec 64)) (t!48531 List!33830)) )
))
(declare-fun arrayNoDuplicates!0 (array!97719 (_ BitVec 32) List!33830) Bool)

(assert (=> b!1437204 (= res!970200 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33827))))

(declare-fun res!970197 () Bool)

(assert (=> start!124198 (=> (not res!970197) (not e!810880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124198 (= res!970197 (validMask!0 mask!2687))))

(assert (=> start!124198 e!810880))

(assert (=> start!124198 true))

(declare-fun array_inv!36094 (array!97719) Bool)

(assert (=> start!124198 (array_inv!36094 a!2862)))

(declare-fun b!1437205 () Bool)

(assert (=> b!1437205 (= e!810880 e!810879)))

(declare-fun res!970198 () Bool)

(assert (=> b!1437205 (=> (not res!970198) (not e!810879))))

(declare-datatypes ((SeekEntryResult!11424 0))(
  ( (MissingZero!11424 (index!48087 (_ BitVec 32))) (Found!11424 (index!48088 (_ BitVec 32))) (Intermediate!11424 (undefined!12236 Bool) (index!48089 (_ BitVec 32)) (x!129820 (_ BitVec 32))) (Undefined!11424) (MissingVacant!11424 (index!48090 (_ BitVec 32))) )
))
(declare-fun lt!632197 () SeekEntryResult!11424)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97719 (_ BitVec 32)) SeekEntryResult!11424)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437205 (= res!970198 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687) (select (arr!47149 a!2862) j!93) a!2862 mask!2687) lt!632197))))

(assert (=> b!1437205 (= lt!632197 (Intermediate!11424 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437206 () Bool)

(declare-fun res!970196 () Bool)

(assert (=> b!1437206 (=> (not res!970196) (not e!810879))))

(assert (=> b!1437206 (= res!970196 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47149 a!2862) j!93) a!2862 mask!2687) lt!632197))))

(declare-fun b!1437207 () Bool)

(declare-fun res!970199 () Bool)

(assert (=> b!1437207 (=> (not res!970199) (not e!810880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97719 (_ BitVec 32)) Bool)

(assert (=> b!1437207 (= res!970199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437208 () Bool)

(declare-fun res!970195 () Bool)

(assert (=> b!1437208 (=> (not res!970195) (not e!810880))))

(assert (=> b!1437208 (= res!970195 (and (= (size!47700 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47700 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47700 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124198 res!970197) b!1437208))

(assert (= (and b!1437208 res!970195) b!1437202))

(assert (= (and b!1437202 res!970194) b!1437203))

(assert (= (and b!1437203 res!970192) b!1437207))

(assert (= (and b!1437207 res!970199) b!1437204))

(assert (= (and b!1437204 res!970200) b!1437200))

(assert (= (and b!1437200 res!970193) b!1437205))

(assert (= (and b!1437205 res!970198) b!1437206))

(assert (= (and b!1437206 res!970196) b!1437201))

(declare-fun m!1326579 () Bool)

(assert (=> b!1437205 m!1326579))

(assert (=> b!1437205 m!1326579))

(declare-fun m!1326581 () Bool)

(assert (=> b!1437205 m!1326581))

(assert (=> b!1437205 m!1326581))

(assert (=> b!1437205 m!1326579))

(declare-fun m!1326583 () Bool)

(assert (=> b!1437205 m!1326583))

(declare-fun m!1326585 () Bool)

(assert (=> b!1437207 m!1326585))

(assert (=> b!1437206 m!1326579))

(assert (=> b!1437206 m!1326579))

(declare-fun m!1326587 () Bool)

(assert (=> b!1437206 m!1326587))

(declare-fun m!1326589 () Bool)

(assert (=> b!1437202 m!1326589))

(assert (=> b!1437202 m!1326589))

(declare-fun m!1326591 () Bool)

(assert (=> b!1437202 m!1326591))

(declare-fun m!1326593 () Bool)

(assert (=> start!124198 m!1326593))

(declare-fun m!1326595 () Bool)

(assert (=> start!124198 m!1326595))

(declare-fun m!1326597 () Bool)

(assert (=> b!1437204 m!1326597))

(assert (=> b!1437203 m!1326579))

(assert (=> b!1437203 m!1326579))

(declare-fun m!1326599 () Bool)

(assert (=> b!1437203 m!1326599))

(declare-fun m!1326601 () Bool)

(assert (=> b!1437200 m!1326601))

(declare-fun m!1326603 () Bool)

(assert (=> b!1437200 m!1326603))

(push 1)

(assert (not b!1437206))

(assert (not b!1437205))

(assert (not b!1437204))

(assert (not start!124198))

(assert (not b!1437207))

(assert (not b!1437203))

(assert (not b!1437202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154573 () Bool)

(assert (=> d!154573 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124198 d!154573))

(declare-fun d!154579 () Bool)

(assert (=> d!154579 (= (array_inv!36094 a!2862) (bvsge (size!47700 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124198 d!154579))

(declare-fun d!154581 () Bool)

(declare-fun e!810954 () Bool)

(assert (=> d!154581 e!810954))

(declare-fun c!133041 () Bool)

(declare-fun lt!632234 () SeekEntryResult!11424)

(assert (=> d!154581 (= c!133041 (and (is-Intermediate!11424 lt!632234) (undefined!12236 lt!632234)))))

(declare-fun e!810955 () SeekEntryResult!11424)

(assert (=> d!154581 (= lt!632234 e!810955)))

(declare-fun c!133040 () Bool)

(assert (=> d!154581 (= c!133040 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632235 () (_ BitVec 64))

(assert (=> d!154581 (= lt!632235 (select (arr!47149 a!2862) index!646))))

(assert (=> d!154581 (validMask!0 mask!2687)))

(assert (=> d!154581 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47149 a!2862) j!93) a!2862 mask!2687) lt!632234)))

(declare-fun b!1437354 () Bool)

(declare-fun e!810956 () SeekEntryResult!11424)

(assert (=> b!1437354 (= e!810956 (Intermediate!11424 false index!646 x!665))))

(declare-fun b!1437355 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437355 (= e!810956 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47149 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437356 () Bool)

(assert (=> b!1437356 (and (bvsge (index!48089 lt!632234) #b00000000000000000000000000000000) (bvslt (index!48089 lt!632234) (size!47700 a!2862)))))

(declare-fun e!810957 () Bool)

(assert (=> b!1437356 (= e!810957 (= (select (arr!47149 a!2862) (index!48089 lt!632234)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437357 () Bool)

(assert (=> b!1437357 (= e!810954 (bvsge (x!129820 lt!632234) #b01111111111111111111111111111110))))

(declare-fun b!1437358 () Bool)

(assert (=> b!1437358 (and (bvsge (index!48089 lt!632234) #b00000000000000000000000000000000) (bvslt (index!48089 lt!632234) (size!47700 a!2862)))))

(declare-fun res!970291 () Bool)

(assert (=> b!1437358 (= res!970291 (= (select (arr!47149 a!2862) (index!48089 lt!632234)) (select (arr!47149 a!2862) j!93)))))

(assert (=> b!1437358 (=> res!970291 e!810957)))

(declare-fun e!810953 () Bool)

(assert (=> b!1437358 (= e!810953 e!810957)))

(declare-fun b!1437359 () Bool)

(assert (=> b!1437359 (= e!810955 (Intermediate!11424 true index!646 x!665))))

(declare-fun b!1437360 () Bool)

(assert (=> b!1437360 (= e!810954 e!810953)))

(declare-fun res!970290 () Bool)

(assert (=> b!1437360 (= res!970290 (and (is-Intermediate!11424 lt!632234) (not (undefined!12236 lt!632234)) (bvslt (x!129820 lt!632234) #b01111111111111111111111111111110) (bvsge (x!129820 lt!632234) #b00000000000000000000000000000000) (bvsge (x!129820 lt!632234) x!665)))))

(assert (=> b!1437360 (=> (not res!970290) (not e!810953))))

(declare-fun b!1437361 () Bool)

(assert (=> b!1437361 (and (bvsge (index!48089 lt!632234) #b00000000000000000000000000000000) (bvslt (index!48089 lt!632234) (size!47700 a!2862)))))

(declare-fun res!970292 () Bool)

(assert (=> b!1437361 (= res!970292 (= (select (arr!47149 a!2862) (index!48089 lt!632234)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437361 (=> res!970292 e!810957)))

(declare-fun b!1437362 () Bool)

(assert (=> b!1437362 (= e!810955 e!810956)))

(declare-fun c!133042 () Bool)

(assert (=> b!1437362 (= c!133042 (or (= lt!632235 (select (arr!47149 a!2862) j!93)) (= (bvadd lt!632235 lt!632235) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154581 c!133040) b!1437359))

(assert (= (and d!154581 (not c!133040)) b!1437362))

(assert (= (and b!1437362 c!133042) b!1437354))

(assert (= (and b!1437362 (not c!133042)) b!1437355))

(assert (= (and d!154581 c!133041) b!1437357))

(assert (= (and d!154581 (not c!133041)) b!1437360))

(assert (= (and b!1437360 res!970290) b!1437358))

(assert (= (and b!1437358 (not res!970291)) b!1437361))

(assert (= (and b!1437361 (not res!970292)) b!1437356))

(declare-fun m!1326681 () Bool)

(assert (=> b!1437356 m!1326681))

(declare-fun m!1326683 () Bool)

(assert (=> b!1437355 m!1326683))

(assert (=> b!1437355 m!1326683))

(assert (=> b!1437355 m!1326579))

(declare-fun m!1326685 () Bool)

(assert (=> b!1437355 m!1326685))

(assert (=> b!1437358 m!1326681))

(declare-fun m!1326687 () Bool)

(assert (=> d!154581 m!1326687))

(assert (=> d!154581 m!1326593))

(assert (=> b!1437361 m!1326681))

(assert (=> b!1437206 d!154581))

(declare-fun d!154601 () Bool)

(declare-fun e!810963 () Bool)

(assert (=> d!154601 e!810963))

(declare-fun c!133045 () Bool)

(declare-fun lt!632236 () SeekEntryResult!11424)

(assert (=> d!154601 (= c!133045 (and (is-Intermediate!11424 lt!632236) (undefined!12236 lt!632236)))))

(declare-fun e!810964 () SeekEntryResult!11424)

(assert (=> d!154601 (= lt!632236 e!810964)))

(declare-fun c!133044 () Bool)

(assert (=> d!154601 (= c!133044 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632237 () (_ BitVec 64))

(assert (=> d!154601 (= lt!632237 (select (arr!47149 a!2862) (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687)))))

(assert (=> d!154601 (validMask!0 mask!2687)))

(assert (=> d!154601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687) (select (arr!47149 a!2862) j!93) a!2862 mask!2687) lt!632236)))

(declare-fun e!810965 () SeekEntryResult!11424)

(declare-fun b!1437368 () Bool)

(assert (=> b!1437368 (= e!810965 (Intermediate!11424 false (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437369 () Bool)

(assert (=> b!1437369 (= e!810965 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47149 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437370 () Bool)

(assert (=> b!1437370 (and (bvsge (index!48089 lt!632236) #b00000000000000000000000000000000) (bvslt (index!48089 lt!632236) (size!47700 a!2862)))))

(declare-fun e!810966 () Bool)

(assert (=> b!1437370 (= e!810966 (= (select (arr!47149 a!2862) (index!48089 lt!632236)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437371 () Bool)

(assert (=> b!1437371 (= e!810963 (bvsge (x!129820 lt!632236) #b01111111111111111111111111111110))))

(declare-fun b!1437372 () Bool)

(assert (=> b!1437372 (and (bvsge (index!48089 lt!632236) #b00000000000000000000000000000000) (bvslt (index!48089 lt!632236) (size!47700 a!2862)))))

(declare-fun res!970297 () Bool)

(assert (=> b!1437372 (= res!970297 (= (select (arr!47149 a!2862) (index!48089 lt!632236)) (select (arr!47149 a!2862) j!93)))))

(assert (=> b!1437372 (=> res!970297 e!810966)))

(declare-fun e!810962 () Bool)

(assert (=> b!1437372 (= e!810962 e!810966)))

(declare-fun b!1437373 () Bool)

(assert (=> b!1437373 (= e!810964 (Intermediate!11424 true (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437374 () Bool)

(assert (=> b!1437374 (= e!810963 e!810962)))

(declare-fun res!970296 () Bool)

(assert (=> b!1437374 (= res!970296 (and (is-Intermediate!11424 lt!632236) (not (undefined!12236 lt!632236)) (bvslt (x!129820 lt!632236) #b01111111111111111111111111111110) (bvsge (x!129820 lt!632236) #b00000000000000000000000000000000) (bvsge (x!129820 lt!632236) #b00000000000000000000000000000000)))))

(assert (=> b!1437374 (=> (not res!970296) (not e!810962))))

(declare-fun b!1437375 () Bool)

(assert (=> b!1437375 (and (bvsge (index!48089 lt!632236) #b00000000000000000000000000000000) (bvslt (index!48089 lt!632236) (size!47700 a!2862)))))

(declare-fun res!970298 () Bool)

(assert (=> b!1437375 (= res!970298 (= (select (arr!47149 a!2862) (index!48089 lt!632236)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437375 (=> res!970298 e!810966)))

(declare-fun b!1437376 () Bool)

(assert (=> b!1437376 (= e!810964 e!810965)))

(declare-fun c!133046 () Bool)

(assert (=> b!1437376 (= c!133046 (or (= lt!632237 (select (arr!47149 a!2862) j!93)) (= (bvadd lt!632237 lt!632237) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154601 c!133044) b!1437373))

(assert (= (and d!154601 (not c!133044)) b!1437376))

(assert (= (and b!1437376 c!133046) b!1437368))

(assert (= (and b!1437376 (not c!133046)) b!1437369))

(assert (= (and d!154601 c!133045) b!1437371))

(assert (= (and d!154601 (not c!133045)) b!1437374))

(assert (= (and b!1437374 res!970296) b!1437372))

(assert (= (and b!1437372 (not res!970297)) b!1437375))

(assert (= (and b!1437375 (not res!970298)) b!1437370))

(declare-fun m!1326697 () Bool)

(assert (=> b!1437370 m!1326697))

(assert (=> b!1437369 m!1326581))

(declare-fun m!1326699 () Bool)

(assert (=> b!1437369 m!1326699))

(assert (=> b!1437369 m!1326699))

(assert (=> b!1437369 m!1326579))

(declare-fun m!1326701 () Bool)

(assert (=> b!1437369 m!1326701))

(assert (=> b!1437372 m!1326697))

(assert (=> d!154601 m!1326581))

(declare-fun m!1326703 () Bool)

(assert (=> d!154601 m!1326703))

(assert (=> d!154601 m!1326593))

(assert (=> b!1437375 m!1326697))

(assert (=> b!1437205 d!154601))

(declare-fun d!154605 () Bool)

(declare-fun lt!632249 () (_ BitVec 32))

(declare-fun lt!632248 () (_ BitVec 32))

(assert (=> d!154605 (= lt!632249 (bvmul (bvxor lt!632248 (bvlshr lt!632248 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154605 (= lt!632248 ((_ extract 31 0) (bvand (bvxor (select (arr!47149 a!2862) j!93) (bvlshr (select (arr!47149 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154605 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970299 (let ((h!35169 ((_ extract 31 0) (bvand (bvxor (select (arr!47149 a!2862) j!93) (bvlshr (select (arr!47149 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129828 (bvmul (bvxor h!35169 (bvlshr h!35169 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129828 (bvlshr x!129828 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970299 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970299 #b00000000000000000000000000000000))))))

(assert (=> d!154605 (= (toIndex!0 (select (arr!47149 a!2862) j!93) mask!2687) (bvand (bvxor lt!632249 (bvlshr lt!632249 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437205 d!154605))

(declare-fun b!1437420 () Bool)

(declare-fun e!810999 () Bool)

(declare-fun e!811000 () Bool)

(assert (=> b!1437420 (= e!810999 e!811000)))

(declare-fun res!970323 () Bool)

(assert (=> b!1437420 (=> (not res!970323) (not e!811000))))

(declare-fun e!811001 () Bool)

(assert (=> b!1437420 (= res!970323 (not e!811001))))

(declare-fun res!970322 () Bool)

(assert (=> b!1437420 (=> (not res!970322) (not e!811001))))

(assert (=> b!1437420 (= res!970322 (validKeyInArray!0 (select (arr!47149 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67632 () Bool)

(declare-fun call!67635 () Bool)

(declare-fun c!133058 () Bool)

(assert (=> bm!67632 (= call!67635 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133058 (Cons!33826 (select (arr!47149 a!2862) #b00000000000000000000000000000000) Nil!33827) Nil!33827)))))

(declare-fun b!1437421 () Bool)

(declare-fun e!810998 () Bool)

(assert (=> b!1437421 (= e!810998 call!67635)))

(declare-fun d!154607 () Bool)

(declare-fun res!970321 () Bool)

(assert (=> d!154607 (=> res!970321 e!810999)))

(assert (=> d!154607 (= res!970321 (bvsge #b00000000000000000000000000000000 (size!47700 a!2862)))))

(assert (=> d!154607 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33827) e!810999)))

(declare-fun b!1437422 () Bool)

(declare-fun contains!9899 (List!33830 (_ BitVec 64)) Bool)

(assert (=> b!1437422 (= e!811001 (contains!9899 Nil!33827 (select (arr!47149 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437423 () Bool)

(assert (=> b!1437423 (= e!811000 e!810998)))

(assert (=> b!1437423 (= c!133058 (validKeyInArray!0 (select (arr!47149 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437424 () Bool)

(assert (=> b!1437424 (= e!810998 call!67635)))

(assert (= (and d!154607 (not res!970321)) b!1437420))

(assert (= (and b!1437420 res!970322) b!1437422))

(assert (= (and b!1437420 res!970323) b!1437423))

(assert (= (and b!1437423 c!133058) b!1437424))

(assert (= (and b!1437423 (not c!133058)) b!1437421))

(assert (= (or b!1437424 b!1437421) bm!67632))

(declare-fun m!1326733 () Bool)

(assert (=> b!1437420 m!1326733))

(assert (=> b!1437420 m!1326733))

(declare-fun m!1326735 () Bool)

(assert (=> b!1437420 m!1326735))

(assert (=> bm!67632 m!1326733))

(declare-fun m!1326737 () Bool)

(assert (=> bm!67632 m!1326737))

(assert (=> b!1437422 m!1326733))

(assert (=> b!1437422 m!1326733))

(declare-fun m!1326739 () Bool)

(assert (=> b!1437422 m!1326739))

(assert (=> b!1437423 m!1326733))

(assert (=> b!1437423 m!1326733))

(assert (=> b!1437423 m!1326735))

(assert (=> b!1437204 d!154607))

(declare-fun d!154613 () Bool)

(assert (=> d!154613 (= (validKeyInArray!0 (select (arr!47149 a!2862) j!93)) (and (not (= (select (arr!47149 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47149 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437203 d!154613))

(declare-fun d!154615 () Bool)

(assert (=> d!154615 (= (validKeyInArray!0 (select (arr!47149 a!2862) i!1006)) (and (not (= (select (arr!47149 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47149 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437202 d!154615))

(declare-fun b!1437433 () Bool)

(declare-fun e!811010 () Bool)

(declare-fun e!811008 () Bool)

(assert (=> b!1437433 (= e!811010 e!811008)))

(declare-fun lt!632272 () (_ BitVec 64))

(assert (=> b!1437433 (= lt!632272 (select (arr!47149 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48504 0))(
  ( (Unit!48505) )
))
(declare-fun lt!632271 () Unit!48504)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97719 (_ BitVec 64) (_ BitVec 32)) Unit!48504)

(assert (=> b!1437433 (= lt!632271 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632272 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1437433 (arrayContainsKey!0 a!2862 lt!632272 #b00000000000000000000000000000000)))

(declare-fun lt!632270 () Unit!48504)

(assert (=> b!1437433 (= lt!632270 lt!632271)))

(declare-fun res!970328 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97719 (_ BitVec 32)) SeekEntryResult!11424)

(assert (=> b!1437433 (= res!970328 (= (seekEntryOrOpen!0 (select (arr!47149 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11424 #b00000000000000000000000000000000)))))

(assert (=> b!1437433 (=> (not res!970328) (not e!811008))))

(declare-fun bm!67635 () Bool)

(declare-fun call!67638 () Bool)

(assert (=> bm!67635 (= call!67638 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!154617 () Bool)

(declare-fun res!970329 () Bool)

(declare-fun e!811009 () Bool)

(assert (=> d!154617 (=> res!970329 e!811009)))

(assert (=> d!154617 (= res!970329 (bvsge #b00000000000000000000000000000000 (size!47700 a!2862)))))

(assert (=> d!154617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811009)))

(declare-fun b!1437434 () Bool)

(assert (=> b!1437434 (= e!811010 call!67638)))

(declare-fun b!1437435 () Bool)

(assert (=> b!1437435 (= e!811009 e!811010)))

(declare-fun c!133061 () Bool)

(assert (=> b!1437435 (= c!133061 (validKeyInArray!0 (select (arr!47149 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437436 () Bool)

(assert (=> b!1437436 (= e!811008 call!67638)))

(assert (= (and d!154617 (not res!970329)) b!1437435))

(assert (= (and b!1437435 c!133061) b!1437433))

(assert (= (and b!1437435 (not c!133061)) b!1437434))

(assert (= (and b!1437433 res!970328) b!1437436))

(assert (= (or b!1437436 b!1437434) bm!67635))

(assert (=> b!1437433 m!1326733))

(declare-fun m!1326741 () Bool)

(assert (=> b!1437433 m!1326741))

(declare-fun m!1326743 () Bool)

(assert (=> b!1437433 m!1326743))

(assert (=> b!1437433 m!1326733))

(declare-fun m!1326745 () Bool)

(assert (=> b!1437433 m!1326745))

(declare-fun m!1326747 () Bool)

(assert (=> bm!67635 m!1326747))

(assert (=> b!1437435 m!1326733))

(assert (=> b!1437435 m!1326733))

(assert (=> b!1437435 m!1326735))

(assert (=> b!1437207 d!154617))

(push 1)

