; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127384 () Bool)

(assert start!127384)

(declare-fun b!1496233 () Bool)

(declare-fun res!1017685 () Bool)

(declare-fun e!838086 () Bool)

(assert (=> b!1496233 (=> (not res!1017685) (not e!838086))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99759 0))(
  ( (array!99760 (arr!48139 (Array (_ BitVec 32) (_ BitVec 64))) (size!48690 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99759)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12402 0))(
  ( (MissingZero!12402 (index!51999 (_ BitVec 32))) (Found!12402 (index!52000 (_ BitVec 32))) (Intermediate!12402 (undefined!13214 Bool) (index!52001 (_ BitVec 32)) (x!133633 (_ BitVec 32))) (Undefined!12402) (MissingVacant!12402 (index!52002 (_ BitVec 32))) )
))
(declare-fun lt!652012 () SeekEntryResult!12402)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99759 (_ BitVec 32)) SeekEntryResult!12402)

(assert (=> b!1496233 (= res!1017685 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48139 a!2862) j!93) a!2862 mask!2687) lt!652012))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1496234 () Bool)

(declare-fun e!838089 () Bool)

(assert (=> b!1496234 (= e!838089 (or (= (select (arr!48139 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48139 a!2862) intermediateBeforeIndex!19) (select (arr!48139 a!2862) j!93))))))

(declare-fun b!1496235 () Bool)

(declare-fun res!1017693 () Bool)

(declare-fun e!838087 () Bool)

(assert (=> b!1496235 (=> res!1017693 e!838087)))

(declare-fun lt!652009 () (_ BitVec 32))

(assert (=> b!1496235 (= res!1017693 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652009 (select (arr!48139 a!2862) j!93) a!2862 mask!2687) lt!652012)))))

(declare-fun b!1496237 () Bool)

(declare-fun res!1017681 () Bool)

(declare-fun e!838085 () Bool)

(assert (=> b!1496237 (=> (not res!1017681) (not e!838085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99759 (_ BitVec 32)) Bool)

(assert (=> b!1496237 (= res!1017681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496238 () Bool)

(assert (=> b!1496238 (= e!838087 true)))

(declare-fun lt!652011 () Bool)

(declare-fun e!838090 () Bool)

(assert (=> b!1496238 (= lt!652011 e!838090)))

(declare-fun c!138814 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1496238 (= c!138814 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496239 () Bool)

(declare-fun res!1017686 () Bool)

(assert (=> b!1496239 (=> (not res!1017686) (not e!838085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496239 (= res!1017686 (validKeyInArray!0 (select (arr!48139 a!2862) j!93)))))

(declare-fun b!1496240 () Bool)

(declare-fun e!838082 () Bool)

(assert (=> b!1496240 (= e!838082 e!838087)))

(declare-fun res!1017679 () Bool)

(assert (=> b!1496240 (=> res!1017679 e!838087)))

(assert (=> b!1496240 (= res!1017679 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652009 #b00000000000000000000000000000000) (bvsge lt!652009 (size!48690 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496240 (= lt!652009 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496241 () Bool)

(declare-fun res!1017695 () Bool)

(assert (=> b!1496241 (=> (not res!1017695) (not e!838085))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1496241 (= res!1017695 (validKeyInArray!0 (select (arr!48139 a!2862) i!1006)))))

(declare-fun b!1496242 () Bool)

(declare-fun res!1017682 () Bool)

(assert (=> b!1496242 (=> (not res!1017682) (not e!838089))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99759 (_ BitVec 32)) SeekEntryResult!12402)

(assert (=> b!1496242 (= res!1017682 (= (seekEntryOrOpen!0 (select (arr!48139 a!2862) j!93) a!2862 mask!2687) (Found!12402 j!93)))))

(declare-fun b!1496243 () Bool)

(declare-fun res!1017691 () Bool)

(declare-fun e!838088 () Bool)

(assert (=> b!1496243 (=> (not res!1017691) (not e!838088))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1496243 (= res!1017691 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496244 () Bool)

(declare-fun e!838084 () Bool)

(assert (=> b!1496244 (= e!838084 e!838086)))

(declare-fun res!1017694 () Bool)

(assert (=> b!1496244 (=> (not res!1017694) (not e!838086))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496244 (= res!1017694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48139 a!2862) j!93) mask!2687) (select (arr!48139 a!2862) j!93) a!2862 mask!2687) lt!652012))))

(assert (=> b!1496244 (= lt!652012 (Intermediate!12402 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!652008 () array!99759)

(declare-fun b!1496245 () Bool)

(declare-fun lt!652010 () SeekEntryResult!12402)

(declare-fun lt!652006 () (_ BitVec 64))

(assert (=> b!1496245 (= e!838090 (not (= lt!652010 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652009 lt!652006 lt!652008 mask!2687))))))

(declare-fun b!1496246 () Bool)

(declare-fun res!1017689 () Bool)

(assert (=> b!1496246 (=> (not res!1017689) (not e!838085))))

(assert (=> b!1496246 (= res!1017689 (and (= (size!48690 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48690 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48690 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496247 () Bool)

(declare-fun res!1017683 () Bool)

(assert (=> b!1496247 (=> (not res!1017683) (not e!838085))))

(declare-datatypes ((List!34820 0))(
  ( (Nil!34817) (Cons!34816 (h!36214 (_ BitVec 64)) (t!49521 List!34820)) )
))
(declare-fun arrayNoDuplicates!0 (array!99759 (_ BitVec 32) List!34820) Bool)

(assert (=> b!1496247 (= res!1017683 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34817))))

(declare-fun b!1496248 () Bool)

(declare-fun res!1017684 () Bool)

(assert (=> b!1496248 (=> (not res!1017684) (not e!838085))))

(assert (=> b!1496248 (= res!1017684 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48690 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48690 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48690 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496249 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99759 (_ BitVec 32)) SeekEntryResult!12402)

(assert (=> b!1496249 (= e!838090 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652009 intermediateAfterIndex!19 lt!652006 lt!652008 mask!2687) (seekEntryOrOpen!0 lt!652006 lt!652008 mask!2687))))))

(declare-fun e!838083 () Bool)

(declare-fun b!1496250 () Bool)

(assert (=> b!1496250 (= e!838083 (= lt!652010 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652006 lt!652008 mask!2687)))))

(declare-fun b!1496251 () Bool)

(declare-fun res!1017688 () Bool)

(assert (=> b!1496251 (=> (not res!1017688) (not e!838088))))

(assert (=> b!1496251 (= res!1017688 e!838083)))

(declare-fun c!138815 () Bool)

(assert (=> b!1496251 (= c!138815 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496252 () Bool)

(assert (=> b!1496252 (= e!838083 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652006 lt!652008 mask!2687) (seekEntryOrOpen!0 lt!652006 lt!652008 mask!2687)))))

(declare-fun b!1496236 () Bool)

(assert (=> b!1496236 (= e!838086 e!838088)))

(declare-fun res!1017690 () Bool)

(assert (=> b!1496236 (=> (not res!1017690) (not e!838088))))

(assert (=> b!1496236 (= res!1017690 (= lt!652010 (Intermediate!12402 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1496236 (= lt!652010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652006 mask!2687) lt!652006 lt!652008 mask!2687))))

(assert (=> b!1496236 (= lt!652006 (select (store (arr!48139 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1017692 () Bool)

(assert (=> start!127384 (=> (not res!1017692) (not e!838085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127384 (= res!1017692 (validMask!0 mask!2687))))

(assert (=> start!127384 e!838085))

(assert (=> start!127384 true))

(declare-fun array_inv!37084 (array!99759) Bool)

(assert (=> start!127384 (array_inv!37084 a!2862)))

(declare-fun b!1496253 () Bool)

(assert (=> b!1496253 (= e!838085 e!838084)))

(declare-fun res!1017687 () Bool)

(assert (=> b!1496253 (=> (not res!1017687) (not e!838084))))

(assert (=> b!1496253 (= res!1017687 (= (select (store (arr!48139 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496253 (= lt!652008 (array!99760 (store (arr!48139 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48690 a!2862)))))

(declare-fun b!1496254 () Bool)

(assert (=> b!1496254 (= e!838088 (not e!838082))))

(declare-fun res!1017680 () Bool)

(assert (=> b!1496254 (=> res!1017680 e!838082)))

(assert (=> b!1496254 (= res!1017680 (or (and (= (select (arr!48139 a!2862) index!646) (select (store (arr!48139 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48139 a!2862) index!646) (select (arr!48139 a!2862) j!93))) (= (select (arr!48139 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496254 e!838089))

(declare-fun res!1017696 () Bool)

(assert (=> b!1496254 (=> (not res!1017696) (not e!838089))))

(assert (=> b!1496254 (= res!1017696 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50092 0))(
  ( (Unit!50093) )
))
(declare-fun lt!652007 () Unit!50092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50092)

(assert (=> b!1496254 (= lt!652007 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!127384 res!1017692) b!1496246))

(assert (= (and b!1496246 res!1017689) b!1496241))

(assert (= (and b!1496241 res!1017695) b!1496239))

(assert (= (and b!1496239 res!1017686) b!1496237))

(assert (= (and b!1496237 res!1017681) b!1496247))

(assert (= (and b!1496247 res!1017683) b!1496248))

(assert (= (and b!1496248 res!1017684) b!1496253))

(assert (= (and b!1496253 res!1017687) b!1496244))

(assert (= (and b!1496244 res!1017694) b!1496233))

(assert (= (and b!1496233 res!1017685) b!1496236))

(assert (= (and b!1496236 res!1017690) b!1496251))

(assert (= (and b!1496251 c!138815) b!1496250))

(assert (= (and b!1496251 (not c!138815)) b!1496252))

(assert (= (and b!1496251 res!1017688) b!1496243))

(assert (= (and b!1496243 res!1017691) b!1496254))

(assert (= (and b!1496254 res!1017696) b!1496242))

(assert (= (and b!1496242 res!1017682) b!1496234))

(assert (= (and b!1496254 (not res!1017680)) b!1496240))

(assert (= (and b!1496240 (not res!1017679)) b!1496235))

(assert (= (and b!1496235 (not res!1017693)) b!1496238))

(assert (= (and b!1496238 c!138814) b!1496245))

(assert (= (and b!1496238 (not c!138814)) b!1496249))

(declare-fun m!1379493 () Bool)

(assert (=> b!1496234 m!1379493))

(declare-fun m!1379495 () Bool)

(assert (=> b!1496234 m!1379495))

(declare-fun m!1379497 () Bool)

(assert (=> b!1496252 m!1379497))

(declare-fun m!1379499 () Bool)

(assert (=> b!1496252 m!1379499))

(declare-fun m!1379501 () Bool)

(assert (=> b!1496237 m!1379501))

(declare-fun m!1379503 () Bool)

(assert (=> b!1496245 m!1379503))

(assert (=> b!1496233 m!1379495))

(assert (=> b!1496233 m!1379495))

(declare-fun m!1379505 () Bool)

(assert (=> b!1496233 m!1379505))

(declare-fun m!1379507 () Bool)

(assert (=> b!1496253 m!1379507))

(declare-fun m!1379509 () Bool)

(assert (=> b!1496253 m!1379509))

(declare-fun m!1379511 () Bool)

(assert (=> b!1496236 m!1379511))

(assert (=> b!1496236 m!1379511))

(declare-fun m!1379513 () Bool)

(assert (=> b!1496236 m!1379513))

(assert (=> b!1496236 m!1379507))

(declare-fun m!1379515 () Bool)

(assert (=> b!1496236 m!1379515))

(assert (=> b!1496235 m!1379495))

(assert (=> b!1496235 m!1379495))

(declare-fun m!1379517 () Bool)

(assert (=> b!1496235 m!1379517))

(declare-fun m!1379519 () Bool)

(assert (=> b!1496249 m!1379519))

(assert (=> b!1496249 m!1379499))

(declare-fun m!1379521 () Bool)

(assert (=> b!1496240 m!1379521))

(declare-fun m!1379523 () Bool)

(assert (=> b!1496241 m!1379523))

(assert (=> b!1496241 m!1379523))

(declare-fun m!1379525 () Bool)

(assert (=> b!1496241 m!1379525))

(declare-fun m!1379527 () Bool)

(assert (=> start!127384 m!1379527))

(declare-fun m!1379529 () Bool)

(assert (=> start!127384 m!1379529))

(declare-fun m!1379531 () Bool)

(assert (=> b!1496247 m!1379531))

(assert (=> b!1496244 m!1379495))

(assert (=> b!1496244 m!1379495))

(declare-fun m!1379533 () Bool)

(assert (=> b!1496244 m!1379533))

(assert (=> b!1496244 m!1379533))

(assert (=> b!1496244 m!1379495))

(declare-fun m!1379535 () Bool)

(assert (=> b!1496244 m!1379535))

(assert (=> b!1496239 m!1379495))

(assert (=> b!1496239 m!1379495))

(declare-fun m!1379537 () Bool)

(assert (=> b!1496239 m!1379537))

(assert (=> b!1496242 m!1379495))

(assert (=> b!1496242 m!1379495))

(declare-fun m!1379539 () Bool)

(assert (=> b!1496242 m!1379539))

(declare-fun m!1379541 () Bool)

(assert (=> b!1496254 m!1379541))

(assert (=> b!1496254 m!1379507))

(declare-fun m!1379543 () Bool)

(assert (=> b!1496254 m!1379543))

(declare-fun m!1379545 () Bool)

(assert (=> b!1496254 m!1379545))

(declare-fun m!1379547 () Bool)

(assert (=> b!1496254 m!1379547))

(assert (=> b!1496254 m!1379495))

(declare-fun m!1379549 () Bool)

(assert (=> b!1496250 m!1379549))

(push 1)

