; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125566 () Bool)

(assert start!125566)

(declare-fun b!1468502 () Bool)

(declare-fun res!997156 () Bool)

(declare-fun e!824614 () Bool)

(assert (=> b!1468502 (=> (not res!997156) (not e!824614))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98931 0))(
  ( (array!98932 (arr!47749 (Array (_ BitVec 32) (_ BitVec 64))) (size!48300 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98931)

(assert (=> b!1468502 (= res!997156 (and (= (size!48300 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48300 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48300 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468503 () Bool)

(declare-fun e!824615 () Bool)

(assert (=> b!1468503 (= e!824615 false)))

(declare-datatypes ((SeekEntryResult!12012 0))(
  ( (MissingZero!12012 (index!50439 (_ BitVec 32))) (Found!12012 (index!50440 (_ BitVec 32))) (Intermediate!12012 (undefined!12824 Bool) (index!50441 (_ BitVec 32)) (x!132032 (_ BitVec 32))) (Undefined!12012) (MissingVacant!12012 (index!50442 (_ BitVec 32))) )
))
(declare-fun lt!642262 () SeekEntryResult!12012)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98931 (_ BitVec 32)) SeekEntryResult!12012)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468503 (= lt!642262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47749 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47749 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98932 (store (arr!47749 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48300 a!2862)) mask!2687))))

(declare-fun b!1468504 () Bool)

(declare-fun res!997158 () Bool)

(assert (=> b!1468504 (=> (not res!997158) (not e!824614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468504 (= res!997158 (validKeyInArray!0 (select (arr!47749 a!2862) i!1006)))))

(declare-fun b!1468505 () Bool)

(declare-fun res!997155 () Bool)

(assert (=> b!1468505 (=> (not res!997155) (not e!824614))))

(declare-datatypes ((List!34430 0))(
  ( (Nil!34427) (Cons!34426 (h!35776 (_ BitVec 64)) (t!49131 List!34430)) )
))
(declare-fun arrayNoDuplicates!0 (array!98931 (_ BitVec 32) List!34430) Bool)

(assert (=> b!1468505 (= res!997155 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34427))))

(declare-fun b!1468506 () Bool)

(declare-fun res!997157 () Bool)

(assert (=> b!1468506 (=> (not res!997157) (not e!824614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98931 (_ BitVec 32)) Bool)

(assert (=> b!1468506 (= res!997157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468507 () Bool)

(declare-fun res!997150 () Bool)

(assert (=> b!1468507 (=> (not res!997150) (not e!824615))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!642261 () SeekEntryResult!12012)

(assert (=> b!1468507 (= res!997150 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47749 a!2862) j!93) a!2862 mask!2687) lt!642261))))

(declare-fun b!1468508 () Bool)

(declare-fun res!997154 () Bool)

(assert (=> b!1468508 (=> (not res!997154) (not e!824614))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468508 (= res!997154 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48300 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48300 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48300 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47749 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!997151 () Bool)

(assert (=> start!125566 (=> (not res!997151) (not e!824614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125566 (= res!997151 (validMask!0 mask!2687))))

(assert (=> start!125566 e!824614))

(assert (=> start!125566 true))

(declare-fun array_inv!36694 (array!98931) Bool)

(assert (=> start!125566 (array_inv!36694 a!2862)))

(declare-fun b!1468509 () Bool)

(declare-fun res!997153 () Bool)

(assert (=> b!1468509 (=> (not res!997153) (not e!824614))))

(assert (=> b!1468509 (= res!997153 (validKeyInArray!0 (select (arr!47749 a!2862) j!93)))))

(declare-fun b!1468510 () Bool)

(assert (=> b!1468510 (= e!824614 e!824615)))

(declare-fun res!997152 () Bool)

(assert (=> b!1468510 (=> (not res!997152) (not e!824615))))

(assert (=> b!1468510 (= res!997152 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47749 a!2862) j!93) mask!2687) (select (arr!47749 a!2862) j!93) a!2862 mask!2687) lt!642261))))

(assert (=> b!1468510 (= lt!642261 (Intermediate!12012 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125566 res!997151) b!1468502))

(assert (= (and b!1468502 res!997156) b!1468504))

(assert (= (and b!1468504 res!997158) b!1468509))

(assert (= (and b!1468509 res!997153) b!1468506))

(assert (= (and b!1468506 res!997157) b!1468505))

(assert (= (and b!1468505 res!997155) b!1468508))

(assert (= (and b!1468508 res!997154) b!1468510))

(assert (= (and b!1468510 res!997152) b!1468507))

(assert (= (and b!1468507 res!997150) b!1468503))

(declare-fun m!1355649 () Bool)

(assert (=> b!1468506 m!1355649))

(declare-fun m!1355651 () Bool)

(assert (=> b!1468505 m!1355651))

(declare-fun m!1355653 () Bool)

(assert (=> b!1468509 m!1355653))

(assert (=> b!1468509 m!1355653))

(declare-fun m!1355655 () Bool)

(assert (=> b!1468509 m!1355655))

(assert (=> b!1468510 m!1355653))

(assert (=> b!1468510 m!1355653))

(declare-fun m!1355657 () Bool)

(assert (=> b!1468510 m!1355657))

(assert (=> b!1468510 m!1355657))

(assert (=> b!1468510 m!1355653))

(declare-fun m!1355659 () Bool)

(assert (=> b!1468510 m!1355659))

(declare-fun m!1355661 () Bool)

(assert (=> start!125566 m!1355661))

(declare-fun m!1355663 () Bool)

(assert (=> start!125566 m!1355663))

(declare-fun m!1355665 () Bool)

(assert (=> b!1468508 m!1355665))

(declare-fun m!1355667 () Bool)

(assert (=> b!1468508 m!1355667))

(assert (=> b!1468503 m!1355665))

(declare-fun m!1355669 () Bool)

(assert (=> b!1468503 m!1355669))

(assert (=> b!1468503 m!1355669))

(declare-fun m!1355671 () Bool)

(assert (=> b!1468503 m!1355671))

(assert (=> b!1468503 m!1355671))

(assert (=> b!1468503 m!1355669))

(declare-fun m!1355673 () Bool)

(assert (=> b!1468503 m!1355673))

(assert (=> b!1468507 m!1355653))

(assert (=> b!1468507 m!1355653))

(declare-fun m!1355675 () Bool)

(assert (=> b!1468507 m!1355675))

(declare-fun m!1355677 () Bool)

(assert (=> b!1468504 m!1355677))

(assert (=> b!1468504 m!1355677))

(declare-fun m!1355679 () Bool)

(assert (=> b!1468504 m!1355679))

(push 1)

