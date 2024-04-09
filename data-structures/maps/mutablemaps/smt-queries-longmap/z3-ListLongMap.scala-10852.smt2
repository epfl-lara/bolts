; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127134 () Bool)

(assert start!127134)

(declare-fun b!1493408 () Bool)

(declare-fun res!1016001 () Bool)

(declare-fun e!836636 () Bool)

(assert (=> b!1493408 (=> (not res!1016001) (not e!836636))))

(declare-datatypes ((array!99698 0))(
  ( (array!99699 (arr!48113 (Array (_ BitVec 32) (_ BitVec 64))) (size!48664 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99698)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493408 (= res!1016001 (validKeyInArray!0 (select (arr!48113 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!650981 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!650983 () array!99698)

(declare-datatypes ((SeekEntryResult!12376 0))(
  ( (MissingZero!12376 (index!51895 (_ BitVec 32))) (Found!12376 (index!51896 (_ BitVec 32))) (Intermediate!12376 (undefined!13188 Bool) (index!51897 (_ BitVec 32)) (x!133499 (_ BitVec 32))) (Undefined!12376) (MissingVacant!12376 (index!51898 (_ BitVec 32))) )
))
(declare-fun lt!650985 () SeekEntryResult!12376)

(declare-fun b!1493409 () Bool)

(declare-fun e!836635 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99698 (_ BitVec 32)) SeekEntryResult!12376)

(assert (=> b!1493409 (= e!836635 (= lt!650985 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650981 lt!650983 mask!2687)))))

(declare-fun b!1493410 () Bool)

(declare-fun res!1016004 () Bool)

(assert (=> b!1493410 (=> (not res!1016004) (not e!836636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99698 (_ BitVec 32)) Bool)

(assert (=> b!1493410 (= res!1016004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493411 () Bool)

(declare-fun e!836632 () Bool)

(declare-fun e!836639 () Bool)

(assert (=> b!1493411 (= e!836632 (not e!836639))))

(declare-fun res!1015995 () Bool)

(assert (=> b!1493411 (=> res!1015995 e!836639)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1493411 (= res!1015995 (or (and (= (select (arr!48113 a!2862) index!646) (select (store (arr!48113 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48113 a!2862) index!646) (select (arr!48113 a!2862) j!93))) (= (select (arr!48113 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836634 () Bool)

(assert (=> b!1493411 e!836634))

(declare-fun res!1016003 () Bool)

(assert (=> b!1493411 (=> (not res!1016003) (not e!836634))))

(assert (=> b!1493411 (= res!1016003 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50040 0))(
  ( (Unit!50041) )
))
(declare-fun lt!650984 () Unit!50040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99698 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50040)

(assert (=> b!1493411 (= lt!650984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493412 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99698 (_ BitVec 32)) SeekEntryResult!12376)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99698 (_ BitVec 32)) SeekEntryResult!12376)

(assert (=> b!1493412 (= e!836635 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650981 lt!650983 mask!2687) (seekEntryOrOpen!0 lt!650981 lt!650983 mask!2687)))))

(declare-fun res!1016006 () Bool)

(assert (=> start!127134 (=> (not res!1016006) (not e!836636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127134 (= res!1016006 (validMask!0 mask!2687))))

(assert (=> start!127134 e!836636))

(assert (=> start!127134 true))

(declare-fun array_inv!37058 (array!99698) Bool)

(assert (=> start!127134 (array_inv!37058 a!2862)))

(declare-fun b!1493413 () Bool)

(declare-fun res!1015999 () Bool)

(assert (=> b!1493413 (=> (not res!1015999) (not e!836632))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493413 (= res!1015999 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493414 () Bool)

(declare-fun e!836637 () Bool)

(declare-fun e!836633 () Bool)

(assert (=> b!1493414 (= e!836637 e!836633)))

(declare-fun res!1015997 () Bool)

(assert (=> b!1493414 (=> (not res!1015997) (not e!836633))))

(declare-fun lt!650986 () SeekEntryResult!12376)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493414 (= res!1015997 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48113 a!2862) j!93) mask!2687) (select (arr!48113 a!2862) j!93) a!2862 mask!2687) lt!650986))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1493414 (= lt!650986 (Intermediate!12376 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493415 () Bool)

(assert (=> b!1493415 (= e!836636 e!836637)))

(declare-fun res!1015998 () Bool)

(assert (=> b!1493415 (=> (not res!1015998) (not e!836637))))

(assert (=> b!1493415 (= res!1015998 (= (select (store (arr!48113 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493415 (= lt!650983 (array!99699 (store (arr!48113 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48664 a!2862)))))

(declare-fun b!1493416 () Bool)

(assert (=> b!1493416 (= e!836639 true)))

(declare-fun lt!650982 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493416 (= lt!650982 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493417 () Bool)

(declare-fun res!1016008 () Bool)

(assert (=> b!1493417 (=> (not res!1016008) (not e!836636))))

(declare-datatypes ((List!34794 0))(
  ( (Nil!34791) (Cons!34790 (h!36179 (_ BitVec 64)) (t!49495 List!34794)) )
))
(declare-fun arrayNoDuplicates!0 (array!99698 (_ BitVec 32) List!34794) Bool)

(assert (=> b!1493417 (= res!1016008 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34791))))

(declare-fun b!1493418 () Bool)

(assert (=> b!1493418 (= e!836634 (or (= (select (arr!48113 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48113 a!2862) intermediateBeforeIndex!19) (select (arr!48113 a!2862) j!93))))))

(declare-fun b!1493419 () Bool)

(declare-fun res!1016009 () Bool)

(assert (=> b!1493419 (=> (not res!1016009) (not e!836632))))

(assert (=> b!1493419 (= res!1016009 e!836635)))

(declare-fun c!138239 () Bool)

(assert (=> b!1493419 (= c!138239 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493420 () Bool)

(assert (=> b!1493420 (= e!836633 e!836632)))

(declare-fun res!1016000 () Bool)

(assert (=> b!1493420 (=> (not res!1016000) (not e!836632))))

(assert (=> b!1493420 (= res!1016000 (= lt!650985 (Intermediate!12376 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1493420 (= lt!650985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650981 mask!2687) lt!650981 lt!650983 mask!2687))))

(assert (=> b!1493420 (= lt!650981 (select (store (arr!48113 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493421 () Bool)

(declare-fun res!1016002 () Bool)

(assert (=> b!1493421 (=> (not res!1016002) (not e!836636))))

(assert (=> b!1493421 (= res!1016002 (validKeyInArray!0 (select (arr!48113 a!2862) j!93)))))

(declare-fun b!1493422 () Bool)

(declare-fun res!1016010 () Bool)

(assert (=> b!1493422 (=> (not res!1016010) (not e!836636))))

(assert (=> b!1493422 (= res!1016010 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48664 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48664 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48664 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493423 () Bool)

(declare-fun res!1016005 () Bool)

(assert (=> b!1493423 (=> (not res!1016005) (not e!836633))))

(assert (=> b!1493423 (= res!1016005 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48113 a!2862) j!93) a!2862 mask!2687) lt!650986))))

(declare-fun b!1493424 () Bool)

(declare-fun res!1015996 () Bool)

(assert (=> b!1493424 (=> (not res!1015996) (not e!836636))))

(assert (=> b!1493424 (= res!1015996 (and (= (size!48664 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48664 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48664 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493425 () Bool)

(declare-fun res!1016007 () Bool)

(assert (=> b!1493425 (=> (not res!1016007) (not e!836634))))

(assert (=> b!1493425 (= res!1016007 (= (seekEntryOrOpen!0 (select (arr!48113 a!2862) j!93) a!2862 mask!2687) (Found!12376 j!93)))))

(assert (= (and start!127134 res!1016006) b!1493424))

(assert (= (and b!1493424 res!1015996) b!1493408))

(assert (= (and b!1493408 res!1016001) b!1493421))

(assert (= (and b!1493421 res!1016002) b!1493410))

(assert (= (and b!1493410 res!1016004) b!1493417))

(assert (= (and b!1493417 res!1016008) b!1493422))

(assert (= (and b!1493422 res!1016010) b!1493415))

(assert (= (and b!1493415 res!1015998) b!1493414))

(assert (= (and b!1493414 res!1015997) b!1493423))

(assert (= (and b!1493423 res!1016005) b!1493420))

(assert (= (and b!1493420 res!1016000) b!1493419))

(assert (= (and b!1493419 c!138239) b!1493409))

(assert (= (and b!1493419 (not c!138239)) b!1493412))

(assert (= (and b!1493419 res!1016009) b!1493413))

(assert (= (and b!1493413 res!1015999) b!1493411))

(assert (= (and b!1493411 res!1016003) b!1493425))

(assert (= (and b!1493425 res!1016007) b!1493418))

(assert (= (and b!1493411 (not res!1015995)) b!1493416))

(declare-fun m!1377247 () Bool)

(assert (=> b!1493414 m!1377247))

(assert (=> b!1493414 m!1377247))

(declare-fun m!1377249 () Bool)

(assert (=> b!1493414 m!1377249))

(assert (=> b!1493414 m!1377249))

(assert (=> b!1493414 m!1377247))

(declare-fun m!1377251 () Bool)

(assert (=> b!1493414 m!1377251))

(assert (=> b!1493423 m!1377247))

(assert (=> b!1493423 m!1377247))

(declare-fun m!1377253 () Bool)

(assert (=> b!1493423 m!1377253))

(assert (=> b!1493425 m!1377247))

(assert (=> b!1493425 m!1377247))

(declare-fun m!1377255 () Bool)

(assert (=> b!1493425 m!1377255))

(declare-fun m!1377257 () Bool)

(assert (=> b!1493409 m!1377257))

(declare-fun m!1377259 () Bool)

(assert (=> b!1493417 m!1377259))

(assert (=> b!1493421 m!1377247))

(assert (=> b!1493421 m!1377247))

(declare-fun m!1377261 () Bool)

(assert (=> b!1493421 m!1377261))

(declare-fun m!1377263 () Bool)

(assert (=> b!1493408 m!1377263))

(assert (=> b!1493408 m!1377263))

(declare-fun m!1377265 () Bool)

(assert (=> b!1493408 m!1377265))

(declare-fun m!1377267 () Bool)

(assert (=> start!127134 m!1377267))

(declare-fun m!1377269 () Bool)

(assert (=> start!127134 m!1377269))

(declare-fun m!1377271 () Bool)

(assert (=> b!1493412 m!1377271))

(declare-fun m!1377273 () Bool)

(assert (=> b!1493412 m!1377273))

(declare-fun m!1377275 () Bool)

(assert (=> b!1493415 m!1377275))

(declare-fun m!1377277 () Bool)

(assert (=> b!1493415 m!1377277))

(declare-fun m!1377279 () Bool)

(assert (=> b!1493420 m!1377279))

(assert (=> b!1493420 m!1377279))

(declare-fun m!1377281 () Bool)

(assert (=> b!1493420 m!1377281))

(assert (=> b!1493420 m!1377275))

(declare-fun m!1377283 () Bool)

(assert (=> b!1493420 m!1377283))

(declare-fun m!1377285 () Bool)

(assert (=> b!1493418 m!1377285))

(assert (=> b!1493418 m!1377247))

(declare-fun m!1377287 () Bool)

(assert (=> b!1493411 m!1377287))

(assert (=> b!1493411 m!1377275))

(declare-fun m!1377289 () Bool)

(assert (=> b!1493411 m!1377289))

(declare-fun m!1377291 () Bool)

(assert (=> b!1493411 m!1377291))

(declare-fun m!1377293 () Bool)

(assert (=> b!1493411 m!1377293))

(assert (=> b!1493411 m!1377247))

(declare-fun m!1377295 () Bool)

(assert (=> b!1493416 m!1377295))

(declare-fun m!1377297 () Bool)

(assert (=> b!1493410 m!1377297))

(check-sat (not b!1493412) (not b!1493420) (not b!1493408) (not start!127134) (not b!1493416) (not b!1493423) (not b!1493410) (not b!1493409) (not b!1493421) (not b!1493411) (not b!1493417) (not b!1493425) (not b!1493414))
(check-sat)
