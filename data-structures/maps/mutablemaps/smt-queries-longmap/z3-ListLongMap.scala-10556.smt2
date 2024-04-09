; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124518 () Bool)

(assert start!124518)

(declare-fun b!1440179 () Bool)

(declare-fun res!972722 () Bool)

(declare-fun e!812114 () Bool)

(assert (=> b!1440179 (=> (not res!972722) (not e!812114))))

(declare-datatypes ((array!97883 0))(
  ( (array!97884 (arr!47225 (Array (_ BitVec 32) (_ BitVec 64))) (size!47776 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97883)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97883 (_ BitVec 32)) Bool)

(assert (=> b!1440179 (= res!972722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440180 () Bool)

(declare-fun res!972716 () Bool)

(assert (=> b!1440180 (=> (not res!972716) (not e!812114))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440180 (= res!972716 (validKeyInArray!0 (select (arr!47225 a!2862) j!93)))))

(declare-fun b!1440181 () Bool)

(declare-fun e!812113 () Bool)

(assert (=> b!1440181 (= e!812114 e!812113)))

(declare-fun res!972718 () Bool)

(assert (=> b!1440181 (=> (not res!972718) (not e!812113))))

(declare-datatypes ((SeekEntryResult!11500 0))(
  ( (MissingZero!11500 (index!48391 (_ BitVec 32))) (Found!11500 (index!48392 (_ BitVec 32))) (Intermediate!11500 (undefined!12312 Bool) (index!48393 (_ BitVec 32)) (x!130120 (_ BitVec 32))) (Undefined!11500) (MissingVacant!11500 (index!48394 (_ BitVec 32))) )
))
(declare-fun lt!632881 () SeekEntryResult!11500)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97883 (_ BitVec 32)) SeekEntryResult!11500)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440181 (= res!972718 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47225 a!2862) j!93) mask!2687) (select (arr!47225 a!2862) j!93) a!2862 mask!2687) lt!632881))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440181 (= lt!632881 (Intermediate!11500 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440182 () Bool)

(declare-fun res!972715 () Bool)

(assert (=> b!1440182 (=> (not res!972715) (not e!812114))))

(declare-datatypes ((List!33906 0))(
  ( (Nil!33903) (Cons!33902 (h!35252 (_ BitVec 64)) (t!48607 List!33906)) )
))
(declare-fun arrayNoDuplicates!0 (array!97883 (_ BitVec 32) List!33906) Bool)

(assert (=> b!1440182 (= res!972715 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33903))))

(declare-fun b!1440183 () Bool)

(declare-fun res!972720 () Bool)

(assert (=> b!1440183 (=> (not res!972720) (not e!812114))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440183 (= res!972720 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47776 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47776 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47776 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47225 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440184 () Bool)

(declare-fun res!972717 () Bool)

(assert (=> b!1440184 (=> (not res!972717) (not e!812113))))

(assert (=> b!1440184 (= res!972717 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47225 a!2862) j!93) a!2862 mask!2687) lt!632881))))

(declare-fun b!1440185 () Bool)

(assert (=> b!1440185 (= e!812113 false)))

(declare-fun lt!632880 () SeekEntryResult!11500)

(assert (=> b!1440185 (= lt!632880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47225 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47225 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97884 (store (arr!47225 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47776 a!2862)) mask!2687))))

(declare-fun b!1440186 () Bool)

(declare-fun res!972721 () Bool)

(assert (=> b!1440186 (=> (not res!972721) (not e!812114))))

(assert (=> b!1440186 (= res!972721 (and (= (size!47776 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47776 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47776 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!972719 () Bool)

(assert (=> start!124518 (=> (not res!972719) (not e!812114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124518 (= res!972719 (validMask!0 mask!2687))))

(assert (=> start!124518 e!812114))

(assert (=> start!124518 true))

(declare-fun array_inv!36170 (array!97883) Bool)

(assert (=> start!124518 (array_inv!36170 a!2862)))

(declare-fun b!1440187 () Bool)

(declare-fun res!972723 () Bool)

(assert (=> b!1440187 (=> (not res!972723) (not e!812114))))

(assert (=> b!1440187 (= res!972723 (validKeyInArray!0 (select (arr!47225 a!2862) i!1006)))))

(assert (= (and start!124518 res!972719) b!1440186))

(assert (= (and b!1440186 res!972721) b!1440187))

(assert (= (and b!1440187 res!972723) b!1440180))

(assert (= (and b!1440180 res!972716) b!1440179))

(assert (= (and b!1440179 res!972722) b!1440182))

(assert (= (and b!1440182 res!972715) b!1440183))

(assert (= (and b!1440183 res!972720) b!1440181))

(assert (= (and b!1440181 res!972718) b!1440184))

(assert (= (and b!1440184 res!972717) b!1440185))

(declare-fun m!1329407 () Bool)

(assert (=> b!1440184 m!1329407))

(assert (=> b!1440184 m!1329407))

(declare-fun m!1329409 () Bool)

(assert (=> b!1440184 m!1329409))

(declare-fun m!1329411 () Bool)

(assert (=> start!124518 m!1329411))

(declare-fun m!1329413 () Bool)

(assert (=> start!124518 m!1329413))

(assert (=> b!1440181 m!1329407))

(assert (=> b!1440181 m!1329407))

(declare-fun m!1329415 () Bool)

(assert (=> b!1440181 m!1329415))

(assert (=> b!1440181 m!1329415))

(assert (=> b!1440181 m!1329407))

(declare-fun m!1329417 () Bool)

(assert (=> b!1440181 m!1329417))

(declare-fun m!1329419 () Bool)

(assert (=> b!1440185 m!1329419))

(declare-fun m!1329421 () Bool)

(assert (=> b!1440185 m!1329421))

(assert (=> b!1440185 m!1329421))

(declare-fun m!1329423 () Bool)

(assert (=> b!1440185 m!1329423))

(assert (=> b!1440185 m!1329423))

(assert (=> b!1440185 m!1329421))

(declare-fun m!1329425 () Bool)

(assert (=> b!1440185 m!1329425))

(declare-fun m!1329427 () Bool)

(assert (=> b!1440187 m!1329427))

(assert (=> b!1440187 m!1329427))

(declare-fun m!1329429 () Bool)

(assert (=> b!1440187 m!1329429))

(declare-fun m!1329431 () Bool)

(assert (=> b!1440182 m!1329431))

(assert (=> b!1440183 m!1329419))

(declare-fun m!1329433 () Bool)

(assert (=> b!1440183 m!1329433))

(declare-fun m!1329435 () Bool)

(assert (=> b!1440179 m!1329435))

(assert (=> b!1440180 m!1329407))

(assert (=> b!1440180 m!1329407))

(declare-fun m!1329437 () Bool)

(assert (=> b!1440180 m!1329437))

(check-sat (not b!1440184) (not b!1440187) (not b!1440181) (not b!1440185) (not b!1440179) (not b!1440182) (not start!124518) (not b!1440180))
(check-sat)
