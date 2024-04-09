; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125456 () Bool)

(assert start!125456)

(declare-fun b!1467049 () Bool)

(declare-fun res!995751 () Bool)

(declare-fun e!824126 () Bool)

(assert (=> b!1467049 (=> (not res!995751) (not e!824126))))

(declare-datatypes ((array!98821 0))(
  ( (array!98822 (arr!47694 (Array (_ BitVec 32) (_ BitVec 64))) (size!48245 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98821)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467049 (= res!995751 (validKeyInArray!0 (select (arr!47694 a!2862) i!1006)))))

(declare-fun b!1467050 () Bool)

(declare-fun res!995737 () Bool)

(assert (=> b!1467050 (=> (not res!995737) (not e!824126))))

(declare-datatypes ((List!34375 0))(
  ( (Nil!34372) (Cons!34371 (h!35721 (_ BitVec 64)) (t!49076 List!34375)) )
))
(declare-fun arrayNoDuplicates!0 (array!98821 (_ BitVec 32) List!34375) Bool)

(assert (=> b!1467050 (= res!995737 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34372))))

(declare-fun b!1467051 () Bool)

(declare-fun res!995746 () Bool)

(assert (=> b!1467051 (=> (not res!995746) (not e!824126))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98821 (_ BitVec 32)) Bool)

(assert (=> b!1467051 (= res!995746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467052 () Bool)

(declare-fun res!995754 () Bool)

(declare-fun e!824127 () Bool)

(assert (=> b!1467052 (=> res!995754 e!824127)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467052 (= res!995754 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1467053 () Bool)

(declare-fun e!824129 () Bool)

(assert (=> b!1467053 (= e!824129 e!824127)))

(declare-fun res!995749 () Bool)

(assert (=> b!1467053 (=> res!995749 e!824127)))

(declare-fun lt!641950 () (_ BitVec 32))

(assert (=> b!1467053 (= res!995749 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641950 #b00000000000000000000000000000000) (bvsge lt!641950 (size!48245 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467053 (= lt!641950 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1467054 () Bool)

(declare-fun res!995741 () Bool)

(declare-fun e!824124 () Bool)

(assert (=> b!1467054 (=> (not res!995741) (not e!824124))))

(declare-fun e!824122 () Bool)

(assert (=> b!1467054 (= res!995741 e!824122)))

(declare-fun c!135169 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1467054 (= c!135169 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1467055 () Bool)

(declare-fun res!995742 () Bool)

(assert (=> b!1467055 (=> res!995742 e!824127)))

(declare-fun e!824125 () Bool)

(assert (=> b!1467055 (= res!995742 e!824125)))

(declare-fun c!135170 () Bool)

(assert (=> b!1467055 (= c!135170 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!641945 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11969 0))(
  ( (MissingZero!11969 (index!50267 (_ BitVec 32))) (Found!11969 (index!50268 (_ BitVec 32))) (Intermediate!11969 (undefined!12781 Bool) (index!50269 (_ BitVec 32)) (x!131837 (_ BitVec 32))) (Undefined!11969) (MissingVacant!11969 (index!50270 (_ BitVec 32))) )
))
(declare-fun lt!641946 () SeekEntryResult!11969)

(declare-fun lt!641943 () array!98821)

(declare-fun b!1467057 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98821 (_ BitVec 32)) SeekEntryResult!11969)

(assert (=> b!1467057 (= e!824125 (not (= lt!641946 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641950 lt!641945 lt!641943 mask!2687))))))

(declare-fun b!1467058 () Bool)

(declare-fun e!824123 () Bool)

(assert (=> b!1467058 (= e!824126 e!824123)))

(declare-fun res!995748 () Bool)

(assert (=> b!1467058 (=> (not res!995748) (not e!824123))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467058 (= res!995748 (= (select (store (arr!47694 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1467058 (= lt!641943 (array!98822 (store (arr!47694 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48245 a!2862)))))

(declare-fun b!1467059 () Bool)

(declare-fun res!995747 () Bool)

(assert (=> b!1467059 (=> (not res!995747) (not e!824124))))

(assert (=> b!1467059 (= res!995747 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1467060 () Bool)

(declare-fun res!995738 () Bool)

(declare-fun e!824121 () Bool)

(assert (=> b!1467060 (=> (not res!995738) (not e!824121))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!641944 () SeekEntryResult!11969)

(assert (=> b!1467060 (= res!995738 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47694 a!2862) j!93) a!2862 mask!2687) lt!641944))))

(declare-fun b!1467061 () Bool)

(declare-fun res!995753 () Bool)

(assert (=> b!1467061 (=> (not res!995753) (not e!824126))))

(assert (=> b!1467061 (= res!995753 (validKeyInArray!0 (select (arr!47694 a!2862) j!93)))))

(declare-fun b!1467062 () Bool)

(assert (=> b!1467062 (= e!824122 (= lt!641946 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641945 lt!641943 mask!2687)))))

(declare-fun b!1467063 () Bool)

(assert (=> b!1467063 (= e!824121 e!824124)))

(declare-fun res!995750 () Bool)

(assert (=> b!1467063 (=> (not res!995750) (not e!824124))))

(assert (=> b!1467063 (= res!995750 (= lt!641946 (Intermediate!11969 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467063 (= lt!641946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641945 mask!2687) lt!641945 lt!641943 mask!2687))))

(assert (=> b!1467063 (= lt!641945 (select (store (arr!47694 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1467064 () Bool)

(assert (=> b!1467064 (= e!824124 (not e!824129))))

(declare-fun res!995739 () Bool)

(assert (=> b!1467064 (=> res!995739 e!824129)))

(assert (=> b!1467064 (= res!995739 (or (and (= (select (arr!47694 a!2862) index!646) (select (store (arr!47694 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47694 a!2862) index!646) (select (arr!47694 a!2862) j!93))) (= (select (arr!47694 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641948 () SeekEntryResult!11969)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1467064 (and (= lt!641948 (Found!11969 j!93)) (or (= (select (arr!47694 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47694 a!2862) intermediateBeforeIndex!19) (select (arr!47694 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98821 (_ BitVec 32)) SeekEntryResult!11969)

(assert (=> b!1467064 (= lt!641948 (seekEntryOrOpen!0 (select (arr!47694 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1467064 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49382 0))(
  ( (Unit!49383) )
))
(declare-fun lt!641949 () Unit!49382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49382)

(assert (=> b!1467064 (= lt!641949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1467065 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98821 (_ BitVec 32)) SeekEntryResult!11969)

(assert (=> b!1467065 (= e!824125 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641950 intermediateAfterIndex!19 lt!641945 lt!641943 mask!2687) (seekEntryOrOpen!0 lt!641945 lt!641943 mask!2687))))))

(declare-fun b!1467066 () Bool)

(declare-fun res!995743 () Bool)

(assert (=> b!1467066 (=> (not res!995743) (not e!824126))))

(assert (=> b!1467066 (= res!995743 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48245 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48245 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48245 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1467067 () Bool)

(declare-fun res!995744 () Bool)

(assert (=> b!1467067 (=> res!995744 e!824127)))

(assert (=> b!1467067 (= res!995744 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641950 (select (arr!47694 a!2862) j!93) a!2862 mask!2687) lt!641944)))))

(declare-fun b!1467068 () Bool)

(declare-fun res!995745 () Bool)

(assert (=> b!1467068 (=> (not res!995745) (not e!824126))))

(assert (=> b!1467068 (= res!995745 (and (= (size!48245 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48245 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48245 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467069 () Bool)

(assert (=> b!1467069 (= e!824122 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641945 lt!641943 mask!2687) (seekEntryOrOpen!0 lt!641945 lt!641943 mask!2687)))))

(declare-fun b!1467070 () Bool)

(assert (=> b!1467070 (= e!824123 e!824121)))

(declare-fun res!995752 () Bool)

(assert (=> b!1467070 (=> (not res!995752) (not e!824121))))

(assert (=> b!1467070 (= res!995752 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47694 a!2862) j!93) mask!2687) (select (arr!47694 a!2862) j!93) a!2862 mask!2687) lt!641944))))

(assert (=> b!1467070 (= lt!641944 (Intermediate!11969 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467056 () Bool)

(assert (=> b!1467056 (= e!824127 true)))

(assert (=> b!1467056 (= lt!641948 (seekEntryOrOpen!0 lt!641945 lt!641943 mask!2687))))

(declare-fun lt!641947 () Unit!49382)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49382)

(assert (=> b!1467056 (= lt!641947 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641950 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!995740 () Bool)

(assert (=> start!125456 (=> (not res!995740) (not e!824126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125456 (= res!995740 (validMask!0 mask!2687))))

(assert (=> start!125456 e!824126))

(assert (=> start!125456 true))

(declare-fun array_inv!36639 (array!98821) Bool)

(assert (=> start!125456 (array_inv!36639 a!2862)))

(assert (= (and start!125456 res!995740) b!1467068))

(assert (= (and b!1467068 res!995745) b!1467049))

(assert (= (and b!1467049 res!995751) b!1467061))

(assert (= (and b!1467061 res!995753) b!1467051))

(assert (= (and b!1467051 res!995746) b!1467050))

(assert (= (and b!1467050 res!995737) b!1467066))

(assert (= (and b!1467066 res!995743) b!1467058))

(assert (= (and b!1467058 res!995748) b!1467070))

(assert (= (and b!1467070 res!995752) b!1467060))

(assert (= (and b!1467060 res!995738) b!1467063))

(assert (= (and b!1467063 res!995750) b!1467054))

(assert (= (and b!1467054 c!135169) b!1467062))

(assert (= (and b!1467054 (not c!135169)) b!1467069))

(assert (= (and b!1467054 res!995741) b!1467059))

(assert (= (and b!1467059 res!995747) b!1467064))

(assert (= (and b!1467064 (not res!995739)) b!1467053))

(assert (= (and b!1467053 (not res!995749)) b!1467067))

(assert (= (and b!1467067 (not res!995744)) b!1467055))

(assert (= (and b!1467055 c!135170) b!1467057))

(assert (= (and b!1467055 (not c!135170)) b!1467065))

(assert (= (and b!1467055 (not res!995742)) b!1467052))

(assert (= (and b!1467052 (not res!995754)) b!1467056))

(declare-fun m!1354035 () Bool)

(assert (=> b!1467051 m!1354035))

(declare-fun m!1354037 () Bool)

(assert (=> b!1467050 m!1354037))

(declare-fun m!1354039 () Bool)

(assert (=> b!1467056 m!1354039))

(declare-fun m!1354041 () Bool)

(assert (=> b!1467056 m!1354041))

(declare-fun m!1354043 () Bool)

(assert (=> b!1467060 m!1354043))

(assert (=> b!1467060 m!1354043))

(declare-fun m!1354045 () Bool)

(assert (=> b!1467060 m!1354045))

(declare-fun m!1354047 () Bool)

(assert (=> b!1467063 m!1354047))

(assert (=> b!1467063 m!1354047))

(declare-fun m!1354049 () Bool)

(assert (=> b!1467063 m!1354049))

(declare-fun m!1354051 () Bool)

(assert (=> b!1467063 m!1354051))

(declare-fun m!1354053 () Bool)

(assert (=> b!1467063 m!1354053))

(declare-fun m!1354055 () Bool)

(assert (=> b!1467049 m!1354055))

(assert (=> b!1467049 m!1354055))

(declare-fun m!1354057 () Bool)

(assert (=> b!1467049 m!1354057))

(declare-fun m!1354059 () Bool)

(assert (=> b!1467065 m!1354059))

(assert (=> b!1467065 m!1354039))

(declare-fun m!1354061 () Bool)

(assert (=> b!1467069 m!1354061))

(assert (=> b!1467069 m!1354039))

(assert (=> b!1467058 m!1354051))

(declare-fun m!1354063 () Bool)

(assert (=> b!1467058 m!1354063))

(assert (=> b!1467070 m!1354043))

(assert (=> b!1467070 m!1354043))

(declare-fun m!1354065 () Bool)

(assert (=> b!1467070 m!1354065))

(assert (=> b!1467070 m!1354065))

(assert (=> b!1467070 m!1354043))

(declare-fun m!1354067 () Bool)

(assert (=> b!1467070 m!1354067))

(declare-fun m!1354069 () Bool)

(assert (=> b!1467064 m!1354069))

(assert (=> b!1467064 m!1354051))

(declare-fun m!1354071 () Bool)

(assert (=> b!1467064 m!1354071))

(declare-fun m!1354073 () Bool)

(assert (=> b!1467064 m!1354073))

(declare-fun m!1354075 () Bool)

(assert (=> b!1467064 m!1354075))

(assert (=> b!1467064 m!1354043))

(declare-fun m!1354077 () Bool)

(assert (=> b!1467064 m!1354077))

(declare-fun m!1354079 () Bool)

(assert (=> b!1467064 m!1354079))

(assert (=> b!1467064 m!1354043))

(declare-fun m!1354081 () Bool)

(assert (=> start!125456 m!1354081))

(declare-fun m!1354083 () Bool)

(assert (=> start!125456 m!1354083))

(declare-fun m!1354085 () Bool)

(assert (=> b!1467053 m!1354085))

(assert (=> b!1467061 m!1354043))

(assert (=> b!1467061 m!1354043))

(declare-fun m!1354087 () Bool)

(assert (=> b!1467061 m!1354087))

(assert (=> b!1467067 m!1354043))

(assert (=> b!1467067 m!1354043))

(declare-fun m!1354089 () Bool)

(assert (=> b!1467067 m!1354089))

(declare-fun m!1354091 () Bool)

(assert (=> b!1467062 m!1354091))

(declare-fun m!1354093 () Bool)

(assert (=> b!1467057 m!1354093))

(push 1)

