; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124506 () Bool)

(assert start!124506)

(declare-fun b!1440008 () Bool)

(declare-fun res!972547 () Bool)

(declare-fun e!812060 () Bool)

(assert (=> b!1440008 (=> (not res!972547) (not e!812060))))

(declare-datatypes ((array!97871 0))(
  ( (array!97872 (arr!47219 (Array (_ BitVec 32) (_ BitVec 64))) (size!47770 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97871)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97871 (_ BitVec 32)) Bool)

(assert (=> b!1440008 (= res!972547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440009 () Bool)

(declare-fun res!972551 () Bool)

(assert (=> b!1440009 (=> (not res!972551) (not e!812060))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440009 (= res!972551 (validKeyInArray!0 (select (arr!47219 a!2862) i!1006)))))

(declare-fun b!1440010 () Bool)

(declare-fun e!812058 () Bool)

(assert (=> b!1440010 (= e!812058 false)))

(declare-datatypes ((SeekEntryResult!11494 0))(
  ( (MissingZero!11494 (index!48367 (_ BitVec 32))) (Found!11494 (index!48368 (_ BitVec 32))) (Intermediate!11494 (undefined!12306 Bool) (index!48369 (_ BitVec 32)) (x!130098 (_ BitVec 32))) (Undefined!11494) (MissingVacant!11494 (index!48370 (_ BitVec 32))) )
))
(declare-fun lt!632853 () SeekEntryResult!11494)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97871 (_ BitVec 32)) SeekEntryResult!11494)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440010 (= lt!632853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47219 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47219 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97872 (store (arr!47219 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47770 a!2862)) mask!2687))))

(declare-fun b!1440011 () Bool)

(declare-fun res!972546 () Bool)

(assert (=> b!1440011 (=> (not res!972546) (not e!812060))))

(declare-datatypes ((List!33900 0))(
  ( (Nil!33897) (Cons!33896 (h!35246 (_ BitVec 64)) (t!48601 List!33900)) )
))
(declare-fun arrayNoDuplicates!0 (array!97871 (_ BitVec 32) List!33900) Bool)

(assert (=> b!1440011 (= res!972546 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33897))))

(declare-fun res!972545 () Bool)

(assert (=> start!124506 (=> (not res!972545) (not e!812060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124506 (= res!972545 (validMask!0 mask!2687))))

(assert (=> start!124506 e!812060))

(assert (=> start!124506 true))

(declare-fun array_inv!36164 (array!97871) Bool)

(assert (=> start!124506 (array_inv!36164 a!2862)))

(declare-fun b!1440012 () Bool)

(declare-fun res!972550 () Bool)

(assert (=> b!1440012 (=> (not res!972550) (not e!812060))))

(assert (=> b!1440012 (= res!972550 (and (= (size!47770 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47770 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47770 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440013 () Bool)

(declare-fun res!972552 () Bool)

(assert (=> b!1440013 (=> (not res!972552) (not e!812058))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!632854 () SeekEntryResult!11494)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440013 (= res!972552 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47219 a!2862) j!93) a!2862 mask!2687) lt!632854))))

(declare-fun b!1440014 () Bool)

(declare-fun res!972544 () Bool)

(assert (=> b!1440014 (=> (not res!972544) (not e!812060))))

(assert (=> b!1440014 (= res!972544 (validKeyInArray!0 (select (arr!47219 a!2862) j!93)))))

(declare-fun b!1440015 () Bool)

(declare-fun res!972549 () Bool)

(assert (=> b!1440015 (=> (not res!972549) (not e!812060))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440015 (= res!972549 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47770 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47770 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47770 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47219 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440016 () Bool)

(assert (=> b!1440016 (= e!812060 e!812058)))

(declare-fun res!972548 () Bool)

(assert (=> b!1440016 (=> (not res!972548) (not e!812058))))

(assert (=> b!1440016 (= res!972548 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47219 a!2862) j!93) mask!2687) (select (arr!47219 a!2862) j!93) a!2862 mask!2687) lt!632854))))

(assert (=> b!1440016 (= lt!632854 (Intermediate!11494 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124506 res!972545) b!1440012))

(assert (= (and b!1440012 res!972550) b!1440009))

(assert (= (and b!1440009 res!972551) b!1440014))

(assert (= (and b!1440014 res!972544) b!1440008))

(assert (= (and b!1440008 res!972547) b!1440011))

(assert (= (and b!1440011 res!972546) b!1440015))

(assert (= (and b!1440015 res!972549) b!1440016))

(assert (= (and b!1440016 res!972548) b!1440013))

(assert (= (and b!1440013 res!972552) b!1440010))

(declare-fun m!1329215 () Bool)

(assert (=> b!1440010 m!1329215))

(declare-fun m!1329217 () Bool)

(assert (=> b!1440010 m!1329217))

(assert (=> b!1440010 m!1329217))

(declare-fun m!1329219 () Bool)

(assert (=> b!1440010 m!1329219))

(assert (=> b!1440010 m!1329219))

(assert (=> b!1440010 m!1329217))

(declare-fun m!1329221 () Bool)

(assert (=> b!1440010 m!1329221))

(assert (=> b!1440015 m!1329215))

(declare-fun m!1329223 () Bool)

(assert (=> b!1440015 m!1329223))

(declare-fun m!1329225 () Bool)

(assert (=> b!1440016 m!1329225))

(assert (=> b!1440016 m!1329225))

(declare-fun m!1329227 () Bool)

(assert (=> b!1440016 m!1329227))

(assert (=> b!1440016 m!1329227))

(assert (=> b!1440016 m!1329225))

(declare-fun m!1329229 () Bool)

(assert (=> b!1440016 m!1329229))

(assert (=> b!1440013 m!1329225))

(assert (=> b!1440013 m!1329225))

(declare-fun m!1329231 () Bool)

(assert (=> b!1440013 m!1329231))

(assert (=> b!1440014 m!1329225))

(assert (=> b!1440014 m!1329225))

(declare-fun m!1329233 () Bool)

(assert (=> b!1440014 m!1329233))

(declare-fun m!1329235 () Bool)

(assert (=> b!1440011 m!1329235))

(declare-fun m!1329237 () Bool)

(assert (=> b!1440009 m!1329237))

(assert (=> b!1440009 m!1329237))

(declare-fun m!1329239 () Bool)

(assert (=> b!1440009 m!1329239))

(declare-fun m!1329241 () Bool)

(assert (=> b!1440008 m!1329241))

(declare-fun m!1329243 () Bool)

(assert (=> start!124506 m!1329243))

(declare-fun m!1329245 () Bool)

(assert (=> start!124506 m!1329245))

(check-sat (not b!1440011) (not start!124506) (not b!1440014) (not b!1440008) (not b!1440010) (not b!1440009) (not b!1440016) (not b!1440013))
(check-sat)
