; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124554 () Bool)

(assert start!124554)

(declare-fun res!973238 () Bool)

(declare-fun e!812274 () Bool)

(assert (=> start!124554 (=> (not res!973238) (not e!812274))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124554 (= res!973238 (validMask!0 mask!2687))))

(assert (=> start!124554 e!812274))

(assert (=> start!124554 true))

(declare-datatypes ((array!97919 0))(
  ( (array!97920 (arr!47243 (Array (_ BitVec 32) (_ BitVec 64))) (size!47794 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97919)

(declare-fun array_inv!36188 (array!97919) Bool)

(assert (=> start!124554 (array_inv!36188 a!2862)))

(declare-fun b!1440701 () Bool)

(declare-fun res!973243 () Bool)

(assert (=> b!1440701 (=> (not res!973243) (not e!812274))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440701 (= res!973243 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47794 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47794 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47794 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47243 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440702 () Bool)

(declare-fun res!973245 () Bool)

(declare-fun e!812276 () Bool)

(assert (=> b!1440702 (=> (not res!973245) (not e!812276))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11518 0))(
  ( (MissingZero!11518 (index!48463 (_ BitVec 32))) (Found!11518 (index!48464 (_ BitVec 32))) (Intermediate!11518 (undefined!12330 Bool) (index!48465 (_ BitVec 32)) (x!130186 (_ BitVec 32))) (Undefined!11518) (MissingVacant!11518 (index!48466 (_ BitVec 32))) )
))
(declare-fun lt!632961 () SeekEntryResult!11518)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97919 (_ BitVec 32)) SeekEntryResult!11518)

(assert (=> b!1440702 (= res!973245 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47243 a!2862) j!93) a!2862 mask!2687) lt!632961))))

(declare-fun b!1440703 () Bool)

(assert (=> b!1440703 (= e!812274 e!812276)))

(declare-fun res!973237 () Bool)

(assert (=> b!1440703 (=> (not res!973237) (not e!812276))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440703 (= res!973237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47243 a!2862) j!93) mask!2687) (select (arr!47243 a!2862) j!93) a!2862 mask!2687) lt!632961))))

(assert (=> b!1440703 (= lt!632961 (Intermediate!11518 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440704 () Bool)

(declare-fun res!973240 () Bool)

(assert (=> b!1440704 (=> (not res!973240) (not e!812274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97919 (_ BitVec 32)) Bool)

(assert (=> b!1440704 (= res!973240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440705 () Bool)

(declare-fun res!973242 () Bool)

(assert (=> b!1440705 (=> (not res!973242) (not e!812274))))

(declare-datatypes ((List!33924 0))(
  ( (Nil!33921) (Cons!33920 (h!35270 (_ BitVec 64)) (t!48625 List!33924)) )
))
(declare-fun arrayNoDuplicates!0 (array!97919 (_ BitVec 32) List!33924) Bool)

(assert (=> b!1440705 (= res!973242 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33921))))

(declare-fun b!1440706 () Bool)

(declare-fun res!973239 () Bool)

(assert (=> b!1440706 (=> (not res!973239) (not e!812274))))

(assert (=> b!1440706 (= res!973239 (and (= (size!47794 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47794 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47794 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440707 () Bool)

(assert (=> b!1440707 (= e!812276 false)))

(declare-fun lt!632962 () SeekEntryResult!11518)

(assert (=> b!1440707 (= lt!632962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47243 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47243 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97920 (store (arr!47243 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47794 a!2862)) mask!2687))))

(declare-fun b!1440708 () Bool)

(declare-fun res!973241 () Bool)

(assert (=> b!1440708 (=> (not res!973241) (not e!812274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440708 (= res!973241 (validKeyInArray!0 (select (arr!47243 a!2862) j!93)))))

(declare-fun b!1440709 () Bool)

(declare-fun res!973244 () Bool)

(assert (=> b!1440709 (=> (not res!973244) (not e!812274))))

(assert (=> b!1440709 (= res!973244 (validKeyInArray!0 (select (arr!47243 a!2862) i!1006)))))

(assert (= (and start!124554 res!973238) b!1440706))

(assert (= (and b!1440706 res!973239) b!1440709))

(assert (= (and b!1440709 res!973244) b!1440708))

(assert (= (and b!1440708 res!973241) b!1440704))

(assert (= (and b!1440704 res!973240) b!1440705))

(assert (= (and b!1440705 res!973242) b!1440701))

(assert (= (and b!1440701 res!973243) b!1440703))

(assert (= (and b!1440703 res!973237) b!1440702))

(assert (= (and b!1440702 res!973245) b!1440707))

(declare-fun m!1329989 () Bool)

(assert (=> b!1440702 m!1329989))

(assert (=> b!1440702 m!1329989))

(declare-fun m!1329991 () Bool)

(assert (=> b!1440702 m!1329991))

(declare-fun m!1329993 () Bool)

(assert (=> b!1440707 m!1329993))

(declare-fun m!1329995 () Bool)

(assert (=> b!1440707 m!1329995))

(assert (=> b!1440707 m!1329995))

(declare-fun m!1329997 () Bool)

(assert (=> b!1440707 m!1329997))

(assert (=> b!1440707 m!1329997))

(assert (=> b!1440707 m!1329995))

(declare-fun m!1329999 () Bool)

(assert (=> b!1440707 m!1329999))

(declare-fun m!1330001 () Bool)

(assert (=> b!1440704 m!1330001))

(assert (=> b!1440701 m!1329993))

(declare-fun m!1330003 () Bool)

(assert (=> b!1440701 m!1330003))

(declare-fun m!1330005 () Bool)

(assert (=> b!1440709 m!1330005))

(assert (=> b!1440709 m!1330005))

(declare-fun m!1330007 () Bool)

(assert (=> b!1440709 m!1330007))

(assert (=> b!1440703 m!1329989))

(assert (=> b!1440703 m!1329989))

(declare-fun m!1330009 () Bool)

(assert (=> b!1440703 m!1330009))

(assert (=> b!1440703 m!1330009))

(assert (=> b!1440703 m!1329989))

(declare-fun m!1330011 () Bool)

(assert (=> b!1440703 m!1330011))

(declare-fun m!1330013 () Bool)

(assert (=> b!1440705 m!1330013))

(declare-fun m!1330015 () Bool)

(assert (=> start!124554 m!1330015))

(declare-fun m!1330017 () Bool)

(assert (=> start!124554 m!1330017))

(assert (=> b!1440708 m!1329989))

(assert (=> b!1440708 m!1329989))

(declare-fun m!1330019 () Bool)

(assert (=> b!1440708 m!1330019))

(check-sat (not b!1440705) (not b!1440708) (not b!1440703) (not b!1440702) (not b!1440704) (not start!124554) (not b!1440707) (not b!1440709))
(check-sat)
