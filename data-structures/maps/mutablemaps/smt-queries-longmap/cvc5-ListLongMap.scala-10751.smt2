; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125806 () Bool)

(assert start!125806)

(declare-fun b!1471566 () Bool)

(declare-fun res!999444 () Bool)

(declare-fun e!826013 () Bool)

(assert (=> b!1471566 (=> (not res!999444) (not e!826013))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471566 (= res!999444 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471567 () Bool)

(declare-fun res!999430 () Bool)

(declare-fun e!826009 () Bool)

(assert (=> b!1471567 (=> (not res!999430) (not e!826009))))

(declare-datatypes ((array!99057 0))(
  ( (array!99058 (arr!47809 (Array (_ BitVec 32) (_ BitVec 64))) (size!48360 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99057)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471567 (= res!999430 (validKeyInArray!0 (select (arr!47809 a!2862) j!93)))))

(declare-fun b!1471568 () Bool)

(declare-fun res!999441 () Bool)

(assert (=> b!1471568 (=> (not res!999441) (not e!826009))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99057 (_ BitVec 32)) Bool)

(assert (=> b!1471568 (= res!999441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471569 () Bool)

(declare-fun res!999431 () Bool)

(declare-fun e!826012 () Bool)

(assert (=> b!1471569 (=> (not res!999431) (not e!826012))))

(declare-datatypes ((SeekEntryResult!12072 0))(
  ( (MissingZero!12072 (index!50679 (_ BitVec 32))) (Found!12072 (index!50680 (_ BitVec 32))) (Intermediate!12072 (undefined!12884 Bool) (index!50681 (_ BitVec 32)) (x!132270 (_ BitVec 32))) (Undefined!12072) (MissingVacant!12072 (index!50682 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99057 (_ BitVec 32)) SeekEntryResult!12072)

(assert (=> b!1471569 (= res!999431 (= (seekEntryOrOpen!0 (select (arr!47809 a!2862) j!93) a!2862 mask!2687) (Found!12072 j!93)))))

(declare-fun b!1471570 () Bool)

(declare-fun e!826007 () Bool)

(assert (=> b!1471570 (= e!826007 e!826013)))

(declare-fun res!999432 () Bool)

(assert (=> b!1471570 (=> (not res!999432) (not e!826013))))

(declare-fun lt!643280 () SeekEntryResult!12072)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1471570 (= res!999432 (= lt!643280 (Intermediate!12072 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643282 () (_ BitVec 64))

(declare-fun lt!643279 () array!99057)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99057 (_ BitVec 32)) SeekEntryResult!12072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471570 (= lt!643280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643282 mask!2687) lt!643282 lt!643279 mask!2687))))

(assert (=> b!1471570 (= lt!643282 (select (store (arr!47809 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471571 () Bool)

(declare-fun e!826010 () Bool)

(assert (=> b!1471571 (= e!826010 e!826007)))

(declare-fun res!999438 () Bool)

(assert (=> b!1471571 (=> (not res!999438) (not e!826007))))

(declare-fun lt!643281 () SeekEntryResult!12072)

(assert (=> b!1471571 (= res!999438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47809 a!2862) j!93) mask!2687) (select (arr!47809 a!2862) j!93) a!2862 mask!2687) lt!643281))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1471571 (= lt!643281 (Intermediate!12072 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!826011 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1471572 () Bool)

(assert (=> b!1471572 (= e!826011 (= lt!643280 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643282 lt!643279 mask!2687)))))

(declare-fun b!1471573 () Bool)

(declare-fun res!999439 () Bool)

(assert (=> b!1471573 (=> (not res!999439) (not e!826009))))

(assert (=> b!1471573 (= res!999439 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48360 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48360 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48360 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471574 () Bool)

(declare-fun res!999436 () Bool)

(assert (=> b!1471574 (=> (not res!999436) (not e!826009))))

(declare-datatypes ((List!34490 0))(
  ( (Nil!34487) (Cons!34486 (h!35842 (_ BitVec 64)) (t!49191 List!34490)) )
))
(declare-fun arrayNoDuplicates!0 (array!99057 (_ BitVec 32) List!34490) Bool)

(assert (=> b!1471574 (= res!999436 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34487))))

(declare-fun res!999434 () Bool)

(assert (=> start!125806 (=> (not res!999434) (not e!826009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125806 (= res!999434 (validMask!0 mask!2687))))

(assert (=> start!125806 e!826009))

(assert (=> start!125806 true))

(declare-fun array_inv!36754 (array!99057) Bool)

(assert (=> start!125806 (array_inv!36754 a!2862)))

(declare-fun b!1471575 () Bool)

(declare-fun res!999440 () Bool)

(assert (=> b!1471575 (=> (not res!999440) (not e!826009))))

(assert (=> b!1471575 (= res!999440 (validKeyInArray!0 (select (arr!47809 a!2862) i!1006)))))

(declare-fun b!1471576 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99057 (_ BitVec 32)) SeekEntryResult!12072)

(assert (=> b!1471576 (= e!826011 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643282 lt!643279 mask!2687) (seekEntryOrOpen!0 lt!643282 lt!643279 mask!2687)))))

(declare-fun b!1471577 () Bool)

(assert (=> b!1471577 (= e!826012 (or (= (select (arr!47809 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47809 a!2862) intermediateBeforeIndex!19) (select (arr!47809 a!2862) j!93))))))

(declare-fun b!1471578 () Bool)

(declare-fun res!999433 () Bool)

(assert (=> b!1471578 (=> (not res!999433) (not e!826009))))

(assert (=> b!1471578 (= res!999433 (and (= (size!48360 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48360 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48360 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471579 () Bool)

(declare-fun res!999437 () Bool)

(assert (=> b!1471579 (=> (not res!999437) (not e!826013))))

(assert (=> b!1471579 (= res!999437 e!826011)))

(declare-fun c!135584 () Bool)

(assert (=> b!1471579 (= c!135584 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471580 () Bool)

(assert (=> b!1471580 (= e!826009 e!826010)))

(declare-fun res!999435 () Bool)

(assert (=> b!1471580 (=> (not res!999435) (not e!826010))))

(assert (=> b!1471580 (= res!999435 (= (select (store (arr!47809 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471580 (= lt!643279 (array!99058 (store (arr!47809 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48360 a!2862)))))

(declare-fun b!1471581 () Bool)

(declare-fun res!999442 () Bool)

(assert (=> b!1471581 (=> (not res!999442) (not e!826007))))

(assert (=> b!1471581 (= res!999442 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47809 a!2862) j!93) a!2862 mask!2687) lt!643281))))

(declare-fun b!1471582 () Bool)

(assert (=> b!1471582 (= e!826013 (not true))))

(assert (=> b!1471582 e!826012))

(declare-fun res!999443 () Bool)

(assert (=> b!1471582 (=> (not res!999443) (not e!826012))))

(assert (=> b!1471582 (= res!999443 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49432 0))(
  ( (Unit!49433) )
))
(declare-fun lt!643278 () Unit!49432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49432)

(assert (=> b!1471582 (= lt!643278 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125806 res!999434) b!1471578))

(assert (= (and b!1471578 res!999433) b!1471575))

(assert (= (and b!1471575 res!999440) b!1471567))

(assert (= (and b!1471567 res!999430) b!1471568))

(assert (= (and b!1471568 res!999441) b!1471574))

(assert (= (and b!1471574 res!999436) b!1471573))

(assert (= (and b!1471573 res!999439) b!1471580))

(assert (= (and b!1471580 res!999435) b!1471571))

(assert (= (and b!1471571 res!999438) b!1471581))

(assert (= (and b!1471581 res!999442) b!1471570))

(assert (= (and b!1471570 res!999432) b!1471579))

(assert (= (and b!1471579 c!135584) b!1471572))

(assert (= (and b!1471579 (not c!135584)) b!1471576))

(assert (= (and b!1471579 res!999437) b!1471566))

(assert (= (and b!1471566 res!999444) b!1471582))

(assert (= (and b!1471582 res!999443) b!1471569))

(assert (= (and b!1471569 res!999431) b!1471577))

(declare-fun m!1358415 () Bool)

(assert (=> b!1471581 m!1358415))

(assert (=> b!1471581 m!1358415))

(declare-fun m!1358417 () Bool)

(assert (=> b!1471581 m!1358417))

(declare-fun m!1358419 () Bool)

(assert (=> b!1471580 m!1358419))

(declare-fun m!1358421 () Bool)

(assert (=> b!1471580 m!1358421))

(declare-fun m!1358423 () Bool)

(assert (=> b!1471572 m!1358423))

(declare-fun m!1358425 () Bool)

(assert (=> b!1471570 m!1358425))

(assert (=> b!1471570 m!1358425))

(declare-fun m!1358427 () Bool)

(assert (=> b!1471570 m!1358427))

(assert (=> b!1471570 m!1358419))

(declare-fun m!1358429 () Bool)

(assert (=> b!1471570 m!1358429))

(declare-fun m!1358431 () Bool)

(assert (=> start!125806 m!1358431))

(declare-fun m!1358433 () Bool)

(assert (=> start!125806 m!1358433))

(assert (=> b!1471567 m!1358415))

(assert (=> b!1471567 m!1358415))

(declare-fun m!1358435 () Bool)

(assert (=> b!1471567 m!1358435))

(declare-fun m!1358437 () Bool)

(assert (=> b!1471577 m!1358437))

(assert (=> b!1471577 m!1358415))

(declare-fun m!1358439 () Bool)

(assert (=> b!1471575 m!1358439))

(assert (=> b!1471575 m!1358439))

(declare-fun m!1358441 () Bool)

(assert (=> b!1471575 m!1358441))

(declare-fun m!1358443 () Bool)

(assert (=> b!1471574 m!1358443))

(declare-fun m!1358445 () Bool)

(assert (=> b!1471576 m!1358445))

(declare-fun m!1358447 () Bool)

(assert (=> b!1471576 m!1358447))

(declare-fun m!1358449 () Bool)

(assert (=> b!1471568 m!1358449))

(declare-fun m!1358451 () Bool)

(assert (=> b!1471582 m!1358451))

(declare-fun m!1358453 () Bool)

(assert (=> b!1471582 m!1358453))

(assert (=> b!1471571 m!1358415))

(assert (=> b!1471571 m!1358415))

(declare-fun m!1358455 () Bool)

(assert (=> b!1471571 m!1358455))

(assert (=> b!1471571 m!1358455))

(assert (=> b!1471571 m!1358415))

(declare-fun m!1358457 () Bool)

(assert (=> b!1471571 m!1358457))

(assert (=> b!1471569 m!1358415))

(assert (=> b!1471569 m!1358415))

(declare-fun m!1358459 () Bool)

(assert (=> b!1471569 m!1358459))

(push 1)

