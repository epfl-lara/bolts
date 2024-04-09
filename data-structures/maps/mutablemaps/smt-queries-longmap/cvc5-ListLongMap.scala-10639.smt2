; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125014 () Bool)

(assert start!125014)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817775 () Bool)

(declare-fun b!1452734 () Bool)

(declare-datatypes ((array!98379 0))(
  ( (array!98380 (arr!47473 (Array (_ BitVec 32) (_ BitVec 64))) (size!48024 (_ BitVec 32))) )
))
(declare-fun lt!636996 () array!98379)

(declare-fun lt!636994 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11748 0))(
  ( (MissingZero!11748 (index!49383 (_ BitVec 32))) (Found!11748 (index!49384 (_ BitVec 32))) (Intermediate!11748 (undefined!12560 Bool) (index!49385 (_ BitVec 32)) (x!131032 (_ BitVec 32))) (Undefined!11748) (MissingVacant!11748 (index!49386 (_ BitVec 32))) )
))
(declare-fun lt!636997 () SeekEntryResult!11748)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98379 (_ BitVec 32)) SeekEntryResult!11748)

(assert (=> b!1452734 (= e!817775 (= lt!636997 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636994 lt!636996 mask!2687)))))

(declare-fun b!1452735 () Bool)

(declare-fun res!983917 () Bool)

(declare-fun e!817781 () Bool)

(assert (=> b!1452735 (=> (not res!983917) (not e!817781))))

(declare-fun a!2862 () array!98379)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452735 (= res!983917 (validKeyInArray!0 (select (arr!47473 a!2862) i!1006)))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1452736 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98379 (_ BitVec 32)) SeekEntryResult!11748)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98379 (_ BitVec 32)) SeekEntryResult!11748)

(assert (=> b!1452736 (= e!817775 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636994 lt!636996 mask!2687) (seekEntryOrOpen!0 lt!636994 lt!636996 mask!2687)))))

(declare-fun b!1452738 () Bool)

(declare-fun res!983925 () Bool)

(assert (=> b!1452738 (=> (not res!983925) (not e!817781))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1452738 (= res!983925 (validKeyInArray!0 (select (arr!47473 a!2862) j!93)))))

(declare-fun b!1452739 () Bool)

(declare-fun e!817779 () Bool)

(assert (=> b!1452739 (= e!817779 (validKeyInArray!0 lt!636994))))

(declare-fun b!1452740 () Bool)

(declare-fun res!983924 () Bool)

(declare-fun e!817778 () Bool)

(assert (=> b!1452740 (=> (not res!983924) (not e!817778))))

(declare-fun lt!636993 () SeekEntryResult!11748)

(assert (=> b!1452740 (= res!983924 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47473 a!2862) j!93) a!2862 mask!2687) lt!636993))))

(declare-fun b!1452741 () Bool)

(declare-fun e!817776 () Bool)

(assert (=> b!1452741 (= e!817778 e!817776)))

(declare-fun res!983921 () Bool)

(assert (=> b!1452741 (=> (not res!983921) (not e!817776))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452741 (= res!983921 (= lt!636997 (Intermediate!11748 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452741 (= lt!636997 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636994 mask!2687) lt!636994 lt!636996 mask!2687))))

(assert (=> b!1452741 (= lt!636994 (select (store (arr!47473 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452742 () Bool)

(declare-fun res!983926 () Bool)

(declare-fun e!817777 () Bool)

(assert (=> b!1452742 (=> (not res!983926) (not e!817777))))

(assert (=> b!1452742 (= res!983926 (= (seekEntryOrOpen!0 (select (arr!47473 a!2862) j!93) a!2862 mask!2687) (Found!11748 j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1452743 () Bool)

(assert (=> b!1452743 (= e!817777 (and (or (= (select (arr!47473 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47473 a!2862) intermediateBeforeIndex!19) (select (arr!47473 a!2862) j!93))) (or (and (= (select (arr!47473 a!2862) index!646) (select (store (arr!47473 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47473 a!2862) index!646) (select (arr!47473 a!2862) j!93))) (= (select (arr!47473 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47473 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452744 () Bool)

(declare-fun res!983919 () Bool)

(assert (=> b!1452744 (=> (not res!983919) (not e!817776))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452744 (= res!983919 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452745 () Bool)

(declare-fun res!983923 () Bool)

(assert (=> b!1452745 (=> (not res!983923) (not e!817781))))

(declare-datatypes ((List!34154 0))(
  ( (Nil!34151) (Cons!34150 (h!35500 (_ BitVec 64)) (t!48855 List!34154)) )
))
(declare-fun arrayNoDuplicates!0 (array!98379 (_ BitVec 32) List!34154) Bool)

(assert (=> b!1452745 (= res!983923 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34151))))

(declare-fun b!1452746 () Bool)

(declare-fun e!817780 () Bool)

(assert (=> b!1452746 (= e!817780 e!817778)))

(declare-fun res!983922 () Bool)

(assert (=> b!1452746 (=> (not res!983922) (not e!817778))))

(assert (=> b!1452746 (= res!983922 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47473 a!2862) j!93) mask!2687) (select (arr!47473 a!2862) j!93) a!2862 mask!2687) lt!636993))))

(assert (=> b!1452746 (= lt!636993 (Intermediate!11748 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452747 () Bool)

(declare-fun res!983929 () Bool)

(assert (=> b!1452747 (=> (not res!983929) (not e!817781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98379 (_ BitVec 32)) Bool)

(assert (=> b!1452747 (= res!983929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452748 () Bool)

(assert (=> b!1452748 (= e!817776 (not e!817779))))

(declare-fun res!983920 () Bool)

(assert (=> b!1452748 (=> res!983920 e!817779)))

(assert (=> b!1452748 (= res!983920 (or (and (= (select (arr!47473 a!2862) index!646) (select (store (arr!47473 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47473 a!2862) index!646) (select (arr!47473 a!2862) j!93))) (= (select (arr!47473 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(assert (=> b!1452748 e!817777))

(declare-fun res!983930 () Bool)

(assert (=> b!1452748 (=> (not res!983930) (not e!817777))))

(assert (=> b!1452748 (= res!983930 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48940 0))(
  ( (Unit!48941) )
))
(declare-fun lt!636995 () Unit!48940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98379 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48940)

(assert (=> b!1452748 (= lt!636995 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452749 () Bool)

(declare-fun res!983918 () Bool)

(assert (=> b!1452749 (=> (not res!983918) (not e!817781))))

(assert (=> b!1452749 (= res!983918 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48024 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48024 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48024 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!983916 () Bool)

(assert (=> start!125014 (=> (not res!983916) (not e!817781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125014 (= res!983916 (validMask!0 mask!2687))))

(assert (=> start!125014 e!817781))

(assert (=> start!125014 true))

(declare-fun array_inv!36418 (array!98379) Bool)

(assert (=> start!125014 (array_inv!36418 a!2862)))

(declare-fun b!1452737 () Bool)

(declare-fun res!983927 () Bool)

(assert (=> b!1452737 (=> (not res!983927) (not e!817781))))

(assert (=> b!1452737 (= res!983927 (and (= (size!48024 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48024 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48024 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452750 () Bool)

(assert (=> b!1452750 (= e!817781 e!817780)))

(declare-fun res!983931 () Bool)

(assert (=> b!1452750 (=> (not res!983931) (not e!817780))))

(assert (=> b!1452750 (= res!983931 (= (select (store (arr!47473 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452750 (= lt!636996 (array!98380 (store (arr!47473 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48024 a!2862)))))

(declare-fun b!1452751 () Bool)

(declare-fun res!983928 () Bool)

(assert (=> b!1452751 (=> (not res!983928) (not e!817776))))

(assert (=> b!1452751 (= res!983928 e!817775)))

(declare-fun c!133922 () Bool)

(assert (=> b!1452751 (= c!133922 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125014 res!983916) b!1452737))

(assert (= (and b!1452737 res!983927) b!1452735))

(assert (= (and b!1452735 res!983917) b!1452738))

(assert (= (and b!1452738 res!983925) b!1452747))

(assert (= (and b!1452747 res!983929) b!1452745))

(assert (= (and b!1452745 res!983923) b!1452749))

(assert (= (and b!1452749 res!983918) b!1452750))

(assert (= (and b!1452750 res!983931) b!1452746))

(assert (= (and b!1452746 res!983922) b!1452740))

(assert (= (and b!1452740 res!983924) b!1452741))

(assert (= (and b!1452741 res!983921) b!1452751))

(assert (= (and b!1452751 c!133922) b!1452734))

(assert (= (and b!1452751 (not c!133922)) b!1452736))

(assert (= (and b!1452751 res!983928) b!1452744))

(assert (= (and b!1452744 res!983919) b!1452748))

(assert (= (and b!1452748 res!983930) b!1452742))

(assert (= (and b!1452742 res!983926) b!1452743))

(assert (= (and b!1452748 (not res!983920)) b!1452739))

(declare-fun m!1341357 () Bool)

(assert (=> b!1452734 m!1341357))

(declare-fun m!1341359 () Bool)

(assert (=> b!1452742 m!1341359))

(assert (=> b!1452742 m!1341359))

(declare-fun m!1341361 () Bool)

(assert (=> b!1452742 m!1341361))

(declare-fun m!1341363 () Bool)

(assert (=> b!1452735 m!1341363))

(assert (=> b!1452735 m!1341363))

(declare-fun m!1341365 () Bool)

(assert (=> b!1452735 m!1341365))

(declare-fun m!1341367 () Bool)

(assert (=> start!125014 m!1341367))

(declare-fun m!1341369 () Bool)

(assert (=> start!125014 m!1341369))

(declare-fun m!1341371 () Bool)

(assert (=> b!1452750 m!1341371))

(declare-fun m!1341373 () Bool)

(assert (=> b!1452750 m!1341373))

(assert (=> b!1452740 m!1341359))

(assert (=> b!1452740 m!1341359))

(declare-fun m!1341375 () Bool)

(assert (=> b!1452740 m!1341375))

(declare-fun m!1341377 () Bool)

(assert (=> b!1452741 m!1341377))

(assert (=> b!1452741 m!1341377))

(declare-fun m!1341379 () Bool)

(assert (=> b!1452741 m!1341379))

(assert (=> b!1452741 m!1341371))

(declare-fun m!1341381 () Bool)

(assert (=> b!1452741 m!1341381))

(declare-fun m!1341383 () Bool)

(assert (=> b!1452747 m!1341383))

(declare-fun m!1341385 () Bool)

(assert (=> b!1452739 m!1341385))

(assert (=> b!1452746 m!1341359))

(assert (=> b!1452746 m!1341359))

(declare-fun m!1341387 () Bool)

(assert (=> b!1452746 m!1341387))

(assert (=> b!1452746 m!1341387))

(assert (=> b!1452746 m!1341359))

(declare-fun m!1341389 () Bool)

(assert (=> b!1452746 m!1341389))

(declare-fun m!1341391 () Bool)

(assert (=> b!1452745 m!1341391))

(declare-fun m!1341393 () Bool)

(assert (=> b!1452748 m!1341393))

(assert (=> b!1452748 m!1341371))

(declare-fun m!1341395 () Bool)

(assert (=> b!1452748 m!1341395))

(declare-fun m!1341397 () Bool)

(assert (=> b!1452748 m!1341397))

(declare-fun m!1341399 () Bool)

(assert (=> b!1452748 m!1341399))

(assert (=> b!1452748 m!1341359))

(assert (=> b!1452743 m!1341371))

(declare-fun m!1341401 () Bool)

(assert (=> b!1452743 m!1341401))

(assert (=> b!1452743 m!1341395))

(assert (=> b!1452743 m!1341397))

(assert (=> b!1452743 m!1341359))

(assert (=> b!1452738 m!1341359))

(assert (=> b!1452738 m!1341359))

(declare-fun m!1341403 () Bool)

(assert (=> b!1452738 m!1341403))

(declare-fun m!1341405 () Bool)

(assert (=> b!1452736 m!1341405))

(declare-fun m!1341407 () Bool)

(assert (=> b!1452736 m!1341407))

(push 1)

