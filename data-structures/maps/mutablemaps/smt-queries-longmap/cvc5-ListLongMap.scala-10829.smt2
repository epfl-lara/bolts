; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126862 () Bool)

(assert start!126862)

(declare-fun b!1488570 () Bool)

(declare-fun e!834408 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1488570 (= e!834408 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1488571 () Bool)

(declare-fun e!834410 () Bool)

(declare-fun e!834409 () Bool)

(assert (=> b!1488571 (= e!834410 e!834409)))

(declare-fun res!1012280 () Bool)

(assert (=> b!1488571 (=> (not res!1012280) (not e!834409))))

(declare-datatypes ((SeekEntryResult!12306 0))(
  ( (MissingZero!12306 (index!51615 (_ BitVec 32))) (Found!12306 (index!51616 (_ BitVec 32))) (Intermediate!12306 (undefined!13118 Bool) (index!51617 (_ BitVec 32)) (x!133221 (_ BitVec 32))) (Undefined!12306) (MissingVacant!12306 (index!51618 (_ BitVec 32))) )
))
(declare-fun lt!649221 () SeekEntryResult!12306)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1488571 (= res!1012280 (= lt!649221 (Intermediate!12306 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649219 () (_ BitVec 64))

(declare-datatypes ((array!99552 0))(
  ( (array!99553 (arr!48043 (Array (_ BitVec 32) (_ BitVec 64))) (size!48594 (_ BitVec 32))) )
))
(declare-fun lt!649222 () array!99552)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99552 (_ BitVec 32)) SeekEntryResult!12306)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488571 (= lt!649221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649219 mask!2687) lt!649219 lt!649222 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99552)

(assert (=> b!1488571 (= lt!649219 (select (store (arr!48043 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488572 () Bool)

(declare-fun e!834415 () Bool)

(declare-fun lt!649218 () (_ BitVec 32))

(assert (=> b!1488572 (= e!834415 (not (= lt!649221 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649218 lt!649219 lt!649222 mask!2687))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!834416 () Bool)

(declare-fun b!1488573 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1488573 (= e!834416 (and (or (= (select (arr!48043 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48043 a!2862) intermediateBeforeIndex!19) (select (arr!48043 a!2862) j!93))) (let ((bdg!54653 (select (store (arr!48043 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48043 a!2862) index!646) bdg!54653) (= (select (arr!48043 a!2862) index!646) (select (arr!48043 a!2862) j!93))) (= (select (arr!48043 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54653 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1488574 () Bool)

(declare-fun res!1012268 () Bool)

(assert (=> b!1488574 (=> (not res!1012268) (not e!834410))))

(declare-fun lt!649217 () SeekEntryResult!12306)

(assert (=> b!1488574 (= res!1012268 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48043 a!2862) j!93) a!2862 mask!2687) lt!649217))))

(declare-fun b!1488575 () Bool)

(declare-fun e!834411 () Bool)

(assert (=> b!1488575 (= e!834411 (= lt!649221 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649219 lt!649222 mask!2687)))))

(declare-fun b!1488576 () Bool)

(declare-fun e!834412 () Bool)

(assert (=> b!1488576 (= e!834412 e!834408)))

(declare-fun res!1012269 () Bool)

(assert (=> b!1488576 (=> res!1012269 e!834408)))

(assert (=> b!1488576 (= res!1012269 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649218 #b00000000000000000000000000000000) (bvsge lt!649218 (size!48594 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488576 (= lt!649218 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649220 () SeekEntryResult!12306)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99552 (_ BitVec 32)) SeekEntryResult!12306)

(assert (=> b!1488576 (= lt!649220 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649219 lt!649222 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99552 (_ BitVec 32)) SeekEntryResult!12306)

(assert (=> b!1488576 (= lt!649220 (seekEntryOrOpen!0 lt!649219 lt!649222 mask!2687))))

(declare-fun b!1488577 () Bool)

(declare-fun res!1012273 () Bool)

(declare-fun e!834414 () Bool)

(assert (=> b!1488577 (=> (not res!1012273) (not e!834414))))

(assert (=> b!1488577 (= res!1012273 (and (= (size!48594 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48594 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48594 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488578 () Bool)

(declare-fun res!1012274 () Bool)

(assert (=> b!1488578 (=> (not res!1012274) (not e!834416))))

(assert (=> b!1488578 (= res!1012274 (= (seekEntryOrOpen!0 (select (arr!48043 a!2862) j!93) a!2862 mask!2687) (Found!12306 j!93)))))

(declare-fun b!1488579 () Bool)

(assert (=> b!1488579 (= e!834409 (not e!834412))))

(declare-fun res!1012272 () Bool)

(assert (=> b!1488579 (=> res!1012272 e!834412)))

(assert (=> b!1488579 (= res!1012272 (or (and (= (select (arr!48043 a!2862) index!646) (select (store (arr!48043 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48043 a!2862) index!646) (select (arr!48043 a!2862) j!93))) (= (select (arr!48043 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1488579 e!834416))

(declare-fun res!1012281 () Bool)

(assert (=> b!1488579 (=> (not res!1012281) (not e!834416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99552 (_ BitVec 32)) Bool)

(assert (=> b!1488579 (= res!1012281 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49900 0))(
  ( (Unit!49901) )
))
(declare-fun lt!649216 () Unit!49900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49900)

(assert (=> b!1488579 (= lt!649216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1488581 () Bool)

(declare-fun res!1012271 () Bool)

(assert (=> b!1488581 (=> (not res!1012271) (not e!834414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488581 (= res!1012271 (validKeyInArray!0 (select (arr!48043 a!2862) i!1006)))))

(declare-fun b!1488582 () Bool)

(declare-fun res!1012278 () Bool)

(assert (=> b!1488582 (=> (not res!1012278) (not e!834409))))

(assert (=> b!1488582 (= res!1012278 e!834411)))

(declare-fun c!137684 () Bool)

(assert (=> b!1488582 (= c!137684 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1488583 () Bool)

(declare-fun res!1012264 () Bool)

(assert (=> b!1488583 (=> (not res!1012264) (not e!834409))))

(assert (=> b!1488583 (= res!1012264 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1488584 () Bool)

(declare-fun res!1012263 () Bool)

(assert (=> b!1488584 (=> (not res!1012263) (not e!834414))))

(assert (=> b!1488584 (= res!1012263 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48594 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48594 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48594 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488585 () Bool)

(declare-fun res!1012276 () Bool)

(assert (=> b!1488585 (=> (not res!1012276) (not e!834414))))

(assert (=> b!1488585 (= res!1012276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488586 () Bool)

(assert (=> b!1488586 (= e!834411 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649219 lt!649222 mask!2687) (seekEntryOrOpen!0 lt!649219 lt!649222 mask!2687)))))

(declare-fun b!1488587 () Bool)

(declare-fun e!834413 () Bool)

(assert (=> b!1488587 (= e!834413 e!834410)))

(declare-fun res!1012266 () Bool)

(assert (=> b!1488587 (=> (not res!1012266) (not e!834410))))

(assert (=> b!1488587 (= res!1012266 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48043 a!2862) j!93) mask!2687) (select (arr!48043 a!2862) j!93) a!2862 mask!2687) lt!649217))))

(assert (=> b!1488587 (= lt!649217 (Intermediate!12306 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1488588 () Bool)

(declare-fun res!1012277 () Bool)

(assert (=> b!1488588 (=> res!1012277 e!834408)))

(assert (=> b!1488588 (= res!1012277 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649218 (select (arr!48043 a!2862) j!93) a!2862 mask!2687) lt!649217)))))

(declare-fun b!1488589 () Bool)

(assert (=> b!1488589 (= e!834414 e!834413)))

(declare-fun res!1012279 () Bool)

(assert (=> b!1488589 (=> (not res!1012279) (not e!834413))))

(assert (=> b!1488589 (= res!1012279 (= (select (store (arr!48043 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488589 (= lt!649222 (array!99553 (store (arr!48043 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48594 a!2862)))))

(declare-fun b!1488590 () Bool)

(declare-fun res!1012275 () Bool)

(assert (=> b!1488590 (=> res!1012275 e!834408)))

(assert (=> b!1488590 (= res!1012275 e!834415)))

(declare-fun c!137683 () Bool)

(assert (=> b!1488590 (= c!137683 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1488591 () Bool)

(declare-fun res!1012267 () Bool)

(assert (=> b!1488591 (=> (not res!1012267) (not e!834414))))

(assert (=> b!1488591 (= res!1012267 (validKeyInArray!0 (select (arr!48043 a!2862) j!93)))))

(declare-fun b!1488592 () Bool)

(assert (=> b!1488592 (= e!834415 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649218 intermediateAfterIndex!19 lt!649219 lt!649222 mask!2687) lt!649220)))))

(declare-fun b!1488580 () Bool)

(declare-fun res!1012270 () Bool)

(assert (=> b!1488580 (=> (not res!1012270) (not e!834414))))

(declare-datatypes ((List!34724 0))(
  ( (Nil!34721) (Cons!34720 (h!36103 (_ BitVec 64)) (t!49425 List!34724)) )
))
(declare-fun arrayNoDuplicates!0 (array!99552 (_ BitVec 32) List!34724) Bool)

(assert (=> b!1488580 (= res!1012270 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34721))))

(declare-fun res!1012265 () Bool)

(assert (=> start!126862 (=> (not res!1012265) (not e!834414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126862 (= res!1012265 (validMask!0 mask!2687))))

(assert (=> start!126862 e!834414))

(assert (=> start!126862 true))

(declare-fun array_inv!36988 (array!99552) Bool)

(assert (=> start!126862 (array_inv!36988 a!2862)))

(assert (= (and start!126862 res!1012265) b!1488577))

(assert (= (and b!1488577 res!1012273) b!1488581))

(assert (= (and b!1488581 res!1012271) b!1488591))

(assert (= (and b!1488591 res!1012267) b!1488585))

(assert (= (and b!1488585 res!1012276) b!1488580))

(assert (= (and b!1488580 res!1012270) b!1488584))

(assert (= (and b!1488584 res!1012263) b!1488589))

(assert (= (and b!1488589 res!1012279) b!1488587))

(assert (= (and b!1488587 res!1012266) b!1488574))

(assert (= (and b!1488574 res!1012268) b!1488571))

(assert (= (and b!1488571 res!1012280) b!1488582))

(assert (= (and b!1488582 c!137684) b!1488575))

(assert (= (and b!1488582 (not c!137684)) b!1488586))

(assert (= (and b!1488582 res!1012278) b!1488583))

(assert (= (and b!1488583 res!1012264) b!1488579))

(assert (= (and b!1488579 res!1012281) b!1488578))

(assert (= (and b!1488578 res!1012274) b!1488573))

(assert (= (and b!1488579 (not res!1012272)) b!1488576))

(assert (= (and b!1488576 (not res!1012269)) b!1488588))

(assert (= (and b!1488588 (not res!1012277)) b!1488590))

(assert (= (and b!1488590 c!137683) b!1488572))

(assert (= (and b!1488590 (not c!137683)) b!1488592))

(assert (= (and b!1488590 (not res!1012275)) b!1488570))

(declare-fun m!1372965 () Bool)

(assert (=> b!1488592 m!1372965))

(declare-fun m!1372967 () Bool)

(assert (=> b!1488575 m!1372967))

(declare-fun m!1372969 () Bool)

(assert (=> start!126862 m!1372969))

(declare-fun m!1372971 () Bool)

(assert (=> start!126862 m!1372971))

(declare-fun m!1372973 () Bool)

(assert (=> b!1488588 m!1372973))

(assert (=> b!1488588 m!1372973))

(declare-fun m!1372975 () Bool)

(assert (=> b!1488588 m!1372975))

(declare-fun m!1372977 () Bool)

(assert (=> b!1488589 m!1372977))

(declare-fun m!1372979 () Bool)

(assert (=> b!1488589 m!1372979))

(declare-fun m!1372981 () Bool)

(assert (=> b!1488585 m!1372981))

(assert (=> b!1488578 m!1372973))

(assert (=> b!1488578 m!1372973))

(declare-fun m!1372983 () Bool)

(assert (=> b!1488578 m!1372983))

(assert (=> b!1488573 m!1372977))

(declare-fun m!1372985 () Bool)

(assert (=> b!1488573 m!1372985))

(declare-fun m!1372987 () Bool)

(assert (=> b!1488573 m!1372987))

(declare-fun m!1372989 () Bool)

(assert (=> b!1488573 m!1372989))

(assert (=> b!1488573 m!1372973))

(declare-fun m!1372991 () Bool)

(assert (=> b!1488579 m!1372991))

(assert (=> b!1488579 m!1372977))

(assert (=> b!1488579 m!1372987))

(assert (=> b!1488579 m!1372989))

(declare-fun m!1372993 () Bool)

(assert (=> b!1488579 m!1372993))

(assert (=> b!1488579 m!1372973))

(declare-fun m!1372995 () Bool)

(assert (=> b!1488586 m!1372995))

(declare-fun m!1372997 () Bool)

(assert (=> b!1488586 m!1372997))

(assert (=> b!1488587 m!1372973))

(assert (=> b!1488587 m!1372973))

(declare-fun m!1372999 () Bool)

(assert (=> b!1488587 m!1372999))

(assert (=> b!1488587 m!1372999))

(assert (=> b!1488587 m!1372973))

(declare-fun m!1373001 () Bool)

(assert (=> b!1488587 m!1373001))

(declare-fun m!1373003 () Bool)

(assert (=> b!1488580 m!1373003))

(declare-fun m!1373005 () Bool)

(assert (=> b!1488571 m!1373005))

(assert (=> b!1488571 m!1373005))

(declare-fun m!1373007 () Bool)

(assert (=> b!1488571 m!1373007))

(assert (=> b!1488571 m!1372977))

(declare-fun m!1373009 () Bool)

(assert (=> b!1488571 m!1373009))

(declare-fun m!1373011 () Bool)

(assert (=> b!1488581 m!1373011))

(assert (=> b!1488581 m!1373011))

(declare-fun m!1373013 () Bool)

(assert (=> b!1488581 m!1373013))

(assert (=> b!1488574 m!1372973))

(assert (=> b!1488574 m!1372973))

(declare-fun m!1373015 () Bool)

(assert (=> b!1488574 m!1373015))

(declare-fun m!1373017 () Bool)

(assert (=> b!1488572 m!1373017))

(declare-fun m!1373019 () Bool)

(assert (=> b!1488576 m!1373019))

(assert (=> b!1488576 m!1372995))

(assert (=> b!1488576 m!1372997))

(assert (=> b!1488591 m!1372973))

(assert (=> b!1488591 m!1372973))

(declare-fun m!1373021 () Bool)

(assert (=> b!1488591 m!1373021))

(push 1)

(assert (not b!1488585))

(assert (not b!1488579))

(assert (not b!1488586))

(assert (not b!1488572))

(assert (not b!1488575))

(assert (not b!1488588))

(assert (not b!1488591))

(assert (not b!1488587))

(assert (not b!1488580))

(assert (not b!1488581))

(assert (not b!1488574))

(assert (not start!126862))

(assert (not b!1488578))

(assert (not b!1488592))

(assert (not b!1488571))

(assert (not b!1488576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

