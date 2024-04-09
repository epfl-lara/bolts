; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124570 () Bool)

(assert start!124570)

(declare-fun b!1440979 () Bool)

(declare-fun res!973502 () Bool)

(declare-fun e!812379 () Bool)

(assert (=> b!1440979 (=> (not res!973502) (not e!812379))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97935 0))(
  ( (array!97936 (arr!47251 (Array (_ BitVec 32) (_ BitVec 64))) (size!47802 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97935)

(assert (=> b!1440979 (= res!973502 (and (= (size!47802 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47802 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47802 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440980 () Bool)

(declare-fun e!812383 () Bool)

(declare-fun e!812380 () Bool)

(assert (=> b!1440980 (= e!812383 e!812380)))

(declare-fun res!973500 () Bool)

(assert (=> b!1440980 (=> (not res!973500) (not e!812380))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11526 0))(
  ( (MissingZero!11526 (index!48495 (_ BitVec 32))) (Found!11526 (index!48496 (_ BitVec 32))) (Intermediate!11526 (undefined!12338 Bool) (index!48497 (_ BitVec 32)) (x!130218 (_ BitVec 32))) (Undefined!11526) (MissingVacant!11526 (index!48498 (_ BitVec 32))) )
))
(declare-fun lt!633036 () SeekEntryResult!11526)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440980 (= res!973500 (= lt!633036 (Intermediate!11526 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633035 () array!97935)

(declare-fun lt!633034 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97935 (_ BitVec 32)) SeekEntryResult!11526)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440980 (= lt!633036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633034 mask!2687) lt!633034 lt!633035 mask!2687))))

(assert (=> b!1440980 (= lt!633034 (select (store (arr!47251 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1440981 () Bool)

(declare-fun res!973494 () Bool)

(assert (=> b!1440981 (=> (not res!973494) (not e!812379))))

(declare-datatypes ((List!33932 0))(
  ( (Nil!33929) (Cons!33928 (h!35278 (_ BitVec 64)) (t!48633 List!33932)) )
))
(declare-fun arrayNoDuplicates!0 (array!97935 (_ BitVec 32) List!33932) Bool)

(assert (=> b!1440981 (= res!973494 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33929))))

(declare-fun b!1440982 () Bool)

(declare-fun res!973498 () Bool)

(assert (=> b!1440982 (=> (not res!973498) (not e!812383))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633037 () SeekEntryResult!11526)

(assert (=> b!1440982 (= res!973498 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47251 a!2862) j!93) a!2862 mask!2687) lt!633037))))

(declare-fun b!1440983 () Bool)

(declare-fun res!973496 () Bool)

(assert (=> b!1440983 (=> (not res!973496) (not e!812379))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440983 (= res!973496 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47802 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47802 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47802 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1440984 () Bool)

(assert (=> b!1440984 (= e!812380 false)))

(declare-fun lt!633033 () Bool)

(declare-fun e!812384 () Bool)

(assert (=> b!1440984 (= lt!633033 e!812384)))

(declare-fun c!133256 () Bool)

(assert (=> b!1440984 (= c!133256 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1440985 () Bool)

(declare-fun e!812382 () Bool)

(assert (=> b!1440985 (= e!812379 e!812382)))

(declare-fun res!973503 () Bool)

(assert (=> b!1440985 (=> (not res!973503) (not e!812382))))

(assert (=> b!1440985 (= res!973503 (= (select (store (arr!47251 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1440985 (= lt!633035 (array!97936 (store (arr!47251 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47802 a!2862)))))

(declare-fun b!1440986 () Bool)

(declare-fun res!973499 () Bool)

(assert (=> b!1440986 (=> (not res!973499) (not e!812379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440986 (= res!973499 (validKeyInArray!0 (select (arr!47251 a!2862) j!93)))))

(declare-fun res!973495 () Bool)

(assert (=> start!124570 (=> (not res!973495) (not e!812379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124570 (= res!973495 (validMask!0 mask!2687))))

(assert (=> start!124570 e!812379))

(assert (=> start!124570 true))

(declare-fun array_inv!36196 (array!97935) Bool)

(assert (=> start!124570 (array_inv!36196 a!2862)))

(declare-fun b!1440987 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97935 (_ BitVec 32)) SeekEntryResult!11526)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97935 (_ BitVec 32)) SeekEntryResult!11526)

(assert (=> b!1440987 (= e!812384 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633034 lt!633035 mask!2687) (seekEntryOrOpen!0 lt!633034 lt!633035 mask!2687))))))

(declare-fun b!1440988 () Bool)

(assert (=> b!1440988 (= e!812382 e!812383)))

(declare-fun res!973493 () Bool)

(assert (=> b!1440988 (=> (not res!973493) (not e!812383))))

(assert (=> b!1440988 (= res!973493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47251 a!2862) j!93) mask!2687) (select (arr!47251 a!2862) j!93) a!2862 mask!2687) lt!633037))))

(assert (=> b!1440988 (= lt!633037 (Intermediate!11526 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440989 () Bool)

(assert (=> b!1440989 (= e!812384 (not (= lt!633036 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633034 lt!633035 mask!2687))))))

(declare-fun b!1440990 () Bool)

(declare-fun res!973501 () Bool)

(assert (=> b!1440990 (=> (not res!973501) (not e!812379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97935 (_ BitVec 32)) Bool)

(assert (=> b!1440990 (= res!973501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440991 () Bool)

(declare-fun res!973497 () Bool)

(assert (=> b!1440991 (=> (not res!973497) (not e!812379))))

(assert (=> b!1440991 (= res!973497 (validKeyInArray!0 (select (arr!47251 a!2862) i!1006)))))

(assert (= (and start!124570 res!973495) b!1440979))

(assert (= (and b!1440979 res!973502) b!1440991))

(assert (= (and b!1440991 res!973497) b!1440986))

(assert (= (and b!1440986 res!973499) b!1440990))

(assert (= (and b!1440990 res!973501) b!1440981))

(assert (= (and b!1440981 res!973494) b!1440983))

(assert (= (and b!1440983 res!973496) b!1440985))

(assert (= (and b!1440985 res!973503) b!1440988))

(assert (= (and b!1440988 res!973493) b!1440982))

(assert (= (and b!1440982 res!973498) b!1440980))

(assert (= (and b!1440980 res!973500) b!1440984))

(assert (= (and b!1440984 c!133256) b!1440989))

(assert (= (and b!1440984 (not c!133256)) b!1440987))

(declare-fun m!1330269 () Bool)

(assert (=> b!1440991 m!1330269))

(assert (=> b!1440991 m!1330269))

(declare-fun m!1330271 () Bool)

(assert (=> b!1440991 m!1330271))

(declare-fun m!1330273 () Bool)

(assert (=> b!1440981 m!1330273))

(declare-fun m!1330275 () Bool)

(assert (=> b!1440982 m!1330275))

(assert (=> b!1440982 m!1330275))

(declare-fun m!1330277 () Bool)

(assert (=> b!1440982 m!1330277))

(declare-fun m!1330279 () Bool)

(assert (=> b!1440989 m!1330279))

(declare-fun m!1330281 () Bool)

(assert (=> b!1440990 m!1330281))

(declare-fun m!1330283 () Bool)

(assert (=> b!1440980 m!1330283))

(assert (=> b!1440980 m!1330283))

(declare-fun m!1330285 () Bool)

(assert (=> b!1440980 m!1330285))

(declare-fun m!1330287 () Bool)

(assert (=> b!1440980 m!1330287))

(declare-fun m!1330289 () Bool)

(assert (=> b!1440980 m!1330289))

(declare-fun m!1330291 () Bool)

(assert (=> start!124570 m!1330291))

(declare-fun m!1330293 () Bool)

(assert (=> start!124570 m!1330293))

(assert (=> b!1440988 m!1330275))

(assert (=> b!1440988 m!1330275))

(declare-fun m!1330295 () Bool)

(assert (=> b!1440988 m!1330295))

(assert (=> b!1440988 m!1330295))

(assert (=> b!1440988 m!1330275))

(declare-fun m!1330297 () Bool)

(assert (=> b!1440988 m!1330297))

(assert (=> b!1440986 m!1330275))

(assert (=> b!1440986 m!1330275))

(declare-fun m!1330299 () Bool)

(assert (=> b!1440986 m!1330299))

(declare-fun m!1330301 () Bool)

(assert (=> b!1440987 m!1330301))

(declare-fun m!1330303 () Bool)

(assert (=> b!1440987 m!1330303))

(assert (=> b!1440985 m!1330287))

(declare-fun m!1330305 () Bool)

(assert (=> b!1440985 m!1330305))

(push 1)

