; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124264 () Bool)

(assert start!124264)

(declare-fun b!1437713 () Bool)

(declare-fun res!970605 () Bool)

(declare-fun e!811111 () Bool)

(assert (=> b!1437713 (=> (not res!970605) (not e!811111))))

(declare-datatypes ((array!97746 0))(
  ( (array!97747 (arr!47161 (Array (_ BitVec 32) (_ BitVec 64))) (size!47712 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97746)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437713 (= res!970605 (validKeyInArray!0 (select (arr!47161 a!2862) i!1006)))))

(declare-fun b!1437714 () Bool)

(declare-fun e!811110 () Bool)

(assert (=> b!1437714 (= e!811111 e!811110)))

(declare-fun res!970606 () Bool)

(assert (=> b!1437714 (=> (not res!970606) (not e!811110))))

(declare-datatypes ((SeekEntryResult!11436 0))(
  ( (MissingZero!11436 (index!48135 (_ BitVec 32))) (Found!11436 (index!48136 (_ BitVec 32))) (Intermediate!11436 (undefined!12248 Bool) (index!48137 (_ BitVec 32)) (x!129870 (_ BitVec 32))) (Undefined!11436) (MissingVacant!11436 (index!48138 (_ BitVec 32))) )
))
(declare-fun lt!632332 () SeekEntryResult!11436)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97746 (_ BitVec 32)) SeekEntryResult!11436)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437714 (= res!970606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687) (select (arr!47161 a!2862) j!93) a!2862 mask!2687) lt!632332))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437714 (= lt!632332 (Intermediate!11436 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!970608 () Bool)

(assert (=> start!124264 (=> (not res!970608) (not e!811111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124264 (= res!970608 (validMask!0 mask!2687))))

(assert (=> start!124264 e!811111))

(assert (=> start!124264 true))

(declare-fun array_inv!36106 (array!97746) Bool)

(assert (=> start!124264 (array_inv!36106 a!2862)))

(declare-fun b!1437715 () Bool)

(declare-fun res!970600 () Bool)

(assert (=> b!1437715 (=> (not res!970600) (not e!811111))))

(assert (=> b!1437715 (= res!970600 (and (= (size!47712 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47712 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47712 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437716 () Bool)

(declare-fun res!970603 () Bool)

(assert (=> b!1437716 (=> (not res!970603) (not e!811111))))

(declare-datatypes ((List!33842 0))(
  ( (Nil!33839) (Cons!33838 (h!35179 (_ BitVec 64)) (t!48543 List!33842)) )
))
(declare-fun arrayNoDuplicates!0 (array!97746 (_ BitVec 32) List!33842) Bool)

(assert (=> b!1437716 (= res!970603 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33839))))

(declare-fun b!1437717 () Bool)

(declare-fun res!970607 () Bool)

(assert (=> b!1437717 (=> (not res!970607) (not e!811111))))

(assert (=> b!1437717 (= res!970607 (validKeyInArray!0 (select (arr!47161 a!2862) j!93)))))

(declare-fun b!1437718 () Bool)

(declare-fun res!970601 () Bool)

(assert (=> b!1437718 (=> (not res!970601) (not e!811111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97746 (_ BitVec 32)) Bool)

(assert (=> b!1437718 (= res!970601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437719 () Bool)

(declare-fun res!970604 () Bool)

(assert (=> b!1437719 (=> (not res!970604) (not e!811110))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1437719 (= res!970604 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47161 a!2862) j!93) a!2862 mask!2687) lt!632332))))

(declare-fun b!1437720 () Bool)

(declare-fun lt!632331 () (_ BitVec 32))

(assert (=> b!1437720 (= e!811110 (and (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632331 #b00000000000000000000000000000000) (bvsge lt!632331 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1437720 (= lt!632331 (toIndex!0 (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437721 () Bool)

(declare-fun res!970602 () Bool)

(assert (=> b!1437721 (=> (not res!970602) (not e!811111))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1437721 (= res!970602 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47712 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47712 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47712 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124264 res!970608) b!1437715))

(assert (= (and b!1437715 res!970600) b!1437713))

(assert (= (and b!1437713 res!970605) b!1437717))

(assert (= (and b!1437717 res!970607) b!1437718))

(assert (= (and b!1437718 res!970601) b!1437716))

(assert (= (and b!1437716 res!970603) b!1437721))

(assert (= (and b!1437721 res!970602) b!1437714))

(assert (= (and b!1437714 res!970606) b!1437719))

(assert (= (and b!1437719 res!970604) b!1437720))

(declare-fun m!1327023 () Bool)

(assert (=> b!1437720 m!1327023))

(declare-fun m!1327025 () Bool)

(assert (=> b!1437720 m!1327025))

(assert (=> b!1437720 m!1327025))

(declare-fun m!1327027 () Bool)

(assert (=> b!1437720 m!1327027))

(declare-fun m!1327029 () Bool)

(assert (=> start!124264 m!1327029))

(declare-fun m!1327031 () Bool)

(assert (=> start!124264 m!1327031))

(declare-fun m!1327033 () Bool)

(assert (=> b!1437718 m!1327033))

(declare-fun m!1327035 () Bool)

(assert (=> b!1437714 m!1327035))

(assert (=> b!1437714 m!1327035))

(declare-fun m!1327037 () Bool)

(assert (=> b!1437714 m!1327037))

(assert (=> b!1437714 m!1327037))

(assert (=> b!1437714 m!1327035))

(declare-fun m!1327039 () Bool)

(assert (=> b!1437714 m!1327039))

(declare-fun m!1327041 () Bool)

(assert (=> b!1437716 m!1327041))

(declare-fun m!1327043 () Bool)

(assert (=> b!1437713 m!1327043))

(assert (=> b!1437713 m!1327043))

(declare-fun m!1327045 () Bool)

(assert (=> b!1437713 m!1327045))

(assert (=> b!1437717 m!1327035))

(assert (=> b!1437717 m!1327035))

(declare-fun m!1327047 () Bool)

(assert (=> b!1437717 m!1327047))

(assert (=> b!1437721 m!1327023))

(declare-fun m!1327049 () Bool)

(assert (=> b!1437721 m!1327049))

(assert (=> b!1437719 m!1327035))

(assert (=> b!1437719 m!1327035))

(declare-fun m!1327051 () Bool)

(assert (=> b!1437719 m!1327051))

(push 1)

(assert (not start!124264))

(assert (not b!1437713))

(assert (not b!1437718))

(assert (not b!1437719))

(assert (not b!1437716))

(assert (not b!1437717))

(assert (not b!1437714))

(assert (not b!1437720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!811168 () SeekEntryResult!11436)

(declare-fun b!1437836 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437836 (= e!811168 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47161 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!154637 () Bool)

(declare-fun e!811172 () Bool)

(assert (=> d!154637 e!811172))

(declare-fun c!133083 () Bool)

(declare-fun lt!632361 () SeekEntryResult!11436)

(assert (=> d!154637 (= c!133083 (and (is-Intermediate!11436 lt!632361) (undefined!12248 lt!632361)))))

(declare-fun e!811170 () SeekEntryResult!11436)

(assert (=> d!154637 (= lt!632361 e!811170)))

(declare-fun c!133085 () Bool)

(assert (=> d!154637 (= c!133085 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632362 () (_ BitVec 64))

(assert (=> d!154637 (= lt!632362 (select (arr!47161 a!2862) (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687)))))

(assert (=> d!154637 (validMask!0 mask!2687)))

(assert (=> d!154637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687) (select (arr!47161 a!2862) j!93) a!2862 mask!2687) lt!632361)))

(declare-fun b!1437837 () Bool)

(assert (=> b!1437837 (and (bvsge (index!48137 lt!632361) #b00000000000000000000000000000000) (bvslt (index!48137 lt!632361) (size!47712 a!2862)))))

(declare-fun res!970689 () Bool)

(assert (=> b!1437837 (= res!970689 (= (select (arr!47161 a!2862) (index!48137 lt!632361)) (select (arr!47161 a!2862) j!93)))))

(declare-fun e!811171 () Bool)

(assert (=> b!1437837 (=> res!970689 e!811171)))

(declare-fun e!811169 () Bool)

(assert (=> b!1437837 (= e!811169 e!811171)))

(declare-fun b!1437838 () Bool)

(assert (=> b!1437838 (and (bvsge (index!48137 lt!632361) #b00000000000000000000000000000000) (bvslt (index!48137 lt!632361) (size!47712 a!2862)))))

(assert (=> b!1437838 (= e!811171 (= (select (arr!47161 a!2862) (index!48137 lt!632361)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437839 () Bool)

(assert (=> b!1437839 (= e!811172 (bvsge (x!129870 lt!632361) #b01111111111111111111111111111110))))

(declare-fun b!1437840 () Bool)

(assert (=> b!1437840 (= e!811172 e!811169)))

(declare-fun res!970688 () Bool)

(assert (=> b!1437840 (= res!970688 (and (is-Intermediate!11436 lt!632361) (not (undefined!12248 lt!632361)) (bvslt (x!129870 lt!632361) #b01111111111111111111111111111110) (bvsge (x!129870 lt!632361) #b00000000000000000000000000000000) (bvsge (x!129870 lt!632361) #b00000000000000000000000000000000)))))

(assert (=> b!1437840 (=> (not res!970688) (not e!811169))))

(declare-fun b!1437841 () Bool)

(assert (=> b!1437841 (= e!811168 (Intermediate!11436 false (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437842 () Bool)

(assert (=> b!1437842 (= e!811170 (Intermediate!11436 true (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437843 () Bool)

(assert (=> b!1437843 (= e!811170 e!811168)))

(declare-fun c!133084 () Bool)

(assert (=> b!1437843 (= c!133084 (or (= lt!632362 (select (arr!47161 a!2862) j!93)) (= (bvadd lt!632362 lt!632362) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437844 () Bool)

(assert (=> b!1437844 (and (bvsge (index!48137 lt!632361) #b00000000000000000000000000000000) (bvslt (index!48137 lt!632361) (size!47712 a!2862)))))

(declare-fun res!970690 () Bool)

(assert (=> b!1437844 (= res!970690 (= (select (arr!47161 a!2862) (index!48137 lt!632361)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437844 (=> res!970690 e!811171)))

(assert (= (and d!154637 c!133085) b!1437842))

(assert (= (and d!154637 (not c!133085)) b!1437843))

(assert (= (and b!1437843 c!133084) b!1437841))

(assert (= (and b!1437843 (not c!133084)) b!1437836))

(assert (= (and d!154637 c!133083) b!1437839))

(assert (= (and d!154637 (not c!133083)) b!1437840))

(assert (= (and b!1437840 res!970688) b!1437837))

(assert (= (and b!1437837 (not res!970689)) b!1437844))

(assert (= (and b!1437844 (not res!970690)) b!1437838))

(declare-fun m!1327129 () Bool)

(assert (=> b!1437844 m!1327129))

(assert (=> d!154637 m!1327037))

(declare-fun m!1327131 () Bool)

(assert (=> d!154637 m!1327131))

(assert (=> d!154637 m!1327029))

(assert (=> b!1437838 m!1327129))

(assert (=> b!1437836 m!1327037))

(declare-fun m!1327133 () Bool)

(assert (=> b!1437836 m!1327133))

(assert (=> b!1437836 m!1327133))

(assert (=> b!1437836 m!1327035))

(declare-fun m!1327135 () Bool)

(assert (=> b!1437836 m!1327135))

(assert (=> b!1437837 m!1327129))

(assert (=> b!1437714 d!154637))

(declare-fun d!154649 () Bool)

(declare-fun lt!632368 () (_ BitVec 32))

(declare-fun lt!632367 () (_ BitVec 32))

(assert (=> d!154649 (= lt!632368 (bvmul (bvxor lt!632367 (bvlshr lt!632367 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154649 (= lt!632367 ((_ extract 31 0) (bvand (bvxor (select (arr!47161 a!2862) j!93) (bvlshr (select (arr!47161 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154649 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970691 (let ((h!35183 ((_ extract 31 0) (bvand (bvxor (select (arr!47161 a!2862) j!93) (bvlshr (select (arr!47161 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129876 (bvmul (bvxor h!35183 (bvlshr h!35183 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129876 (bvlshr x!129876 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970691 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970691 #b00000000000000000000000000000000))))))

(assert (=> d!154649 (= (toIndex!0 (select (arr!47161 a!2862) j!93) mask!2687) (bvand (bvxor lt!632368 (bvlshr lt!632368 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437714 d!154649))

(declare-fun b!1437845 () Bool)

(declare-fun e!811173 () SeekEntryResult!11436)

(assert (=> b!1437845 (= e!811173 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47161 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!154655 () Bool)

(declare-fun e!811177 () Bool)

(assert (=> d!154655 e!811177))

(declare-fun c!133086 () Bool)

(declare-fun lt!632369 () SeekEntryResult!11436)

(assert (=> d!154655 (= c!133086 (and (is-Intermediate!11436 lt!632369) (undefined!12248 lt!632369)))))

(declare-fun e!811175 () SeekEntryResult!11436)

(assert (=> d!154655 (= lt!632369 e!811175)))

(declare-fun c!133088 () Bool)

(assert (=> d!154655 (= c!133088 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632370 () (_ BitVec 64))

(assert (=> d!154655 (= lt!632370 (select (arr!47161 a!2862) index!646))))

(assert (=> d!154655 (validMask!0 mask!2687)))

(assert (=> d!154655 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47161 a!2862) j!93) a!2862 mask!2687) lt!632369)))

(declare-fun b!1437846 () Bool)

(assert (=> b!1437846 (and (bvsge (index!48137 lt!632369) #b00000000000000000000000000000000) (bvslt (index!48137 lt!632369) (size!47712 a!2862)))))

(declare-fun res!970693 () Bool)

(assert (=> b!1437846 (= res!970693 (= (select (arr!47161 a!2862) (index!48137 lt!632369)) (select (arr!47161 a!2862) j!93)))))

(declare-fun e!811176 () Bool)

(assert (=> b!1437846 (=> res!970693 e!811176)))

(declare-fun e!811174 () Bool)

(assert (=> b!1437846 (= e!811174 e!811176)))

(declare-fun b!1437847 () Bool)

(assert (=> b!1437847 (and (bvsge (index!48137 lt!632369) #b00000000000000000000000000000000) (bvslt (index!48137 lt!632369) (size!47712 a!2862)))))

(assert (=> b!1437847 (= e!811176 (= (select (arr!47161 a!2862) (index!48137 lt!632369)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437848 () Bool)

(assert (=> b!1437848 (= e!811177 (bvsge (x!129870 lt!632369) #b01111111111111111111111111111110))))

(declare-fun b!1437849 () Bool)

(assert (=> b!1437849 (= e!811177 e!811174)))

(declare-fun res!970692 () Bool)

(assert (=> b!1437849 (= res!970692 (and (is-Intermediate!11436 lt!632369) (not (undefined!12248 lt!632369)) (bvslt (x!129870 lt!632369) #b01111111111111111111111111111110) (bvsge (x!129870 lt!632369) #b00000000000000000000000000000000) (bvsge (x!129870 lt!632369) x!665)))))

(assert (=> b!1437849 (=> (not res!970692) (not e!811174))))

(declare-fun b!1437850 () Bool)

(assert (=> b!1437850 (= e!811173 (Intermediate!11436 false index!646 x!665))))

(declare-fun b!1437851 () Bool)

(assert (=> b!1437851 (= e!811175 (Intermediate!11436 true index!646 x!665))))

(declare-fun b!1437852 () Bool)

(assert (=> b!1437852 (= e!811175 e!811173)))

(declare-fun c!133087 () Bool)

(assert (=> b!1437852 (= c!133087 (or (= lt!632370 (select (arr!47161 a!2862) j!93)) (= (bvadd lt!632370 lt!632370) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437853 () Bool)

(assert (=> b!1437853 (and (bvsge (index!48137 lt!632369) #b00000000000000000000000000000000) (bvslt (index!48137 lt!632369) (size!47712 a!2862)))))

(declare-fun res!970694 () Bool)

(assert (=> b!1437853 (= res!970694 (= (select (arr!47161 a!2862) (index!48137 lt!632369)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1437853 (=> res!970694 e!811176)))

(assert (= (and d!154655 c!133088) b!1437851))

(assert (= (and d!154655 (not c!133088)) b!1437852))

(assert (= (and b!1437852 c!133087) b!1437850))

(assert (= (and b!1437852 (not c!133087)) b!1437845))

(assert (= (and d!154655 c!133086) b!1437848))

(assert (= (and d!154655 (not c!133086)) b!1437849))

(assert (= (and b!1437849 res!970692) b!1437846))

(assert (= (and b!1437846 (not res!970693)) b!1437853))

(assert (= (and b!1437853 (not res!970694)) b!1437847))

(declare-fun m!1327137 () Bool)

(assert (=> b!1437853 m!1327137))

(declare-fun m!1327139 () Bool)

(assert (=> d!154655 m!1327139))

(assert (=> d!154655 m!1327029))

(assert (=> b!1437847 m!1327137))

(declare-fun m!1327141 () Bool)

(assert (=> b!1437845 m!1327141))

(assert (=> b!1437845 m!1327141))

(assert (=> b!1437845 m!1327035))

(declare-fun m!1327143 () Bool)

(assert (=> b!1437845 m!1327143))

(assert (=> b!1437846 m!1327137))

(assert (=> b!1437719 d!154655))

(declare-fun d!154657 () Bool)

(declare-fun lt!632376 () (_ BitVec 32))

(declare-fun lt!632375 () (_ BitVec 32))

(assert (=> d!154657 (= lt!632376 (bvmul (bvxor lt!632375 (bvlshr lt!632375 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154657 (= lt!632375 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154657 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970691 (let ((h!35183 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129876 (bvmul (bvxor h!35183 (bvlshr h!35183 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129876 (bvlshr x!129876 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970691 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970691 #b00000000000000000000000000000000))))))

(assert (=> d!154657 (= (toIndex!0 (select (store (arr!47161 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632376 (bvlshr lt!632376 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437720 d!154657))

(declare-fun b!1437904 () Bool)

(declare-fun e!811213 () Bool)

(declare-fun e!811211 () Bool)

(assert (=> b!1437904 (= e!811213 e!811211)))

(declare-fun c!133103 () Bool)

(assert (=> b!1437904 (= c!133103 (validKeyInArray!0 (select (arr!47161 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437906 () Bool)

(declare-fun e!811212 () Bool)

(assert (=> b!1437906 (= e!811211 e!811212)))

(declare-fun lt!632386 () (_ BitVec 64))

(assert (=> b!1437906 (= lt!632386 (select (arr!47161 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48508 0))(
  ( (Unit!48509) )
))
(declare-fun lt!632387 () Unit!48508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97746 (_ BitVec 64) (_ BitVec 32)) Unit!48508)

(assert (=> b!1437906 (= lt!632387 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632386 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1437906 (arrayContainsKey!0 a!2862 lt!632386 #b00000000000000000000000000000000)))

(declare-fun lt!632385 () Unit!48508)

(assert (=> b!1437906 (= lt!632385 lt!632387)))

(declare-fun res!970718 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97746 (_ BitVec 32)) SeekEntryResult!11436)

(assert (=> b!1437906 (= res!970718 (= (seekEntryOrOpen!0 (select (arr!47161 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11436 #b00000000000000000000000000000000)))))

(assert (=> b!1437906 (=> (not res!970718) (not e!811212))))

(declare-fun bm!67647 () Bool)

(declare-fun call!67650 () Bool)

(assert (=> bm!67647 (= call!67650 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1437907 () Bool)

(assert (=> b!1437907 (= e!811212 call!67650)))

(declare-fun b!1437905 () Bool)

(assert (=> b!1437905 (= e!811211 call!67650)))

(declare-fun d!154659 () Bool)

(declare-fun res!970719 () Bool)

(assert (=> d!154659 (=> res!970719 e!811213)))

(assert (=> d!154659 (= res!970719 (bvsge #b00000000000000000000000000000000 (size!47712 a!2862)))))

(assert (=> d!154659 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811213)))

(assert (= (and d!154659 (not res!970719)) b!1437904))

(assert (= (and b!1437904 c!133103) b!1437906))

(assert (= (and b!1437904 (not c!133103)) b!1437905))

(assert (= (and b!1437906 res!970718) b!1437907))

(assert (= (or b!1437907 b!1437905) bm!67647))

(declare-fun m!1327161 () Bool)

(assert (=> b!1437904 m!1327161))

(assert (=> b!1437904 m!1327161))

(declare-fun m!1327163 () Bool)

(assert (=> b!1437904 m!1327163))

(assert (=> b!1437906 m!1327161))

(declare-fun m!1327165 () Bool)

(assert (=> b!1437906 m!1327165))

(declare-fun m!1327167 () Bool)

(assert (=> b!1437906 m!1327167))

(assert (=> b!1437906 m!1327161))

(declare-fun m!1327169 () Bool)

(assert (=> b!1437906 m!1327169))

(declare-fun m!1327171 () Bool)

(assert (=> bm!67647 m!1327171))

(assert (=> b!1437718 d!154659))

(declare-fun d!154665 () Bool)

(assert (=> d!154665 (= (validKeyInArray!0 (select (arr!47161 a!2862) i!1006)) (and (not (= (select (arr!47161 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47161 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437713 d!154665))

(declare-fun d!154667 () Bool)

(assert (=> d!154667 (= (validKeyInArray!0 (select (arr!47161 a!2862) j!93)) (and (not (= (select (arr!47161 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47161 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437717 d!154667))

(declare-fun d!154669 () Bool)

(assert (=> d!154669 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124264 d!154669))

(declare-fun d!154683 () Bool)

(assert (=> d!154683 (= (array_inv!36106 a!2862) (bvsge (size!47712 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124264 d!154683))

(declare-fun b!1437948 () Bool)

(declare-fun e!811244 () Bool)

(declare-fun e!811242 () Bool)

(assert (=> b!1437948 (= e!811244 e!811242)))

(declare-fun c!133115 () Bool)

(assert (=> b!1437948 (= c!133115 (validKeyInArray!0 (select (arr!47161 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437949 () Bool)

(declare-fun e!811241 () Bool)

(assert (=> b!1437949 (= e!811241 e!811244)))

(declare-fun res!970740 () Bool)

(assert (=> b!1437949 (=> (not res!970740) (not e!811244))))

(declare-fun e!811243 () Bool)

(assert (=> b!1437949 (= res!970740 (not e!811243))))

(declare-fun res!970738 () Bool)

(assert (=> b!1437949 (=> (not res!970738) (not e!811243))))

(assert (=> b!1437949 (= res!970738 (validKeyInArray!0 (select (arr!47161 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154685 () Bool)

(declare-fun res!970739 () Bool)

(assert (=> d!154685 (=> res!970739 e!811241)))

(assert (=> d!154685 (= res!970739 (bvsge #b00000000000000000000000000000000 (size!47712 a!2862)))))

(assert (=> d!154685 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33839) e!811241)))

(declare-fun b!1437950 () Bool)

(declare-fun call!67656 () Bool)

(assert (=> b!1437950 (= e!811242 call!67656)))

(declare-fun b!1437951 () Bool)

(assert (=> b!1437951 (= e!811242 call!67656)))

(declare-fun bm!67653 () Bool)

(assert (=> bm!67653 (= call!67656 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133115 (Cons!33838 (select (arr!47161 a!2862) #b00000000000000000000000000000000) Nil!33839) Nil!33839)))))

(declare-fun b!1437952 () Bool)

(declare-fun contains!9902 (List!33842 (_ BitVec 64)) Bool)

(assert (=> b!1437952 (= e!811243 (contains!9902 Nil!33839 (select (arr!47161 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154685 (not res!970739)) b!1437949))

(assert (= (and b!1437949 res!970738) b!1437952))

(assert (= (and b!1437949 res!970740) b!1437948))

(assert (= (and b!1437948 c!133115) b!1437950))

(assert (= (and b!1437948 (not c!133115)) b!1437951))

(assert (= (or b!1437950 b!1437951) bm!67653))

(assert (=> b!1437948 m!1327161))

(assert (=> b!1437948 m!1327161))

(assert (=> b!1437948 m!1327163))

(assert (=> b!1437949 m!1327161))

(assert (=> b!1437949 m!1327161))

(assert (=> b!1437949 m!1327163))

(assert (=> bm!67653 m!1327161))

(declare-fun m!1327197 () Bool)

(assert (=> bm!67653 m!1327197))

(assert (=> b!1437952 m!1327161))

(assert (=> b!1437952 m!1327161))

(declare-fun m!1327199 () Bool)

(assert (=> b!1437952 m!1327199))

(assert (=> b!1437716 d!154685))

(push 1)

(assert (not b!1437948))

(assert (not b!1437836))

(assert (not bm!67647))

(assert (not b!1437906))

(assert (not d!154637))

(assert (not b!1437949))

(assert (not b!1437952))

(assert (not d!154655))

(assert (not b!1437904))

(assert (not bm!67653))

(assert (not b!1437845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

