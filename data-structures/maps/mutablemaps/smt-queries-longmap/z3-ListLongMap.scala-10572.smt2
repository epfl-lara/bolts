; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124614 () Bool)

(assert start!124614)

(declare-fun b!1441901 () Bool)

(declare-fun res!974291 () Bool)

(declare-fun e!812779 () Bool)

(assert (=> b!1441901 (=> (not res!974291) (not e!812779))))

(declare-datatypes ((array!97979 0))(
  ( (array!97980 (arr!47273 (Array (_ BitVec 32) (_ BitVec 64))) (size!47824 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97979)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441901 (= res!974291 (validKeyInArray!0 (select (arr!47273 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633364 () (_ BitVec 64))

(declare-fun b!1441902 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!812780 () Bool)

(declare-datatypes ((SeekEntryResult!11548 0))(
  ( (MissingZero!11548 (index!48583 (_ BitVec 32))) (Found!11548 (index!48584 (_ BitVec 32))) (Intermediate!11548 (undefined!12360 Bool) (index!48585 (_ BitVec 32)) (x!130296 (_ BitVec 32))) (Undefined!11548) (MissingVacant!11548 (index!48586 (_ BitVec 32))) )
))
(declare-fun lt!633366 () SeekEntryResult!11548)

(declare-fun lt!633367 () array!97979)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97979 (_ BitVec 32)) SeekEntryResult!11548)

(assert (=> b!1441902 (= e!812780 (= lt!633366 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633364 lt!633367 mask!2687)))))

(declare-fun b!1441903 () Bool)

(declare-fun e!812775 () Bool)

(assert (=> b!1441903 (= e!812779 e!812775)))

(declare-fun res!974286 () Bool)

(assert (=> b!1441903 (=> (not res!974286) (not e!812775))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441903 (= res!974286 (= (select (store (arr!47273 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441903 (= lt!633367 (array!97980 (store (arr!47273 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47824 a!2862)))))

(declare-fun b!1441904 () Bool)

(declare-fun e!812778 () Bool)

(assert (=> b!1441904 (= e!812775 e!812778)))

(declare-fun res!974292 () Bool)

(assert (=> b!1441904 (=> (not res!974292) (not e!812778))))

(declare-fun lt!633363 () SeekEntryResult!11548)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441904 (= res!974292 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47273 a!2862) j!93) mask!2687) (select (arr!47273 a!2862) j!93) a!2862 mask!2687) lt!633363))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441904 (= lt!633363 (Intermediate!11548 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441905 () Bool)

(declare-fun res!974284 () Bool)

(assert (=> b!1441905 (=> (not res!974284) (not e!812779))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441905 (= res!974284 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47824 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47824 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47824 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441907 () Bool)

(declare-fun res!974283 () Bool)

(declare-fun e!812777 () Bool)

(assert (=> b!1441907 (=> (not res!974283) (not e!812777))))

(assert (=> b!1441907 (= res!974283 e!812780)))

(declare-fun c!133322 () Bool)

(assert (=> b!1441907 (= c!133322 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441908 () Bool)

(declare-fun res!974287 () Bool)

(assert (=> b!1441908 (=> (not res!974287) (not e!812779))))

(assert (=> b!1441908 (= res!974287 (validKeyInArray!0 (select (arr!47273 a!2862) j!93)))))

(declare-fun b!1441909 () Bool)

(declare-fun res!974289 () Bool)

(assert (=> b!1441909 (=> (not res!974289) (not e!812777))))

(assert (=> b!1441909 (= res!974289 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441910 () Bool)

(declare-fun res!974294 () Bool)

(assert (=> b!1441910 (=> (not res!974294) (not e!812779))))

(declare-datatypes ((List!33954 0))(
  ( (Nil!33951) (Cons!33950 (h!35300 (_ BitVec 64)) (t!48655 List!33954)) )
))
(declare-fun arrayNoDuplicates!0 (array!97979 (_ BitVec 32) List!33954) Bool)

(assert (=> b!1441910 (= res!974294 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33951))))

(declare-fun b!1441911 () Bool)

(assert (=> b!1441911 (= e!812778 e!812777)))

(declare-fun res!974290 () Bool)

(assert (=> b!1441911 (=> (not res!974290) (not e!812777))))

(assert (=> b!1441911 (= res!974290 (= lt!633366 (Intermediate!11548 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441911 (= lt!633366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633364 mask!2687) lt!633364 lt!633367 mask!2687))))

(assert (=> b!1441911 (= lt!633364 (select (store (arr!47273 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441912 () Bool)

(declare-fun res!974285 () Bool)

(assert (=> b!1441912 (=> (not res!974285) (not e!812779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97979 (_ BitVec 32)) Bool)

(assert (=> b!1441912 (= res!974285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441913 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97979 (_ BitVec 32)) SeekEntryResult!11548)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97979 (_ BitVec 32)) SeekEntryResult!11548)

(assert (=> b!1441913 (= e!812780 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633364 lt!633367 mask!2687) (seekEntryOrOpen!0 lt!633364 lt!633367 mask!2687)))))

(declare-fun b!1441914 () Bool)

(declare-fun res!974295 () Bool)

(assert (=> b!1441914 (=> (not res!974295) (not e!812778))))

(assert (=> b!1441914 (= res!974295 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47273 a!2862) j!93) a!2862 mask!2687) lt!633363))))

(declare-fun b!1441915 () Bool)

(declare-fun res!974293 () Bool)

(assert (=> b!1441915 (=> (not res!974293) (not e!812779))))

(assert (=> b!1441915 (= res!974293 (and (= (size!47824 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47824 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47824 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!974288 () Bool)

(assert (=> start!124614 (=> (not res!974288) (not e!812779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124614 (= res!974288 (validMask!0 mask!2687))))

(assert (=> start!124614 e!812779))

(assert (=> start!124614 true))

(declare-fun array_inv!36218 (array!97979) Bool)

(assert (=> start!124614 (array_inv!36218 a!2862)))

(declare-fun b!1441906 () Bool)

(assert (=> b!1441906 (= e!812777 (not true))))

(assert (=> b!1441906 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48540 0))(
  ( (Unit!48541) )
))
(declare-fun lt!633365 () Unit!48540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48540)

(assert (=> b!1441906 (= lt!633365 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124614 res!974288) b!1441915))

(assert (= (and b!1441915 res!974293) b!1441901))

(assert (= (and b!1441901 res!974291) b!1441908))

(assert (= (and b!1441908 res!974287) b!1441912))

(assert (= (and b!1441912 res!974285) b!1441910))

(assert (= (and b!1441910 res!974294) b!1441905))

(assert (= (and b!1441905 res!974284) b!1441903))

(assert (= (and b!1441903 res!974286) b!1441904))

(assert (= (and b!1441904 res!974292) b!1441914))

(assert (= (and b!1441914 res!974295) b!1441911))

(assert (= (and b!1441911 res!974290) b!1441907))

(assert (= (and b!1441907 c!133322) b!1441902))

(assert (= (and b!1441907 (not c!133322)) b!1441913))

(assert (= (and b!1441907 res!974283) b!1441909))

(assert (= (and b!1441909 res!974289) b!1441906))

(declare-fun m!1331145 () Bool)

(assert (=> b!1441904 m!1331145))

(assert (=> b!1441904 m!1331145))

(declare-fun m!1331147 () Bool)

(assert (=> b!1441904 m!1331147))

(assert (=> b!1441904 m!1331147))

(assert (=> b!1441904 m!1331145))

(declare-fun m!1331149 () Bool)

(assert (=> b!1441904 m!1331149))

(assert (=> b!1441914 m!1331145))

(assert (=> b!1441914 m!1331145))

(declare-fun m!1331151 () Bool)

(assert (=> b!1441914 m!1331151))

(declare-fun m!1331153 () Bool)

(assert (=> start!124614 m!1331153))

(declare-fun m!1331155 () Bool)

(assert (=> start!124614 m!1331155))

(declare-fun m!1331157 () Bool)

(assert (=> b!1441906 m!1331157))

(declare-fun m!1331159 () Bool)

(assert (=> b!1441906 m!1331159))

(declare-fun m!1331161 () Bool)

(assert (=> b!1441913 m!1331161))

(declare-fun m!1331163 () Bool)

(assert (=> b!1441913 m!1331163))

(assert (=> b!1441908 m!1331145))

(assert (=> b!1441908 m!1331145))

(declare-fun m!1331165 () Bool)

(assert (=> b!1441908 m!1331165))

(declare-fun m!1331167 () Bool)

(assert (=> b!1441912 m!1331167))

(declare-fun m!1331169 () Bool)

(assert (=> b!1441901 m!1331169))

(assert (=> b!1441901 m!1331169))

(declare-fun m!1331171 () Bool)

(assert (=> b!1441901 m!1331171))

(declare-fun m!1331173 () Bool)

(assert (=> b!1441903 m!1331173))

(declare-fun m!1331175 () Bool)

(assert (=> b!1441903 m!1331175))

(declare-fun m!1331177 () Bool)

(assert (=> b!1441910 m!1331177))

(declare-fun m!1331179 () Bool)

(assert (=> b!1441902 m!1331179))

(declare-fun m!1331181 () Bool)

(assert (=> b!1441911 m!1331181))

(assert (=> b!1441911 m!1331181))

(declare-fun m!1331183 () Bool)

(assert (=> b!1441911 m!1331183))

(assert (=> b!1441911 m!1331173))

(declare-fun m!1331185 () Bool)

(assert (=> b!1441911 m!1331185))

(check-sat (not b!1441912) (not start!124614) (not b!1441910) (not b!1441902) (not b!1441901) (not b!1441908) (not b!1441904) (not b!1441906) (not b!1441914) (not b!1441911) (not b!1441913))
(check-sat)
