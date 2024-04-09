; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126552 () Bool)

(assert start!126552)

(declare-fun b!1483769 () Bool)

(declare-fun e!831989 () Bool)

(declare-fun e!831980 () Bool)

(assert (=> b!1483769 (= e!831989 e!831980)))

(declare-fun res!1008721 () Bool)

(assert (=> b!1483769 (=> res!1008721 e!831980)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99431 0))(
  ( (array!99432 (arr!47987 (Array (_ BitVec 32) (_ BitVec 64))) (size!48538 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99431)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!647508 () (_ BitVec 64))

(assert (=> b!1483769 (= res!1008721 (or (and (= (select (arr!47987 a!2862) index!646) lt!647508) (= (select (arr!47987 a!2862) index!646) (select (arr!47987 a!2862) j!93))) (= (select (arr!47987 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483769 (= lt!647508 (select (store (arr!47987 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483770 () Bool)

(declare-fun res!1008720 () Bool)

(declare-fun e!831986 () Bool)

(assert (=> b!1483770 (=> (not res!1008720) (not e!831986))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99431 (_ BitVec 32)) Bool)

(assert (=> b!1483770 (= res!1008720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483771 () Bool)

(declare-fun e!831987 () Bool)

(declare-fun e!831982 () Bool)

(assert (=> b!1483771 (= e!831987 e!831982)))

(declare-fun res!1008713 () Bool)

(assert (=> b!1483771 (=> (not res!1008713) (not e!831982))))

(declare-datatypes ((SeekEntryResult!12250 0))(
  ( (MissingZero!12250 (index!51391 (_ BitVec 32))) (Found!12250 (index!51392 (_ BitVec 32))) (Intermediate!12250 (undefined!13062 Bool) (index!51393 (_ BitVec 32)) (x!132977 (_ BitVec 32))) (Undefined!12250) (MissingVacant!12250 (index!51394 (_ BitVec 32))) )
))
(declare-fun lt!647505 () SeekEntryResult!12250)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99431 (_ BitVec 32)) SeekEntryResult!12250)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483771 (= res!1008713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47987 a!2862) j!93) mask!2687) (select (arr!47987 a!2862) j!93) a!2862 mask!2687) lt!647505))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483771 (= lt!647505 (Intermediate!12250 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483772 () Bool)

(assert (=> b!1483772 (= e!831986 e!831987)))

(declare-fun res!1008722 () Bool)

(assert (=> b!1483772 (=> (not res!1008722) (not e!831987))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483772 (= res!1008722 (= (select (store (arr!47987 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647504 () array!99431)

(assert (=> b!1483772 (= lt!647504 (array!99432 (store (arr!47987 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48538 a!2862)))))

(declare-fun b!1483773 () Bool)

(declare-fun res!1008714 () Bool)

(declare-fun e!831983 () Bool)

(assert (=> b!1483773 (=> (not res!1008714) (not e!831983))))

(declare-fun e!831981 () Bool)

(assert (=> b!1483773 (= res!1008714 e!831981)))

(declare-fun c!137054 () Bool)

(assert (=> b!1483773 (= c!137054 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483774 () Bool)

(declare-fun res!1008729 () Bool)

(assert (=> b!1483774 (=> (not res!1008729) (not e!831986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483774 (= res!1008729 (validKeyInArray!0 (select (arr!47987 a!2862) i!1006)))))

(declare-fun b!1483775 () Bool)

(assert (=> b!1483775 (= e!831982 e!831983)))

(declare-fun res!1008719 () Bool)

(assert (=> b!1483775 (=> (not res!1008719) (not e!831983))))

(declare-fun lt!647506 () SeekEntryResult!12250)

(assert (=> b!1483775 (= res!1008719 (= lt!647506 (Intermediate!12250 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647507 () (_ BitVec 64))

(assert (=> b!1483775 (= lt!647506 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647507 mask!2687) lt!647507 lt!647504 mask!2687))))

(assert (=> b!1483775 (= lt!647507 (select (store (arr!47987 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483776 () Bool)

(declare-fun res!1008724 () Bool)

(assert (=> b!1483776 (=> (not res!1008724) (not e!831983))))

(assert (=> b!1483776 (= res!1008724 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483777 () Bool)

(declare-fun res!1008728 () Bool)

(assert (=> b!1483777 (=> (not res!1008728) (not e!831986))))

(declare-datatypes ((List!34668 0))(
  ( (Nil!34665) (Cons!34664 (h!36038 (_ BitVec 64)) (t!49369 List!34668)) )
))
(declare-fun arrayNoDuplicates!0 (array!99431 (_ BitVec 32) List!34668) Bool)

(assert (=> b!1483777 (= res!1008728 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34665))))

(declare-fun b!1483778 () Bool)

(declare-fun e!831985 () Bool)

(assert (=> b!1483778 (= e!831980 e!831985)))

(declare-fun res!1008717 () Bool)

(assert (=> b!1483778 (=> (not res!1008717) (not e!831985))))

(assert (=> b!1483778 (= res!1008717 (and (= index!646 intermediateAfterIndex!19) (= lt!647508 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483779 () Bool)

(declare-fun e!831984 () Bool)

(assert (=> b!1483779 (= e!831984 true)))

(declare-fun lt!647503 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483779 (= lt!647503 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1008725 () Bool)

(assert (=> start!126552 (=> (not res!1008725) (not e!831986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126552 (= res!1008725 (validMask!0 mask!2687))))

(assert (=> start!126552 e!831986))

(assert (=> start!126552 true))

(declare-fun array_inv!36932 (array!99431) Bool)

(assert (=> start!126552 (array_inv!36932 a!2862)))

(declare-fun b!1483780 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99431 (_ BitVec 32)) SeekEntryResult!12250)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99431 (_ BitVec 32)) SeekEntryResult!12250)

(assert (=> b!1483780 (= e!831981 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647507 lt!647504 mask!2687) (seekEntryOrOpen!0 lt!647507 lt!647504 mask!2687)))))

(declare-fun b!1483781 () Bool)

(assert (=> b!1483781 (= e!831985 (= (seekEntryOrOpen!0 lt!647507 lt!647504 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647507 lt!647504 mask!2687)))))

(declare-fun b!1483782 () Bool)

(declare-fun res!1008726 () Bool)

(assert (=> b!1483782 (=> (not res!1008726) (not e!831982))))

(assert (=> b!1483782 (= res!1008726 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47987 a!2862) j!93) a!2862 mask!2687) lt!647505))))

(declare-fun b!1483783 () Bool)

(assert (=> b!1483783 (= e!831983 (not e!831984))))

(declare-fun res!1008718 () Bool)

(assert (=> b!1483783 (=> res!1008718 e!831984)))

(assert (=> b!1483783 (= res!1008718 (or (and (= (select (arr!47987 a!2862) index!646) (select (store (arr!47987 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47987 a!2862) index!646) (select (arr!47987 a!2862) j!93))) (= (select (arr!47987 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483783 e!831989))

(declare-fun res!1008712 () Bool)

(assert (=> b!1483783 (=> (not res!1008712) (not e!831989))))

(assert (=> b!1483783 (= res!1008712 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49788 0))(
  ( (Unit!49789) )
))
(declare-fun lt!647509 () Unit!49788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49788)

(assert (=> b!1483783 (= lt!647509 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483784 () Bool)

(declare-fun res!1008723 () Bool)

(assert (=> b!1483784 (=> (not res!1008723) (not e!831989))))

(assert (=> b!1483784 (= res!1008723 (or (= (select (arr!47987 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47987 a!2862) intermediateBeforeIndex!19) (select (arr!47987 a!2862) j!93))))))

(declare-fun b!1483785 () Bool)

(assert (=> b!1483785 (= e!831981 (= lt!647506 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647507 lt!647504 mask!2687)))))

(declare-fun b!1483786 () Bool)

(declare-fun res!1008711 () Bool)

(assert (=> b!1483786 (=> (not res!1008711) (not e!831989))))

(assert (=> b!1483786 (= res!1008711 (= (seekEntryOrOpen!0 (select (arr!47987 a!2862) j!93) a!2862 mask!2687) (Found!12250 j!93)))))

(declare-fun b!1483787 () Bool)

(declare-fun res!1008727 () Bool)

(assert (=> b!1483787 (=> (not res!1008727) (not e!831986))))

(assert (=> b!1483787 (= res!1008727 (and (= (size!48538 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48538 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48538 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483788 () Bool)

(declare-fun res!1008715 () Bool)

(assert (=> b!1483788 (=> (not res!1008715) (not e!831986))))

(assert (=> b!1483788 (= res!1008715 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48538 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48538 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48538 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483789 () Bool)

(declare-fun res!1008716 () Bool)

(assert (=> b!1483789 (=> (not res!1008716) (not e!831986))))

(assert (=> b!1483789 (= res!1008716 (validKeyInArray!0 (select (arr!47987 a!2862) j!93)))))

(assert (= (and start!126552 res!1008725) b!1483787))

(assert (= (and b!1483787 res!1008727) b!1483774))

(assert (= (and b!1483774 res!1008729) b!1483789))

(assert (= (and b!1483789 res!1008716) b!1483770))

(assert (= (and b!1483770 res!1008720) b!1483777))

(assert (= (and b!1483777 res!1008728) b!1483788))

(assert (= (and b!1483788 res!1008715) b!1483772))

(assert (= (and b!1483772 res!1008722) b!1483771))

(assert (= (and b!1483771 res!1008713) b!1483782))

(assert (= (and b!1483782 res!1008726) b!1483775))

(assert (= (and b!1483775 res!1008719) b!1483773))

(assert (= (and b!1483773 c!137054) b!1483785))

(assert (= (and b!1483773 (not c!137054)) b!1483780))

(assert (= (and b!1483773 res!1008714) b!1483776))

(assert (= (and b!1483776 res!1008724) b!1483783))

(assert (= (and b!1483783 res!1008712) b!1483786))

(assert (= (and b!1483786 res!1008711) b!1483784))

(assert (= (and b!1483784 res!1008723) b!1483769))

(assert (= (and b!1483769 (not res!1008721)) b!1483778))

(assert (= (and b!1483778 res!1008717) b!1483781))

(assert (= (and b!1483783 (not res!1008718)) b!1483779))

(declare-fun m!1369237 () Bool)

(assert (=> b!1483781 m!1369237))

(declare-fun m!1369239 () Bool)

(assert (=> b!1483781 m!1369239))

(declare-fun m!1369241 () Bool)

(assert (=> b!1483782 m!1369241))

(assert (=> b!1483782 m!1369241))

(declare-fun m!1369243 () Bool)

(assert (=> b!1483782 m!1369243))

(declare-fun m!1369245 () Bool)

(assert (=> b!1483769 m!1369245))

(assert (=> b!1483769 m!1369241))

(declare-fun m!1369247 () Bool)

(assert (=> b!1483769 m!1369247))

(declare-fun m!1369249 () Bool)

(assert (=> b!1483769 m!1369249))

(declare-fun m!1369251 () Bool)

(assert (=> b!1483784 m!1369251))

(assert (=> b!1483784 m!1369241))

(declare-fun m!1369253 () Bool)

(assert (=> b!1483774 m!1369253))

(assert (=> b!1483774 m!1369253))

(declare-fun m!1369255 () Bool)

(assert (=> b!1483774 m!1369255))

(declare-fun m!1369257 () Bool)

(assert (=> start!126552 m!1369257))

(declare-fun m!1369259 () Bool)

(assert (=> start!126552 m!1369259))

(declare-fun m!1369261 () Bool)

(assert (=> b!1483779 m!1369261))

(declare-fun m!1369263 () Bool)

(assert (=> b!1483775 m!1369263))

(assert (=> b!1483775 m!1369263))

(declare-fun m!1369265 () Bool)

(assert (=> b!1483775 m!1369265))

(assert (=> b!1483775 m!1369247))

(declare-fun m!1369267 () Bool)

(assert (=> b!1483775 m!1369267))

(declare-fun m!1369269 () Bool)

(assert (=> b!1483783 m!1369269))

(assert (=> b!1483783 m!1369247))

(assert (=> b!1483783 m!1369249))

(assert (=> b!1483783 m!1369245))

(declare-fun m!1369271 () Bool)

(assert (=> b!1483783 m!1369271))

(assert (=> b!1483783 m!1369241))

(declare-fun m!1369273 () Bool)

(assert (=> b!1483785 m!1369273))

(declare-fun m!1369275 () Bool)

(assert (=> b!1483770 m!1369275))

(assert (=> b!1483780 m!1369239))

(assert (=> b!1483780 m!1369237))

(assert (=> b!1483772 m!1369247))

(declare-fun m!1369277 () Bool)

(assert (=> b!1483772 m!1369277))

(assert (=> b!1483789 m!1369241))

(assert (=> b!1483789 m!1369241))

(declare-fun m!1369279 () Bool)

(assert (=> b!1483789 m!1369279))

(assert (=> b!1483771 m!1369241))

(assert (=> b!1483771 m!1369241))

(declare-fun m!1369281 () Bool)

(assert (=> b!1483771 m!1369281))

(assert (=> b!1483771 m!1369281))

(assert (=> b!1483771 m!1369241))

(declare-fun m!1369283 () Bool)

(assert (=> b!1483771 m!1369283))

(assert (=> b!1483786 m!1369241))

(assert (=> b!1483786 m!1369241))

(declare-fun m!1369285 () Bool)

(assert (=> b!1483786 m!1369285))

(declare-fun m!1369287 () Bool)

(assert (=> b!1483777 m!1369287))

(check-sat (not b!1483777) (not b!1483775) (not b!1483774) (not b!1483783) (not b!1483779) (not b!1483782) (not start!126552) (not b!1483786) (not b!1483781) (not b!1483771) (not b!1483785) (not b!1483770) (not b!1483780) (not b!1483789))
