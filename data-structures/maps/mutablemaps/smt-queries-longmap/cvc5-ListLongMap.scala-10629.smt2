; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124954 () Bool)

(assert start!124954)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1451193 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun e!817134 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98319 0))(
  ( (array!98320 (arr!47443 (Array (_ BitVec 32) (_ BitVec 64))) (size!47994 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98319)

(assert (=> b!1451193 (= e!817134 (not (or (and (= (select (arr!47443 a!2862) index!646) (select (store (arr!47443 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47443 a!2862) index!646) (select (arr!47443 a!2862) j!93))) (= (select (arr!47443 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!817135 () Bool)

(assert (=> b!1451193 e!817135))

(declare-fun res!982558 () Bool)

(assert (=> b!1451193 (=> (not res!982558) (not e!817135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98319 (_ BitVec 32)) Bool)

(assert (=> b!1451193 (= res!982558 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48880 0))(
  ( (Unit!48881) )
))
(declare-fun lt!636546 () Unit!48880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48880)

(assert (=> b!1451193 (= lt!636546 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451194 () Bool)

(declare-fun res!982559 () Bool)

(assert (=> b!1451194 (=> (not res!982559) (not e!817134))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451194 (= res!982559 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451195 () Bool)

(declare-fun res!982565 () Bool)

(declare-fun e!817138 () Bool)

(assert (=> b!1451195 (=> (not res!982565) (not e!817138))))

(declare-datatypes ((SeekEntryResult!11718 0))(
  ( (MissingZero!11718 (index!49263 (_ BitVec 32))) (Found!11718 (index!49264 (_ BitVec 32))) (Intermediate!11718 (undefined!12530 Bool) (index!49265 (_ BitVec 32)) (x!130922 (_ BitVec 32))) (Undefined!11718) (MissingVacant!11718 (index!49266 (_ BitVec 32))) )
))
(declare-fun lt!636547 () SeekEntryResult!11718)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98319 (_ BitVec 32)) SeekEntryResult!11718)

(assert (=> b!1451195 (= res!982565 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47443 a!2862) j!93) a!2862 mask!2687) lt!636547))))

(declare-fun b!1451196 () Bool)

(declare-fun res!982566 () Bool)

(declare-fun e!817136 () Bool)

(assert (=> b!1451196 (=> (not res!982566) (not e!817136))))

(assert (=> b!1451196 (= res!982566 (and (= (size!47994 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47994 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47994 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451197 () Bool)

(declare-fun res!982564 () Bool)

(assert (=> b!1451197 (=> (not res!982564) (not e!817134))))

(declare-fun e!817139 () Bool)

(assert (=> b!1451197 (= res!982564 e!817139)))

(declare-fun c!133832 () Bool)

(assert (=> b!1451197 (= c!133832 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451198 () Bool)

(declare-fun res!982557 () Bool)

(assert (=> b!1451198 (=> (not res!982557) (not e!817136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451198 (= res!982557 (validKeyInArray!0 (select (arr!47443 a!2862) j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1451199 () Bool)

(assert (=> b!1451199 (= e!817135 (and (or (= (select (arr!47443 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47443 a!2862) intermediateBeforeIndex!19) (select (arr!47443 a!2862) j!93))) (or (and (= (select (arr!47443 a!2862) index!646) (select (store (arr!47443 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47443 a!2862) index!646) (select (arr!47443 a!2862) j!93))) (= (select (arr!47443 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47443 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451200 () Bool)

(declare-fun res!982556 () Bool)

(assert (=> b!1451200 (=> (not res!982556) (not e!817136))))

(declare-datatypes ((List!34124 0))(
  ( (Nil!34121) (Cons!34120 (h!35470 (_ BitVec 64)) (t!48825 List!34124)) )
))
(declare-fun arrayNoDuplicates!0 (array!98319 (_ BitVec 32) List!34124) Bool)

(assert (=> b!1451200 (= res!982556 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34121))))

(declare-fun b!1451201 () Bool)

(assert (=> b!1451201 (= e!817138 e!817134)))

(declare-fun res!982563 () Bool)

(assert (=> b!1451201 (=> (not res!982563) (not e!817134))))

(declare-fun lt!636545 () SeekEntryResult!11718)

(assert (=> b!1451201 (= res!982563 (= lt!636545 (Intermediate!11718 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636544 () array!98319)

(declare-fun lt!636543 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451201 (= lt!636545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636543 mask!2687) lt!636543 lt!636544 mask!2687))))

(assert (=> b!1451201 (= lt!636543 (select (store (arr!47443 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451202 () Bool)

(declare-fun res!982567 () Bool)

(assert (=> b!1451202 (=> (not res!982567) (not e!817136))))

(assert (=> b!1451202 (= res!982567 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47994 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47994 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47994 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451203 () Bool)

(declare-fun res!982560 () Bool)

(assert (=> b!1451203 (=> (not res!982560) (not e!817136))))

(assert (=> b!1451203 (= res!982560 (validKeyInArray!0 (select (arr!47443 a!2862) i!1006)))))

(declare-fun b!1451204 () Bool)

(declare-fun e!817137 () Bool)

(assert (=> b!1451204 (= e!817137 e!817138)))

(declare-fun res!982555 () Bool)

(assert (=> b!1451204 (=> (not res!982555) (not e!817138))))

(assert (=> b!1451204 (= res!982555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47443 a!2862) j!93) mask!2687) (select (arr!47443 a!2862) j!93) a!2862 mask!2687) lt!636547))))

(assert (=> b!1451204 (= lt!636547 (Intermediate!11718 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451206 () Bool)

(assert (=> b!1451206 (= e!817136 e!817137)))

(declare-fun res!982569 () Bool)

(assert (=> b!1451206 (=> (not res!982569) (not e!817137))))

(assert (=> b!1451206 (= res!982569 (= (select (store (arr!47443 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451206 (= lt!636544 (array!98320 (store (arr!47443 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47994 a!2862)))))

(declare-fun b!1451207 () Bool)

(declare-fun res!982561 () Bool)

(assert (=> b!1451207 (=> (not res!982561) (not e!817136))))

(assert (=> b!1451207 (= res!982561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451208 () Bool)

(assert (=> b!1451208 (= e!817139 (= lt!636545 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636543 lt!636544 mask!2687)))))

(declare-fun b!1451209 () Bool)

(declare-fun res!982562 () Bool)

(assert (=> b!1451209 (=> (not res!982562) (not e!817135))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98319 (_ BitVec 32)) SeekEntryResult!11718)

(assert (=> b!1451209 (= res!982562 (= (seekEntryOrOpen!0 (select (arr!47443 a!2862) j!93) a!2862 mask!2687) (Found!11718 j!93)))))

(declare-fun b!1451205 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98319 (_ BitVec 32)) SeekEntryResult!11718)

(assert (=> b!1451205 (= e!817139 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636543 lt!636544 mask!2687) (seekEntryOrOpen!0 lt!636543 lt!636544 mask!2687)))))

(declare-fun res!982568 () Bool)

(assert (=> start!124954 (=> (not res!982568) (not e!817136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124954 (= res!982568 (validMask!0 mask!2687))))

(assert (=> start!124954 e!817136))

(assert (=> start!124954 true))

(declare-fun array_inv!36388 (array!98319) Bool)

(assert (=> start!124954 (array_inv!36388 a!2862)))

(assert (= (and start!124954 res!982568) b!1451196))

(assert (= (and b!1451196 res!982566) b!1451203))

(assert (= (and b!1451203 res!982560) b!1451198))

(assert (= (and b!1451198 res!982557) b!1451207))

(assert (= (and b!1451207 res!982561) b!1451200))

(assert (= (and b!1451200 res!982556) b!1451202))

(assert (= (and b!1451202 res!982567) b!1451206))

(assert (= (and b!1451206 res!982569) b!1451204))

(assert (= (and b!1451204 res!982555) b!1451195))

(assert (= (and b!1451195 res!982565) b!1451201))

(assert (= (and b!1451201 res!982563) b!1451197))

(assert (= (and b!1451197 c!133832) b!1451208))

(assert (= (and b!1451197 (not c!133832)) b!1451205))

(assert (= (and b!1451197 res!982564) b!1451194))

(assert (= (and b!1451194 res!982559) b!1451193))

(assert (= (and b!1451193 res!982558) b!1451209))

(assert (= (and b!1451209 res!982562) b!1451199))

(declare-fun m!1339851 () Bool)

(assert (=> b!1451206 m!1339851))

(declare-fun m!1339853 () Bool)

(assert (=> b!1451206 m!1339853))

(declare-fun m!1339855 () Bool)

(assert (=> b!1451205 m!1339855))

(declare-fun m!1339857 () Bool)

(assert (=> b!1451205 m!1339857))

(declare-fun m!1339859 () Bool)

(assert (=> b!1451207 m!1339859))

(declare-fun m!1339861 () Bool)

(assert (=> start!124954 m!1339861))

(declare-fun m!1339863 () Bool)

(assert (=> start!124954 m!1339863))

(declare-fun m!1339865 () Bool)

(assert (=> b!1451200 m!1339865))

(declare-fun m!1339867 () Bool)

(assert (=> b!1451195 m!1339867))

(assert (=> b!1451195 m!1339867))

(declare-fun m!1339869 () Bool)

(assert (=> b!1451195 m!1339869))

(declare-fun m!1339871 () Bool)

(assert (=> b!1451201 m!1339871))

(assert (=> b!1451201 m!1339871))

(declare-fun m!1339873 () Bool)

(assert (=> b!1451201 m!1339873))

(assert (=> b!1451201 m!1339851))

(declare-fun m!1339875 () Bool)

(assert (=> b!1451201 m!1339875))

(assert (=> b!1451198 m!1339867))

(assert (=> b!1451198 m!1339867))

(declare-fun m!1339877 () Bool)

(assert (=> b!1451198 m!1339877))

(declare-fun m!1339879 () Bool)

(assert (=> b!1451208 m!1339879))

(assert (=> b!1451199 m!1339851))

(declare-fun m!1339881 () Bool)

(assert (=> b!1451199 m!1339881))

(declare-fun m!1339883 () Bool)

(assert (=> b!1451199 m!1339883))

(declare-fun m!1339885 () Bool)

(assert (=> b!1451199 m!1339885))

(assert (=> b!1451199 m!1339867))

(declare-fun m!1339887 () Bool)

(assert (=> b!1451203 m!1339887))

(assert (=> b!1451203 m!1339887))

(declare-fun m!1339889 () Bool)

(assert (=> b!1451203 m!1339889))

(declare-fun m!1339891 () Bool)

(assert (=> b!1451193 m!1339891))

(assert (=> b!1451193 m!1339851))

(assert (=> b!1451193 m!1339883))

(assert (=> b!1451193 m!1339885))

(declare-fun m!1339893 () Bool)

(assert (=> b!1451193 m!1339893))

(assert (=> b!1451193 m!1339867))

(assert (=> b!1451209 m!1339867))

(assert (=> b!1451209 m!1339867))

(declare-fun m!1339895 () Bool)

(assert (=> b!1451209 m!1339895))

(assert (=> b!1451204 m!1339867))

(assert (=> b!1451204 m!1339867))

(declare-fun m!1339897 () Bool)

(assert (=> b!1451204 m!1339897))

(assert (=> b!1451204 m!1339897))

(assert (=> b!1451204 m!1339867))

(declare-fun m!1339899 () Bool)

(assert (=> b!1451204 m!1339899))

(push 1)

