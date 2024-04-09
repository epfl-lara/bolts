; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126868 () Bool)

(assert start!126868)

(declare-fun b!1488775 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!649282 () (_ BitVec 64))

(declare-fun lt!649284 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12309 0))(
  ( (MissingZero!12309 (index!51627 (_ BitVec 32))) (Found!12309 (index!51628 (_ BitVec 32))) (Intermediate!12309 (undefined!13121 Bool) (index!51629 (_ BitVec 32)) (x!133232 (_ BitVec 32))) (Undefined!12309) (MissingVacant!12309 (index!51630 (_ BitVec 32))) )
))
(declare-fun lt!649286 () SeekEntryResult!12309)

(declare-datatypes ((array!99558 0))(
  ( (array!99559 (arr!48046 (Array (_ BitVec 32) (_ BitVec 64))) (size!48597 (_ BitVec 32))) )
))
(declare-fun lt!649285 () array!99558)

(declare-fun e!834503 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99558 (_ BitVec 32)) SeekEntryResult!12309)

(assert (=> b!1488775 (= e!834503 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649284 intermediateAfterIndex!19 lt!649282 lt!649285 mask!2687) lt!649286)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!834500 () Bool)

(declare-fun b!1488776 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99558)

(assert (=> b!1488776 (= e!834500 (and (or (= (select (arr!48046 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48046 a!2862) intermediateBeforeIndex!19) (select (arr!48046 a!2862) j!93))) (let ((bdg!54671 (select (store (arr!48046 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48046 a!2862) index!646) bdg!54671) (= (select (arr!48046 a!2862) index!646) (select (arr!48046 a!2862) j!93))) (= (select (arr!48046 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54671 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!1012439 () Bool)

(declare-fun e!834499 () Bool)

(assert (=> start!126868 (=> (not res!1012439) (not e!834499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126868 (= res!1012439 (validMask!0 mask!2687))))

(assert (=> start!126868 e!834499))

(assert (=> start!126868 true))

(declare-fun array_inv!36991 (array!99558) Bool)

(assert (=> start!126868 (array_inv!36991 a!2862)))

(declare-fun b!1488777 () Bool)

(declare-fun res!1012440 () Bool)

(assert (=> b!1488777 (=> (not res!1012440) (not e!834499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99558 (_ BitVec 32)) Bool)

(assert (=> b!1488777 (= res!1012440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488778 () Bool)

(declare-fun e!834501 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99558 (_ BitVec 32)) SeekEntryResult!12309)

(assert (=> b!1488778 (= e!834501 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649282 lt!649285 mask!2687) (seekEntryOrOpen!0 lt!649282 lt!649285 mask!2687)))))

(declare-fun b!1488779 () Bool)

(declare-fun e!834504 () Bool)

(declare-fun e!834502 () Bool)

(assert (=> b!1488779 (= e!834504 e!834502)))

(declare-fun res!1012434 () Bool)

(assert (=> b!1488779 (=> res!1012434 e!834502)))

(assert (=> b!1488779 (= res!1012434 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649284 #b00000000000000000000000000000000) (bvsge lt!649284 (size!48597 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488779 (= lt!649284 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1488779 (= lt!649286 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649282 lt!649285 mask!2687))))

(assert (=> b!1488779 (= lt!649286 (seekEntryOrOpen!0 lt!649282 lt!649285 mask!2687))))

(declare-fun b!1488780 () Bool)

(declare-fun res!1012449 () Bool)

(assert (=> b!1488780 (=> (not res!1012449) (not e!834499))))

(assert (=> b!1488780 (= res!1012449 (and (= (size!48597 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48597 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48597 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488781 () Bool)

(declare-fun res!1012446 () Bool)

(assert (=> b!1488781 (=> (not res!1012446) (not e!834499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488781 (= res!1012446 (validKeyInArray!0 (select (arr!48046 a!2862) i!1006)))))

(declare-fun b!1488782 () Bool)

(declare-fun res!1012433 () Bool)

(assert (=> b!1488782 (=> res!1012433 e!834502)))

(declare-fun lt!649287 () SeekEntryResult!12309)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99558 (_ BitVec 32)) SeekEntryResult!12309)

(assert (=> b!1488782 (= res!1012433 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649284 (select (arr!48046 a!2862) j!93) a!2862 mask!2687) lt!649287)))))

(declare-fun b!1488783 () Bool)

(declare-fun res!1012441 () Bool)

(declare-fun e!834506 () Bool)

(assert (=> b!1488783 (=> (not res!1012441) (not e!834506))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1488783 (= res!1012441 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1488784 () Bool)

(declare-fun res!1012444 () Bool)

(assert (=> b!1488784 (=> (not res!1012444) (not e!834499))))

(assert (=> b!1488784 (= res!1012444 (validKeyInArray!0 (select (arr!48046 a!2862) j!93)))))

(declare-fun b!1488785 () Bool)

(assert (=> b!1488785 (= e!834502 true)))

(declare-fun lt!649288 () Bool)

(assert (=> b!1488785 (= lt!649288 e!834503)))

(declare-fun c!137702 () Bool)

(assert (=> b!1488785 (= c!137702 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!649283 () SeekEntryResult!12309)

(declare-fun b!1488786 () Bool)

(assert (=> b!1488786 (= e!834501 (= lt!649283 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649282 lt!649285 mask!2687)))))

(declare-fun b!1488787 () Bool)

(declare-fun res!1012445 () Bool)

(assert (=> b!1488787 (=> (not res!1012445) (not e!834499))))

(assert (=> b!1488787 (= res!1012445 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48597 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48597 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48597 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488788 () Bool)

(assert (=> b!1488788 (= e!834503 (not (= lt!649283 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649284 lt!649282 lt!649285 mask!2687))))))

(declare-fun b!1488789 () Bool)

(declare-fun e!834505 () Bool)

(assert (=> b!1488789 (= e!834499 e!834505)))

(declare-fun res!1012447 () Bool)

(assert (=> b!1488789 (=> (not res!1012447) (not e!834505))))

(assert (=> b!1488789 (= res!1012447 (= (select (store (arr!48046 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488789 (= lt!649285 (array!99559 (store (arr!48046 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48597 a!2862)))))

(declare-fun b!1488790 () Bool)

(declare-fun res!1012438 () Bool)

(declare-fun e!834497 () Bool)

(assert (=> b!1488790 (=> (not res!1012438) (not e!834497))))

(assert (=> b!1488790 (= res!1012438 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48046 a!2862) j!93) a!2862 mask!2687) lt!649287))))

(declare-fun b!1488791 () Bool)

(assert (=> b!1488791 (= e!834506 (not e!834504))))

(declare-fun res!1012432 () Bool)

(assert (=> b!1488791 (=> res!1012432 e!834504)))

(assert (=> b!1488791 (= res!1012432 (or (and (= (select (arr!48046 a!2862) index!646) (select (store (arr!48046 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48046 a!2862) index!646) (select (arr!48046 a!2862) j!93))) (= (select (arr!48046 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1488791 e!834500))

(declare-fun res!1012442 () Bool)

(assert (=> b!1488791 (=> (not res!1012442) (not e!834500))))

(assert (=> b!1488791 (= res!1012442 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49906 0))(
  ( (Unit!49907) )
))
(declare-fun lt!649281 () Unit!49906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49906)

(assert (=> b!1488791 (= lt!649281 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1488792 () Bool)

(assert (=> b!1488792 (= e!834497 e!834506)))

(declare-fun res!1012437 () Bool)

(assert (=> b!1488792 (=> (not res!1012437) (not e!834506))))

(assert (=> b!1488792 (= res!1012437 (= lt!649283 (Intermediate!12309 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488792 (= lt!649283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649282 mask!2687) lt!649282 lt!649285 mask!2687))))

(assert (=> b!1488792 (= lt!649282 (select (store (arr!48046 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488793 () Bool)

(declare-fun res!1012448 () Bool)

(assert (=> b!1488793 (=> (not res!1012448) (not e!834499))))

(declare-datatypes ((List!34727 0))(
  ( (Nil!34724) (Cons!34723 (h!36106 (_ BitVec 64)) (t!49428 List!34727)) )
))
(declare-fun arrayNoDuplicates!0 (array!99558 (_ BitVec 32) List!34727) Bool)

(assert (=> b!1488793 (= res!1012448 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34724))))

(declare-fun b!1488794 () Bool)

(declare-fun res!1012436 () Bool)

(assert (=> b!1488794 (=> (not res!1012436) (not e!834506))))

(assert (=> b!1488794 (= res!1012436 e!834501)))

(declare-fun c!137701 () Bool)

(assert (=> b!1488794 (= c!137701 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1488795 () Bool)

(declare-fun res!1012443 () Bool)

(assert (=> b!1488795 (=> (not res!1012443) (not e!834500))))

(assert (=> b!1488795 (= res!1012443 (= (seekEntryOrOpen!0 (select (arr!48046 a!2862) j!93) a!2862 mask!2687) (Found!12309 j!93)))))

(declare-fun b!1488796 () Bool)

(assert (=> b!1488796 (= e!834505 e!834497)))

(declare-fun res!1012435 () Bool)

(assert (=> b!1488796 (=> (not res!1012435) (not e!834497))))

(assert (=> b!1488796 (= res!1012435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48046 a!2862) j!93) mask!2687) (select (arr!48046 a!2862) j!93) a!2862 mask!2687) lt!649287))))

(assert (=> b!1488796 (= lt!649287 (Intermediate!12309 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126868 res!1012439) b!1488780))

(assert (= (and b!1488780 res!1012449) b!1488781))

(assert (= (and b!1488781 res!1012446) b!1488784))

(assert (= (and b!1488784 res!1012444) b!1488777))

(assert (= (and b!1488777 res!1012440) b!1488793))

(assert (= (and b!1488793 res!1012448) b!1488787))

(assert (= (and b!1488787 res!1012445) b!1488789))

(assert (= (and b!1488789 res!1012447) b!1488796))

(assert (= (and b!1488796 res!1012435) b!1488790))

(assert (= (and b!1488790 res!1012438) b!1488792))

(assert (= (and b!1488792 res!1012437) b!1488794))

(assert (= (and b!1488794 c!137701) b!1488786))

(assert (= (and b!1488794 (not c!137701)) b!1488778))

(assert (= (and b!1488794 res!1012436) b!1488783))

(assert (= (and b!1488783 res!1012441) b!1488791))

(assert (= (and b!1488791 res!1012442) b!1488795))

(assert (= (and b!1488795 res!1012443) b!1488776))

(assert (= (and b!1488791 (not res!1012432)) b!1488779))

(assert (= (and b!1488779 (not res!1012434)) b!1488782))

(assert (= (and b!1488782 (not res!1012433)) b!1488785))

(assert (= (and b!1488785 c!137702) b!1488788))

(assert (= (and b!1488785 (not c!137702)) b!1488775))

(declare-fun m!1373139 () Bool)

(assert (=> b!1488790 m!1373139))

(assert (=> b!1488790 m!1373139))

(declare-fun m!1373141 () Bool)

(assert (=> b!1488790 m!1373141))

(assert (=> b!1488796 m!1373139))

(assert (=> b!1488796 m!1373139))

(declare-fun m!1373143 () Bool)

(assert (=> b!1488796 m!1373143))

(assert (=> b!1488796 m!1373143))

(assert (=> b!1488796 m!1373139))

(declare-fun m!1373145 () Bool)

(assert (=> b!1488796 m!1373145))

(declare-fun m!1373147 () Bool)

(assert (=> b!1488777 m!1373147))

(declare-fun m!1373149 () Bool)

(assert (=> b!1488781 m!1373149))

(assert (=> b!1488781 m!1373149))

(declare-fun m!1373151 () Bool)

(assert (=> b!1488781 m!1373151))

(assert (=> b!1488795 m!1373139))

(assert (=> b!1488795 m!1373139))

(declare-fun m!1373153 () Bool)

(assert (=> b!1488795 m!1373153))

(assert (=> b!1488784 m!1373139))

(assert (=> b!1488784 m!1373139))

(declare-fun m!1373155 () Bool)

(assert (=> b!1488784 m!1373155))

(declare-fun m!1373157 () Bool)

(assert (=> b!1488793 m!1373157))

(assert (=> b!1488782 m!1373139))

(assert (=> b!1488782 m!1373139))

(declare-fun m!1373159 () Bool)

(assert (=> b!1488782 m!1373159))

(declare-fun m!1373161 () Bool)

(assert (=> b!1488791 m!1373161))

(declare-fun m!1373163 () Bool)

(assert (=> b!1488791 m!1373163))

(declare-fun m!1373165 () Bool)

(assert (=> b!1488791 m!1373165))

(declare-fun m!1373167 () Bool)

(assert (=> b!1488791 m!1373167))

(declare-fun m!1373169 () Bool)

(assert (=> b!1488791 m!1373169))

(assert (=> b!1488791 m!1373139))

(declare-fun m!1373171 () Bool)

(assert (=> b!1488792 m!1373171))

(assert (=> b!1488792 m!1373171))

(declare-fun m!1373173 () Bool)

(assert (=> b!1488792 m!1373173))

(assert (=> b!1488792 m!1373163))

(declare-fun m!1373175 () Bool)

(assert (=> b!1488792 m!1373175))

(declare-fun m!1373177 () Bool)

(assert (=> b!1488778 m!1373177))

(declare-fun m!1373179 () Bool)

(assert (=> b!1488778 m!1373179))

(declare-fun m!1373181 () Bool)

(assert (=> b!1488788 m!1373181))

(declare-fun m!1373183 () Bool)

(assert (=> b!1488779 m!1373183))

(assert (=> b!1488779 m!1373177))

(assert (=> b!1488779 m!1373179))

(assert (=> b!1488789 m!1373163))

(declare-fun m!1373185 () Bool)

(assert (=> b!1488789 m!1373185))

(declare-fun m!1373187 () Bool)

(assert (=> start!126868 m!1373187))

(declare-fun m!1373189 () Bool)

(assert (=> start!126868 m!1373189))

(assert (=> b!1488776 m!1373163))

(declare-fun m!1373191 () Bool)

(assert (=> b!1488776 m!1373191))

(assert (=> b!1488776 m!1373165))

(assert (=> b!1488776 m!1373167))

(assert (=> b!1488776 m!1373139))

(declare-fun m!1373193 () Bool)

(assert (=> b!1488786 m!1373193))

(declare-fun m!1373195 () Bool)

(assert (=> b!1488775 m!1373195))

(push 1)

