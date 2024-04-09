; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126918 () Bool)

(assert start!126918)

(declare-fun b!1490378 () Bool)

(declare-fun res!1013771 () Bool)

(declare-fun e!835178 () Bool)

(assert (=> b!1490378 (=> (not res!1013771) (not e!835178))))

(declare-datatypes ((array!99608 0))(
  ( (array!99609 (arr!48071 (Array (_ BitVec 32) (_ BitVec 64))) (size!48622 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99608)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490378 (= res!1013771 (validKeyInArray!0 (select (arr!48071 a!2862) j!93)))))

(declare-fun b!1490379 () Bool)

(declare-fun res!1013767 () Bool)

(declare-fun e!835180 () Bool)

(assert (=> b!1490379 (=> (not res!1013767) (not e!835180))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490379 (= res!1013767 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490380 () Bool)

(declare-fun res!1013764 () Bool)

(assert (=> b!1490380 (=> (not res!1013764) (not e!835178))))

(assert (=> b!1490380 (= res!1013764 (validKeyInArray!0 (select (arr!48071 a!2862) i!1006)))))

(declare-fun lt!649892 () array!99608)

(declare-fun lt!649889 () (_ BitVec 64))

(declare-fun b!1490381 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!835179 () Bool)

(declare-datatypes ((SeekEntryResult!12334 0))(
  ( (MissingZero!12334 (index!51727 (_ BitVec 32))) (Found!12334 (index!51728 (_ BitVec 32))) (Intermediate!12334 (undefined!13146 Bool) (index!51729 (_ BitVec 32)) (x!133321 (_ BitVec 32))) (Undefined!12334) (MissingVacant!12334 (index!51730 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99608 (_ BitVec 32)) SeekEntryResult!12334)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99608 (_ BitVec 32)) SeekEntryResult!12334)

(assert (=> b!1490381 (= e!835179 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649889 lt!649892 mask!2687) (seekEntryOrOpen!0 lt!649889 lt!649892 mask!2687)))))

(declare-fun b!1490382 () Bool)

(declare-fun e!835177 () Bool)

(assert (=> b!1490382 (= e!835180 (not e!835177))))

(declare-fun res!1013777 () Bool)

(assert (=> b!1490382 (=> res!1013777 e!835177)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490382 (= res!1013777 (or (and (= (select (arr!48071 a!2862) index!646) (select (store (arr!48071 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48071 a!2862) index!646) (select (arr!48071 a!2862) j!93))) (= (select (arr!48071 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835175 () Bool)

(assert (=> b!1490382 e!835175))

(declare-fun res!1013768 () Bool)

(assert (=> b!1490382 (=> (not res!1013768) (not e!835175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99608 (_ BitVec 32)) Bool)

(assert (=> b!1490382 (= res!1013768 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49956 0))(
  ( (Unit!49957) )
))
(declare-fun lt!649890 () Unit!49956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49956)

(assert (=> b!1490382 (= lt!649890 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490383 () Bool)

(declare-fun res!1013774 () Bool)

(assert (=> b!1490383 (=> (not res!1013774) (not e!835178))))

(assert (=> b!1490383 (= res!1013774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490384 () Bool)

(declare-fun e!835174 () Bool)

(assert (=> b!1490384 (= e!835174 e!835180)))

(declare-fun res!1013773 () Bool)

(assert (=> b!1490384 (=> (not res!1013773) (not e!835180))))

(declare-fun lt!649891 () SeekEntryResult!12334)

(assert (=> b!1490384 (= res!1013773 (= lt!649891 (Intermediate!12334 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99608 (_ BitVec 32)) SeekEntryResult!12334)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490384 (= lt!649891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649889 mask!2687) lt!649889 lt!649892 mask!2687))))

(assert (=> b!1490384 (= lt!649889 (select (store (arr!48071 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490386 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1490386 (= e!835175 (or (= (select (arr!48071 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48071 a!2862) intermediateBeforeIndex!19) (select (arr!48071 a!2862) j!93))))))

(declare-fun b!1490387 () Bool)

(declare-fun e!835181 () Bool)

(assert (=> b!1490387 (= e!835181 e!835174)))

(declare-fun res!1013763 () Bool)

(assert (=> b!1490387 (=> (not res!1013763) (not e!835174))))

(declare-fun lt!649894 () SeekEntryResult!12334)

(assert (=> b!1490387 (= res!1013763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48071 a!2862) j!93) mask!2687) (select (arr!48071 a!2862) j!93) a!2862 mask!2687) lt!649894))))

(assert (=> b!1490387 (= lt!649894 (Intermediate!12334 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490388 () Bool)

(declare-fun res!1013769 () Bool)

(assert (=> b!1490388 (=> (not res!1013769) (not e!835174))))

(assert (=> b!1490388 (= res!1013769 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48071 a!2862) j!93) a!2862 mask!2687) lt!649894))))

(declare-fun b!1490389 () Bool)

(declare-fun res!1013775 () Bool)

(assert (=> b!1490389 (=> (not res!1013775) (not e!835178))))

(assert (=> b!1490389 (= res!1013775 (and (= (size!48622 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48622 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48622 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490390 () Bool)

(declare-fun res!1013766 () Bool)

(assert (=> b!1490390 (=> (not res!1013766) (not e!835178))))

(declare-datatypes ((List!34752 0))(
  ( (Nil!34749) (Cons!34748 (h!36131 (_ BitVec 64)) (t!49453 List!34752)) )
))
(declare-fun arrayNoDuplicates!0 (array!99608 (_ BitVec 32) List!34752) Bool)

(assert (=> b!1490390 (= res!1013766 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34749))))

(declare-fun b!1490391 () Bool)

(assert (=> b!1490391 (= e!835178 e!835181)))

(declare-fun res!1013776 () Bool)

(assert (=> b!1490391 (=> (not res!1013776) (not e!835181))))

(assert (=> b!1490391 (= res!1013776 (= (select (store (arr!48071 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490391 (= lt!649892 (array!99609 (store (arr!48071 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48622 a!2862)))))

(declare-fun b!1490392 () Bool)

(declare-fun res!1013770 () Bool)

(assert (=> b!1490392 (=> (not res!1013770) (not e!835180))))

(assert (=> b!1490392 (= res!1013770 e!835179)))

(declare-fun c!137837 () Bool)

(assert (=> b!1490392 (= c!137837 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490393 () Bool)

(assert (=> b!1490393 (= e!835177 true)))

(declare-fun lt!649893 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490393 (= lt!649893 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490385 () Bool)

(declare-fun res!1013778 () Bool)

(assert (=> b!1490385 (=> (not res!1013778) (not e!835178))))

(assert (=> b!1490385 (= res!1013778 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48622 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48622 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48622 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1013765 () Bool)

(assert (=> start!126918 (=> (not res!1013765) (not e!835178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126918 (= res!1013765 (validMask!0 mask!2687))))

(assert (=> start!126918 e!835178))

(assert (=> start!126918 true))

(declare-fun array_inv!37016 (array!99608) Bool)

(assert (=> start!126918 (array_inv!37016 a!2862)))

(declare-fun b!1490394 () Bool)

(declare-fun res!1013772 () Bool)

(assert (=> b!1490394 (=> (not res!1013772) (not e!835175))))

(assert (=> b!1490394 (= res!1013772 (= (seekEntryOrOpen!0 (select (arr!48071 a!2862) j!93) a!2862 mask!2687) (Found!12334 j!93)))))

(declare-fun b!1490395 () Bool)

(assert (=> b!1490395 (= e!835179 (= lt!649891 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649889 lt!649892 mask!2687)))))

(assert (= (and start!126918 res!1013765) b!1490389))

(assert (= (and b!1490389 res!1013775) b!1490380))

(assert (= (and b!1490380 res!1013764) b!1490378))

(assert (= (and b!1490378 res!1013771) b!1490383))

(assert (= (and b!1490383 res!1013774) b!1490390))

(assert (= (and b!1490390 res!1013766) b!1490385))

(assert (= (and b!1490385 res!1013778) b!1490391))

(assert (= (and b!1490391 res!1013776) b!1490387))

(assert (= (and b!1490387 res!1013763) b!1490388))

(assert (= (and b!1490388 res!1013769) b!1490384))

(assert (= (and b!1490384 res!1013773) b!1490392))

(assert (= (and b!1490392 c!137837) b!1490395))

(assert (= (and b!1490392 (not c!137837)) b!1490381))

(assert (= (and b!1490392 res!1013770) b!1490379))

(assert (= (and b!1490379 res!1013767) b!1490382))

(assert (= (and b!1490382 res!1013768) b!1490394))

(assert (= (and b!1490394 res!1013772) b!1490386))

(assert (= (and b!1490382 (not res!1013777)) b!1490393))

(declare-fun m!1374595 () Bool)

(assert (=> b!1490378 m!1374595))

(assert (=> b!1490378 m!1374595))

(declare-fun m!1374597 () Bool)

(assert (=> b!1490378 m!1374597))

(assert (=> b!1490388 m!1374595))

(assert (=> b!1490388 m!1374595))

(declare-fun m!1374599 () Bool)

(assert (=> b!1490388 m!1374599))

(declare-fun m!1374601 () Bool)

(assert (=> b!1490380 m!1374601))

(assert (=> b!1490380 m!1374601))

(declare-fun m!1374603 () Bool)

(assert (=> b!1490380 m!1374603))

(declare-fun m!1374605 () Bool)

(assert (=> b!1490383 m!1374605))

(assert (=> b!1490394 m!1374595))

(assert (=> b!1490394 m!1374595))

(declare-fun m!1374607 () Bool)

(assert (=> b!1490394 m!1374607))

(declare-fun m!1374609 () Bool)

(assert (=> b!1490382 m!1374609))

(declare-fun m!1374611 () Bool)

(assert (=> b!1490382 m!1374611))

(declare-fun m!1374613 () Bool)

(assert (=> b!1490382 m!1374613))

(declare-fun m!1374615 () Bool)

(assert (=> b!1490382 m!1374615))

(declare-fun m!1374617 () Bool)

(assert (=> b!1490382 m!1374617))

(assert (=> b!1490382 m!1374595))

(declare-fun m!1374619 () Bool)

(assert (=> b!1490384 m!1374619))

(assert (=> b!1490384 m!1374619))

(declare-fun m!1374621 () Bool)

(assert (=> b!1490384 m!1374621))

(assert (=> b!1490384 m!1374611))

(declare-fun m!1374623 () Bool)

(assert (=> b!1490384 m!1374623))

(declare-fun m!1374625 () Bool)

(assert (=> start!126918 m!1374625))

(declare-fun m!1374627 () Bool)

(assert (=> start!126918 m!1374627))

(declare-fun m!1374629 () Bool)

(assert (=> b!1490386 m!1374629))

(assert (=> b!1490386 m!1374595))

(declare-fun m!1374631 () Bool)

(assert (=> b!1490395 m!1374631))

(declare-fun m!1374633 () Bool)

(assert (=> b!1490381 m!1374633))

(declare-fun m!1374635 () Bool)

(assert (=> b!1490381 m!1374635))

(assert (=> b!1490387 m!1374595))

(assert (=> b!1490387 m!1374595))

(declare-fun m!1374637 () Bool)

(assert (=> b!1490387 m!1374637))

(assert (=> b!1490387 m!1374637))

(assert (=> b!1490387 m!1374595))

(declare-fun m!1374639 () Bool)

(assert (=> b!1490387 m!1374639))

(assert (=> b!1490391 m!1374611))

(declare-fun m!1374641 () Bool)

(assert (=> b!1490391 m!1374641))

(declare-fun m!1374643 () Bool)

(assert (=> b!1490390 m!1374643))

(declare-fun m!1374645 () Bool)

(assert (=> b!1490393 m!1374645))

(check-sat (not b!1490382) (not b!1490388) (not b!1490387) (not b!1490394) (not b!1490390) (not b!1490384) (not b!1490381) (not start!126918) (not b!1490383) (not b!1490393) (not b!1490378) (not b!1490395) (not b!1490380))
