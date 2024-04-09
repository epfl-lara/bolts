; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126592 () Bool)

(assert start!126592)

(declare-fun b!1485029 () Bool)

(declare-fun res!1009851 () Bool)

(declare-fun e!832587 () Bool)

(assert (=> b!1485029 (=> (not res!1009851) (not e!832587))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12270 0))(
  ( (MissingZero!12270 (index!51471 (_ BitVec 32))) (Found!12270 (index!51472 (_ BitVec 32))) (Intermediate!12270 (undefined!13082 Bool) (index!51473 (_ BitVec 32)) (x!133053 (_ BitVec 32))) (Undefined!12270) (MissingVacant!12270 (index!51474 (_ BitVec 32))) )
))
(declare-fun lt!647924 () SeekEntryResult!12270)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99471 0))(
  ( (array!99472 (arr!48007 (Array (_ BitVec 32) (_ BitVec 64))) (size!48558 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99471)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99471 (_ BitVec 32)) SeekEntryResult!12270)

(assert (=> b!1485029 (= res!1009851 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48007 a!2862) j!93) a!2862 mask!2687) lt!647924))))

(declare-fun b!1485030 () Bool)

(declare-fun res!1009859 () Bool)

(declare-fun e!832581 () Bool)

(assert (=> b!1485030 (=> (not res!1009859) (not e!832581))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485030 (= res!1009859 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48558 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48558 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48558 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485031 () Bool)

(declare-fun e!832588 () Bool)

(assert (=> b!1485031 (= e!832587 e!832588)))

(declare-fun res!1009866 () Bool)

(assert (=> b!1485031 (=> (not res!1009866) (not e!832588))))

(declare-fun lt!647926 () SeekEntryResult!12270)

(assert (=> b!1485031 (= res!1009866 (= lt!647926 (Intermediate!12270 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647929 () array!99471)

(declare-fun lt!647928 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485031 (= lt!647926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647928 mask!2687) lt!647928 lt!647929 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485031 (= lt!647928 (select (store (arr!48007 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485032 () Bool)

(declare-fun e!832589 () Bool)

(assert (=> b!1485032 (= e!832581 e!832589)))

(declare-fun res!1009862 () Bool)

(assert (=> b!1485032 (=> (not res!1009862) (not e!832589))))

(assert (=> b!1485032 (= res!1009862 (= (select (store (arr!48007 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485032 (= lt!647929 (array!99472 (store (arr!48007 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48558 a!2862)))))

(declare-fun b!1485033 () Bool)

(declare-fun e!832580 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99471 (_ BitVec 32)) SeekEntryResult!12270)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99471 (_ BitVec 32)) SeekEntryResult!12270)

(assert (=> b!1485033 (= e!832580 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647928 lt!647929 mask!2687) (seekEntryOrOpen!0 lt!647928 lt!647929 mask!2687)))))

(declare-fun b!1485034 () Bool)

(declare-fun e!832586 () Bool)

(assert (=> b!1485034 (= e!832586 (and (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110)))))

(declare-fun lt!647923 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485034 (= lt!647923 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485035 () Bool)

(declare-fun res!1009858 () Bool)

(assert (=> b!1485035 (=> (not res!1009858) (not e!832581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99471 (_ BitVec 32)) Bool)

(assert (=> b!1485035 (= res!1009858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1009864 () Bool)

(assert (=> start!126592 (=> (not res!1009864) (not e!832581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126592 (= res!1009864 (validMask!0 mask!2687))))

(assert (=> start!126592 e!832581))

(assert (=> start!126592 true))

(declare-fun array_inv!36952 (array!99471) Bool)

(assert (=> start!126592 (array_inv!36952 a!2862)))

(declare-fun b!1485036 () Bool)

(assert (=> b!1485036 (= e!832580 (= lt!647926 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647928 lt!647929 mask!2687)))))

(declare-fun b!1485037 () Bool)

(declare-fun e!832582 () Bool)

(assert (=> b!1485037 (= e!832582 (= (seekEntryOrOpen!0 lt!647928 lt!647929 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647928 lt!647929 mask!2687)))))

(declare-fun b!1485038 () Bool)

(declare-fun res!1009865 () Bool)

(declare-fun e!832583 () Bool)

(assert (=> b!1485038 (=> (not res!1009865) (not e!832583))))

(assert (=> b!1485038 (= res!1009865 (or (= (select (arr!48007 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48007 a!2862) intermediateBeforeIndex!19) (select (arr!48007 a!2862) j!93))))))

(declare-fun b!1485039 () Bool)

(declare-fun e!832584 () Bool)

(assert (=> b!1485039 (= e!832584 e!832582)))

(declare-fun res!1009869 () Bool)

(assert (=> b!1485039 (=> (not res!1009869) (not e!832582))))

(declare-fun lt!647927 () (_ BitVec 64))

(assert (=> b!1485039 (= res!1009869 (and (= index!646 intermediateAfterIndex!19) (= lt!647927 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485040 () Bool)

(assert (=> b!1485040 (= e!832588 (not e!832586))))

(declare-fun res!1009860 () Bool)

(assert (=> b!1485040 (=> res!1009860 e!832586)))

(assert (=> b!1485040 (= res!1009860 (or (and (= (select (arr!48007 a!2862) index!646) (select (store (arr!48007 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48007 a!2862) index!646) (select (arr!48007 a!2862) j!93))) (= (select (arr!48007 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485040 e!832583))

(declare-fun res!1009854 () Bool)

(assert (=> b!1485040 (=> (not res!1009854) (not e!832583))))

(assert (=> b!1485040 (= res!1009854 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49828 0))(
  ( (Unit!49829) )
))
(declare-fun lt!647925 () Unit!49828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49828)

(assert (=> b!1485040 (= lt!647925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485041 () Bool)

(declare-fun res!1009861 () Bool)

(assert (=> b!1485041 (=> (not res!1009861) (not e!832581))))

(assert (=> b!1485041 (= res!1009861 (and (= (size!48558 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48558 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48558 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485042 () Bool)

(assert (=> b!1485042 (= e!832583 e!832584)))

(declare-fun res!1009868 () Bool)

(assert (=> b!1485042 (=> res!1009868 e!832584)))

(assert (=> b!1485042 (= res!1009868 (or (and (= (select (arr!48007 a!2862) index!646) lt!647927) (= (select (arr!48007 a!2862) index!646) (select (arr!48007 a!2862) j!93))) (= (select (arr!48007 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485042 (= lt!647927 (select (store (arr!48007 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485043 () Bool)

(declare-fun res!1009856 () Bool)

(assert (=> b!1485043 (=> (not res!1009856) (not e!832581))))

(declare-datatypes ((List!34688 0))(
  ( (Nil!34685) (Cons!34684 (h!36058 (_ BitVec 64)) (t!49389 List!34688)) )
))
(declare-fun arrayNoDuplicates!0 (array!99471 (_ BitVec 32) List!34688) Bool)

(assert (=> b!1485043 (= res!1009856 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34685))))

(declare-fun b!1485044 () Bool)

(declare-fun res!1009863 () Bool)

(assert (=> b!1485044 (=> (not res!1009863) (not e!832581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485044 (= res!1009863 (validKeyInArray!0 (select (arr!48007 a!2862) i!1006)))))

(declare-fun b!1485045 () Bool)

(declare-fun res!1009855 () Bool)

(assert (=> b!1485045 (=> (not res!1009855) (not e!832588))))

(assert (=> b!1485045 (= res!1009855 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485046 () Bool)

(declare-fun res!1009867 () Bool)

(assert (=> b!1485046 (=> (not res!1009867) (not e!832581))))

(assert (=> b!1485046 (= res!1009867 (validKeyInArray!0 (select (arr!48007 a!2862) j!93)))))

(declare-fun b!1485047 () Bool)

(assert (=> b!1485047 (= e!832589 e!832587)))

(declare-fun res!1009857 () Bool)

(assert (=> b!1485047 (=> (not res!1009857) (not e!832587))))

(assert (=> b!1485047 (= res!1009857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48007 a!2862) j!93) mask!2687) (select (arr!48007 a!2862) j!93) a!2862 mask!2687) lt!647924))))

(assert (=> b!1485047 (= lt!647924 (Intermediate!12270 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485048 () Bool)

(declare-fun res!1009853 () Bool)

(assert (=> b!1485048 (=> (not res!1009853) (not e!832583))))

(assert (=> b!1485048 (= res!1009853 (= (seekEntryOrOpen!0 (select (arr!48007 a!2862) j!93) a!2862 mask!2687) (Found!12270 j!93)))))

(declare-fun b!1485049 () Bool)

(declare-fun res!1009852 () Bool)

(assert (=> b!1485049 (=> (not res!1009852) (not e!832588))))

(assert (=> b!1485049 (= res!1009852 e!832580)))

(declare-fun c!137114 () Bool)

(assert (=> b!1485049 (= c!137114 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126592 res!1009864) b!1485041))

(assert (= (and b!1485041 res!1009861) b!1485044))

(assert (= (and b!1485044 res!1009863) b!1485046))

(assert (= (and b!1485046 res!1009867) b!1485035))

(assert (= (and b!1485035 res!1009858) b!1485043))

(assert (= (and b!1485043 res!1009856) b!1485030))

(assert (= (and b!1485030 res!1009859) b!1485032))

(assert (= (and b!1485032 res!1009862) b!1485047))

(assert (= (and b!1485047 res!1009857) b!1485029))

(assert (= (and b!1485029 res!1009851) b!1485031))

(assert (= (and b!1485031 res!1009866) b!1485049))

(assert (= (and b!1485049 c!137114) b!1485036))

(assert (= (and b!1485049 (not c!137114)) b!1485033))

(assert (= (and b!1485049 res!1009852) b!1485045))

(assert (= (and b!1485045 res!1009855) b!1485040))

(assert (= (and b!1485040 res!1009854) b!1485048))

(assert (= (and b!1485048 res!1009853) b!1485038))

(assert (= (and b!1485038 res!1009865) b!1485042))

(assert (= (and b!1485042 (not res!1009868)) b!1485039))

(assert (= (and b!1485039 res!1009869) b!1485037))

(assert (= (and b!1485040 (not res!1009860)) b!1485034))

(declare-fun m!1370277 () Bool)

(assert (=> b!1485042 m!1370277))

(declare-fun m!1370279 () Bool)

(assert (=> b!1485042 m!1370279))

(declare-fun m!1370281 () Bool)

(assert (=> b!1485042 m!1370281))

(declare-fun m!1370283 () Bool)

(assert (=> b!1485042 m!1370283))

(declare-fun m!1370285 () Bool)

(assert (=> b!1485037 m!1370285))

(declare-fun m!1370287 () Bool)

(assert (=> b!1485037 m!1370287))

(declare-fun m!1370289 () Bool)

(assert (=> b!1485040 m!1370289))

(assert (=> b!1485040 m!1370281))

(assert (=> b!1485040 m!1370283))

(assert (=> b!1485040 m!1370277))

(declare-fun m!1370291 () Bool)

(assert (=> b!1485040 m!1370291))

(assert (=> b!1485040 m!1370279))

(assert (=> b!1485029 m!1370279))

(assert (=> b!1485029 m!1370279))

(declare-fun m!1370293 () Bool)

(assert (=> b!1485029 m!1370293))

(assert (=> b!1485046 m!1370279))

(assert (=> b!1485046 m!1370279))

(declare-fun m!1370295 () Bool)

(assert (=> b!1485046 m!1370295))

(assert (=> b!1485048 m!1370279))

(assert (=> b!1485048 m!1370279))

(declare-fun m!1370297 () Bool)

(assert (=> b!1485048 m!1370297))

(assert (=> b!1485047 m!1370279))

(assert (=> b!1485047 m!1370279))

(declare-fun m!1370299 () Bool)

(assert (=> b!1485047 m!1370299))

(assert (=> b!1485047 m!1370299))

(assert (=> b!1485047 m!1370279))

(declare-fun m!1370301 () Bool)

(assert (=> b!1485047 m!1370301))

(declare-fun m!1370303 () Bool)

(assert (=> b!1485043 m!1370303))

(declare-fun m!1370305 () Bool)

(assert (=> b!1485031 m!1370305))

(assert (=> b!1485031 m!1370305))

(declare-fun m!1370307 () Bool)

(assert (=> b!1485031 m!1370307))

(assert (=> b!1485031 m!1370281))

(declare-fun m!1370309 () Bool)

(assert (=> b!1485031 m!1370309))

(declare-fun m!1370311 () Bool)

(assert (=> b!1485035 m!1370311))

(assert (=> b!1485033 m!1370287))

(assert (=> b!1485033 m!1370285))

(assert (=> b!1485032 m!1370281))

(declare-fun m!1370313 () Bool)

(assert (=> b!1485032 m!1370313))

(declare-fun m!1370315 () Bool)

(assert (=> b!1485036 m!1370315))

(declare-fun m!1370317 () Bool)

(assert (=> b!1485044 m!1370317))

(assert (=> b!1485044 m!1370317))

(declare-fun m!1370319 () Bool)

(assert (=> b!1485044 m!1370319))

(declare-fun m!1370321 () Bool)

(assert (=> start!126592 m!1370321))

(declare-fun m!1370323 () Bool)

(assert (=> start!126592 m!1370323))

(declare-fun m!1370325 () Bool)

(assert (=> b!1485034 m!1370325))

(declare-fun m!1370327 () Bool)

(assert (=> b!1485038 m!1370327))

(assert (=> b!1485038 m!1370279))

(push 1)

