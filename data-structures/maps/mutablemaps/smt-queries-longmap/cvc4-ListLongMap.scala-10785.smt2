; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126254 () Bool)

(assert start!126254)

(declare-fun b!1478618 () Bool)

(declare-fun res!1004719 () Bool)

(declare-fun e!829461 () Bool)

(assert (=> b!1478618 (=> (not res!1004719) (not e!829461))))

(declare-datatypes ((array!99277 0))(
  ( (array!99278 (arr!47913 (Array (_ BitVec 32) (_ BitVec 64))) (size!48464 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99277)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478618 (= res!1004719 (validKeyInArray!0 (select (arr!47913 a!2862) i!1006)))))

(declare-fun lt!645711 () array!99277)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!829458 () Bool)

(declare-fun lt!645708 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12176 0))(
  ( (MissingZero!12176 (index!51095 (_ BitVec 32))) (Found!12176 (index!51096 (_ BitVec 32))) (Intermediate!12176 (undefined!12988 Bool) (index!51097 (_ BitVec 32)) (x!132682 (_ BitVec 32))) (Undefined!12176) (MissingVacant!12176 (index!51098 (_ BitVec 32))) )
))
(declare-fun lt!645709 () SeekEntryResult!12176)

(declare-fun b!1478619 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99277 (_ BitVec 32)) SeekEntryResult!12176)

(assert (=> b!1478619 (= e!829458 (= lt!645709 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645708 lt!645711 mask!2687)))))

(declare-fun b!1478620 () Bool)

(declare-fun res!1004712 () Bool)

(assert (=> b!1478620 (=> (not res!1004712) (not e!829461))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478620 (= res!1004712 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48464 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48464 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48464 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478621 () Bool)

(declare-fun e!829460 () Bool)

(assert (=> b!1478621 (= e!829460 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1004721 () Bool)

(assert (=> start!126254 (=> (not res!1004721) (not e!829461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126254 (= res!1004721 (validMask!0 mask!2687))))

(assert (=> start!126254 e!829461))

(assert (=> start!126254 true))

(declare-fun array_inv!36858 (array!99277) Bool)

(assert (=> start!126254 (array_inv!36858 a!2862)))

(declare-fun b!1478622 () Bool)

(declare-fun res!1004723 () Bool)

(declare-fun e!829459 () Bool)

(assert (=> b!1478622 (=> (not res!1004723) (not e!829459))))

(assert (=> b!1478622 (= res!1004723 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478623 () Bool)

(declare-fun res!1004726 () Bool)

(assert (=> b!1478623 (=> (not res!1004726) (not e!829459))))

(assert (=> b!1478623 (= res!1004726 e!829458)))

(declare-fun c!136475 () Bool)

(assert (=> b!1478623 (= c!136475 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478624 () Bool)

(declare-fun e!829463 () Bool)

(assert (=> b!1478624 (= e!829463 e!829460)))

(declare-fun res!1004715 () Bool)

(assert (=> b!1478624 (=> (not res!1004715) (not e!829460))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!645710 () SeekEntryResult!12176)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99277 (_ BitVec 32)) SeekEntryResult!12176)

(assert (=> b!1478624 (= res!1004715 (= lt!645710 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47913 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478625 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99277 (_ BitVec 32)) SeekEntryResult!12176)

(assert (=> b!1478625 (= e!829458 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645708 lt!645711 mask!2687) (seekEntryOrOpen!0 lt!645708 lt!645711 mask!2687)))))

(declare-fun b!1478626 () Bool)

(declare-fun e!829462 () Bool)

(assert (=> b!1478626 (= e!829461 e!829462)))

(declare-fun res!1004713 () Bool)

(assert (=> b!1478626 (=> (not res!1004713) (not e!829462))))

(assert (=> b!1478626 (= res!1004713 (= (select (store (arr!47913 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478626 (= lt!645711 (array!99278 (store (arr!47913 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48464 a!2862)))))

(declare-fun b!1478627 () Bool)

(declare-fun res!1004724 () Bool)

(declare-fun e!829464 () Bool)

(assert (=> b!1478627 (=> (not res!1004724) (not e!829464))))

(declare-fun lt!645707 () SeekEntryResult!12176)

(assert (=> b!1478627 (= res!1004724 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47913 a!2862) j!93) a!2862 mask!2687) lt!645707))))

(declare-fun b!1478628 () Bool)

(assert (=> b!1478628 (= e!829459 (not (or (and (= (select (arr!47913 a!2862) index!646) (select (store (arr!47913 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47913 a!2862) index!646) (select (arr!47913 a!2862) j!93))) (not (= (select (arr!47913 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!47913 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829465 () Bool)

(assert (=> b!1478628 e!829465))

(declare-fun res!1004716 () Bool)

(assert (=> b!1478628 (=> (not res!1004716) (not e!829465))))

(assert (=> b!1478628 (= res!1004716 (and (= lt!645710 (Found!12176 j!93)) (or (= (select (arr!47913 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47913 a!2862) intermediateBeforeIndex!19) (select (arr!47913 a!2862) j!93)))))))

(assert (=> b!1478628 (= lt!645710 (seekEntryOrOpen!0 (select (arr!47913 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99277 (_ BitVec 32)) Bool)

(assert (=> b!1478628 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49640 0))(
  ( (Unit!49641) )
))
(declare-fun lt!645712 () Unit!49640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49640)

(assert (=> b!1478628 (= lt!645712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478629 () Bool)

(assert (=> b!1478629 (= e!829462 e!829464)))

(declare-fun res!1004718 () Bool)

(assert (=> b!1478629 (=> (not res!1004718) (not e!829464))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478629 (= res!1004718 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47913 a!2862) j!93) mask!2687) (select (arr!47913 a!2862) j!93) a!2862 mask!2687) lt!645707))))

(assert (=> b!1478629 (= lt!645707 (Intermediate!12176 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478630 () Bool)

(declare-fun res!1004717 () Bool)

(assert (=> b!1478630 (=> (not res!1004717) (not e!829461))))

(assert (=> b!1478630 (= res!1004717 (and (= (size!48464 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48464 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48464 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478631 () Bool)

(assert (=> b!1478631 (= e!829464 e!829459)))

(declare-fun res!1004714 () Bool)

(assert (=> b!1478631 (=> (not res!1004714) (not e!829459))))

(assert (=> b!1478631 (= res!1004714 (= lt!645709 (Intermediate!12176 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478631 (= lt!645709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645708 mask!2687) lt!645708 lt!645711 mask!2687))))

(assert (=> b!1478631 (= lt!645708 (select (store (arr!47913 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478632 () Bool)

(assert (=> b!1478632 (= e!829465 e!829463)))

(declare-fun res!1004725 () Bool)

(assert (=> b!1478632 (=> res!1004725 e!829463)))

(assert (=> b!1478632 (= res!1004725 (or (and (= (select (arr!47913 a!2862) index!646) (select (store (arr!47913 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47913 a!2862) index!646) (select (arr!47913 a!2862) j!93))) (not (= (select (arr!47913 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478633 () Bool)

(declare-fun res!1004720 () Bool)

(assert (=> b!1478633 (=> (not res!1004720) (not e!829461))))

(declare-datatypes ((List!34594 0))(
  ( (Nil!34591) (Cons!34590 (h!35958 (_ BitVec 64)) (t!49295 List!34594)) )
))
(declare-fun arrayNoDuplicates!0 (array!99277 (_ BitVec 32) List!34594) Bool)

(assert (=> b!1478633 (= res!1004720 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34591))))

(declare-fun b!1478634 () Bool)

(declare-fun res!1004727 () Bool)

(assert (=> b!1478634 (=> (not res!1004727) (not e!829461))))

(assert (=> b!1478634 (= res!1004727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478635 () Bool)

(declare-fun res!1004722 () Bool)

(assert (=> b!1478635 (=> (not res!1004722) (not e!829461))))

(assert (=> b!1478635 (= res!1004722 (validKeyInArray!0 (select (arr!47913 a!2862) j!93)))))

(assert (= (and start!126254 res!1004721) b!1478630))

(assert (= (and b!1478630 res!1004717) b!1478618))

(assert (= (and b!1478618 res!1004719) b!1478635))

(assert (= (and b!1478635 res!1004722) b!1478634))

(assert (= (and b!1478634 res!1004727) b!1478633))

(assert (= (and b!1478633 res!1004720) b!1478620))

(assert (= (and b!1478620 res!1004712) b!1478626))

(assert (= (and b!1478626 res!1004713) b!1478629))

(assert (= (and b!1478629 res!1004718) b!1478627))

(assert (= (and b!1478627 res!1004724) b!1478631))

(assert (= (and b!1478631 res!1004714) b!1478623))

(assert (= (and b!1478623 c!136475) b!1478619))

(assert (= (and b!1478623 (not c!136475)) b!1478625))

(assert (= (and b!1478623 res!1004726) b!1478622))

(assert (= (and b!1478622 res!1004723) b!1478628))

(assert (= (and b!1478628 res!1004716) b!1478632))

(assert (= (and b!1478632 (not res!1004725)) b!1478624))

(assert (= (and b!1478624 res!1004715) b!1478621))

(declare-fun m!1364579 () Bool)

(assert (=> start!126254 m!1364579))

(declare-fun m!1364581 () Bool)

(assert (=> start!126254 m!1364581))

(declare-fun m!1364583 () Bool)

(assert (=> b!1478629 m!1364583))

(assert (=> b!1478629 m!1364583))

(declare-fun m!1364585 () Bool)

(assert (=> b!1478629 m!1364585))

(assert (=> b!1478629 m!1364585))

(assert (=> b!1478629 m!1364583))

(declare-fun m!1364587 () Bool)

(assert (=> b!1478629 m!1364587))

(declare-fun m!1364589 () Bool)

(assert (=> b!1478626 m!1364589))

(declare-fun m!1364591 () Bool)

(assert (=> b!1478626 m!1364591))

(declare-fun m!1364593 () Bool)

(assert (=> b!1478633 m!1364593))

(declare-fun m!1364595 () Bool)

(assert (=> b!1478631 m!1364595))

(assert (=> b!1478631 m!1364595))

(declare-fun m!1364597 () Bool)

(assert (=> b!1478631 m!1364597))

(assert (=> b!1478631 m!1364589))

(declare-fun m!1364599 () Bool)

(assert (=> b!1478631 m!1364599))

(declare-fun m!1364601 () Bool)

(assert (=> b!1478625 m!1364601))

(declare-fun m!1364603 () Bool)

(assert (=> b!1478625 m!1364603))

(assert (=> b!1478627 m!1364583))

(assert (=> b!1478627 m!1364583))

(declare-fun m!1364605 () Bool)

(assert (=> b!1478627 m!1364605))

(declare-fun m!1364607 () Bool)

(assert (=> b!1478628 m!1364607))

(assert (=> b!1478628 m!1364589))

(declare-fun m!1364609 () Bool)

(assert (=> b!1478628 m!1364609))

(declare-fun m!1364611 () Bool)

(assert (=> b!1478628 m!1364611))

(declare-fun m!1364613 () Bool)

(assert (=> b!1478628 m!1364613))

(assert (=> b!1478628 m!1364583))

(declare-fun m!1364615 () Bool)

(assert (=> b!1478628 m!1364615))

(declare-fun m!1364617 () Bool)

(assert (=> b!1478628 m!1364617))

(assert (=> b!1478628 m!1364583))

(declare-fun m!1364619 () Bool)

(assert (=> b!1478634 m!1364619))

(assert (=> b!1478635 m!1364583))

(assert (=> b!1478635 m!1364583))

(declare-fun m!1364621 () Bool)

(assert (=> b!1478635 m!1364621))

(declare-fun m!1364623 () Bool)

(assert (=> b!1478618 m!1364623))

(assert (=> b!1478618 m!1364623))

(declare-fun m!1364625 () Bool)

(assert (=> b!1478618 m!1364625))

(assert (=> b!1478624 m!1364583))

(assert (=> b!1478624 m!1364583))

(declare-fun m!1364627 () Bool)

(assert (=> b!1478624 m!1364627))

(declare-fun m!1364629 () Bool)

(assert (=> b!1478619 m!1364629))

(assert (=> b!1478632 m!1364613))

(assert (=> b!1478632 m!1364589))

(assert (=> b!1478632 m!1364611))

(assert (=> b!1478632 m!1364583))

(push 1)

