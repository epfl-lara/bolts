; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124514 () Bool)

(assert start!124514)

(declare-fun b!1440124 () Bool)

(declare-fun res!972665 () Bool)

(declare-fun e!812095 () Bool)

(assert (=> b!1440124 (=> (not res!972665) (not e!812095))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11498 0))(
  ( (MissingZero!11498 (index!48383 (_ BitVec 32))) (Found!11498 (index!48384 (_ BitVec 32))) (Intermediate!11498 (undefined!12310 Bool) (index!48385 (_ BitVec 32)) (x!130110 (_ BitVec 32))) (Undefined!11498) (MissingVacant!11498 (index!48386 (_ BitVec 32))) )
))
(declare-fun lt!632869 () SeekEntryResult!11498)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97879 0))(
  ( (array!97880 (arr!47223 (Array (_ BitVec 32) (_ BitVec 64))) (size!47774 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97879)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97879 (_ BitVec 32)) SeekEntryResult!11498)

(assert (=> b!1440124 (= res!972665 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47223 a!2862) j!93) a!2862 mask!2687) lt!632869))))

(declare-fun b!1440125 () Bool)

(declare-fun res!972669 () Bool)

(declare-fun e!812094 () Bool)

(assert (=> b!1440125 (=> (not res!972669) (not e!812094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97879 (_ BitVec 32)) Bool)

(assert (=> b!1440125 (= res!972669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!972662 () Bool)

(assert (=> start!124514 (=> (not res!972662) (not e!812094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124514 (= res!972662 (validMask!0 mask!2687))))

(assert (=> start!124514 e!812094))

(assert (=> start!124514 true))

(declare-fun array_inv!36168 (array!97879) Bool)

(assert (=> start!124514 (array_inv!36168 a!2862)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1440126 () Bool)

(assert (=> b!1440126 (= e!812095 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440127 () Bool)

(declare-fun res!972661 () Bool)

(assert (=> b!1440127 (=> (not res!972661) (not e!812094))))

(declare-datatypes ((List!33904 0))(
  ( (Nil!33901) (Cons!33900 (h!35250 (_ BitVec 64)) (t!48605 List!33904)) )
))
(declare-fun arrayNoDuplicates!0 (array!97879 (_ BitVec 32) List!33904) Bool)

(assert (=> b!1440127 (= res!972661 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33901))))

(declare-fun b!1440128 () Bool)

(declare-fun res!972667 () Bool)

(assert (=> b!1440128 (=> (not res!972667) (not e!812095))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440128 (= res!972667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47223 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47223 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97880 (store (arr!47223 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47774 a!2862)) mask!2687) (Intermediate!11498 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440129 () Bool)

(declare-fun res!972666 () Bool)

(assert (=> b!1440129 (=> (not res!972666) (not e!812094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440129 (= res!972666 (validKeyInArray!0 (select (arr!47223 a!2862) i!1006)))))

(declare-fun b!1440130 () Bool)

(declare-fun res!972664 () Bool)

(assert (=> b!1440130 (=> (not res!972664) (not e!812094))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440130 (= res!972664 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47774 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47774 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47774 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47223 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440131 () Bool)

(declare-fun res!972668 () Bool)

(assert (=> b!1440131 (=> (not res!972668) (not e!812094))))

(assert (=> b!1440131 (= res!972668 (validKeyInArray!0 (select (arr!47223 a!2862) j!93)))))

(declare-fun b!1440132 () Bool)

(assert (=> b!1440132 (= e!812094 e!812095)))

(declare-fun res!972663 () Bool)

(assert (=> b!1440132 (=> (not res!972663) (not e!812095))))

(assert (=> b!1440132 (= res!972663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47223 a!2862) j!93) mask!2687) (select (arr!47223 a!2862) j!93) a!2862 mask!2687) lt!632869))))

(assert (=> b!1440132 (= lt!632869 (Intermediate!11498 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440133 () Bool)

(declare-fun res!972660 () Bool)

(assert (=> b!1440133 (=> (not res!972660) (not e!812094))))

(assert (=> b!1440133 (= res!972660 (and (= (size!47774 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47774 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47774 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124514 res!972662) b!1440133))

(assert (= (and b!1440133 res!972660) b!1440129))

(assert (= (and b!1440129 res!972666) b!1440131))

(assert (= (and b!1440131 res!972668) b!1440125))

(assert (= (and b!1440125 res!972669) b!1440127))

(assert (= (and b!1440127 res!972661) b!1440130))

(assert (= (and b!1440130 res!972664) b!1440132))

(assert (= (and b!1440132 res!972663) b!1440124))

(assert (= (and b!1440124 res!972665) b!1440128))

(assert (= (and b!1440128 res!972667) b!1440126))

(declare-fun m!1329343 () Bool)

(assert (=> b!1440130 m!1329343))

(declare-fun m!1329345 () Bool)

(assert (=> b!1440130 m!1329345))

(declare-fun m!1329347 () Bool)

(assert (=> b!1440125 m!1329347))

(declare-fun m!1329349 () Bool)

(assert (=> b!1440132 m!1329349))

(assert (=> b!1440132 m!1329349))

(declare-fun m!1329351 () Bool)

(assert (=> b!1440132 m!1329351))

(assert (=> b!1440132 m!1329351))

(assert (=> b!1440132 m!1329349))

(declare-fun m!1329353 () Bool)

(assert (=> b!1440132 m!1329353))

(assert (=> b!1440124 m!1329349))

(assert (=> b!1440124 m!1329349))

(declare-fun m!1329355 () Bool)

(assert (=> b!1440124 m!1329355))

(assert (=> b!1440131 m!1329349))

(assert (=> b!1440131 m!1329349))

(declare-fun m!1329357 () Bool)

(assert (=> b!1440131 m!1329357))

(assert (=> b!1440128 m!1329343))

(declare-fun m!1329359 () Bool)

(assert (=> b!1440128 m!1329359))

(assert (=> b!1440128 m!1329359))

(declare-fun m!1329361 () Bool)

(assert (=> b!1440128 m!1329361))

(assert (=> b!1440128 m!1329361))

(assert (=> b!1440128 m!1329359))

(declare-fun m!1329363 () Bool)

(assert (=> b!1440128 m!1329363))

(declare-fun m!1329365 () Bool)

(assert (=> b!1440127 m!1329365))

(declare-fun m!1329367 () Bool)

(assert (=> b!1440129 m!1329367))

(assert (=> b!1440129 m!1329367))

(declare-fun m!1329369 () Bool)

(assert (=> b!1440129 m!1329369))

(declare-fun m!1329371 () Bool)

(assert (=> start!124514 m!1329371))

(declare-fun m!1329373 () Bool)

(assert (=> start!124514 m!1329373))

(push 1)

(assert (not b!1440128))

(assert (not b!1440125))

(assert (not b!1440129))

(assert (not start!124514))

(assert (not b!1440127))

(assert (not b!1440124))

(assert (not b!1440132))

(assert (not b!1440131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

