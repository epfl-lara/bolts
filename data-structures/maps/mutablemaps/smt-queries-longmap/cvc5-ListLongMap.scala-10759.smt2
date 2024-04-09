; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125854 () Bool)

(assert start!125854)

(declare-fun b!1472788 () Bool)

(declare-fun res!1000517 () Bool)

(declare-fun e!826512 () Bool)

(assert (=> b!1472788 (=> (not res!1000517) (not e!826512))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99105 0))(
  ( (array!99106 (arr!47833 (Array (_ BitVec 32) (_ BitVec 64))) (size!48384 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99105)

(assert (=> b!1472788 (= res!1000517 (and (= (size!48384 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48384 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48384 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472789 () Bool)

(declare-fun e!826514 () Bool)

(assert (=> b!1472789 (= e!826512 e!826514)))

(declare-fun res!1000515 () Bool)

(assert (=> b!1472789 (=> (not res!1000515) (not e!826514))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472789 (= res!1000515 (= (select (store (arr!47833 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643640 () array!99105)

(assert (=> b!1472789 (= lt!643640 (array!99106 (store (arr!47833 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48384 a!2862)))))

(declare-fun lt!643645 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826513 () Bool)

(declare-fun b!1472790 () Bool)

(declare-datatypes ((SeekEntryResult!12096 0))(
  ( (MissingZero!12096 (index!50775 (_ BitVec 32))) (Found!12096 (index!50776 (_ BitVec 32))) (Intermediate!12096 (undefined!12908 Bool) (index!50777 (_ BitVec 32)) (x!132358 (_ BitVec 32))) (Undefined!12096) (MissingVacant!12096 (index!50778 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99105 (_ BitVec 32)) SeekEntryResult!12096)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99105 (_ BitVec 32)) SeekEntryResult!12096)

(assert (=> b!1472790 (= e!826513 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643645 lt!643640 mask!2687) (seekEntryOrOpen!0 lt!643645 lt!643640 mask!2687)))))

(declare-fun b!1472791 () Bool)

(declare-fun lt!643641 () SeekEntryResult!12096)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99105 (_ BitVec 32)) SeekEntryResult!12096)

(assert (=> b!1472791 (= e!826513 (= lt!643641 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643645 lt!643640 mask!2687)))))

(declare-fun b!1472792 () Bool)

(declare-fun res!1000508 () Bool)

(assert (=> b!1472792 (=> (not res!1000508) (not e!826512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472792 (= res!1000508 (validKeyInArray!0 (select (arr!47833 a!2862) j!93)))))

(declare-fun b!1472793 () Bool)

(declare-fun res!1000518 () Bool)

(assert (=> b!1472793 (=> (not res!1000518) (not e!826512))))

(assert (=> b!1472793 (= res!1000518 (validKeyInArray!0 (select (arr!47833 a!2862) i!1006)))))

(declare-fun b!1472794 () Bool)

(declare-fun e!826511 () Bool)

(declare-fun e!826516 () Bool)

(assert (=> b!1472794 (= e!826511 (not e!826516))))

(declare-fun res!1000512 () Bool)

(assert (=> b!1472794 (=> res!1000512 e!826516)))

(assert (=> b!1472794 (= res!1000512 (or (not (= (select (arr!47833 a!2862) index!646) (select (store (arr!47833 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47833 a!2862) index!646) (select (arr!47833 a!2862) j!93)))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!643644 () SeekEntryResult!12096)

(assert (=> b!1472794 (and (= lt!643644 (Found!12096 j!93)) (or (= (select (arr!47833 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47833 a!2862) intermediateBeforeIndex!19) (select (arr!47833 a!2862) j!93))))))

(assert (=> b!1472794 (= lt!643644 (seekEntryOrOpen!0 (select (arr!47833 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99105 (_ BitVec 32)) Bool)

(assert (=> b!1472794 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49480 0))(
  ( (Unit!49481) )
))
(declare-fun lt!643642 () Unit!49480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49480)

(assert (=> b!1472794 (= lt!643642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472795 () Bool)

(declare-fun e!826517 () Bool)

(assert (=> b!1472795 (= e!826514 e!826517)))

(declare-fun res!1000520 () Bool)

(assert (=> b!1472795 (=> (not res!1000520) (not e!826517))))

(declare-fun lt!643643 () SeekEntryResult!12096)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472795 (= res!1000520 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) (select (arr!47833 a!2862) j!93) a!2862 mask!2687) lt!643643))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472795 (= lt!643643 (Intermediate!12096 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472796 () Bool)

(assert (=> b!1472796 (= e!826516 (= lt!643644 (seekEntryOrOpen!0 lt!643645 lt!643640 mask!2687)))))

(declare-fun res!1000516 () Bool)

(assert (=> start!125854 (=> (not res!1000516) (not e!826512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125854 (= res!1000516 (validMask!0 mask!2687))))

(assert (=> start!125854 e!826512))

(assert (=> start!125854 true))

(declare-fun array_inv!36778 (array!99105) Bool)

(assert (=> start!125854 (array_inv!36778 a!2862)))

(declare-fun b!1472797 () Bool)

(declare-fun res!1000513 () Bool)

(assert (=> b!1472797 (=> (not res!1000513) (not e!826512))))

(declare-datatypes ((List!34514 0))(
  ( (Nil!34511) (Cons!34510 (h!35866 (_ BitVec 64)) (t!49215 List!34514)) )
))
(declare-fun arrayNoDuplicates!0 (array!99105 (_ BitVec 32) List!34514) Bool)

(assert (=> b!1472797 (= res!1000513 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34511))))

(declare-fun b!1472798 () Bool)

(declare-fun res!1000519 () Bool)

(assert (=> b!1472798 (=> (not res!1000519) (not e!826512))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472798 (= res!1000519 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48384 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48384 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48384 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472799 () Bool)

(declare-fun res!1000511 () Bool)

(assert (=> b!1472799 (=> (not res!1000511) (not e!826511))))

(assert (=> b!1472799 (= res!1000511 e!826513)))

(declare-fun c!135656 () Bool)

(assert (=> b!1472799 (= c!135656 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472800 () Bool)

(declare-fun res!1000509 () Bool)

(assert (=> b!1472800 (=> (not res!1000509) (not e!826517))))

(assert (=> b!1472800 (= res!1000509 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47833 a!2862) j!93) a!2862 mask!2687) lt!643643))))

(declare-fun b!1472801 () Bool)

(declare-fun res!1000510 () Bool)

(assert (=> b!1472801 (=> (not res!1000510) (not e!826512))))

(assert (=> b!1472801 (= res!1000510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472802 () Bool)

(assert (=> b!1472802 (= e!826517 e!826511)))

(declare-fun res!1000514 () Bool)

(assert (=> b!1472802 (=> (not res!1000514) (not e!826511))))

(assert (=> b!1472802 (= res!1000514 (= lt!643641 (Intermediate!12096 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472802 (= lt!643641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643645 mask!2687) lt!643645 lt!643640 mask!2687))))

(assert (=> b!1472802 (= lt!643645 (select (store (arr!47833 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472803 () Bool)

(declare-fun res!1000521 () Bool)

(assert (=> b!1472803 (=> (not res!1000521) (not e!826511))))

(assert (=> b!1472803 (= res!1000521 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125854 res!1000516) b!1472788))

(assert (= (and b!1472788 res!1000517) b!1472793))

(assert (= (and b!1472793 res!1000518) b!1472792))

(assert (= (and b!1472792 res!1000508) b!1472801))

(assert (= (and b!1472801 res!1000510) b!1472797))

(assert (= (and b!1472797 res!1000513) b!1472798))

(assert (= (and b!1472798 res!1000519) b!1472789))

(assert (= (and b!1472789 res!1000515) b!1472795))

(assert (= (and b!1472795 res!1000520) b!1472800))

(assert (= (and b!1472800 res!1000509) b!1472802))

(assert (= (and b!1472802 res!1000514) b!1472799))

(assert (= (and b!1472799 c!135656) b!1472791))

(assert (= (and b!1472799 (not c!135656)) b!1472790))

(assert (= (and b!1472799 res!1000511) b!1472803))

(assert (= (and b!1472803 res!1000521) b!1472794))

(assert (= (and b!1472794 (not res!1000512)) b!1472796))

(declare-fun m!1359519 () Bool)

(assert (=> b!1472797 m!1359519))

(declare-fun m!1359521 () Bool)

(assert (=> start!125854 m!1359521))

(declare-fun m!1359523 () Bool)

(assert (=> start!125854 m!1359523))

(declare-fun m!1359525 () Bool)

(assert (=> b!1472802 m!1359525))

(assert (=> b!1472802 m!1359525))

(declare-fun m!1359527 () Bool)

(assert (=> b!1472802 m!1359527))

(declare-fun m!1359529 () Bool)

(assert (=> b!1472802 m!1359529))

(declare-fun m!1359531 () Bool)

(assert (=> b!1472802 m!1359531))

(declare-fun m!1359533 () Bool)

(assert (=> b!1472793 m!1359533))

(assert (=> b!1472793 m!1359533))

(declare-fun m!1359535 () Bool)

(assert (=> b!1472793 m!1359535))

(assert (=> b!1472789 m!1359529))

(declare-fun m!1359537 () Bool)

(assert (=> b!1472789 m!1359537))

(declare-fun m!1359539 () Bool)

(assert (=> b!1472801 m!1359539))

(declare-fun m!1359541 () Bool)

(assert (=> b!1472790 m!1359541))

(declare-fun m!1359543 () Bool)

(assert (=> b!1472790 m!1359543))

(assert (=> b!1472796 m!1359543))

(declare-fun m!1359545 () Bool)

(assert (=> b!1472800 m!1359545))

(assert (=> b!1472800 m!1359545))

(declare-fun m!1359547 () Bool)

(assert (=> b!1472800 m!1359547))

(declare-fun m!1359549 () Bool)

(assert (=> b!1472791 m!1359549))

(assert (=> b!1472795 m!1359545))

(assert (=> b!1472795 m!1359545))

(declare-fun m!1359551 () Bool)

(assert (=> b!1472795 m!1359551))

(assert (=> b!1472795 m!1359551))

(assert (=> b!1472795 m!1359545))

(declare-fun m!1359553 () Bool)

(assert (=> b!1472795 m!1359553))

(declare-fun m!1359555 () Bool)

(assert (=> b!1472794 m!1359555))

(assert (=> b!1472794 m!1359529))

(declare-fun m!1359557 () Bool)

(assert (=> b!1472794 m!1359557))

(declare-fun m!1359559 () Bool)

(assert (=> b!1472794 m!1359559))

(declare-fun m!1359561 () Bool)

(assert (=> b!1472794 m!1359561))

(assert (=> b!1472794 m!1359545))

(declare-fun m!1359563 () Bool)

(assert (=> b!1472794 m!1359563))

(declare-fun m!1359565 () Bool)

(assert (=> b!1472794 m!1359565))

(assert (=> b!1472794 m!1359545))

(assert (=> b!1472792 m!1359545))

(assert (=> b!1472792 m!1359545))

(declare-fun m!1359567 () Bool)

(assert (=> b!1472792 m!1359567))

(push 1)

(assert (not b!1472795))

(assert (not b!1472791))

(assert (not b!1472797))

(assert (not b!1472793))

(assert (not b!1472801))

(assert (not b!1472796))

(assert (not b!1472790))

(assert (not start!125854))

(assert (not b!1472800))

(assert (not b!1472794))

(assert (not b!1472792))

(assert (not b!1472802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1472975 () Bool)

(declare-fun e!826608 () Bool)

(declare-fun e!826610 () Bool)

(assert (=> b!1472975 (= e!826608 e!826610)))

(declare-fun c!135690 () Bool)

(assert (=> b!1472975 (= c!135690 (validKeyInArray!0 (select (arr!47833 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1472976 () Bool)

(declare-fun e!826609 () Bool)

(declare-fun call!67747 () Bool)

(assert (=> b!1472976 (= e!826609 call!67747)))

(declare-fun bm!67744 () Bool)

(assert (=> bm!67744 (= call!67747 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155495 () Bool)

(declare-fun res!1000628 () Bool)

(assert (=> d!155495 (=> res!1000628 e!826608)))

(assert (=> d!155495 (= res!1000628 (bvsge #b00000000000000000000000000000000 (size!48384 a!2862)))))

(assert (=> d!155495 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!826608)))

(declare-fun b!1472977 () Bool)

(assert (=> b!1472977 (= e!826610 call!67747)))

(declare-fun b!1472978 () Bool)

(assert (=> b!1472978 (= e!826610 e!826609)))

(declare-fun lt!643721 () (_ BitVec 64))

(assert (=> b!1472978 (= lt!643721 (select (arr!47833 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!643720 () Unit!49480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99105 (_ BitVec 64) (_ BitVec 32)) Unit!49480)

(assert (=> b!1472978 (= lt!643720 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643721 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1472978 (arrayContainsKey!0 a!2862 lt!643721 #b00000000000000000000000000000000)))

(declare-fun lt!643719 () Unit!49480)

(assert (=> b!1472978 (= lt!643719 lt!643720)))

(declare-fun res!1000627 () Bool)

(assert (=> b!1472978 (= res!1000627 (= (seekEntryOrOpen!0 (select (arr!47833 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12096 #b00000000000000000000000000000000)))))

(assert (=> b!1472978 (=> (not res!1000627) (not e!826609))))

(assert (= (and d!155495 (not res!1000628)) b!1472975))

(assert (= (and b!1472975 c!135690) b!1472978))

(assert (= (and b!1472975 (not c!135690)) b!1472977))

(assert (= (and b!1472978 res!1000627) b!1472976))

(assert (= (or b!1472976 b!1472977) bm!67744))

(declare-fun m!1359713 () Bool)

(assert (=> b!1472975 m!1359713))

(assert (=> b!1472975 m!1359713))

(declare-fun m!1359715 () Bool)

(assert (=> b!1472975 m!1359715))

(declare-fun m!1359717 () Bool)

(assert (=> bm!67744 m!1359717))

(assert (=> b!1472978 m!1359713))

(declare-fun m!1359719 () Bool)

(assert (=> b!1472978 m!1359719))

(declare-fun m!1359721 () Bool)

(assert (=> b!1472978 m!1359721))

(assert (=> b!1472978 m!1359713))

(declare-fun m!1359723 () Bool)

(assert (=> b!1472978 m!1359723))

(assert (=> b!1472801 d!155495))

(declare-fun lt!643734 () SeekEntryResult!12096)

(declare-fun d!155499 () Bool)

(assert (=> d!155499 (and (or (is-Undefined!12096 lt!643734) (not (is-Found!12096 lt!643734)) (and (bvsge (index!50776 lt!643734) #b00000000000000000000000000000000) (bvslt (index!50776 lt!643734) (size!48384 lt!643640)))) (or (is-Undefined!12096 lt!643734) (is-Found!12096 lt!643734) (not (is-MissingVacant!12096 lt!643734)) (not (= (index!50778 lt!643734) intermediateAfterIndex!19)) (and (bvsge (index!50778 lt!643734) #b00000000000000000000000000000000) (bvslt (index!50778 lt!643734) (size!48384 lt!643640)))) (or (is-Undefined!12096 lt!643734) (ite (is-Found!12096 lt!643734) (= (select (arr!47833 lt!643640) (index!50776 lt!643734)) lt!643645) (and (is-MissingVacant!12096 lt!643734) (= (index!50778 lt!643734) intermediateAfterIndex!19) (= (select (arr!47833 lt!643640) (index!50778 lt!643734)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!826636 () SeekEntryResult!12096)

(assert (=> d!155499 (= lt!643734 e!826636)))

(declare-fun c!135710 () Bool)

(assert (=> d!155499 (= c!135710 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643735 () (_ BitVec 64))

(assert (=> d!155499 (= lt!643735 (select (arr!47833 lt!643640) index!646))))

(assert (=> d!155499 (validMask!0 mask!2687)))

(assert (=> d!155499 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643645 lt!643640 mask!2687) lt!643734)))

(declare-fun b!1473024 () Bool)

(declare-fun e!826637 () SeekEntryResult!12096)

(assert (=> b!1473024 (= e!826637 (MissingVacant!12096 intermediateAfterIndex!19))))

(declare-fun b!1473025 () Bool)

(assert (=> b!1473025 (= e!826636 Undefined!12096)))

(declare-fun b!1473026 () Bool)

(declare-fun c!135709 () Bool)

(assert (=> b!1473026 (= c!135709 (= lt!643735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!826635 () SeekEntryResult!12096)

(assert (=> b!1473026 (= e!826635 e!826637)))

(declare-fun b!1473027 () Bool)

(assert (=> b!1473027 (= e!826636 e!826635)))

(declare-fun c!135711 () Bool)

(assert (=> b!1473027 (= c!135711 (= lt!643735 lt!643645))))

(declare-fun b!1473028 () Bool)

(assert (=> b!1473028 (= e!826635 (Found!12096 index!646))))

(declare-fun b!1473029 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473029 (= e!826637 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!643645 lt!643640 mask!2687))))

(assert (= (and d!155499 c!135710) b!1473025))

(assert (= (and d!155499 (not c!135710)) b!1473027))

(assert (= (and b!1473027 c!135711) b!1473028))

(assert (= (and b!1473027 (not c!135711)) b!1473026))

(assert (= (and b!1473026 c!135709) b!1473024))

(assert (= (and b!1473026 (not c!135709)) b!1473029))

(declare-fun m!1359741 () Bool)

(assert (=> d!155499 m!1359741))

(declare-fun m!1359743 () Bool)

(assert (=> d!155499 m!1359743))

(declare-fun m!1359745 () Bool)

(assert (=> d!155499 m!1359745))

(assert (=> d!155499 m!1359521))

(declare-fun m!1359747 () Bool)

(assert (=> b!1473029 m!1359747))

(assert (=> b!1473029 m!1359747))

(declare-fun m!1359749 () Bool)

(assert (=> b!1473029 m!1359749))

(assert (=> b!1472790 d!155499))

(declare-fun b!1473088 () Bool)

(declare-fun e!826670 () SeekEntryResult!12096)

(declare-fun e!826669 () SeekEntryResult!12096)

(assert (=> b!1473088 (= e!826670 e!826669)))

(declare-fun lt!643763 () (_ BitVec 64))

(declare-fun lt!643764 () SeekEntryResult!12096)

(assert (=> b!1473088 (= lt!643763 (select (arr!47833 lt!643640) (index!50777 lt!643764)))))

(declare-fun c!135737 () Bool)

(assert (=> b!1473088 (= c!135737 (= lt!643763 lt!643645))))

(declare-fun b!1473089 () Bool)

(declare-fun e!826668 () SeekEntryResult!12096)

(assert (=> b!1473089 (= e!826668 (seekKeyOrZeroReturnVacant!0 (x!132358 lt!643764) (index!50777 lt!643764) (index!50777 lt!643764) lt!643645 lt!643640 mask!2687))))

(declare-fun b!1473090 () Bool)

(assert (=> b!1473090 (= e!826668 (MissingZero!12096 (index!50777 lt!643764)))))

(declare-fun d!155505 () Bool)

(declare-fun lt!643765 () SeekEntryResult!12096)

(assert (=> d!155505 (and (or (is-Undefined!12096 lt!643765) (not (is-Found!12096 lt!643765)) (and (bvsge (index!50776 lt!643765) #b00000000000000000000000000000000) (bvslt (index!50776 lt!643765) (size!48384 lt!643640)))) (or (is-Undefined!12096 lt!643765) (is-Found!12096 lt!643765) (not (is-MissingZero!12096 lt!643765)) (and (bvsge (index!50775 lt!643765) #b00000000000000000000000000000000) (bvslt (index!50775 lt!643765) (size!48384 lt!643640)))) (or (is-Undefined!12096 lt!643765) (is-Found!12096 lt!643765) (is-MissingZero!12096 lt!643765) (not (is-MissingVacant!12096 lt!643765)) (and (bvsge (index!50778 lt!643765) #b00000000000000000000000000000000) (bvslt (index!50778 lt!643765) (size!48384 lt!643640)))) (or (is-Undefined!12096 lt!643765) (ite (is-Found!12096 lt!643765) (= (select (arr!47833 lt!643640) (index!50776 lt!643765)) lt!643645) (ite (is-MissingZero!12096 lt!643765) (= (select (arr!47833 lt!643640) (index!50775 lt!643765)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12096 lt!643765) (= (select (arr!47833 lt!643640) (index!50778 lt!643765)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155505 (= lt!643765 e!826670)))

(declare-fun c!135738 () Bool)

(assert (=> d!155505 (= c!135738 (and (is-Intermediate!12096 lt!643764) (undefined!12908 lt!643764)))))

(assert (=> d!155505 (= lt!643764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643645 mask!2687) lt!643645 lt!643640 mask!2687))))

(assert (=> d!155505 (validMask!0 mask!2687)))

(assert (=> d!155505 (= (seekEntryOrOpen!0 lt!643645 lt!643640 mask!2687) lt!643765)))

(declare-fun b!1473087 () Bool)

(declare-fun c!135736 () Bool)

(assert (=> b!1473087 (= c!135736 (= lt!643763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473087 (= e!826669 e!826668)))

(declare-fun b!1473091 () Bool)

(assert (=> b!1473091 (= e!826669 (Found!12096 (index!50777 lt!643764)))))

(declare-fun b!1473092 () Bool)

(assert (=> b!1473092 (= e!826670 Undefined!12096)))

(assert (= (and d!155505 c!135738) b!1473092))

(assert (= (and d!155505 (not c!135738)) b!1473088))

(assert (= (and b!1473088 c!135737) b!1473091))

(assert (= (and b!1473088 (not c!135737)) b!1473087))

(assert (= (and b!1473087 c!135736) b!1473090))

(assert (= (and b!1473087 (not c!135736)) b!1473089))

(declare-fun m!1359769 () Bool)

(assert (=> b!1473088 m!1359769))

(declare-fun m!1359771 () Bool)

(assert (=> b!1473089 m!1359771))

(declare-fun m!1359773 () Bool)

(assert (=> d!155505 m!1359773))

(assert (=> d!155505 m!1359525))

(assert (=> d!155505 m!1359527))

(assert (=> d!155505 m!1359521))

(declare-fun m!1359775 () Bool)

(assert (=> d!155505 m!1359775))

(declare-fun m!1359777 () Bool)

(assert (=> d!155505 m!1359777))

(assert (=> d!155505 m!1359525))

(assert (=> b!1472790 d!155505))

(declare-fun b!1473156 () Bool)

(declare-fun e!826705 () Bool)

(declare-fun lt!643785 () SeekEntryResult!12096)

(assert (=> b!1473156 (= e!826705 (bvsge (x!132358 lt!643785) #b01111111111111111111111111111110))))

(declare-fun b!1473157 () Bool)

(declare-fun e!826706 () Bool)

(assert (=> b!1473157 (= e!826705 e!826706)))

(declare-fun res!1000664 () Bool)

(assert (=> b!1473157 (= res!1000664 (and (is-Intermediate!12096 lt!643785) (not (undefined!12908 lt!643785)) (bvslt (x!132358 lt!643785) #b01111111111111111111111111111110) (bvsge (x!132358 lt!643785) #b00000000000000000000000000000000) (bvsge (x!132358 lt!643785) x!665)))))

(assert (=> b!1473157 (=> (not res!1000664) (not e!826706))))

(declare-fun b!1473158 () Bool)

(assert (=> b!1473158 (and (bvsge (index!50777 lt!643785) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643785) (size!48384 a!2862)))))

(declare-fun res!1000665 () Bool)

(assert (=> b!1473158 (= res!1000665 (= (select (arr!47833 a!2862) (index!50777 lt!643785)) (select (arr!47833 a!2862) j!93)))))

(declare-fun e!826707 () Bool)

(assert (=> b!1473158 (=> res!1000665 e!826707)))

(assert (=> b!1473158 (= e!826706 e!826707)))

(declare-fun b!1473159 () Bool)

(declare-fun e!826709 () SeekEntryResult!12096)

(assert (=> b!1473159 (= e!826709 (Intermediate!12096 true index!646 x!665))))

(declare-fun b!1473160 () Bool)

(declare-fun e!826708 () SeekEntryResult!12096)

(assert (=> b!1473160 (= e!826709 e!826708)))

(declare-fun c!135764 () Bool)

(declare-fun lt!643784 () (_ BitVec 64))

(assert (=> b!1473160 (= c!135764 (or (= lt!643784 (select (arr!47833 a!2862) j!93)) (= (bvadd lt!643784 lt!643784) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473161 () Bool)

(assert (=> b!1473161 (and (bvsge (index!50777 lt!643785) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643785) (size!48384 a!2862)))))

(assert (=> b!1473161 (= e!826707 (= (select (arr!47833 a!2862) (index!50777 lt!643785)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473162 () Bool)

(assert (=> b!1473162 (= e!826708 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47833 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155513 () Bool)

(assert (=> d!155513 e!826705))

(declare-fun c!135765 () Bool)

(assert (=> d!155513 (= c!135765 (and (is-Intermediate!12096 lt!643785) (undefined!12908 lt!643785)))))

(assert (=> d!155513 (= lt!643785 e!826709)))

(declare-fun c!135763 () Bool)

(assert (=> d!155513 (= c!135763 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155513 (= lt!643784 (select (arr!47833 a!2862) index!646))))

(assert (=> d!155513 (validMask!0 mask!2687)))

(assert (=> d!155513 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47833 a!2862) j!93) a!2862 mask!2687) lt!643785)))

(declare-fun b!1473163 () Bool)

(assert (=> b!1473163 (and (bvsge (index!50777 lt!643785) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643785) (size!48384 a!2862)))))

(declare-fun res!1000663 () Bool)

(assert (=> b!1473163 (= res!1000663 (= (select (arr!47833 a!2862) (index!50777 lt!643785)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473163 (=> res!1000663 e!826707)))

(declare-fun b!1473164 () Bool)

(assert (=> b!1473164 (= e!826708 (Intermediate!12096 false index!646 x!665))))

(assert (= (and d!155513 c!135763) b!1473159))

(assert (= (and d!155513 (not c!135763)) b!1473160))

(assert (= (and b!1473160 c!135764) b!1473164))

(assert (= (and b!1473160 (not c!135764)) b!1473162))

(assert (= (and d!155513 c!135765) b!1473156))

(assert (= (and d!155513 (not c!135765)) b!1473157))

(assert (= (and b!1473157 res!1000664) b!1473158))

(assert (= (and b!1473158 (not res!1000665)) b!1473163))

(assert (= (and b!1473163 (not res!1000663)) b!1473161))

(declare-fun m!1359803 () Bool)

(assert (=> b!1473158 m!1359803))

(assert (=> b!1473163 m!1359803))

(assert (=> b!1473161 m!1359803))

(assert (=> b!1473162 m!1359747))

(assert (=> b!1473162 m!1359747))

(assert (=> b!1473162 m!1359545))

(declare-fun m!1359805 () Bool)

(assert (=> b!1473162 m!1359805))

(assert (=> d!155513 m!1359561))

(assert (=> d!155513 m!1359521))

(assert (=> b!1472800 d!155513))

(declare-fun d!155529 () Bool)

(assert (=> d!155529 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125854 d!155529))

(declare-fun d!155539 () Bool)

(assert (=> d!155539 (= (array_inv!36778 a!2862) (bvsge (size!48384 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125854 d!155539))

(declare-fun d!155543 () Bool)

(assert (=> d!155543 (= (validKeyInArray!0 (select (arr!47833 a!2862) i!1006)) (and (not (= (select (arr!47833 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47833 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1472793 d!155543))

(declare-fun d!155545 () Bool)

(assert (=> d!155545 (= (validKeyInArray!0 (select (arr!47833 a!2862) j!93)) (and (not (= (select (arr!47833 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47833 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1472792 d!155545))

(declare-fun b!1473195 () Bool)

(declare-fun e!826730 () Bool)

(declare-fun lt!643792 () SeekEntryResult!12096)

(assert (=> b!1473195 (= e!826730 (bvsge (x!132358 lt!643792) #b01111111111111111111111111111110))))

(declare-fun b!1473196 () Bool)

(declare-fun e!826731 () Bool)

(assert (=> b!1473196 (= e!826730 e!826731)))

(declare-fun res!1000679 () Bool)

(assert (=> b!1473196 (= res!1000679 (and (is-Intermediate!12096 lt!643792) (not (undefined!12908 lt!643792)) (bvslt (x!132358 lt!643792) #b01111111111111111111111111111110) (bvsge (x!132358 lt!643792) #b00000000000000000000000000000000) (bvsge (x!132358 lt!643792) #b00000000000000000000000000000000)))))

(assert (=> b!1473196 (=> (not res!1000679) (not e!826731))))

(declare-fun b!1473197 () Bool)

(assert (=> b!1473197 (and (bvsge (index!50777 lt!643792) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643792) (size!48384 lt!643640)))))

(declare-fun res!1000680 () Bool)

(assert (=> b!1473197 (= res!1000680 (= (select (arr!47833 lt!643640) (index!50777 lt!643792)) lt!643645))))

(declare-fun e!826732 () Bool)

(assert (=> b!1473197 (=> res!1000680 e!826732)))

(assert (=> b!1473197 (= e!826731 e!826732)))

(declare-fun b!1473198 () Bool)

(declare-fun e!826734 () SeekEntryResult!12096)

(assert (=> b!1473198 (= e!826734 (Intermediate!12096 true (toIndex!0 lt!643645 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1473199 () Bool)

(declare-fun e!826733 () SeekEntryResult!12096)

(assert (=> b!1473199 (= e!826734 e!826733)))

(declare-fun c!135776 () Bool)

(declare-fun lt!643791 () (_ BitVec 64))

(assert (=> b!1473199 (= c!135776 (or (= lt!643791 lt!643645) (= (bvadd lt!643791 lt!643791) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473200 () Bool)

(assert (=> b!1473200 (and (bvsge (index!50777 lt!643792) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643792) (size!48384 lt!643640)))))

(assert (=> b!1473200 (= e!826732 (= (select (arr!47833 lt!643640) (index!50777 lt!643792)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473201 () Bool)

(assert (=> b!1473201 (= e!826733 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!643645 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!643645 lt!643640 mask!2687))))

(declare-fun d!155547 () Bool)

(assert (=> d!155547 e!826730))

(declare-fun c!135777 () Bool)

(assert (=> d!155547 (= c!135777 (and (is-Intermediate!12096 lt!643792) (undefined!12908 lt!643792)))))

(assert (=> d!155547 (= lt!643792 e!826734)))

(declare-fun c!135775 () Bool)

(assert (=> d!155547 (= c!135775 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155547 (= lt!643791 (select (arr!47833 lt!643640) (toIndex!0 lt!643645 mask!2687)))))

(assert (=> d!155547 (validMask!0 mask!2687)))

(assert (=> d!155547 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643645 mask!2687) lt!643645 lt!643640 mask!2687) lt!643792)))

(declare-fun b!1473202 () Bool)

(assert (=> b!1473202 (and (bvsge (index!50777 lt!643792) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643792) (size!48384 lt!643640)))))

(declare-fun res!1000678 () Bool)

(assert (=> b!1473202 (= res!1000678 (= (select (arr!47833 lt!643640) (index!50777 lt!643792)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473202 (=> res!1000678 e!826732)))

(declare-fun b!1473203 () Bool)

(assert (=> b!1473203 (= e!826733 (Intermediate!12096 false (toIndex!0 lt!643645 mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!155547 c!135775) b!1473198))

(assert (= (and d!155547 (not c!135775)) b!1473199))

(assert (= (and b!1473199 c!135776) b!1473203))

(assert (= (and b!1473199 (not c!135776)) b!1473201))

(assert (= (and d!155547 c!135777) b!1473195))

(assert (= (and d!155547 (not c!135777)) b!1473196))

(assert (= (and b!1473196 res!1000679) b!1473197))

(assert (= (and b!1473197 (not res!1000680)) b!1473202))

(assert (= (and b!1473202 (not res!1000678)) b!1473200))

(declare-fun m!1359829 () Bool)

(assert (=> b!1473197 m!1359829))

(assert (=> b!1473202 m!1359829))

(assert (=> b!1473200 m!1359829))

(assert (=> b!1473201 m!1359525))

(declare-fun m!1359831 () Bool)

(assert (=> b!1473201 m!1359831))

(assert (=> b!1473201 m!1359831))

(declare-fun m!1359833 () Bool)

(assert (=> b!1473201 m!1359833))

(assert (=> d!155547 m!1359525))

(declare-fun m!1359835 () Bool)

(assert (=> d!155547 m!1359835))

(assert (=> d!155547 m!1359521))

(assert (=> b!1472802 d!155547))

(declare-fun d!155549 () Bool)

(declare-fun lt!643804 () (_ BitVec 32))

(declare-fun lt!643803 () (_ BitVec 32))

(assert (=> d!155549 (= lt!643804 (bvmul (bvxor lt!643803 (bvlshr lt!643803 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155549 (= lt!643803 ((_ extract 31 0) (bvand (bvxor lt!643645 (bvlshr lt!643645 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155549 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1000681 (let ((h!35870 ((_ extract 31 0) (bvand (bvxor lt!643645 (bvlshr lt!643645 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132368 (bvmul (bvxor h!35870 (bvlshr h!35870 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132368 (bvlshr x!132368 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1000681 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1000681 #b00000000000000000000000000000000))))))

(assert (=> d!155549 (= (toIndex!0 lt!643645 mask!2687) (bvand (bvxor lt!643804 (bvlshr lt!643804 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1472802 d!155549))

(declare-fun b!1473212 () Bool)

(declare-fun e!826741 () Bool)

(declare-fun lt!643806 () SeekEntryResult!12096)

(assert (=> b!1473212 (= e!826741 (bvsge (x!132358 lt!643806) #b01111111111111111111111111111110))))

(declare-fun b!1473213 () Bool)

(declare-fun e!826742 () Bool)

(assert (=> b!1473213 (= e!826741 e!826742)))

(declare-fun res!1000687 () Bool)

(assert (=> b!1473213 (= res!1000687 (and (is-Intermediate!12096 lt!643806) (not (undefined!12908 lt!643806)) (bvslt (x!132358 lt!643806) #b01111111111111111111111111111110) (bvsge (x!132358 lt!643806) #b00000000000000000000000000000000) (bvsge (x!132358 lt!643806) x!665)))))

(assert (=> b!1473213 (=> (not res!1000687) (not e!826742))))

(declare-fun b!1473214 () Bool)

(assert (=> b!1473214 (and (bvsge (index!50777 lt!643806) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643806) (size!48384 lt!643640)))))

(declare-fun res!1000688 () Bool)

(assert (=> b!1473214 (= res!1000688 (= (select (arr!47833 lt!643640) (index!50777 lt!643806)) lt!643645))))

(declare-fun e!826743 () Bool)

(assert (=> b!1473214 (=> res!1000688 e!826743)))

(assert (=> b!1473214 (= e!826742 e!826743)))

(declare-fun b!1473215 () Bool)

(declare-fun e!826745 () SeekEntryResult!12096)

(assert (=> b!1473215 (= e!826745 (Intermediate!12096 true index!646 x!665))))

(declare-fun b!1473216 () Bool)

(declare-fun e!826744 () SeekEntryResult!12096)

(assert (=> b!1473216 (= e!826745 e!826744)))

(declare-fun c!135781 () Bool)

(declare-fun lt!643805 () (_ BitVec 64))

(assert (=> b!1473216 (= c!135781 (or (= lt!643805 lt!643645) (= (bvadd lt!643805 lt!643805) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473217 () Bool)

(assert (=> b!1473217 (and (bvsge (index!50777 lt!643806) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643806) (size!48384 lt!643640)))))

(assert (=> b!1473217 (= e!826743 (= (select (arr!47833 lt!643640) (index!50777 lt!643806)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473218 () Bool)

(assert (=> b!1473218 (= e!826744 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!643645 lt!643640 mask!2687))))

(declare-fun d!155551 () Bool)

(assert (=> d!155551 e!826741))

(declare-fun c!135782 () Bool)

(assert (=> d!155551 (= c!135782 (and (is-Intermediate!12096 lt!643806) (undefined!12908 lt!643806)))))

(assert (=> d!155551 (= lt!643806 e!826745)))

(declare-fun c!135780 () Bool)

(assert (=> d!155551 (= c!135780 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155551 (= lt!643805 (select (arr!47833 lt!643640) index!646))))

(assert (=> d!155551 (validMask!0 mask!2687)))

(assert (=> d!155551 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643645 lt!643640 mask!2687) lt!643806)))

(declare-fun b!1473219 () Bool)

(assert (=> b!1473219 (and (bvsge (index!50777 lt!643806) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643806) (size!48384 lt!643640)))))

(declare-fun res!1000686 () Bool)

(assert (=> b!1473219 (= res!1000686 (= (select (arr!47833 lt!643640) (index!50777 lt!643806)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473219 (=> res!1000686 e!826743)))

(declare-fun b!1473220 () Bool)

(assert (=> b!1473220 (= e!826744 (Intermediate!12096 false index!646 x!665))))

(assert (= (and d!155551 c!135780) b!1473215))

(assert (= (and d!155551 (not c!135780)) b!1473216))

(assert (= (and b!1473216 c!135781) b!1473220))

(assert (= (and b!1473216 (not c!135781)) b!1473218))

(assert (= (and d!155551 c!135782) b!1473212))

(assert (= (and d!155551 (not c!135782)) b!1473213))

(assert (= (and b!1473213 res!1000687) b!1473214))

(assert (= (and b!1473214 (not res!1000688)) b!1473219))

(assert (= (and b!1473219 (not res!1000686)) b!1473217))

(declare-fun m!1359837 () Bool)

(assert (=> b!1473214 m!1359837))

(assert (=> b!1473219 m!1359837))

(assert (=> b!1473217 m!1359837))

(assert (=> b!1473218 m!1359747))

(assert (=> b!1473218 m!1359747))

(declare-fun m!1359839 () Bool)

(assert (=> b!1473218 m!1359839))

(assert (=> d!155551 m!1359745))

(assert (=> d!155551 m!1359521))

(assert (=> b!1472791 d!155551))

(assert (=> b!1472796 d!155505))

(declare-fun b!1473225 () Bool)

(declare-fun e!826749 () Bool)

(declare-fun lt!643811 () SeekEntryResult!12096)

(assert (=> b!1473225 (= e!826749 (bvsge (x!132358 lt!643811) #b01111111111111111111111111111110))))

(declare-fun b!1473226 () Bool)

(declare-fun e!826750 () Bool)

(assert (=> b!1473226 (= e!826749 e!826750)))

(declare-fun res!1000692 () Bool)

(assert (=> b!1473226 (= res!1000692 (and (is-Intermediate!12096 lt!643811) (not (undefined!12908 lt!643811)) (bvslt (x!132358 lt!643811) #b01111111111111111111111111111110) (bvsge (x!132358 lt!643811) #b00000000000000000000000000000000) (bvsge (x!132358 lt!643811) #b00000000000000000000000000000000)))))

(assert (=> b!1473226 (=> (not res!1000692) (not e!826750))))

(declare-fun b!1473227 () Bool)

(assert (=> b!1473227 (and (bvsge (index!50777 lt!643811) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643811) (size!48384 a!2862)))))

(declare-fun res!1000693 () Bool)

(assert (=> b!1473227 (= res!1000693 (= (select (arr!47833 a!2862) (index!50777 lt!643811)) (select (arr!47833 a!2862) j!93)))))

(declare-fun e!826751 () Bool)

(assert (=> b!1473227 (=> res!1000693 e!826751)))

(assert (=> b!1473227 (= e!826750 e!826751)))

(declare-fun b!1473228 () Bool)

(declare-fun e!826753 () SeekEntryResult!12096)

(assert (=> b!1473228 (= e!826753 (Intermediate!12096 true (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1473229 () Bool)

(declare-fun e!826752 () SeekEntryResult!12096)

(assert (=> b!1473229 (= e!826753 e!826752)))

(declare-fun c!135785 () Bool)

(declare-fun lt!643810 () (_ BitVec 64))

(assert (=> b!1473229 (= c!135785 (or (= lt!643810 (select (arr!47833 a!2862) j!93)) (= (bvadd lt!643810 lt!643810) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473230 () Bool)

(assert (=> b!1473230 (and (bvsge (index!50777 lt!643811) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643811) (size!48384 a!2862)))))

(assert (=> b!1473230 (= e!826751 (= (select (arr!47833 a!2862) (index!50777 lt!643811)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473231 () Bool)

(assert (=> b!1473231 (= e!826752 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47833 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155553 () Bool)

(assert (=> d!155553 e!826749))

(declare-fun c!135786 () Bool)

(assert (=> d!155553 (= c!135786 (and (is-Intermediate!12096 lt!643811) (undefined!12908 lt!643811)))))

(assert (=> d!155553 (= lt!643811 e!826753)))

(declare-fun c!135784 () Bool)

(assert (=> d!155553 (= c!135784 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155553 (= lt!643810 (select (arr!47833 a!2862) (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687)))))

(assert (=> d!155553 (validMask!0 mask!2687)))

(assert (=> d!155553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) (select (arr!47833 a!2862) j!93) a!2862 mask!2687) lt!643811)))

(declare-fun b!1473232 () Bool)

(assert (=> b!1473232 (and (bvsge (index!50777 lt!643811) #b00000000000000000000000000000000) (bvslt (index!50777 lt!643811) (size!48384 a!2862)))))

(declare-fun res!1000691 () Bool)

(assert (=> b!1473232 (= res!1000691 (= (select (arr!47833 a!2862) (index!50777 lt!643811)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473232 (=> res!1000691 e!826751)))

(declare-fun b!1473233 () Bool)

(assert (=> b!1473233 (= e!826752 (Intermediate!12096 false (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!155553 c!135784) b!1473228))

(assert (= (and d!155553 (not c!135784)) b!1473229))

(assert (= (and b!1473229 c!135785) b!1473233))

(assert (= (and b!1473229 (not c!135785)) b!1473231))

(assert (= (and d!155553 c!135786) b!1473225))

(assert (= (and d!155553 (not c!135786)) b!1473226))

(assert (= (and b!1473226 res!1000692) b!1473227))

(assert (= (and b!1473227 (not res!1000693)) b!1473232))

(assert (= (and b!1473232 (not res!1000691)) b!1473230))

(declare-fun m!1359847 () Bool)

(assert (=> b!1473227 m!1359847))

(assert (=> b!1473232 m!1359847))

(assert (=> b!1473230 m!1359847))

(assert (=> b!1473231 m!1359551))

(declare-fun m!1359849 () Bool)

(assert (=> b!1473231 m!1359849))

(assert (=> b!1473231 m!1359849))

(assert (=> b!1473231 m!1359545))

(declare-fun m!1359851 () Bool)

(assert (=> b!1473231 m!1359851))

(assert (=> d!155553 m!1359551))

(declare-fun m!1359853 () Bool)

(assert (=> d!155553 m!1359853))

(assert (=> d!155553 m!1359521))

(assert (=> b!1472795 d!155553))

(declare-fun d!155557 () Bool)

(declare-fun lt!643813 () (_ BitVec 32))

(declare-fun lt!643812 () (_ BitVec 32))

(assert (=> d!155557 (= lt!643813 (bvmul (bvxor lt!643812 (bvlshr lt!643812 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155557 (= lt!643812 ((_ extract 31 0) (bvand (bvxor (select (arr!47833 a!2862) j!93) (bvlshr (select (arr!47833 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155557 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1000681 (let ((h!35870 ((_ extract 31 0) (bvand (bvxor (select (arr!47833 a!2862) j!93) (bvlshr (select (arr!47833 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132368 (bvmul (bvxor h!35870 (bvlshr h!35870 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132368 (bvlshr x!132368 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1000681 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1000681 #b00000000000000000000000000000000))))))

(assert (=> d!155557 (= (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) (bvand (bvxor lt!643813 (bvlshr lt!643813 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1472795 d!155557))

(declare-fun b!1473235 () Bool)

(declare-fun e!826756 () SeekEntryResult!12096)

(declare-fun e!826755 () SeekEntryResult!12096)

(assert (=> b!1473235 (= e!826756 e!826755)))

(declare-fun lt!643814 () (_ BitVec 64))

(declare-fun lt!643815 () SeekEntryResult!12096)

(assert (=> b!1473235 (= lt!643814 (select (arr!47833 a!2862) (index!50777 lt!643815)))))

(declare-fun c!135788 () Bool)

(assert (=> b!1473235 (= c!135788 (= lt!643814 (select (arr!47833 a!2862) j!93)))))

(declare-fun b!1473236 () Bool)

(declare-fun e!826754 () SeekEntryResult!12096)

(assert (=> b!1473236 (= e!826754 (seekKeyOrZeroReturnVacant!0 (x!132358 lt!643815) (index!50777 lt!643815) (index!50777 lt!643815) (select (arr!47833 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1473237 () Bool)

(assert (=> b!1473237 (= e!826754 (MissingZero!12096 (index!50777 lt!643815)))))

(declare-fun d!155559 () Bool)

(declare-fun lt!643816 () SeekEntryResult!12096)

(assert (=> d!155559 (and (or (is-Undefined!12096 lt!643816) (not (is-Found!12096 lt!643816)) (and (bvsge (index!50776 lt!643816) #b00000000000000000000000000000000) (bvslt (index!50776 lt!643816) (size!48384 a!2862)))) (or (is-Undefined!12096 lt!643816) (is-Found!12096 lt!643816) (not (is-MissingZero!12096 lt!643816)) (and (bvsge (index!50775 lt!643816) #b00000000000000000000000000000000) (bvslt (index!50775 lt!643816) (size!48384 a!2862)))) (or (is-Undefined!12096 lt!643816) (is-Found!12096 lt!643816) (is-MissingZero!12096 lt!643816) (not (is-MissingVacant!12096 lt!643816)) (and (bvsge (index!50778 lt!643816) #b00000000000000000000000000000000) (bvslt (index!50778 lt!643816) (size!48384 a!2862)))) (or (is-Undefined!12096 lt!643816) (ite (is-Found!12096 lt!643816) (= (select (arr!47833 a!2862) (index!50776 lt!643816)) (select (arr!47833 a!2862) j!93)) (ite (is-MissingZero!12096 lt!643816) (= (select (arr!47833 a!2862) (index!50775 lt!643816)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12096 lt!643816) (= (select (arr!47833 a!2862) (index!50778 lt!643816)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155559 (= lt!643816 e!826756)))

(declare-fun c!135789 () Bool)

(assert (=> d!155559 (= c!135789 (and (is-Intermediate!12096 lt!643815) (undefined!12908 lt!643815)))))

(assert (=> d!155559 (= lt!643815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47833 a!2862) j!93) mask!2687) (select (arr!47833 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155559 (validMask!0 mask!2687)))

(assert (=> d!155559 (= (seekEntryOrOpen!0 (select (arr!47833 a!2862) j!93) a!2862 mask!2687) lt!643816)))

(declare-fun b!1473234 () Bool)

(declare-fun c!135787 () Bool)

(assert (=> b!1473234 (= c!135787 (= lt!643814 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473234 (= e!826755 e!826754)))

(declare-fun b!1473238 () Bool)

(assert (=> b!1473238 (= e!826755 (Found!12096 (index!50777 lt!643815)))))

(declare-fun b!1473239 () Bool)

(assert (=> b!1473239 (= e!826756 Undefined!12096)))

(assert (= (and d!155559 c!135789) b!1473239))

(assert (= (and d!155559 (not c!135789)) b!1473235))

(assert (= (and b!1473235 c!135788) b!1473238))

(assert (= (and b!1473235 (not c!135788)) b!1473234))

(assert (= (and b!1473234 c!135787) b!1473237))

(assert (= (and b!1473234 (not c!135787)) b!1473236))

(declare-fun m!1359855 () Bool)

(assert (=> b!1473235 m!1359855))

(assert (=> b!1473236 m!1359545))

(declare-fun m!1359857 () Bool)

(assert (=> b!1473236 m!1359857))

(declare-fun m!1359859 () Bool)

(assert (=> d!155559 m!1359859))

(assert (=> d!155559 m!1359551))

(assert (=> d!155559 m!1359545))

(assert (=> d!155559 m!1359553))

(assert (=> d!155559 m!1359521))

(declare-fun m!1359861 () Bool)

(assert (=> d!155559 m!1359861))

(declare-fun m!1359863 () Bool)

(assert (=> d!155559 m!1359863))

(assert (=> d!155559 m!1359545))

(assert (=> d!155559 m!1359551))

(assert (=> b!1472794 d!155559))

(declare-fun b!1473240 () Bool)

(declare-fun e!826757 () Bool)

(declare-fun e!826759 () Bool)

(assert (=> b!1473240 (= e!826757 e!826759)))

(declare-fun c!135790 () Bool)

(assert (=> b!1473240 (= c!135790 (validKeyInArray!0 (select (arr!47833 a!2862) j!93)))))

(declare-fun b!1473241 () Bool)

(declare-fun e!826758 () Bool)

(declare-fun call!67754 () Bool)

(assert (=> b!1473241 (= e!826758 call!67754)))

(declare-fun bm!67751 () Bool)

(assert (=> bm!67751 (= call!67754 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155561 () Bool)

(declare-fun res!1000695 () Bool)

(assert (=> d!155561 (=> res!1000695 e!826757)))

(assert (=> d!155561 (= res!1000695 (bvsge j!93 (size!48384 a!2862)))))

(assert (=> d!155561 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!826757)))

(declare-fun b!1473242 () Bool)

(assert (=> b!1473242 (= e!826759 call!67754)))

(declare-fun b!1473243 () Bool)

(assert (=> b!1473243 (= e!826759 e!826758)))

(declare-fun lt!643819 () (_ BitVec 64))

(assert (=> b!1473243 (= lt!643819 (select (arr!47833 a!2862) j!93))))

(declare-fun lt!643818 () Unit!49480)

(assert (=> b!1473243 (= lt!643818 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643819 j!93))))

(assert (=> b!1473243 (arrayContainsKey!0 a!2862 lt!643819 #b00000000000000000000000000000000)))

(declare-fun lt!643817 () Unit!49480)

(assert (=> b!1473243 (= lt!643817 lt!643818)))

(declare-fun res!1000694 () Bool)

(assert (=> b!1473243 (= res!1000694 (= (seekEntryOrOpen!0 (select (arr!47833 a!2862) j!93) a!2862 mask!2687) (Found!12096 j!93)))))

(assert (=> b!1473243 (=> (not res!1000694) (not e!826758))))

(assert (= (and d!155561 (not res!1000695)) b!1473240))

(assert (= (and b!1473240 c!135790) b!1473243))

(assert (= (and b!1473240 (not c!135790)) b!1473242))

(assert (= (and b!1473243 res!1000694) b!1473241))

(assert (= (or b!1473241 b!1473242) bm!67751))

(assert (=> b!1473240 m!1359545))

(assert (=> b!1473240 m!1359545))

(assert (=> b!1473240 m!1359567))

(declare-fun m!1359865 () Bool)

(assert (=> bm!67751 m!1359865))

(assert (=> b!1473243 m!1359545))

(declare-fun m!1359867 () Bool)

(assert (=> b!1473243 m!1359867))

(declare-fun m!1359869 () Bool)

(assert (=> b!1473243 m!1359869))

(assert (=> b!1473243 m!1359545))

(assert (=> b!1473243 m!1359563))

(assert (=> b!1472794 d!155561))

(declare-fun d!155563 () Bool)

(assert (=> d!155563 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!643827 () Unit!49480)

(declare-fun choose!38 (array!99105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49480)

(assert (=> d!155563 (= lt!643827 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155563 (validMask!0 mask!2687)))

(assert (=> d!155563 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!643827)))

(declare-fun bs!42535 () Bool)

(assert (= bs!42535 d!155563))

(assert (=> bs!42535 m!1359565))

(declare-fun m!1359881 () Bool)

(assert (=> bs!42535 m!1359881))

(assert (=> bs!42535 m!1359521))

(assert (=> b!1472794 d!155563))

(declare-fun b!1473276 () Bool)

(declare-fun e!826784 () Bool)

(declare-fun e!826783 () Bool)

(assert (=> b!1473276 (= e!826784 e!826783)))

(declare-fun res!1000713 () Bool)

(assert (=> b!1473276 (=> (not res!1000713) (not e!826783))))

(declare-fun e!826782 () Bool)

(assert (=> b!1473276 (= res!1000713 (not e!826782))))

(declare-fun res!1000712 () Bool)

(assert (=> b!1473276 (=> (not res!1000712) (not e!826782))))

(assert (=> b!1473276 (= res!1000712 (validKeyInArray!0 (select (arr!47833 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67755 () Bool)

(declare-fun call!67758 () Bool)

(declare-fun c!135800 () Bool)

(assert (=> bm!67755 (= call!67758 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135800 (Cons!34510 (select (arr!47833 a!2862) #b00000000000000000000000000000000) Nil!34511) Nil!34511)))))

(declare-fun b!1473277 () Bool)

(declare-fun e!826781 () Bool)

(assert (=> b!1473277 (= e!826781 call!67758)))

(declare-fun b!1473278 () Bool)

(assert (=> b!1473278 (= e!826783 e!826781)))

(assert (=> b!1473278 (= c!135800 (validKeyInArray!0 (select (arr!47833 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1473279 () Bool)

(assert (=> b!1473279 (= e!826781 call!67758)))

(declare-fun b!1473280 () Bool)

(declare-fun contains!9915 (List!34514 (_ BitVec 64)) Bool)

(assert (=> b!1473280 (= e!826782 (contains!9915 Nil!34511 (select (arr!47833 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155569 () Bool)

(declare-fun res!1000711 () Bool)

(assert (=> d!155569 (=> res!1000711 e!826784)))

(assert (=> d!155569 (= res!1000711 (bvsge #b00000000000000000000000000000000 (size!48384 a!2862)))))

(assert (=> d!155569 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34511) e!826784)))

(assert (= (and d!155569 (not res!1000711)) b!1473276))

(assert (= (and b!1473276 res!1000712) b!1473280))

(assert (= (and b!1473276 res!1000713) b!1473278))

(assert (= (and b!1473278 c!135800) b!1473277))

(assert (= (and b!1473278 (not c!135800)) b!1473279))

(assert (= (or b!1473277 b!1473279) bm!67755))

(assert (=> b!1473276 m!1359713))

(assert (=> b!1473276 m!1359713))

(assert (=> b!1473276 m!1359715))

(assert (=> bm!67755 m!1359713))

(declare-fun m!1359899 () Bool)

(assert (=> bm!67755 m!1359899))

(assert (=> b!1473278 m!1359713))

(assert (=> b!1473278 m!1359713))

(assert (=> b!1473278 m!1359715))

(assert (=> b!1473280 m!1359713))

(assert (=> b!1473280 m!1359713))

(declare-fun m!1359901 () Bool)

(assert (=> b!1473280 m!1359901))

(assert (=> b!1472797 d!155569))

(push 1)

