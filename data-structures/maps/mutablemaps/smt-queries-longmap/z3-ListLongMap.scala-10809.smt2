; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126546 () Bool)

(assert start!126546)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!831896 () Bool)

(declare-fun b!1483580 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!647446 () (_ BitVec 64))

(declare-datatypes ((array!99425 0))(
  ( (array!99426 (arr!47984 (Array (_ BitVec 32) (_ BitVec 64))) (size!48535 (_ BitVec 32))) )
))
(declare-fun lt!647441 () array!99425)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12247 0))(
  ( (MissingZero!12247 (index!51379 (_ BitVec 32))) (Found!12247 (index!51380 (_ BitVec 32))) (Intermediate!12247 (undefined!13059 Bool) (index!51381 (_ BitVec 32)) (x!132966 (_ BitVec 32))) (Undefined!12247) (MissingVacant!12247 (index!51382 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99425 (_ BitVec 32)) SeekEntryResult!12247)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99425 (_ BitVec 32)) SeekEntryResult!12247)

(assert (=> b!1483580 (= e!831896 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647446 lt!647441 mask!2687) (seekEntryOrOpen!0 lt!647446 lt!647441 mask!2687)))))

(declare-fun res!1008546 () Bool)

(declare-fun e!831890 () Bool)

(assert (=> start!126546 (=> (not res!1008546) (not e!831890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126546 (= res!1008546 (validMask!0 mask!2687))))

(assert (=> start!126546 e!831890))

(assert (=> start!126546 true))

(declare-fun a!2862 () array!99425)

(declare-fun array_inv!36929 (array!99425) Bool)

(assert (=> start!126546 (array_inv!36929 a!2862)))

(declare-fun b!1483581 () Bool)

(declare-fun e!831893 () Bool)

(assert (=> b!1483581 (= e!831893 (= (seekEntryOrOpen!0 lt!647446 lt!647441 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647446 lt!647441 mask!2687)))))

(declare-fun b!1483582 () Bool)

(declare-fun res!1008542 () Bool)

(assert (=> b!1483582 (=> (not res!1008542) (not e!831890))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483582 (= res!1008542 (validKeyInArray!0 (select (arr!47984 a!2862) i!1006)))))

(declare-fun b!1483583 () Bool)

(declare-fun e!831897 () Bool)

(assert (=> b!1483583 (= e!831897 true)))

(declare-fun lt!647444 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483583 (= lt!647444 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483584 () Bool)

(declare-fun e!831899 () Bool)

(assert (=> b!1483584 (= e!831899 e!831893)))

(declare-fun res!1008543 () Bool)

(assert (=> b!1483584 (=> (not res!1008543) (not e!831893))))

(declare-fun lt!647445 () (_ BitVec 64))

(assert (=> b!1483584 (= res!1008543 (and (= index!646 intermediateAfterIndex!19) (= lt!647445 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483585 () Bool)

(declare-fun res!1008555 () Bool)

(assert (=> b!1483585 (=> (not res!1008555) (not e!831890))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1483585 (= res!1008555 (and (= (size!48535 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48535 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48535 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483586 () Bool)

(declare-fun res!1008540 () Bool)

(assert (=> b!1483586 (=> (not res!1008540) (not e!831890))))

(assert (=> b!1483586 (= res!1008540 (validKeyInArray!0 (select (arr!47984 a!2862) j!93)))))

(declare-fun b!1483587 () Bool)

(declare-fun res!1008557 () Bool)

(declare-fun e!831891 () Bool)

(assert (=> b!1483587 (=> (not res!1008557) (not e!831891))))

(declare-fun lt!647440 () SeekEntryResult!12247)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99425 (_ BitVec 32)) SeekEntryResult!12247)

(assert (=> b!1483587 (= res!1008557 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47984 a!2862) j!93) a!2862 mask!2687) lt!647440))))

(declare-fun lt!647442 () SeekEntryResult!12247)

(declare-fun b!1483588 () Bool)

(assert (=> b!1483588 (= e!831896 (= lt!647442 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647446 lt!647441 mask!2687)))))

(declare-fun b!1483589 () Bool)

(declare-fun res!1008549 () Bool)

(declare-fun e!831894 () Bool)

(assert (=> b!1483589 (=> (not res!1008549) (not e!831894))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483589 (= res!1008549 (or (= (select (arr!47984 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47984 a!2862) intermediateBeforeIndex!19) (select (arr!47984 a!2862) j!93))))))

(declare-fun b!1483590 () Bool)

(declare-fun res!1008548 () Bool)

(assert (=> b!1483590 (=> (not res!1008548) (not e!831894))))

(assert (=> b!1483590 (= res!1008548 (= (seekEntryOrOpen!0 (select (arr!47984 a!2862) j!93) a!2862 mask!2687) (Found!12247 j!93)))))

(declare-fun b!1483591 () Bool)

(declare-fun res!1008550 () Bool)

(declare-fun e!831898 () Bool)

(assert (=> b!1483591 (=> (not res!1008550) (not e!831898))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483591 (= res!1008550 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483592 () Bool)

(assert (=> b!1483592 (= e!831894 e!831899)))

(declare-fun res!1008553 () Bool)

(assert (=> b!1483592 (=> res!1008553 e!831899)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483592 (= res!1008553 (or (and (= (select (arr!47984 a!2862) index!646) lt!647445) (= (select (arr!47984 a!2862) index!646) (select (arr!47984 a!2862) j!93))) (= (select (arr!47984 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483592 (= lt!647445 (select (store (arr!47984 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483593 () Bool)

(declare-fun res!1008545 () Bool)

(assert (=> b!1483593 (=> (not res!1008545) (not e!831890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99425 (_ BitVec 32)) Bool)

(assert (=> b!1483593 (= res!1008545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483594 () Bool)

(declare-fun e!831895 () Bool)

(assert (=> b!1483594 (= e!831895 e!831891)))

(declare-fun res!1008551 () Bool)

(assert (=> b!1483594 (=> (not res!1008551) (not e!831891))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483594 (= res!1008551 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47984 a!2862) j!93) mask!2687) (select (arr!47984 a!2862) j!93) a!2862 mask!2687) lt!647440))))

(assert (=> b!1483594 (= lt!647440 (Intermediate!12247 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483595 () Bool)

(assert (=> b!1483595 (= e!831890 e!831895)))

(declare-fun res!1008556 () Bool)

(assert (=> b!1483595 (=> (not res!1008556) (not e!831895))))

(assert (=> b!1483595 (= res!1008556 (= (select (store (arr!47984 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483595 (= lt!647441 (array!99426 (store (arr!47984 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48535 a!2862)))))

(declare-fun b!1483596 () Bool)

(assert (=> b!1483596 (= e!831891 e!831898)))

(declare-fun res!1008544 () Bool)

(assert (=> b!1483596 (=> (not res!1008544) (not e!831898))))

(assert (=> b!1483596 (= res!1008544 (= lt!647442 (Intermediate!12247 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483596 (= lt!647442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647446 mask!2687) lt!647446 lt!647441 mask!2687))))

(assert (=> b!1483596 (= lt!647446 (select (store (arr!47984 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483597 () Bool)

(declare-fun res!1008552 () Bool)

(assert (=> b!1483597 (=> (not res!1008552) (not e!831890))))

(assert (=> b!1483597 (= res!1008552 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48535 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48535 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48535 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483598 () Bool)

(declare-fun res!1008554 () Bool)

(assert (=> b!1483598 (=> (not res!1008554) (not e!831890))))

(declare-datatypes ((List!34665 0))(
  ( (Nil!34662) (Cons!34661 (h!36035 (_ BitVec 64)) (t!49366 List!34665)) )
))
(declare-fun arrayNoDuplicates!0 (array!99425 (_ BitVec 32) List!34665) Bool)

(assert (=> b!1483598 (= res!1008554 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34662))))

(declare-fun b!1483599 () Bool)

(declare-fun res!1008547 () Bool)

(assert (=> b!1483599 (=> (not res!1008547) (not e!831898))))

(assert (=> b!1483599 (= res!1008547 e!831896)))

(declare-fun c!137045 () Bool)

(assert (=> b!1483599 (= c!137045 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483600 () Bool)

(assert (=> b!1483600 (= e!831898 (not e!831897))))

(declare-fun res!1008558 () Bool)

(assert (=> b!1483600 (=> res!1008558 e!831897)))

(assert (=> b!1483600 (= res!1008558 (or (and (= (select (arr!47984 a!2862) index!646) (select (store (arr!47984 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47984 a!2862) index!646) (select (arr!47984 a!2862) j!93))) (= (select (arr!47984 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483600 e!831894))

(declare-fun res!1008541 () Bool)

(assert (=> b!1483600 (=> (not res!1008541) (not e!831894))))

(assert (=> b!1483600 (= res!1008541 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49782 0))(
  ( (Unit!49783) )
))
(declare-fun lt!647443 () Unit!49782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49782)

(assert (=> b!1483600 (= lt!647443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126546 res!1008546) b!1483585))

(assert (= (and b!1483585 res!1008555) b!1483582))

(assert (= (and b!1483582 res!1008542) b!1483586))

(assert (= (and b!1483586 res!1008540) b!1483593))

(assert (= (and b!1483593 res!1008545) b!1483598))

(assert (= (and b!1483598 res!1008554) b!1483597))

(assert (= (and b!1483597 res!1008552) b!1483595))

(assert (= (and b!1483595 res!1008556) b!1483594))

(assert (= (and b!1483594 res!1008551) b!1483587))

(assert (= (and b!1483587 res!1008557) b!1483596))

(assert (= (and b!1483596 res!1008544) b!1483599))

(assert (= (and b!1483599 c!137045) b!1483588))

(assert (= (and b!1483599 (not c!137045)) b!1483580))

(assert (= (and b!1483599 res!1008547) b!1483591))

(assert (= (and b!1483591 res!1008550) b!1483600))

(assert (= (and b!1483600 res!1008541) b!1483590))

(assert (= (and b!1483590 res!1008548) b!1483589))

(assert (= (and b!1483589 res!1008549) b!1483592))

(assert (= (and b!1483592 (not res!1008553)) b!1483584))

(assert (= (and b!1483584 res!1008543) b!1483581))

(assert (= (and b!1483600 (not res!1008558)) b!1483583))

(declare-fun m!1369081 () Bool)

(assert (=> b!1483596 m!1369081))

(assert (=> b!1483596 m!1369081))

(declare-fun m!1369083 () Bool)

(assert (=> b!1483596 m!1369083))

(declare-fun m!1369085 () Bool)

(assert (=> b!1483596 m!1369085))

(declare-fun m!1369087 () Bool)

(assert (=> b!1483596 m!1369087))

(declare-fun m!1369089 () Bool)

(assert (=> b!1483590 m!1369089))

(assert (=> b!1483590 m!1369089))

(declare-fun m!1369091 () Bool)

(assert (=> b!1483590 m!1369091))

(declare-fun m!1369093 () Bool)

(assert (=> b!1483581 m!1369093))

(declare-fun m!1369095 () Bool)

(assert (=> b!1483581 m!1369095))

(declare-fun m!1369097 () Bool)

(assert (=> start!126546 m!1369097))

(declare-fun m!1369099 () Bool)

(assert (=> start!126546 m!1369099))

(declare-fun m!1369101 () Bool)

(assert (=> b!1483583 m!1369101))

(declare-fun m!1369103 () Bool)

(assert (=> b!1483589 m!1369103))

(assert (=> b!1483589 m!1369089))

(declare-fun m!1369105 () Bool)

(assert (=> b!1483598 m!1369105))

(declare-fun m!1369107 () Bool)

(assert (=> b!1483592 m!1369107))

(assert (=> b!1483592 m!1369089))

(assert (=> b!1483592 m!1369085))

(declare-fun m!1369109 () Bool)

(assert (=> b!1483592 m!1369109))

(declare-fun m!1369111 () Bool)

(assert (=> b!1483582 m!1369111))

(assert (=> b!1483582 m!1369111))

(declare-fun m!1369113 () Bool)

(assert (=> b!1483582 m!1369113))

(assert (=> b!1483587 m!1369089))

(assert (=> b!1483587 m!1369089))

(declare-fun m!1369115 () Bool)

(assert (=> b!1483587 m!1369115))

(assert (=> b!1483594 m!1369089))

(assert (=> b!1483594 m!1369089))

(declare-fun m!1369117 () Bool)

(assert (=> b!1483594 m!1369117))

(assert (=> b!1483594 m!1369117))

(assert (=> b!1483594 m!1369089))

(declare-fun m!1369119 () Bool)

(assert (=> b!1483594 m!1369119))

(declare-fun m!1369121 () Bool)

(assert (=> b!1483593 m!1369121))

(declare-fun m!1369123 () Bool)

(assert (=> b!1483600 m!1369123))

(assert (=> b!1483600 m!1369085))

(assert (=> b!1483600 m!1369109))

(assert (=> b!1483600 m!1369107))

(declare-fun m!1369125 () Bool)

(assert (=> b!1483600 m!1369125))

(assert (=> b!1483600 m!1369089))

(assert (=> b!1483586 m!1369089))

(assert (=> b!1483586 m!1369089))

(declare-fun m!1369127 () Bool)

(assert (=> b!1483586 m!1369127))

(assert (=> b!1483580 m!1369095))

(assert (=> b!1483580 m!1369093))

(declare-fun m!1369129 () Bool)

(assert (=> b!1483588 m!1369129))

(assert (=> b!1483595 m!1369085))

(declare-fun m!1369131 () Bool)

(assert (=> b!1483595 m!1369131))

(check-sat (not b!1483583) (not b!1483593) (not b!1483590) (not b!1483581) (not b!1483580) (not b!1483598) (not b!1483587) (not b!1483594) (not b!1483600) (not start!126546) (not b!1483582) (not b!1483588) (not b!1483586) (not b!1483596))
(check-sat)
