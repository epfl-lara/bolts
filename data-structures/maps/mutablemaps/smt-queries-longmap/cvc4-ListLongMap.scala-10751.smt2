; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125810 () Bool)

(assert start!125810)

(declare-fun b!1471668 () Bool)

(declare-fun e!826053 () Bool)

(declare-fun e!826052 () Bool)

(assert (=> b!1471668 (= e!826053 e!826052)))

(declare-fun res!999525 () Bool)

(assert (=> b!1471668 (=> (not res!999525) (not e!826052))))

(declare-datatypes ((SeekEntryResult!12074 0))(
  ( (MissingZero!12074 (index!50687 (_ BitVec 32))) (Found!12074 (index!50688 (_ BitVec 32))) (Intermediate!12074 (undefined!12886 Bool) (index!50689 (_ BitVec 32)) (x!132272 (_ BitVec 32))) (Undefined!12074) (MissingVacant!12074 (index!50690 (_ BitVec 32))) )
))
(declare-fun lt!643310 () SeekEntryResult!12074)

(declare-datatypes ((array!99061 0))(
  ( (array!99062 (arr!47811 (Array (_ BitVec 32) (_ BitVec 64))) (size!48362 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99061)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99061 (_ BitVec 32)) SeekEntryResult!12074)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471668 (= res!999525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47811 a!2862) j!93) mask!2687) (select (arr!47811 a!2862) j!93) a!2862 mask!2687) lt!643310))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1471668 (= lt!643310 (Intermediate!12074 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471669 () Bool)

(declare-fun res!999520 () Bool)

(declare-fun e!826051 () Bool)

(assert (=> b!1471669 (=> (not res!999520) (not e!826051))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471669 (= res!999520 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48362 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48362 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48362 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471670 () Bool)

(assert (=> b!1471670 (= e!826051 e!826053)))

(declare-fun res!999523 () Bool)

(assert (=> b!1471670 (=> (not res!999523) (not e!826053))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1471670 (= res!999523 (= (select (store (arr!47811 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643309 () array!99061)

(assert (=> b!1471670 (= lt!643309 (array!99062 (store (arr!47811 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48362 a!2862)))))

(declare-fun b!1471671 () Bool)

(declare-fun res!999521 () Bool)

(assert (=> b!1471671 (=> (not res!999521) (not e!826051))))

(assert (=> b!1471671 (= res!999521 (and (= (size!48362 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48362 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48362 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471672 () Bool)

(declare-fun e!826054 () Bool)

(assert (=> b!1471672 (= e!826054 (not true))))

(declare-fun e!826049 () Bool)

(assert (=> b!1471672 e!826049))

(declare-fun res!999533 () Bool)

(assert (=> b!1471672 (=> (not res!999533) (not e!826049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99061 (_ BitVec 32)) Bool)

(assert (=> b!1471672 (= res!999533 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49436 0))(
  ( (Unit!49437) )
))
(declare-fun lt!643308 () Unit!49436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49436)

(assert (=> b!1471672 (= lt!643308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471673 () Bool)

(declare-fun res!999532 () Bool)

(assert (=> b!1471673 (=> (not res!999532) (not e!826054))))

(declare-fun e!826055 () Bool)

(assert (=> b!1471673 (= res!999532 e!826055)))

(declare-fun c!135590 () Bool)

(assert (=> b!1471673 (= c!135590 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471674 () Bool)

(declare-fun res!999530 () Bool)

(assert (=> b!1471674 (=> (not res!999530) (not e!826051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471674 (= res!999530 (validKeyInArray!0 (select (arr!47811 a!2862) i!1006)))))

(declare-fun b!1471676 () Bool)

(declare-fun res!999522 () Bool)

(assert (=> b!1471676 (=> (not res!999522) (not e!826054))))

(assert (=> b!1471676 (= res!999522 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471677 () Bool)

(assert (=> b!1471677 (= e!826049 (or (= (select (arr!47811 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47811 a!2862) intermediateBeforeIndex!19) (select (arr!47811 a!2862) j!93))))))

(declare-fun b!1471678 () Bool)

(declare-fun res!999528 () Bool)

(assert (=> b!1471678 (=> (not res!999528) (not e!826052))))

(assert (=> b!1471678 (= res!999528 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47811 a!2862) j!93) a!2862 mask!2687) lt!643310))))

(declare-fun b!1471679 () Bool)

(declare-fun res!999527 () Bool)

(assert (=> b!1471679 (=> (not res!999527) (not e!826051))))

(declare-datatypes ((List!34492 0))(
  ( (Nil!34489) (Cons!34488 (h!35844 (_ BitVec 64)) (t!49193 List!34492)) )
))
(declare-fun arrayNoDuplicates!0 (array!99061 (_ BitVec 32) List!34492) Bool)

(assert (=> b!1471679 (= res!999527 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34489))))

(declare-fun b!1471680 () Bool)

(assert (=> b!1471680 (= e!826052 e!826054)))

(declare-fun res!999529 () Bool)

(assert (=> b!1471680 (=> (not res!999529) (not e!826054))))

(declare-fun lt!643311 () SeekEntryResult!12074)

(assert (=> b!1471680 (= res!999529 (= lt!643311 (Intermediate!12074 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643312 () (_ BitVec 64))

(assert (=> b!1471680 (= lt!643311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643312 mask!2687) lt!643312 lt!643309 mask!2687))))

(assert (=> b!1471680 (= lt!643312 (select (store (arr!47811 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471681 () Bool)

(declare-fun res!999534 () Bool)

(assert (=> b!1471681 (=> (not res!999534) (not e!826051))))

(assert (=> b!1471681 (= res!999534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471682 () Bool)

(declare-fun res!999526 () Bool)

(assert (=> b!1471682 (=> (not res!999526) (not e!826051))))

(assert (=> b!1471682 (= res!999526 (validKeyInArray!0 (select (arr!47811 a!2862) j!93)))))

(declare-fun res!999524 () Bool)

(assert (=> start!125810 (=> (not res!999524) (not e!826051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125810 (= res!999524 (validMask!0 mask!2687))))

(assert (=> start!125810 e!826051))

(assert (=> start!125810 true))

(declare-fun array_inv!36756 (array!99061) Bool)

(assert (=> start!125810 (array_inv!36756 a!2862)))

(declare-fun b!1471675 () Bool)

(declare-fun res!999531 () Bool)

(assert (=> b!1471675 (=> (not res!999531) (not e!826049))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99061 (_ BitVec 32)) SeekEntryResult!12074)

(assert (=> b!1471675 (= res!999531 (= (seekEntryOrOpen!0 (select (arr!47811 a!2862) j!93) a!2862 mask!2687) (Found!12074 j!93)))))

(declare-fun b!1471683 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99061 (_ BitVec 32)) SeekEntryResult!12074)

(assert (=> b!1471683 (= e!826055 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643312 lt!643309 mask!2687) (seekEntryOrOpen!0 lt!643312 lt!643309 mask!2687)))))

(declare-fun b!1471684 () Bool)

(assert (=> b!1471684 (= e!826055 (= lt!643311 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643312 lt!643309 mask!2687)))))

(assert (= (and start!125810 res!999524) b!1471671))

(assert (= (and b!1471671 res!999521) b!1471674))

(assert (= (and b!1471674 res!999530) b!1471682))

(assert (= (and b!1471682 res!999526) b!1471681))

(assert (= (and b!1471681 res!999534) b!1471679))

(assert (= (and b!1471679 res!999527) b!1471669))

(assert (= (and b!1471669 res!999520) b!1471670))

(assert (= (and b!1471670 res!999523) b!1471668))

(assert (= (and b!1471668 res!999525) b!1471678))

(assert (= (and b!1471678 res!999528) b!1471680))

(assert (= (and b!1471680 res!999529) b!1471673))

(assert (= (and b!1471673 c!135590) b!1471684))

(assert (= (and b!1471673 (not c!135590)) b!1471683))

(assert (= (and b!1471673 res!999532) b!1471676))

(assert (= (and b!1471676 res!999522) b!1471672))

(assert (= (and b!1471672 res!999533) b!1471675))

(assert (= (and b!1471675 res!999531) b!1471677))

(declare-fun m!1358507 () Bool)

(assert (=> b!1471681 m!1358507))

(declare-fun m!1358509 () Bool)

(assert (=> b!1471680 m!1358509))

(assert (=> b!1471680 m!1358509))

(declare-fun m!1358511 () Bool)

(assert (=> b!1471680 m!1358511))

(declare-fun m!1358513 () Bool)

(assert (=> b!1471680 m!1358513))

(declare-fun m!1358515 () Bool)

(assert (=> b!1471680 m!1358515))

(declare-fun m!1358517 () Bool)

(assert (=> start!125810 m!1358517))

(declare-fun m!1358519 () Bool)

(assert (=> start!125810 m!1358519))

(declare-fun m!1358521 () Bool)

(assert (=> b!1471674 m!1358521))

(assert (=> b!1471674 m!1358521))

(declare-fun m!1358523 () Bool)

(assert (=> b!1471674 m!1358523))

(declare-fun m!1358525 () Bool)

(assert (=> b!1471678 m!1358525))

(assert (=> b!1471678 m!1358525))

(declare-fun m!1358527 () Bool)

(assert (=> b!1471678 m!1358527))

(declare-fun m!1358529 () Bool)

(assert (=> b!1471679 m!1358529))

(assert (=> b!1471668 m!1358525))

(assert (=> b!1471668 m!1358525))

(declare-fun m!1358531 () Bool)

(assert (=> b!1471668 m!1358531))

(assert (=> b!1471668 m!1358531))

(assert (=> b!1471668 m!1358525))

(declare-fun m!1358533 () Bool)

(assert (=> b!1471668 m!1358533))

(assert (=> b!1471670 m!1358513))

(declare-fun m!1358535 () Bool)

(assert (=> b!1471670 m!1358535))

(declare-fun m!1358537 () Bool)

(assert (=> b!1471684 m!1358537))

(assert (=> b!1471682 m!1358525))

(assert (=> b!1471682 m!1358525))

(declare-fun m!1358539 () Bool)

(assert (=> b!1471682 m!1358539))

(declare-fun m!1358541 () Bool)

(assert (=> b!1471677 m!1358541))

(assert (=> b!1471677 m!1358525))

(assert (=> b!1471675 m!1358525))

(assert (=> b!1471675 m!1358525))

(declare-fun m!1358543 () Bool)

(assert (=> b!1471675 m!1358543))

(declare-fun m!1358545 () Bool)

(assert (=> b!1471672 m!1358545))

(declare-fun m!1358547 () Bool)

(assert (=> b!1471672 m!1358547))

(declare-fun m!1358549 () Bool)

(assert (=> b!1471683 m!1358549))

(declare-fun m!1358551 () Bool)

(assert (=> b!1471683 m!1358551))

(push 1)

