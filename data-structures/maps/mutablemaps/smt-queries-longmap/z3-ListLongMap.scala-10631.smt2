; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124968 () Bool)

(assert start!124968)

(declare-fun b!1451555 () Bool)

(declare-fun res!982884 () Bool)

(declare-fun e!817290 () Bool)

(assert (=> b!1451555 (=> (not res!982884) (not e!817290))))

(declare-datatypes ((array!98333 0))(
  ( (array!98334 (arr!47450 (Array (_ BitVec 32) (_ BitVec 64))) (size!48001 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98333)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11725 0))(
  ( (MissingZero!11725 (index!49291 (_ BitVec 32))) (Found!11725 (index!49292 (_ BitVec 32))) (Intermediate!11725 (undefined!12537 Bool) (index!49293 (_ BitVec 32)) (x!130945 (_ BitVec 32))) (Undefined!11725) (MissingVacant!11725 (index!49294 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98333 (_ BitVec 32)) SeekEntryResult!11725)

(assert (=> b!1451555 (= res!982884 (= (seekEntryOrOpen!0 (select (arr!47450 a!2862) j!93) a!2862 mask!2687) (Found!11725 j!93)))))

(declare-fun b!1451556 () Bool)

(declare-fun res!982890 () Bool)

(declare-fun e!817286 () Bool)

(assert (=> b!1451556 (=> (not res!982890) (not e!817286))))

(declare-fun e!817288 () Bool)

(assert (=> b!1451556 (= res!982890 e!817288)))

(declare-fun c!133853 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1451556 (= c!133853 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451557 () Bool)

(declare-fun e!817289 () Bool)

(declare-fun e!817287 () Bool)

(assert (=> b!1451557 (= e!817289 e!817287)))

(declare-fun res!982887 () Bool)

(assert (=> b!1451557 (=> (not res!982887) (not e!817287))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451557 (= res!982887 (= (select (store (arr!47450 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636652 () array!98333)

(assert (=> b!1451557 (= lt!636652 (array!98334 (store (arr!47450 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48001 a!2862)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1451559 () Bool)

(declare-fun lt!636651 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98333 (_ BitVec 32)) SeekEntryResult!11725)

(assert (=> b!1451559 (= e!817288 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636651 lt!636652 mask!2687) (seekEntryOrOpen!0 lt!636651 lt!636652 mask!2687)))))

(declare-fun b!1451560 () Bool)

(declare-fun res!982883 () Bool)

(assert (=> b!1451560 (=> (not res!982883) (not e!817289))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451560 (= res!982883 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48001 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48001 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48001 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451561 () Bool)

(declare-fun res!982876 () Bool)

(assert (=> b!1451561 (=> (not res!982876) (not e!817289))))

(declare-datatypes ((List!34131 0))(
  ( (Nil!34128) (Cons!34127 (h!35477 (_ BitVec 64)) (t!48832 List!34131)) )
))
(declare-fun arrayNoDuplicates!0 (array!98333 (_ BitVec 32) List!34131) Bool)

(assert (=> b!1451561 (= res!982876 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34128))))

(declare-fun b!1451562 () Bool)

(declare-fun res!982875 () Bool)

(assert (=> b!1451562 (=> (not res!982875) (not e!817289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98333 (_ BitVec 32)) Bool)

(assert (=> b!1451562 (= res!982875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451563 () Bool)

(declare-fun e!817285 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451563 (= e!817285 (validKeyInArray!0 lt!636651))))

(declare-fun b!1451564 () Bool)

(declare-fun res!982877 () Bool)

(declare-fun e!817291 () Bool)

(assert (=> b!1451564 (=> (not res!982877) (not e!817291))))

(declare-fun lt!636649 () SeekEntryResult!11725)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98333 (_ BitVec 32)) SeekEntryResult!11725)

(assert (=> b!1451564 (= res!982877 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47450 a!2862) j!93) a!2862 mask!2687) lt!636649))))

(declare-fun b!1451565 () Bool)

(declare-fun lt!636648 () SeekEntryResult!11725)

(assert (=> b!1451565 (= e!817288 (= lt!636648 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636651 lt!636652 mask!2687)))))

(declare-fun b!1451566 () Bool)

(assert (=> b!1451566 (= e!817287 e!817291)))

(declare-fun res!982878 () Bool)

(assert (=> b!1451566 (=> (not res!982878) (not e!817291))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451566 (= res!982878 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47450 a!2862) j!93) mask!2687) (select (arr!47450 a!2862) j!93) a!2862 mask!2687) lt!636649))))

(assert (=> b!1451566 (= lt!636649 (Intermediate!11725 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451567 () Bool)

(assert (=> b!1451567 (= e!817290 (and (or (= (select (arr!47450 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47450 a!2862) intermediateBeforeIndex!19) (select (arr!47450 a!2862) j!93))) (or (and (= (select (arr!47450 a!2862) index!646) (select (store (arr!47450 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47450 a!2862) index!646) (select (arr!47450 a!2862) j!93))) (= (select (arr!47450 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47450 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451568 () Bool)

(declare-fun res!982881 () Bool)

(assert (=> b!1451568 (=> (not res!982881) (not e!817289))))

(assert (=> b!1451568 (= res!982881 (validKeyInArray!0 (select (arr!47450 a!2862) i!1006)))))

(declare-fun b!1451569 () Bool)

(assert (=> b!1451569 (= e!817286 (not e!817285))))

(declare-fun res!982885 () Bool)

(assert (=> b!1451569 (=> res!982885 e!817285)))

(assert (=> b!1451569 (= res!982885 (or (and (= (select (arr!47450 a!2862) index!646) (select (store (arr!47450 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47450 a!2862) index!646) (select (arr!47450 a!2862) j!93))) (= (select (arr!47450 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(assert (=> b!1451569 e!817290))

(declare-fun res!982879 () Bool)

(assert (=> b!1451569 (=> (not res!982879) (not e!817290))))

(assert (=> b!1451569 (= res!982879 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48894 0))(
  ( (Unit!48895) )
))
(declare-fun lt!636650 () Unit!48894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48894)

(assert (=> b!1451569 (= lt!636650 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451570 () Bool)

(assert (=> b!1451570 (= e!817291 e!817286)))

(declare-fun res!982880 () Bool)

(assert (=> b!1451570 (=> (not res!982880) (not e!817286))))

(assert (=> b!1451570 (= res!982880 (= lt!636648 (Intermediate!11725 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451570 (= lt!636648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636651 mask!2687) lt!636651 lt!636652 mask!2687))))

(assert (=> b!1451570 (= lt!636651 (select (store (arr!47450 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451558 () Bool)

(declare-fun res!982889 () Bool)

(assert (=> b!1451558 (=> (not res!982889) (not e!817286))))

(assert (=> b!1451558 (= res!982889 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!982882 () Bool)

(assert (=> start!124968 (=> (not res!982882) (not e!817289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124968 (= res!982882 (validMask!0 mask!2687))))

(assert (=> start!124968 e!817289))

(assert (=> start!124968 true))

(declare-fun array_inv!36395 (array!98333) Bool)

(assert (=> start!124968 (array_inv!36395 a!2862)))

(declare-fun b!1451571 () Bool)

(declare-fun res!982888 () Bool)

(assert (=> b!1451571 (=> (not res!982888) (not e!817289))))

(assert (=> b!1451571 (= res!982888 (and (= (size!48001 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48001 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48001 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451572 () Bool)

(declare-fun res!982886 () Bool)

(assert (=> b!1451572 (=> (not res!982886) (not e!817289))))

(assert (=> b!1451572 (= res!982886 (validKeyInArray!0 (select (arr!47450 a!2862) j!93)))))

(assert (= (and start!124968 res!982882) b!1451571))

(assert (= (and b!1451571 res!982888) b!1451568))

(assert (= (and b!1451568 res!982881) b!1451572))

(assert (= (and b!1451572 res!982886) b!1451562))

(assert (= (and b!1451562 res!982875) b!1451561))

(assert (= (and b!1451561 res!982876) b!1451560))

(assert (= (and b!1451560 res!982883) b!1451557))

(assert (= (and b!1451557 res!982887) b!1451566))

(assert (= (and b!1451566 res!982878) b!1451564))

(assert (= (and b!1451564 res!982877) b!1451570))

(assert (= (and b!1451570 res!982880) b!1451556))

(assert (= (and b!1451556 c!133853) b!1451565))

(assert (= (and b!1451556 (not c!133853)) b!1451559))

(assert (= (and b!1451556 res!982890) b!1451558))

(assert (= (and b!1451558 res!982889) b!1451569))

(assert (= (and b!1451569 res!982879) b!1451555))

(assert (= (and b!1451555 res!982884) b!1451567))

(assert (= (and b!1451569 (not res!982885)) b!1451563))

(declare-fun m!1340203 () Bool)

(assert (=> b!1451569 m!1340203))

(declare-fun m!1340205 () Bool)

(assert (=> b!1451569 m!1340205))

(declare-fun m!1340207 () Bool)

(assert (=> b!1451569 m!1340207))

(declare-fun m!1340209 () Bool)

(assert (=> b!1451569 m!1340209))

(declare-fun m!1340211 () Bool)

(assert (=> b!1451569 m!1340211))

(declare-fun m!1340213 () Bool)

(assert (=> b!1451569 m!1340213))

(declare-fun m!1340215 () Bool)

(assert (=> b!1451570 m!1340215))

(assert (=> b!1451570 m!1340215))

(declare-fun m!1340217 () Bool)

(assert (=> b!1451570 m!1340217))

(assert (=> b!1451570 m!1340205))

(declare-fun m!1340219 () Bool)

(assert (=> b!1451570 m!1340219))

(assert (=> b!1451567 m!1340205))

(declare-fun m!1340221 () Bool)

(assert (=> b!1451567 m!1340221))

(assert (=> b!1451567 m!1340207))

(assert (=> b!1451567 m!1340209))

(assert (=> b!1451567 m!1340213))

(declare-fun m!1340223 () Bool)

(assert (=> b!1451568 m!1340223))

(assert (=> b!1451568 m!1340223))

(declare-fun m!1340225 () Bool)

(assert (=> b!1451568 m!1340225))

(assert (=> b!1451555 m!1340213))

(assert (=> b!1451555 m!1340213))

(declare-fun m!1340227 () Bool)

(assert (=> b!1451555 m!1340227))

(assert (=> b!1451572 m!1340213))

(assert (=> b!1451572 m!1340213))

(declare-fun m!1340229 () Bool)

(assert (=> b!1451572 m!1340229))

(assert (=> b!1451564 m!1340213))

(assert (=> b!1451564 m!1340213))

(declare-fun m!1340231 () Bool)

(assert (=> b!1451564 m!1340231))

(assert (=> b!1451557 m!1340205))

(declare-fun m!1340233 () Bool)

(assert (=> b!1451557 m!1340233))

(declare-fun m!1340235 () Bool)

(assert (=> start!124968 m!1340235))

(declare-fun m!1340237 () Bool)

(assert (=> start!124968 m!1340237))

(declare-fun m!1340239 () Bool)

(assert (=> b!1451559 m!1340239))

(declare-fun m!1340241 () Bool)

(assert (=> b!1451559 m!1340241))

(declare-fun m!1340243 () Bool)

(assert (=> b!1451561 m!1340243))

(declare-fun m!1340245 () Bool)

(assert (=> b!1451563 m!1340245))

(assert (=> b!1451566 m!1340213))

(assert (=> b!1451566 m!1340213))

(declare-fun m!1340247 () Bool)

(assert (=> b!1451566 m!1340247))

(assert (=> b!1451566 m!1340247))

(assert (=> b!1451566 m!1340213))

(declare-fun m!1340249 () Bool)

(assert (=> b!1451566 m!1340249))

(declare-fun m!1340251 () Bool)

(assert (=> b!1451565 m!1340251))

(declare-fun m!1340253 () Bool)

(assert (=> b!1451562 m!1340253))

(check-sat (not b!1451555) (not b!1451569) (not b!1451568) (not b!1451570) (not b!1451562) (not b!1451572) (not b!1451561) (not start!124968) (not b!1451566) (not b!1451564) (not b!1451565) (not b!1451563) (not b!1451559))
(check-sat)
