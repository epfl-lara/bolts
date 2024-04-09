; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126610 () Bool)

(assert start!126610)

(declare-fun b!1485596 () Bool)

(declare-fun e!832853 () Bool)

(declare-fun e!832856 () Bool)

(assert (=> b!1485596 (= e!832853 e!832856)))

(declare-fun res!1010380 () Bool)

(assert (=> b!1485596 (=> (not res!1010380) (not e!832856))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99489 0))(
  ( (array!99490 (arr!48016 (Array (_ BitVec 32) (_ BitVec 64))) (size!48567 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99489)

(assert (=> b!1485596 (= res!1010380 (= (select (store (arr!48016 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648113 () array!99489)

(assert (=> b!1485596 (= lt!648113 (array!99490 (store (arr!48016 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48567 a!2862)))))

(declare-fun b!1485597 () Bool)

(declare-fun res!1010365 () Bool)

(declare-fun e!832851 () Bool)

(assert (=> b!1485597 (=> (not res!1010365) (not e!832851))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12279 0))(
  ( (MissingZero!12279 (index!51507 (_ BitVec 32))) (Found!12279 (index!51508 (_ BitVec 32))) (Intermediate!12279 (undefined!13091 Bool) (index!51509 (_ BitVec 32)) (x!133086 (_ BitVec 32))) (Undefined!12279) (MissingVacant!12279 (index!51510 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99489 (_ BitVec 32)) SeekEntryResult!12279)

(assert (=> b!1485597 (= res!1010365 (= (seekEntryOrOpen!0 (select (arr!48016 a!2862) j!93) a!2862 mask!2687) (Found!12279 j!93)))))

(declare-fun b!1485598 () Bool)

(declare-fun res!1010369 () Bool)

(assert (=> b!1485598 (=> (not res!1010369) (not e!832853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485598 (= res!1010369 (validKeyInArray!0 (select (arr!48016 a!2862) i!1006)))))

(declare-fun e!832855 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!648115 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1485599 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99489 (_ BitVec 32)) SeekEntryResult!12279)

(assert (=> b!1485599 (= e!832855 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648115 lt!648113 mask!2687) (seekEntryOrOpen!0 lt!648115 lt!648113 mask!2687)))))

(declare-fun e!832858 () Bool)

(declare-fun lt!648118 () (_ BitVec 32))

(declare-fun b!1485600 () Bool)

(assert (=> b!1485600 (= e!832858 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (and (bvsge lt!648118 #b00000000000000000000000000000000) (bvslt lt!648118 (size!48567 a!2862)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485600 (= lt!648118 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485601 () Bool)

(declare-fun e!832852 () Bool)

(declare-fun e!832859 () Bool)

(assert (=> b!1485601 (= e!832852 e!832859)))

(declare-fun res!1010382 () Bool)

(assert (=> b!1485601 (=> (not res!1010382) (not e!832859))))

(declare-fun lt!648117 () SeekEntryResult!12279)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1485601 (= res!1010382 (= lt!648117 (Intermediate!12279 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99489 (_ BitVec 32)) SeekEntryResult!12279)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485601 (= lt!648117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648115 mask!2687) lt!648115 lt!648113 mask!2687))))

(assert (=> b!1485601 (= lt!648115 (select (store (arr!48016 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1010377 () Bool)

(assert (=> start!126610 (=> (not res!1010377) (not e!832853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126610 (= res!1010377 (validMask!0 mask!2687))))

(assert (=> start!126610 e!832853))

(assert (=> start!126610 true))

(declare-fun array_inv!36961 (array!99489) Bool)

(assert (=> start!126610 (array_inv!36961 a!2862)))

(declare-fun b!1485602 () Bool)

(declare-fun res!1010371 () Bool)

(assert (=> b!1485602 (=> (not res!1010371) (not e!832859))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485602 (= res!1010371 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485603 () Bool)

(declare-fun e!832850 () Bool)

(assert (=> b!1485603 (= e!832850 (= (seekEntryOrOpen!0 lt!648115 lt!648113 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648115 lt!648113 mask!2687)))))

(declare-fun b!1485604 () Bool)

(assert (=> b!1485604 (= e!832856 e!832852)))

(declare-fun res!1010381 () Bool)

(assert (=> b!1485604 (=> (not res!1010381) (not e!832852))))

(declare-fun lt!648116 () SeekEntryResult!12279)

(assert (=> b!1485604 (= res!1010381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) (select (arr!48016 a!2862) j!93) a!2862 mask!2687) lt!648116))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1485604 (= lt!648116 (Intermediate!12279 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485605 () Bool)

(declare-fun res!1010378 () Bool)

(assert (=> b!1485605 (=> (not res!1010378) (not e!832859))))

(assert (=> b!1485605 (= res!1010378 e!832855)))

(declare-fun c!137141 () Bool)

(assert (=> b!1485605 (= c!137141 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485606 () Bool)

(declare-fun res!1010366 () Bool)

(assert (=> b!1485606 (=> (not res!1010366) (not e!832852))))

(assert (=> b!1485606 (= res!1010366 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48016 a!2862) j!93) a!2862 mask!2687) lt!648116))))

(declare-fun b!1485607 () Bool)

(assert (=> b!1485607 (= e!832859 (not e!832858))))

(declare-fun res!1010364 () Bool)

(assert (=> b!1485607 (=> res!1010364 e!832858)))

(assert (=> b!1485607 (= res!1010364 (or (and (= (select (arr!48016 a!2862) index!646) (select (store (arr!48016 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48016 a!2862) index!646) (select (arr!48016 a!2862) j!93))) (= (select (arr!48016 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485607 e!832851))

(declare-fun res!1010379 () Bool)

(assert (=> b!1485607 (=> (not res!1010379) (not e!832851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99489 (_ BitVec 32)) Bool)

(assert (=> b!1485607 (= res!1010379 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49846 0))(
  ( (Unit!49847) )
))
(declare-fun lt!648112 () Unit!49846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99489 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49846)

(assert (=> b!1485607 (= lt!648112 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485608 () Bool)

(assert (=> b!1485608 (= e!832855 (= lt!648117 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648115 lt!648113 mask!2687)))))

(declare-fun b!1485609 () Bool)

(declare-fun e!832857 () Bool)

(assert (=> b!1485609 (= e!832851 e!832857)))

(declare-fun res!1010373 () Bool)

(assert (=> b!1485609 (=> res!1010373 e!832857)))

(declare-fun lt!648114 () (_ BitVec 64))

(assert (=> b!1485609 (= res!1010373 (or (and (= (select (arr!48016 a!2862) index!646) lt!648114) (= (select (arr!48016 a!2862) index!646) (select (arr!48016 a!2862) j!93))) (= (select (arr!48016 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485609 (= lt!648114 (select (store (arr!48016 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485610 () Bool)

(declare-fun res!1010374 () Bool)

(assert (=> b!1485610 (=> (not res!1010374) (not e!832853))))

(assert (=> b!1485610 (= res!1010374 (validKeyInArray!0 (select (arr!48016 a!2862) j!93)))))

(declare-fun b!1485611 () Bool)

(declare-fun res!1010375 () Bool)

(assert (=> b!1485611 (=> (not res!1010375) (not e!832853))))

(assert (=> b!1485611 (= res!1010375 (and (= (size!48567 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48567 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48567 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485612 () Bool)

(assert (=> b!1485612 (= e!832857 e!832850)))

(declare-fun res!1010376 () Bool)

(assert (=> b!1485612 (=> (not res!1010376) (not e!832850))))

(assert (=> b!1485612 (= res!1010376 (and (= index!646 intermediateAfterIndex!19) (= lt!648114 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485613 () Bool)

(declare-fun res!1010370 () Bool)

(assert (=> b!1485613 (=> (not res!1010370) (not e!832853))))

(assert (=> b!1485613 (= res!1010370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485614 () Bool)

(declare-fun res!1010367 () Bool)

(assert (=> b!1485614 (=> (not res!1010367) (not e!832853))))

(declare-datatypes ((List!34697 0))(
  ( (Nil!34694) (Cons!34693 (h!36067 (_ BitVec 64)) (t!49398 List!34697)) )
))
(declare-fun arrayNoDuplicates!0 (array!99489 (_ BitVec 32) List!34697) Bool)

(assert (=> b!1485614 (= res!1010367 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34694))))

(declare-fun b!1485615 () Bool)

(declare-fun res!1010368 () Bool)

(assert (=> b!1485615 (=> (not res!1010368) (not e!832853))))

(assert (=> b!1485615 (= res!1010368 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48567 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48567 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48567 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485616 () Bool)

(declare-fun res!1010372 () Bool)

(assert (=> b!1485616 (=> (not res!1010372) (not e!832851))))

(assert (=> b!1485616 (= res!1010372 (or (= (select (arr!48016 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48016 a!2862) intermediateBeforeIndex!19) (select (arr!48016 a!2862) j!93))))))

(assert (= (and start!126610 res!1010377) b!1485611))

(assert (= (and b!1485611 res!1010375) b!1485598))

(assert (= (and b!1485598 res!1010369) b!1485610))

(assert (= (and b!1485610 res!1010374) b!1485613))

(assert (= (and b!1485613 res!1010370) b!1485614))

(assert (= (and b!1485614 res!1010367) b!1485615))

(assert (= (and b!1485615 res!1010368) b!1485596))

(assert (= (and b!1485596 res!1010380) b!1485604))

(assert (= (and b!1485604 res!1010381) b!1485606))

(assert (= (and b!1485606 res!1010366) b!1485601))

(assert (= (and b!1485601 res!1010382) b!1485605))

(assert (= (and b!1485605 c!137141) b!1485608))

(assert (= (and b!1485605 (not c!137141)) b!1485599))

(assert (= (and b!1485605 res!1010378) b!1485602))

(assert (= (and b!1485602 res!1010371) b!1485607))

(assert (= (and b!1485607 res!1010379) b!1485597))

(assert (= (and b!1485597 res!1010365) b!1485616))

(assert (= (and b!1485616 res!1010372) b!1485609))

(assert (= (and b!1485609 (not res!1010373)) b!1485612))

(assert (= (and b!1485612 res!1010376) b!1485603))

(assert (= (and b!1485607 (not res!1010364)) b!1485600))

(declare-fun m!1370745 () Bool)

(assert (=> b!1485607 m!1370745))

(declare-fun m!1370747 () Bool)

(assert (=> b!1485607 m!1370747))

(declare-fun m!1370749 () Bool)

(assert (=> b!1485607 m!1370749))

(declare-fun m!1370751 () Bool)

(assert (=> b!1485607 m!1370751))

(declare-fun m!1370753 () Bool)

(assert (=> b!1485607 m!1370753))

(declare-fun m!1370755 () Bool)

(assert (=> b!1485607 m!1370755))

(declare-fun m!1370757 () Bool)

(assert (=> b!1485599 m!1370757))

(declare-fun m!1370759 () Bool)

(assert (=> b!1485599 m!1370759))

(assert (=> b!1485610 m!1370755))

(assert (=> b!1485610 m!1370755))

(declare-fun m!1370761 () Bool)

(assert (=> b!1485610 m!1370761))

(declare-fun m!1370763 () Bool)

(assert (=> b!1485616 m!1370763))

(assert (=> b!1485616 m!1370755))

(assert (=> b!1485603 m!1370759))

(assert (=> b!1485603 m!1370757))

(assert (=> b!1485606 m!1370755))

(assert (=> b!1485606 m!1370755))

(declare-fun m!1370765 () Bool)

(assert (=> b!1485606 m!1370765))

(assert (=> b!1485604 m!1370755))

(assert (=> b!1485604 m!1370755))

(declare-fun m!1370767 () Bool)

(assert (=> b!1485604 m!1370767))

(assert (=> b!1485604 m!1370767))

(assert (=> b!1485604 m!1370755))

(declare-fun m!1370769 () Bool)

(assert (=> b!1485604 m!1370769))

(declare-fun m!1370771 () Bool)

(assert (=> b!1485614 m!1370771))

(assert (=> b!1485596 m!1370747))

(declare-fun m!1370773 () Bool)

(assert (=> b!1485596 m!1370773))

(declare-fun m!1370775 () Bool)

(assert (=> b!1485601 m!1370775))

(assert (=> b!1485601 m!1370775))

(declare-fun m!1370777 () Bool)

(assert (=> b!1485601 m!1370777))

(assert (=> b!1485601 m!1370747))

(declare-fun m!1370779 () Bool)

(assert (=> b!1485601 m!1370779))

(declare-fun m!1370781 () Bool)

(assert (=> b!1485608 m!1370781))

(declare-fun m!1370783 () Bool)

(assert (=> start!126610 m!1370783))

(declare-fun m!1370785 () Bool)

(assert (=> start!126610 m!1370785))

(assert (=> b!1485597 m!1370755))

(assert (=> b!1485597 m!1370755))

(declare-fun m!1370787 () Bool)

(assert (=> b!1485597 m!1370787))

(declare-fun m!1370789 () Bool)

(assert (=> b!1485600 m!1370789))

(assert (=> b!1485609 m!1370751))

(assert (=> b!1485609 m!1370755))

(assert (=> b!1485609 m!1370747))

(assert (=> b!1485609 m!1370749))

(declare-fun m!1370791 () Bool)

(assert (=> b!1485598 m!1370791))

(assert (=> b!1485598 m!1370791))

(declare-fun m!1370793 () Bool)

(assert (=> b!1485598 m!1370793))

(declare-fun m!1370795 () Bool)

(assert (=> b!1485613 m!1370795))

(push 1)

(assert (not b!1485597))

(assert (not b!1485598))

(assert (not b!1485606))

(assert (not b!1485601))

(assert (not b!1485604))

(assert (not b!1485603))

(assert (not b!1485614))

(assert (not b!1485610))

(assert (not b!1485608))

(assert (not b!1485600))

(assert (not b!1485607))

(assert (not b!1485599))

(assert (not b!1485613))

(assert (not start!126610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!156359 () Bool)

(declare-fun lt!648172 () (_ BitVec 32))

(assert (=> d!156359 (and (bvsge lt!648172 #b00000000000000000000000000000000) (bvslt lt!648172 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156359 (= lt!648172 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156359 (validMask!0 mask!2687)))

(assert (=> d!156359 (= (nextIndex!0 index!646 x!665 mask!2687) lt!648172)))

(declare-fun bs!42752 () Bool)

(assert (= bs!42752 d!156359))

(declare-fun m!1370911 () Bool)

(assert (=> bs!42752 m!1370911))

(assert (=> bs!42752 m!1370783))

(assert (=> b!1485600 d!156359))

(declare-fun d!156361 () Bool)

(assert (=> d!156361 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126610 d!156361))

(declare-fun d!156365 () Bool)

(assert (=> d!156365 (= (array_inv!36961 a!2862) (bvsge (size!48567 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126610 d!156365))

(declare-fun e!832946 () SeekEntryResult!12279)

(declare-fun b!1485791 () Bool)

(assert (=> b!1485791 (= e!832946 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648115 lt!648113 mask!2687))))

(declare-fun b!1485792 () Bool)

(declare-fun e!832945 () SeekEntryResult!12279)

(assert (=> b!1485792 (= e!832945 Undefined!12279)))

(declare-fun b!1485793 () Bool)

(declare-fun c!137172 () Bool)

(declare-fun lt!648184 () (_ BitVec 64))

(assert (=> b!1485793 (= c!137172 (= lt!648184 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!832944 () SeekEntryResult!12279)

(assert (=> b!1485793 (= e!832944 e!832946)))

(declare-fun d!156367 () Bool)

(declare-fun lt!648183 () SeekEntryResult!12279)

(assert (=> d!156367 (and (or (is-Undefined!12279 lt!648183) (not (is-Found!12279 lt!648183)) (and (bvsge (index!51508 lt!648183) #b00000000000000000000000000000000) (bvslt (index!51508 lt!648183) (size!48567 lt!648113)))) (or (is-Undefined!12279 lt!648183) (is-Found!12279 lt!648183) (not (is-MissingVacant!12279 lt!648183)) (not (= (index!51510 lt!648183) intermediateAfterIndex!19)) (and (bvsge (index!51510 lt!648183) #b00000000000000000000000000000000) (bvslt (index!51510 lt!648183) (size!48567 lt!648113)))) (or (is-Undefined!12279 lt!648183) (ite (is-Found!12279 lt!648183) (= (select (arr!48016 lt!648113) (index!51508 lt!648183)) lt!648115) (and (is-MissingVacant!12279 lt!648183) (= (index!51510 lt!648183) intermediateAfterIndex!19) (= (select (arr!48016 lt!648113) (index!51510 lt!648183)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156367 (= lt!648183 e!832945)))

(declare-fun c!137173 () Bool)

(assert (=> d!156367 (= c!137173 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156367 (= lt!648184 (select (arr!48016 lt!648113) index!646))))

(assert (=> d!156367 (validMask!0 mask!2687)))

(assert (=> d!156367 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648115 lt!648113 mask!2687) lt!648183)))

(declare-fun b!1485794 () Bool)

(assert (=> b!1485794 (= e!832945 e!832944)))

(declare-fun c!137174 () Bool)

(assert (=> b!1485794 (= c!137174 (= lt!648184 lt!648115))))

(declare-fun b!1485795 () Bool)

(assert (=> b!1485795 (= e!832946 (MissingVacant!12279 intermediateAfterIndex!19))))

(declare-fun b!1485796 () Bool)

(assert (=> b!1485796 (= e!832944 (Found!12279 index!646))))

(assert (= (and d!156367 c!137173) b!1485792))

(assert (= (and d!156367 (not c!137173)) b!1485794))

(assert (= (and b!1485794 c!137174) b!1485796))

(assert (= (and b!1485794 (not c!137174)) b!1485793))

(assert (= (and b!1485793 c!137172) b!1485795))

(assert (= (and b!1485793 (not c!137172)) b!1485791))

(assert (=> b!1485791 m!1370789))

(assert (=> b!1485791 m!1370789))

(declare-fun m!1370921 () Bool)

(assert (=> b!1485791 m!1370921))

(declare-fun m!1370923 () Bool)

(assert (=> d!156367 m!1370923))

(declare-fun m!1370925 () Bool)

(assert (=> d!156367 m!1370925))

(declare-fun m!1370927 () Bool)

(assert (=> d!156367 m!1370927))

(assert (=> d!156367 m!1370783))

(assert (=> b!1485599 d!156367))

(declare-fun b!1485836 () Bool)

(declare-fun e!832970 () SeekEntryResult!12279)

(declare-fun lt!648197 () SeekEntryResult!12279)

(assert (=> b!1485836 (= e!832970 (Found!12279 (index!51509 lt!648197)))))

(declare-fun b!1485837 () Bool)

(declare-fun e!832968 () SeekEntryResult!12279)

(assert (=> b!1485837 (= e!832968 e!832970)))

(declare-fun lt!648199 () (_ BitVec 64))

(assert (=> b!1485837 (= lt!648199 (select (arr!48016 lt!648113) (index!51509 lt!648197)))))

(declare-fun c!137191 () Bool)

(assert (=> b!1485837 (= c!137191 (= lt!648199 lt!648115))))

(declare-fun b!1485838 () Bool)

(declare-fun e!832969 () SeekEntryResult!12279)

(assert (=> b!1485838 (= e!832969 (MissingZero!12279 (index!51509 lt!648197)))))

(declare-fun d!156369 () Bool)

(declare-fun lt!648198 () SeekEntryResult!12279)

(assert (=> d!156369 (and (or (is-Undefined!12279 lt!648198) (not (is-Found!12279 lt!648198)) (and (bvsge (index!51508 lt!648198) #b00000000000000000000000000000000) (bvslt (index!51508 lt!648198) (size!48567 lt!648113)))) (or (is-Undefined!12279 lt!648198) (is-Found!12279 lt!648198) (not (is-MissingZero!12279 lt!648198)) (and (bvsge (index!51507 lt!648198) #b00000000000000000000000000000000) (bvslt (index!51507 lt!648198) (size!48567 lt!648113)))) (or (is-Undefined!12279 lt!648198) (is-Found!12279 lt!648198) (is-MissingZero!12279 lt!648198) (not (is-MissingVacant!12279 lt!648198)) (and (bvsge (index!51510 lt!648198) #b00000000000000000000000000000000) (bvslt (index!51510 lt!648198) (size!48567 lt!648113)))) (or (is-Undefined!12279 lt!648198) (ite (is-Found!12279 lt!648198) (= (select (arr!48016 lt!648113) (index!51508 lt!648198)) lt!648115) (ite (is-MissingZero!12279 lt!648198) (= (select (arr!48016 lt!648113) (index!51507 lt!648198)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12279 lt!648198) (= (select (arr!48016 lt!648113) (index!51510 lt!648198)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156369 (= lt!648198 e!832968)))

(declare-fun c!137190 () Bool)

(assert (=> d!156369 (= c!137190 (and (is-Intermediate!12279 lt!648197) (undefined!13091 lt!648197)))))

(assert (=> d!156369 (= lt!648197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648115 mask!2687) lt!648115 lt!648113 mask!2687))))

(assert (=> d!156369 (validMask!0 mask!2687)))

(assert (=> d!156369 (= (seekEntryOrOpen!0 lt!648115 lt!648113 mask!2687) lt!648198)))

(declare-fun b!1485839 () Bool)

(assert (=> b!1485839 (= e!832968 Undefined!12279)))

(declare-fun b!1485840 () Bool)

(declare-fun c!137192 () Bool)

(assert (=> b!1485840 (= c!137192 (= lt!648199 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485840 (= e!832970 e!832969)))

(declare-fun b!1485841 () Bool)

(assert (=> b!1485841 (= e!832969 (seekKeyOrZeroReturnVacant!0 (x!133086 lt!648197) (index!51509 lt!648197) (index!51509 lt!648197) lt!648115 lt!648113 mask!2687))))

(assert (= (and d!156369 c!137190) b!1485839))

(assert (= (and d!156369 (not c!137190)) b!1485837))

(assert (= (and b!1485837 c!137191) b!1485836))

(assert (= (and b!1485837 (not c!137191)) b!1485840))

(assert (= (and b!1485840 c!137192) b!1485838))

(assert (= (and b!1485840 (not c!137192)) b!1485841))

(declare-fun m!1370933 () Bool)

(assert (=> b!1485837 m!1370933))

(declare-fun m!1370935 () Bool)

(assert (=> d!156369 m!1370935))

(assert (=> d!156369 m!1370783))

(declare-fun m!1370937 () Bool)

(assert (=> d!156369 m!1370937))

(declare-fun m!1370939 () Bool)

(assert (=> d!156369 m!1370939))

(assert (=> d!156369 m!1370775))

(assert (=> d!156369 m!1370775))

(assert (=> d!156369 m!1370777))

(declare-fun m!1370941 () Bool)

(assert (=> b!1485841 m!1370941))

(assert (=> b!1485599 d!156369))

(declare-fun d!156373 () Bool)

(assert (=> d!156373 (= (validKeyInArray!0 (select (arr!48016 a!2862) j!93)) (and (not (= (select (arr!48016 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48016 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1485610 d!156373))

(declare-fun d!156375 () Bool)

(assert (=> d!156375 (= (validKeyInArray!0 (select (arr!48016 a!2862) i!1006)) (and (not (= (select (arr!48016 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48016 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1485598 d!156375))

(declare-fun b!1485842 () Bool)

(declare-fun e!832973 () SeekEntryResult!12279)

(declare-fun lt!648200 () SeekEntryResult!12279)

(assert (=> b!1485842 (= e!832973 (Found!12279 (index!51509 lt!648200)))))

(declare-fun b!1485843 () Bool)

(declare-fun e!832971 () SeekEntryResult!12279)

(assert (=> b!1485843 (= e!832971 e!832973)))

(declare-fun lt!648202 () (_ BitVec 64))

(assert (=> b!1485843 (= lt!648202 (select (arr!48016 a!2862) (index!51509 lt!648200)))))

(declare-fun c!137194 () Bool)

(assert (=> b!1485843 (= c!137194 (= lt!648202 (select (arr!48016 a!2862) j!93)))))

(declare-fun b!1485844 () Bool)

(declare-fun e!832972 () SeekEntryResult!12279)

(assert (=> b!1485844 (= e!832972 (MissingZero!12279 (index!51509 lt!648200)))))

(declare-fun d!156377 () Bool)

(declare-fun lt!648201 () SeekEntryResult!12279)

(assert (=> d!156377 (and (or (is-Undefined!12279 lt!648201) (not (is-Found!12279 lt!648201)) (and (bvsge (index!51508 lt!648201) #b00000000000000000000000000000000) (bvslt (index!51508 lt!648201) (size!48567 a!2862)))) (or (is-Undefined!12279 lt!648201) (is-Found!12279 lt!648201) (not (is-MissingZero!12279 lt!648201)) (and (bvsge (index!51507 lt!648201) #b00000000000000000000000000000000) (bvslt (index!51507 lt!648201) (size!48567 a!2862)))) (or (is-Undefined!12279 lt!648201) (is-Found!12279 lt!648201) (is-MissingZero!12279 lt!648201) (not (is-MissingVacant!12279 lt!648201)) (and (bvsge (index!51510 lt!648201) #b00000000000000000000000000000000) (bvslt (index!51510 lt!648201) (size!48567 a!2862)))) (or (is-Undefined!12279 lt!648201) (ite (is-Found!12279 lt!648201) (= (select (arr!48016 a!2862) (index!51508 lt!648201)) (select (arr!48016 a!2862) j!93)) (ite (is-MissingZero!12279 lt!648201) (= (select (arr!48016 a!2862) (index!51507 lt!648201)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12279 lt!648201) (= (select (arr!48016 a!2862) (index!51510 lt!648201)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156377 (= lt!648201 e!832971)))

(declare-fun c!137193 () Bool)

(assert (=> d!156377 (= c!137193 (and (is-Intermediate!12279 lt!648200) (undefined!13091 lt!648200)))))

(assert (=> d!156377 (= lt!648200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) (select (arr!48016 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156377 (validMask!0 mask!2687)))

(assert (=> d!156377 (= (seekEntryOrOpen!0 (select (arr!48016 a!2862) j!93) a!2862 mask!2687) lt!648201)))

(declare-fun b!1485845 () Bool)

(assert (=> b!1485845 (= e!832971 Undefined!12279)))

(declare-fun b!1485846 () Bool)

(declare-fun c!137195 () Bool)

(assert (=> b!1485846 (= c!137195 (= lt!648202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485846 (= e!832973 e!832972)))

(declare-fun b!1485847 () Bool)

(assert (=> b!1485847 (= e!832972 (seekKeyOrZeroReturnVacant!0 (x!133086 lt!648200) (index!51509 lt!648200) (index!51509 lt!648200) (select (arr!48016 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!156377 c!137193) b!1485845))

(assert (= (and d!156377 (not c!137193)) b!1485843))

(assert (= (and b!1485843 c!137194) b!1485842))

(assert (= (and b!1485843 (not c!137194)) b!1485846))

(assert (= (and b!1485846 c!137195) b!1485844))

(assert (= (and b!1485846 (not c!137195)) b!1485847))

(declare-fun m!1370943 () Bool)

(assert (=> b!1485843 m!1370943))

(declare-fun m!1370945 () Bool)

(assert (=> d!156377 m!1370945))

(assert (=> d!156377 m!1370783))

(declare-fun m!1370947 () Bool)

(assert (=> d!156377 m!1370947))

(declare-fun m!1370949 () Bool)

(assert (=> d!156377 m!1370949))

(assert (=> d!156377 m!1370755))

(assert (=> d!156377 m!1370767))

(assert (=> d!156377 m!1370767))

(assert (=> d!156377 m!1370755))

(assert (=> d!156377 m!1370769))

(assert (=> b!1485847 m!1370755))

(declare-fun m!1370951 () Bool)

(assert (=> b!1485847 m!1370951))

(assert (=> b!1485597 d!156377))

(declare-fun b!1485878 () Bool)

(declare-fun lt!648216 () SeekEntryResult!12279)

(assert (=> b!1485878 (and (bvsge (index!51509 lt!648216) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648216) (size!48567 lt!648113)))))

(declare-fun e!832993 () Bool)

(assert (=> b!1485878 (= e!832993 (= (select (arr!48016 lt!648113) (index!51509 lt!648216)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1485880 () Bool)

(declare-fun e!832995 () SeekEntryResult!12279)

(assert (=> b!1485880 (= e!832995 (Intermediate!12279 false index!646 x!665))))

(declare-fun b!1485881 () Bool)

(declare-fun e!832997 () SeekEntryResult!12279)

(assert (=> b!1485881 (= e!832997 (Intermediate!12279 true index!646 x!665))))

(declare-fun b!1485882 () Bool)

(assert (=> b!1485882 (= e!832997 e!832995)))

(declare-fun c!137207 () Bool)

(declare-fun lt!648217 () (_ BitVec 64))

(assert (=> b!1485882 (= c!137207 (or (= lt!648217 lt!648115) (= (bvadd lt!648217 lt!648217) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485883 () Bool)

(assert (=> b!1485883 (and (bvsge (index!51509 lt!648216) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648216) (size!48567 lt!648113)))))

(declare-fun res!1010518 () Bool)

(assert (=> b!1485883 (= res!1010518 (= (select (arr!48016 lt!648113) (index!51509 lt!648216)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485883 (=> res!1010518 e!832993)))

(declare-fun b!1485884 () Bool)

(declare-fun e!832994 () Bool)

(assert (=> b!1485884 (= e!832994 (bvsge (x!133086 lt!648216) #b01111111111111111111111111111110))))

(declare-fun b!1485879 () Bool)

(declare-fun e!832996 () Bool)

(assert (=> b!1485879 (= e!832994 e!832996)))

(declare-fun res!1010519 () Bool)

(assert (=> b!1485879 (= res!1010519 (and (is-Intermediate!12279 lt!648216) (not (undefined!13091 lt!648216)) (bvslt (x!133086 lt!648216) #b01111111111111111111111111111110) (bvsge (x!133086 lt!648216) #b00000000000000000000000000000000) (bvsge (x!133086 lt!648216) x!665)))))

(assert (=> b!1485879 (=> (not res!1010519) (not e!832996))))

(declare-fun d!156379 () Bool)

(assert (=> d!156379 e!832994))

(declare-fun c!137206 () Bool)

(assert (=> d!156379 (= c!137206 (and (is-Intermediate!12279 lt!648216) (undefined!13091 lt!648216)))))

(assert (=> d!156379 (= lt!648216 e!832997)))

(declare-fun c!137205 () Bool)

(assert (=> d!156379 (= c!137205 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156379 (= lt!648217 (select (arr!48016 lt!648113) index!646))))

(assert (=> d!156379 (validMask!0 mask!2687)))

(assert (=> d!156379 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648115 lt!648113 mask!2687) lt!648216)))

(declare-fun b!1485885 () Bool)

(assert (=> b!1485885 (and (bvsge (index!51509 lt!648216) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648216) (size!48567 lt!648113)))))

(declare-fun res!1010520 () Bool)

(assert (=> b!1485885 (= res!1010520 (= (select (arr!48016 lt!648113) (index!51509 lt!648216)) lt!648115))))

(assert (=> b!1485885 (=> res!1010520 e!832993)))

(assert (=> b!1485885 (= e!832996 e!832993)))

(declare-fun b!1485886 () Bool)

(assert (=> b!1485886 (= e!832995 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648115 lt!648113 mask!2687))))

(assert (= (and d!156379 c!137205) b!1485881))

(assert (= (and d!156379 (not c!137205)) b!1485882))

(assert (= (and b!1485882 c!137207) b!1485880))

(assert (= (and b!1485882 (not c!137207)) b!1485886))

(assert (= (and d!156379 c!137206) b!1485884))

(assert (= (and d!156379 (not c!137206)) b!1485879))

(assert (= (and b!1485879 res!1010519) b!1485885))

(assert (= (and b!1485885 (not res!1010520)) b!1485883))

(assert (= (and b!1485883 (not res!1010518)) b!1485878))

(assert (=> b!1485886 m!1370789))

(assert (=> b!1485886 m!1370789))

(declare-fun m!1370965 () Bool)

(assert (=> b!1485886 m!1370965))

(declare-fun m!1370967 () Bool)

(assert (=> b!1485883 m!1370967))

(assert (=> b!1485885 m!1370967))

(assert (=> b!1485878 m!1370967))

(assert (=> d!156379 m!1370927))

(assert (=> d!156379 m!1370783))

(assert (=> b!1485608 d!156379))

(declare-fun b!1485926 () Bool)

(declare-fun e!833024 () Bool)

(declare-fun e!833022 () Bool)

(assert (=> b!1485926 (= e!833024 e!833022)))

(declare-fun c!137220 () Bool)

(assert (=> b!1485926 (= c!137220 (validKeyInArray!0 (select (arr!48016 a!2862) j!93)))))

(declare-fun b!1485927 () Bool)

(declare-fun call!67879 () Bool)

(assert (=> b!1485927 (= e!833022 call!67879)))

(declare-fun d!156387 () Bool)

(declare-fun res!1010538 () Bool)

(assert (=> d!156387 (=> res!1010538 e!833024)))

(assert (=> d!156387 (= res!1010538 (bvsge j!93 (size!48567 a!2862)))))

(assert (=> d!156387 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!833024)))

(declare-fun bm!67876 () Bool)

(assert (=> bm!67876 (= call!67879 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1485928 () Bool)

(declare-fun e!833023 () Bool)

(assert (=> b!1485928 (= e!833022 e!833023)))

(declare-fun lt!648239 () (_ BitVec 64))

(assert (=> b!1485928 (= lt!648239 (select (arr!48016 a!2862) j!93))))

(declare-fun lt!648240 () Unit!49846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99489 (_ BitVec 64) (_ BitVec 32)) Unit!49846)

(assert (=> b!1485928 (= lt!648240 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648239 j!93))))

(declare-fun arrayContainsKey!0 (array!99489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1485928 (arrayContainsKey!0 a!2862 lt!648239 #b00000000000000000000000000000000)))

(declare-fun lt!648241 () Unit!49846)

(assert (=> b!1485928 (= lt!648241 lt!648240)))

(declare-fun res!1010537 () Bool)

(assert (=> b!1485928 (= res!1010537 (= (seekEntryOrOpen!0 (select (arr!48016 a!2862) j!93) a!2862 mask!2687) (Found!12279 j!93)))))

(assert (=> b!1485928 (=> (not res!1010537) (not e!833023))))

(declare-fun b!1485929 () Bool)

(assert (=> b!1485929 (= e!833023 call!67879)))

(assert (= (and d!156387 (not res!1010538)) b!1485926))

(assert (= (and b!1485926 c!137220) b!1485928))

(assert (= (and b!1485926 (not c!137220)) b!1485927))

(assert (= (and b!1485928 res!1010537) b!1485929))

(assert (= (or b!1485929 b!1485927) bm!67876))

(assert (=> b!1485926 m!1370755))

(assert (=> b!1485926 m!1370755))

(assert (=> b!1485926 m!1370761))

(declare-fun m!1370983 () Bool)

(assert (=> bm!67876 m!1370983))

(assert (=> b!1485928 m!1370755))

(declare-fun m!1370985 () Bool)

(assert (=> b!1485928 m!1370985))

(declare-fun m!1370987 () Bool)

(assert (=> b!1485928 m!1370987))

(assert (=> b!1485928 m!1370755))

(assert (=> b!1485928 m!1370787))

(assert (=> b!1485607 d!156387))

(declare-fun d!156397 () Bool)

(assert (=> d!156397 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!648249 () Unit!49846)

(declare-fun choose!38 (array!99489 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49846)

(assert (=> d!156397 (= lt!648249 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156397 (validMask!0 mask!2687)))

(assert (=> d!156397 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!648249)))

(declare-fun bs!42754 () Bool)

(assert (= bs!42754 d!156397))

(assert (=> bs!42754 m!1370753))

(declare-fun m!1370997 () Bool)

(assert (=> bs!42754 m!1370997))

(assert (=> bs!42754 m!1370783))

(assert (=> b!1485607 d!156397))

(declare-fun b!1485939 () Bool)

(declare-fun lt!648252 () SeekEntryResult!12279)

(assert (=> b!1485939 (and (bvsge (index!51509 lt!648252) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648252) (size!48567 a!2862)))))

(declare-fun e!833030 () Bool)

(assert (=> b!1485939 (= e!833030 (= (select (arr!48016 a!2862) (index!51509 lt!648252)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1485941 () Bool)

(declare-fun e!833032 () SeekEntryResult!12279)

(assert (=> b!1485941 (= e!833032 (Intermediate!12279 false index!646 x!665))))

(declare-fun b!1485942 () Bool)

(declare-fun e!833034 () SeekEntryResult!12279)

(assert (=> b!1485942 (= e!833034 (Intermediate!12279 true index!646 x!665))))

(declare-fun b!1485943 () Bool)

(assert (=> b!1485943 (= e!833034 e!833032)))

(declare-fun c!137226 () Bool)

(declare-fun lt!648253 () (_ BitVec 64))

(assert (=> b!1485943 (= c!137226 (or (= lt!648253 (select (arr!48016 a!2862) j!93)) (= (bvadd lt!648253 lt!648253) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485944 () Bool)

(assert (=> b!1485944 (and (bvsge (index!51509 lt!648252) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648252) (size!48567 a!2862)))))

(declare-fun res!1010542 () Bool)

(assert (=> b!1485944 (= res!1010542 (= (select (arr!48016 a!2862) (index!51509 lt!648252)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485944 (=> res!1010542 e!833030)))

(declare-fun b!1485945 () Bool)

(declare-fun e!833031 () Bool)

(assert (=> b!1485945 (= e!833031 (bvsge (x!133086 lt!648252) #b01111111111111111111111111111110))))

(declare-fun b!1485940 () Bool)

(declare-fun e!833033 () Bool)

(assert (=> b!1485940 (= e!833031 e!833033)))

(declare-fun res!1010543 () Bool)

(assert (=> b!1485940 (= res!1010543 (and (is-Intermediate!12279 lt!648252) (not (undefined!13091 lt!648252)) (bvslt (x!133086 lt!648252) #b01111111111111111111111111111110) (bvsge (x!133086 lt!648252) #b00000000000000000000000000000000) (bvsge (x!133086 lt!648252) x!665)))))

(assert (=> b!1485940 (=> (not res!1010543) (not e!833033))))

(declare-fun d!156403 () Bool)

(assert (=> d!156403 e!833031))

(declare-fun c!137225 () Bool)

(assert (=> d!156403 (= c!137225 (and (is-Intermediate!12279 lt!648252) (undefined!13091 lt!648252)))))

(assert (=> d!156403 (= lt!648252 e!833034)))

(declare-fun c!137224 () Bool)

(assert (=> d!156403 (= c!137224 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156403 (= lt!648253 (select (arr!48016 a!2862) index!646))))

(assert (=> d!156403 (validMask!0 mask!2687)))

(assert (=> d!156403 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48016 a!2862) j!93) a!2862 mask!2687) lt!648252)))

(declare-fun b!1485946 () Bool)

(assert (=> b!1485946 (and (bvsge (index!51509 lt!648252) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648252) (size!48567 a!2862)))))

(declare-fun res!1010544 () Bool)

(assert (=> b!1485946 (= res!1010544 (= (select (arr!48016 a!2862) (index!51509 lt!648252)) (select (arr!48016 a!2862) j!93)))))

(assert (=> b!1485946 (=> res!1010544 e!833030)))

(assert (=> b!1485946 (= e!833033 e!833030)))

(declare-fun b!1485947 () Bool)

(assert (=> b!1485947 (= e!833032 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48016 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!156403 c!137224) b!1485942))

(assert (= (and d!156403 (not c!137224)) b!1485943))

(assert (= (and b!1485943 c!137226) b!1485941))

(assert (= (and b!1485943 (not c!137226)) b!1485947))

(assert (= (and d!156403 c!137225) b!1485945))

(assert (= (and d!156403 (not c!137225)) b!1485940))

(assert (= (and b!1485940 res!1010543) b!1485946))

(assert (= (and b!1485946 (not res!1010544)) b!1485944))

(assert (= (and b!1485944 (not res!1010542)) b!1485939))

(assert (=> b!1485947 m!1370789))

(assert (=> b!1485947 m!1370789))

(assert (=> b!1485947 m!1370755))

(declare-fun m!1371001 () Bool)

(assert (=> b!1485947 m!1371001))

(declare-fun m!1371003 () Bool)

(assert (=> b!1485944 m!1371003))

(assert (=> b!1485946 m!1371003))

(assert (=> b!1485939 m!1371003))

(assert (=> d!156403 m!1370751))

(assert (=> d!156403 m!1370783))

(assert (=> b!1485606 d!156403))

(declare-fun b!1485948 () Bool)

(declare-fun lt!648257 () SeekEntryResult!12279)

(assert (=> b!1485948 (and (bvsge (index!51509 lt!648257) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648257) (size!48567 a!2862)))))

(declare-fun e!833035 () Bool)

(assert (=> b!1485948 (= e!833035 (= (select (arr!48016 a!2862) (index!51509 lt!648257)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1485950 () Bool)

(declare-fun e!833037 () SeekEntryResult!12279)

(assert (=> b!1485950 (= e!833037 (Intermediate!12279 false (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun e!833039 () SeekEntryResult!12279)

(declare-fun b!1485951 () Bool)

(assert (=> b!1485951 (= e!833039 (Intermediate!12279 true (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1485952 () Bool)

(assert (=> b!1485952 (= e!833039 e!833037)))

(declare-fun c!137229 () Bool)

(declare-fun lt!648258 () (_ BitVec 64))

(assert (=> b!1485952 (= c!137229 (or (= lt!648258 (select (arr!48016 a!2862) j!93)) (= (bvadd lt!648258 lt!648258) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485953 () Bool)

(assert (=> b!1485953 (and (bvsge (index!51509 lt!648257) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648257) (size!48567 a!2862)))))

(declare-fun res!1010545 () Bool)

(assert (=> b!1485953 (= res!1010545 (= (select (arr!48016 a!2862) (index!51509 lt!648257)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485953 (=> res!1010545 e!833035)))

(declare-fun b!1485954 () Bool)

(declare-fun e!833036 () Bool)

(assert (=> b!1485954 (= e!833036 (bvsge (x!133086 lt!648257) #b01111111111111111111111111111110))))

(declare-fun b!1485949 () Bool)

(declare-fun e!833038 () Bool)

(assert (=> b!1485949 (= e!833036 e!833038)))

(declare-fun res!1010546 () Bool)

(assert (=> b!1485949 (= res!1010546 (and (is-Intermediate!12279 lt!648257) (not (undefined!13091 lt!648257)) (bvslt (x!133086 lt!648257) #b01111111111111111111111111111110) (bvsge (x!133086 lt!648257) #b00000000000000000000000000000000) (bvsge (x!133086 lt!648257) #b00000000000000000000000000000000)))))

(assert (=> b!1485949 (=> (not res!1010546) (not e!833038))))

(declare-fun d!156407 () Bool)

(assert (=> d!156407 e!833036))

(declare-fun c!137228 () Bool)

(assert (=> d!156407 (= c!137228 (and (is-Intermediate!12279 lt!648257) (undefined!13091 lt!648257)))))

(assert (=> d!156407 (= lt!648257 e!833039)))

(declare-fun c!137227 () Bool)

(assert (=> d!156407 (= c!137227 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156407 (= lt!648258 (select (arr!48016 a!2862) (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687)))))

(assert (=> d!156407 (validMask!0 mask!2687)))

(assert (=> d!156407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) (select (arr!48016 a!2862) j!93) a!2862 mask!2687) lt!648257)))

(declare-fun b!1485955 () Bool)

(assert (=> b!1485955 (and (bvsge (index!51509 lt!648257) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648257) (size!48567 a!2862)))))

(declare-fun res!1010547 () Bool)

(assert (=> b!1485955 (= res!1010547 (= (select (arr!48016 a!2862) (index!51509 lt!648257)) (select (arr!48016 a!2862) j!93)))))

(assert (=> b!1485955 (=> res!1010547 e!833035)))

(assert (=> b!1485955 (= e!833038 e!833035)))

(declare-fun b!1485956 () Bool)

(assert (=> b!1485956 (= e!833037 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48016 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!156407 c!137227) b!1485951))

(assert (= (and d!156407 (not c!137227)) b!1485952))

(assert (= (and b!1485952 c!137229) b!1485950))

(assert (= (and b!1485952 (not c!137229)) b!1485956))

(assert (= (and d!156407 c!137228) b!1485954))

(assert (= (and d!156407 (not c!137228)) b!1485949))

(assert (= (and b!1485949 res!1010546) b!1485955))

(assert (= (and b!1485955 (not res!1010547)) b!1485953))

(assert (= (and b!1485953 (not res!1010545)) b!1485948))

(assert (=> b!1485956 m!1370767))

(declare-fun m!1371007 () Bool)

(assert (=> b!1485956 m!1371007))

(assert (=> b!1485956 m!1371007))

(assert (=> b!1485956 m!1370755))

(declare-fun m!1371009 () Bool)

(assert (=> b!1485956 m!1371009))

(declare-fun m!1371011 () Bool)

(assert (=> b!1485953 m!1371011))

(assert (=> b!1485955 m!1371011))

(assert (=> b!1485948 m!1371011))

(assert (=> d!156407 m!1370767))

(declare-fun m!1371013 () Bool)

(assert (=> d!156407 m!1371013))

(assert (=> d!156407 m!1370783))

(assert (=> b!1485604 d!156407))

(declare-fun d!156413 () Bool)

(declare-fun lt!648268 () (_ BitVec 32))

(declare-fun lt!648267 () (_ BitVec 32))

(assert (=> d!156413 (= lt!648268 (bvmul (bvxor lt!648267 (bvlshr lt!648267 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156413 (= lt!648267 ((_ extract 31 0) (bvand (bvxor (select (arr!48016 a!2862) j!93) (bvlshr (select (arr!48016 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156413 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1010548 (let ((h!36071 ((_ extract 31 0) (bvand (bvxor (select (arr!48016 a!2862) j!93) (bvlshr (select (arr!48016 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133098 (bvmul (bvxor h!36071 (bvlshr h!36071 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133098 (bvlshr x!133098 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1010548 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1010548 #b00000000000000000000000000000000))))))

(assert (=> d!156413 (= (toIndex!0 (select (arr!48016 a!2862) j!93) mask!2687) (bvand (bvxor lt!648268 (bvlshr lt!648268 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1485604 d!156413))

(assert (=> b!1485603 d!156369))

(assert (=> b!1485603 d!156367))

(declare-fun bm!67885 () Bool)

(declare-fun call!67888 () Bool)

(declare-fun c!137250 () Bool)

(assert (=> bm!67885 (= call!67888 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137250 (Cons!34693 (select (arr!48016 a!2862) #b00000000000000000000000000000000) Nil!34694) Nil!34694)))))

(declare-fun b!1486030 () Bool)

(declare-fun e!833091 () Bool)

(assert (=> b!1486030 (= e!833091 call!67888)))

(declare-fun d!156421 () Bool)

(declare-fun res!1010583 () Bool)

(declare-fun e!833090 () Bool)

(assert (=> d!156421 (=> res!1010583 e!833090)))

(assert (=> d!156421 (= res!1010583 (bvsge #b00000000000000000000000000000000 (size!48567 a!2862)))))

(assert (=> d!156421 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34694) e!833090)))

(declare-fun b!1486031 () Bool)

(assert (=> b!1486031 (= e!833091 call!67888)))

(declare-fun b!1486032 () Bool)

(declare-fun e!833093 () Bool)

(assert (=> b!1486032 (= e!833093 e!833091)))

(assert (=> b!1486032 (= c!137250 (validKeyInArray!0 (select (arr!48016 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1486033 () Bool)

(declare-fun e!833092 () Bool)

(declare-fun contains!9929 (List!34697 (_ BitVec 64)) Bool)

(assert (=> b!1486033 (= e!833092 (contains!9929 Nil!34694 (select (arr!48016 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1486034 () Bool)

(assert (=> b!1486034 (= e!833090 e!833093)))

(declare-fun res!1010585 () Bool)

(assert (=> b!1486034 (=> (not res!1010585) (not e!833093))))

(assert (=> b!1486034 (= res!1010585 (not e!833092))))

(declare-fun res!1010584 () Bool)

(assert (=> b!1486034 (=> (not res!1010584) (not e!833092))))

(assert (=> b!1486034 (= res!1010584 (validKeyInArray!0 (select (arr!48016 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156421 (not res!1010583)) b!1486034))

(assert (= (and b!1486034 res!1010584) b!1486033))

(assert (= (and b!1486034 res!1010585) b!1486032))

(assert (= (and b!1486032 c!137250) b!1486030))

(assert (= (and b!1486032 (not c!137250)) b!1486031))

(assert (= (or b!1486030 b!1486031) bm!67885))

(declare-fun m!1371057 () Bool)

(assert (=> bm!67885 m!1371057))

(declare-fun m!1371059 () Bool)

(assert (=> bm!67885 m!1371059))

(assert (=> b!1486032 m!1371057))

(assert (=> b!1486032 m!1371057))

(declare-fun m!1371061 () Bool)

(assert (=> b!1486032 m!1371061))

(assert (=> b!1486033 m!1371057))

(assert (=> b!1486033 m!1371057))

(declare-fun m!1371063 () Bool)

(assert (=> b!1486033 m!1371063))

(assert (=> b!1486034 m!1371057))

(assert (=> b!1486034 m!1371057))

(assert (=> b!1486034 m!1371061))

(assert (=> b!1485614 d!156421))

(declare-fun b!1486035 () Bool)

(declare-fun e!833096 () Bool)

(declare-fun e!833094 () Bool)

(assert (=> b!1486035 (= e!833096 e!833094)))

(declare-fun c!137251 () Bool)

(assert (=> b!1486035 (= c!137251 (validKeyInArray!0 (select (arr!48016 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1486036 () Bool)

(declare-fun call!67889 () Bool)

(assert (=> b!1486036 (= e!833094 call!67889)))

(declare-fun d!156433 () Bool)

(declare-fun res!1010587 () Bool)

(assert (=> d!156433 (=> res!1010587 e!833096)))

(assert (=> d!156433 (= res!1010587 (bvsge #b00000000000000000000000000000000 (size!48567 a!2862)))))

(assert (=> d!156433 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!833096)))

(declare-fun bm!67886 () Bool)

(assert (=> bm!67886 (= call!67889 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1486037 () Bool)

(declare-fun e!833095 () Bool)

(assert (=> b!1486037 (= e!833094 e!833095)))

(declare-fun lt!648277 () (_ BitVec 64))

(assert (=> b!1486037 (= lt!648277 (select (arr!48016 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!648278 () Unit!49846)

(assert (=> b!1486037 (= lt!648278 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648277 #b00000000000000000000000000000000))))

(assert (=> b!1486037 (arrayContainsKey!0 a!2862 lt!648277 #b00000000000000000000000000000000)))

(declare-fun lt!648279 () Unit!49846)

(assert (=> b!1486037 (= lt!648279 lt!648278)))

(declare-fun res!1010586 () Bool)

(assert (=> b!1486037 (= res!1010586 (= (seekEntryOrOpen!0 (select (arr!48016 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12279 #b00000000000000000000000000000000)))))

(assert (=> b!1486037 (=> (not res!1010586) (not e!833095))))

(declare-fun b!1486038 () Bool)

(assert (=> b!1486038 (= e!833095 call!67889)))

(assert (= (and d!156433 (not res!1010587)) b!1486035))

(assert (= (and b!1486035 c!137251) b!1486037))

(assert (= (and b!1486035 (not c!137251)) b!1486036))

(assert (= (and b!1486037 res!1010586) b!1486038))

(assert (= (or b!1486038 b!1486036) bm!67886))

(assert (=> b!1486035 m!1371057))

(assert (=> b!1486035 m!1371057))

(assert (=> b!1486035 m!1371061))

(declare-fun m!1371065 () Bool)

(assert (=> bm!67886 m!1371065))

(assert (=> b!1486037 m!1371057))

(declare-fun m!1371067 () Bool)

(assert (=> b!1486037 m!1371067))

(declare-fun m!1371069 () Bool)

(assert (=> b!1486037 m!1371069))

(assert (=> b!1486037 m!1371057))

(declare-fun m!1371071 () Bool)

(assert (=> b!1486037 m!1371071))

(assert (=> b!1485613 d!156433))

(declare-fun b!1486039 () Bool)

(declare-fun lt!648280 () SeekEntryResult!12279)

(assert (=> b!1486039 (and (bvsge (index!51509 lt!648280) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648280) (size!48567 lt!648113)))))

(declare-fun e!833097 () Bool)

(assert (=> b!1486039 (= e!833097 (= (select (arr!48016 lt!648113) (index!51509 lt!648280)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1486041 () Bool)

(declare-fun e!833099 () SeekEntryResult!12279)

(assert (=> b!1486041 (= e!833099 (Intermediate!12279 false (toIndex!0 lt!648115 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1486042 () Bool)

(declare-fun e!833101 () SeekEntryResult!12279)

(assert (=> b!1486042 (= e!833101 (Intermediate!12279 true (toIndex!0 lt!648115 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1486043 () Bool)

(assert (=> b!1486043 (= e!833101 e!833099)))

(declare-fun c!137254 () Bool)

(declare-fun lt!648281 () (_ BitVec 64))

(assert (=> b!1486043 (= c!137254 (or (= lt!648281 lt!648115) (= (bvadd lt!648281 lt!648281) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486044 () Bool)

(assert (=> b!1486044 (and (bvsge (index!51509 lt!648280) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648280) (size!48567 lt!648113)))))

(declare-fun res!1010588 () Bool)

(assert (=> b!1486044 (= res!1010588 (= (select (arr!48016 lt!648113) (index!51509 lt!648280)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486044 (=> res!1010588 e!833097)))

(declare-fun b!1486045 () Bool)

(declare-fun e!833098 () Bool)

(assert (=> b!1486045 (= e!833098 (bvsge (x!133086 lt!648280) #b01111111111111111111111111111110))))

(declare-fun b!1486040 () Bool)

(declare-fun e!833100 () Bool)

(assert (=> b!1486040 (= e!833098 e!833100)))

(declare-fun res!1010589 () Bool)

(assert (=> b!1486040 (= res!1010589 (and (is-Intermediate!12279 lt!648280) (not (undefined!13091 lt!648280)) (bvslt (x!133086 lt!648280) #b01111111111111111111111111111110) (bvsge (x!133086 lt!648280) #b00000000000000000000000000000000) (bvsge (x!133086 lt!648280) #b00000000000000000000000000000000)))))

(assert (=> b!1486040 (=> (not res!1010589) (not e!833100))))

(declare-fun d!156435 () Bool)

(assert (=> d!156435 e!833098))

(declare-fun c!137253 () Bool)

(assert (=> d!156435 (= c!137253 (and (is-Intermediate!12279 lt!648280) (undefined!13091 lt!648280)))))

(assert (=> d!156435 (= lt!648280 e!833101)))

(declare-fun c!137252 () Bool)

(assert (=> d!156435 (= c!137252 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156435 (= lt!648281 (select (arr!48016 lt!648113) (toIndex!0 lt!648115 mask!2687)))))

(assert (=> d!156435 (validMask!0 mask!2687)))

(assert (=> d!156435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648115 mask!2687) lt!648115 lt!648113 mask!2687) lt!648280)))

(declare-fun b!1486046 () Bool)

(assert (=> b!1486046 (and (bvsge (index!51509 lt!648280) #b00000000000000000000000000000000) (bvslt (index!51509 lt!648280) (size!48567 lt!648113)))))

(declare-fun res!1010590 () Bool)

(assert (=> b!1486046 (= res!1010590 (= (select (arr!48016 lt!648113) (index!51509 lt!648280)) lt!648115))))

(assert (=> b!1486046 (=> res!1010590 e!833097)))

(assert (=> b!1486046 (= e!833100 e!833097)))

(declare-fun b!1486047 () Bool)

(assert (=> b!1486047 (= e!833099 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648115 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648115 lt!648113 mask!2687))))

(assert (= (and d!156435 c!137252) b!1486042))

(assert (= (and d!156435 (not c!137252)) b!1486043))

(assert (= (and b!1486043 c!137254) b!1486041))

(assert (= (and b!1486043 (not c!137254)) b!1486047))

(assert (= (and d!156435 c!137253) b!1486045))

(assert (= (and d!156435 (not c!137253)) b!1486040))

(assert (= (and b!1486040 res!1010589) b!1486046))

(assert (= (and b!1486046 (not res!1010590)) b!1486044))

(assert (= (and b!1486044 (not res!1010588)) b!1486039))

(assert (=> b!1486047 m!1370775))

(declare-fun m!1371073 () Bool)

(assert (=> b!1486047 m!1371073))

(assert (=> b!1486047 m!1371073))

(declare-fun m!1371075 () Bool)

(assert (=> b!1486047 m!1371075))

(declare-fun m!1371077 () Bool)

(assert (=> b!1486044 m!1371077))

(assert (=> b!1486046 m!1371077))

(assert (=> b!1486039 m!1371077))

(assert (=> d!156435 m!1370775))

(declare-fun m!1371079 () Bool)

(assert (=> d!156435 m!1371079))

(assert (=> d!156435 m!1370783))

(assert (=> b!1485601 d!156435))

(declare-fun d!156437 () Bool)

(declare-fun lt!648289 () (_ BitVec 32))

(declare-fun lt!648288 () (_ BitVec 32))

(assert (=> d!156437 (= lt!648289 (bvmul (bvxor lt!648288 (bvlshr lt!648288 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156437 (= lt!648288 ((_ extract 31 0) (bvand (bvxor lt!648115 (bvlshr lt!648115 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156437 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1010548 (let ((h!36071 ((_ extract 31 0) (bvand (bvxor lt!648115 (bvlshr lt!648115 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133098 (bvmul (bvxor h!36071 (bvlshr h!36071 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133098 (bvlshr x!133098 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1010548 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1010548 #b00000000000000000000000000000000))))))

(assert (=> d!156437 (= (toIndex!0 lt!648115 mask!2687) (bvand (bvxor lt!648289 (bvlshr lt!648289 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1485601 d!156437))

(push 1)

(assert (not b!1485886))

(assert (not d!156369))

(assert (not b!1486034))

(assert (not b!1485791))

(assert (not b!1486035))

(assert (not d!156403))

(assert (not d!156407))

(assert (not d!156377))

(assert (not d!156435))

(assert (not bm!67885))

(assert (not b!1486047))

(assert (not b!1486032))

(assert (not d!156367))

(assert (not bm!67886))

(assert (not b!1485926))

(assert (not b!1485956))

(assert (not b!1485947))

(assert (not b!1485847))

(assert (not d!156397))

(assert (not b!1486033))

(assert (not d!156379))

(assert (not b!1486037))

(assert (not d!156359))

(assert (not b!1485841))

(assert (not bm!67876))

(assert (not b!1485928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

