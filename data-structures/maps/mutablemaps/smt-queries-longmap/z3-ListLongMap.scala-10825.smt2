; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126708 () Bool)

(assert start!126708)

(declare-fun b!1486985 () Bool)

(declare-fun e!833556 () Bool)

(declare-fun e!833560 () Bool)

(assert (=> b!1486985 (= e!833556 e!833560)))

(declare-fun res!1011391 () Bool)

(assert (=> b!1486985 (=> (not res!1011391) (not e!833560))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12295 0))(
  ( (MissingZero!12295 (index!51571 (_ BitVec 32))) (Found!12295 (index!51572 (_ BitVec 32))) (Intermediate!12295 (undefined!13107 Bool) (index!51573 (_ BitVec 32)) (x!133154 (_ BitVec 32))) (Undefined!12295) (MissingVacant!12295 (index!51574 (_ BitVec 32))) )
))
(declare-fun lt!648620 () SeekEntryResult!12295)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486985 (= res!1011391 (= lt!648620 (Intermediate!12295 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99524 0))(
  ( (array!99525 (arr!48032 (Array (_ BitVec 32) (_ BitVec 64))) (size!48583 (_ BitVec 32))) )
))
(declare-fun lt!648617 () array!99524)

(declare-fun lt!648619 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99524 (_ BitVec 32)) SeekEntryResult!12295)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486985 (= lt!648620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648619 mask!2687) lt!648619 lt!648617 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99524)

(assert (=> b!1486985 (= lt!648619 (select (store (arr!48032 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!833558 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1486986 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99524 (_ BitVec 32)) SeekEntryResult!12295)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99524 (_ BitVec 32)) SeekEntryResult!12295)

(assert (=> b!1486986 (= e!833558 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648619 lt!648617 mask!2687) (seekEntryOrOpen!0 lt!648619 lt!648617 mask!2687)))))

(declare-fun b!1486987 () Bool)

(declare-fun res!1011401 () Bool)

(declare-fun e!833559 () Bool)

(assert (=> b!1486987 (=> (not res!1011401) (not e!833559))))

(assert (=> b!1486987 (= res!1011401 (= (seekEntryOrOpen!0 (select (arr!48032 a!2862) j!93) a!2862 mask!2687) (Found!12295 j!93)))))

(declare-fun b!1486988 () Bool)

(declare-fun res!1011399 () Bool)

(declare-fun e!833563 () Bool)

(assert (=> b!1486988 (=> (not res!1011399) (not e!833563))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486988 (= res!1011399 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48583 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48583 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48583 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486989 () Bool)

(declare-fun res!1011385 () Bool)

(assert (=> b!1486989 (=> (not res!1011385) (not e!833563))))

(declare-datatypes ((List!34713 0))(
  ( (Nil!34710) (Cons!34709 (h!36086 (_ BitVec 64)) (t!49414 List!34713)) )
))
(declare-fun arrayNoDuplicates!0 (array!99524 (_ BitVec 32) List!34713) Bool)

(assert (=> b!1486989 (= res!1011385 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34710))))

(declare-fun b!1486990 () Bool)

(declare-fun e!833555 () Bool)

(assert (=> b!1486990 (= e!833560 (not e!833555))))

(declare-fun res!1011388 () Bool)

(assert (=> b!1486990 (=> res!1011388 e!833555)))

(assert (=> b!1486990 (= res!1011388 (or (and (= (select (arr!48032 a!2862) index!646) (select (store (arr!48032 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48032 a!2862) index!646) (select (arr!48032 a!2862) j!93))) (= (select (arr!48032 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486990 e!833559))

(declare-fun res!1011392 () Bool)

(assert (=> b!1486990 (=> (not res!1011392) (not e!833559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99524 (_ BitVec 32)) Bool)

(assert (=> b!1486990 (= res!1011392 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49878 0))(
  ( (Unit!49879) )
))
(declare-fun lt!648616 () Unit!49878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49878)

(assert (=> b!1486990 (= lt!648616 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486991 () Bool)

(declare-fun res!1011393 () Bool)

(assert (=> b!1486991 (=> (not res!1011393) (not e!833563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486991 (= res!1011393 (validKeyInArray!0 (select (arr!48032 a!2862) j!93)))))

(declare-fun b!1486992 () Bool)

(declare-fun res!1011396 () Bool)

(assert (=> b!1486992 (=> (not res!1011396) (not e!833560))))

(assert (=> b!1486992 (= res!1011396 e!833558)))

(declare-fun c!137327 () Bool)

(assert (=> b!1486992 (= c!137327 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486993 () Bool)

(declare-fun e!833561 () Bool)

(assert (=> b!1486993 (= e!833559 e!833561)))

(declare-fun res!1011400 () Bool)

(assert (=> b!1486993 (=> res!1011400 e!833561)))

(declare-fun lt!648618 () (_ BitVec 64))

(assert (=> b!1486993 (= res!1011400 (or (and (= (select (arr!48032 a!2862) index!646) lt!648618) (= (select (arr!48032 a!2862) index!646) (select (arr!48032 a!2862) j!93))) (= (select (arr!48032 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486993 (= lt!648618 (select (store (arr!48032 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486994 () Bool)

(declare-fun res!1011394 () Bool)

(assert (=> b!1486994 (=> (not res!1011394) (not e!833563))))

(assert (=> b!1486994 (= res!1011394 (and (= (size!48583 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48583 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48583 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486995 () Bool)

(declare-fun res!1011402 () Bool)

(assert (=> b!1486995 (=> (not res!1011402) (not e!833556))))

(declare-fun lt!648622 () SeekEntryResult!12295)

(assert (=> b!1486995 (= res!1011402 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48032 a!2862) j!93) a!2862 mask!2687) lt!648622))))

(declare-fun res!1011387 () Bool)

(assert (=> start!126708 (=> (not res!1011387) (not e!833563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126708 (= res!1011387 (validMask!0 mask!2687))))

(assert (=> start!126708 e!833563))

(assert (=> start!126708 true))

(declare-fun array_inv!36977 (array!99524) Bool)

(assert (=> start!126708 (array_inv!36977 a!2862)))

(declare-fun b!1486996 () Bool)

(assert (=> b!1486996 (= e!833558 (= lt!648620 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648619 lt!648617 mask!2687)))))

(declare-fun b!1486997 () Bool)

(declare-fun res!1011390 () Bool)

(assert (=> b!1486997 (=> (not res!1011390) (not e!833563))))

(assert (=> b!1486997 (= res!1011390 (validKeyInArray!0 (select (arr!48032 a!2862) i!1006)))))

(declare-fun b!1486998 () Bool)

(declare-fun res!1011384 () Bool)

(assert (=> b!1486998 (=> (not res!1011384) (not e!833563))))

(assert (=> b!1486998 (= res!1011384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486999 () Bool)

(declare-fun res!1011386 () Bool)

(assert (=> b!1486999 (=> (not res!1011386) (not e!833560))))

(assert (=> b!1486999 (= res!1011386 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487000 () Bool)

(declare-fun e!833564 () Bool)

(assert (=> b!1487000 (= e!833564 (= (seekEntryOrOpen!0 lt!648619 lt!648617 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648619 lt!648617 mask!2687)))))

(declare-fun b!1487001 () Bool)

(declare-fun res!1011397 () Bool)

(assert (=> b!1487001 (=> (not res!1011397) (not e!833559))))

(assert (=> b!1487001 (= res!1011397 (or (= (select (arr!48032 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48032 a!2862) intermediateBeforeIndex!19) (select (arr!48032 a!2862) j!93))))))

(declare-fun b!1487002 () Bool)

(declare-fun e!833562 () Bool)

(assert (=> b!1487002 (= e!833563 e!833562)))

(declare-fun res!1011395 () Bool)

(assert (=> b!1487002 (=> (not res!1011395) (not e!833562))))

(assert (=> b!1487002 (= res!1011395 (= (select (store (arr!48032 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487002 (= lt!648617 (array!99525 (store (arr!48032 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48583 a!2862)))))

(declare-fun b!1487003 () Bool)

(assert (=> b!1487003 (= e!833561 e!833564)))

(declare-fun res!1011398 () Bool)

(assert (=> b!1487003 (=> (not res!1011398) (not e!833564))))

(assert (=> b!1487003 (= res!1011398 (and (= index!646 intermediateAfterIndex!19) (= lt!648618 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487004 () Bool)

(assert (=> b!1487004 (= e!833562 e!833556)))

(declare-fun res!1011389 () Bool)

(assert (=> b!1487004 (=> (not res!1011389) (not e!833556))))

(assert (=> b!1487004 (= res!1011389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48032 a!2862) j!93) mask!2687) (select (arr!48032 a!2862) j!93) a!2862 mask!2687) lt!648622))))

(assert (=> b!1487004 (= lt!648622 (Intermediate!12295 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487005 () Bool)

(assert (=> b!1487005 (= e!833555 true)))

(declare-fun lt!648621 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487005 (= lt!648621 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!126708 res!1011387) b!1486994))

(assert (= (and b!1486994 res!1011394) b!1486997))

(assert (= (and b!1486997 res!1011390) b!1486991))

(assert (= (and b!1486991 res!1011393) b!1486998))

(assert (= (and b!1486998 res!1011384) b!1486989))

(assert (= (and b!1486989 res!1011385) b!1486988))

(assert (= (and b!1486988 res!1011399) b!1487002))

(assert (= (and b!1487002 res!1011395) b!1487004))

(assert (= (and b!1487004 res!1011389) b!1486995))

(assert (= (and b!1486995 res!1011402) b!1486985))

(assert (= (and b!1486985 res!1011391) b!1486992))

(assert (= (and b!1486992 c!137327) b!1486996))

(assert (= (and b!1486992 (not c!137327)) b!1486986))

(assert (= (and b!1486992 res!1011396) b!1486999))

(assert (= (and b!1486999 res!1011386) b!1486990))

(assert (= (and b!1486990 res!1011392) b!1486987))

(assert (= (and b!1486987 res!1011401) b!1487001))

(assert (= (and b!1487001 res!1011397) b!1486993))

(assert (= (and b!1486993 (not res!1011400)) b!1487003))

(assert (= (and b!1487003 res!1011398) b!1487000))

(assert (= (and b!1486990 (not res!1011388)) b!1487005))

(declare-fun m!1371811 () Bool)

(assert (=> b!1487002 m!1371811))

(declare-fun m!1371813 () Bool)

(assert (=> b!1487002 m!1371813))

(declare-fun m!1371815 () Bool)

(assert (=> b!1487000 m!1371815))

(declare-fun m!1371817 () Bool)

(assert (=> b!1487000 m!1371817))

(declare-fun m!1371819 () Bool)

(assert (=> b!1486995 m!1371819))

(assert (=> b!1486995 m!1371819))

(declare-fun m!1371821 () Bool)

(assert (=> b!1486995 m!1371821))

(declare-fun m!1371823 () Bool)

(assert (=> b!1486989 m!1371823))

(declare-fun m!1371825 () Bool)

(assert (=> b!1486993 m!1371825))

(assert (=> b!1486993 m!1371819))

(assert (=> b!1486993 m!1371811))

(declare-fun m!1371827 () Bool)

(assert (=> b!1486993 m!1371827))

(assert (=> b!1487004 m!1371819))

(assert (=> b!1487004 m!1371819))

(declare-fun m!1371829 () Bool)

(assert (=> b!1487004 m!1371829))

(assert (=> b!1487004 m!1371829))

(assert (=> b!1487004 m!1371819))

(declare-fun m!1371831 () Bool)

(assert (=> b!1487004 m!1371831))

(declare-fun m!1371833 () Bool)

(assert (=> b!1486997 m!1371833))

(assert (=> b!1486997 m!1371833))

(declare-fun m!1371835 () Bool)

(assert (=> b!1486997 m!1371835))

(declare-fun m!1371837 () Bool)

(assert (=> b!1487005 m!1371837))

(assert (=> b!1486986 m!1371817))

(assert (=> b!1486986 m!1371815))

(declare-fun m!1371839 () Bool)

(assert (=> start!126708 m!1371839))

(declare-fun m!1371841 () Bool)

(assert (=> start!126708 m!1371841))

(assert (=> b!1486987 m!1371819))

(assert (=> b!1486987 m!1371819))

(declare-fun m!1371843 () Bool)

(assert (=> b!1486987 m!1371843))

(declare-fun m!1371845 () Bool)

(assert (=> b!1486996 m!1371845))

(declare-fun m!1371847 () Bool)

(assert (=> b!1486985 m!1371847))

(assert (=> b!1486985 m!1371847))

(declare-fun m!1371849 () Bool)

(assert (=> b!1486985 m!1371849))

(assert (=> b!1486985 m!1371811))

(declare-fun m!1371851 () Bool)

(assert (=> b!1486985 m!1371851))

(declare-fun m!1371853 () Bool)

(assert (=> b!1486990 m!1371853))

(assert (=> b!1486990 m!1371811))

(assert (=> b!1486990 m!1371827))

(assert (=> b!1486990 m!1371825))

(declare-fun m!1371855 () Bool)

(assert (=> b!1486990 m!1371855))

(assert (=> b!1486990 m!1371819))

(declare-fun m!1371857 () Bool)

(assert (=> b!1487001 m!1371857))

(assert (=> b!1487001 m!1371819))

(assert (=> b!1486991 m!1371819))

(assert (=> b!1486991 m!1371819))

(declare-fun m!1371859 () Bool)

(assert (=> b!1486991 m!1371859))

(declare-fun m!1371861 () Bool)

(assert (=> b!1486998 m!1371861))

(check-sat (not b!1487005) (not b!1487004) (not b!1486998) (not b!1486995) (not b!1486996) (not b!1486986) (not b!1486989) (not b!1486997) (not b!1486987) (not start!126708) (not b!1486990) (not b!1486991) (not b!1487000) (not b!1486985))
(check-sat)
