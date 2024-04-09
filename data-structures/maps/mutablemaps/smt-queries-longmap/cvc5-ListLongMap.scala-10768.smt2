; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125968 () Bool)

(assert start!125968)

(declare-fun b!1474582 () Bool)

(declare-fun e!827354 () Bool)

(declare-fun e!827348 () Bool)

(assert (=> b!1474582 (= e!827354 e!827348)))

(declare-fun res!1001867 () Bool)

(assert (=> b!1474582 (=> (not res!1001867) (not e!827348))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99162 0))(
  ( (array!99163 (arr!47860 (Array (_ BitVec 32) (_ BitVec 64))) (size!48411 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99162)

(assert (=> b!1474582 (= res!1001867 (= (select (store (arr!47860 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!644259 () array!99162)

(assert (=> b!1474582 (= lt!644259 (array!99163 (store (arr!47860 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48411 a!2862)))))

(declare-fun b!1474583 () Bool)

(declare-fun res!1001869 () Bool)

(assert (=> b!1474583 (=> (not res!1001869) (not e!827354))))

(declare-datatypes ((List!34541 0))(
  ( (Nil!34538) (Cons!34537 (h!35896 (_ BitVec 64)) (t!49242 List!34541)) )
))
(declare-fun arrayNoDuplicates!0 (array!99162 (_ BitVec 32) List!34541) Bool)

(assert (=> b!1474583 (= res!1001869 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34538))))

(declare-fun b!1474584 () Bool)

(declare-fun res!1001880 () Bool)

(declare-fun e!827349 () Bool)

(assert (=> b!1474584 (=> (not res!1001880) (not e!827349))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12123 0))(
  ( (MissingZero!12123 (index!50883 (_ BitVec 32))) (Found!12123 (index!50884 (_ BitVec 32))) (Intermediate!12123 (undefined!12935 Bool) (index!50885 (_ BitVec 32)) (x!132466 (_ BitVec 32))) (Undefined!12123) (MissingVacant!12123 (index!50886 (_ BitVec 32))) )
))
(declare-fun lt!644263 () SeekEntryResult!12123)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99162 (_ BitVec 32)) SeekEntryResult!12123)

(assert (=> b!1474584 (= res!1001880 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47860 a!2862) j!93) a!2862 mask!2687) lt!644263))))

(declare-fun b!1474585 () Bool)

(assert (=> b!1474585 (= e!827348 e!827349)))

(declare-fun res!1001876 () Bool)

(assert (=> b!1474585 (=> (not res!1001876) (not e!827349))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474585 (= res!1001876 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687) (select (arr!47860 a!2862) j!93) a!2862 mask!2687) lt!644263))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474585 (= lt!644263 (Intermediate!12123 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474586 () Bool)

(declare-fun res!1001870 () Bool)

(assert (=> b!1474586 (=> (not res!1001870) (not e!827354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474586 (= res!1001870 (validKeyInArray!0 (select (arr!47860 a!2862) j!93)))))

(declare-fun b!1474587 () Bool)

(declare-fun lt!644261 () SeekEntryResult!12123)

(declare-fun lt!644262 () (_ BitVec 64))

(declare-fun e!827350 () Bool)

(assert (=> b!1474587 (= e!827350 (= lt!644261 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644262 lt!644259 mask!2687)))))

(declare-fun res!1001868 () Bool)

(assert (=> start!125968 (=> (not res!1001868) (not e!827354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125968 (= res!1001868 (validMask!0 mask!2687))))

(assert (=> start!125968 e!827354))

(assert (=> start!125968 true))

(declare-fun array_inv!36805 (array!99162) Bool)

(assert (=> start!125968 (array_inv!36805 a!2862)))

(declare-fun b!1474588 () Bool)

(declare-fun res!1001872 () Bool)

(declare-fun e!827351 () Bool)

(assert (=> b!1474588 (=> (not res!1001872) (not e!827351))))

(assert (=> b!1474588 (= res!1001872 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474589 () Bool)

(declare-fun res!1001875 () Bool)

(assert (=> b!1474589 (=> (not res!1001875) (not e!827354))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474589 (= res!1001875 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48411 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48411 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48411 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474590 () Bool)

(declare-fun res!1001877 () Bool)

(assert (=> b!1474590 (=> (not res!1001877) (not e!827354))))

(assert (=> b!1474590 (= res!1001877 (validKeyInArray!0 (select (arr!47860 a!2862) i!1006)))))

(declare-fun b!1474591 () Bool)

(declare-fun e!827352 () Bool)

(declare-fun lt!644258 () SeekEntryResult!12123)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99162 (_ BitVec 32)) SeekEntryResult!12123)

(assert (=> b!1474591 (= e!827352 (= lt!644258 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47860 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1474592 () Bool)

(declare-fun res!1001873 () Bool)

(assert (=> b!1474592 (=> (not res!1001873) (not e!827351))))

(assert (=> b!1474592 (= res!1001873 e!827350)))

(declare-fun c!135875 () Bool)

(assert (=> b!1474592 (= c!135875 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474593 () Bool)

(assert (=> b!1474593 (= e!827351 (not e!827352))))

(declare-fun res!1001871 () Bool)

(assert (=> b!1474593 (=> res!1001871 e!827352)))

(assert (=> b!1474593 (= res!1001871 (or (and (= (select (arr!47860 a!2862) index!646) (select (store (arr!47860 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47860 a!2862) index!646) (select (arr!47860 a!2862) j!93))) (not (= (select (arr!47860 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474593 (and (= lt!644258 (Found!12123 j!93)) (or (= (select (arr!47860 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47860 a!2862) intermediateBeforeIndex!19) (select (arr!47860 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99162 (_ BitVec 32)) SeekEntryResult!12123)

(assert (=> b!1474593 (= lt!644258 (seekEntryOrOpen!0 (select (arr!47860 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99162 (_ BitVec 32)) Bool)

(assert (=> b!1474593 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49534 0))(
  ( (Unit!49535) )
))
(declare-fun lt!644260 () Unit!49534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99162 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49534)

(assert (=> b!1474593 (= lt!644260 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474594 () Bool)

(declare-fun res!1001874 () Bool)

(assert (=> b!1474594 (=> (not res!1001874) (not e!827354))))

(assert (=> b!1474594 (= res!1001874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474595 () Bool)

(assert (=> b!1474595 (= e!827350 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644262 lt!644259 mask!2687) (seekEntryOrOpen!0 lt!644262 lt!644259 mask!2687)))))

(declare-fun b!1474596 () Bool)

(assert (=> b!1474596 (= e!827349 e!827351)))

(declare-fun res!1001878 () Bool)

(assert (=> b!1474596 (=> (not res!1001878) (not e!827351))))

(assert (=> b!1474596 (= res!1001878 (= lt!644261 (Intermediate!12123 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1474596 (= lt!644261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644262 mask!2687) lt!644262 lt!644259 mask!2687))))

(assert (=> b!1474596 (= lt!644262 (select (store (arr!47860 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474597 () Bool)

(declare-fun res!1001879 () Bool)

(assert (=> b!1474597 (=> (not res!1001879) (not e!827354))))

(assert (=> b!1474597 (= res!1001879 (and (= (size!48411 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48411 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48411 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125968 res!1001868) b!1474597))

(assert (= (and b!1474597 res!1001879) b!1474590))

(assert (= (and b!1474590 res!1001877) b!1474586))

(assert (= (and b!1474586 res!1001870) b!1474594))

(assert (= (and b!1474594 res!1001874) b!1474583))

(assert (= (and b!1474583 res!1001869) b!1474589))

(assert (= (and b!1474589 res!1001875) b!1474582))

(assert (= (and b!1474582 res!1001867) b!1474585))

(assert (= (and b!1474585 res!1001876) b!1474584))

(assert (= (and b!1474584 res!1001880) b!1474596))

(assert (= (and b!1474596 res!1001878) b!1474592))

(assert (= (and b!1474592 c!135875) b!1474587))

(assert (= (and b!1474592 (not c!135875)) b!1474595))

(assert (= (and b!1474592 res!1001873) b!1474588))

(assert (= (and b!1474588 res!1001872) b!1474593))

(assert (= (and b!1474593 (not res!1001871)) b!1474591))

(declare-fun m!1361067 () Bool)

(assert (=> b!1474582 m!1361067))

(declare-fun m!1361069 () Bool)

(assert (=> b!1474582 m!1361069))

(declare-fun m!1361071 () Bool)

(assert (=> b!1474584 m!1361071))

(assert (=> b!1474584 m!1361071))

(declare-fun m!1361073 () Bool)

(assert (=> b!1474584 m!1361073))

(declare-fun m!1361075 () Bool)

(assert (=> b!1474596 m!1361075))

(assert (=> b!1474596 m!1361075))

(declare-fun m!1361077 () Bool)

(assert (=> b!1474596 m!1361077))

(assert (=> b!1474596 m!1361067))

(declare-fun m!1361079 () Bool)

(assert (=> b!1474596 m!1361079))

(declare-fun m!1361081 () Bool)

(assert (=> b!1474590 m!1361081))

(assert (=> b!1474590 m!1361081))

(declare-fun m!1361083 () Bool)

(assert (=> b!1474590 m!1361083))

(assert (=> b!1474591 m!1361071))

(assert (=> b!1474591 m!1361071))

(declare-fun m!1361085 () Bool)

(assert (=> b!1474591 m!1361085))

(declare-fun m!1361087 () Bool)

(assert (=> b!1474593 m!1361087))

(assert (=> b!1474593 m!1361067))

(declare-fun m!1361089 () Bool)

(assert (=> b!1474593 m!1361089))

(declare-fun m!1361091 () Bool)

(assert (=> b!1474593 m!1361091))

(declare-fun m!1361093 () Bool)

(assert (=> b!1474593 m!1361093))

(assert (=> b!1474593 m!1361071))

(declare-fun m!1361095 () Bool)

(assert (=> b!1474593 m!1361095))

(declare-fun m!1361097 () Bool)

(assert (=> b!1474593 m!1361097))

(assert (=> b!1474593 m!1361071))

(declare-fun m!1361099 () Bool)

(assert (=> b!1474587 m!1361099))

(declare-fun m!1361101 () Bool)

(assert (=> b!1474594 m!1361101))

(assert (=> b!1474586 m!1361071))

(assert (=> b!1474586 m!1361071))

(declare-fun m!1361103 () Bool)

(assert (=> b!1474586 m!1361103))

(declare-fun m!1361105 () Bool)

(assert (=> start!125968 m!1361105))

(declare-fun m!1361107 () Bool)

(assert (=> start!125968 m!1361107))

(assert (=> b!1474585 m!1361071))

(assert (=> b!1474585 m!1361071))

(declare-fun m!1361109 () Bool)

(assert (=> b!1474585 m!1361109))

(assert (=> b!1474585 m!1361109))

(assert (=> b!1474585 m!1361071))

(declare-fun m!1361111 () Bool)

(assert (=> b!1474585 m!1361111))

(declare-fun m!1361113 () Bool)

(assert (=> b!1474583 m!1361113))

(declare-fun m!1361115 () Bool)

(assert (=> b!1474595 m!1361115))

(declare-fun m!1361117 () Bool)

(assert (=> b!1474595 m!1361117))

(push 1)

(assert (not b!1474593))

(assert (not b!1474590))

(assert (not b!1474591))

(assert (not start!125968))

(assert (not b!1474587))

(assert (not b!1474585))

(assert (not b!1474586))

(assert (not b!1474583))

(assert (not b!1474594))

(assert (not b!1474584))

(assert (not b!1474595))

(assert (not b!1474596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1474818 () Bool)

(declare-fun lt!644354 () SeekEntryResult!12123)

(assert (=> b!1474818 (and (bvsge (index!50885 lt!644354) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644354) (size!48411 lt!644259)))))

(declare-fun e!827471 () Bool)

(assert (=> b!1474818 (= e!827471 (= (select (arr!47860 lt!644259) (index!50885 lt!644354)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1474819 () Bool)

(declare-fun e!827467 () SeekEntryResult!12123)

(assert (=> b!1474819 (= e!827467 (Intermediate!12123 false index!646 x!665))))

(declare-fun b!1474820 () Bool)

(declare-fun e!827470 () SeekEntryResult!12123)

(assert (=> b!1474820 (= e!827470 (Intermediate!12123 true index!646 x!665))))

(declare-fun b!1474821 () Bool)

(declare-fun e!827469 () Bool)

(assert (=> b!1474821 (= e!827469 (bvsge (x!132466 lt!644354) #b01111111111111111111111111111110))))

(declare-fun b!1474822 () Bool)

(assert (=> b!1474822 (= e!827470 e!827467)))

(declare-fun c!135928 () Bool)

(declare-fun lt!644355 () (_ BitVec 64))

(assert (=> b!1474822 (= c!135928 (or (= lt!644355 lt!644262) (= (bvadd lt!644355 lt!644355) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474823 () Bool)

(assert (=> b!1474823 (and (bvsge (index!50885 lt!644354) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644354) (size!48411 lt!644259)))))

(declare-fun res!1001999 () Bool)

(assert (=> b!1474823 (= res!1001999 (= (select (arr!47860 lt!644259) (index!50885 lt!644354)) lt!644262))))

(assert (=> b!1474823 (=> res!1001999 e!827471)))

(declare-fun e!827468 () Bool)

(assert (=> b!1474823 (= e!827468 e!827471)))

(declare-fun d!155615 () Bool)

(assert (=> d!155615 e!827469))

(declare-fun c!135930 () Bool)

(assert (=> d!155615 (= c!135930 (and (is-Intermediate!12123 lt!644354) (undefined!12935 lt!644354)))))

(assert (=> d!155615 (= lt!644354 e!827470)))

(declare-fun c!135929 () Bool)

(assert (=> d!155615 (= c!135929 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155615 (= lt!644355 (select (arr!47860 lt!644259) index!646))))

(assert (=> d!155615 (validMask!0 mask!2687)))

(assert (=> d!155615 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644262 lt!644259 mask!2687) lt!644354)))

(declare-fun b!1474824 () Bool)

(assert (=> b!1474824 (= e!827469 e!827468)))

(declare-fun res!1001998 () Bool)

(assert (=> b!1474824 (= res!1001998 (and (is-Intermediate!12123 lt!644354) (not (undefined!12935 lt!644354)) (bvslt (x!132466 lt!644354) #b01111111111111111111111111111110) (bvsge (x!132466 lt!644354) #b00000000000000000000000000000000) (bvsge (x!132466 lt!644354) x!665)))))

(assert (=> b!1474824 (=> (not res!1001998) (not e!827468))))

(declare-fun b!1474825 () Bool)

(assert (=> b!1474825 (and (bvsge (index!50885 lt!644354) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644354) (size!48411 lt!644259)))))

(declare-fun res!1002000 () Bool)

(assert (=> b!1474825 (= res!1002000 (= (select (arr!47860 lt!644259) (index!50885 lt!644354)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474825 (=> res!1002000 e!827471)))

(declare-fun b!1474826 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474826 (= e!827467 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644262 lt!644259 mask!2687))))

(assert (= (and d!155615 c!135929) b!1474820))

(assert (= (and d!155615 (not c!135929)) b!1474822))

(assert (= (and b!1474822 c!135928) b!1474819))

(assert (= (and b!1474822 (not c!135928)) b!1474826))

(assert (= (and d!155615 c!135930) b!1474821))

(assert (= (and d!155615 (not c!135930)) b!1474824))

(assert (= (and b!1474824 res!1001998) b!1474823))

(assert (= (and b!1474823 (not res!1001999)) b!1474825))

(assert (= (and b!1474825 (not res!1002000)) b!1474818))

(declare-fun m!1361287 () Bool)

(assert (=> b!1474826 m!1361287))

(assert (=> b!1474826 m!1361287))

(declare-fun m!1361289 () Bool)

(assert (=> b!1474826 m!1361289))

(declare-fun m!1361291 () Bool)

(assert (=> b!1474818 m!1361291))

(assert (=> b!1474823 m!1361291))

(assert (=> b!1474825 m!1361291))

(declare-fun m!1361293 () Bool)

(assert (=> d!155615 m!1361293))

(assert (=> d!155615 m!1361105))

(assert (=> b!1474587 d!155615))

(declare-fun d!155627 () Bool)

(assert (=> d!155627 (= (validKeyInArray!0 (select (arr!47860 a!2862) j!93)) (and (not (= (select (arr!47860 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47860 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474586 d!155627))

(declare-fun b!1474839 () Bool)

(declare-fun lt!644360 () SeekEntryResult!12123)

(assert (=> b!1474839 (and (bvsge (index!50885 lt!644360) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644360) (size!48411 lt!644259)))))

(declare-fun e!827482 () Bool)

(assert (=> b!1474839 (= e!827482 (= (select (arr!47860 lt!644259) (index!50885 lt!644360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1474840 () Bool)

(declare-fun e!827478 () SeekEntryResult!12123)

(assert (=> b!1474840 (= e!827478 (Intermediate!12123 false (toIndex!0 lt!644262 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474841 () Bool)

(declare-fun e!827481 () SeekEntryResult!12123)

(assert (=> b!1474841 (= e!827481 (Intermediate!12123 true (toIndex!0 lt!644262 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474842 () Bool)

(declare-fun e!827480 () Bool)

(assert (=> b!1474842 (= e!827480 (bvsge (x!132466 lt!644360) #b01111111111111111111111111111110))))

(declare-fun b!1474843 () Bool)

(assert (=> b!1474843 (= e!827481 e!827478)))

(declare-fun c!135937 () Bool)

(declare-fun lt!644361 () (_ BitVec 64))

(assert (=> b!1474843 (= c!135937 (or (= lt!644361 lt!644262) (= (bvadd lt!644361 lt!644361) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474844 () Bool)

(assert (=> b!1474844 (and (bvsge (index!50885 lt!644360) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644360) (size!48411 lt!644259)))))

(declare-fun res!1002002 () Bool)

(assert (=> b!1474844 (= res!1002002 (= (select (arr!47860 lt!644259) (index!50885 lt!644360)) lt!644262))))

(assert (=> b!1474844 (=> res!1002002 e!827482)))

(declare-fun e!827479 () Bool)

(assert (=> b!1474844 (= e!827479 e!827482)))

(declare-fun d!155629 () Bool)

(assert (=> d!155629 e!827480))

(declare-fun c!135939 () Bool)

(assert (=> d!155629 (= c!135939 (and (is-Intermediate!12123 lt!644360) (undefined!12935 lt!644360)))))

(assert (=> d!155629 (= lt!644360 e!827481)))

(declare-fun c!135938 () Bool)

(assert (=> d!155629 (= c!135938 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155629 (= lt!644361 (select (arr!47860 lt!644259) (toIndex!0 lt!644262 mask!2687)))))

(assert (=> d!155629 (validMask!0 mask!2687)))

(assert (=> d!155629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644262 mask!2687) lt!644262 lt!644259 mask!2687) lt!644360)))

(declare-fun b!1474845 () Bool)

(assert (=> b!1474845 (= e!827480 e!827479)))

(declare-fun res!1002001 () Bool)

(assert (=> b!1474845 (= res!1002001 (and (is-Intermediate!12123 lt!644360) (not (undefined!12935 lt!644360)) (bvslt (x!132466 lt!644360) #b01111111111111111111111111111110) (bvsge (x!132466 lt!644360) #b00000000000000000000000000000000) (bvsge (x!132466 lt!644360) #b00000000000000000000000000000000)))))

(assert (=> b!1474845 (=> (not res!1002001) (not e!827479))))

(declare-fun b!1474846 () Bool)

(assert (=> b!1474846 (and (bvsge (index!50885 lt!644360) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644360) (size!48411 lt!644259)))))

(declare-fun res!1002003 () Bool)

(assert (=> b!1474846 (= res!1002003 (= (select (arr!47860 lt!644259) (index!50885 lt!644360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474846 (=> res!1002003 e!827482)))

(declare-fun b!1474847 () Bool)

(assert (=> b!1474847 (= e!827478 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644262 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644262 lt!644259 mask!2687))))

(assert (= (and d!155629 c!135938) b!1474841))

(assert (= (and d!155629 (not c!135938)) b!1474843))

(assert (= (and b!1474843 c!135937) b!1474840))

(assert (= (and b!1474843 (not c!135937)) b!1474847))

(assert (= (and d!155629 c!135939) b!1474842))

(assert (= (and d!155629 (not c!135939)) b!1474845))

(assert (= (and b!1474845 res!1002001) b!1474844))

(assert (= (and b!1474844 (not res!1002002)) b!1474846))

(assert (= (and b!1474846 (not res!1002003)) b!1474839))

(assert (=> b!1474847 m!1361075))

(declare-fun m!1361295 () Bool)

(assert (=> b!1474847 m!1361295))

(assert (=> b!1474847 m!1361295))

(declare-fun m!1361297 () Bool)

(assert (=> b!1474847 m!1361297))

(declare-fun m!1361299 () Bool)

(assert (=> b!1474839 m!1361299))

(assert (=> b!1474844 m!1361299))

(assert (=> b!1474846 m!1361299))

(assert (=> d!155629 m!1361075))

(declare-fun m!1361301 () Bool)

(assert (=> d!155629 m!1361301))

(assert (=> d!155629 m!1361105))

(assert (=> b!1474596 d!155629))

(declare-fun d!155631 () Bool)

(declare-fun lt!644369 () (_ BitVec 32))

(declare-fun lt!644368 () (_ BitVec 32))

(assert (=> d!155631 (= lt!644369 (bvmul (bvxor lt!644368 (bvlshr lt!644368 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155631 (= lt!644368 ((_ extract 31 0) (bvand (bvxor lt!644262 (bvlshr lt!644262 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155631 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002004 (let ((h!35900 ((_ extract 31 0) (bvand (bvxor lt!644262 (bvlshr lt!644262 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132474 (bvmul (bvxor h!35900 (bvlshr h!35900 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132474 (bvlshr x!132474 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002004 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002004 #b00000000000000000000000000000000))))))

(assert (=> d!155631 (= (toIndex!0 lt!644262 mask!2687) (bvand (bvxor lt!644369 (bvlshr lt!644369 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1474596 d!155631))

(declare-fun b!1474854 () Bool)

(declare-fun lt!644370 () SeekEntryResult!12123)

(assert (=> b!1474854 (and (bvsge (index!50885 lt!644370) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644370) (size!48411 a!2862)))))

(declare-fun e!827490 () Bool)

(assert (=> b!1474854 (= e!827490 (= (select (arr!47860 a!2862) (index!50885 lt!644370)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1474855 () Bool)

(declare-fun e!827486 () SeekEntryResult!12123)

(assert (=> b!1474855 (= e!827486 (Intermediate!12123 false (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474856 () Bool)

(declare-fun e!827489 () SeekEntryResult!12123)

(assert (=> b!1474856 (= e!827489 (Intermediate!12123 true (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474857 () Bool)

(declare-fun e!827488 () Bool)

(assert (=> b!1474857 (= e!827488 (bvsge (x!132466 lt!644370) #b01111111111111111111111111111110))))

(declare-fun b!1474858 () Bool)

(assert (=> b!1474858 (= e!827489 e!827486)))

(declare-fun c!135943 () Bool)

(declare-fun lt!644371 () (_ BitVec 64))

(assert (=> b!1474858 (= c!135943 (or (= lt!644371 (select (arr!47860 a!2862) j!93)) (= (bvadd lt!644371 lt!644371) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474859 () Bool)

(assert (=> b!1474859 (and (bvsge (index!50885 lt!644370) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644370) (size!48411 a!2862)))))

(declare-fun res!1002006 () Bool)

(assert (=> b!1474859 (= res!1002006 (= (select (arr!47860 a!2862) (index!50885 lt!644370)) (select (arr!47860 a!2862) j!93)))))

(assert (=> b!1474859 (=> res!1002006 e!827490)))

(declare-fun e!827487 () Bool)

(assert (=> b!1474859 (= e!827487 e!827490)))

(declare-fun d!155639 () Bool)

(assert (=> d!155639 e!827488))

(declare-fun c!135945 () Bool)

(assert (=> d!155639 (= c!135945 (and (is-Intermediate!12123 lt!644370) (undefined!12935 lt!644370)))))

(assert (=> d!155639 (= lt!644370 e!827489)))

(declare-fun c!135944 () Bool)

(assert (=> d!155639 (= c!135944 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155639 (= lt!644371 (select (arr!47860 a!2862) (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687)))))

(assert (=> d!155639 (validMask!0 mask!2687)))

(assert (=> d!155639 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687) (select (arr!47860 a!2862) j!93) a!2862 mask!2687) lt!644370)))

(declare-fun b!1474860 () Bool)

(assert (=> b!1474860 (= e!827488 e!827487)))

(declare-fun res!1002005 () Bool)

(assert (=> b!1474860 (= res!1002005 (and (is-Intermediate!12123 lt!644370) (not (undefined!12935 lt!644370)) (bvslt (x!132466 lt!644370) #b01111111111111111111111111111110) (bvsge (x!132466 lt!644370) #b00000000000000000000000000000000) (bvsge (x!132466 lt!644370) #b00000000000000000000000000000000)))))

(assert (=> b!1474860 (=> (not res!1002005) (not e!827487))))

(declare-fun b!1474861 () Bool)

(assert (=> b!1474861 (and (bvsge (index!50885 lt!644370) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644370) (size!48411 a!2862)))))

(declare-fun res!1002007 () Bool)

(assert (=> b!1474861 (= res!1002007 (= (select (arr!47860 a!2862) (index!50885 lt!644370)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474861 (=> res!1002007 e!827490)))

(declare-fun b!1474862 () Bool)

(assert (=> b!1474862 (= e!827486 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47860 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!155639 c!135944) b!1474856))

(assert (= (and d!155639 (not c!135944)) b!1474858))

(assert (= (and b!1474858 c!135943) b!1474855))

(assert (= (and b!1474858 (not c!135943)) b!1474862))

(assert (= (and d!155639 c!135945) b!1474857))

(assert (= (and d!155639 (not c!135945)) b!1474860))

(assert (= (and b!1474860 res!1002005) b!1474859))

(assert (= (and b!1474859 (not res!1002006)) b!1474861))

(assert (= (and b!1474861 (not res!1002007)) b!1474854))

(assert (=> b!1474862 m!1361109))

(declare-fun m!1361311 () Bool)

(assert (=> b!1474862 m!1361311))

(assert (=> b!1474862 m!1361311))

(assert (=> b!1474862 m!1361071))

(declare-fun m!1361313 () Bool)

(assert (=> b!1474862 m!1361313))

(declare-fun m!1361315 () Bool)

(assert (=> b!1474854 m!1361315))

(assert (=> b!1474859 m!1361315))

(assert (=> b!1474861 m!1361315))

(assert (=> d!155639 m!1361109))

(declare-fun m!1361317 () Bool)

(assert (=> d!155639 m!1361317))

(assert (=> d!155639 m!1361105))

(assert (=> b!1474585 d!155639))

(declare-fun d!155641 () Bool)

(declare-fun lt!644373 () (_ BitVec 32))

(declare-fun lt!644372 () (_ BitVec 32))

(assert (=> d!155641 (= lt!644373 (bvmul (bvxor lt!644372 (bvlshr lt!644372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155641 (= lt!644372 ((_ extract 31 0) (bvand (bvxor (select (arr!47860 a!2862) j!93) (bvlshr (select (arr!47860 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155641 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002004 (let ((h!35900 ((_ extract 31 0) (bvand (bvxor (select (arr!47860 a!2862) j!93) (bvlshr (select (arr!47860 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132474 (bvmul (bvxor h!35900 (bvlshr h!35900 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132474 (bvlshr x!132474 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002004 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002004 #b00000000000000000000000000000000))))))

(assert (=> d!155641 (= (toIndex!0 (select (arr!47860 a!2862) j!93) mask!2687) (bvand (bvxor lt!644373 (bvlshr lt!644373 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1474585 d!155641))

(declare-fun d!155643 () Bool)

(declare-fun lt!644385 () SeekEntryResult!12123)

(assert (=> d!155643 (and (or (is-Undefined!12123 lt!644385) (not (is-Found!12123 lt!644385)) (and (bvsge (index!50884 lt!644385) #b00000000000000000000000000000000) (bvslt (index!50884 lt!644385) (size!48411 lt!644259)))) (or (is-Undefined!12123 lt!644385) (is-Found!12123 lt!644385) (not (is-MissingVacant!12123 lt!644385)) (not (= (index!50886 lt!644385) intermediateAfterIndex!19)) (and (bvsge (index!50886 lt!644385) #b00000000000000000000000000000000) (bvslt (index!50886 lt!644385) (size!48411 lt!644259)))) (or (is-Undefined!12123 lt!644385) (ite (is-Found!12123 lt!644385) (= (select (arr!47860 lt!644259) (index!50884 lt!644385)) lt!644262) (and (is-MissingVacant!12123 lt!644385) (= (index!50886 lt!644385) intermediateAfterIndex!19) (= (select (arr!47860 lt!644259) (index!50886 lt!644385)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827519 () SeekEntryResult!12123)

(assert (=> d!155643 (= lt!644385 e!827519)))

(declare-fun c!135965 () Bool)

(assert (=> d!155643 (= c!135965 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644386 () (_ BitVec 64))

(assert (=> d!155643 (= lt!644386 (select (arr!47860 lt!644259) index!646))))

(assert (=> d!155643 (validMask!0 mask!2687)))

(assert (=> d!155643 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644262 lt!644259 mask!2687) lt!644385)))

(declare-fun b!1474908 () Bool)

(declare-fun e!827520 () SeekEntryResult!12123)

(assert (=> b!1474908 (= e!827519 e!827520)))

(declare-fun c!135966 () Bool)

(assert (=> b!1474908 (= c!135966 (= lt!644386 lt!644262))))

(declare-fun e!827518 () SeekEntryResult!12123)

(declare-fun b!1474909 () Bool)

(assert (=> b!1474909 (= e!827518 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644262 lt!644259 mask!2687))))

(declare-fun b!1474910 () Bool)

(assert (=> b!1474910 (= e!827519 Undefined!12123)))

(declare-fun b!1474911 () Bool)

(assert (=> b!1474911 (= e!827520 (Found!12123 index!646))))

(declare-fun b!1474912 () Bool)

(assert (=> b!1474912 (= e!827518 (MissingVacant!12123 intermediateAfterIndex!19))))

(declare-fun b!1474913 () Bool)

(declare-fun c!135964 () Bool)

(assert (=> b!1474913 (= c!135964 (= lt!644386 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474913 (= e!827520 e!827518)))

(assert (= (and d!155643 c!135965) b!1474910))

(assert (= (and d!155643 (not c!135965)) b!1474908))

(assert (= (and b!1474908 c!135966) b!1474911))

(assert (= (and b!1474908 (not c!135966)) b!1474913))

(assert (= (and b!1474913 c!135964) b!1474912))

(assert (= (and b!1474913 (not c!135964)) b!1474909))

(declare-fun m!1361347 () Bool)

(assert (=> d!155643 m!1361347))

(declare-fun m!1361349 () Bool)

(assert (=> d!155643 m!1361349))

(assert (=> d!155643 m!1361293))

(assert (=> d!155643 m!1361105))

(assert (=> b!1474909 m!1361287))

(assert (=> b!1474909 m!1361287))

(declare-fun m!1361351 () Bool)

(assert (=> b!1474909 m!1361351))

(assert (=> b!1474595 d!155643))

(declare-fun d!155657 () Bool)

(declare-fun lt!644402 () SeekEntryResult!12123)

(assert (=> d!155657 (and (or (is-Undefined!12123 lt!644402) (not (is-Found!12123 lt!644402)) (and (bvsge (index!50884 lt!644402) #b00000000000000000000000000000000) (bvslt (index!50884 lt!644402) (size!48411 lt!644259)))) (or (is-Undefined!12123 lt!644402) (is-Found!12123 lt!644402) (not (is-MissingZero!12123 lt!644402)) (and (bvsge (index!50883 lt!644402) #b00000000000000000000000000000000) (bvslt (index!50883 lt!644402) (size!48411 lt!644259)))) (or (is-Undefined!12123 lt!644402) (is-Found!12123 lt!644402) (is-MissingZero!12123 lt!644402) (not (is-MissingVacant!12123 lt!644402)) (and (bvsge (index!50886 lt!644402) #b00000000000000000000000000000000) (bvslt (index!50886 lt!644402) (size!48411 lt!644259)))) (or (is-Undefined!12123 lt!644402) (ite (is-Found!12123 lt!644402) (= (select (arr!47860 lt!644259) (index!50884 lt!644402)) lt!644262) (ite (is-MissingZero!12123 lt!644402) (= (select (arr!47860 lt!644259) (index!50883 lt!644402)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12123 lt!644402) (= (select (arr!47860 lt!644259) (index!50886 lt!644402)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!827538 () SeekEntryResult!12123)

(assert (=> d!155657 (= lt!644402 e!827538)))

(declare-fun c!135982 () Bool)

(declare-fun lt!644403 () SeekEntryResult!12123)

(assert (=> d!155657 (= c!135982 (and (is-Intermediate!12123 lt!644403) (undefined!12935 lt!644403)))))

(assert (=> d!155657 (= lt!644403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644262 mask!2687) lt!644262 lt!644259 mask!2687))))

(assert (=> d!155657 (validMask!0 mask!2687)))

(assert (=> d!155657 (= (seekEntryOrOpen!0 lt!644262 lt!644259 mask!2687) lt!644402)))

(declare-fun b!1474944 () Bool)

(declare-fun e!827537 () SeekEntryResult!12123)

(assert (=> b!1474944 (= e!827538 e!827537)))

(declare-fun lt!644404 () (_ BitVec 64))

(assert (=> b!1474944 (= lt!644404 (select (arr!47860 lt!644259) (index!50885 lt!644403)))))

(declare-fun c!135984 () Bool)

(assert (=> b!1474944 (= c!135984 (= lt!644404 lt!644262))))

(declare-fun e!827536 () SeekEntryResult!12123)

(declare-fun b!1474945 () Bool)

(assert (=> b!1474945 (= e!827536 (seekKeyOrZeroReturnVacant!0 (x!132466 lt!644403) (index!50885 lt!644403) (index!50885 lt!644403) lt!644262 lt!644259 mask!2687))))

(declare-fun b!1474946 () Bool)

(declare-fun c!135983 () Bool)

(assert (=> b!1474946 (= c!135983 (= lt!644404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474946 (= e!827537 e!827536)))

(declare-fun b!1474947 () Bool)

(assert (=> b!1474947 (= e!827537 (Found!12123 (index!50885 lt!644403)))))

(declare-fun b!1474948 () Bool)

(assert (=> b!1474948 (= e!827536 (MissingZero!12123 (index!50885 lt!644403)))))

(declare-fun b!1474949 () Bool)

(assert (=> b!1474949 (= e!827538 Undefined!12123)))

(assert (= (and d!155657 c!135982) b!1474949))

(assert (= (and d!155657 (not c!135982)) b!1474944))

(assert (= (and b!1474944 c!135984) b!1474947))

(assert (= (and b!1474944 (not c!135984)) b!1474946))

(assert (= (and b!1474946 c!135983) b!1474948))

(assert (= (and b!1474946 (not c!135983)) b!1474945))

(assert (=> d!155657 m!1361105))

(declare-fun m!1361363 () Bool)

(assert (=> d!155657 m!1361363))

(declare-fun m!1361365 () Bool)

(assert (=> d!155657 m!1361365))

(declare-fun m!1361367 () Bool)

(assert (=> d!155657 m!1361367))

(assert (=> d!155657 m!1361075))

(assert (=> d!155657 m!1361077))

(assert (=> d!155657 m!1361075))

(declare-fun m!1361369 () Bool)

(assert (=> b!1474944 m!1361369))

(declare-fun m!1361371 () Bool)

(assert (=> b!1474945 m!1361371))

(assert (=> b!1474595 d!155657))

(declare-fun b!1474950 () Bool)

(declare-fun lt!644405 () SeekEntryResult!12123)

(assert (=> b!1474950 (and (bvsge (index!50885 lt!644405) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644405) (size!48411 a!2862)))))

(declare-fun e!827543 () Bool)

(assert (=> b!1474950 (= e!827543 (= (select (arr!47860 a!2862) (index!50885 lt!644405)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1474951 () Bool)

(declare-fun e!827539 () SeekEntryResult!12123)

(assert (=> b!1474951 (= e!827539 (Intermediate!12123 false index!646 x!665))))

(declare-fun b!1474952 () Bool)

(declare-fun e!827542 () SeekEntryResult!12123)

(assert (=> b!1474952 (= e!827542 (Intermediate!12123 true index!646 x!665))))

(declare-fun b!1474953 () Bool)

(declare-fun e!827541 () Bool)

(assert (=> b!1474953 (= e!827541 (bvsge (x!132466 lt!644405) #b01111111111111111111111111111110))))

(declare-fun b!1474954 () Bool)

(assert (=> b!1474954 (= e!827542 e!827539)))

(declare-fun c!135985 () Bool)

(declare-fun lt!644406 () (_ BitVec 64))

(assert (=> b!1474954 (= c!135985 (or (= lt!644406 (select (arr!47860 a!2862) j!93)) (= (bvadd lt!644406 lt!644406) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474955 () Bool)

(assert (=> b!1474955 (and (bvsge (index!50885 lt!644405) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644405) (size!48411 a!2862)))))

(declare-fun res!1002018 () Bool)

(assert (=> b!1474955 (= res!1002018 (= (select (arr!47860 a!2862) (index!50885 lt!644405)) (select (arr!47860 a!2862) j!93)))))

(assert (=> b!1474955 (=> res!1002018 e!827543)))

(declare-fun e!827540 () Bool)

(assert (=> b!1474955 (= e!827540 e!827543)))

(declare-fun d!155661 () Bool)

(assert (=> d!155661 e!827541))

(declare-fun c!135987 () Bool)

(assert (=> d!155661 (= c!135987 (and (is-Intermediate!12123 lt!644405) (undefined!12935 lt!644405)))))

(assert (=> d!155661 (= lt!644405 e!827542)))

(declare-fun c!135986 () Bool)

(assert (=> d!155661 (= c!135986 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155661 (= lt!644406 (select (arr!47860 a!2862) index!646))))

(assert (=> d!155661 (validMask!0 mask!2687)))

(assert (=> d!155661 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47860 a!2862) j!93) a!2862 mask!2687) lt!644405)))

(declare-fun b!1474956 () Bool)

(assert (=> b!1474956 (= e!827541 e!827540)))

(declare-fun res!1002017 () Bool)

(assert (=> b!1474956 (= res!1002017 (and (is-Intermediate!12123 lt!644405) (not (undefined!12935 lt!644405)) (bvslt (x!132466 lt!644405) #b01111111111111111111111111111110) (bvsge (x!132466 lt!644405) #b00000000000000000000000000000000) (bvsge (x!132466 lt!644405) x!665)))))

(assert (=> b!1474956 (=> (not res!1002017) (not e!827540))))

(declare-fun b!1474957 () Bool)

(assert (=> b!1474957 (and (bvsge (index!50885 lt!644405) #b00000000000000000000000000000000) (bvslt (index!50885 lt!644405) (size!48411 a!2862)))))

(declare-fun res!1002019 () Bool)

(assert (=> b!1474957 (= res!1002019 (= (select (arr!47860 a!2862) (index!50885 lt!644405)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474957 (=> res!1002019 e!827543)))

(declare-fun b!1474958 () Bool)

(assert (=> b!1474958 (= e!827539 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47860 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!155661 c!135986) b!1474952))

(assert (= (and d!155661 (not c!135986)) b!1474954))

(assert (= (and b!1474954 c!135985) b!1474951))

(assert (= (and b!1474954 (not c!135985)) b!1474958))

(assert (= (and d!155661 c!135987) b!1474953))

(assert (= (and d!155661 (not c!135987)) b!1474956))

(assert (= (and b!1474956 res!1002017) b!1474955))

(assert (= (and b!1474955 (not res!1002018)) b!1474957))

(assert (= (and b!1474957 (not res!1002019)) b!1474950))

(assert (=> b!1474958 m!1361287))

(assert (=> b!1474958 m!1361287))

(assert (=> b!1474958 m!1361071))

(declare-fun m!1361373 () Bool)

(assert (=> b!1474958 m!1361373))

(declare-fun m!1361375 () Bool)

(assert (=> b!1474950 m!1361375))

(assert (=> b!1474955 m!1361375))

(assert (=> b!1474957 m!1361375))

(assert (=> d!155661 m!1361093))

(assert (=> d!155661 m!1361105))

(assert (=> b!1474584 d!155661))

(declare-fun d!155663 () Bool)

(declare-fun res!1002030 () Bool)

(declare-fun e!827560 () Bool)

(assert (=> d!155663 (=> res!1002030 e!827560)))

(assert (=> d!155663 (= res!1002030 (bvsge #b00000000000000000000000000000000 (size!48411 a!2862)))))

(assert (=> d!155663 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!827560)))

(declare-fun b!1474985 () Bool)

(declare-fun e!827561 () Bool)

(declare-fun call!67768 () Bool)

(assert (=> b!1474985 (= e!827561 call!67768)))

(declare-fun b!1474986 () Bool)

(declare-fun e!827562 () Bool)

(assert (=> b!1474986 (= e!827562 e!827561)))

(declare-fun lt!644417 () (_ BitVec 64))

(assert (=> b!1474986 (= lt!644417 (select (arr!47860 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644418 () Unit!49534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99162 (_ BitVec 64) (_ BitVec 32)) Unit!49534)

(assert (=> b!1474986 (= lt!644418 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644417 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1474986 (arrayContainsKey!0 a!2862 lt!644417 #b00000000000000000000000000000000)))

(declare-fun lt!644419 () Unit!49534)

(assert (=> b!1474986 (= lt!644419 lt!644418)))

(declare-fun res!1002031 () Bool)

(assert (=> b!1474986 (= res!1002031 (= (seekEntryOrOpen!0 (select (arr!47860 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12123 #b00000000000000000000000000000000)))))

(assert (=> b!1474986 (=> (not res!1002031) (not e!827561))))

(declare-fun bm!67765 () Bool)

(assert (=> bm!67765 (= call!67768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1474987 () Bool)

(assert (=> b!1474987 (= e!827560 e!827562)))

(declare-fun c!135996 () Bool)

(assert (=> b!1474987 (= c!135996 (validKeyInArray!0 (select (arr!47860 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1474988 () Bool)

(assert (=> b!1474988 (= e!827562 call!67768)))

(assert (= (and d!155663 (not res!1002030)) b!1474987))

(assert (= (and b!1474987 c!135996) b!1474986))

(assert (= (and b!1474987 (not c!135996)) b!1474988))

(assert (= (and b!1474986 res!1002031) b!1474985))

(assert (= (or b!1474985 b!1474988) bm!67765))

(declare-fun m!1361377 () Bool)

(assert (=> b!1474986 m!1361377))

(declare-fun m!1361379 () Bool)

(assert (=> b!1474986 m!1361379))

(declare-fun m!1361381 () Bool)

(assert (=> b!1474986 m!1361381))

(assert (=> b!1474986 m!1361377))

(declare-fun m!1361383 () Bool)

(assert (=> b!1474986 m!1361383))

(declare-fun m!1361385 () Bool)

(assert (=> bm!67765 m!1361385))

(assert (=> b!1474987 m!1361377))

(assert (=> b!1474987 m!1361377))

(declare-fun m!1361387 () Bool)

(assert (=> b!1474987 m!1361387))

(assert (=> b!1474594 d!155663))

(declare-fun b!1475017 () Bool)

(declare-fun e!827582 () Bool)

(declare-fun e!827583 () Bool)

(assert (=> b!1475017 (= e!827582 e!827583)))

(declare-fun res!1002045 () Bool)

(assert (=> b!1475017 (=> (not res!1002045) (not e!827583))))

(declare-fun e!827584 () Bool)

(assert (=> b!1475017 (= res!1002045 (not e!827584))))

(declare-fun res!1002047 () Bool)

(assert (=> b!1475017 (=> (not res!1002047) (not e!827584))))

(assert (=> b!1475017 (= res!1002047 (validKeyInArray!0 (select (arr!47860 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475018 () Bool)

(declare-fun e!827581 () Bool)

(declare-fun call!67771 () Bool)

(assert (=> b!1475018 (= e!827581 call!67771)))

(declare-fun d!155665 () Bool)

(declare-fun res!1002046 () Bool)

(assert (=> d!155665 (=> res!1002046 e!827582)))

(assert (=> d!155665 (= res!1002046 (bvsge #b00000000000000000000000000000000 (size!48411 a!2862)))))

(assert (=> d!155665 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34538) e!827582)))

(declare-fun b!1475019 () Bool)

(assert (=> b!1475019 (= e!827581 call!67771)))

(declare-fun bm!67768 () Bool)

(declare-fun c!136005 () Bool)

(assert (=> bm!67768 (= call!67771 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136005 (Cons!34537 (select (arr!47860 a!2862) #b00000000000000000000000000000000) Nil!34538) Nil!34538)))))

(declare-fun b!1475020 () Bool)

(declare-fun contains!9917 (List!34541 (_ BitVec 64)) Bool)

(assert (=> b!1475020 (= e!827584 (contains!9917 Nil!34538 (select (arr!47860 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475021 () Bool)

(assert (=> b!1475021 (= e!827583 e!827581)))

(assert (=> b!1475021 (= c!136005 (validKeyInArray!0 (select (arr!47860 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!155665 (not res!1002046)) b!1475017))

(assert (= (and b!1475017 res!1002047) b!1475020))

(assert (= (and b!1475017 res!1002045) b!1475021))

(assert (= (and b!1475021 c!136005) b!1475019))

(assert (= (and b!1475021 (not c!136005)) b!1475018))

(assert (= (or b!1475019 b!1475018) bm!67768))

(assert (=> b!1475017 m!1361377))

(assert (=> b!1475017 m!1361377))

(assert (=> b!1475017 m!1361387))

(assert (=> bm!67768 m!1361377))

(declare-fun m!1361401 () Bool)

(assert (=> bm!67768 m!1361401))

(assert (=> b!1475020 m!1361377))

(assert (=> b!1475020 m!1361377))

(declare-fun m!1361403 () Bool)

(assert (=> b!1475020 m!1361403))

(assert (=> b!1475021 m!1361377))

(assert (=> b!1475021 m!1361377))

(assert (=> b!1475021 m!1361387))

(assert (=> b!1474583 d!155665))

(declare-fun d!155671 () Bool)

(assert (=> d!155671 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125968 d!155671))

(declare-fun d!155677 () Bool)

(assert (=> d!155677 (= (array_inv!36805 a!2862) (bvsge (size!48411 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125968 d!155677))

(declare-fun d!155679 () Bool)

(declare-fun lt!644439 () SeekEntryResult!12123)

(assert (=> d!155679 (and (or (is-Undefined!12123 lt!644439) (not (is-Found!12123 lt!644439)) (and (bvsge (index!50884 lt!644439) 