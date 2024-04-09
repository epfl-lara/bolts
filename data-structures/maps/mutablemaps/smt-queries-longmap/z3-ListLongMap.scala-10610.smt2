; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124842 () Bool)

(assert start!124842)

(declare-fun res!979651 () Bool)

(declare-fun e!815483 () Bool)

(assert (=> start!124842 (=> (not res!979651) (not e!815483))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124842 (= res!979651 (validMask!0 mask!2687))))

(assert (=> start!124842 e!815483))

(assert (=> start!124842 true))

(declare-datatypes ((array!98207 0))(
  ( (array!98208 (arr!47387 (Array (_ BitVec 32) (_ BitVec 64))) (size!47938 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98207)

(declare-fun array_inv!36332 (array!98207) Bool)

(assert (=> start!124842 (array_inv!36332 a!2862)))

(declare-fun b!1447942 () Bool)

(declare-fun e!815485 () Bool)

(declare-fun e!815480 () Bool)

(assert (=> b!1447942 (= e!815485 e!815480)))

(declare-fun res!979644 () Bool)

(assert (=> b!1447942 (=> res!979644 e!815480)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447942 (= res!979644 (or (and (= (select (arr!47387 a!2862) index!646) (select (store (arr!47387 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47387 a!2862) index!646) (select (arr!47387 a!2862) j!93))) (not (= (select (arr!47387 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447943 () Bool)

(declare-fun res!979645 () Bool)

(assert (=> b!1447943 (=> (not res!979645) (not e!815483))))

(declare-datatypes ((List!34068 0))(
  ( (Nil!34065) (Cons!34064 (h!35414 (_ BitVec 64)) (t!48769 List!34068)) )
))
(declare-fun arrayNoDuplicates!0 (array!98207 (_ BitVec 32) List!34068) Bool)

(assert (=> b!1447943 (= res!979645 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34065))))

(declare-fun b!1447944 () Bool)

(declare-fun res!979649 () Bool)

(declare-fun e!815486 () Bool)

(assert (=> b!1447944 (=> (not res!979649) (not e!815486))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447944 (= res!979649 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447945 () Bool)

(declare-fun e!815478 () Bool)

(assert (=> b!1447945 (= e!815483 e!815478)))

(declare-fun res!979654 () Bool)

(assert (=> b!1447945 (=> (not res!979654) (not e!815478))))

(assert (=> b!1447945 (= res!979654 (= (select (store (arr!47387 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635321 () array!98207)

(assert (=> b!1447945 (= lt!635321 (array!98208 (store (arr!47387 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47938 a!2862)))))

(declare-fun b!1447946 () Bool)

(declare-fun res!979656 () Bool)

(assert (=> b!1447946 (=> (not res!979656) (not e!815486))))

(declare-fun e!815481 () Bool)

(assert (=> b!1447946 (= res!979656 e!815481)))

(declare-fun c!133664 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447946 (= c!133664 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447947 () Bool)

(declare-fun res!979647 () Bool)

(assert (=> b!1447947 (=> (not res!979647) (not e!815483))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1447947 (= res!979647 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47938 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47938 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47938 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447948 () Bool)

(declare-fun res!979648 () Bool)

(assert (=> b!1447948 (=> (not res!979648) (not e!815483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447948 (= res!979648 (validKeyInArray!0 (select (arr!47387 a!2862) j!93)))))

(declare-fun b!1447949 () Bool)

(declare-fun res!979655 () Bool)

(assert (=> b!1447949 (=> (not res!979655) (not e!815483))))

(assert (=> b!1447949 (= res!979655 (validKeyInArray!0 (select (arr!47387 a!2862) i!1006)))))

(declare-fun b!1447950 () Bool)

(declare-fun e!815482 () Bool)

(assert (=> b!1447950 (= e!815486 (not e!815482))))

(declare-fun res!979646 () Bool)

(assert (=> b!1447950 (=> res!979646 e!815482)))

(assert (=> b!1447950 (= res!979646 (or (and (= (select (arr!47387 a!2862) index!646) (select (store (arr!47387 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47387 a!2862) index!646) (select (arr!47387 a!2862) j!93))) (not (= (select (arr!47387 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47387 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447950 e!815485))

(declare-fun res!979650 () Bool)

(assert (=> b!1447950 (=> (not res!979650) (not e!815485))))

(declare-datatypes ((SeekEntryResult!11662 0))(
  ( (MissingZero!11662 (index!49039 (_ BitVec 32))) (Found!11662 (index!49040 (_ BitVec 32))) (Intermediate!11662 (undefined!12474 Bool) (index!49041 (_ BitVec 32)) (x!130714 (_ BitVec 32))) (Undefined!11662) (MissingVacant!11662 (index!49042 (_ BitVec 32))) )
))
(declare-fun lt!635317 () SeekEntryResult!11662)

(assert (=> b!1447950 (= res!979650 (and (= lt!635317 (Found!11662 j!93)) (or (= (select (arr!47387 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47387 a!2862) intermediateBeforeIndex!19) (select (arr!47387 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98207 (_ BitVec 32)) SeekEntryResult!11662)

(assert (=> b!1447950 (= lt!635317 (seekEntryOrOpen!0 (select (arr!47387 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98207 (_ BitVec 32)) Bool)

(assert (=> b!1447950 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48768 0))(
  ( (Unit!48769) )
))
(declare-fun lt!635318 () Unit!48768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98207 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48768)

(assert (=> b!1447950 (= lt!635318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447951 () Bool)

(declare-fun e!815479 () Bool)

(assert (=> b!1447951 (= e!815479 e!815486)))

(declare-fun res!979652 () Bool)

(assert (=> b!1447951 (=> (not res!979652) (not e!815486))))

(declare-fun lt!635319 () SeekEntryResult!11662)

(assert (=> b!1447951 (= res!979652 (= lt!635319 (Intermediate!11662 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635322 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98207 (_ BitVec 32)) SeekEntryResult!11662)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447951 (= lt!635319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635322 mask!2687) lt!635322 lt!635321 mask!2687))))

(assert (=> b!1447951 (= lt!635322 (select (store (arr!47387 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447952 () Bool)

(assert (=> b!1447952 (= e!815482 true)))

(declare-fun lt!635320 () SeekEntryResult!11662)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98207 (_ BitVec 32)) SeekEntryResult!11662)

(assert (=> b!1447952 (= lt!635320 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47387 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447953 () Bool)

(declare-fun res!979653 () Bool)

(assert (=> b!1447953 (=> (not res!979653) (not e!815479))))

(declare-fun lt!635323 () SeekEntryResult!11662)

(assert (=> b!1447953 (= res!979653 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47387 a!2862) j!93) a!2862 mask!2687) lt!635323))))

(declare-fun b!1447954 () Bool)

(assert (=> b!1447954 (= e!815481 (= lt!635319 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635322 lt!635321 mask!2687)))))

(declare-fun b!1447955 () Bool)

(declare-fun res!979642 () Bool)

(assert (=> b!1447955 (=> (not res!979642) (not e!815483))))

(assert (=> b!1447955 (= res!979642 (and (= (size!47938 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47938 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47938 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447956 () Bool)

(declare-fun e!815477 () Bool)

(assert (=> b!1447956 (= e!815477 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447957 () Bool)

(assert (=> b!1447957 (= e!815478 e!815479)))

(declare-fun res!979640 () Bool)

(assert (=> b!1447957 (=> (not res!979640) (not e!815479))))

(assert (=> b!1447957 (= res!979640 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47387 a!2862) j!93) mask!2687) (select (arr!47387 a!2862) j!93) a!2862 mask!2687) lt!635323))))

(assert (=> b!1447957 (= lt!635323 (Intermediate!11662 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447958 () Bool)

(assert (=> b!1447958 (= e!815480 e!815477)))

(declare-fun res!979643 () Bool)

(assert (=> b!1447958 (=> (not res!979643) (not e!815477))))

(assert (=> b!1447958 (= res!979643 (= lt!635317 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47387 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447959 () Bool)

(assert (=> b!1447959 (= e!815481 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635322 lt!635321 mask!2687) (seekEntryOrOpen!0 lt!635322 lt!635321 mask!2687)))))

(declare-fun b!1447960 () Bool)

(declare-fun res!979641 () Bool)

(assert (=> b!1447960 (=> (not res!979641) (not e!815483))))

(assert (=> b!1447960 (= res!979641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124842 res!979651) b!1447955))

(assert (= (and b!1447955 res!979642) b!1447949))

(assert (= (and b!1447949 res!979655) b!1447948))

(assert (= (and b!1447948 res!979648) b!1447960))

(assert (= (and b!1447960 res!979641) b!1447943))

(assert (= (and b!1447943 res!979645) b!1447947))

(assert (= (and b!1447947 res!979647) b!1447945))

(assert (= (and b!1447945 res!979654) b!1447957))

(assert (= (and b!1447957 res!979640) b!1447953))

(assert (= (and b!1447953 res!979653) b!1447951))

(assert (= (and b!1447951 res!979652) b!1447946))

(assert (= (and b!1447946 c!133664) b!1447954))

(assert (= (and b!1447946 (not c!133664)) b!1447959))

(assert (= (and b!1447946 res!979656) b!1447944))

(assert (= (and b!1447944 res!979649) b!1447950))

(assert (= (and b!1447950 res!979650) b!1447942))

(assert (= (and b!1447942 (not res!979644)) b!1447958))

(assert (= (and b!1447958 res!979643) b!1447956))

(assert (= (and b!1447950 (not res!979646)) b!1447952))

(declare-fun m!1336785 () Bool)

(assert (=> b!1447949 m!1336785))

(assert (=> b!1447949 m!1336785))

(declare-fun m!1336787 () Bool)

(assert (=> b!1447949 m!1336787))

(declare-fun m!1336789 () Bool)

(assert (=> b!1447943 m!1336789))

(declare-fun m!1336791 () Bool)

(assert (=> b!1447945 m!1336791))

(declare-fun m!1336793 () Bool)

(assert (=> b!1447945 m!1336793))

(declare-fun m!1336795 () Bool)

(assert (=> b!1447950 m!1336795))

(assert (=> b!1447950 m!1336791))

(declare-fun m!1336797 () Bool)

(assert (=> b!1447950 m!1336797))

(declare-fun m!1336799 () Bool)

(assert (=> b!1447950 m!1336799))

(declare-fun m!1336801 () Bool)

(assert (=> b!1447950 m!1336801))

(declare-fun m!1336803 () Bool)

(assert (=> b!1447950 m!1336803))

(declare-fun m!1336805 () Bool)

(assert (=> b!1447950 m!1336805))

(declare-fun m!1336807 () Bool)

(assert (=> b!1447950 m!1336807))

(assert (=> b!1447950 m!1336803))

(assert (=> b!1447957 m!1336803))

(assert (=> b!1447957 m!1336803))

(declare-fun m!1336809 () Bool)

(assert (=> b!1447957 m!1336809))

(assert (=> b!1447957 m!1336809))

(assert (=> b!1447957 m!1336803))

(declare-fun m!1336811 () Bool)

(assert (=> b!1447957 m!1336811))

(assert (=> b!1447953 m!1336803))

(assert (=> b!1447953 m!1336803))

(declare-fun m!1336813 () Bool)

(assert (=> b!1447953 m!1336813))

(declare-fun m!1336815 () Bool)

(assert (=> b!1447951 m!1336815))

(assert (=> b!1447951 m!1336815))

(declare-fun m!1336817 () Bool)

(assert (=> b!1447951 m!1336817))

(assert (=> b!1447951 m!1336791))

(declare-fun m!1336819 () Bool)

(assert (=> b!1447951 m!1336819))

(declare-fun m!1336821 () Bool)

(assert (=> b!1447960 m!1336821))

(declare-fun m!1336823 () Bool)

(assert (=> start!124842 m!1336823))

(declare-fun m!1336825 () Bool)

(assert (=> start!124842 m!1336825))

(assert (=> b!1447942 m!1336801))

(assert (=> b!1447942 m!1336791))

(assert (=> b!1447942 m!1336799))

(assert (=> b!1447942 m!1336803))

(assert (=> b!1447952 m!1336803))

(assert (=> b!1447952 m!1336803))

(declare-fun m!1336827 () Bool)

(assert (=> b!1447952 m!1336827))

(declare-fun m!1336829 () Bool)

(assert (=> b!1447954 m!1336829))

(assert (=> b!1447948 m!1336803))

(assert (=> b!1447948 m!1336803))

(declare-fun m!1336831 () Bool)

(assert (=> b!1447948 m!1336831))

(assert (=> b!1447958 m!1336803))

(assert (=> b!1447958 m!1336803))

(declare-fun m!1336833 () Bool)

(assert (=> b!1447958 m!1336833))

(declare-fun m!1336835 () Bool)

(assert (=> b!1447959 m!1336835))

(declare-fun m!1336837 () Bool)

(assert (=> b!1447959 m!1336837))

(check-sat (not b!1447958) (not b!1447957) (not b!1447943) (not b!1447952) (not b!1447959) (not start!124842) (not b!1447949) (not b!1447953) (not b!1447960) (not b!1447948) (not b!1447954) (not b!1447951) (not b!1447950))
(check-sat)
