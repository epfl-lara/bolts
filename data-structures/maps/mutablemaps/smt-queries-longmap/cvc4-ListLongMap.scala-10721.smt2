; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125510 () Bool)

(assert start!125510)

(declare-fun b!1467747 () Bool)

(declare-fun res!996398 () Bool)

(declare-fun e!824362 () Bool)

(assert (=> b!1467747 (=> (not res!996398) (not e!824362))))

(declare-datatypes ((array!98875 0))(
  ( (array!98876 (arr!47721 (Array (_ BitVec 32) (_ BitVec 64))) (size!48272 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98875)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467747 (= res!996398 (validKeyInArray!0 (select (arr!47721 a!2862) j!93)))))

(declare-fun b!1467748 () Bool)

(assert (=> b!1467748 (= e!824362 false)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11984 0))(
  ( (MissingZero!11984 (index!50327 (_ BitVec 32))) (Found!11984 (index!50328 (_ BitVec 32))) (Intermediate!11984 (undefined!12796 Bool) (index!50329 (_ BitVec 32)) (x!131924 (_ BitVec 32))) (Undefined!11984) (MissingVacant!11984 (index!50330 (_ BitVec 32))) )
))
(declare-fun lt!642094 () SeekEntryResult!11984)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98875 (_ BitVec 32)) SeekEntryResult!11984)

(assert (=> b!1467748 (= lt!642094 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47721 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467749 () Bool)

(declare-fun res!996396 () Bool)

(assert (=> b!1467749 (=> (not res!996396) (not e!824362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98875 (_ BitVec 32)) Bool)

(assert (=> b!1467749 (= res!996396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467750 () Bool)

(declare-fun res!996395 () Bool)

(assert (=> b!1467750 (=> (not res!996395) (not e!824362))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467750 (= res!996395 (and (= (size!48272 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48272 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48272 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467752 () Bool)

(declare-fun res!996401 () Bool)

(assert (=> b!1467752 (=> (not res!996401) (not e!824362))))

(assert (=> b!1467752 (= res!996401 (validKeyInArray!0 (select (arr!47721 a!2862) i!1006)))))

(declare-fun b!1467753 () Bool)

(declare-fun res!996399 () Bool)

(assert (=> b!1467753 (=> (not res!996399) (not e!824362))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467753 (= res!996399 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47721 a!2862) j!93) mask!2687) (select (arr!47721 a!2862) j!93) a!2862 mask!2687) (Intermediate!11984 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1467754 () Bool)

(declare-fun res!996400 () Bool)

(assert (=> b!1467754 (=> (not res!996400) (not e!824362))))

(declare-datatypes ((List!34402 0))(
  ( (Nil!34399) (Cons!34398 (h!35748 (_ BitVec 64)) (t!49103 List!34402)) )
))
(declare-fun arrayNoDuplicates!0 (array!98875 (_ BitVec 32) List!34402) Bool)

(assert (=> b!1467754 (= res!996400 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34399))))

(declare-fun res!996397 () Bool)

(assert (=> start!125510 (=> (not res!996397) (not e!824362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125510 (= res!996397 (validMask!0 mask!2687))))

(assert (=> start!125510 e!824362))

(assert (=> start!125510 true))

(declare-fun array_inv!36666 (array!98875) Bool)

(assert (=> start!125510 (array_inv!36666 a!2862)))

(declare-fun b!1467751 () Bool)

(declare-fun res!996402 () Bool)

(assert (=> b!1467751 (=> (not res!996402) (not e!824362))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467751 (= res!996402 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48272 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48272 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48272 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47721 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125510 res!996397) b!1467750))

(assert (= (and b!1467750 res!996395) b!1467752))

(assert (= (and b!1467752 res!996401) b!1467747))

(assert (= (and b!1467747 res!996398) b!1467749))

(assert (= (and b!1467749 res!996396) b!1467754))

(assert (= (and b!1467754 res!996400) b!1467751))

(assert (= (and b!1467751 res!996402) b!1467753))

(assert (= (and b!1467753 res!996399) b!1467748))

(declare-fun m!1354771 () Bool)

(assert (=> b!1467749 m!1354771))

(declare-fun m!1354773 () Bool)

(assert (=> b!1467748 m!1354773))

(assert (=> b!1467748 m!1354773))

(declare-fun m!1354775 () Bool)

(assert (=> b!1467748 m!1354775))

(declare-fun m!1354777 () Bool)

(assert (=> start!125510 m!1354777))

(declare-fun m!1354779 () Bool)

(assert (=> start!125510 m!1354779))

(declare-fun m!1354781 () Bool)

(assert (=> b!1467751 m!1354781))

(declare-fun m!1354783 () Bool)

(assert (=> b!1467751 m!1354783))

(declare-fun m!1354785 () Bool)

(assert (=> b!1467754 m!1354785))

(declare-fun m!1354787 () Bool)

(assert (=> b!1467752 m!1354787))

(assert (=> b!1467752 m!1354787))

(declare-fun m!1354789 () Bool)

(assert (=> b!1467752 m!1354789))

(assert (=> b!1467753 m!1354773))

(assert (=> b!1467753 m!1354773))

(declare-fun m!1354791 () Bool)

(assert (=> b!1467753 m!1354791))

(assert (=> b!1467753 m!1354791))

(assert (=> b!1467753 m!1354773))

(declare-fun m!1354793 () Bool)

(assert (=> b!1467753 m!1354793))

(assert (=> b!1467747 m!1354773))

(assert (=> b!1467747 m!1354773))

(declare-fun m!1354795 () Bool)

(assert (=> b!1467747 m!1354795))

(push 1)

(assert (not b!1467748))

(assert (not b!1467754))

(assert (not b!1467749))

(assert (not b!1467752))

(assert (not b!1467753))

(assert (not start!125510))

(assert (not b!1467747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

