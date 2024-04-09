; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124326 () Bool)

(assert start!124326)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!811332 () Bool)

(declare-fun b!1438186 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1438186 (= e!811332 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1438187 () Bool)

(declare-fun res!970974 () Bool)

(declare-fun e!811334 () Bool)

(assert (=> b!1438187 (=> (not res!970974) (not e!811334))))

(declare-datatypes ((array!97769 0))(
  ( (array!97770 (arr!47171 (Array (_ BitVec 32) (_ BitVec 64))) (size!47722 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97769)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438187 (= res!970974 (validKeyInArray!0 (select (arr!47171 a!2862) i!1006)))))

(declare-fun b!1438188 () Bool)

(declare-fun res!970973 () Bool)

(assert (=> b!1438188 (=> (not res!970973) (not e!811332))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11446 0))(
  ( (MissingZero!11446 (index!48175 (_ BitVec 32))) (Found!11446 (index!48176 (_ BitVec 32))) (Intermediate!11446 (undefined!12258 Bool) (index!48177 (_ BitVec 32)) (x!129910 (_ BitVec 32))) (Undefined!11446) (MissingVacant!11446 (index!48178 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97769 (_ BitVec 32)) SeekEntryResult!11446)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438188 (= res!970973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47171 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47171 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97770 (store (arr!47171 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47722 a!2862)) mask!2687) (Intermediate!11446 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438189 () Bool)

(declare-fun res!970975 () Bool)

(assert (=> b!1438189 (=> (not res!970975) (not e!811332))))

(declare-fun lt!632461 () SeekEntryResult!11446)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1438189 (= res!970975 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47171 a!2862) j!93) a!2862 mask!2687) lt!632461))))

(declare-fun res!970972 () Bool)

(assert (=> start!124326 (=> (not res!970972) (not e!811334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124326 (= res!970972 (validMask!0 mask!2687))))

(assert (=> start!124326 e!811334))

(assert (=> start!124326 true))

(declare-fun array_inv!36116 (array!97769) Bool)

(assert (=> start!124326 (array_inv!36116 a!2862)))

(declare-fun b!1438190 () Bool)

(declare-fun res!970977 () Bool)

(assert (=> b!1438190 (=> (not res!970977) (not e!811334))))

(declare-datatypes ((List!33852 0))(
  ( (Nil!33849) (Cons!33848 (h!35192 (_ BitVec 64)) (t!48553 List!33852)) )
))
(declare-fun arrayNoDuplicates!0 (array!97769 (_ BitVec 32) List!33852) Bool)

(assert (=> b!1438190 (= res!970977 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33849))))

(declare-fun b!1438191 () Bool)

(declare-fun res!970970 () Bool)

(assert (=> b!1438191 (=> (not res!970970) (not e!811334))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438191 (= res!970970 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47722 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47722 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47722 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47171 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438192 () Bool)

(declare-fun res!970968 () Bool)

(assert (=> b!1438192 (=> (not res!970968) (not e!811334))))

(assert (=> b!1438192 (= res!970968 (and (= (size!47722 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47722 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47722 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438193 () Bool)

(declare-fun res!970969 () Bool)

(assert (=> b!1438193 (=> (not res!970969) (not e!811334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97769 (_ BitVec 32)) Bool)

(assert (=> b!1438193 (= res!970969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438194 () Bool)

(assert (=> b!1438194 (= e!811334 e!811332)))

(declare-fun res!970976 () Bool)

(assert (=> b!1438194 (=> (not res!970976) (not e!811332))))

(assert (=> b!1438194 (= res!970976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47171 a!2862) j!93) mask!2687) (select (arr!47171 a!2862) j!93) a!2862 mask!2687) lt!632461))))

(assert (=> b!1438194 (= lt!632461 (Intermediate!11446 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438195 () Bool)

(declare-fun res!970971 () Bool)

(assert (=> b!1438195 (=> (not res!970971) (not e!811334))))

(assert (=> b!1438195 (= res!970971 (validKeyInArray!0 (select (arr!47171 a!2862) j!93)))))

(assert (= (and start!124326 res!970972) b!1438192))

(assert (= (and b!1438192 res!970968) b!1438187))

(assert (= (and b!1438187 res!970974) b!1438195))

(assert (= (and b!1438195 res!970971) b!1438193))

(assert (= (and b!1438193 res!970969) b!1438190))

(assert (= (and b!1438190 res!970977) b!1438191))

(assert (= (and b!1438191 res!970970) b!1438194))

(assert (= (and b!1438194 res!970976) b!1438189))

(assert (= (and b!1438189 res!970975) b!1438188))

(assert (= (and b!1438188 res!970973) b!1438186))

(declare-fun m!1327427 () Bool)

(assert (=> b!1438191 m!1327427))

(declare-fun m!1327429 () Bool)

(assert (=> b!1438191 m!1327429))

(declare-fun m!1327431 () Bool)

(assert (=> b!1438190 m!1327431))

(declare-fun m!1327433 () Bool)

(assert (=> b!1438189 m!1327433))

(assert (=> b!1438189 m!1327433))

(declare-fun m!1327435 () Bool)

(assert (=> b!1438189 m!1327435))

(assert (=> b!1438194 m!1327433))

(assert (=> b!1438194 m!1327433))

(declare-fun m!1327437 () Bool)

(assert (=> b!1438194 m!1327437))

(assert (=> b!1438194 m!1327437))

(assert (=> b!1438194 m!1327433))

(declare-fun m!1327439 () Bool)

(assert (=> b!1438194 m!1327439))

(assert (=> b!1438195 m!1327433))

(assert (=> b!1438195 m!1327433))

(declare-fun m!1327441 () Bool)

(assert (=> b!1438195 m!1327441))

(assert (=> b!1438188 m!1327427))

(declare-fun m!1327443 () Bool)

(assert (=> b!1438188 m!1327443))

(assert (=> b!1438188 m!1327443))

(declare-fun m!1327445 () Bool)

(assert (=> b!1438188 m!1327445))

(assert (=> b!1438188 m!1327445))

(assert (=> b!1438188 m!1327443))

(declare-fun m!1327447 () Bool)

(assert (=> b!1438188 m!1327447))

(declare-fun m!1327449 () Bool)

(assert (=> start!124326 m!1327449))

(declare-fun m!1327451 () Bool)

(assert (=> start!124326 m!1327451))

(declare-fun m!1327453 () Bool)

(assert (=> b!1438187 m!1327453))

(assert (=> b!1438187 m!1327453))

(declare-fun m!1327455 () Bool)

(assert (=> b!1438187 m!1327455))

(declare-fun m!1327457 () Bool)

(assert (=> b!1438193 m!1327457))

(check-sat (not b!1438190) (not b!1438194) (not b!1438187) (not b!1438195) (not b!1438188) (not start!124326) (not b!1438189) (not b!1438193))
(check-sat)
