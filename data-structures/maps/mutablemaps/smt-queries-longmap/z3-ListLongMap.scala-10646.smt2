; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125058 () Bool)

(assert start!125058)

(declare-fun b!1454086 () Bool)

(declare-fun res!985090 () Bool)

(declare-fun e!818390 () Bool)

(assert (=> b!1454086 (=> (not res!985090) (not e!818390))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98423 0))(
  ( (array!98424 (arr!47495 (Array (_ BitVec 32) (_ BitVec 64))) (size!48046 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98423)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454086 (= res!985090 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48046 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48046 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48046 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454087 () Bool)

(declare-fun res!985096 () Bool)

(declare-fun e!818387 () Bool)

(assert (=> b!1454087 (=> (not res!985096) (not e!818387))))

(declare-fun e!818393 () Bool)

(assert (=> b!1454087 (= res!985096 e!818393)))

(declare-fun c!134012 () Bool)

(assert (=> b!1454087 (= c!134012 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454088 () Bool)

(declare-fun lt!637428 () array!98423)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637433 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11770 0))(
  ( (MissingZero!11770 (index!49471 (_ BitVec 32))) (Found!11770 (index!49472 (_ BitVec 32))) (Intermediate!11770 (undefined!12582 Bool) (index!49473 (_ BitVec 32)) (x!131110 (_ BitVec 32))) (Undefined!11770) (MissingVacant!11770 (index!49474 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98423 (_ BitVec 32)) SeekEntryResult!11770)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98423 (_ BitVec 32)) SeekEntryResult!11770)

(assert (=> b!1454088 (= e!818393 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637433 lt!637428 mask!2687) (seekEntryOrOpen!0 lt!637433 lt!637428 mask!2687)))))

(declare-fun b!1454089 () Bool)

(declare-fun e!818392 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454089 (= e!818392 (and (or (= (select (arr!47495 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47495 a!2862) intermediateBeforeIndex!19) (select (arr!47495 a!2862) j!93))) (let ((bdg!53038 (select (store (arr!47495 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47495 a!2862) index!646) bdg!53038) (= (select (arr!47495 a!2862) index!646) (select (arr!47495 a!2862) j!93))) (= (select (arr!47495 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53038 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454090 () Bool)

(declare-fun e!818385 () Bool)

(assert (=> b!1454090 (= e!818387 (not e!818385))))

(declare-fun res!985102 () Bool)

(assert (=> b!1454090 (=> res!985102 e!818385)))

(assert (=> b!1454090 (= res!985102 (or (and (= (select (arr!47495 a!2862) index!646) (select (store (arr!47495 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47495 a!2862) index!646) (select (arr!47495 a!2862) j!93))) (= (select (arr!47495 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454090 e!818392))

(declare-fun res!985104 () Bool)

(assert (=> b!1454090 (=> (not res!985104) (not e!818392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98423 (_ BitVec 32)) Bool)

(assert (=> b!1454090 (= res!985104 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48984 0))(
  ( (Unit!48985) )
))
(declare-fun lt!637435 () Unit!48984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48984)

(assert (=> b!1454090 (= lt!637435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!637434 () SeekEntryResult!11770)

(declare-fun b!1454091 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98423 (_ BitVec 32)) SeekEntryResult!11770)

(assert (=> b!1454091 (= e!818393 (= lt!637434 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637433 lt!637428 mask!2687)))))

(declare-fun b!1454092 () Bool)

(declare-fun res!985099 () Bool)

(assert (=> b!1454092 (=> (not res!985099) (not e!818390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454092 (= res!985099 (validKeyInArray!0 (select (arr!47495 a!2862) i!1006)))))

(declare-fun b!1454093 () Bool)

(declare-fun e!818386 () Bool)

(assert (=> b!1454093 (= e!818386 e!818387)))

(declare-fun res!985091 () Bool)

(assert (=> b!1454093 (=> (not res!985091) (not e!818387))))

(assert (=> b!1454093 (= res!985091 (= lt!637434 (Intermediate!11770 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454093 (= lt!637434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637433 mask!2687) lt!637433 lt!637428 mask!2687))))

(assert (=> b!1454093 (= lt!637433 (select (store (arr!47495 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454094 () Bool)

(declare-fun res!985101 () Bool)

(assert (=> b!1454094 (=> (not res!985101) (not e!818390))))

(assert (=> b!1454094 (= res!985101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454095 () Bool)

(declare-fun e!818388 () Bool)

(assert (=> b!1454095 (= e!818388 e!818386)))

(declare-fun res!985106 () Bool)

(assert (=> b!1454095 (=> (not res!985106) (not e!818386))))

(declare-fun lt!637430 () SeekEntryResult!11770)

(assert (=> b!1454095 (= res!985106 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47495 a!2862) j!93) mask!2687) (select (arr!47495 a!2862) j!93) a!2862 mask!2687) lt!637430))))

(assert (=> b!1454095 (= lt!637430 (Intermediate!11770 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454096 () Bool)

(declare-fun res!985093 () Bool)

(assert (=> b!1454096 (=> (not res!985093) (not e!818386))))

(assert (=> b!1454096 (= res!985093 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47495 a!2862) j!93) a!2862 mask!2687) lt!637430))))

(declare-fun b!1454097 () Bool)

(declare-fun e!818384 () Bool)

(assert (=> b!1454097 (= e!818384 true)))

(declare-fun lt!637432 () Bool)

(declare-fun e!818389 () Bool)

(assert (=> b!1454097 (= lt!637432 e!818389)))

(declare-fun c!134011 () Bool)

(assert (=> b!1454097 (= c!134011 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454098 () Bool)

(declare-fun res!985100 () Bool)

(assert (=> b!1454098 (=> (not res!985100) (not e!818387))))

(assert (=> b!1454098 (= res!985100 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454099 () Bool)

(assert (=> b!1454099 (= e!818390 e!818388)))

(declare-fun res!985095 () Bool)

(assert (=> b!1454099 (=> (not res!985095) (not e!818388))))

(assert (=> b!1454099 (= res!985095 (= (select (store (arr!47495 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454099 (= lt!637428 (array!98424 (store (arr!47495 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48046 a!2862)))))

(declare-fun b!1454100 () Bool)

(declare-fun res!985105 () Bool)

(assert (=> b!1454100 (=> (not res!985105) (not e!818390))))

(assert (=> b!1454100 (= res!985105 (validKeyInArray!0 (select (arr!47495 a!2862) j!93)))))

(declare-fun b!1454101 () Bool)

(declare-fun res!985098 () Bool)

(assert (=> b!1454101 (=> res!985098 e!818384)))

(declare-fun lt!637429 () (_ BitVec 32))

(assert (=> b!1454101 (= res!985098 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637429 (select (arr!47495 a!2862) j!93) a!2862 mask!2687) lt!637430)))))

(declare-fun b!1454102 () Bool)

(declare-fun res!985097 () Bool)

(assert (=> b!1454102 (=> (not res!985097) (not e!818390))))

(assert (=> b!1454102 (= res!985097 (and (= (size!48046 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48046 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48046 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454103 () Bool)

(declare-fun res!985103 () Bool)

(assert (=> b!1454103 (=> (not res!985103) (not e!818390))))

(declare-datatypes ((List!34176 0))(
  ( (Nil!34173) (Cons!34172 (h!35522 (_ BitVec 64)) (t!48877 List!34176)) )
))
(declare-fun arrayNoDuplicates!0 (array!98423 (_ BitVec 32) List!34176) Bool)

(assert (=> b!1454103 (= res!985103 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34173))))

(declare-fun b!1454104 () Bool)

(assert (=> b!1454104 (= e!818389 (not (= lt!637434 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637429 lt!637433 lt!637428 mask!2687))))))

(declare-fun b!1454105 () Bool)

(declare-fun lt!637431 () SeekEntryResult!11770)

(assert (=> b!1454105 (= e!818389 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637429 intermediateAfterIndex!19 lt!637433 lt!637428 mask!2687) lt!637431)))))

(declare-fun b!1454107 () Bool)

(declare-fun res!985094 () Bool)

(assert (=> b!1454107 (=> (not res!985094) (not e!818392))))

(assert (=> b!1454107 (= res!985094 (= (seekEntryOrOpen!0 (select (arr!47495 a!2862) j!93) a!2862 mask!2687) (Found!11770 j!93)))))

(declare-fun res!985107 () Bool)

(assert (=> start!125058 (=> (not res!985107) (not e!818390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125058 (= res!985107 (validMask!0 mask!2687))))

(assert (=> start!125058 e!818390))

(assert (=> start!125058 true))

(declare-fun array_inv!36440 (array!98423) Bool)

(assert (=> start!125058 (array_inv!36440 a!2862)))

(declare-fun b!1454106 () Bool)

(assert (=> b!1454106 (= e!818385 e!818384)))

(declare-fun res!985092 () Bool)

(assert (=> b!1454106 (=> res!985092 e!818384)))

(assert (=> b!1454106 (= res!985092 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637429 #b00000000000000000000000000000000) (bvsge lt!637429 (size!48046 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454106 (= lt!637429 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454106 (= lt!637431 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637433 lt!637428 mask!2687))))

(assert (=> b!1454106 (= lt!637431 (seekEntryOrOpen!0 lt!637433 lt!637428 mask!2687))))

(assert (= (and start!125058 res!985107) b!1454102))

(assert (= (and b!1454102 res!985097) b!1454092))

(assert (= (and b!1454092 res!985099) b!1454100))

(assert (= (and b!1454100 res!985105) b!1454094))

(assert (= (and b!1454094 res!985101) b!1454103))

(assert (= (and b!1454103 res!985103) b!1454086))

(assert (= (and b!1454086 res!985090) b!1454099))

(assert (= (and b!1454099 res!985095) b!1454095))

(assert (= (and b!1454095 res!985106) b!1454096))

(assert (= (and b!1454096 res!985093) b!1454093))

(assert (= (and b!1454093 res!985091) b!1454087))

(assert (= (and b!1454087 c!134012) b!1454091))

(assert (= (and b!1454087 (not c!134012)) b!1454088))

(assert (= (and b!1454087 res!985096) b!1454098))

(assert (= (and b!1454098 res!985100) b!1454090))

(assert (= (and b!1454090 res!985104) b!1454107))

(assert (= (and b!1454107 res!985094) b!1454089))

(assert (= (and b!1454090 (not res!985102)) b!1454106))

(assert (= (and b!1454106 (not res!985092)) b!1454101))

(assert (= (and b!1454101 (not res!985098)) b!1454097))

(assert (= (and b!1454097 c!134011) b!1454104))

(assert (= (and b!1454097 (not c!134011)) b!1454105))

(declare-fun m!1342519 () Bool)

(assert (=> b!1454100 m!1342519))

(assert (=> b!1454100 m!1342519))

(declare-fun m!1342521 () Bool)

(assert (=> b!1454100 m!1342521))

(declare-fun m!1342523 () Bool)

(assert (=> b!1454104 m!1342523))

(declare-fun m!1342525 () Bool)

(assert (=> b!1454089 m!1342525))

(declare-fun m!1342527 () Bool)

(assert (=> b!1454089 m!1342527))

(declare-fun m!1342529 () Bool)

(assert (=> b!1454089 m!1342529))

(declare-fun m!1342531 () Bool)

(assert (=> b!1454089 m!1342531))

(assert (=> b!1454089 m!1342519))

(declare-fun m!1342533 () Bool)

(assert (=> b!1454088 m!1342533))

(declare-fun m!1342535 () Bool)

(assert (=> b!1454088 m!1342535))

(assert (=> b!1454096 m!1342519))

(assert (=> b!1454096 m!1342519))

(declare-fun m!1342537 () Bool)

(assert (=> b!1454096 m!1342537))

(declare-fun m!1342539 () Bool)

(assert (=> b!1454093 m!1342539))

(assert (=> b!1454093 m!1342539))

(declare-fun m!1342541 () Bool)

(assert (=> b!1454093 m!1342541))

(assert (=> b!1454093 m!1342525))

(declare-fun m!1342543 () Bool)

(assert (=> b!1454093 m!1342543))

(declare-fun m!1342545 () Bool)

(assert (=> b!1454103 m!1342545))

(declare-fun m!1342547 () Bool)

(assert (=> b!1454105 m!1342547))

(assert (=> b!1454101 m!1342519))

(assert (=> b!1454101 m!1342519))

(declare-fun m!1342549 () Bool)

(assert (=> b!1454101 m!1342549))

(declare-fun m!1342551 () Bool)

(assert (=> b!1454092 m!1342551))

(assert (=> b!1454092 m!1342551))

(declare-fun m!1342553 () Bool)

(assert (=> b!1454092 m!1342553))

(declare-fun m!1342555 () Bool)

(assert (=> start!125058 m!1342555))

(declare-fun m!1342557 () Bool)

(assert (=> start!125058 m!1342557))

(declare-fun m!1342559 () Bool)

(assert (=> b!1454090 m!1342559))

(assert (=> b!1454090 m!1342525))

(assert (=> b!1454090 m!1342529))

(assert (=> b!1454090 m!1342531))

(declare-fun m!1342561 () Bool)

(assert (=> b!1454090 m!1342561))

(assert (=> b!1454090 m!1342519))

(declare-fun m!1342563 () Bool)

(assert (=> b!1454106 m!1342563))

(assert (=> b!1454106 m!1342533))

(assert (=> b!1454106 m!1342535))

(assert (=> b!1454107 m!1342519))

(assert (=> b!1454107 m!1342519))

(declare-fun m!1342565 () Bool)

(assert (=> b!1454107 m!1342565))

(declare-fun m!1342567 () Bool)

(assert (=> b!1454091 m!1342567))

(assert (=> b!1454099 m!1342525))

(declare-fun m!1342569 () Bool)

(assert (=> b!1454099 m!1342569))

(assert (=> b!1454095 m!1342519))

(assert (=> b!1454095 m!1342519))

(declare-fun m!1342571 () Bool)

(assert (=> b!1454095 m!1342571))

(assert (=> b!1454095 m!1342571))

(assert (=> b!1454095 m!1342519))

(declare-fun m!1342573 () Bool)

(assert (=> b!1454095 m!1342573))

(declare-fun m!1342575 () Bool)

(assert (=> b!1454094 m!1342575))

(check-sat (not b!1454107) (not b!1454095) (not b!1454101) (not b!1454104) (not b!1454103) (not b!1454091) (not b!1454105) (not b!1454106) (not b!1454088) (not b!1454092) (not start!125058) (not b!1454100) (not b!1454090) (not b!1454093) (not b!1454094) (not b!1454096))
(check-sat)
