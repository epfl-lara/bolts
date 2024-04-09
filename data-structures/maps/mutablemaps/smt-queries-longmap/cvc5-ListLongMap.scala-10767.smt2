; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125962 () Bool)

(assert start!125962)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!644211 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12120 0))(
  ( (MissingZero!12120 (index!50871 (_ BitVec 32))) (Found!12120 (index!50872 (_ BitVec 32))) (Intermediate!12120 (undefined!12932 Bool) (index!50873 (_ BitVec 32)) (x!132455 (_ BitVec 32))) (Undefined!12120) (MissingVacant!12120 (index!50874 (_ BitVec 32))) )
))
(declare-fun lt!644212 () SeekEntryResult!12120)

(declare-fun b!1474431 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!827291 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99156 0))(
  ( (array!99157 (arr!47857 (Array (_ BitVec 32) (_ BitVec 64))) (size!48408 (_ BitVec 32))) )
))
(declare-fun lt!644213 () array!99156)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99156 (_ BitVec 32)) SeekEntryResult!12120)

(assert (=> b!1474431 (= e!827291 (= lt!644212 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644211 lt!644213 mask!2687)))))

(declare-fun b!1474432 () Bool)

(declare-fun e!827289 () Bool)

(declare-fun e!827286 () Bool)

(assert (=> b!1474432 (= e!827289 e!827286)))

(declare-fun res!1001741 () Bool)

(assert (=> b!1474432 (=> (not res!1001741) (not e!827286))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474432 (= res!1001741 (= lt!644212 (Intermediate!12120 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474432 (= lt!644212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644211 mask!2687) lt!644211 lt!644213 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99156)

(assert (=> b!1474432 (= lt!644211 (select (store (arr!47857 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474434 () Bool)

(declare-fun res!1001745 () Bool)

(declare-fun e!827287 () Bool)

(assert (=> b!1474434 (=> (not res!1001745) (not e!827287))))

(assert (=> b!1474434 (= res!1001745 (and (= (size!48408 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48408 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48408 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474435 () Bool)

(declare-fun res!1001739 () Bool)

(assert (=> b!1474435 (=> (not res!1001739) (not e!827287))))

(declare-datatypes ((List!34538 0))(
  ( (Nil!34535) (Cons!34534 (h!35893 (_ BitVec 64)) (t!49239 List!34538)) )
))
(declare-fun arrayNoDuplicates!0 (array!99156 (_ BitVec 32) List!34538) Bool)

(assert (=> b!1474435 (= res!1001739 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34535))))

(declare-fun b!1474436 () Bool)

(declare-fun res!1001737 () Bool)

(assert (=> b!1474436 (=> (not res!1001737) (not e!827287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474436 (= res!1001737 (validKeyInArray!0 (select (arr!47857 a!2862) i!1006)))))

(declare-fun b!1474437 () Bool)

(declare-fun e!827288 () Bool)

(assert (=> b!1474437 (= e!827287 e!827288)))

(declare-fun res!1001738 () Bool)

(assert (=> b!1474437 (=> (not res!1001738) (not e!827288))))

(assert (=> b!1474437 (= res!1001738 (= (select (store (arr!47857 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474437 (= lt!644213 (array!99157 (store (arr!47857 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48408 a!2862)))))

(declare-fun e!827285 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1474438 () Bool)

(assert (=> b!1474438 (= e!827285 (or (= (select (arr!47857 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47857 a!2862) intermediateBeforeIndex!19) (select (arr!47857 a!2862) j!93))))))

(declare-fun b!1474439 () Bool)

(declare-fun res!1001742 () Bool)

(assert (=> b!1474439 (=> (not res!1001742) (not e!827289))))

(declare-fun lt!644215 () SeekEntryResult!12120)

(assert (=> b!1474439 (= res!1001742 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47857 a!2862) j!93) a!2862 mask!2687) lt!644215))))

(declare-fun b!1474440 () Bool)

(assert (=> b!1474440 (= e!827286 (not true))))

(assert (=> b!1474440 e!827285))

(declare-fun res!1001740 () Bool)

(assert (=> b!1474440 (=> (not res!1001740) (not e!827285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99156 (_ BitVec 32)) Bool)

(assert (=> b!1474440 (= res!1001740 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49528 0))(
  ( (Unit!49529) )
))
(declare-fun lt!644214 () Unit!49528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99156 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49528)

(assert (=> b!1474440 (= lt!644214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474441 () Bool)

(declare-fun res!1001734 () Bool)

(assert (=> b!1474441 (=> (not res!1001734) (not e!827285))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99156 (_ BitVec 32)) SeekEntryResult!12120)

(assert (=> b!1474441 (= res!1001734 (= (seekEntryOrOpen!0 (select (arr!47857 a!2862) j!93) a!2862 mask!2687) (Found!12120 j!93)))))

(declare-fun b!1474442 () Bool)

(declare-fun res!1001746 () Bool)

(assert (=> b!1474442 (=> (not res!1001746) (not e!827286))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474442 (= res!1001746 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474443 () Bool)

(declare-fun res!1001747 () Bool)

(assert (=> b!1474443 (=> (not res!1001747) (not e!827287))))

(assert (=> b!1474443 (= res!1001747 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48408 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48408 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48408 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474444 () Bool)

(assert (=> b!1474444 (= e!827288 e!827289)))

(declare-fun res!1001748 () Bool)

(assert (=> b!1474444 (=> (not res!1001748) (not e!827289))))

(assert (=> b!1474444 (= res!1001748 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47857 a!2862) j!93) mask!2687) (select (arr!47857 a!2862) j!93) a!2862 mask!2687) lt!644215))))

(assert (=> b!1474444 (= lt!644215 (Intermediate!12120 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474445 () Bool)

(declare-fun res!1001735 () Bool)

(assert (=> b!1474445 (=> (not res!1001735) (not e!827287))))

(assert (=> b!1474445 (= res!1001735 (validKeyInArray!0 (select (arr!47857 a!2862) j!93)))))

(declare-fun b!1474433 () Bool)

(declare-fun res!1001744 () Bool)

(assert (=> b!1474433 (=> (not res!1001744) (not e!827287))))

(assert (=> b!1474433 (= res!1001744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1001743 () Bool)

(assert (=> start!125962 (=> (not res!1001743) (not e!827287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125962 (= res!1001743 (validMask!0 mask!2687))))

(assert (=> start!125962 e!827287))

(assert (=> start!125962 true))

(declare-fun array_inv!36802 (array!99156) Bool)

(assert (=> start!125962 (array_inv!36802 a!2862)))

(declare-fun b!1474446 () Bool)

(declare-fun res!1001736 () Bool)

(assert (=> b!1474446 (=> (not res!1001736) (not e!827286))))

(assert (=> b!1474446 (= res!1001736 e!827291)))

(declare-fun c!135866 () Bool)

(assert (=> b!1474446 (= c!135866 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474447 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99156 (_ BitVec 32)) SeekEntryResult!12120)

(assert (=> b!1474447 (= e!827291 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644211 lt!644213 mask!2687) (seekEntryOrOpen!0 lt!644211 lt!644213 mask!2687)))))

(assert (= (and start!125962 res!1001743) b!1474434))

(assert (= (and b!1474434 res!1001745) b!1474436))

(assert (= (and b!1474436 res!1001737) b!1474445))

(assert (= (and b!1474445 res!1001735) b!1474433))

(assert (= (and b!1474433 res!1001744) b!1474435))

(assert (= (and b!1474435 res!1001739) b!1474443))

(assert (= (and b!1474443 res!1001747) b!1474437))

(assert (= (and b!1474437 res!1001738) b!1474444))

(assert (= (and b!1474444 res!1001748) b!1474439))

(assert (= (and b!1474439 res!1001742) b!1474432))

(assert (= (and b!1474432 res!1001741) b!1474446))

(assert (= (and b!1474446 c!135866) b!1474431))

(assert (= (and b!1474446 (not c!135866)) b!1474447))

(assert (= (and b!1474446 res!1001736) b!1474442))

(assert (= (and b!1474442 res!1001746) b!1474440))

(assert (= (and b!1474440 res!1001740) b!1474441))

(assert (= (and b!1474441 res!1001734) b!1474438))

(declare-fun m!1360929 () Bool)

(assert (=> b!1474435 m!1360929))

(declare-fun m!1360931 () Bool)

(assert (=> b!1474431 m!1360931))

(declare-fun m!1360933 () Bool)

(assert (=> b!1474445 m!1360933))

(assert (=> b!1474445 m!1360933))

(declare-fun m!1360935 () Bool)

(assert (=> b!1474445 m!1360935))

(declare-fun m!1360937 () Bool)

(assert (=> start!125962 m!1360937))

(declare-fun m!1360939 () Bool)

(assert (=> start!125962 m!1360939))

(declare-fun m!1360941 () Bool)

(assert (=> b!1474432 m!1360941))

(assert (=> b!1474432 m!1360941))

(declare-fun m!1360943 () Bool)

(assert (=> b!1474432 m!1360943))

(declare-fun m!1360945 () Bool)

(assert (=> b!1474432 m!1360945))

(declare-fun m!1360947 () Bool)

(assert (=> b!1474432 m!1360947))

(declare-fun m!1360949 () Bool)

(assert (=> b!1474438 m!1360949))

(assert (=> b!1474438 m!1360933))

(assert (=> b!1474437 m!1360945))

(declare-fun m!1360951 () Bool)

(assert (=> b!1474437 m!1360951))

(declare-fun m!1360953 () Bool)

(assert (=> b!1474433 m!1360953))

(assert (=> b!1474441 m!1360933))

(assert (=> b!1474441 m!1360933))

(declare-fun m!1360955 () Bool)

(assert (=> b!1474441 m!1360955))

(assert (=> b!1474444 m!1360933))

(assert (=> b!1474444 m!1360933))

(declare-fun m!1360957 () Bool)

(assert (=> b!1474444 m!1360957))

(assert (=> b!1474444 m!1360957))

(assert (=> b!1474444 m!1360933))

(declare-fun m!1360959 () Bool)

(assert (=> b!1474444 m!1360959))

(assert (=> b!1474439 m!1360933))

(assert (=> b!1474439 m!1360933))

(declare-fun m!1360961 () Bool)

(assert (=> b!1474439 m!1360961))

(declare-fun m!1360963 () Bool)

(assert (=> b!1474440 m!1360963))

(declare-fun m!1360965 () Bool)

(assert (=> b!1474440 m!1360965))

(declare-fun m!1360967 () Bool)

(assert (=> b!1474447 m!1360967))

(declare-fun m!1360969 () Bool)

(assert (=> b!1474447 m!1360969))

(declare-fun m!1360971 () Bool)

(assert (=> b!1474436 m!1360971))

(assert (=> b!1474436 m!1360971))

(declare-fun m!1360973 () Bool)

(assert (=> b!1474436 m!1360973))

(push 1)

