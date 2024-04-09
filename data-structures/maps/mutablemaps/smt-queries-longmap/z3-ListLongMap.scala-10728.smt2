; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125550 () Bool)

(assert start!125550)

(declare-fun b!1468286 () Bool)

(declare-fun res!996934 () Bool)

(declare-fun e!824542 () Bool)

(assert (=> b!1468286 (=> (not res!996934) (not e!824542))))

(declare-datatypes ((array!98915 0))(
  ( (array!98916 (arr!47741 (Array (_ BitVec 32) (_ BitVec 64))) (size!48292 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98915)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98915 (_ BitVec 32)) Bool)

(assert (=> b!1468286 (= res!996934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468287 () Bool)

(declare-fun res!996939 () Bool)

(assert (=> b!1468287 (=> (not res!996939) (not e!824542))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1468287 (= res!996939 (and (= (size!48292 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48292 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48292 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468288 () Bool)

(declare-fun res!996938 () Bool)

(assert (=> b!1468288 (=> (not res!996938) (not e!824542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468288 (= res!996938 (validKeyInArray!0 (select (arr!47741 a!2862) i!1006)))))

(declare-fun res!996940 () Bool)

(assert (=> start!125550 (=> (not res!996940) (not e!824542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125550 (= res!996940 (validMask!0 mask!2687))))

(assert (=> start!125550 e!824542))

(assert (=> start!125550 true))

(declare-fun array_inv!36686 (array!98915) Bool)

(assert (=> start!125550 (array_inv!36686 a!2862)))

(declare-fun b!1468289 () Bool)

(declare-fun e!824543 () Bool)

(assert (=> b!1468289 (= e!824543 false)))

(declare-datatypes ((SeekEntryResult!12004 0))(
  ( (MissingZero!12004 (index!50407 (_ BitVec 32))) (Found!12004 (index!50408 (_ BitVec 32))) (Intermediate!12004 (undefined!12816 Bool) (index!50409 (_ BitVec 32)) (x!132000 (_ BitVec 32))) (Undefined!12004) (MissingVacant!12004 (index!50410 (_ BitVec 32))) )
))
(declare-fun lt!642214 () SeekEntryResult!12004)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98915 (_ BitVec 32)) SeekEntryResult!12004)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468289 (= lt!642214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47741 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47741 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98916 (store (arr!47741 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48292 a!2862)) mask!2687))))

(declare-fun b!1468290 () Bool)

(declare-fun res!996941 () Bool)

(assert (=> b!1468290 (=> (not res!996941) (not e!824542))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468290 (= res!996941 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48292 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48292 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48292 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47741 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468291 () Bool)

(declare-fun res!996942 () Bool)

(assert (=> b!1468291 (=> (not res!996942) (not e!824543))))

(declare-fun lt!642213 () SeekEntryResult!12004)

(assert (=> b!1468291 (= res!996942 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47741 a!2862) j!93) a!2862 mask!2687) lt!642213))))

(declare-fun b!1468292 () Bool)

(declare-fun res!996937 () Bool)

(assert (=> b!1468292 (=> (not res!996937) (not e!824542))))

(declare-datatypes ((List!34422 0))(
  ( (Nil!34419) (Cons!34418 (h!35768 (_ BitVec 64)) (t!49123 List!34422)) )
))
(declare-fun arrayNoDuplicates!0 (array!98915 (_ BitVec 32) List!34422) Bool)

(assert (=> b!1468292 (= res!996937 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34419))))

(declare-fun b!1468293 () Bool)

(assert (=> b!1468293 (= e!824542 e!824543)))

(declare-fun res!996935 () Bool)

(assert (=> b!1468293 (=> (not res!996935) (not e!824543))))

(assert (=> b!1468293 (= res!996935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47741 a!2862) j!93) mask!2687) (select (arr!47741 a!2862) j!93) a!2862 mask!2687) lt!642213))))

(assert (=> b!1468293 (= lt!642213 (Intermediate!12004 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468294 () Bool)

(declare-fun res!996936 () Bool)

(assert (=> b!1468294 (=> (not res!996936) (not e!824542))))

(assert (=> b!1468294 (= res!996936 (validKeyInArray!0 (select (arr!47741 a!2862) j!93)))))

(assert (= (and start!125550 res!996940) b!1468287))

(assert (= (and b!1468287 res!996939) b!1468288))

(assert (= (and b!1468288 res!996938) b!1468294))

(assert (= (and b!1468294 res!996936) b!1468286))

(assert (= (and b!1468286 res!996934) b!1468292))

(assert (= (and b!1468292 res!996937) b!1468290))

(assert (= (and b!1468290 res!996941) b!1468293))

(assert (= (and b!1468293 res!996935) b!1468291))

(assert (= (and b!1468291 res!996942) b!1468289))

(declare-fun m!1355393 () Bool)

(assert (=> b!1468291 m!1355393))

(assert (=> b!1468291 m!1355393))

(declare-fun m!1355395 () Bool)

(assert (=> b!1468291 m!1355395))

(declare-fun m!1355397 () Bool)

(assert (=> start!125550 m!1355397))

(declare-fun m!1355399 () Bool)

(assert (=> start!125550 m!1355399))

(declare-fun m!1355401 () Bool)

(assert (=> b!1468292 m!1355401))

(declare-fun m!1355403 () Bool)

(assert (=> b!1468290 m!1355403))

(declare-fun m!1355405 () Bool)

(assert (=> b!1468290 m!1355405))

(declare-fun m!1355407 () Bool)

(assert (=> b!1468286 m!1355407))

(assert (=> b!1468293 m!1355393))

(assert (=> b!1468293 m!1355393))

(declare-fun m!1355409 () Bool)

(assert (=> b!1468293 m!1355409))

(assert (=> b!1468293 m!1355409))

(assert (=> b!1468293 m!1355393))

(declare-fun m!1355411 () Bool)

(assert (=> b!1468293 m!1355411))

(declare-fun m!1355413 () Bool)

(assert (=> b!1468288 m!1355413))

(assert (=> b!1468288 m!1355413))

(declare-fun m!1355415 () Bool)

(assert (=> b!1468288 m!1355415))

(assert (=> b!1468294 m!1355393))

(assert (=> b!1468294 m!1355393))

(declare-fun m!1355417 () Bool)

(assert (=> b!1468294 m!1355417))

(assert (=> b!1468289 m!1355403))

(declare-fun m!1355419 () Bool)

(assert (=> b!1468289 m!1355419))

(assert (=> b!1468289 m!1355419))

(declare-fun m!1355421 () Bool)

(assert (=> b!1468289 m!1355421))

(assert (=> b!1468289 m!1355421))

(assert (=> b!1468289 m!1355419))

(declare-fun m!1355423 () Bool)

(assert (=> b!1468289 m!1355423))

(check-sat (not b!1468294) (not b!1468292) (not b!1468291) (not b!1468286) (not b!1468293) (not b!1468289) (not start!125550) (not b!1468288))
(check-sat)
