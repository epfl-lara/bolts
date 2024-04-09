; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125318 () Bool)

(assert start!125318)

(declare-fun b!1462495 () Bool)

(declare-fun res!992018 () Bool)

(declare-fun e!822115 () Bool)

(assert (=> b!1462495 (=> (not res!992018) (not e!822115))))

(declare-datatypes ((array!98683 0))(
  ( (array!98684 (arr!47625 (Array (_ BitVec 32) (_ BitVec 64))) (size!48176 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98683)

(declare-datatypes ((List!34306 0))(
  ( (Nil!34303) (Cons!34302 (h!35652 (_ BitVec 64)) (t!49007 List!34306)) )
))
(declare-fun arrayNoDuplicates!0 (array!98683 (_ BitVec 32) List!34306) Bool)

(assert (=> b!1462495 (= res!992018 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34303))))

(declare-fun b!1462496 () Bool)

(declare-fun res!992015 () Bool)

(assert (=> b!1462496 (=> (not res!992015) (not e!822115))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462496 (= res!992015 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48176 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48176 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48176 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462497 () Bool)

(declare-fun res!992023 () Bool)

(assert (=> b!1462497 (=> (not res!992023) (not e!822115))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462497 (= res!992023 (validKeyInArray!0 (select (arr!47625 a!2862) j!93)))))

(declare-fun b!1462498 () Bool)

(declare-fun e!822117 () Bool)

(declare-fun lt!640434 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!640437 () array!98683)

(declare-fun lt!640438 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11900 0))(
  ( (MissingZero!11900 (index!49991 (_ BitVec 32))) (Found!11900 (index!49992 (_ BitVec 32))) (Intermediate!11900 (undefined!12712 Bool) (index!49993 (_ BitVec 32)) (x!131584 (_ BitVec 32))) (Undefined!11900) (MissingVacant!11900 (index!49994 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98683 (_ BitVec 32)) SeekEntryResult!11900)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98683 (_ BitVec 32)) SeekEntryResult!11900)

(assert (=> b!1462498 (= e!822117 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640434 intermediateAfterIndex!19 lt!640438 lt!640437 mask!2687) (seekEntryOrOpen!0 lt!640438 lt!640437 mask!2687))))))

(declare-fun b!1462499 () Bool)

(declare-fun res!992025 () Bool)

(assert (=> b!1462499 (=> (not res!992025) (not e!822115))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462499 (= res!992025 (and (= (size!48176 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48176 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48176 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462500 () Bool)

(declare-fun res!992020 () Bool)

(declare-fun e!822121 () Bool)

(assert (=> b!1462500 (=> (not res!992020) (not e!822121))))

(assert (=> b!1462500 (= res!992020 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462501 () Bool)

(declare-fun e!822119 () Bool)

(assert (=> b!1462501 (= e!822115 e!822119)))

(declare-fun res!992028 () Bool)

(assert (=> b!1462501 (=> (not res!992028) (not e!822119))))

(assert (=> b!1462501 (= res!992028 (= (select (store (arr!47625 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462501 (= lt!640437 (array!98684 (store (arr!47625 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48176 a!2862)))))

(declare-fun b!1462502 () Bool)

(declare-fun res!992022 () Bool)

(declare-fun e!822114 () Bool)

(assert (=> b!1462502 (=> res!992022 e!822114)))

(declare-fun lt!640432 () SeekEntryResult!11900)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98683 (_ BitVec 32)) SeekEntryResult!11900)

(assert (=> b!1462502 (= res!992022 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640434 (select (arr!47625 a!2862) j!93) a!2862 mask!2687) lt!640432)))))

(declare-fun b!1462504 () Bool)

(declare-fun res!992012 () Bool)

(assert (=> b!1462504 (=> (not res!992012) (not e!822115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98683 (_ BitVec 32)) Bool)

(assert (=> b!1462504 (= res!992012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462505 () Bool)

(declare-fun e!822122 () Bool)

(declare-fun lt!640433 () SeekEntryResult!11900)

(assert (=> b!1462505 (= e!822122 (= lt!640433 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640438 lt!640437 mask!2687)))))

(declare-fun b!1462506 () Bool)

(declare-fun e!822116 () Bool)

(assert (=> b!1462506 (= e!822116 (or (= (select (arr!47625 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47625 a!2862) intermediateBeforeIndex!19) (select (arr!47625 a!2862) j!93))))))

(declare-fun b!1462507 () Bool)

(declare-fun e!822120 () Bool)

(assert (=> b!1462507 (= e!822121 (not e!822120))))

(declare-fun res!992021 () Bool)

(assert (=> b!1462507 (=> res!992021 e!822120)))

(assert (=> b!1462507 (= res!992021 (or (and (= (select (arr!47625 a!2862) index!646) (select (store (arr!47625 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47625 a!2862) index!646) (select (arr!47625 a!2862) j!93))) (= (select (arr!47625 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462507 e!822116))

(declare-fun res!992027 () Bool)

(assert (=> b!1462507 (=> (not res!992027) (not e!822116))))

(assert (=> b!1462507 (= res!992027 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49244 0))(
  ( (Unit!49245) )
))
(declare-fun lt!640435 () Unit!49244)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49244)

(assert (=> b!1462507 (= lt!640435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462508 () Bool)

(assert (=> b!1462508 (= e!822120 e!822114)))

(declare-fun res!992024 () Bool)

(assert (=> b!1462508 (=> res!992024 e!822114)))

(assert (=> b!1462508 (= res!992024 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640434 #b00000000000000000000000000000000) (bvsge lt!640434 (size!48176 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462508 (= lt!640434 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462509 () Bool)

(declare-fun res!992013 () Bool)

(assert (=> b!1462509 (=> (not res!992013) (not e!822121))))

(assert (=> b!1462509 (= res!992013 e!822122)))

(declare-fun c!134755 () Bool)

(assert (=> b!1462509 (= c!134755 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462510 () Bool)

(assert (=> b!1462510 (= e!822122 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640438 lt!640437 mask!2687) (seekEntryOrOpen!0 lt!640438 lt!640437 mask!2687)))))

(declare-fun b!1462511 () Bool)

(declare-fun res!992011 () Bool)

(declare-fun e!822118 () Bool)

(assert (=> b!1462511 (=> (not res!992011) (not e!822118))))

(assert (=> b!1462511 (= res!992011 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47625 a!2862) j!93) a!2862 mask!2687) lt!640432))))

(declare-fun b!1462512 () Bool)

(assert (=> b!1462512 (= e!822114 true)))

(declare-fun lt!640436 () Bool)

(assert (=> b!1462512 (= lt!640436 e!822117)))

(declare-fun c!134756 () Bool)

(assert (=> b!1462512 (= c!134756 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462503 () Bool)

(assert (=> b!1462503 (= e!822118 e!822121)))

(declare-fun res!992026 () Bool)

(assert (=> b!1462503 (=> (not res!992026) (not e!822121))))

(assert (=> b!1462503 (= res!992026 (= lt!640433 (Intermediate!11900 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462503 (= lt!640433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640438 mask!2687) lt!640438 lt!640437 mask!2687))))

(assert (=> b!1462503 (= lt!640438 (select (store (arr!47625 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!992017 () Bool)

(assert (=> start!125318 (=> (not res!992017) (not e!822115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125318 (= res!992017 (validMask!0 mask!2687))))

(assert (=> start!125318 e!822115))

(assert (=> start!125318 true))

(declare-fun array_inv!36570 (array!98683) Bool)

(assert (=> start!125318 (array_inv!36570 a!2862)))

(declare-fun b!1462513 () Bool)

(assert (=> b!1462513 (= e!822117 (not (= lt!640433 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640434 lt!640438 lt!640437 mask!2687))))))

(declare-fun b!1462514 () Bool)

(declare-fun res!992014 () Bool)

(assert (=> b!1462514 (=> (not res!992014) (not e!822115))))

(assert (=> b!1462514 (= res!992014 (validKeyInArray!0 (select (arr!47625 a!2862) i!1006)))))

(declare-fun b!1462515 () Bool)

(assert (=> b!1462515 (= e!822119 e!822118)))

(declare-fun res!992016 () Bool)

(assert (=> b!1462515 (=> (not res!992016) (not e!822118))))

(assert (=> b!1462515 (= res!992016 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47625 a!2862) j!93) mask!2687) (select (arr!47625 a!2862) j!93) a!2862 mask!2687) lt!640432))))

(assert (=> b!1462515 (= lt!640432 (Intermediate!11900 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462516 () Bool)

(declare-fun res!992019 () Bool)

(assert (=> b!1462516 (=> (not res!992019) (not e!822116))))

(assert (=> b!1462516 (= res!992019 (= (seekEntryOrOpen!0 (select (arr!47625 a!2862) j!93) a!2862 mask!2687) (Found!11900 j!93)))))

(assert (= (and start!125318 res!992017) b!1462499))

(assert (= (and b!1462499 res!992025) b!1462514))

(assert (= (and b!1462514 res!992014) b!1462497))

(assert (= (and b!1462497 res!992023) b!1462504))

(assert (= (and b!1462504 res!992012) b!1462495))

(assert (= (and b!1462495 res!992018) b!1462496))

(assert (= (and b!1462496 res!992015) b!1462501))

(assert (= (and b!1462501 res!992028) b!1462515))

(assert (= (and b!1462515 res!992016) b!1462511))

(assert (= (and b!1462511 res!992011) b!1462503))

(assert (= (and b!1462503 res!992026) b!1462509))

(assert (= (and b!1462509 c!134755) b!1462505))

(assert (= (and b!1462509 (not c!134755)) b!1462510))

(assert (= (and b!1462509 res!992013) b!1462500))

(assert (= (and b!1462500 res!992020) b!1462507))

(assert (= (and b!1462507 res!992027) b!1462516))

(assert (= (and b!1462516 res!992019) b!1462506))

(assert (= (and b!1462507 (not res!992021)) b!1462508))

(assert (= (and b!1462508 (not res!992024)) b!1462502))

(assert (= (and b!1462502 (not res!992022)) b!1462512))

(assert (= (and b!1462512 c!134756) b!1462513))

(assert (= (and b!1462512 (not c!134756)) b!1462498))

(declare-fun m!1349993 () Bool)

(assert (=> b!1462501 m!1349993))

(declare-fun m!1349995 () Bool)

(assert (=> b!1462501 m!1349995))

(declare-fun m!1349997 () Bool)

(assert (=> b!1462515 m!1349997))

(assert (=> b!1462515 m!1349997))

(declare-fun m!1349999 () Bool)

(assert (=> b!1462515 m!1349999))

(assert (=> b!1462515 m!1349999))

(assert (=> b!1462515 m!1349997))

(declare-fun m!1350001 () Bool)

(assert (=> b!1462515 m!1350001))

(declare-fun m!1350003 () Bool)

(assert (=> b!1462504 m!1350003))

(declare-fun m!1350005 () Bool)

(assert (=> b!1462505 m!1350005))

(declare-fun m!1350007 () Bool)

(assert (=> b!1462495 m!1350007))

(declare-fun m!1350009 () Bool)

(assert (=> b!1462507 m!1350009))

(assert (=> b!1462507 m!1349993))

(declare-fun m!1350011 () Bool)

(assert (=> b!1462507 m!1350011))

(declare-fun m!1350013 () Bool)

(assert (=> b!1462507 m!1350013))

(declare-fun m!1350015 () Bool)

(assert (=> b!1462507 m!1350015))

(assert (=> b!1462507 m!1349997))

(assert (=> b!1462502 m!1349997))

(assert (=> b!1462502 m!1349997))

(declare-fun m!1350017 () Bool)

(assert (=> b!1462502 m!1350017))

(declare-fun m!1350019 () Bool)

(assert (=> start!125318 m!1350019))

(declare-fun m!1350021 () Bool)

(assert (=> start!125318 m!1350021))

(declare-fun m!1350023 () Bool)

(assert (=> b!1462508 m!1350023))

(assert (=> b!1462516 m!1349997))

(assert (=> b!1462516 m!1349997))

(declare-fun m!1350025 () Bool)

(assert (=> b!1462516 m!1350025))

(declare-fun m!1350027 () Bool)

(assert (=> b!1462513 m!1350027))

(declare-fun m!1350029 () Bool)

(assert (=> b!1462503 m!1350029))

(assert (=> b!1462503 m!1350029))

(declare-fun m!1350031 () Bool)

(assert (=> b!1462503 m!1350031))

(assert (=> b!1462503 m!1349993))

(declare-fun m!1350033 () Bool)

(assert (=> b!1462503 m!1350033))

(declare-fun m!1350035 () Bool)

(assert (=> b!1462506 m!1350035))

(assert (=> b!1462506 m!1349997))

(declare-fun m!1350037 () Bool)

(assert (=> b!1462510 m!1350037))

(declare-fun m!1350039 () Bool)

(assert (=> b!1462510 m!1350039))

(declare-fun m!1350041 () Bool)

(assert (=> b!1462498 m!1350041))

(assert (=> b!1462498 m!1350039))

(assert (=> b!1462497 m!1349997))

(assert (=> b!1462497 m!1349997))

(declare-fun m!1350043 () Bool)

(assert (=> b!1462497 m!1350043))

(declare-fun m!1350045 () Bool)

(assert (=> b!1462514 m!1350045))

(assert (=> b!1462514 m!1350045))

(declare-fun m!1350047 () Bool)

(assert (=> b!1462514 m!1350047))

(assert (=> b!1462511 m!1349997))

(assert (=> b!1462511 m!1349997))

(declare-fun m!1350049 () Bool)

(assert (=> b!1462511 m!1350049))

(push 1)

