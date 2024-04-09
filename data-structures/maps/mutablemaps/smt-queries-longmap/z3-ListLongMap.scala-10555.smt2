; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124512 () Bool)

(assert start!124512)

(declare-fun b!1440095 () Bool)

(declare-fun res!972632 () Bool)

(declare-fun e!812085 () Bool)

(assert (=> b!1440095 (=> (not res!972632) (not e!812085))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97877 0))(
  ( (array!97878 (arr!47222 (Array (_ BitVec 32) (_ BitVec 64))) (size!47773 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97877)

(assert (=> b!1440095 (= res!972632 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47773 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47773 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47773 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47222 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440096 () Bool)

(declare-fun res!972630 () Bool)

(assert (=> b!1440096 (=> (not res!972630) (not e!812085))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1440096 (= res!972630 (and (= (size!47773 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47773 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47773 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440097 () Bool)

(declare-fun res!972639 () Bool)

(assert (=> b!1440097 (=> (not res!972639) (not e!812085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97877 (_ BitVec 32)) Bool)

(assert (=> b!1440097 (= res!972639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440098 () Bool)

(declare-fun res!972635 () Bool)

(assert (=> b!1440098 (=> (not res!972635) (not e!812085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440098 (= res!972635 (validKeyInArray!0 (select (arr!47222 a!2862) j!93)))))

(declare-fun e!812087 () Bool)

(declare-fun b!1440099 () Bool)

(assert (=> b!1440099 (= e!812087 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun res!972636 () Bool)

(assert (=> start!124512 (=> (not res!972636) (not e!812085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124512 (= res!972636 (validMask!0 mask!2687))))

(assert (=> start!124512 e!812085))

(assert (=> start!124512 true))

(declare-fun array_inv!36167 (array!97877) Bool)

(assert (=> start!124512 (array_inv!36167 a!2862)))

(declare-fun b!1440094 () Bool)

(declare-fun res!972637 () Bool)

(assert (=> b!1440094 (=> (not res!972637) (not e!812087))))

(declare-datatypes ((SeekEntryResult!11497 0))(
  ( (MissingZero!11497 (index!48379 (_ BitVec 32))) (Found!11497 (index!48380 (_ BitVec 32))) (Intermediate!11497 (undefined!12309 Bool) (index!48381 (_ BitVec 32)) (x!130109 (_ BitVec 32))) (Undefined!11497) (MissingVacant!11497 (index!48382 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97877 (_ BitVec 32)) SeekEntryResult!11497)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440094 (= res!972637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47222 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47222 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97878 (store (arr!47222 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47773 a!2862)) mask!2687) (Intermediate!11497 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440100 () Bool)

(declare-fun res!972631 () Bool)

(assert (=> b!1440100 (=> (not res!972631) (not e!812085))))

(declare-datatypes ((List!33903 0))(
  ( (Nil!33900) (Cons!33899 (h!35249 (_ BitVec 64)) (t!48604 List!33903)) )
))
(declare-fun arrayNoDuplicates!0 (array!97877 (_ BitVec 32) List!33903) Bool)

(assert (=> b!1440100 (= res!972631 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33900))))

(declare-fun b!1440101 () Bool)

(assert (=> b!1440101 (= e!812085 e!812087)))

(declare-fun res!972634 () Bool)

(assert (=> b!1440101 (=> (not res!972634) (not e!812087))))

(declare-fun lt!632866 () SeekEntryResult!11497)

(assert (=> b!1440101 (= res!972634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47222 a!2862) j!93) mask!2687) (select (arr!47222 a!2862) j!93) a!2862 mask!2687) lt!632866))))

(assert (=> b!1440101 (= lt!632866 (Intermediate!11497 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440102 () Bool)

(declare-fun res!972638 () Bool)

(assert (=> b!1440102 (=> (not res!972638) (not e!812085))))

(assert (=> b!1440102 (= res!972638 (validKeyInArray!0 (select (arr!47222 a!2862) i!1006)))))

(declare-fun b!1440103 () Bool)

(declare-fun res!972633 () Bool)

(assert (=> b!1440103 (=> (not res!972633) (not e!812087))))

(assert (=> b!1440103 (= res!972633 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47222 a!2862) j!93) a!2862 mask!2687) lt!632866))))

(assert (= (and start!124512 res!972636) b!1440096))

(assert (= (and b!1440096 res!972630) b!1440102))

(assert (= (and b!1440102 res!972638) b!1440098))

(assert (= (and b!1440098 res!972635) b!1440097))

(assert (= (and b!1440097 res!972639) b!1440100))

(assert (= (and b!1440100 res!972631) b!1440095))

(assert (= (and b!1440095 res!972632) b!1440101))

(assert (= (and b!1440101 res!972634) b!1440103))

(assert (= (and b!1440103 res!972633) b!1440094))

(assert (= (and b!1440094 res!972637) b!1440099))

(declare-fun m!1329311 () Bool)

(assert (=> b!1440101 m!1329311))

(assert (=> b!1440101 m!1329311))

(declare-fun m!1329313 () Bool)

(assert (=> b!1440101 m!1329313))

(assert (=> b!1440101 m!1329313))

(assert (=> b!1440101 m!1329311))

(declare-fun m!1329315 () Bool)

(assert (=> b!1440101 m!1329315))

(declare-fun m!1329317 () Bool)

(assert (=> start!124512 m!1329317))

(declare-fun m!1329319 () Bool)

(assert (=> start!124512 m!1329319))

(declare-fun m!1329321 () Bool)

(assert (=> b!1440097 m!1329321))

(declare-fun m!1329323 () Bool)

(assert (=> b!1440094 m!1329323))

(declare-fun m!1329325 () Bool)

(assert (=> b!1440094 m!1329325))

(assert (=> b!1440094 m!1329325))

(declare-fun m!1329327 () Bool)

(assert (=> b!1440094 m!1329327))

(assert (=> b!1440094 m!1329327))

(assert (=> b!1440094 m!1329325))

(declare-fun m!1329329 () Bool)

(assert (=> b!1440094 m!1329329))

(assert (=> b!1440098 m!1329311))

(assert (=> b!1440098 m!1329311))

(declare-fun m!1329331 () Bool)

(assert (=> b!1440098 m!1329331))

(declare-fun m!1329333 () Bool)

(assert (=> b!1440100 m!1329333))

(declare-fun m!1329335 () Bool)

(assert (=> b!1440102 m!1329335))

(assert (=> b!1440102 m!1329335))

(declare-fun m!1329337 () Bool)

(assert (=> b!1440102 m!1329337))

(assert (=> b!1440103 m!1329311))

(assert (=> b!1440103 m!1329311))

(declare-fun m!1329339 () Bool)

(assert (=> b!1440103 m!1329339))

(assert (=> b!1440095 m!1329323))

(declare-fun m!1329341 () Bool)

(assert (=> b!1440095 m!1329341))

(check-sat (not b!1440098) (not b!1440101) (not start!124512) (not b!1440102) (not b!1440103) (not b!1440094) (not b!1440100) (not b!1440097))
(check-sat)
