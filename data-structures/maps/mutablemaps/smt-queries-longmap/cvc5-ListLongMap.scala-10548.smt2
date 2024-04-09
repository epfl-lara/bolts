; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124468 () Bool)

(assert start!124468)

(declare-fun b!1439459 () Bool)

(declare-fun res!971999 () Bool)

(declare-fun e!811887 () Bool)

(assert (=> b!1439459 (=> (not res!971999) (not e!811887))))

(declare-datatypes ((array!97833 0))(
  ( (array!97834 (arr!47200 (Array (_ BitVec 32) (_ BitVec 64))) (size!47751 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97833)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439459 (= res!971999 (validKeyInArray!0 (select (arr!47200 a!2862) j!93)))))

(declare-fun b!1439460 () Bool)

(declare-fun res!971998 () Bool)

(assert (=> b!1439460 (=> (not res!971998) (not e!811887))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97833 (_ BitVec 32)) Bool)

(assert (=> b!1439460 (= res!971998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439461 () Bool)

(declare-fun res!972000 () Bool)

(assert (=> b!1439461 (=> (not res!972000) (not e!811887))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439461 (= res!972000 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47751 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47751 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47751 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47200 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439462 () Bool)

(declare-fun e!811888 () Bool)

(assert (=> b!1439462 (= e!811888 false)))

(declare-datatypes ((SeekEntryResult!11475 0))(
  ( (MissingZero!11475 (index!48291 (_ BitVec 32))) (Found!11475 (index!48292 (_ BitVec 32))) (Intermediate!11475 (undefined!12287 Bool) (index!48293 (_ BitVec 32)) (x!130031 (_ BitVec 32))) (Undefined!11475) (MissingVacant!11475 (index!48294 (_ BitVec 32))) )
))
(declare-fun lt!632766 () SeekEntryResult!11475)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97833 (_ BitVec 32)) SeekEntryResult!11475)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439462 (= lt!632766 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47200 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47200 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97834 (store (arr!47200 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47751 a!2862)) mask!2687))))

(declare-fun b!1439463 () Bool)

(declare-fun res!971997 () Bool)

(assert (=> b!1439463 (=> (not res!971997) (not e!811887))))

(declare-datatypes ((List!33881 0))(
  ( (Nil!33878) (Cons!33877 (h!35227 (_ BitVec 64)) (t!48582 List!33881)) )
))
(declare-fun arrayNoDuplicates!0 (array!97833 (_ BitVec 32) List!33881) Bool)

(assert (=> b!1439463 (= res!971997 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33878))))

(declare-fun b!1439464 () Bool)

(assert (=> b!1439464 (= e!811887 e!811888)))

(declare-fun res!971996 () Bool)

(assert (=> b!1439464 (=> (not res!971996) (not e!811888))))

(declare-fun lt!632767 () SeekEntryResult!11475)

(assert (=> b!1439464 (= res!971996 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47200 a!2862) j!93) mask!2687) (select (arr!47200 a!2862) j!93) a!2862 mask!2687) lt!632767))))

(assert (=> b!1439464 (= lt!632767 (Intermediate!11475 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!972001 () Bool)

(assert (=> start!124468 (=> (not res!972001) (not e!811887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124468 (= res!972001 (validMask!0 mask!2687))))

(assert (=> start!124468 e!811887))

(assert (=> start!124468 true))

(declare-fun array_inv!36145 (array!97833) Bool)

(assert (=> start!124468 (array_inv!36145 a!2862)))

(declare-fun b!1439465 () Bool)

(declare-fun res!972003 () Bool)

(assert (=> b!1439465 (=> (not res!972003) (not e!811888))))

(assert (=> b!1439465 (= res!972003 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47200 a!2862) j!93) a!2862 mask!2687) lt!632767))))

(declare-fun b!1439466 () Bool)

(declare-fun res!971995 () Bool)

(assert (=> b!1439466 (=> (not res!971995) (not e!811887))))

(assert (=> b!1439466 (= res!971995 (validKeyInArray!0 (select (arr!47200 a!2862) i!1006)))))

(declare-fun b!1439467 () Bool)

(declare-fun res!972002 () Bool)

(assert (=> b!1439467 (=> (not res!972002) (not e!811887))))

(assert (=> b!1439467 (= res!972002 (and (= (size!47751 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47751 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47751 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124468 res!972001) b!1439467))

(assert (= (and b!1439467 res!972002) b!1439466))

(assert (= (and b!1439466 res!971995) b!1439459))

(assert (= (and b!1439459 res!971999) b!1439460))

(assert (= (and b!1439460 res!971998) b!1439463))

(assert (= (and b!1439463 res!971997) b!1439461))

(assert (= (and b!1439461 res!972000) b!1439464))

(assert (= (and b!1439464 res!971996) b!1439465))

(assert (= (and b!1439465 res!972003) b!1439462))

(declare-fun m!1328601 () Bool)

(assert (=> start!124468 m!1328601))

(declare-fun m!1328603 () Bool)

(assert (=> start!124468 m!1328603))

(declare-fun m!1328605 () Bool)

(assert (=> b!1439462 m!1328605))

(declare-fun m!1328607 () Bool)

(assert (=> b!1439462 m!1328607))

(assert (=> b!1439462 m!1328607))

(declare-fun m!1328609 () Bool)

(assert (=> b!1439462 m!1328609))

(assert (=> b!1439462 m!1328609))

(assert (=> b!1439462 m!1328607))

(declare-fun m!1328611 () Bool)

(assert (=> b!1439462 m!1328611))

(declare-fun m!1328613 () Bool)

(assert (=> b!1439460 m!1328613))

(declare-fun m!1328615 () Bool)

(assert (=> b!1439459 m!1328615))

(assert (=> b!1439459 m!1328615))

(declare-fun m!1328617 () Bool)

(assert (=> b!1439459 m!1328617))

(assert (=> b!1439464 m!1328615))

(assert (=> b!1439464 m!1328615))

(declare-fun m!1328619 () Bool)

(assert (=> b!1439464 m!1328619))

(assert (=> b!1439464 m!1328619))

(assert (=> b!1439464 m!1328615))

(declare-fun m!1328621 () Bool)

(assert (=> b!1439464 m!1328621))

(assert (=> b!1439461 m!1328605))

(declare-fun m!1328623 () Bool)

(assert (=> b!1439461 m!1328623))

(declare-fun m!1328625 () Bool)

(assert (=> b!1439466 m!1328625))

(assert (=> b!1439466 m!1328625))

(declare-fun m!1328627 () Bool)

(assert (=> b!1439466 m!1328627))

(declare-fun m!1328629 () Bool)

(assert (=> b!1439463 m!1328629))

(assert (=> b!1439465 m!1328615))

(assert (=> b!1439465 m!1328615))

(declare-fun m!1328631 () Bool)

(assert (=> b!1439465 m!1328631))

(push 1)

