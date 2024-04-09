; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124836 () Bool)

(assert start!124836)

(declare-fun b!1447771 () Bool)

(declare-fun res!979500 () Bool)

(declare-fun e!815395 () Bool)

(assert (=> b!1447771 (=> (not res!979500) (not e!815395))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98201 0))(
  ( (array!98202 (arr!47384 (Array (_ BitVec 32) (_ BitVec 64))) (size!47935 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98201)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447771 (= res!979500 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47935 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47935 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47935 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447772 () Bool)

(declare-fun e!815388 () Bool)

(declare-fun e!815390 () Bool)

(assert (=> b!1447772 (= e!815388 e!815390)))

(declare-fun res!979492 () Bool)

(assert (=> b!1447772 (=> (not res!979492) (not e!815390))))

(declare-datatypes ((SeekEntryResult!11659 0))(
  ( (MissingZero!11659 (index!49027 (_ BitVec 32))) (Found!11659 (index!49028 (_ BitVec 32))) (Intermediate!11659 (undefined!12471 Bool) (index!49029 (_ BitVec 32)) (x!130703 (_ BitVec 32))) (Undefined!11659) (MissingVacant!11659 (index!49030 (_ BitVec 32))) )
))
(declare-fun lt!635259 () SeekEntryResult!11659)

(assert (=> b!1447772 (= res!979492 (= lt!635259 (Intermediate!11659 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635258 () array!98201)

(declare-fun lt!635254 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98201 (_ BitVec 32)) SeekEntryResult!11659)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447772 (= lt!635259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635254 mask!2687) lt!635254 lt!635258 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447772 (= lt!635254 (select (store (arr!47384 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447773 () Bool)

(declare-fun e!815392 () Bool)

(assert (=> b!1447773 (= e!815392 (= lt!635259 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635254 lt!635258 mask!2687)))))

(declare-fun b!1447774 () Bool)

(declare-fun res!979498 () Bool)

(assert (=> b!1447774 (=> (not res!979498) (not e!815395))))

(assert (=> b!1447774 (= res!979498 (and (= (size!47935 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47935 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47935 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447775 () Bool)

(declare-fun e!815391 () Bool)

(assert (=> b!1447775 (= e!815391 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447776 () Bool)

(declare-fun res!979495 () Bool)

(assert (=> b!1447776 (=> (not res!979495) (not e!815390))))

(assert (=> b!1447776 (= res!979495 e!815392)))

(declare-fun c!133655 () Bool)

(assert (=> b!1447776 (= c!133655 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447777 () Bool)

(declare-fun e!815393 () Bool)

(assert (=> b!1447777 (= e!815393 e!815391)))

(declare-fun res!979488 () Bool)

(assert (=> b!1447777 (=> (not res!979488) (not e!815391))))

(declare-fun lt!635260 () SeekEntryResult!11659)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98201 (_ BitVec 32)) SeekEntryResult!11659)

(assert (=> b!1447777 (= res!979488 (= lt!635260 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47384 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447778 () Bool)

(declare-fun e!815387 () Bool)

(assert (=> b!1447778 (= e!815395 e!815387)))

(declare-fun res!979501 () Bool)

(assert (=> b!1447778 (=> (not res!979501) (not e!815387))))

(assert (=> b!1447778 (= res!979501 (= (select (store (arr!47384 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447778 (= lt!635258 (array!98202 (store (arr!47384 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47935 a!2862)))))

(declare-fun b!1447779 () Bool)

(declare-fun res!979487 () Bool)

(assert (=> b!1447779 (=> (not res!979487) (not e!815388))))

(declare-fun lt!635257 () SeekEntryResult!11659)

(assert (=> b!1447779 (= res!979487 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47384 a!2862) j!93) a!2862 mask!2687) lt!635257))))

(declare-fun res!979503 () Bool)

(assert (=> start!124836 (=> (not res!979503) (not e!815395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124836 (= res!979503 (validMask!0 mask!2687))))

(assert (=> start!124836 e!815395))

(assert (=> start!124836 true))

(declare-fun array_inv!36329 (array!98201) Bool)

(assert (=> start!124836 (array_inv!36329 a!2862)))

(declare-fun b!1447780 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98201 (_ BitVec 32)) SeekEntryResult!11659)

(assert (=> b!1447780 (= e!815392 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635254 lt!635258 mask!2687) (seekEntryOrOpen!0 lt!635254 lt!635258 mask!2687)))))

(declare-fun b!1447781 () Bool)

(declare-fun res!979502 () Bool)

(assert (=> b!1447781 (=> (not res!979502) (not e!815390))))

(assert (=> b!1447781 (= res!979502 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447782 () Bool)

(declare-fun res!979490 () Bool)

(assert (=> b!1447782 (=> (not res!979490) (not e!815395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447782 (= res!979490 (validKeyInArray!0 (select (arr!47384 a!2862) i!1006)))))

(declare-fun b!1447783 () Bool)

(declare-fun e!815396 () Bool)

(assert (=> b!1447783 (= e!815390 (not e!815396))))

(declare-fun res!979489 () Bool)

(assert (=> b!1447783 (=> res!979489 e!815396)))

(assert (=> b!1447783 (= res!979489 (or (and (= (select (arr!47384 a!2862) index!646) (select (store (arr!47384 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47384 a!2862) index!646) (select (arr!47384 a!2862) j!93))) (not (= (select (arr!47384 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47384 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815389 () Bool)

(assert (=> b!1447783 e!815389))

(declare-fun res!979497 () Bool)

(assert (=> b!1447783 (=> (not res!979497) (not e!815389))))

(assert (=> b!1447783 (= res!979497 (and (= lt!635260 (Found!11659 j!93)) (or (= (select (arr!47384 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47384 a!2862) intermediateBeforeIndex!19) (select (arr!47384 a!2862) j!93)))))))

(assert (=> b!1447783 (= lt!635260 (seekEntryOrOpen!0 (select (arr!47384 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98201 (_ BitVec 32)) Bool)

(assert (=> b!1447783 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48762 0))(
  ( (Unit!48763) )
))
(declare-fun lt!635256 () Unit!48762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48762)

(assert (=> b!1447783 (= lt!635256 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447784 () Bool)

(assert (=> b!1447784 (= e!815387 e!815388)))

(declare-fun res!979491 () Bool)

(assert (=> b!1447784 (=> (not res!979491) (not e!815388))))

(assert (=> b!1447784 (= res!979491 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47384 a!2862) j!93) mask!2687) (select (arr!47384 a!2862) j!93) a!2862 mask!2687) lt!635257))))

(assert (=> b!1447784 (= lt!635257 (Intermediate!11659 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447785 () Bool)

(declare-fun res!979499 () Bool)

(assert (=> b!1447785 (=> (not res!979499) (not e!815395))))

(assert (=> b!1447785 (= res!979499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447786 () Bool)

(declare-fun res!979494 () Bool)

(assert (=> b!1447786 (=> (not res!979494) (not e!815395))))

(declare-datatypes ((List!34065 0))(
  ( (Nil!34062) (Cons!34061 (h!35411 (_ BitVec 64)) (t!48766 List!34065)) )
))
(declare-fun arrayNoDuplicates!0 (array!98201 (_ BitVec 32) List!34065) Bool)

(assert (=> b!1447786 (= res!979494 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34062))))

(declare-fun b!1447787 () Bool)

(assert (=> b!1447787 (= e!815389 e!815393)))

(declare-fun res!979496 () Bool)

(assert (=> b!1447787 (=> res!979496 e!815393)))

(assert (=> b!1447787 (= res!979496 (or (and (= (select (arr!47384 a!2862) index!646) (select (store (arr!47384 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47384 a!2862) index!646) (select (arr!47384 a!2862) j!93))) (not (= (select (arr!47384 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447788 () Bool)

(declare-fun res!979493 () Bool)

(assert (=> b!1447788 (=> (not res!979493) (not e!815395))))

(assert (=> b!1447788 (= res!979493 (validKeyInArray!0 (select (arr!47384 a!2862) j!93)))))

(declare-fun b!1447789 () Bool)

(assert (=> b!1447789 (= e!815396 true)))

(declare-fun lt!635255 () SeekEntryResult!11659)

(assert (=> b!1447789 (= lt!635255 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47384 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and start!124836 res!979503) b!1447774))

(assert (= (and b!1447774 res!979498) b!1447782))

(assert (= (and b!1447782 res!979490) b!1447788))

(assert (= (and b!1447788 res!979493) b!1447785))

(assert (= (and b!1447785 res!979499) b!1447786))

(assert (= (and b!1447786 res!979494) b!1447771))

(assert (= (and b!1447771 res!979500) b!1447778))

(assert (= (and b!1447778 res!979501) b!1447784))

(assert (= (and b!1447784 res!979491) b!1447779))

(assert (= (and b!1447779 res!979487) b!1447772))

(assert (= (and b!1447772 res!979492) b!1447776))

(assert (= (and b!1447776 c!133655) b!1447773))

(assert (= (and b!1447776 (not c!133655)) b!1447780))

(assert (= (and b!1447776 res!979495) b!1447781))

(assert (= (and b!1447781 res!979502) b!1447783))

(assert (= (and b!1447783 res!979497) b!1447787))

(assert (= (and b!1447787 (not res!979496)) b!1447777))

(assert (= (and b!1447777 res!979488) b!1447775))

(assert (= (and b!1447783 (not res!979489)) b!1447789))

(declare-fun m!1336623 () Bool)

(assert (=> b!1447784 m!1336623))

(assert (=> b!1447784 m!1336623))

(declare-fun m!1336625 () Bool)

(assert (=> b!1447784 m!1336625))

(assert (=> b!1447784 m!1336625))

(assert (=> b!1447784 m!1336623))

(declare-fun m!1336627 () Bool)

(assert (=> b!1447784 m!1336627))

(assert (=> b!1447779 m!1336623))

(assert (=> b!1447779 m!1336623))

(declare-fun m!1336629 () Bool)

(assert (=> b!1447779 m!1336629))

(assert (=> b!1447789 m!1336623))

(assert (=> b!1447789 m!1336623))

(declare-fun m!1336631 () Bool)

(assert (=> b!1447789 m!1336631))

(declare-fun m!1336633 () Bool)

(assert (=> b!1447773 m!1336633))

(declare-fun m!1336635 () Bool)

(assert (=> b!1447782 m!1336635))

(assert (=> b!1447782 m!1336635))

(declare-fun m!1336637 () Bool)

(assert (=> b!1447782 m!1336637))

(declare-fun m!1336639 () Bool)

(assert (=> start!124836 m!1336639))

(declare-fun m!1336641 () Bool)

(assert (=> start!124836 m!1336641))

(declare-fun m!1336643 () Bool)

(assert (=> b!1447783 m!1336643))

(declare-fun m!1336645 () Bool)

(assert (=> b!1447783 m!1336645))

(declare-fun m!1336647 () Bool)

(assert (=> b!1447783 m!1336647))

(declare-fun m!1336649 () Bool)

(assert (=> b!1447783 m!1336649))

(declare-fun m!1336651 () Bool)

(assert (=> b!1447783 m!1336651))

(assert (=> b!1447783 m!1336623))

(declare-fun m!1336653 () Bool)

(assert (=> b!1447783 m!1336653))

(declare-fun m!1336655 () Bool)

(assert (=> b!1447783 m!1336655))

(assert (=> b!1447783 m!1336623))

(assert (=> b!1447777 m!1336623))

(assert (=> b!1447777 m!1336623))

(declare-fun m!1336657 () Bool)

(assert (=> b!1447777 m!1336657))

(assert (=> b!1447778 m!1336645))

(declare-fun m!1336659 () Bool)

(assert (=> b!1447778 m!1336659))

(assert (=> b!1447788 m!1336623))

(assert (=> b!1447788 m!1336623))

(declare-fun m!1336661 () Bool)

(assert (=> b!1447788 m!1336661))

(assert (=> b!1447787 m!1336651))

(assert (=> b!1447787 m!1336645))

(assert (=> b!1447787 m!1336649))

(assert (=> b!1447787 m!1336623))

(declare-fun m!1336663 () Bool)

(assert (=> b!1447785 m!1336663))

(declare-fun m!1336665 () Bool)

(assert (=> b!1447772 m!1336665))

(assert (=> b!1447772 m!1336665))

(declare-fun m!1336667 () Bool)

(assert (=> b!1447772 m!1336667))

(assert (=> b!1447772 m!1336645))

(declare-fun m!1336669 () Bool)

(assert (=> b!1447772 m!1336669))

(declare-fun m!1336671 () Bool)

(assert (=> b!1447780 m!1336671))

(declare-fun m!1336673 () Bool)

(assert (=> b!1447780 m!1336673))

(declare-fun m!1336675 () Bool)

(assert (=> b!1447786 m!1336675))

(check-sat (not b!1447773) (not b!1447786) (not b!1447784) (not start!124836) (not b!1447785) (not b!1447779) (not b!1447780) (not b!1447783) (not b!1447772) (not b!1447777) (not b!1447782) (not b!1447789) (not b!1447788))
(check-sat)
