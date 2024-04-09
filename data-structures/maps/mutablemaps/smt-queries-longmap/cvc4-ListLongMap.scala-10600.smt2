; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124784 () Bool)

(assert start!124784)

(declare-fun b!1446291 () Bool)

(declare-fun res!978177 () Bool)

(declare-fun e!814611 () Bool)

(assert (=> b!1446291 (=> (not res!978177) (not e!814611))))

(declare-datatypes ((array!98149 0))(
  ( (array!98150 (arr!47358 (Array (_ BitVec 32) (_ BitVec 64))) (size!47909 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98149)

(declare-datatypes ((List!34039 0))(
  ( (Nil!34036) (Cons!34035 (h!35385 (_ BitVec 64)) (t!48740 List!34039)) )
))
(declare-fun arrayNoDuplicates!0 (array!98149 (_ BitVec 32) List!34039) Bool)

(assert (=> b!1446291 (= res!978177 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34036))))

(declare-fun b!1446292 () Bool)

(declare-fun e!814615 () Bool)

(assert (=> b!1446292 (= e!814615 (not true))))

(declare-fun e!814616 () Bool)

(assert (=> b!1446292 e!814616))

(declare-fun res!978176 () Bool)

(assert (=> b!1446292 (=> (not res!978176) (not e!814616))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98149 (_ BitVec 32)) Bool)

(assert (=> b!1446292 (= res!978176 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48710 0))(
  ( (Unit!48711) )
))
(declare-fun lt!634710 () Unit!48710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48710)

(assert (=> b!1446292 (= lt!634710 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!978173 () Bool)

(assert (=> start!124784 (=> (not res!978173) (not e!814611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124784 (= res!978173 (validMask!0 mask!2687))))

(assert (=> start!124784 e!814611))

(assert (=> start!124784 true))

(declare-fun array_inv!36303 (array!98149) Bool)

(assert (=> start!124784 (array_inv!36303 a!2862)))

(declare-fun b!1446293 () Bool)

(declare-fun res!978175 () Bool)

(assert (=> b!1446293 (=> (not res!978175) (not e!814611))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446293 (= res!978175 (and (= (size!47909 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47909 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47909 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!814612 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1446294 () Bool)

(declare-fun lt!634711 () array!98149)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634712 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11633 0))(
  ( (MissingZero!11633 (index!48923 (_ BitVec 32))) (Found!11633 (index!48924 (_ BitVec 32))) (Intermediate!11633 (undefined!12445 Bool) (index!48925 (_ BitVec 32)) (x!130605 (_ BitVec 32))) (Undefined!11633) (MissingVacant!11633 (index!48926 (_ BitVec 32))) )
))
(declare-fun lt!634714 () SeekEntryResult!11633)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98149 (_ BitVec 32)) SeekEntryResult!11633)

(assert (=> b!1446294 (= e!814612 (= lt!634714 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634712 lt!634711 mask!2687)))))

(declare-fun b!1446295 () Bool)

(declare-fun res!978170 () Bool)

(assert (=> b!1446295 (=> (not res!978170) (not e!814611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446295 (= res!978170 (validKeyInArray!0 (select (arr!47358 a!2862) j!93)))))

(declare-fun b!1446296 () Bool)

(declare-fun res!978174 () Bool)

(declare-fun e!814613 () Bool)

(assert (=> b!1446296 (=> (not res!978174) (not e!814613))))

(declare-fun lt!634713 () SeekEntryResult!11633)

(assert (=> b!1446296 (= res!978174 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47358 a!2862) j!93) a!2862 mask!2687) lt!634713))))

(declare-fun b!1446297 () Bool)

(declare-fun res!978168 () Bool)

(assert (=> b!1446297 (=> (not res!978168) (not e!814611))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446297 (= res!978168 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47909 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47909 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47909 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446298 () Bool)

(declare-fun e!814614 () Bool)

(assert (=> b!1446298 (= e!814614 e!814613)))

(declare-fun res!978172 () Bool)

(assert (=> b!1446298 (=> (not res!978172) (not e!814613))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446298 (= res!978172 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47358 a!2862) j!93) mask!2687) (select (arr!47358 a!2862) j!93) a!2862 mask!2687) lt!634713))))

(assert (=> b!1446298 (= lt!634713 (Intermediate!11633 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446299 () Bool)

(declare-fun res!978167 () Bool)

(assert (=> b!1446299 (=> (not res!978167) (not e!814615))))

(assert (=> b!1446299 (= res!978167 e!814612)))

(declare-fun c!133577 () Bool)

(assert (=> b!1446299 (= c!133577 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446300 () Bool)

(assert (=> b!1446300 (= e!814611 e!814614)))

(declare-fun res!978169 () Bool)

(assert (=> b!1446300 (=> (not res!978169) (not e!814614))))

(assert (=> b!1446300 (= res!978169 (= (select (store (arr!47358 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446300 (= lt!634711 (array!98150 (store (arr!47358 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47909 a!2862)))))

(declare-fun b!1446301 () Bool)

(declare-fun res!978163 () Bool)

(assert (=> b!1446301 (=> (not res!978163) (not e!814611))))

(assert (=> b!1446301 (= res!978163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446302 () Bool)

(declare-fun res!978166 () Bool)

(assert (=> b!1446302 (=> (not res!978166) (not e!814611))))

(assert (=> b!1446302 (= res!978166 (validKeyInArray!0 (select (arr!47358 a!2862) i!1006)))))

(declare-fun b!1446303 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98149 (_ BitVec 32)) SeekEntryResult!11633)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98149 (_ BitVec 32)) SeekEntryResult!11633)

(assert (=> b!1446303 (= e!814612 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634712 lt!634711 mask!2687) (seekEntryOrOpen!0 lt!634712 lt!634711 mask!2687)))))

(declare-fun b!1446304 () Bool)

(assert (=> b!1446304 (= e!814613 e!814615)))

(declare-fun res!978165 () Bool)

(assert (=> b!1446304 (=> (not res!978165) (not e!814615))))

(assert (=> b!1446304 (= res!978165 (= lt!634714 (Intermediate!11633 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446304 (= lt!634714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634712 mask!2687) lt!634712 lt!634711 mask!2687))))

(assert (=> b!1446304 (= lt!634712 (select (store (arr!47358 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446305 () Bool)

(declare-fun res!978171 () Bool)

(assert (=> b!1446305 (=> (not res!978171) (not e!814615))))

(assert (=> b!1446305 (= res!978171 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446306 () Bool)

(declare-fun res!978164 () Bool)

(assert (=> b!1446306 (=> (not res!978164) (not e!814616))))

(assert (=> b!1446306 (= res!978164 (= (seekEntryOrOpen!0 (select (arr!47358 a!2862) j!93) a!2862 mask!2687) (Found!11633 j!93)))))

(declare-fun b!1446307 () Bool)

(assert (=> b!1446307 (= e!814616 (or (= (select (arr!47358 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47358 a!2862) intermediateBeforeIndex!19) (select (arr!47358 a!2862) j!93))))))

(assert (= (and start!124784 res!978173) b!1446293))

(assert (= (and b!1446293 res!978175) b!1446302))

(assert (= (and b!1446302 res!978166) b!1446295))

(assert (= (and b!1446295 res!978170) b!1446301))

(assert (= (and b!1446301 res!978163) b!1446291))

(assert (= (and b!1446291 res!978177) b!1446297))

(assert (= (and b!1446297 res!978168) b!1446300))

(assert (= (and b!1446300 res!978169) b!1446298))

(assert (= (and b!1446298 res!978172) b!1446296))

(assert (= (and b!1446296 res!978174) b!1446304))

(assert (= (and b!1446304 res!978165) b!1446299))

(assert (= (and b!1446299 c!133577) b!1446294))

(assert (= (and b!1446299 (not c!133577)) b!1446303))

(assert (= (and b!1446299 res!978167) b!1446305))

(assert (= (and b!1446305 res!978171) b!1446292))

(assert (= (and b!1446292 res!978176) b!1446306))

(assert (= (and b!1446306 res!978164) b!1446307))

(declare-fun m!1335227 () Bool)

(assert (=> b!1446291 m!1335227))

(declare-fun m!1335229 () Bool)

(assert (=> b!1446301 m!1335229))

(declare-fun m!1335231 () Bool)

(assert (=> b!1446295 m!1335231))

(assert (=> b!1446295 m!1335231))

(declare-fun m!1335233 () Bool)

(assert (=> b!1446295 m!1335233))

(declare-fun m!1335235 () Bool)

(assert (=> b!1446300 m!1335235))

(declare-fun m!1335237 () Bool)

(assert (=> b!1446300 m!1335237))

(declare-fun m!1335239 () Bool)

(assert (=> start!124784 m!1335239))

(declare-fun m!1335241 () Bool)

(assert (=> start!124784 m!1335241))

(assert (=> b!1446298 m!1335231))

(assert (=> b!1446298 m!1335231))

(declare-fun m!1335243 () Bool)

(assert (=> b!1446298 m!1335243))

(assert (=> b!1446298 m!1335243))

(assert (=> b!1446298 m!1335231))

(declare-fun m!1335245 () Bool)

(assert (=> b!1446298 m!1335245))

(declare-fun m!1335247 () Bool)

(assert (=> b!1446304 m!1335247))

(assert (=> b!1446304 m!1335247))

(declare-fun m!1335249 () Bool)

(assert (=> b!1446304 m!1335249))

(assert (=> b!1446304 m!1335235))

(declare-fun m!1335251 () Bool)

(assert (=> b!1446304 m!1335251))

(assert (=> b!1446306 m!1335231))

(assert (=> b!1446306 m!1335231))

(declare-fun m!1335253 () Bool)

(assert (=> b!1446306 m!1335253))

(declare-fun m!1335255 () Bool)

(assert (=> b!1446292 m!1335255))

(declare-fun m!1335257 () Bool)

(assert (=> b!1446292 m!1335257))

(declare-fun m!1335259 () Bool)

(assert (=> b!1446307 m!1335259))

(assert (=> b!1446307 m!1335231))

(declare-fun m!1335261 () Bool)

(assert (=> b!1446294 m!1335261))

(declare-fun m!1335263 () Bool)

(assert (=> b!1446302 m!1335263))

(assert (=> b!1446302 m!1335263))

(declare-fun m!1335265 () Bool)

(assert (=> b!1446302 m!1335265))

(declare-fun m!1335267 () Bool)

(assert (=> b!1446303 m!1335267))

(declare-fun m!1335269 () Bool)

(assert (=> b!1446303 m!1335269))

(assert (=> b!1446296 m!1335231))

(assert (=> b!1446296 m!1335231))

(declare-fun m!1335271 () Bool)

(assert (=> b!1446296 m!1335271))

(push 1)

(assert (not b!1446298))

(assert (not b!1446302))

(assert (not b!1446295))

(assert (not b!1446306))

(assert (not b!1446296))

(assert (not b!1446291))

(assert (not start!124784))

(assert (not b!1446303))

(assert (not b!1446292))

(assert (not b!1446304))

(assert (not b!1446301))

(assert (not b!1446294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

