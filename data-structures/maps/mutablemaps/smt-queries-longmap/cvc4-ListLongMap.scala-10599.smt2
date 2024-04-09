; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124778 () Bool)

(assert start!124778)

(declare-fun b!1446138 () Bool)

(declare-fun res!978040 () Bool)

(declare-fun e!814550 () Bool)

(assert (=> b!1446138 (=> (not res!978040) (not e!814550))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98143 0))(
  ( (array!98144 (arr!47355 (Array (_ BitVec 32) (_ BitVec 64))) (size!47906 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98143)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446138 (= res!978040 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47906 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47906 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47906 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446139 () Bool)

(declare-fun e!814551 () Bool)

(declare-fun e!814549 () Bool)

(assert (=> b!1446139 (= e!814551 e!814549)))

(declare-fun res!978033 () Bool)

(assert (=> b!1446139 (=> (not res!978033) (not e!814549))))

(declare-datatypes ((SeekEntryResult!11630 0))(
  ( (MissingZero!11630 (index!48911 (_ BitVec 32))) (Found!11630 (index!48912 (_ BitVec 32))) (Intermediate!11630 (undefined!12442 Bool) (index!48913 (_ BitVec 32)) (x!130594 (_ BitVec 32))) (Undefined!11630) (MissingVacant!11630 (index!48914 (_ BitVec 32))) )
))
(declare-fun lt!634666 () SeekEntryResult!11630)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98143 (_ BitVec 32)) SeekEntryResult!11630)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446139 (= res!978033 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47355 a!2862) j!93) mask!2687) (select (arr!47355 a!2862) j!93) a!2862 mask!2687) lt!634666))))

(assert (=> b!1446139 (= lt!634666 (Intermediate!11630 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446140 () Bool)

(declare-fun e!814553 () Bool)

(assert (=> b!1446140 (= e!814549 e!814553)))

(declare-fun res!978034 () Bool)

(assert (=> b!1446140 (=> (not res!978034) (not e!814553))))

(declare-fun lt!634665 () SeekEntryResult!11630)

(assert (=> b!1446140 (= res!978034 (= lt!634665 (Intermediate!11630 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634668 () (_ BitVec 64))

(declare-fun lt!634669 () array!98143)

(assert (=> b!1446140 (= lt!634665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634668 mask!2687) lt!634668 lt!634669 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446140 (= lt!634668 (select (store (arr!47355 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446141 () Bool)

(declare-fun e!814547 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98143 (_ BitVec 32)) SeekEntryResult!11630)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98143 (_ BitVec 32)) SeekEntryResult!11630)

(assert (=> b!1446141 (= e!814547 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634668 lt!634669 mask!2687) (seekEntryOrOpen!0 lt!634668 lt!634669 mask!2687)))))

(declare-fun res!978038 () Bool)

(assert (=> start!124778 (=> (not res!978038) (not e!814550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124778 (= res!978038 (validMask!0 mask!2687))))

(assert (=> start!124778 e!814550))

(assert (=> start!124778 true))

(declare-fun array_inv!36300 (array!98143) Bool)

(assert (=> start!124778 (array_inv!36300 a!2862)))

(declare-fun b!1446142 () Bool)

(declare-fun res!978031 () Bool)

(declare-fun e!814552 () Bool)

(assert (=> b!1446142 (=> (not res!978031) (not e!814552))))

(assert (=> b!1446142 (= res!978031 (= (seekEntryOrOpen!0 (select (arr!47355 a!2862) j!93) a!2862 mask!2687) (Found!11630 j!93)))))

(declare-fun b!1446143 () Bool)

(declare-fun res!978037 () Bool)

(assert (=> b!1446143 (=> (not res!978037) (not e!814549))))

(assert (=> b!1446143 (= res!978037 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47355 a!2862) j!93) a!2862 mask!2687) lt!634666))))

(declare-fun b!1446144 () Bool)

(declare-fun res!978032 () Bool)

(assert (=> b!1446144 (=> (not res!978032) (not e!814550))))

(declare-datatypes ((List!34036 0))(
  ( (Nil!34033) (Cons!34032 (h!35382 (_ BitVec 64)) (t!48737 List!34036)) )
))
(declare-fun arrayNoDuplicates!0 (array!98143 (_ BitVec 32) List!34036) Bool)

(assert (=> b!1446144 (= res!978032 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34033))))

(declare-fun b!1446145 () Bool)

(declare-fun res!978039 () Bool)

(assert (=> b!1446145 (=> (not res!978039) (not e!814553))))

(assert (=> b!1446145 (= res!978039 e!814547)))

(declare-fun c!133568 () Bool)

(assert (=> b!1446145 (= c!133568 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446146 () Bool)

(declare-fun res!978029 () Bool)

(assert (=> b!1446146 (=> (not res!978029) (not e!814550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446146 (= res!978029 (validKeyInArray!0 (select (arr!47355 a!2862) i!1006)))))

(declare-fun b!1446147 () Bool)

(declare-fun res!978036 () Bool)

(assert (=> b!1446147 (=> (not res!978036) (not e!814550))))

(assert (=> b!1446147 (= res!978036 (and (= (size!47906 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47906 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47906 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446148 () Bool)

(assert (=> b!1446148 (= e!814547 (= lt!634665 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634668 lt!634669 mask!2687)))))

(declare-fun b!1446149 () Bool)

(assert (=> b!1446149 (= e!814550 e!814551)))

(declare-fun res!978030 () Bool)

(assert (=> b!1446149 (=> (not res!978030) (not e!814551))))

(assert (=> b!1446149 (= res!978030 (= (select (store (arr!47355 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446149 (= lt!634669 (array!98144 (store (arr!47355 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47906 a!2862)))))

(declare-fun b!1446150 () Bool)

(declare-fun res!978028 () Bool)

(assert (=> b!1446150 (=> (not res!978028) (not e!814550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98143 (_ BitVec 32)) Bool)

(assert (=> b!1446150 (= res!978028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446151 () Bool)

(assert (=> b!1446151 (= e!814553 (not true))))

(assert (=> b!1446151 e!814552))

(declare-fun res!978041 () Bool)

(assert (=> b!1446151 (=> (not res!978041) (not e!814552))))

(assert (=> b!1446151 (= res!978041 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48704 0))(
  ( (Unit!48705) )
))
(declare-fun lt!634667 () Unit!48704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48704)

(assert (=> b!1446151 (= lt!634667 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446152 () Bool)

(declare-fun res!978035 () Bool)

(assert (=> b!1446152 (=> (not res!978035) (not e!814553))))

(assert (=> b!1446152 (= res!978035 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446153 () Bool)

(assert (=> b!1446153 (= e!814552 (or (= (select (arr!47355 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47355 a!2862) intermediateBeforeIndex!19) (select (arr!47355 a!2862) j!93))))))

(declare-fun b!1446154 () Bool)

(declare-fun res!978042 () Bool)

(assert (=> b!1446154 (=> (not res!978042) (not e!814550))))

(assert (=> b!1446154 (= res!978042 (validKeyInArray!0 (select (arr!47355 a!2862) j!93)))))

(assert (= (and start!124778 res!978038) b!1446147))

(assert (= (and b!1446147 res!978036) b!1446146))

(assert (= (and b!1446146 res!978029) b!1446154))

(assert (= (and b!1446154 res!978042) b!1446150))

(assert (= (and b!1446150 res!978028) b!1446144))

(assert (= (and b!1446144 res!978032) b!1446138))

(assert (= (and b!1446138 res!978040) b!1446149))

(assert (= (and b!1446149 res!978030) b!1446139))

(assert (= (and b!1446139 res!978033) b!1446143))

(assert (= (and b!1446143 res!978037) b!1446140))

(assert (= (and b!1446140 res!978034) b!1446145))

(assert (= (and b!1446145 c!133568) b!1446148))

(assert (= (and b!1446145 (not c!133568)) b!1446141))

(assert (= (and b!1446145 res!978039) b!1446152))

(assert (= (and b!1446152 res!978035) b!1446151))

(assert (= (and b!1446151 res!978041) b!1446142))

(assert (= (and b!1446142 res!978031) b!1446153))

(declare-fun m!1335089 () Bool)

(assert (=> b!1446151 m!1335089))

(declare-fun m!1335091 () Bool)

(assert (=> b!1446151 m!1335091))

(declare-fun m!1335093 () Bool)

(assert (=> b!1446149 m!1335093))

(declare-fun m!1335095 () Bool)

(assert (=> b!1446149 m!1335095))

(declare-fun m!1335097 () Bool)

(assert (=> b!1446144 m!1335097))

(declare-fun m!1335099 () Bool)

(assert (=> b!1446153 m!1335099))

(declare-fun m!1335101 () Bool)

(assert (=> b!1446153 m!1335101))

(declare-fun m!1335103 () Bool)

(assert (=> b!1446146 m!1335103))

(assert (=> b!1446146 m!1335103))

(declare-fun m!1335105 () Bool)

(assert (=> b!1446146 m!1335105))

(declare-fun m!1335107 () Bool)

(assert (=> b!1446140 m!1335107))

(assert (=> b!1446140 m!1335107))

(declare-fun m!1335109 () Bool)

(assert (=> b!1446140 m!1335109))

(assert (=> b!1446140 m!1335093))

(declare-fun m!1335111 () Bool)

(assert (=> b!1446140 m!1335111))

(declare-fun m!1335113 () Bool)

(assert (=> b!1446150 m!1335113))

(declare-fun m!1335115 () Bool)

(assert (=> start!124778 m!1335115))

(declare-fun m!1335117 () Bool)

(assert (=> start!124778 m!1335117))

(assert (=> b!1446143 m!1335101))

(assert (=> b!1446143 m!1335101))

(declare-fun m!1335119 () Bool)

(assert (=> b!1446143 m!1335119))

(assert (=> b!1446154 m!1335101))

(assert (=> b!1446154 m!1335101))

(declare-fun m!1335121 () Bool)

(assert (=> b!1446154 m!1335121))

(assert (=> b!1446142 m!1335101))

(assert (=> b!1446142 m!1335101))

(declare-fun m!1335123 () Bool)

(assert (=> b!1446142 m!1335123))

(declare-fun m!1335125 () Bool)

(assert (=> b!1446141 m!1335125))

(declare-fun m!1335127 () Bool)

(assert (=> b!1446141 m!1335127))

(declare-fun m!1335129 () Bool)

(assert (=> b!1446148 m!1335129))

(assert (=> b!1446139 m!1335101))

(assert (=> b!1446139 m!1335101))

(declare-fun m!1335131 () Bool)

(assert (=> b!1446139 m!1335131))

(assert (=> b!1446139 m!1335131))

(assert (=> b!1446139 m!1335101))

(declare-fun m!1335133 () Bool)

(assert (=> b!1446139 m!1335133))

(push 1)

