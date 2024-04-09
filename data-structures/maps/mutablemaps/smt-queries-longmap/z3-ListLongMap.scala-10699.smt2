; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125376 () Bool)

(assert start!125376)

(declare-fun b!1464409 () Bool)

(declare-fun res!993581 () Bool)

(declare-fun e!822991 () Bool)

(assert (=> b!1464409 (=> (not res!993581) (not e!822991))))

(declare-datatypes ((array!98741 0))(
  ( (array!98742 (arr!47654 (Array (_ BitVec 32) (_ BitVec 64))) (size!48205 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98741)

(declare-datatypes ((List!34335 0))(
  ( (Nil!34332) (Cons!34331 (h!35681 (_ BitVec 64)) (t!49036 List!34335)) )
))
(declare-fun arrayNoDuplicates!0 (array!98741 (_ BitVec 32) List!34335) Bool)

(assert (=> b!1464409 (= res!993581 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34332))))

(declare-fun b!1464410 () Bool)

(declare-fun res!993589 () Bool)

(assert (=> b!1464410 (=> (not res!993589) (not e!822991))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98741 (_ BitVec 32)) Bool)

(assert (=> b!1464410 (= res!993589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!822989 () Bool)

(declare-fun lt!641044 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11929 0))(
  ( (MissingZero!11929 (index!50107 (_ BitVec 32))) (Found!11929 (index!50108 (_ BitVec 32))) (Intermediate!11929 (undefined!12741 Bool) (index!50109 (_ BitVec 32)) (x!131693 (_ BitVec 32))) (Undefined!11929) (MissingVacant!11929 (index!50110 (_ BitVec 32))) )
))
(declare-fun lt!641045 () SeekEntryResult!11929)

(declare-fun lt!641047 () (_ BitVec 64))

(declare-fun lt!641041 () array!98741)

(declare-fun b!1464411 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98741 (_ BitVec 32)) SeekEntryResult!11929)

(assert (=> b!1464411 (= e!822989 (not (= lt!641045 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641044 lt!641047 lt!641041 mask!2687))))))

(declare-fun b!1464412 () Bool)

(declare-fun res!993578 () Bool)

(assert (=> b!1464412 (=> (not res!993578) (not e!822991))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464412 (= res!993578 (validKeyInArray!0 (select (arr!47654 a!2862) j!93)))))

(declare-fun b!1464413 () Bool)

(declare-fun res!993580 () Bool)

(assert (=> b!1464413 (=> (not res!993580) (not e!822991))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464413 (= res!993580 (and (= (size!48205 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48205 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48205 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464414 () Bool)

(declare-fun res!993587 () Bool)

(assert (=> b!1464414 (=> (not res!993587) (not e!822991))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464414 (= res!993587 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48205 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48205 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48205 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464415 () Bool)

(declare-fun e!822986 () Bool)

(assert (=> b!1464415 (= e!822986 (or (= (select (arr!47654 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47654 a!2862) intermediateBeforeIndex!19) (select (arr!47654 a!2862) j!93))))))

(declare-fun b!1464416 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98741 (_ BitVec 32)) SeekEntryResult!11929)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98741 (_ BitVec 32)) SeekEntryResult!11929)

(assert (=> b!1464416 (= e!822989 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641044 intermediateAfterIndex!19 lt!641047 lt!641041 mask!2687) (seekEntryOrOpen!0 lt!641047 lt!641041 mask!2687))))))

(declare-fun b!1464417 () Bool)

(declare-fun res!993591 () Bool)

(declare-fun e!822983 () Bool)

(assert (=> b!1464417 (=> (not res!993591) (not e!822983))))

(assert (=> b!1464417 (= res!993591 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464419 () Bool)

(declare-fun e!822988 () Bool)

(assert (=> b!1464419 (= e!822991 e!822988)))

(declare-fun res!993593 () Bool)

(assert (=> b!1464419 (=> (not res!993593) (not e!822988))))

(assert (=> b!1464419 (= res!993593 (= (select (store (arr!47654 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464419 (= lt!641041 (array!98742 (store (arr!47654 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48205 a!2862)))))

(declare-fun e!822992 () Bool)

(declare-fun b!1464420 () Bool)

(assert (=> b!1464420 (= e!822992 (= lt!641045 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641047 lt!641041 mask!2687)))))

(declare-fun b!1464421 () Bool)

(declare-fun res!993584 () Bool)

(assert (=> b!1464421 (=> (not res!993584) (not e!822983))))

(assert (=> b!1464421 (= res!993584 e!822992)))

(declare-fun c!134929 () Bool)

(assert (=> b!1464421 (= c!134929 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464422 () Bool)

(declare-fun e!822984 () Bool)

(declare-fun e!822990 () Bool)

(assert (=> b!1464422 (= e!822984 e!822990)))

(declare-fun res!993590 () Bool)

(assert (=> b!1464422 (=> res!993590 e!822990)))

(assert (=> b!1464422 (= res!993590 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641044 #b00000000000000000000000000000000) (bvsge lt!641044 (size!48205 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464422 (= lt!641044 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464423 () Bool)

(assert (=> b!1464423 (= e!822983 (not e!822984))))

(declare-fun res!993582 () Bool)

(assert (=> b!1464423 (=> res!993582 e!822984)))

(assert (=> b!1464423 (= res!993582 (or (and (= (select (arr!47654 a!2862) index!646) (select (store (arr!47654 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47654 a!2862) index!646) (select (arr!47654 a!2862) j!93))) (= (select (arr!47654 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464423 e!822986))

(declare-fun res!993588 () Bool)

(assert (=> b!1464423 (=> (not res!993588) (not e!822986))))

(assert (=> b!1464423 (= res!993588 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49302 0))(
  ( (Unit!49303) )
))
(declare-fun lt!641042 () Unit!49302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49302)

(assert (=> b!1464423 (= lt!641042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464424 () Bool)

(declare-fun res!993586 () Bool)

(declare-fun e!822985 () Bool)

(assert (=> b!1464424 (=> (not res!993586) (not e!822985))))

(declare-fun lt!641043 () SeekEntryResult!11929)

(assert (=> b!1464424 (= res!993586 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47654 a!2862) j!93) a!2862 mask!2687) lt!641043))))

(declare-fun res!993592 () Bool)

(assert (=> start!125376 (=> (not res!993592) (not e!822991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125376 (= res!993592 (validMask!0 mask!2687))))

(assert (=> start!125376 e!822991))

(assert (=> start!125376 true))

(declare-fun array_inv!36599 (array!98741) Bool)

(assert (=> start!125376 (array_inv!36599 a!2862)))

(declare-fun b!1464418 () Bool)

(assert (=> b!1464418 (= e!822990 true)))

(declare-fun lt!641046 () Bool)

(assert (=> b!1464418 (= lt!641046 e!822989)))

(declare-fun c!134930 () Bool)

(assert (=> b!1464418 (= c!134930 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464425 () Bool)

(assert (=> b!1464425 (= e!822985 e!822983)))

(declare-fun res!993583 () Bool)

(assert (=> b!1464425 (=> (not res!993583) (not e!822983))))

(assert (=> b!1464425 (= res!993583 (= lt!641045 (Intermediate!11929 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464425 (= lt!641045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641047 mask!2687) lt!641047 lt!641041 mask!2687))))

(assert (=> b!1464425 (= lt!641047 (select (store (arr!47654 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464426 () Bool)

(declare-fun res!993579 () Bool)

(assert (=> b!1464426 (=> res!993579 e!822990)))

(assert (=> b!1464426 (= res!993579 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641044 (select (arr!47654 a!2862) j!93) a!2862 mask!2687) lt!641043)))))

(declare-fun b!1464427 () Bool)

(declare-fun res!993594 () Bool)

(assert (=> b!1464427 (=> (not res!993594) (not e!822991))))

(assert (=> b!1464427 (= res!993594 (validKeyInArray!0 (select (arr!47654 a!2862) i!1006)))))

(declare-fun b!1464428 () Bool)

(assert (=> b!1464428 (= e!822992 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641047 lt!641041 mask!2687) (seekEntryOrOpen!0 lt!641047 lt!641041 mask!2687)))))

(declare-fun b!1464429 () Bool)

(assert (=> b!1464429 (= e!822988 e!822985)))

(declare-fun res!993577 () Bool)

(assert (=> b!1464429 (=> (not res!993577) (not e!822985))))

(assert (=> b!1464429 (= res!993577 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47654 a!2862) j!93) mask!2687) (select (arr!47654 a!2862) j!93) a!2862 mask!2687) lt!641043))))

(assert (=> b!1464429 (= lt!641043 (Intermediate!11929 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464430 () Bool)

(declare-fun res!993585 () Bool)

(assert (=> b!1464430 (=> (not res!993585) (not e!822986))))

(assert (=> b!1464430 (= res!993585 (= (seekEntryOrOpen!0 (select (arr!47654 a!2862) j!93) a!2862 mask!2687) (Found!11929 j!93)))))

(assert (= (and start!125376 res!993592) b!1464413))

(assert (= (and b!1464413 res!993580) b!1464427))

(assert (= (and b!1464427 res!993594) b!1464412))

(assert (= (and b!1464412 res!993578) b!1464410))

(assert (= (and b!1464410 res!993589) b!1464409))

(assert (= (and b!1464409 res!993581) b!1464414))

(assert (= (and b!1464414 res!993587) b!1464419))

(assert (= (and b!1464419 res!993593) b!1464429))

(assert (= (and b!1464429 res!993577) b!1464424))

(assert (= (and b!1464424 res!993586) b!1464425))

(assert (= (and b!1464425 res!993583) b!1464421))

(assert (= (and b!1464421 c!134929) b!1464420))

(assert (= (and b!1464421 (not c!134929)) b!1464428))

(assert (= (and b!1464421 res!993584) b!1464417))

(assert (= (and b!1464417 res!993591) b!1464423))

(assert (= (and b!1464423 res!993588) b!1464430))

(assert (= (and b!1464430 res!993585) b!1464415))

(assert (= (and b!1464423 (not res!993582)) b!1464422))

(assert (= (and b!1464422 (not res!993590)) b!1464426))

(assert (= (and b!1464426 (not res!993579)) b!1464418))

(assert (= (and b!1464418 c!134930) b!1464411))

(assert (= (and b!1464418 (not c!134930)) b!1464416))

(declare-fun m!1351675 () Bool)

(assert (=> b!1464429 m!1351675))

(assert (=> b!1464429 m!1351675))

(declare-fun m!1351677 () Bool)

(assert (=> b!1464429 m!1351677))

(assert (=> b!1464429 m!1351677))

(assert (=> b!1464429 m!1351675))

(declare-fun m!1351679 () Bool)

(assert (=> b!1464429 m!1351679))

(declare-fun m!1351681 () Bool)

(assert (=> b!1464428 m!1351681))

(declare-fun m!1351683 () Bool)

(assert (=> b!1464428 m!1351683))

(declare-fun m!1351685 () Bool)

(assert (=> b!1464411 m!1351685))

(declare-fun m!1351687 () Bool)

(assert (=> b!1464416 m!1351687))

(assert (=> b!1464416 m!1351683))

(declare-fun m!1351689 () Bool)

(assert (=> b!1464422 m!1351689))

(declare-fun m!1351691 () Bool)

(assert (=> b!1464415 m!1351691))

(assert (=> b!1464415 m!1351675))

(declare-fun m!1351693 () Bool)

(assert (=> b!1464427 m!1351693))

(assert (=> b!1464427 m!1351693))

(declare-fun m!1351695 () Bool)

(assert (=> b!1464427 m!1351695))

(assert (=> b!1464412 m!1351675))

(assert (=> b!1464412 m!1351675))

(declare-fun m!1351697 () Bool)

(assert (=> b!1464412 m!1351697))

(assert (=> b!1464426 m!1351675))

(assert (=> b!1464426 m!1351675))

(declare-fun m!1351699 () Bool)

(assert (=> b!1464426 m!1351699))

(declare-fun m!1351701 () Bool)

(assert (=> start!125376 m!1351701))

(declare-fun m!1351703 () Bool)

(assert (=> start!125376 m!1351703))

(declare-fun m!1351705 () Bool)

(assert (=> b!1464419 m!1351705))

(declare-fun m!1351707 () Bool)

(assert (=> b!1464419 m!1351707))

(declare-fun m!1351709 () Bool)

(assert (=> b!1464409 m!1351709))

(declare-fun m!1351711 () Bool)

(assert (=> b!1464410 m!1351711))

(declare-fun m!1351713 () Bool)

(assert (=> b!1464425 m!1351713))

(assert (=> b!1464425 m!1351713))

(declare-fun m!1351715 () Bool)

(assert (=> b!1464425 m!1351715))

(assert (=> b!1464425 m!1351705))

(declare-fun m!1351717 () Bool)

(assert (=> b!1464425 m!1351717))

(declare-fun m!1351719 () Bool)

(assert (=> b!1464420 m!1351719))

(declare-fun m!1351721 () Bool)

(assert (=> b!1464423 m!1351721))

(assert (=> b!1464423 m!1351705))

(declare-fun m!1351723 () Bool)

(assert (=> b!1464423 m!1351723))

(declare-fun m!1351725 () Bool)

(assert (=> b!1464423 m!1351725))

(declare-fun m!1351727 () Bool)

(assert (=> b!1464423 m!1351727))

(assert (=> b!1464423 m!1351675))

(assert (=> b!1464424 m!1351675))

(assert (=> b!1464424 m!1351675))

(declare-fun m!1351729 () Bool)

(assert (=> b!1464424 m!1351729))

(assert (=> b!1464430 m!1351675))

(assert (=> b!1464430 m!1351675))

(declare-fun m!1351731 () Bool)

(assert (=> b!1464430 m!1351731))

(check-sat (not b!1464428) (not b!1464420) (not b!1464409) (not b!1464425) (not start!125376) (not b!1464410) (not b!1464412) (not b!1464426) (not b!1464427) (not b!1464424) (not b!1464416) (not b!1464430) (not b!1464422) (not b!1464429) (not b!1464423) (not b!1464411))
(check-sat)
