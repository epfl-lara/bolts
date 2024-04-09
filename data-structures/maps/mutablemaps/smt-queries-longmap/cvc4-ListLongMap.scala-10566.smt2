; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124580 () Bool)

(assert start!124580)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1441174 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97945 0))(
  ( (array!97946 (arr!47256 (Array (_ BitVec 32) (_ BitVec 64))) (size!47807 (_ BitVec 32))) )
))
(declare-fun lt!633112 () array!97945)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!633109 () (_ BitVec 64))

(declare-fun e!812472 () Bool)

(declare-datatypes ((SeekEntryResult!11531 0))(
  ( (MissingZero!11531 (index!48515 (_ BitVec 32))) (Found!11531 (index!48516 (_ BitVec 32))) (Intermediate!11531 (undefined!12343 Bool) (index!48517 (_ BitVec 32)) (x!130231 (_ BitVec 32))) (Undefined!11531) (MissingVacant!11531 (index!48518 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97945 (_ BitVec 32)) SeekEntryResult!11531)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97945 (_ BitVec 32)) SeekEntryResult!11531)

(assert (=> b!1441174 (= e!812472 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633109 lt!633112 mask!2687) (seekEntryOrOpen!0 lt!633109 lt!633112 mask!2687))))))

(declare-fun b!1441175 () Bool)

(declare-fun res!973662 () Bool)

(declare-fun e!812474 () Bool)

(assert (=> b!1441175 (=> (not res!973662) (not e!812474))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun a!2862 () array!97945)

(assert (=> b!1441175 (= res!973662 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47807 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47807 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47807 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!973659 () Bool)

(assert (=> start!124580 (=> (not res!973659) (not e!812474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124580 (= res!973659 (validMask!0 mask!2687))))

(assert (=> start!124580 e!812474))

(assert (=> start!124580 true))

(declare-fun array_inv!36201 (array!97945) Bool)

(assert (=> start!124580 (array_inv!36201 a!2862)))

(declare-fun b!1441176 () Bool)

(declare-fun res!973666 () Bool)

(assert (=> b!1441176 (=> (not res!973666) (not e!812474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97945 (_ BitVec 32)) Bool)

(assert (=> b!1441176 (= res!973666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441177 () Bool)

(declare-fun res!973667 () Bool)

(assert (=> b!1441177 (=> (not res!973667) (not e!812474))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441177 (= res!973667 (and (= (size!47807 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47807 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47807 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441178 () Bool)

(declare-fun e!812471 () Bool)

(declare-fun e!812473 () Bool)

(assert (=> b!1441178 (= e!812471 e!812473)))

(declare-fun res!973660 () Bool)

(assert (=> b!1441178 (=> (not res!973660) (not e!812473))))

(declare-fun lt!633110 () SeekEntryResult!11531)

(assert (=> b!1441178 (= res!973660 (= lt!633110 (Intermediate!11531 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97945 (_ BitVec 32)) SeekEntryResult!11531)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441178 (= lt!633110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633109 mask!2687) lt!633109 lt!633112 mask!2687))))

(assert (=> b!1441178 (= lt!633109 (select (store (arr!47256 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441179 () Bool)

(declare-fun res!973663 () Bool)

(assert (=> b!1441179 (=> (not res!973663) (not e!812474))))

(declare-datatypes ((List!33937 0))(
  ( (Nil!33934) (Cons!33933 (h!35283 (_ BitVec 64)) (t!48638 List!33937)) )
))
(declare-fun arrayNoDuplicates!0 (array!97945 (_ BitVec 32) List!33937) Bool)

(assert (=> b!1441179 (= res!973663 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33934))))

(declare-fun b!1441180 () Bool)

(declare-fun res!973665 () Bool)

(assert (=> b!1441180 (=> (not res!973665) (not e!812471))))

(declare-fun lt!633111 () SeekEntryResult!11531)

(assert (=> b!1441180 (= res!973665 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47256 a!2862) j!93) a!2862 mask!2687) lt!633111))))

(declare-fun b!1441181 () Bool)

(assert (=> b!1441181 (= e!812472 (not (= lt!633110 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633109 lt!633112 mask!2687))))))

(declare-fun b!1441182 () Bool)

(declare-fun res!973661 () Bool)

(assert (=> b!1441182 (=> (not res!973661) (not e!812474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441182 (= res!973661 (validKeyInArray!0 (select (arr!47256 a!2862) i!1006)))))

(declare-fun b!1441183 () Bool)

(declare-fun e!812469 () Bool)

(assert (=> b!1441183 (= e!812474 e!812469)))

(declare-fun res!973658 () Bool)

(assert (=> b!1441183 (=> (not res!973658) (not e!812469))))

(assert (=> b!1441183 (= res!973658 (= (select (store (arr!47256 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441183 (= lt!633112 (array!97946 (store (arr!47256 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47807 a!2862)))))

(declare-fun b!1441184 () Bool)

(assert (=> b!1441184 (= e!812469 e!812471)))

(declare-fun res!973664 () Bool)

(assert (=> b!1441184 (=> (not res!973664) (not e!812471))))

(assert (=> b!1441184 (= res!973664 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47256 a!2862) j!93) mask!2687) (select (arr!47256 a!2862) j!93) a!2862 mask!2687) lt!633111))))

(assert (=> b!1441184 (= lt!633111 (Intermediate!11531 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441185 () Bool)

(declare-fun res!973668 () Bool)

(assert (=> b!1441185 (=> (not res!973668) (not e!812474))))

(assert (=> b!1441185 (= res!973668 (validKeyInArray!0 (select (arr!47256 a!2862) j!93)))))

(declare-fun b!1441186 () Bool)

(assert (=> b!1441186 (= e!812473 false)))

(declare-fun lt!633108 () Bool)

(assert (=> b!1441186 (= lt!633108 e!812472)))

(declare-fun c!133271 () Bool)

(assert (=> b!1441186 (= c!133271 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124580 res!973659) b!1441177))

(assert (= (and b!1441177 res!973667) b!1441182))

(assert (= (and b!1441182 res!973661) b!1441185))

(assert (= (and b!1441185 res!973668) b!1441176))

(assert (= (and b!1441176 res!973666) b!1441179))

(assert (= (and b!1441179 res!973663) b!1441175))

(assert (= (and b!1441175 res!973662) b!1441183))

(assert (= (and b!1441183 res!973658) b!1441184))

(assert (= (and b!1441184 res!973664) b!1441180))

(assert (= (and b!1441180 res!973665) b!1441178))

(assert (= (and b!1441178 res!973660) b!1441186))

(assert (= (and b!1441186 c!133271) b!1441181))

(assert (= (and b!1441186 (not c!133271)) b!1441174))

(declare-fun m!1330459 () Bool)

(assert (=> b!1441179 m!1330459))

(declare-fun m!1330461 () Bool)

(assert (=> b!1441176 m!1330461))

(declare-fun m!1330463 () Bool)

(assert (=> b!1441181 m!1330463))

(declare-fun m!1330465 () Bool)

(assert (=> b!1441183 m!1330465))

(declare-fun m!1330467 () Bool)

(assert (=> b!1441183 m!1330467))

(declare-fun m!1330469 () Bool)

(assert (=> b!1441185 m!1330469))

(assert (=> b!1441185 m!1330469))

(declare-fun m!1330471 () Bool)

(assert (=> b!1441185 m!1330471))

(declare-fun m!1330473 () Bool)

(assert (=> b!1441182 m!1330473))

(assert (=> b!1441182 m!1330473))

(declare-fun m!1330475 () Bool)

(assert (=> b!1441182 m!1330475))

(declare-fun m!1330477 () Bool)

(assert (=> b!1441174 m!1330477))

(declare-fun m!1330479 () Bool)

(assert (=> b!1441174 m!1330479))

(declare-fun m!1330481 () Bool)

(assert (=> b!1441178 m!1330481))

(assert (=> b!1441178 m!1330481))

(declare-fun m!1330483 () Bool)

(assert (=> b!1441178 m!1330483))

(assert (=> b!1441178 m!1330465))

(declare-fun m!1330485 () Bool)

(assert (=> b!1441178 m!1330485))

(declare-fun m!1330487 () Bool)

(assert (=> start!124580 m!1330487))

(declare-fun m!1330489 () Bool)

(assert (=> start!124580 m!1330489))

(assert (=> b!1441184 m!1330469))

(assert (=> b!1441184 m!1330469))

(declare-fun m!1330491 () Bool)

(assert (=> b!1441184 m!1330491))

(assert (=> b!1441184 m!1330491))

(assert (=> b!1441184 m!1330469))

(declare-fun m!1330493 () Bool)

(assert (=> b!1441184 m!1330493))

(assert (=> b!1441180 m!1330469))

(assert (=> b!1441180 m!1330469))

(declare-fun m!1330495 () Bool)

(assert (=> b!1441180 m!1330495))

(push 1)

