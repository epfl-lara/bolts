; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125260 () Bool)

(assert start!125260)

(declare-fun b!1460616 () Bool)

(declare-fun res!990477 () Bool)

(declare-fun e!821266 () Bool)

(assert (=> b!1460616 (=> (not res!990477) (not e!821266))))

(declare-datatypes ((array!98625 0))(
  ( (array!98626 (arr!47596 (Array (_ BitVec 32) (_ BitVec 64))) (size!48147 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98625)

(declare-datatypes ((List!34277 0))(
  ( (Nil!34274) (Cons!34273 (h!35623 (_ BitVec 64)) (t!48978 List!34277)) )
))
(declare-fun arrayNoDuplicates!0 (array!98625 (_ BitVec 32) List!34277) Bool)

(assert (=> b!1460616 (= res!990477 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34274))))

(declare-fun b!1460617 () Bool)

(declare-fun e!821264 () Bool)

(assert (=> b!1460617 (= e!821264 (not true))))

(declare-fun e!821265 () Bool)

(assert (=> b!1460617 e!821265))

(declare-fun res!990480 () Bool)

(assert (=> b!1460617 (=> (not res!990480) (not e!821265))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98625 (_ BitVec 32)) Bool)

(assert (=> b!1460617 (= res!990480 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49186 0))(
  ( (Unit!49187) )
))
(declare-fun lt!639838 () Unit!49186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98625 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49186)

(assert (=> b!1460617 (= lt!639838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!990471 () Bool)

(assert (=> start!125260 (=> (not res!990471) (not e!821266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125260 (= res!990471 (validMask!0 mask!2687))))

(assert (=> start!125260 e!821266))

(assert (=> start!125260 true))

(declare-fun array_inv!36541 (array!98625) Bool)

(assert (=> start!125260 (array_inv!36541 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1460618 () Bool)

(assert (=> b!1460618 (= e!821265 (or (= (select (arr!47596 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47596 a!2862) intermediateBeforeIndex!19) (select (arr!47596 a!2862) j!93))))))

(declare-fun b!1460619 () Bool)

(declare-fun res!990466 () Bool)

(assert (=> b!1460619 (=> (not res!990466) (not e!821265))))

(declare-datatypes ((SeekEntryResult!11871 0))(
  ( (MissingZero!11871 (index!49875 (_ BitVec 32))) (Found!11871 (index!49876 (_ BitVec 32))) (Intermediate!11871 (undefined!12683 Bool) (index!49877 (_ BitVec 32)) (x!131483 (_ BitVec 32))) (Undefined!11871) (MissingVacant!11871 (index!49878 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98625 (_ BitVec 32)) SeekEntryResult!11871)

(assert (=> b!1460619 (= res!990466 (= (seekEntryOrOpen!0 (select (arr!47596 a!2862) j!93) a!2862 mask!2687) (Found!11871 j!93)))))

(declare-fun e!821268 () Bool)

(declare-fun b!1460620 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!639837 () (_ BitVec 64))

(declare-fun lt!639839 () SeekEntryResult!11871)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!639840 () array!98625)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98625 (_ BitVec 32)) SeekEntryResult!11871)

(assert (=> b!1460620 (= e!821268 (= lt!639839 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639837 lt!639840 mask!2687)))))

(declare-fun b!1460621 () Bool)

(declare-fun res!990472 () Bool)

(assert (=> b!1460621 (=> (not res!990472) (not e!821264))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460621 (= res!990472 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460622 () Bool)

(declare-fun e!821269 () Bool)

(assert (=> b!1460622 (= e!821269 e!821264)))

(declare-fun res!990469 () Bool)

(assert (=> b!1460622 (=> (not res!990469) (not e!821264))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460622 (= res!990469 (= lt!639839 (Intermediate!11871 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460622 (= lt!639839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639837 mask!2687) lt!639837 lt!639840 mask!2687))))

(assert (=> b!1460622 (= lt!639837 (select (store (arr!47596 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460623 () Bool)

(declare-fun res!990475 () Bool)

(assert (=> b!1460623 (=> (not res!990475) (not e!821266))))

(assert (=> b!1460623 (= res!990475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460624 () Bool)

(declare-fun res!990473 () Bool)

(assert (=> b!1460624 (=> (not res!990473) (not e!821266))))

(assert (=> b!1460624 (= res!990473 (and (= (size!48147 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48147 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48147 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460625 () Bool)

(declare-fun e!821270 () Bool)

(assert (=> b!1460625 (= e!821270 e!821269)))

(declare-fun res!990479 () Bool)

(assert (=> b!1460625 (=> (not res!990479) (not e!821269))))

(declare-fun lt!639841 () SeekEntryResult!11871)

(assert (=> b!1460625 (= res!990479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47596 a!2862) j!93) mask!2687) (select (arr!47596 a!2862) j!93) a!2862 mask!2687) lt!639841))))

(assert (=> b!1460625 (= lt!639841 (Intermediate!11871 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460626 () Bool)

(declare-fun res!990478 () Bool)

(assert (=> b!1460626 (=> (not res!990478) (not e!821269))))

(assert (=> b!1460626 (= res!990478 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47596 a!2862) j!93) a!2862 mask!2687) lt!639841))))

(declare-fun b!1460627 () Bool)

(declare-fun res!990470 () Bool)

(assert (=> b!1460627 (=> (not res!990470) (not e!821266))))

(assert (=> b!1460627 (= res!990470 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48147 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48147 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48147 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460628 () Bool)

(declare-fun res!990468 () Bool)

(assert (=> b!1460628 (=> (not res!990468) (not e!821266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460628 (= res!990468 (validKeyInArray!0 (select (arr!47596 a!2862) j!93)))))

(declare-fun b!1460629 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98625 (_ BitVec 32)) SeekEntryResult!11871)

(assert (=> b!1460629 (= e!821268 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639837 lt!639840 mask!2687) (seekEntryOrOpen!0 lt!639837 lt!639840 mask!2687)))))

(declare-fun b!1460630 () Bool)

(declare-fun res!990476 () Bool)

(assert (=> b!1460630 (=> (not res!990476) (not e!821264))))

(assert (=> b!1460630 (= res!990476 e!821268)))

(declare-fun c!134588 () Bool)

(assert (=> b!1460630 (= c!134588 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460631 () Bool)

(declare-fun res!990467 () Bool)

(assert (=> b!1460631 (=> (not res!990467) (not e!821266))))

(assert (=> b!1460631 (= res!990467 (validKeyInArray!0 (select (arr!47596 a!2862) i!1006)))))

(declare-fun b!1460632 () Bool)

(assert (=> b!1460632 (= e!821266 e!821270)))

(declare-fun res!990474 () Bool)

(assert (=> b!1460632 (=> (not res!990474) (not e!821270))))

(assert (=> b!1460632 (= res!990474 (= (select (store (arr!47596 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460632 (= lt!639840 (array!98626 (store (arr!47596 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48147 a!2862)))))

(assert (= (and start!125260 res!990471) b!1460624))

(assert (= (and b!1460624 res!990473) b!1460631))

(assert (= (and b!1460631 res!990467) b!1460628))

(assert (= (and b!1460628 res!990468) b!1460623))

(assert (= (and b!1460623 res!990475) b!1460616))

(assert (= (and b!1460616 res!990477) b!1460627))

(assert (= (and b!1460627 res!990470) b!1460632))

(assert (= (and b!1460632 res!990474) b!1460625))

(assert (= (and b!1460625 res!990479) b!1460626))

(assert (= (and b!1460626 res!990478) b!1460622))

(assert (= (and b!1460622 res!990469) b!1460630))

(assert (= (and b!1460630 c!134588) b!1460620))

(assert (= (and b!1460630 (not c!134588)) b!1460629))

(assert (= (and b!1460630 res!990476) b!1460621))

(assert (= (and b!1460621 res!990472) b!1460617))

(assert (= (and b!1460617 res!990480) b!1460619))

(assert (= (and b!1460619 res!990466) b!1460618))

(declare-fun m!1348347 () Bool)

(assert (=> b!1460632 m!1348347))

(declare-fun m!1348349 () Bool)

(assert (=> b!1460632 m!1348349))

(declare-fun m!1348351 () Bool)

(assert (=> b!1460631 m!1348351))

(assert (=> b!1460631 m!1348351))

(declare-fun m!1348353 () Bool)

(assert (=> b!1460631 m!1348353))

(declare-fun m!1348355 () Bool)

(assert (=> b!1460616 m!1348355))

(declare-fun m!1348357 () Bool)

(assert (=> b!1460626 m!1348357))

(assert (=> b!1460626 m!1348357))

(declare-fun m!1348359 () Bool)

(assert (=> b!1460626 m!1348359))

(declare-fun m!1348361 () Bool)

(assert (=> b!1460620 m!1348361))

(declare-fun m!1348363 () Bool)

(assert (=> b!1460617 m!1348363))

(declare-fun m!1348365 () Bool)

(assert (=> b!1460617 m!1348365))

(declare-fun m!1348367 () Bool)

(assert (=> b!1460618 m!1348367))

(assert (=> b!1460618 m!1348357))

(assert (=> b!1460619 m!1348357))

(assert (=> b!1460619 m!1348357))

(declare-fun m!1348369 () Bool)

(assert (=> b!1460619 m!1348369))

(declare-fun m!1348371 () Bool)

(assert (=> b!1460623 m!1348371))

(declare-fun m!1348373 () Bool)

(assert (=> b!1460629 m!1348373))

(declare-fun m!1348375 () Bool)

(assert (=> b!1460629 m!1348375))

(assert (=> b!1460625 m!1348357))

(assert (=> b!1460625 m!1348357))

(declare-fun m!1348377 () Bool)

(assert (=> b!1460625 m!1348377))

(assert (=> b!1460625 m!1348377))

(assert (=> b!1460625 m!1348357))

(declare-fun m!1348379 () Bool)

(assert (=> b!1460625 m!1348379))

(assert (=> b!1460628 m!1348357))

(assert (=> b!1460628 m!1348357))

(declare-fun m!1348381 () Bool)

(assert (=> b!1460628 m!1348381))

(declare-fun m!1348383 () Bool)

(assert (=> b!1460622 m!1348383))

(assert (=> b!1460622 m!1348383))

(declare-fun m!1348385 () Bool)

(assert (=> b!1460622 m!1348385))

(assert (=> b!1460622 m!1348347))

(declare-fun m!1348387 () Bool)

(assert (=> b!1460622 m!1348387))

(declare-fun m!1348389 () Bool)

(assert (=> start!125260 m!1348389))

(declare-fun m!1348391 () Bool)

(assert (=> start!125260 m!1348391))

(push 1)

