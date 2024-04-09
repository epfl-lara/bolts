; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124612 () Bool)

(assert start!124612)

(declare-fun b!1441856 () Bool)

(declare-fun res!974255 () Bool)

(declare-fun e!812760 () Bool)

(assert (=> b!1441856 (=> (not res!974255) (not e!812760))))

(declare-datatypes ((array!97977 0))(
  ( (array!97978 (arr!47272 (Array (_ BitVec 32) (_ BitVec 64))) (size!47823 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97977)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97977 (_ BitVec 32)) Bool)

(assert (=> b!1441856 (= res!974255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633350 () array!97977)

(declare-fun e!812757 () Bool)

(declare-fun b!1441857 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11547 0))(
  ( (MissingZero!11547 (index!48579 (_ BitVec 32))) (Found!11547 (index!48580 (_ BitVec 32))) (Intermediate!11547 (undefined!12359 Bool) (index!48581 (_ BitVec 32)) (x!130295 (_ BitVec 32))) (Undefined!11547) (MissingVacant!11547 (index!48582 (_ BitVec 32))) )
))
(declare-fun lt!633352 () SeekEntryResult!11547)

(declare-fun lt!633351 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97977 (_ BitVec 32)) SeekEntryResult!11547)

(assert (=> b!1441857 (= e!812757 (= lt!633352 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633351 lt!633350 mask!2687)))))

(declare-fun b!1441858 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97977 (_ BitVec 32)) SeekEntryResult!11547)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97977 (_ BitVec 32)) SeekEntryResult!11547)

(assert (=> b!1441858 (= e!812757 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633351 lt!633350 mask!2687) (seekEntryOrOpen!0 lt!633351 lt!633350 mask!2687)))))

(declare-fun b!1441859 () Bool)

(declare-fun e!812762 () Bool)

(declare-fun e!812758 () Bool)

(assert (=> b!1441859 (= e!812762 e!812758)))

(declare-fun res!974254 () Bool)

(assert (=> b!1441859 (=> (not res!974254) (not e!812758))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441859 (= res!974254 (= lt!633352 (Intermediate!11547 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441859 (= lt!633352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633351 mask!2687) lt!633351 lt!633350 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1441859 (= lt!633351 (select (store (arr!47272 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441860 () Bool)

(declare-fun e!812761 () Bool)

(assert (=> b!1441860 (= e!812761 e!812762)))

(declare-fun res!974249 () Bool)

(assert (=> b!1441860 (=> (not res!974249) (not e!812762))))

(declare-fun lt!633349 () SeekEntryResult!11547)

(assert (=> b!1441860 (= res!974249 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47272 a!2862) j!93) mask!2687) (select (arr!47272 a!2862) j!93) a!2862 mask!2687) lt!633349))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441860 (= lt!633349 (Intermediate!11547 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441861 () Bool)

(declare-fun res!974252 () Bool)

(assert (=> b!1441861 (=> (not res!974252) (not e!812760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441861 (= res!974252 (validKeyInArray!0 (select (arr!47272 a!2862) j!93)))))

(declare-fun b!1441862 () Bool)

(declare-fun res!974246 () Bool)

(assert (=> b!1441862 (=> (not res!974246) (not e!812758))))

(assert (=> b!1441862 (= res!974246 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441863 () Bool)

(declare-fun res!974253 () Bool)

(assert (=> b!1441863 (=> (not res!974253) (not e!812758))))

(assert (=> b!1441863 (= res!974253 e!812757)))

(declare-fun c!133319 () Bool)

(assert (=> b!1441863 (= c!133319 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441864 () Bool)

(declare-fun res!974247 () Bool)

(assert (=> b!1441864 (=> (not res!974247) (not e!812760))))

(declare-datatypes ((List!33953 0))(
  ( (Nil!33950) (Cons!33949 (h!35299 (_ BitVec 64)) (t!48654 List!33953)) )
))
(declare-fun arrayNoDuplicates!0 (array!97977 (_ BitVec 32) List!33953) Bool)

(assert (=> b!1441864 (= res!974247 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33950))))

(declare-fun b!1441865 () Bool)

(assert (=> b!1441865 (= e!812760 e!812761)))

(declare-fun res!974250 () Bool)

(assert (=> b!1441865 (=> (not res!974250) (not e!812761))))

(assert (=> b!1441865 (= res!974250 (= (select (store (arr!47272 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441865 (= lt!633350 (array!97978 (store (arr!47272 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47823 a!2862)))))

(declare-fun b!1441866 () Bool)

(declare-fun res!974248 () Bool)

(assert (=> b!1441866 (=> (not res!974248) (not e!812760))))

(assert (=> b!1441866 (= res!974248 (and (= (size!47823 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47823 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47823 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441867 () Bool)

(declare-fun res!974256 () Bool)

(assert (=> b!1441867 (=> (not res!974256) (not e!812760))))

(assert (=> b!1441867 (= res!974256 (validKeyInArray!0 (select (arr!47272 a!2862) i!1006)))))

(declare-fun b!1441868 () Bool)

(declare-fun res!974251 () Bool)

(assert (=> b!1441868 (=> (not res!974251) (not e!812760))))

(assert (=> b!1441868 (= res!974251 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47823 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47823 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47823 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441869 () Bool)

(declare-fun res!974245 () Bool)

(assert (=> b!1441869 (=> (not res!974245) (not e!812762))))

(assert (=> b!1441869 (= res!974245 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47272 a!2862) j!93) a!2862 mask!2687) lt!633349))))

(declare-fun res!974244 () Bool)

(assert (=> start!124612 (=> (not res!974244) (not e!812760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124612 (= res!974244 (validMask!0 mask!2687))))

(assert (=> start!124612 e!812760))

(assert (=> start!124612 true))

(declare-fun array_inv!36217 (array!97977) Bool)

(assert (=> start!124612 (array_inv!36217 a!2862)))

(declare-fun b!1441870 () Bool)

(assert (=> b!1441870 (= e!812758 (not true))))

(assert (=> b!1441870 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48538 0))(
  ( (Unit!48539) )
))
(declare-fun lt!633348 () Unit!48538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97977 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48538)

(assert (=> b!1441870 (= lt!633348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124612 res!974244) b!1441866))

(assert (= (and b!1441866 res!974248) b!1441867))

(assert (= (and b!1441867 res!974256) b!1441861))

(assert (= (and b!1441861 res!974252) b!1441856))

(assert (= (and b!1441856 res!974255) b!1441864))

(assert (= (and b!1441864 res!974247) b!1441868))

(assert (= (and b!1441868 res!974251) b!1441865))

(assert (= (and b!1441865 res!974250) b!1441860))

(assert (= (and b!1441860 res!974249) b!1441869))

(assert (= (and b!1441869 res!974245) b!1441859))

(assert (= (and b!1441859 res!974254) b!1441863))

(assert (= (and b!1441863 c!133319) b!1441857))

(assert (= (and b!1441863 (not c!133319)) b!1441858))

(assert (= (and b!1441863 res!974253) b!1441862))

(assert (= (and b!1441862 res!974246) b!1441870))

(declare-fun m!1331103 () Bool)

(assert (=> b!1441857 m!1331103))

(declare-fun m!1331105 () Bool)

(assert (=> b!1441859 m!1331105))

(assert (=> b!1441859 m!1331105))

(declare-fun m!1331107 () Bool)

(assert (=> b!1441859 m!1331107))

(declare-fun m!1331109 () Bool)

(assert (=> b!1441859 m!1331109))

(declare-fun m!1331111 () Bool)

(assert (=> b!1441859 m!1331111))

(declare-fun m!1331113 () Bool)

(assert (=> b!1441869 m!1331113))

(assert (=> b!1441869 m!1331113))

(declare-fun m!1331115 () Bool)

(assert (=> b!1441869 m!1331115))

(declare-fun m!1331117 () Bool)

(assert (=> b!1441864 m!1331117))

(declare-fun m!1331119 () Bool)

(assert (=> b!1441856 m!1331119))

(declare-fun m!1331121 () Bool)

(assert (=> b!1441867 m!1331121))

(assert (=> b!1441867 m!1331121))

(declare-fun m!1331123 () Bool)

(assert (=> b!1441867 m!1331123))

(assert (=> b!1441865 m!1331109))

(declare-fun m!1331125 () Bool)

(assert (=> b!1441865 m!1331125))

(assert (=> b!1441861 m!1331113))

(assert (=> b!1441861 m!1331113))

(declare-fun m!1331127 () Bool)

(assert (=> b!1441861 m!1331127))

(assert (=> b!1441860 m!1331113))

(assert (=> b!1441860 m!1331113))

(declare-fun m!1331129 () Bool)

(assert (=> b!1441860 m!1331129))

(assert (=> b!1441860 m!1331129))

(assert (=> b!1441860 m!1331113))

(declare-fun m!1331131 () Bool)

(assert (=> b!1441860 m!1331131))

(declare-fun m!1331133 () Bool)

(assert (=> b!1441870 m!1331133))

(declare-fun m!1331135 () Bool)

(assert (=> b!1441870 m!1331135))

(declare-fun m!1331137 () Bool)

(assert (=> b!1441858 m!1331137))

(declare-fun m!1331139 () Bool)

(assert (=> b!1441858 m!1331139))

(declare-fun m!1331141 () Bool)

(assert (=> start!124612 m!1331141))

(declare-fun m!1331143 () Bool)

(assert (=> start!124612 m!1331143))

(push 1)

