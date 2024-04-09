; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124960 () Bool)

(assert start!124960)

(declare-fun b!1451346 () Bool)

(declare-fun res!982694 () Bool)

(declare-fun e!817202 () Bool)

(assert (=> b!1451346 (=> (not res!982694) (not e!817202))))

(declare-datatypes ((array!98325 0))(
  ( (array!98326 (arr!47446 (Array (_ BitVec 32) (_ BitVec 64))) (size!47997 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98325)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451346 (= res!982694 (validKeyInArray!0 (select (arr!47446 a!2862) j!93)))))

(declare-fun b!1451347 () Bool)

(declare-fun res!982695 () Bool)

(assert (=> b!1451347 (=> (not res!982695) (not e!817202))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451347 (= res!982695 (validKeyInArray!0 (select (arr!47446 a!2862) i!1006)))))

(declare-fun b!1451348 () Bool)

(declare-fun res!982704 () Bool)

(assert (=> b!1451348 (=> (not res!982704) (not e!817202))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1451348 (= res!982704 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47997 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47997 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47997 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!636592 () (_ BitVec 64))

(declare-fun b!1451349 () Bool)

(declare-fun lt!636588 () array!98325)

(declare-fun e!817200 () Bool)

(declare-datatypes ((SeekEntryResult!11721 0))(
  ( (MissingZero!11721 (index!49275 (_ BitVec 32))) (Found!11721 (index!49276 (_ BitVec 32))) (Intermediate!11721 (undefined!12533 Bool) (index!49277 (_ BitVec 32)) (x!130933 (_ BitVec 32))) (Undefined!11721) (MissingVacant!11721 (index!49278 (_ BitVec 32))) )
))
(declare-fun lt!636589 () SeekEntryResult!11721)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98325 (_ BitVec 32)) SeekEntryResult!11721)

(assert (=> b!1451349 (= e!817200 (= lt!636589 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636592 lt!636588 mask!2687)))))

(declare-fun b!1451350 () Bool)

(declare-fun res!982690 () Bool)

(declare-fun e!817197 () Bool)

(assert (=> b!1451350 (=> (not res!982690) (not e!817197))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98325 (_ BitVec 32)) SeekEntryResult!11721)

(assert (=> b!1451350 (= res!982690 (= (seekEntryOrOpen!0 (select (arr!47446 a!2862) j!93) a!2862 mask!2687) (Found!11721 j!93)))))

(declare-fun b!1451351 () Bool)

(declare-fun e!817201 () Bool)

(declare-fun e!817198 () Bool)

(assert (=> b!1451351 (= e!817201 e!817198)))

(declare-fun res!982697 () Bool)

(assert (=> b!1451351 (=> (not res!982697) (not e!817198))))

(assert (=> b!1451351 (= res!982697 (= lt!636589 (Intermediate!11721 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451351 (= lt!636589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636592 mask!2687) lt!636592 lt!636588 mask!2687))))

(assert (=> b!1451351 (= lt!636592 (select (store (arr!47446 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451352 () Bool)

(declare-fun res!982696 () Bool)

(assert (=> b!1451352 (=> (not res!982696) (not e!817202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98325 (_ BitVec 32)) Bool)

(assert (=> b!1451352 (= res!982696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451354 () Bool)

(declare-fun res!982701 () Bool)

(assert (=> b!1451354 (=> (not res!982701) (not e!817198))))

(assert (=> b!1451354 (= res!982701 e!817200)))

(declare-fun c!133841 () Bool)

(assert (=> b!1451354 (= c!133841 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451355 () Bool)

(declare-fun res!982703 () Bool)

(assert (=> b!1451355 (=> (not res!982703) (not e!817198))))

(assert (=> b!1451355 (= res!982703 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451356 () Bool)

(declare-fun res!982693 () Bool)

(assert (=> b!1451356 (=> (not res!982693) (not e!817202))))

(assert (=> b!1451356 (= res!982693 (and (= (size!47997 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47997 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47997 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451357 () Bool)

(declare-fun res!982698 () Bool)

(assert (=> b!1451357 (=> (not res!982698) (not e!817202))))

(declare-datatypes ((List!34127 0))(
  ( (Nil!34124) (Cons!34123 (h!35473 (_ BitVec 64)) (t!48828 List!34127)) )
))
(declare-fun arrayNoDuplicates!0 (array!98325 (_ BitVec 32) List!34127) Bool)

(assert (=> b!1451357 (= res!982698 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34124))))

(declare-fun b!1451358 () Bool)

(assert (=> b!1451358 (= e!817197 (and (or (= (select (arr!47446 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47446 a!2862) intermediateBeforeIndex!19) (select (arr!47446 a!2862) j!93))) (or (and (= (select (arr!47446 a!2862) index!646) (select (store (arr!47446 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47446 a!2862) index!646) (select (arr!47446 a!2862) j!93))) (= (select (arr!47446 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47446 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451359 () Bool)

(declare-fun res!982691 () Bool)

(assert (=> b!1451359 (=> (not res!982691) (not e!817201))))

(declare-fun lt!636590 () SeekEntryResult!11721)

(assert (=> b!1451359 (= res!982691 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47446 a!2862) j!93) a!2862 mask!2687) lt!636590))))

(declare-fun b!1451360 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98325 (_ BitVec 32)) SeekEntryResult!11721)

(assert (=> b!1451360 (= e!817200 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636592 lt!636588 mask!2687) (seekEntryOrOpen!0 lt!636592 lt!636588 mask!2687)))))

(declare-fun b!1451361 () Bool)

(assert (=> b!1451361 (= e!817198 (not true))))

(assert (=> b!1451361 e!817197))

(declare-fun res!982699 () Bool)

(assert (=> b!1451361 (=> (not res!982699) (not e!817197))))

(assert (=> b!1451361 (= res!982699 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48886 0))(
  ( (Unit!48887) )
))
(declare-fun lt!636591 () Unit!48886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48886)

(assert (=> b!1451361 (= lt!636591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451362 () Bool)

(declare-fun e!817196 () Bool)

(assert (=> b!1451362 (= e!817196 e!817201)))

(declare-fun res!982700 () Bool)

(assert (=> b!1451362 (=> (not res!982700) (not e!817201))))

(assert (=> b!1451362 (= res!982700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47446 a!2862) j!93) mask!2687) (select (arr!47446 a!2862) j!93) a!2862 mask!2687) lt!636590))))

(assert (=> b!1451362 (= lt!636590 (Intermediate!11721 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!982702 () Bool)

(assert (=> start!124960 (=> (not res!982702) (not e!817202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124960 (= res!982702 (validMask!0 mask!2687))))

(assert (=> start!124960 e!817202))

(assert (=> start!124960 true))

(declare-fun array_inv!36391 (array!98325) Bool)

(assert (=> start!124960 (array_inv!36391 a!2862)))

(declare-fun b!1451353 () Bool)

(assert (=> b!1451353 (= e!817202 e!817196)))

(declare-fun res!982692 () Bool)

(assert (=> b!1451353 (=> (not res!982692) (not e!817196))))

(assert (=> b!1451353 (= res!982692 (= (select (store (arr!47446 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451353 (= lt!636588 (array!98326 (store (arr!47446 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47997 a!2862)))))

(assert (= (and start!124960 res!982702) b!1451356))

(assert (= (and b!1451356 res!982693) b!1451347))

(assert (= (and b!1451347 res!982695) b!1451346))

(assert (= (and b!1451346 res!982694) b!1451352))

(assert (= (and b!1451352 res!982696) b!1451357))

(assert (= (and b!1451357 res!982698) b!1451348))

(assert (= (and b!1451348 res!982704) b!1451353))

(assert (= (and b!1451353 res!982692) b!1451362))

(assert (= (and b!1451362 res!982700) b!1451359))

(assert (= (and b!1451359 res!982691) b!1451351))

(assert (= (and b!1451351 res!982697) b!1451354))

(assert (= (and b!1451354 c!133841) b!1451349))

(assert (= (and b!1451354 (not c!133841)) b!1451360))

(assert (= (and b!1451354 res!982701) b!1451355))

(assert (= (and b!1451355 res!982703) b!1451361))

(assert (= (and b!1451361 res!982699) b!1451350))

(assert (= (and b!1451350 res!982690) b!1451358))

(declare-fun m!1340001 () Bool)

(assert (=> b!1451350 m!1340001))

(assert (=> b!1451350 m!1340001))

(declare-fun m!1340003 () Bool)

(assert (=> b!1451350 m!1340003))

(declare-fun m!1340005 () Bool)

(assert (=> b!1451353 m!1340005))

(declare-fun m!1340007 () Bool)

(assert (=> b!1451353 m!1340007))

(declare-fun m!1340009 () Bool)

(assert (=> b!1451352 m!1340009))

(declare-fun m!1340011 () Bool)

(assert (=> b!1451347 m!1340011))

(assert (=> b!1451347 m!1340011))

(declare-fun m!1340013 () Bool)

(assert (=> b!1451347 m!1340013))

(assert (=> b!1451359 m!1340001))

(assert (=> b!1451359 m!1340001))

(declare-fun m!1340015 () Bool)

(assert (=> b!1451359 m!1340015))

(assert (=> b!1451362 m!1340001))

(assert (=> b!1451362 m!1340001))

(declare-fun m!1340017 () Bool)

(assert (=> b!1451362 m!1340017))

(assert (=> b!1451362 m!1340017))

(assert (=> b!1451362 m!1340001))

(declare-fun m!1340019 () Bool)

(assert (=> b!1451362 m!1340019))

(assert (=> b!1451358 m!1340005))

(declare-fun m!1340021 () Bool)

(assert (=> b!1451358 m!1340021))

(declare-fun m!1340023 () Bool)

(assert (=> b!1451358 m!1340023))

(declare-fun m!1340025 () Bool)

(assert (=> b!1451358 m!1340025))

(assert (=> b!1451358 m!1340001))

(declare-fun m!1340027 () Bool)

(assert (=> b!1451361 m!1340027))

(declare-fun m!1340029 () Bool)

(assert (=> b!1451361 m!1340029))

(declare-fun m!1340031 () Bool)

(assert (=> b!1451357 m!1340031))

(declare-fun m!1340033 () Bool)

(assert (=> b!1451351 m!1340033))

(assert (=> b!1451351 m!1340033))

(declare-fun m!1340035 () Bool)

(assert (=> b!1451351 m!1340035))

(assert (=> b!1451351 m!1340005))

(declare-fun m!1340037 () Bool)

(assert (=> b!1451351 m!1340037))

(declare-fun m!1340039 () Bool)

(assert (=> start!124960 m!1340039))

(declare-fun m!1340041 () Bool)

(assert (=> start!124960 m!1340041))

(declare-fun m!1340043 () Bool)

(assert (=> b!1451360 m!1340043))

(declare-fun m!1340045 () Bool)

(assert (=> b!1451360 m!1340045))

(assert (=> b!1451346 m!1340001))

(assert (=> b!1451346 m!1340001))

(declare-fun m!1340047 () Bool)

(assert (=> b!1451346 m!1340047))

(declare-fun m!1340049 () Bool)

(assert (=> b!1451349 m!1340049))

(push 1)

