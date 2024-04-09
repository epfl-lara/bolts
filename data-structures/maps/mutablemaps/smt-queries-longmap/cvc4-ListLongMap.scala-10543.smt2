; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124400 () Bool)

(assert start!124400)

(declare-fun b!1438864 () Bool)

(declare-fun res!971528 () Bool)

(declare-fun e!811623 () Bool)

(assert (=> b!1438864 (=> (not res!971528) (not e!811623))))

(declare-datatypes ((array!97804 0))(
  ( (array!97805 (arr!47187 (Array (_ BitVec 32) (_ BitVec 64))) (size!47738 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97804)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97804 (_ BitVec 32)) Bool)

(assert (=> b!1438864 (= res!971528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!632617 () (_ BitVec 32))

(declare-fun e!811624 () Bool)

(declare-fun b!1438865 () Bool)

(assert (=> b!1438865 (= e!811624 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632617 #b00000000000000000000000000000000) (bvsge lt!632617 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun b!1438866 () Bool)

(declare-fun res!971524 () Bool)

(assert (=> b!1438866 (=> (not res!971524) (not e!811623))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438866 (= res!971524 (validKeyInArray!0 (select (arr!47187 a!2862) j!93)))))

(declare-fun res!971526 () Bool)

(assert (=> start!124400 (=> (not res!971526) (not e!811623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124400 (= res!971526 (validMask!0 mask!2687))))

(assert (=> start!124400 e!811623))

(assert (=> start!124400 true))

(declare-fun array_inv!36132 (array!97804) Bool)

(assert (=> start!124400 (array_inv!36132 a!2862)))

(declare-fun b!1438867 () Bool)

(declare-fun res!971529 () Bool)

(assert (=> b!1438867 (=> (not res!971529) (not e!811623))))

(declare-datatypes ((List!33868 0))(
  ( (Nil!33865) (Cons!33864 (h!35211 (_ BitVec 64)) (t!48569 List!33868)) )
))
(declare-fun arrayNoDuplicates!0 (array!97804 (_ BitVec 32) List!33868) Bool)

(assert (=> b!1438867 (= res!971529 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33865))))

(declare-fun b!1438868 () Bool)

(declare-fun res!971530 () Bool)

(assert (=> b!1438868 (=> (not res!971530) (not e!811623))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438868 (= res!971530 (and (= (size!47738 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47738 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47738 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438869 () Bool)

(declare-fun e!811622 () Bool)

(assert (=> b!1438869 (= e!811623 e!811622)))

(declare-fun res!971532 () Bool)

(assert (=> b!1438869 (=> (not res!971532) (not e!811622))))

(declare-datatypes ((SeekEntryResult!11462 0))(
  ( (MissingZero!11462 (index!48239 (_ BitVec 32))) (Found!11462 (index!48240 (_ BitVec 32))) (Intermediate!11462 (undefined!12274 Bool) (index!48241 (_ BitVec 32)) (x!129972 (_ BitVec 32))) (Undefined!11462) (MissingVacant!11462 (index!48242 (_ BitVec 32))) )
))
(declare-fun lt!632616 () SeekEntryResult!11462)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97804 (_ BitVec 32)) SeekEntryResult!11462)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438869 (= res!971532 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687) (select (arr!47187 a!2862) j!93) a!2862 mask!2687) lt!632616))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438869 (= lt!632616 (Intermediate!11462 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438870 () Bool)

(declare-fun res!971525 () Bool)

(assert (=> b!1438870 (=> (not res!971525) (not e!811623))))

(assert (=> b!1438870 (= res!971525 (validKeyInArray!0 (select (arr!47187 a!2862) i!1006)))))

(declare-fun b!1438871 () Bool)

(assert (=> b!1438871 (= e!811622 e!811624)))

(declare-fun res!971523 () Bool)

(assert (=> b!1438871 (=> (not res!971523) (not e!811624))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438871 (= res!971523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632617 (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862)) mask!2687) (Intermediate!11462 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1438871 (= lt!632617 (toIndex!0 (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438872 () Bool)

(declare-fun res!971527 () Bool)

(assert (=> b!1438872 (=> (not res!971527) (not e!811623))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1438872 (= res!971527 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47738 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47738 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47738 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438873 () Bool)

(declare-fun res!971531 () Bool)

(assert (=> b!1438873 (=> (not res!971531) (not e!811622))))

(assert (=> b!1438873 (= res!971531 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47187 a!2862) j!93) a!2862 mask!2687) lt!632616))))

(assert (= (and start!124400 res!971526) b!1438868))

(assert (= (and b!1438868 res!971530) b!1438870))

(assert (= (and b!1438870 res!971525) b!1438866))

(assert (= (and b!1438866 res!971524) b!1438864))

(assert (= (and b!1438864 res!971528) b!1438867))

(assert (= (and b!1438867 res!971529) b!1438872))

(assert (= (and b!1438872 res!971527) b!1438869))

(assert (= (and b!1438869 res!971532) b!1438873))

(assert (= (and b!1438873 res!971531) b!1438871))

(assert (= (and b!1438871 res!971523) b!1438865))

(declare-fun m!1328059 () Bool)

(assert (=> b!1438873 m!1328059))

(assert (=> b!1438873 m!1328059))

(declare-fun m!1328061 () Bool)

(assert (=> b!1438873 m!1328061))

(declare-fun m!1328063 () Bool)

(assert (=> start!124400 m!1328063))

(declare-fun m!1328065 () Bool)

(assert (=> start!124400 m!1328065))

(assert (=> b!1438869 m!1328059))

(assert (=> b!1438869 m!1328059))

(declare-fun m!1328067 () Bool)

(assert (=> b!1438869 m!1328067))

(assert (=> b!1438869 m!1328067))

(assert (=> b!1438869 m!1328059))

(declare-fun m!1328069 () Bool)

(assert (=> b!1438869 m!1328069))

(declare-fun m!1328071 () Bool)

(assert (=> b!1438872 m!1328071))

(declare-fun m!1328073 () Bool)

(assert (=> b!1438872 m!1328073))

(declare-fun m!1328075 () Bool)

(assert (=> b!1438867 m!1328075))

(declare-fun m!1328077 () Bool)

(assert (=> b!1438864 m!1328077))

(assert (=> b!1438866 m!1328059))

(assert (=> b!1438866 m!1328059))

(declare-fun m!1328079 () Bool)

(assert (=> b!1438866 m!1328079))

(declare-fun m!1328081 () Bool)

(assert (=> b!1438870 m!1328081))

(assert (=> b!1438870 m!1328081))

(declare-fun m!1328083 () Bool)

(assert (=> b!1438870 m!1328083))

(assert (=> b!1438871 m!1328071))

(declare-fun m!1328085 () Bool)

(assert (=> b!1438871 m!1328085))

(assert (=> b!1438871 m!1328085))

(declare-fun m!1328087 () Bool)

(assert (=> b!1438871 m!1328087))

(assert (=> b!1438871 m!1328085))

(declare-fun m!1328089 () Bool)

(assert (=> b!1438871 m!1328089))

(push 1)

(assert (not b!1438866))

(assert (not start!124400))

(assert (not b!1438873))

(assert (not b!1438870))

(assert (not b!1438871))

(assert (not b!1438864))

(assert (not b!1438869))

(assert (not b!1438867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154791 () Bool)

(assert (=> d!154791 (= (validKeyInArray!0 (select (arr!47187 a!2862) j!93)) (and (not (= (select (arr!47187 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47187 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438866 d!154791))

(declare-fun b!1438988 () Bool)

(declare-fun e!811700 () SeekEntryResult!11462)

(assert (=> b!1438988 (= e!811700 (Intermediate!11462 true lt!632617 #b00000000000000000000000000000000))))

(declare-fun b!1438989 () Bool)

(declare-fun lt!632663 () SeekEntryResult!11462)

(assert (=> b!1438989 (and (bvsge (index!48241 lt!632663) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632663) (size!47738 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862)))))))

(declare-fun e!811702 () Bool)

(assert (=> b!1438989 (= e!811702 (= (select (arr!47187 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862))) (index!48241 lt!632663)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154793 () Bool)

(declare-fun e!811701 () Bool)

(assert (=> d!154793 e!811701))

(declare-fun c!133218 () Bool)

(assert (=> d!154793 (= c!133218 (and (is-Intermediate!11462 lt!632663) (undefined!12274 lt!632663)))))

(assert (=> d!154793 (= lt!632663 e!811700)))

(declare-fun c!133220 () Bool)

(assert (=> d!154793 (= c!133220 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632662 () (_ BitVec 64))

(assert (=> d!154793 (= lt!632662 (select (arr!47187 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862))) lt!632617))))

(assert (=> d!154793 (validMask!0 mask!2687)))

(assert (=> d!154793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632617 (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862)) mask!2687) lt!632663)))

(declare-fun b!1438990 () Bool)

(assert (=> b!1438990 (and (bvsge (index!48241 lt!632663) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632663) (size!47738 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862)))))))

(declare-fun res!971578 () Bool)

(assert (=> b!1438990 (= res!971578 (= (select (arr!47187 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862))) (index!48241 lt!632663)) (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)))))

(assert (=> b!1438990 (=> res!971578 e!811702)))

(declare-fun e!811703 () Bool)

(assert (=> b!1438990 (= e!811703 e!811702)))

(declare-fun b!1438991 () Bool)

(declare-fun e!811699 () SeekEntryResult!11462)

(assert (=> b!1438991 (= e!811699 (Intermediate!11462 false lt!632617 #b00000000000000000000000000000000))))

(declare-fun b!1438992 () Bool)

(assert (=> b!1438992 (= e!811701 (bvsge (x!129972 lt!632663) #b01111111111111111111111111111110))))

(declare-fun b!1438993 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438993 (= e!811699 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!632617 #b00000000000000000000000000000000 mask!2687) (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862)) mask!2687))))

(declare-fun b!1438994 () Bool)

(assert (=> b!1438994 (= e!811701 e!811703)))

(declare-fun res!971579 () Bool)

(assert (=> b!1438994 (= res!971579 (and (is-Intermediate!11462 lt!632663) (not (undefined!12274 lt!632663)) (bvslt (x!129972 lt!632663) #b01111111111111111111111111111110) (bvsge (x!129972 lt!632663) #b00000000000000000000000000000000) (bvsge (x!129972 lt!632663) #b00000000000000000000000000000000)))))

(assert (=> b!1438994 (=> (not res!971579) (not e!811703))))

(declare-fun b!1438995 () Bool)

(assert (=> b!1438995 (= e!811700 e!811699)))

(declare-fun c!133219 () Bool)

(assert (=> b!1438995 (= c!133219 (or (= lt!632662 (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93)) (= (bvadd lt!632662 lt!632662) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438996 () Bool)

(assert (=> b!1438996 (and (bvsge (index!48241 lt!632663) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632663) (size!47738 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862)))))))

(declare-fun res!971580 () Bool)

(assert (=> b!1438996 (= res!971580 (= (select (arr!47187 (array!97805 (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47738 a!2862))) (index!48241 lt!632663)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1438996 (=> res!971580 e!811702)))

(assert (= (and d!154793 c!133220) b!1438988))

(assert (= (and d!154793 (not c!133220)) b!1438995))

(assert (= (and b!1438995 c!133219) b!1438991))

(assert (= (and b!1438995 (not c!133219)) b!1438993))

(assert (= (and d!154793 c!133218) b!1438992))

(assert (= (and d!154793 (not c!133218)) b!1438994))

(assert (= (and b!1438994 res!971579) b!1438990))

(assert (= (and b!1438990 (not res!971578)) b!1438996))

(assert (= (and b!1438996 (not res!971580)) b!1438989))

(declare-fun m!1328143 () Bool)

(assert (=> b!1438993 m!1328143))

(assert (=> b!1438993 m!1328143))

(assert (=> b!1438993 m!1328085))

(declare-fun m!1328145 () Bool)

(assert (=> b!1438993 m!1328145))

(declare-fun m!1328147 () Bool)

(assert (=> b!1438996 m!1328147))

(assert (=> b!1438989 m!1328147))

(assert (=> b!1438990 m!1328147))

(declare-fun m!1328149 () Bool)

(assert (=> d!154793 m!1328149))

(assert (=> d!154793 m!1328063))

(assert (=> b!1438871 d!154793))

(declare-fun d!154805 () Bool)

(declare-fun lt!632671 () (_ BitVec 32))

(declare-fun lt!632670 () (_ BitVec 32))

(assert (=> d!154805 (= lt!632671 (bvmul (bvxor lt!632670 (bvlshr lt!632670 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154805 (= lt!632670 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154805 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971585 (let ((h!35213 ((_ extract 31 0) (bvand (bvxor (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (bvlshr (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129977 (bvmul (bvxor h!35213 (bvlshr h!35213 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129977 (bvlshr x!129977 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971585 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971585 #b00000000000000000000000000000000))))))

(assert (=> d!154805 (= (toIndex!0 (select (store (arr!47187 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (bvand (bvxor lt!632671 (bvlshr lt!632671 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438871 d!154805))

(declare-fun d!154809 () Bool)

(assert (=> d!154809 (= (validKeyInArray!0 (select (arr!47187 a!2862) i!1006)) (and (not (= (select (arr!47187 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47187 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1438870 d!154809))

(declare-fun d!154811 () Bool)

(assert (=> d!154811 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124400 d!154811))

(declare-fun d!154815 () Bool)

(assert (=> d!154815 (= (array_inv!36132 a!2862) (bvsge (size!47738 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124400 d!154815))

(declare-fun d!154817 () Bool)

(declare-fun res!971607 () Bool)

(declare-fun e!811734 () Bool)

(assert (=> d!154817 (=> res!971607 e!811734)))

(assert (=> d!154817 (= res!971607 (bvsge #b00000000000000000000000000000000 (size!47738 a!2862)))))

(assert (=> d!154817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!811734)))

(declare-fun b!1439044 () Bool)

(declare-fun e!811735 () Bool)

(declare-fun call!67692 () Bool)

(assert (=> b!1439044 (= e!811735 call!67692)))

(declare-fun b!1439045 () Bool)

(declare-fun e!811736 () Bool)

(assert (=> b!1439045 (= e!811734 e!811736)))

(declare-fun c!133232 () Bool)

(assert (=> b!1439045 (= c!133232 (validKeyInArray!0 (select (arr!47187 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1439046 () Bool)

(assert (=> b!1439046 (= e!811736 e!811735)))

(declare-fun lt!632690 () (_ BitVec 64))

(assert (=> b!1439046 (= lt!632690 (select (arr!47187 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48518 0))(
  ( (Unit!48519) )
))
(declare-fun lt!632688 () Unit!48518)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97804 (_ BitVec 64) (_ BitVec 32)) Unit!48518)

(assert (=> b!1439046 (= lt!632688 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632690 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1439046 (arrayContainsKey!0 a!2862 lt!632690 #b00000000000000000000000000000000)))

(declare-fun lt!632689 () Unit!48518)

(assert (=> b!1439046 (= lt!632689 lt!632688)))

(declare-fun res!971606 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97804 (_ BitVec 32)) SeekEntryResult!11462)

(assert (=> b!1439046 (= res!971606 (= (seekEntryOrOpen!0 (select (arr!47187 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11462 #b00000000000000000000000000000000)))))

(assert (=> b!1439046 (=> (not res!971606) (not e!811735))))

(declare-fun bm!67689 () Bool)

(assert (=> bm!67689 (= call!67692 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1439047 () Bool)

(assert (=> b!1439047 (= e!811736 call!67692)))

(assert (= (and d!154817 (not res!971607)) b!1439045))

(assert (= (and b!1439045 c!133232) b!1439046))

(assert (= (and b!1439045 (not c!133232)) b!1439047))

(assert (= (and b!1439046 res!971606) b!1439044))

(assert (= (or b!1439044 b!1439047) bm!67689))

(declare-fun m!1328171 () Bool)

(assert (=> b!1439045 m!1328171))

(assert (=> b!1439045 m!1328171))

(declare-fun m!1328173 () Bool)

(assert (=> b!1439045 m!1328173))

(assert (=> b!1439046 m!1328171))

(declare-fun m!1328175 () Bool)

(assert (=> b!1439046 m!1328175))

(declare-fun m!1328177 () Bool)

(assert (=> b!1439046 m!1328177))

(assert (=> b!1439046 m!1328171))

(declare-fun m!1328179 () Bool)

(assert (=> b!1439046 m!1328179))

(declare-fun m!1328181 () Bool)

(assert (=> bm!67689 m!1328181))

(assert (=> b!1438864 d!154817))

(declare-fun b!1439048 () Bool)

(declare-fun e!811738 () SeekEntryResult!11462)

(assert (=> b!1439048 (= e!811738 (Intermediate!11462 true (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1439049 () Bool)

(declare-fun lt!632692 () SeekEntryResult!11462)

(assert (=> b!1439049 (and (bvsge (index!48241 lt!632692) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632692) (size!47738 a!2862)))))

(declare-fun e!811740 () Bool)

(assert (=> b!1439049 (= e!811740 (= (select (arr!47187 a!2862) (index!48241 lt!632692)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154827 () Bool)

(declare-fun e!811739 () Bool)

(assert (=> d!154827 e!811739))

(declare-fun c!133233 () Bool)

(assert (=> d!154827 (= c!133233 (and (is-Intermediate!11462 lt!632692) (undefined!12274 lt!632692)))))

(assert (=> d!154827 (= lt!632692 e!811738)))

(declare-fun c!133235 () Bool)

(assert (=> d!154827 (= c!133235 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632691 () (_ BitVec 64))

(assert (=> d!154827 (= lt!632691 (select (arr!47187 a!2862) (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687)))))

(assert (=> d!154827 (validMask!0 mask!2687)))

(assert (=> d!154827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687) (select (arr!47187 a!2862) j!93) a!2862 mask!2687) lt!632692)))

(declare-fun b!1439050 () Bool)

(assert (=> b!1439050 (and (bvsge (index!48241 lt!632692) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632692) (size!47738 a!2862)))))

(declare-fun res!971608 () Bool)

(assert (=> b!1439050 (= res!971608 (= (select (arr!47187 a!2862) (index!48241 lt!632692)) (select (arr!47187 a!2862) j!93)))))

(assert (=> b!1439050 (=> res!971608 e!811740)))

(declare-fun e!811741 () Bool)

(assert (=> b!1439050 (= e!811741 e!811740)))

(declare-fun e!811737 () SeekEntryResult!11462)

(declare-fun b!1439051 () Bool)

(assert (=> b!1439051 (= e!811737 (Intermediate!11462 false (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1439052 () Bool)

(assert (=> b!1439052 (= e!811739 (bvsge (x!129972 lt!632692) #b01111111111111111111111111111110))))

(declare-fun b!1439053 () Bool)

(assert (=> b!1439053 (= e!811737 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47187 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1439054 () Bool)

(assert (=> b!1439054 (= e!811739 e!811741)))

(declare-fun res!971609 () Bool)

(assert (=> b!1439054 (= res!971609 (and (is-Intermediate!11462 lt!632692) (not (undefined!12274 lt!632692)) (bvslt (x!129972 lt!632692) #b01111111111111111111111111111110) (bvsge (x!129972 lt!632692) #b00000000000000000000000000000000) (bvsge (x!129972 lt!632692) #b00000000000000000000000000000000)))))

(assert (=> b!1439054 (=> (not res!971609) (not e!811741))))

(declare-fun b!1439055 () Bool)

(assert (=> b!1439055 (= e!811738 e!811737)))

(declare-fun c!133234 () Bool)

(assert (=> b!1439055 (= c!133234 (or (= lt!632691 (select (arr!47187 a!2862) j!93)) (= (bvadd lt!632691 lt!632691) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439056 () Bool)

(assert (=> b!1439056 (and (bvsge (index!48241 lt!632692) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632692) (size!47738 a!2862)))))

(declare-fun res!971610 () Bool)

(assert (=> b!1439056 (= res!971610 (= (select (arr!47187 a!2862) (index!48241 lt!632692)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1439056 (=> res!971610 e!811740)))

(assert (= (and d!154827 c!133235) b!1439048))

(assert (= (and d!154827 (not c!133235)) b!1439055))

(assert (= (and b!1439055 c!133234) b!1439051))

(assert (= (and b!1439055 (not c!133234)) b!1439053))

(assert (= (and d!154827 c!133233) b!1439052))

(assert (= (and d!154827 (not c!133233)) b!1439054))

(assert (= (and b!1439054 res!971609) b!1439050))

(assert (= (and b!1439050 (not res!971608)) b!1439056))

(assert (= (and b!1439056 (not res!971610)) b!1439049))

(assert (=> b!1439053 m!1328067))

(declare-fun m!1328183 () Bool)

(assert (=> b!1439053 m!1328183))

(assert (=> b!1439053 m!1328183))

(assert (=> b!1439053 m!1328059))

(declare-fun m!1328185 () Bool)

(assert (=> b!1439053 m!1328185))

(declare-fun m!1328187 () Bool)

(assert (=> b!1439056 m!1328187))

(assert (=> b!1439049 m!1328187))

(assert (=> b!1439050 m!1328187))

(assert (=> d!154827 m!1328067))

(declare-fun m!1328189 () Bool)

(assert (=> d!154827 m!1328189))

(assert (=> d!154827 m!1328063))

(assert (=> b!1438869 d!154827))

(declare-fun d!154829 () Bool)

(declare-fun lt!632694 () (_ BitVec 32))

(declare-fun lt!632693 () (_ BitVec 32))

(assert (=> d!154829 (= lt!632694 (bvmul (bvxor lt!632693 (bvlshr lt!632693 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154829 (= lt!632693 ((_ extract 31 0) (bvand (bvxor (select (arr!47187 a!2862) j!93) (bvlshr (select (arr!47187 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154829 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!971585 (let ((h!35213 ((_ extract 31 0) (bvand (bvxor (select (arr!47187 a!2862) j!93) (bvlshr (select (arr!47187 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129977 (bvmul (bvxor h!35213 (bvlshr h!35213 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129977 (bvlshr x!129977 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!971585 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!971585 #b00000000000000000000000000000000))))))

(assert (=> d!154829 (= (toIndex!0 (select (arr!47187 a!2862) j!93) mask!2687) (bvand (bvxor lt!632694 (bvlshr lt!632694 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1438869 d!154829))

(declare-fun b!1439057 () Bool)

(declare-fun e!811743 () SeekEntryResult!11462)

(assert (=> b!1439057 (= e!811743 (Intermediate!11462 true index!646 x!665))))

(declare-fun b!1439058 () Bool)

(declare-fun lt!632696 () SeekEntryResult!11462)

(assert (=> b!1439058 (and (bvsge (index!48241 lt!632696) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632696) (size!47738 a!2862)))))

(declare-fun e!811745 () Bool)

(assert (=> b!1439058 (= e!811745 (= (select (arr!47187 a!2862) (index!48241 lt!632696)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154831 () Bool)

(declare-fun e!811744 () Bool)

(assert (=> d!154831 e!811744))

(declare-fun c!133236 () Bool)

(assert (=> d!154831 (= c!133236 (and (is-Intermediate!11462 lt!632696) (undefined!12274 lt!632696)))))

(assert (=> d!154831 (= lt!632696 e!811743)))

(declare-fun c!133238 () Bool)

(assert (=> d!154831 (= c!133238 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632695 () (_ BitVec 64))

(assert (=> d!154831 (= lt!632695 (select (arr!47187 a!2862) index!646))))

(assert (=> d!154831 (validMask!0 mask!2687)))

(assert (=> d!154831 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47187 a!2862) j!93) a!2862 mask!2687) lt!632696)))

(declare-fun b!1439059 () Bool)

(assert (=> b!1439059 (and (bvsge (index!48241 lt!632696) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632696) (size!47738 a!2862)))))

(declare-fun res!971611 () Bool)

(assert (=> b!1439059 (= res!971611 (= (select (arr!47187 a!2862) (index!48241 lt!632696)) (select (arr!47187 a!2862) j!93)))))

(assert (=> b!1439059 (=> res!971611 e!811745)))

(declare-fun e!811746 () Bool)

(assert (=> b!1439059 (= e!811746 e!811745)))

(declare-fun b!1439060 () Bool)

(declare-fun e!811742 () SeekEntryResult!11462)

(assert (=> b!1439060 (= e!811742 (Intermediate!11462 false index!646 x!665))))

(declare-fun b!1439061 () Bool)

(assert (=> b!1439061 (= e!811744 (bvsge (x!129972 lt!632696) #b01111111111111111111111111111110))))

(declare-fun b!1439062 () Bool)

(assert (=> b!1439062 (= e!811742 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47187 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1439063 () Bool)

(assert (=> b!1439063 (= e!811744 e!811746)))

(declare-fun res!971612 () Bool)

(assert (=> b!1439063 (= res!971612 (and (is-Intermediate!11462 lt!632696) (not (undefined!12274 lt!632696)) (bvslt (x!129972 lt!632696) #b01111111111111111111111111111110) (bvsge (x!129972 lt!632696) #b00000000000000000000000000000000) (bvsge (x!129972 lt!632696) x!665)))))

(assert (=> b!1439063 (=> (not res!971612) (not e!811746))))

(declare-fun b!1439064 () Bool)

(assert (=> b!1439064 (= e!811743 e!811742)))

(declare-fun c!133237 () Bool)

(assert (=> b!1439064 (= c!133237 (or (= lt!632695 (select (arr!47187 a!2862) j!93)) (= (bvadd lt!632695 lt!632695) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439065 () Bool)

(assert (=> b!1439065 (and (bvsge (index!48241 lt!632696) #b00000000000000000000000000000000) (bvslt (index!48241 lt!632696) (size!47738 a!2862)))))

(declare-fun res!971613 () Bool)

(assert (=> b!1439065 (= res!971613 (= (select (arr!47187 a!2862) (index!48241 lt!632696)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1439065 (=> res!971613 e!811745)))

(assert (= (and d!154831 c!133238) b!1439057))

(assert (= (and d!154831 (not c!133238)) b!1439064))

(assert (= (and b!1439064 c!133237) b!1439060))

(assert (= (and b!1439064 (not c!133237)) b!1439062))

(assert (= (and d!154831 c!133236) b!1439061))

(assert (= (and d!154831 (not c!133236)) b!1439063))

(assert (= (and b!1439063 res!971612) b!1439059))

(assert (= (and b!1439059 (not res!971611)) b!1439065))

(assert (= (and b!1439065 (not res!971613)) b!1439058))

(declare-fun m!1328191 () Bool)

(assert (=> b!1439062 m!1328191))

(assert (=> b!1439062 m!1328191))

(assert (=> b!1439062 m!1328059))

(declare-fun m!1328193 () Bool)

(assert (=> b!1439062 m!1328193))

(declare-fun m!1328195 () Bool)

(assert (=> b!1439065 m!1328195))

(assert (=> b!1439058 m!1328195))

(assert (=> b!1439059 m!1328195))

(declare-fun m!1328197 () Bool)

(assert (=> d!154831 m!1328197))

(assert (=> d!154831 m!1328063))

(assert (=> b!1438873 d!154831))

(declare-fun b!1439085 () Bool)

(declare-fun e!811763 () Bool)

(declare-fun contains!9907 (List!33868 (_ BitVec 64)) Bool)

(assert (=> b!1439085 (= e!811763 (contains!9907 Nil!33865 (select (arr!47187 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1439086 () Bool)

(declare-fun e!811760 () Bool)

(declare-fun call!67695 () Bool)

(assert (=> b!1439086 (= e!811760 call!67695)))

(declare-fun b!1439087 () Bool)

(assert (=> b!1439087 (= e!811760 call!67695)))

(declare-fun bm!67692 () Bool)

(declare-fun c!133244 () Bool)

(assert (=> bm!67692 (= call!67695 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!133244 (Cons!33864 (select (arr!47187 a!2862) #b00000000000000000000000000000000) Nil!33865) Nil!33865)))))

(declare-fun b!1439088 () Bool)

(declare-fun e!811762 () Bool)

(assert (=> b!1439088 (= e!811762 e!811760)))

(assert (=> b!1439088 (= c!133244 (validKeyInArray!0 (select (arr!47187 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1439089 () Bool)

(declare-fun e!811761 () Bool)

(assert (=> b!1439089 (= e!811761 e!811762)))

(declare-fun res!971624 () Bool)

(assert (=> b!1439089 (=> (not res!971624) (not e!811762))))

(assert (=> b!1439089 (= res!971624 (not e!811763))))

(declare-fun res!971625 () Bool)

(assert (=> b!1439089 (=> (not res!971625) (not e!811763))))

(assert (=> b!1439089 (= res!971625 (validKeyInArray!0 (select (arr!47187 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154833 () Bool)

(declare-fun res!971623 () Bool)

(assert (=> d!154833 (=> res!971623 e!811761)))

(assert (=> d!154833 (= res!971623 (bvsge #b00000000000000000000000000000000 (size!47738 a!2862)))))

(assert (=> d!154833 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33865) e!811761)))

(assert (= (and d!154833 (not res!971623)) b!1439089))

(assert (= (and b!1439089 res!971625) b!1439085))

(assert (= (and b!1439089 res!971624) b!1439088))

(assert (= (and b!1439088 c!133244) b!1439086))

(assert (= (and b!1439088 (not c!133244)) b!1439087))

(assert (= (or b!1439086 b!1439087) bm!67692))

(assert (=> b!1439085 m!1328171))

(assert (=> b!1439085 m!1328171))

(declare-fun m!1328207 () Bool)

(assert (=> b!1439085 m!1328207))

(assert (=> bm!67692 m!1328171))

(declare-fun m!1328209 () Bool)

(assert (=> bm!67692 m!1328209))

(assert (=> b!1439088 m!1328171))

(assert (=> b!1439088 m!1328171))

(assert (=> b!1439088 m!1328173))

(assert (=> b!1439089 m!1328171))

(assert (=> b!1439089 m!1328171))

(assert (=> b!1439089 m!1328173))

(assert (=> b!1438867 d!154833))

(push 1)

