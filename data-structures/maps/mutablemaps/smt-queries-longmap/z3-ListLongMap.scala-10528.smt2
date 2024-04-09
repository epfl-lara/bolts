; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124182 () Bool)

(assert start!124182)

(declare-fun b!1437010 () Bool)

(declare-fun e!810821 () Bool)

(assert (=> b!1437010 (= e!810821 false)))

(declare-datatypes ((SeekEntryResult!11416 0))(
  ( (MissingZero!11416 (index!48055 (_ BitVec 32))) (Found!11416 (index!48056 (_ BitVec 32))) (Intermediate!11416 (undefined!12228 Bool) (index!48057 (_ BitVec 32)) (x!129788 (_ BitVec 32))) (Undefined!11416) (MissingVacant!11416 (index!48058 (_ BitVec 32))) )
))
(declare-fun lt!632173 () SeekEntryResult!11416)

(declare-datatypes ((array!97703 0))(
  ( (array!97704 (arr!47141 (Array (_ BitVec 32) (_ BitVec 64))) (size!47692 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97703)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97703 (_ BitVec 32)) SeekEntryResult!11416)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437010 (= lt!632173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47141 a!2862) j!93) mask!2687) (select (arr!47141 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437011 () Bool)

(declare-fun res!970007 () Bool)

(assert (=> b!1437011 (=> (not res!970007) (not e!810821))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437011 (= res!970007 (and (= (size!47692 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47692 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47692 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437012 () Bool)

(declare-fun res!970008 () Bool)

(assert (=> b!1437012 (=> (not res!970008) (not e!810821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97703 (_ BitVec 32)) Bool)

(assert (=> b!1437012 (= res!970008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437013 () Bool)

(declare-fun res!970005 () Bool)

(assert (=> b!1437013 (=> (not res!970005) (not e!810821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437013 (= res!970005 (validKeyInArray!0 (select (arr!47141 a!2862) i!1006)))))

(declare-fun b!1437014 () Bool)

(declare-fun res!970003 () Bool)

(assert (=> b!1437014 (=> (not res!970003) (not e!810821))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437014 (= res!970003 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47692 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47692 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47692 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47141 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437015 () Bool)

(declare-fun res!970002 () Bool)

(assert (=> b!1437015 (=> (not res!970002) (not e!810821))))

(declare-datatypes ((List!33822 0))(
  ( (Nil!33819) (Cons!33818 (h!35156 (_ BitVec 64)) (t!48523 List!33822)) )
))
(declare-fun arrayNoDuplicates!0 (array!97703 (_ BitVec 32) List!33822) Bool)

(assert (=> b!1437015 (= res!970002 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33819))))

(declare-fun b!1437016 () Bool)

(declare-fun res!970004 () Bool)

(assert (=> b!1437016 (=> (not res!970004) (not e!810821))))

(assert (=> b!1437016 (= res!970004 (validKeyInArray!0 (select (arr!47141 a!2862) j!93)))))

(declare-fun res!970006 () Bool)

(assert (=> start!124182 (=> (not res!970006) (not e!810821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124182 (= res!970006 (validMask!0 mask!2687))))

(assert (=> start!124182 e!810821))

(assert (=> start!124182 true))

(declare-fun array_inv!36086 (array!97703) Bool)

(assert (=> start!124182 (array_inv!36086 a!2862)))

(assert (= (and start!124182 res!970006) b!1437011))

(assert (= (and b!1437011 res!970007) b!1437013))

(assert (= (and b!1437013 res!970005) b!1437016))

(assert (= (and b!1437016 res!970004) b!1437012))

(assert (= (and b!1437012 res!970008) b!1437015))

(assert (= (and b!1437015 res!970002) b!1437014))

(assert (= (and b!1437014 res!970003) b!1437010))

(declare-fun m!1326381 () Bool)

(assert (=> start!124182 m!1326381))

(declare-fun m!1326383 () Bool)

(assert (=> start!124182 m!1326383))

(declare-fun m!1326385 () Bool)

(assert (=> b!1437010 m!1326385))

(assert (=> b!1437010 m!1326385))

(declare-fun m!1326387 () Bool)

(assert (=> b!1437010 m!1326387))

(assert (=> b!1437010 m!1326387))

(assert (=> b!1437010 m!1326385))

(declare-fun m!1326389 () Bool)

(assert (=> b!1437010 m!1326389))

(declare-fun m!1326391 () Bool)

(assert (=> b!1437013 m!1326391))

(assert (=> b!1437013 m!1326391))

(declare-fun m!1326393 () Bool)

(assert (=> b!1437013 m!1326393))

(assert (=> b!1437016 m!1326385))

(assert (=> b!1437016 m!1326385))

(declare-fun m!1326395 () Bool)

(assert (=> b!1437016 m!1326395))

(declare-fun m!1326397 () Bool)

(assert (=> b!1437012 m!1326397))

(declare-fun m!1326399 () Bool)

(assert (=> b!1437015 m!1326399))

(declare-fun m!1326401 () Bool)

(assert (=> b!1437014 m!1326401))

(declare-fun m!1326403 () Bool)

(assert (=> b!1437014 m!1326403))

(check-sat (not b!1437012) (not start!124182) (not b!1437010) (not b!1437016) (not b!1437015) (not b!1437013))
