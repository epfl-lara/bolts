; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126686 () Bool)

(assert start!126686)

(declare-fun b!1486292 () Bool)

(declare-fun res!1010766 () Bool)

(declare-fun e!833230 () Bool)

(assert (=> b!1486292 (=> (not res!1010766) (not e!833230))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99502 0))(
  ( (array!99503 (arr!48021 (Array (_ BitVec 32) (_ BitVec 64))) (size!48572 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99502)

(assert (=> b!1486292 (= res!1010766 (and (= (size!48572 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48572 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48572 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12284 0))(
  ( (MissingZero!12284 (index!51527 (_ BitVec 32))) (Found!12284 (index!51528 (_ BitVec 32))) (Intermediate!12284 (undefined!13096 Bool) (index!51529 (_ BitVec 32)) (x!133111 (_ BitVec 32))) (Undefined!12284) (MissingVacant!12284 (index!51530 (_ BitVec 32))) )
))
(declare-fun lt!648391 () SeekEntryResult!12284)

(declare-fun lt!648385 () array!99502)

(declare-fun lt!648390 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!833227 () Bool)

(declare-fun b!1486294 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99502 (_ BitVec 32)) SeekEntryResult!12284)

(assert (=> b!1486294 (= e!833227 (= lt!648391 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648390 lt!648385 mask!2687)))))

(declare-fun b!1486295 () Bool)

(declare-fun res!1010763 () Bool)

(declare-fun e!833234 () Bool)

(assert (=> b!1486295 (=> (not res!1010763) (not e!833234))))

(assert (=> b!1486295 (= res!1010763 e!833227)))

(declare-fun c!137294 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1486295 (= c!137294 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486296 () Bool)

(declare-fun res!1010775 () Bool)

(assert (=> b!1486296 (=> (not res!1010775) (not e!833230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99502 (_ BitVec 32)) Bool)

(assert (=> b!1486296 (= res!1010775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486297 () Bool)

(declare-fun e!833229 () Bool)

(assert (=> b!1486297 (= e!833234 (not e!833229))))

(declare-fun res!1010757 () Bool)

(assert (=> b!1486297 (=> res!1010757 e!833229)))

(assert (=> b!1486297 (= res!1010757 (or (and (= (select (arr!48021 a!2862) index!646) (select (store (arr!48021 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48021 a!2862) index!646) (select (arr!48021 a!2862) j!93))) (= (select (arr!48021 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!833228 () Bool)

(assert (=> b!1486297 e!833228))

(declare-fun res!1010767 () Bool)

(assert (=> b!1486297 (=> (not res!1010767) (not e!833228))))

(assert (=> b!1486297 (= res!1010767 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49856 0))(
  ( (Unit!49857) )
))
(declare-fun lt!648388 () Unit!49856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49856)

(assert (=> b!1486297 (= lt!648388 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486298 () Bool)

(declare-fun res!1010765 () Bool)

(assert (=> b!1486298 (=> (not res!1010765) (not e!833228))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1486298 (= res!1010765 (or (= (select (arr!48021 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48021 a!2862) intermediateBeforeIndex!19) (select (arr!48021 a!2862) j!93))))))

(declare-fun b!1486299 () Bool)

(declare-fun res!1010770 () Bool)

(assert (=> b!1486299 (=> (not res!1010770) (not e!833228))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99502 (_ BitVec 32)) SeekEntryResult!12284)

(assert (=> b!1486299 (= res!1010770 (= (seekEntryOrOpen!0 (select (arr!48021 a!2862) j!93) a!2862 mask!2687) (Found!12284 j!93)))))

(declare-fun b!1486300 () Bool)

(declare-fun e!833232 () Bool)

(declare-fun e!833233 () Bool)

(assert (=> b!1486300 (= e!833232 e!833233)))

(declare-fun res!1010762 () Bool)

(assert (=> b!1486300 (=> (not res!1010762) (not e!833233))))

(declare-fun lt!648389 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486300 (= res!1010762 (and (= index!646 intermediateAfterIndex!19) (= lt!648389 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486301 () Bool)

(declare-fun res!1010764 () Bool)

(assert (=> b!1486301 (=> (not res!1010764) (not e!833234))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486301 (= res!1010764 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486302 () Bool)

(declare-fun res!1010774 () Bool)

(assert (=> b!1486302 (=> (not res!1010774) (not e!833230))))

(declare-datatypes ((List!34702 0))(
  ( (Nil!34699) (Cons!34698 (h!36075 (_ BitVec 64)) (t!49403 List!34702)) )
))
(declare-fun arrayNoDuplicates!0 (array!99502 (_ BitVec 32) List!34702) Bool)

(assert (=> b!1486302 (= res!1010774 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34699))))

(declare-fun b!1486303 () Bool)

(assert (=> b!1486303 (= e!833229 true)))

(declare-fun lt!648387 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486303 (= lt!648387 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486304 () Bool)

(declare-fun e!833231 () Bool)

(declare-fun e!833226 () Bool)

(assert (=> b!1486304 (= e!833231 e!833226)))

(declare-fun res!1010772 () Bool)

(assert (=> b!1486304 (=> (not res!1010772) (not e!833226))))

(declare-fun lt!648386 () SeekEntryResult!12284)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486304 (= res!1010772 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48021 a!2862) j!93) mask!2687) (select (arr!48021 a!2862) j!93) a!2862 mask!2687) lt!648386))))

(assert (=> b!1486304 (= lt!648386 (Intermediate!12284 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486305 () Bool)

(assert (=> b!1486305 (= e!833226 e!833234)))

(declare-fun res!1010761 () Bool)

(assert (=> b!1486305 (=> (not res!1010761) (not e!833234))))

(assert (=> b!1486305 (= res!1010761 (= lt!648391 (Intermediate!12284 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486305 (= lt!648391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648390 mask!2687) lt!648390 lt!648385 mask!2687))))

(assert (=> b!1486305 (= lt!648390 (select (store (arr!48021 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486306 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99502 (_ BitVec 32)) SeekEntryResult!12284)

(assert (=> b!1486306 (= e!833227 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648390 lt!648385 mask!2687) (seekEntryOrOpen!0 lt!648390 lt!648385 mask!2687)))))

(declare-fun b!1486307 () Bool)

(declare-fun res!1010771 () Bool)

(assert (=> b!1486307 (=> (not res!1010771) (not e!833226))))

(assert (=> b!1486307 (= res!1010771 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48021 a!2862) j!93) a!2862 mask!2687) lt!648386))))

(declare-fun b!1486308 () Bool)

(declare-fun res!1010760 () Bool)

(assert (=> b!1486308 (=> (not res!1010760) (not e!833230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486308 (= res!1010760 (validKeyInArray!0 (select (arr!48021 a!2862) i!1006)))))

(declare-fun b!1486293 () Bool)

(declare-fun res!1010769 () Bool)

(assert (=> b!1486293 (=> (not res!1010769) (not e!833230))))

(assert (=> b!1486293 (= res!1010769 (validKeyInArray!0 (select (arr!48021 a!2862) j!93)))))

(declare-fun res!1010759 () Bool)

(assert (=> start!126686 (=> (not res!1010759) (not e!833230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126686 (= res!1010759 (validMask!0 mask!2687))))

(assert (=> start!126686 e!833230))

(assert (=> start!126686 true))

(declare-fun array_inv!36966 (array!99502) Bool)

(assert (=> start!126686 (array_inv!36966 a!2862)))

(declare-fun b!1486309 () Bool)

(assert (=> b!1486309 (= e!833228 e!833232)))

(declare-fun res!1010768 () Bool)

(assert (=> b!1486309 (=> res!1010768 e!833232)))

(assert (=> b!1486309 (= res!1010768 (or (and (= (select (arr!48021 a!2862) index!646) lt!648389) (= (select (arr!48021 a!2862) index!646) (select (arr!48021 a!2862) j!93))) (= (select (arr!48021 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486309 (= lt!648389 (select (store (arr!48021 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486310 () Bool)

(assert (=> b!1486310 (= e!833233 (= (seekEntryOrOpen!0 lt!648390 lt!648385 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648390 lt!648385 mask!2687)))))

(declare-fun b!1486311 () Bool)

(assert (=> b!1486311 (= e!833230 e!833231)))

(declare-fun res!1010773 () Bool)

(assert (=> b!1486311 (=> (not res!1010773) (not e!833231))))

(assert (=> b!1486311 (= res!1010773 (= (select (store (arr!48021 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486311 (= lt!648385 (array!99503 (store (arr!48021 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48572 a!2862)))))

(declare-fun b!1486312 () Bool)

(declare-fun res!1010758 () Bool)

(assert (=> b!1486312 (=> (not res!1010758) (not e!833230))))

(assert (=> b!1486312 (= res!1010758 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48572 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48572 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48572 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126686 res!1010759) b!1486292))

(assert (= (and b!1486292 res!1010766) b!1486308))

(assert (= (and b!1486308 res!1010760) b!1486293))

(assert (= (and b!1486293 res!1010769) b!1486296))

(assert (= (and b!1486296 res!1010775) b!1486302))

(assert (= (and b!1486302 res!1010774) b!1486312))

(assert (= (and b!1486312 res!1010758) b!1486311))

(assert (= (and b!1486311 res!1010773) b!1486304))

(assert (= (and b!1486304 res!1010772) b!1486307))

(assert (= (and b!1486307 res!1010771) b!1486305))

(assert (= (and b!1486305 res!1010761) b!1486295))

(assert (= (and b!1486295 c!137294) b!1486294))

(assert (= (and b!1486295 (not c!137294)) b!1486306))

(assert (= (and b!1486295 res!1010763) b!1486301))

(assert (= (and b!1486301 res!1010764) b!1486297))

(assert (= (and b!1486297 res!1010767) b!1486299))

(assert (= (and b!1486299 res!1010770) b!1486298))

(assert (= (and b!1486298 res!1010765) b!1486309))

(assert (= (and b!1486309 (not res!1010768)) b!1486300))

(assert (= (and b!1486300 res!1010762) b!1486310))

(assert (= (and b!1486297 (not res!1010757)) b!1486303))

(declare-fun m!1371239 () Bool)

(assert (=> b!1486305 m!1371239))

(assert (=> b!1486305 m!1371239))

(declare-fun m!1371241 () Bool)

(assert (=> b!1486305 m!1371241))

(declare-fun m!1371243 () Bool)

(assert (=> b!1486305 m!1371243))

(declare-fun m!1371245 () Bool)

(assert (=> b!1486305 m!1371245))

(declare-fun m!1371247 () Bool)

(assert (=> b!1486309 m!1371247))

(declare-fun m!1371249 () Bool)

(assert (=> b!1486309 m!1371249))

(assert (=> b!1486309 m!1371243))

(declare-fun m!1371251 () Bool)

(assert (=> b!1486309 m!1371251))

(assert (=> b!1486304 m!1371249))

(assert (=> b!1486304 m!1371249))

(declare-fun m!1371253 () Bool)

(assert (=> b!1486304 m!1371253))

(assert (=> b!1486304 m!1371253))

(assert (=> b!1486304 m!1371249))

(declare-fun m!1371255 () Bool)

(assert (=> b!1486304 m!1371255))

(declare-fun m!1371257 () Bool)

(assert (=> b!1486296 m!1371257))

(declare-fun m!1371259 () Bool)

(assert (=> b!1486303 m!1371259))

(declare-fun m!1371261 () Bool)

(assert (=> b!1486297 m!1371261))

(assert (=> b!1486297 m!1371243))

(assert (=> b!1486297 m!1371251))

(assert (=> b!1486297 m!1371247))

(declare-fun m!1371263 () Bool)

(assert (=> b!1486297 m!1371263))

(assert (=> b!1486297 m!1371249))

(assert (=> b!1486307 m!1371249))

(assert (=> b!1486307 m!1371249))

(declare-fun m!1371265 () Bool)

(assert (=> b!1486307 m!1371265))

(assert (=> b!1486311 m!1371243))

(declare-fun m!1371267 () Bool)

(assert (=> b!1486311 m!1371267))

(assert (=> b!1486299 m!1371249))

(assert (=> b!1486299 m!1371249))

(declare-fun m!1371269 () Bool)

(assert (=> b!1486299 m!1371269))

(assert (=> b!1486293 m!1371249))

(assert (=> b!1486293 m!1371249))

(declare-fun m!1371271 () Bool)

(assert (=> b!1486293 m!1371271))

(declare-fun m!1371273 () Bool)

(assert (=> b!1486310 m!1371273))

(declare-fun m!1371275 () Bool)

(assert (=> b!1486310 m!1371275))

(declare-fun m!1371277 () Bool)

(assert (=> b!1486294 m!1371277))

(declare-fun m!1371279 () Bool)

(assert (=> b!1486302 m!1371279))

(declare-fun m!1371281 () Bool)

(assert (=> start!126686 m!1371281))

(declare-fun m!1371283 () Bool)

(assert (=> start!126686 m!1371283))

(declare-fun m!1371285 () Bool)

(assert (=> b!1486308 m!1371285))

(assert (=> b!1486308 m!1371285))

(declare-fun m!1371287 () Bool)

(assert (=> b!1486308 m!1371287))

(declare-fun m!1371289 () Bool)

(assert (=> b!1486298 m!1371289))

(assert (=> b!1486298 m!1371249))

(assert (=> b!1486306 m!1371275))

(assert (=> b!1486306 m!1371273))

(push 1)

