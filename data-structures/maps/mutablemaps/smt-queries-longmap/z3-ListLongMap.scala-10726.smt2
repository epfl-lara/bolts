; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125538 () Bool)

(assert start!125538)

(declare-fun b!1468124 () Bool)

(declare-fun e!824487 () Bool)

(assert (=> b!1468124 (= e!824487 false)))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11998 0))(
  ( (MissingZero!11998 (index!50383 (_ BitVec 32))) (Found!11998 (index!50384 (_ BitVec 32))) (Intermediate!11998 (undefined!12810 Bool) (index!50385 (_ BitVec 32)) (x!131978 (_ BitVec 32))) (Undefined!11998) (MissingVacant!11998 (index!50386 (_ BitVec 32))) )
))
(declare-fun lt!642178 () SeekEntryResult!11998)

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98903 0))(
  ( (array!98904 (arr!47735 (Array (_ BitVec 32) (_ BitVec 64))) (size!48286 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98903)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98903 (_ BitVec 32)) SeekEntryResult!11998)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468124 (= lt!642178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47735 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47735 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98904 (store (arr!47735 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48286 a!2862)) mask!2687))))

(declare-fun b!1468125 () Bool)

(declare-fun res!996779 () Bool)

(assert (=> b!1468125 (=> (not res!996779) (not e!824487))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642177 () SeekEntryResult!11998)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468125 (= res!996779 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47735 a!2862) j!93) a!2862 mask!2687) lt!642177))))

(declare-fun b!1468126 () Bool)

(declare-fun res!996774 () Bool)

(declare-fun e!824489 () Bool)

(assert (=> b!1468126 (=> (not res!996774) (not e!824489))))

(assert (=> b!1468126 (= res!996774 (and (= (size!48286 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48286 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48286 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468127 () Bool)

(declare-fun res!996772 () Bool)

(assert (=> b!1468127 (=> (not res!996772) (not e!824489))))

(declare-datatypes ((List!34416 0))(
  ( (Nil!34413) (Cons!34412 (h!35762 (_ BitVec 64)) (t!49117 List!34416)) )
))
(declare-fun arrayNoDuplicates!0 (array!98903 (_ BitVec 32) List!34416) Bool)

(assert (=> b!1468127 (= res!996772 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34413))))

(declare-fun b!1468128 () Bool)

(assert (=> b!1468128 (= e!824489 e!824487)))

(declare-fun res!996780 () Bool)

(assert (=> b!1468128 (=> (not res!996780) (not e!824487))))

(assert (=> b!1468128 (= res!996780 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47735 a!2862) j!93) mask!2687) (select (arr!47735 a!2862) j!93) a!2862 mask!2687) lt!642177))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468128 (= lt!642177 (Intermediate!11998 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468129 () Bool)

(declare-fun res!996777 () Bool)

(assert (=> b!1468129 (=> (not res!996777) (not e!824489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468129 (= res!996777 (validKeyInArray!0 (select (arr!47735 a!2862) i!1006)))))

(declare-fun b!1468130 () Bool)

(declare-fun res!996776 () Bool)

(assert (=> b!1468130 (=> (not res!996776) (not e!824489))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468130 (= res!996776 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48286 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48286 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48286 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47735 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468131 () Bool)

(declare-fun res!996778 () Bool)

(assert (=> b!1468131 (=> (not res!996778) (not e!824489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98903 (_ BitVec 32)) Bool)

(assert (=> b!1468131 (= res!996778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996775 () Bool)

(assert (=> start!125538 (=> (not res!996775) (not e!824489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125538 (= res!996775 (validMask!0 mask!2687))))

(assert (=> start!125538 e!824489))

(assert (=> start!125538 true))

(declare-fun array_inv!36680 (array!98903) Bool)

(assert (=> start!125538 (array_inv!36680 a!2862)))

(declare-fun b!1468132 () Bool)

(declare-fun res!996773 () Bool)

(assert (=> b!1468132 (=> (not res!996773) (not e!824489))))

(assert (=> b!1468132 (= res!996773 (validKeyInArray!0 (select (arr!47735 a!2862) j!93)))))

(assert (= (and start!125538 res!996775) b!1468126))

(assert (= (and b!1468126 res!996774) b!1468129))

(assert (= (and b!1468129 res!996777) b!1468132))

(assert (= (and b!1468132 res!996773) b!1468131))

(assert (= (and b!1468131 res!996778) b!1468127))

(assert (= (and b!1468127 res!996772) b!1468130))

(assert (= (and b!1468130 res!996776) b!1468128))

(assert (= (and b!1468128 res!996780) b!1468125))

(assert (= (and b!1468125 res!996779) b!1468124))

(declare-fun m!1355201 () Bool)

(assert (=> b!1468132 m!1355201))

(assert (=> b!1468132 m!1355201))

(declare-fun m!1355203 () Bool)

(assert (=> b!1468132 m!1355203))

(declare-fun m!1355205 () Bool)

(assert (=> b!1468129 m!1355205))

(assert (=> b!1468129 m!1355205))

(declare-fun m!1355207 () Bool)

(assert (=> b!1468129 m!1355207))

(declare-fun m!1355209 () Bool)

(assert (=> b!1468127 m!1355209))

(declare-fun m!1355211 () Bool)

(assert (=> b!1468131 m!1355211))

(declare-fun m!1355213 () Bool)

(assert (=> b!1468124 m!1355213))

(declare-fun m!1355215 () Bool)

(assert (=> b!1468124 m!1355215))

(assert (=> b!1468124 m!1355215))

(declare-fun m!1355217 () Bool)

(assert (=> b!1468124 m!1355217))

(assert (=> b!1468124 m!1355217))

(assert (=> b!1468124 m!1355215))

(declare-fun m!1355219 () Bool)

(assert (=> b!1468124 m!1355219))

(assert (=> b!1468130 m!1355213))

(declare-fun m!1355221 () Bool)

(assert (=> b!1468130 m!1355221))

(assert (=> b!1468125 m!1355201))

(assert (=> b!1468125 m!1355201))

(declare-fun m!1355223 () Bool)

(assert (=> b!1468125 m!1355223))

(assert (=> b!1468128 m!1355201))

(assert (=> b!1468128 m!1355201))

(declare-fun m!1355225 () Bool)

(assert (=> b!1468128 m!1355225))

(assert (=> b!1468128 m!1355225))

(assert (=> b!1468128 m!1355201))

(declare-fun m!1355227 () Bool)

(assert (=> b!1468128 m!1355227))

(declare-fun m!1355229 () Bool)

(assert (=> start!125538 m!1355229))

(declare-fun m!1355231 () Bool)

(assert (=> start!125538 m!1355231))

(check-sat (not b!1468128) (not b!1468132) (not b!1468129) (not b!1468124) (not b!1468127) (not b!1468131) (not start!125538) (not b!1468125))
(check-sat)
