; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125254 () Bool)

(assert start!125254)

(declare-fun b!1460463 () Bool)

(declare-fun res!990338 () Bool)

(declare-fun e!821202 () Bool)

(assert (=> b!1460463 (=> (not res!990338) (not e!821202))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460463 (= res!990338 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1460464 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!98619 0))(
  ( (array!98620 (arr!47593 (Array (_ BitVec 32) (_ BitVec 64))) (size!48144 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98619)

(assert (=> b!1460464 (= e!821202 (not (or (and (= (select (arr!47593 a!2862) index!646) (select (store (arr!47593 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47593 a!2862) index!646) (select (arr!47593 a!2862) j!93))) (= (select (arr!47593 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun e!821201 () Bool)

(assert (=> b!1460464 e!821201))

(declare-fun res!990334 () Bool)

(assert (=> b!1460464 (=> (not res!990334) (not e!821201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98619 (_ BitVec 32)) Bool)

(assert (=> b!1460464 (= res!990334 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49180 0))(
  ( (Unit!49181) )
))
(declare-fun lt!639793 () Unit!49180)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98619 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49180)

(assert (=> b!1460464 (= lt!639793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460465 () Bool)

(declare-fun res!990343 () Bool)

(declare-fun e!821206 () Bool)

(assert (=> b!1460465 (=> (not res!990343) (not e!821206))))

(assert (=> b!1460465 (= res!990343 (and (= (size!48144 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48144 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48144 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460466 () Bool)

(declare-fun res!990336 () Bool)

(assert (=> b!1460466 (=> (not res!990336) (not e!821201))))

(declare-datatypes ((SeekEntryResult!11868 0))(
  ( (MissingZero!11868 (index!49863 (_ BitVec 32))) (Found!11868 (index!49864 (_ BitVec 32))) (Intermediate!11868 (undefined!12680 Bool) (index!49865 (_ BitVec 32)) (x!131472 (_ BitVec 32))) (Undefined!11868) (MissingVacant!11868 (index!49866 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98619 (_ BitVec 32)) SeekEntryResult!11868)

(assert (=> b!1460466 (= res!990336 (= (seekEntryOrOpen!0 (select (arr!47593 a!2862) j!93) a!2862 mask!2687) (Found!11868 j!93)))))

(declare-fun res!990337 () Bool)

(assert (=> start!125254 (=> (not res!990337) (not e!821206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125254 (= res!990337 (validMask!0 mask!2687))))

(assert (=> start!125254 e!821206))

(assert (=> start!125254 true))

(declare-fun array_inv!36538 (array!98619) Bool)

(assert (=> start!125254 (array_inv!36538 a!2862)))

(declare-fun b!1460467 () Bool)

(declare-fun res!990333 () Bool)

(assert (=> b!1460467 (=> (not res!990333) (not e!821206))))

(assert (=> b!1460467 (= res!990333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460468 () Bool)

(declare-fun e!821205 () Bool)

(assert (=> b!1460468 (= e!821205 e!821202)))

(declare-fun res!990345 () Bool)

(assert (=> b!1460468 (=> (not res!990345) (not e!821202))))

(declare-fun lt!639795 () SeekEntryResult!11868)

(assert (=> b!1460468 (= res!990345 (= lt!639795 (Intermediate!11868 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639796 () array!98619)

(declare-fun lt!639792 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98619 (_ BitVec 32)) SeekEntryResult!11868)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460468 (= lt!639795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639792 mask!2687) lt!639792 lt!639796 mask!2687))))

(assert (=> b!1460468 (= lt!639792 (select (store (arr!47593 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460469 () Bool)

(declare-fun res!990332 () Bool)

(assert (=> b!1460469 (=> (not res!990332) (not e!821206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460469 (= res!990332 (validKeyInArray!0 (select (arr!47593 a!2862) i!1006)))))

(declare-fun b!1460470 () Bool)

(declare-fun e!821204 () Bool)

(assert (=> b!1460470 (= e!821204 e!821205)))

(declare-fun res!990331 () Bool)

(assert (=> b!1460470 (=> (not res!990331) (not e!821205))))

(declare-fun lt!639794 () SeekEntryResult!11868)

(assert (=> b!1460470 (= res!990331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47593 a!2862) j!93) mask!2687) (select (arr!47593 a!2862) j!93) a!2862 mask!2687) lt!639794))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1460470 (= lt!639794 (Intermediate!11868 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460471 () Bool)

(assert (=> b!1460471 (= e!821201 (or (= (select (arr!47593 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47593 a!2862) intermediateBeforeIndex!19) (select (arr!47593 a!2862) j!93))))))

(declare-fun e!821203 () Bool)

(declare-fun b!1460472 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98619 (_ BitVec 32)) SeekEntryResult!11868)

(assert (=> b!1460472 (= e!821203 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639792 lt!639796 mask!2687) (seekEntryOrOpen!0 lt!639792 lt!639796 mask!2687)))))

(declare-fun b!1460473 () Bool)

(declare-fun res!990340 () Bool)

(assert (=> b!1460473 (=> (not res!990340) (not e!821205))))

(assert (=> b!1460473 (= res!990340 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47593 a!2862) j!93) a!2862 mask!2687) lt!639794))))

(declare-fun b!1460474 () Bool)

(assert (=> b!1460474 (= e!821203 (= lt!639795 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639792 lt!639796 mask!2687)))))

(declare-fun b!1460475 () Bool)

(declare-fun res!990344 () Bool)

(assert (=> b!1460475 (=> (not res!990344) (not e!821206))))

(declare-datatypes ((List!34274 0))(
  ( (Nil!34271) (Cons!34270 (h!35620 (_ BitVec 64)) (t!48975 List!34274)) )
))
(declare-fun arrayNoDuplicates!0 (array!98619 (_ BitVec 32) List!34274) Bool)

(assert (=> b!1460475 (= res!990344 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34271))))

(declare-fun b!1460476 () Bool)

(declare-fun res!990335 () Bool)

(assert (=> b!1460476 (=> (not res!990335) (not e!821202))))

(assert (=> b!1460476 (= res!990335 e!821203)))

(declare-fun c!134579 () Bool)

(assert (=> b!1460476 (= c!134579 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460477 () Bool)

(assert (=> b!1460477 (= e!821206 e!821204)))

(declare-fun res!990341 () Bool)

(assert (=> b!1460477 (=> (not res!990341) (not e!821204))))

(assert (=> b!1460477 (= res!990341 (= (select (store (arr!47593 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460477 (= lt!639796 (array!98620 (store (arr!47593 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48144 a!2862)))))

(declare-fun b!1460478 () Bool)

(declare-fun res!990339 () Bool)

(assert (=> b!1460478 (=> (not res!990339) (not e!821206))))

(assert (=> b!1460478 (= res!990339 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48144 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48144 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48144 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460479 () Bool)

(declare-fun res!990342 () Bool)

(assert (=> b!1460479 (=> (not res!990342) (not e!821206))))

(assert (=> b!1460479 (= res!990342 (validKeyInArray!0 (select (arr!47593 a!2862) j!93)))))

(assert (= (and start!125254 res!990337) b!1460465))

(assert (= (and b!1460465 res!990343) b!1460469))

(assert (= (and b!1460469 res!990332) b!1460479))

(assert (= (and b!1460479 res!990342) b!1460467))

(assert (= (and b!1460467 res!990333) b!1460475))

(assert (= (and b!1460475 res!990344) b!1460478))

(assert (= (and b!1460478 res!990339) b!1460477))

(assert (= (and b!1460477 res!990341) b!1460470))

(assert (= (and b!1460470 res!990331) b!1460473))

(assert (= (and b!1460473 res!990340) b!1460468))

(assert (= (and b!1460468 res!990345) b!1460476))

(assert (= (and b!1460476 c!134579) b!1460474))

(assert (= (and b!1460476 (not c!134579)) b!1460472))

(assert (= (and b!1460476 res!990335) b!1460463))

(assert (= (and b!1460463 res!990338) b!1460464))

(assert (= (and b!1460464 res!990334) b!1460466))

(assert (= (and b!1460466 res!990336) b!1460471))

(declare-fun m!1348197 () Bool)

(assert (=> b!1460479 m!1348197))

(assert (=> b!1460479 m!1348197))

(declare-fun m!1348199 () Bool)

(assert (=> b!1460479 m!1348199))

(declare-fun m!1348201 () Bool)

(assert (=> b!1460474 m!1348201))

(declare-fun m!1348203 () Bool)

(assert (=> b!1460477 m!1348203))

(declare-fun m!1348205 () Bool)

(assert (=> b!1460477 m!1348205))

(declare-fun m!1348207 () Bool)

(assert (=> b!1460472 m!1348207))

(declare-fun m!1348209 () Bool)

(assert (=> b!1460472 m!1348209))

(declare-fun m!1348211 () Bool)

(assert (=> b!1460464 m!1348211))

(assert (=> b!1460464 m!1348203))

(declare-fun m!1348213 () Bool)

(assert (=> b!1460464 m!1348213))

(declare-fun m!1348215 () Bool)

(assert (=> b!1460464 m!1348215))

(declare-fun m!1348217 () Bool)

(assert (=> b!1460464 m!1348217))

(assert (=> b!1460464 m!1348197))

(declare-fun m!1348219 () Bool)

(assert (=> start!125254 m!1348219))

(declare-fun m!1348221 () Bool)

(assert (=> start!125254 m!1348221))

(declare-fun m!1348223 () Bool)

(assert (=> b!1460467 m!1348223))

(declare-fun m!1348225 () Bool)

(assert (=> b!1460468 m!1348225))

(assert (=> b!1460468 m!1348225))

(declare-fun m!1348227 () Bool)

(assert (=> b!1460468 m!1348227))

(assert (=> b!1460468 m!1348203))

(declare-fun m!1348229 () Bool)

(assert (=> b!1460468 m!1348229))

(declare-fun m!1348231 () Bool)

(assert (=> b!1460471 m!1348231))

(assert (=> b!1460471 m!1348197))

(declare-fun m!1348233 () Bool)

(assert (=> b!1460469 m!1348233))

(assert (=> b!1460469 m!1348233))

(declare-fun m!1348235 () Bool)

(assert (=> b!1460469 m!1348235))

(assert (=> b!1460470 m!1348197))

(assert (=> b!1460470 m!1348197))

(declare-fun m!1348237 () Bool)

(assert (=> b!1460470 m!1348237))

(assert (=> b!1460470 m!1348237))

(assert (=> b!1460470 m!1348197))

(declare-fun m!1348239 () Bool)

(assert (=> b!1460470 m!1348239))

(declare-fun m!1348241 () Bool)

(assert (=> b!1460475 m!1348241))

(assert (=> b!1460473 m!1348197))

(assert (=> b!1460473 m!1348197))

(declare-fun m!1348243 () Bool)

(assert (=> b!1460473 m!1348243))

(assert (=> b!1460466 m!1348197))

(assert (=> b!1460466 m!1348197))

(declare-fun m!1348245 () Bool)

(assert (=> b!1460466 m!1348245))

(push 1)

(assert (not start!125254))

(assert (not b!1460470))

(assert (not b!1460473))

(assert (not b!1460467))

(assert (not b!1460475))

(assert (not b!1460469))

(assert (not b!1460466))

(assert (not b!1460464))

(assert (not b!1460479))

(assert (not b!1460474))

(assert (not b!1460468))

(assert (not b!1460472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

