; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124582 () Bool)

(assert start!124582)

(declare-fun b!1441213 () Bool)

(declare-fun e!812492 () Bool)

(declare-fun e!812488 () Bool)

(assert (=> b!1441213 (= e!812492 e!812488)))

(declare-fun res!973691 () Bool)

(assert (=> b!1441213 (=> (not res!973691) (not e!812488))))

(declare-datatypes ((SeekEntryResult!11532 0))(
  ( (MissingZero!11532 (index!48519 (_ BitVec 32))) (Found!11532 (index!48520 (_ BitVec 32))) (Intermediate!11532 (undefined!12344 Bool) (index!48521 (_ BitVec 32)) (x!130240 (_ BitVec 32))) (Undefined!11532) (MissingVacant!11532 (index!48522 (_ BitVec 32))) )
))
(declare-fun lt!633125 () SeekEntryResult!11532)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441213 (= res!973691 (= lt!633125 (Intermediate!11532 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!97947 0))(
  ( (array!97948 (arr!47257 (Array (_ BitVec 32) (_ BitVec 64))) (size!47808 (_ BitVec 32))) )
))
(declare-fun lt!633127 () array!97947)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!633123 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97947 (_ BitVec 32)) SeekEntryResult!11532)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441213 (= lt!633125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633123 mask!2687) lt!633123 lt!633127 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!97947)

(assert (=> b!1441213 (= lt!633123 (select (store (arr!47257 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441214 () Bool)

(declare-fun res!973698 () Bool)

(declare-fun e!812490 () Bool)

(assert (=> b!1441214 (=> (not res!973698) (not e!812490))))

(declare-datatypes ((List!33938 0))(
  ( (Nil!33935) (Cons!33934 (h!35284 (_ BitVec 64)) (t!48639 List!33938)) )
))
(declare-fun arrayNoDuplicates!0 (array!97947 (_ BitVec 32) List!33938) Bool)

(assert (=> b!1441214 (= res!973698 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33935))))

(declare-fun b!1441215 () Bool)

(declare-fun res!973693 () Bool)

(assert (=> b!1441215 (=> (not res!973693) (not e!812490))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1441215 (= res!973693 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47808 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47808 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47808 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441216 () Bool)

(declare-fun res!973694 () Bool)

(assert (=> b!1441216 (=> (not res!973694) (not e!812492))))

(declare-fun lt!633126 () SeekEntryResult!11532)

(assert (=> b!1441216 (= res!973694 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47257 a!2862) j!93) a!2862 mask!2687) lt!633126))))

(declare-fun res!973701 () Bool)

(assert (=> start!124582 (=> (not res!973701) (not e!812490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124582 (= res!973701 (validMask!0 mask!2687))))

(assert (=> start!124582 e!812490))

(assert (=> start!124582 true))

(declare-fun array_inv!36202 (array!97947) Bool)

(assert (=> start!124582 (array_inv!36202 a!2862)))

(declare-fun b!1441217 () Bool)

(assert (=> b!1441217 (= e!812488 false)))

(declare-fun lt!633124 () Bool)

(declare-fun e!812487 () Bool)

(assert (=> b!1441217 (= lt!633124 e!812487)))

(declare-fun c!133274 () Bool)

(assert (=> b!1441217 (= c!133274 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441218 () Bool)

(assert (=> b!1441218 (= e!812487 (not (= lt!633125 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633123 lt!633127 mask!2687))))))

(declare-fun b!1441219 () Bool)

(declare-fun res!973697 () Bool)

(assert (=> b!1441219 (=> (not res!973697) (not e!812490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441219 (= res!973697 (validKeyInArray!0 (select (arr!47257 a!2862) i!1006)))))

(declare-fun b!1441220 () Bool)

(declare-fun e!812489 () Bool)

(assert (=> b!1441220 (= e!812490 e!812489)))

(declare-fun res!973699 () Bool)

(assert (=> b!1441220 (=> (not res!973699) (not e!812489))))

(assert (=> b!1441220 (= res!973699 (= (select (store (arr!47257 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441220 (= lt!633127 (array!97948 (store (arr!47257 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47808 a!2862)))))

(declare-fun b!1441221 () Bool)

(assert (=> b!1441221 (= e!812489 e!812492)))

(declare-fun res!973700 () Bool)

(assert (=> b!1441221 (=> (not res!973700) (not e!812492))))

(assert (=> b!1441221 (= res!973700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47257 a!2862) j!93) mask!2687) (select (arr!47257 a!2862) j!93) a!2862 mask!2687) lt!633126))))

(assert (=> b!1441221 (= lt!633126 (Intermediate!11532 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441222 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97947 (_ BitVec 32)) SeekEntryResult!11532)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97947 (_ BitVec 32)) SeekEntryResult!11532)

(assert (=> b!1441222 (= e!812487 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633123 lt!633127 mask!2687) (seekEntryOrOpen!0 lt!633123 lt!633127 mask!2687))))))

(declare-fun b!1441223 () Bool)

(declare-fun res!973692 () Bool)

(assert (=> b!1441223 (=> (not res!973692) (not e!812490))))

(assert (=> b!1441223 (= res!973692 (validKeyInArray!0 (select (arr!47257 a!2862) j!93)))))

(declare-fun b!1441224 () Bool)

(declare-fun res!973695 () Bool)

(assert (=> b!1441224 (=> (not res!973695) (not e!812490))))

(assert (=> b!1441224 (= res!973695 (and (= (size!47808 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47808 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47808 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441225 () Bool)

(declare-fun res!973696 () Bool)

(assert (=> b!1441225 (=> (not res!973696) (not e!812490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97947 (_ BitVec 32)) Bool)

(assert (=> b!1441225 (= res!973696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124582 res!973701) b!1441224))

(assert (= (and b!1441224 res!973695) b!1441219))

(assert (= (and b!1441219 res!973697) b!1441223))

(assert (= (and b!1441223 res!973692) b!1441225))

(assert (= (and b!1441225 res!973696) b!1441214))

(assert (= (and b!1441214 res!973698) b!1441215))

(assert (= (and b!1441215 res!973693) b!1441220))

(assert (= (and b!1441220 res!973699) b!1441221))

(assert (= (and b!1441221 res!973700) b!1441216))

(assert (= (and b!1441216 res!973694) b!1441213))

(assert (= (and b!1441213 res!973691) b!1441217))

(assert (= (and b!1441217 c!133274) b!1441218))

(assert (= (and b!1441217 (not c!133274)) b!1441222))

(declare-fun m!1330497 () Bool)

(assert (=> b!1441220 m!1330497))

(declare-fun m!1330499 () Bool)

(assert (=> b!1441220 m!1330499))

(declare-fun m!1330501 () Bool)

(assert (=> b!1441219 m!1330501))

(assert (=> b!1441219 m!1330501))

(declare-fun m!1330503 () Bool)

(assert (=> b!1441219 m!1330503))

(declare-fun m!1330505 () Bool)

(assert (=> b!1441223 m!1330505))

(assert (=> b!1441223 m!1330505))

(declare-fun m!1330507 () Bool)

(assert (=> b!1441223 m!1330507))

(declare-fun m!1330509 () Bool)

(assert (=> b!1441225 m!1330509))

(declare-fun m!1330511 () Bool)

(assert (=> b!1441214 m!1330511))

(assert (=> b!1441221 m!1330505))

(assert (=> b!1441221 m!1330505))

(declare-fun m!1330513 () Bool)

(assert (=> b!1441221 m!1330513))

(assert (=> b!1441221 m!1330513))

(assert (=> b!1441221 m!1330505))

(declare-fun m!1330515 () Bool)

(assert (=> b!1441221 m!1330515))

(declare-fun m!1330517 () Bool)

(assert (=> b!1441218 m!1330517))

(declare-fun m!1330519 () Bool)

(assert (=> b!1441213 m!1330519))

(assert (=> b!1441213 m!1330519))

(declare-fun m!1330521 () Bool)

(assert (=> b!1441213 m!1330521))

(assert (=> b!1441213 m!1330497))

(declare-fun m!1330523 () Bool)

(assert (=> b!1441213 m!1330523))

(assert (=> b!1441216 m!1330505))

(assert (=> b!1441216 m!1330505))

(declare-fun m!1330525 () Bool)

(assert (=> b!1441216 m!1330525))

(declare-fun m!1330527 () Bool)

(assert (=> b!1441222 m!1330527))

(declare-fun m!1330529 () Bool)

(assert (=> b!1441222 m!1330529))

(declare-fun m!1330531 () Bool)

(assert (=> start!124582 m!1330531))

(declare-fun m!1330533 () Bool)

(assert (=> start!124582 m!1330533))

(push 1)

