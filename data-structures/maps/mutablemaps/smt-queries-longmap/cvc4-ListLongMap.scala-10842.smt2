; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126944 () Bool)

(assert start!126944)

(declare-fun b!1491080 () Bool)

(declare-fun res!1014389 () Bool)

(declare-fun e!835492 () Bool)

(assert (=> b!1491080 (=> (not res!1014389) (not e!835492))))

(declare-datatypes ((array!99634 0))(
  ( (array!99635 (arr!48084 (Array (_ BitVec 32) (_ BitVec 64))) (size!48635 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99634)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491080 (= res!1014389 (validKeyInArray!0 (select (arr!48084 a!2862) i!1006)))))

(declare-fun b!1491081 () Bool)

(declare-fun e!835486 () Bool)

(declare-fun e!835489 () Bool)

(assert (=> b!1491081 (= e!835486 e!835489)))

(declare-fun res!1014388 () Bool)

(assert (=> b!1491081 (=> (not res!1014388) (not e!835489))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12347 0))(
  ( (MissingZero!12347 (index!51779 (_ BitVec 32))) (Found!12347 (index!51780 (_ BitVec 32))) (Intermediate!12347 (undefined!13159 Bool) (index!51781 (_ BitVec 32)) (x!133366 (_ BitVec 32))) (Undefined!12347) (MissingVacant!12347 (index!51782 (_ BitVec 32))) )
))
(declare-fun lt!650128 () SeekEntryResult!12347)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99634 (_ BitVec 32)) SeekEntryResult!12347)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491081 (= res!1014388 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48084 a!2862) j!93) mask!2687) (select (arr!48084 a!2862) j!93) a!2862 mask!2687) lt!650128))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491081 (= lt!650128 (Intermediate!12347 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491082 () Bool)

(declare-fun e!835487 () Bool)

(assert (=> b!1491082 (= e!835489 e!835487)))

(declare-fun res!1014395 () Bool)

(assert (=> b!1491082 (=> (not res!1014395) (not e!835487))))

(declare-fun lt!650125 () SeekEntryResult!12347)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491082 (= res!1014395 (= lt!650125 (Intermediate!12347 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650126 () (_ BitVec 64))

(declare-fun lt!650123 () array!99634)

(assert (=> b!1491082 (= lt!650125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650126 mask!2687) lt!650126 lt!650123 mask!2687))))

(assert (=> b!1491082 (= lt!650126 (select (store (arr!48084 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491083 () Bool)

(declare-fun res!1014387 () Bool)

(assert (=> b!1491083 (=> (not res!1014387) (not e!835487))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1491083 (= res!1014387 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491084 () Bool)

(declare-fun res!1014402 () Bool)

(assert (=> b!1491084 (=> (not res!1014402) (not e!835492))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1491084 (= res!1014402 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48635 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48635 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48635 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!835493 () Bool)

(declare-fun b!1491085 () Bool)

(assert (=> b!1491085 (= e!835493 (or (= (select (arr!48084 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48084 a!2862) intermediateBeforeIndex!19) (select (arr!48084 a!2862) j!93))))))

(declare-fun b!1491086 () Bool)

(declare-fun res!1014397 () Bool)

(assert (=> b!1491086 (=> (not res!1014397) (not e!835492))))

(assert (=> b!1491086 (= res!1014397 (and (= (size!48635 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48635 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48635 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!835488 () Bool)

(declare-fun b!1491087 () Bool)

(assert (=> b!1491087 (= e!835488 (= lt!650125 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650126 lt!650123 mask!2687)))))

(declare-fun b!1491088 () Bool)

(declare-fun res!1014399 () Bool)

(assert (=> b!1491088 (=> (not res!1014399) (not e!835492))))

(assert (=> b!1491088 (= res!1014399 (validKeyInArray!0 (select (arr!48084 a!2862) j!93)))))

(declare-fun b!1491089 () Bool)

(declare-fun res!1014391 () Bool)

(assert (=> b!1491089 (=> (not res!1014391) (not e!835493))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99634 (_ BitVec 32)) SeekEntryResult!12347)

(assert (=> b!1491089 (= res!1014391 (= (seekEntryOrOpen!0 (select (arr!48084 a!2862) j!93) a!2862 mask!2687) (Found!12347 j!93)))))

(declare-fun b!1491090 () Bool)

(declare-fun res!1014390 () Bool)

(assert (=> b!1491090 (=> (not res!1014390) (not e!835492))))

(declare-datatypes ((List!34765 0))(
  ( (Nil!34762) (Cons!34761 (h!36144 (_ BitVec 64)) (t!49466 List!34765)) )
))
(declare-fun arrayNoDuplicates!0 (array!99634 (_ BitVec 32) List!34765) Bool)

(assert (=> b!1491090 (= res!1014390 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34762))))

(declare-fun b!1491091 () Bool)

(declare-fun e!835490 () Bool)

(assert (=> b!1491091 (= e!835487 (not e!835490))))

(declare-fun res!1014400 () Bool)

(assert (=> b!1491091 (=> res!1014400 e!835490)))

(assert (=> b!1491091 (= res!1014400 (or (and (= (select (arr!48084 a!2862) index!646) (select (store (arr!48084 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48084 a!2862) index!646) (select (arr!48084 a!2862) j!93))) (= (select (arr!48084 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491091 e!835493))

(declare-fun res!1014394 () Bool)

(assert (=> b!1491091 (=> (not res!1014394) (not e!835493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99634 (_ BitVec 32)) Bool)

(assert (=> b!1491091 (= res!1014394 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49982 0))(
  ( (Unit!49983) )
))
(declare-fun lt!650127 () Unit!49982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49982)

(assert (=> b!1491091 (= lt!650127 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491092 () Bool)

(declare-fun res!1014396 () Bool)

(assert (=> b!1491092 (=> (not res!1014396) (not e!835492))))

(assert (=> b!1491092 (= res!1014396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491093 () Bool)

(declare-fun res!1014401 () Bool)

(assert (=> b!1491093 (=> (not res!1014401) (not e!835487))))

(assert (=> b!1491093 (= res!1014401 e!835488)))

(declare-fun c!137876 () Bool)

(assert (=> b!1491093 (= c!137876 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491094 () Bool)

(declare-fun res!1014398 () Bool)

(assert (=> b!1491094 (=> (not res!1014398) (not e!835489))))

(assert (=> b!1491094 (= res!1014398 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48084 a!2862) j!93) a!2862 mask!2687) lt!650128))))

(declare-fun b!1491095 () Bool)

(assert (=> b!1491095 (= e!835490 true)))

(declare-fun lt!650124 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491095 (= lt!650124 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491096 () Bool)

(assert (=> b!1491096 (= e!835492 e!835486)))

(declare-fun res!1014393 () Bool)

(assert (=> b!1491096 (=> (not res!1014393) (not e!835486))))

(assert (=> b!1491096 (= res!1014393 (= (select (store (arr!48084 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491096 (= lt!650123 (array!99635 (store (arr!48084 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48635 a!2862)))))

(declare-fun b!1491097 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99634 (_ BitVec 32)) SeekEntryResult!12347)

(assert (=> b!1491097 (= e!835488 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650126 lt!650123 mask!2687) (seekEntryOrOpen!0 lt!650126 lt!650123 mask!2687)))))

(declare-fun res!1014392 () Bool)

(assert (=> start!126944 (=> (not res!1014392) (not e!835492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126944 (= res!1014392 (validMask!0 mask!2687))))

(assert (=> start!126944 e!835492))

(assert (=> start!126944 true))

(declare-fun array_inv!37029 (array!99634) Bool)

(assert (=> start!126944 (array_inv!37029 a!2862)))

(assert (= (and start!126944 res!1014392) b!1491086))

(assert (= (and b!1491086 res!1014397) b!1491080))

(assert (= (and b!1491080 res!1014389) b!1491088))

(assert (= (and b!1491088 res!1014399) b!1491092))

(assert (= (and b!1491092 res!1014396) b!1491090))

(assert (= (and b!1491090 res!1014390) b!1491084))

(assert (= (and b!1491084 res!1014402) b!1491096))

(assert (= (and b!1491096 res!1014393) b!1491081))

(assert (= (and b!1491081 res!1014388) b!1491094))

(assert (= (and b!1491094 res!1014398) b!1491082))

(assert (= (and b!1491082 res!1014395) b!1491093))

(assert (= (and b!1491093 c!137876) b!1491087))

(assert (= (and b!1491093 (not c!137876)) b!1491097))

(assert (= (and b!1491093 res!1014401) b!1491083))

(assert (= (and b!1491083 res!1014387) b!1491091))

(assert (= (and b!1491091 res!1014394) b!1491089))

(assert (= (and b!1491089 res!1014391) b!1491085))

(assert (= (and b!1491091 (not res!1014400)) b!1491095))

(declare-fun m!1375271 () Bool)

(assert (=> b!1491096 m!1375271))

(declare-fun m!1375273 () Bool)

(assert (=> b!1491096 m!1375273))

(declare-fun m!1375275 () Bool)

(assert (=> b!1491081 m!1375275))

(assert (=> b!1491081 m!1375275))

(declare-fun m!1375277 () Bool)

(assert (=> b!1491081 m!1375277))

(assert (=> b!1491081 m!1375277))

(assert (=> b!1491081 m!1375275))

(declare-fun m!1375279 () Bool)

(assert (=> b!1491081 m!1375279))

(declare-fun m!1375281 () Bool)

(assert (=> b!1491087 m!1375281))

(declare-fun m!1375283 () Bool)

(assert (=> b!1491080 m!1375283))

(assert (=> b!1491080 m!1375283))

(declare-fun m!1375285 () Bool)

(assert (=> b!1491080 m!1375285))

(assert (=> b!1491094 m!1375275))

(assert (=> b!1491094 m!1375275))

(declare-fun m!1375287 () Bool)

(assert (=> b!1491094 m!1375287))

(declare-fun m!1375289 () Bool)

(assert (=> b!1491091 m!1375289))

(assert (=> b!1491091 m!1375271))

(declare-fun m!1375291 () Bool)

(assert (=> b!1491091 m!1375291))

(declare-fun m!1375293 () Bool)

(assert (=> b!1491091 m!1375293))

(declare-fun m!1375295 () Bool)

(assert (=> b!1491091 m!1375295))

(assert (=> b!1491091 m!1375275))

(declare-fun m!1375297 () Bool)

(assert (=> b!1491085 m!1375297))

(assert (=> b!1491085 m!1375275))

(declare-fun m!1375299 () Bool)

(assert (=> start!126944 m!1375299))

(declare-fun m!1375301 () Bool)

(assert (=> start!126944 m!1375301))

(declare-fun m!1375303 () Bool)

(assert (=> b!1491095 m!1375303))

(assert (=> b!1491088 m!1375275))

(assert (=> b!1491088 m!1375275))

(declare-fun m!1375305 () Bool)

(assert (=> b!1491088 m!1375305))

(declare-fun m!1375307 () Bool)

(assert (=> b!1491082 m!1375307))

(assert (=> b!1491082 m!1375307))

(declare-fun m!1375309 () Bool)

(assert (=> b!1491082 m!1375309))

(assert (=> b!1491082 m!1375271))

(declare-fun m!1375311 () Bool)

(assert (=> b!1491082 m!1375311))

(declare-fun m!1375313 () Bool)

(assert (=> b!1491090 m!1375313))

(declare-fun m!1375315 () Bool)

(assert (=> b!1491097 m!1375315))

(declare-fun m!1375317 () Bool)

(assert (=> b!1491097 m!1375317))

(assert (=> b!1491089 m!1375275))

(assert (=> b!1491089 m!1375275))

(declare-fun m!1375319 () Bool)

(assert (=> b!1491089 m!1375319))

(declare-fun m!1375321 () Bool)

(assert (=> b!1491092 m!1375321))

(push 1)

(assert (not b!1491092))

(assert (not b!1491095))

(assert (not b!1491091))

(assert (not b!1491082))

(assert (not b!1491090))

(assert (not b!1491087))

(assert (not b!1491094))

(assert (not b!1491080))

(assert (not b!1491081))

(assert (not start!126944))

(assert (not b!1491097))

(assert (not b!1491089))

(assert (not b!1491088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

