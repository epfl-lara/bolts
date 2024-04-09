; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125930 () Bool)

(assert start!125930)

(declare-fun res!1000991 () Bool)

(declare-fun e!826928 () Bool)

(assert (=> start!125930 (=> (not res!1000991) (not e!826928))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125930 (= res!1000991 (validMask!0 mask!2687))))

(assert (=> start!125930 e!826928))

(assert (=> start!125930 true))

(declare-datatypes ((array!99124 0))(
  ( (array!99125 (arr!47841 (Array (_ BitVec 32) (_ BitVec 64))) (size!48392 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99124)

(declare-fun array_inv!36786 (array!99124) Bool)

(assert (=> start!125930 (array_inv!36786 a!2862)))

(declare-fun lt!643948 () array!99124)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!826924 () Bool)

(declare-fun b!1473587 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!643946 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12104 0))(
  ( (MissingZero!12104 (index!50807 (_ BitVec 32))) (Found!12104 (index!50808 (_ BitVec 32))) (Intermediate!12104 (undefined!12916 Bool) (index!50809 (_ BitVec 32)) (x!132391 (_ BitVec 32))) (Undefined!12104) (MissingVacant!12104 (index!50810 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99124 (_ BitVec 32)) SeekEntryResult!12104)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99124 (_ BitVec 32)) SeekEntryResult!12104)

(assert (=> b!1473587 (= e!826924 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643946 lt!643948 mask!2687) (seekEntryOrOpen!0 lt!643946 lt!643948 mask!2687)))))

(declare-fun b!1473588 () Bool)

(declare-fun res!1000987 () Bool)

(declare-fun e!826921 () Bool)

(assert (=> b!1473588 (=> (not res!1000987) (not e!826921))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!643943 () SeekEntryResult!12104)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99124 (_ BitVec 32)) SeekEntryResult!12104)

(assert (=> b!1473588 (= res!1000987 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47841 a!2862) j!93) a!2862 mask!2687) lt!643943))))

(declare-fun b!1473589 () Bool)

(declare-fun e!826927 () Bool)

(assert (=> b!1473589 (= e!826927 true)))

(declare-fun lt!643944 () SeekEntryResult!12104)

(assert (=> b!1473589 (= lt!643944 (seekEntryOrOpen!0 lt!643946 lt!643948 mask!2687))))

(declare-fun e!826926 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1473590 () Bool)

(assert (=> b!1473590 (= e!826926 (or (= (select (arr!47841 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47841 a!2862) intermediateBeforeIndex!19) (select (arr!47841 a!2862) j!93))))))

(declare-fun b!1473591 () Bool)

(declare-fun res!1000997 () Bool)

(assert (=> b!1473591 (=> (not res!1000997) (not e!826928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99124 (_ BitVec 32)) Bool)

(assert (=> b!1473591 (= res!1000997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473592 () Bool)

(declare-fun res!1000989 () Bool)

(declare-fun e!826922 () Bool)

(assert (=> b!1473592 (=> (not res!1000989) (not e!826922))))

(assert (=> b!1473592 (= res!1000989 e!826924)))

(declare-fun c!135818 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1473592 (= c!135818 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473593 () Bool)

(assert (=> b!1473593 (= e!826921 e!826922)))

(declare-fun res!1000993 () Bool)

(assert (=> b!1473593 (=> (not res!1000993) (not e!826922))))

(declare-fun lt!643947 () SeekEntryResult!12104)

(assert (=> b!1473593 (= res!1000993 (= lt!643947 (Intermediate!12104 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473593 (= lt!643947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643946 mask!2687) lt!643946 lt!643948 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473593 (= lt!643946 (select (store (arr!47841 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473594 () Bool)

(declare-fun e!826925 () Bool)

(assert (=> b!1473594 (= e!826925 e!826921)))

(declare-fun res!1000996 () Bool)

(assert (=> b!1473594 (=> (not res!1000996) (not e!826921))))

(assert (=> b!1473594 (= res!1000996 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47841 a!2862) j!93) mask!2687) (select (arr!47841 a!2862) j!93) a!2862 mask!2687) lt!643943))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473594 (= lt!643943 (Intermediate!12104 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473595 () Bool)

(declare-fun res!1000988 () Bool)

(assert (=> b!1473595 (=> (not res!1000988) (not e!826928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473595 (= res!1000988 (validKeyInArray!0 (select (arr!47841 a!2862) i!1006)))))

(declare-fun b!1473596 () Bool)

(declare-fun res!1000990 () Bool)

(assert (=> b!1473596 (=> (not res!1000990) (not e!826922))))

(assert (=> b!1473596 (= res!1000990 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473597 () Bool)

(assert (=> b!1473597 (= e!826928 e!826925)))

(declare-fun res!1001001 () Bool)

(assert (=> b!1473597 (=> (not res!1001001) (not e!826925))))

(assert (=> b!1473597 (= res!1001001 (= (select (store (arr!47841 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473597 (= lt!643948 (array!99125 (store (arr!47841 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48392 a!2862)))))

(declare-fun b!1473598 () Bool)

(declare-fun res!1000995 () Bool)

(assert (=> b!1473598 (=> (not res!1000995) (not e!826926))))

(assert (=> b!1473598 (= res!1000995 (= (seekEntryOrOpen!0 (select (arr!47841 a!2862) j!93) a!2862 mask!2687) (Found!12104 j!93)))))

(declare-fun b!1473599 () Bool)

(declare-fun res!1000986 () Bool)

(assert (=> b!1473599 (=> (not res!1000986) (not e!826928))))

(declare-datatypes ((List!34522 0))(
  ( (Nil!34519) (Cons!34518 (h!35877 (_ BitVec 64)) (t!49223 List!34522)) )
))
(declare-fun arrayNoDuplicates!0 (array!99124 (_ BitVec 32) List!34522) Bool)

(assert (=> b!1473599 (= res!1000986 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34519))))

(declare-fun b!1473600 () Bool)

(declare-fun res!1000998 () Bool)

(assert (=> b!1473600 (=> (not res!1000998) (not e!826928))))

(assert (=> b!1473600 (= res!1000998 (and (= (size!48392 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48392 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48392 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473601 () Bool)

(declare-fun res!1000999 () Bool)

(assert (=> b!1473601 (=> (not res!1000999) (not e!826928))))

(assert (=> b!1473601 (= res!1000999 (validKeyInArray!0 (select (arr!47841 a!2862) j!93)))))

(declare-fun b!1473602 () Bool)

(assert (=> b!1473602 (= e!826922 (not e!826927))))

(declare-fun res!1000994 () Bool)

(assert (=> b!1473602 (=> res!1000994 e!826927)))

(assert (=> b!1473602 (= res!1000994 (or (not (= (select (arr!47841 a!2862) index!646) (select (store (arr!47841 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47841 a!2862) index!646) (select (arr!47841 a!2862) j!93)))))))

(assert (=> b!1473602 e!826926))

(declare-fun res!1000992 () Bool)

(assert (=> b!1473602 (=> (not res!1000992) (not e!826926))))

(assert (=> b!1473602 (= res!1000992 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49496 0))(
  ( (Unit!49497) )
))
(declare-fun lt!643945 () Unit!49496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49496)

(assert (=> b!1473602 (= lt!643945 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473603 () Bool)

(assert (=> b!1473603 (= e!826924 (= lt!643947 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643946 lt!643948 mask!2687)))))

(declare-fun b!1473604 () Bool)

(declare-fun res!1001000 () Bool)

(assert (=> b!1473604 (=> (not res!1001000) (not e!826928))))

(assert (=> b!1473604 (= res!1001000 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48392 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48392 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48392 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125930 res!1000991) b!1473600))

(assert (= (and b!1473600 res!1000998) b!1473595))

(assert (= (and b!1473595 res!1000988) b!1473601))

(assert (= (and b!1473601 res!1000999) b!1473591))

(assert (= (and b!1473591 res!1000997) b!1473599))

(assert (= (and b!1473599 res!1000986) b!1473604))

(assert (= (and b!1473604 res!1001000) b!1473597))

(assert (= (and b!1473597 res!1001001) b!1473594))

(assert (= (and b!1473594 res!1000996) b!1473588))

(assert (= (and b!1473588 res!1000987) b!1473593))

(assert (= (and b!1473593 res!1000993) b!1473592))

(assert (= (and b!1473592 c!135818) b!1473603))

(assert (= (and b!1473592 (not c!135818)) b!1473587))

(assert (= (and b!1473592 res!1000989) b!1473596))

(assert (= (and b!1473596 res!1000990) b!1473602))

(assert (= (and b!1473602 res!1000992) b!1473598))

(assert (= (and b!1473598 res!1000995) b!1473590))

(assert (= (and b!1473602 (not res!1000994)) b!1473589))

(declare-fun m!1360153 () Bool)

(assert (=> b!1473589 m!1360153))

(declare-fun m!1360155 () Bool)

(assert (=> b!1473587 m!1360155))

(assert (=> b!1473587 m!1360153))

(declare-fun m!1360157 () Bool)

(assert (=> b!1473602 m!1360157))

(declare-fun m!1360159 () Bool)

(assert (=> b!1473602 m!1360159))

(declare-fun m!1360161 () Bool)

(assert (=> b!1473602 m!1360161))

(declare-fun m!1360163 () Bool)

(assert (=> b!1473602 m!1360163))

(declare-fun m!1360165 () Bool)

(assert (=> b!1473602 m!1360165))

(declare-fun m!1360167 () Bool)

(assert (=> b!1473602 m!1360167))

(assert (=> b!1473588 m!1360167))

(assert (=> b!1473588 m!1360167))

(declare-fun m!1360169 () Bool)

(assert (=> b!1473588 m!1360169))

(declare-fun m!1360171 () Bool)

(assert (=> b!1473595 m!1360171))

(assert (=> b!1473595 m!1360171))

(declare-fun m!1360173 () Bool)

(assert (=> b!1473595 m!1360173))

(declare-fun m!1360175 () Bool)

(assert (=> start!125930 m!1360175))

(declare-fun m!1360177 () Bool)

(assert (=> start!125930 m!1360177))

(assert (=> b!1473601 m!1360167))

(assert (=> b!1473601 m!1360167))

(declare-fun m!1360179 () Bool)

(assert (=> b!1473601 m!1360179))

(declare-fun m!1360181 () Bool)

(assert (=> b!1473593 m!1360181))

(assert (=> b!1473593 m!1360181))

(declare-fun m!1360183 () Bool)

(assert (=> b!1473593 m!1360183))

(assert (=> b!1473593 m!1360159))

(declare-fun m!1360185 () Bool)

(assert (=> b!1473593 m!1360185))

(assert (=> b!1473594 m!1360167))

(assert (=> b!1473594 m!1360167))

(declare-fun m!1360187 () Bool)

(assert (=> b!1473594 m!1360187))

(assert (=> b!1473594 m!1360187))

(assert (=> b!1473594 m!1360167))

(declare-fun m!1360189 () Bool)

(assert (=> b!1473594 m!1360189))

(assert (=> b!1473598 m!1360167))

(assert (=> b!1473598 m!1360167))

(declare-fun m!1360191 () Bool)

(assert (=> b!1473598 m!1360191))

(assert (=> b!1473597 m!1360159))

(declare-fun m!1360193 () Bool)

(assert (=> b!1473597 m!1360193))

(declare-fun m!1360195 () Bool)

(assert (=> b!1473603 m!1360195))

(declare-fun m!1360197 () Bool)

(assert (=> b!1473591 m!1360197))

(declare-fun m!1360199 () Bool)

(assert (=> b!1473599 m!1360199))

(declare-fun m!1360201 () Bool)

(assert (=> b!1473590 m!1360201))

(assert (=> b!1473590 m!1360167))

(push 1)

