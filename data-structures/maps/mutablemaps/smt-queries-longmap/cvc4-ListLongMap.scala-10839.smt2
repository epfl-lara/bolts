; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126926 () Bool)

(assert start!126926)

(declare-fun b!1490594 () Bool)

(declare-fun res!1013957 () Bool)

(declare-fun e!835274 () Bool)

(assert (=> b!1490594 (=> (not res!1013957) (not e!835274))))

(declare-fun e!835277 () Bool)

(assert (=> b!1490594 (= res!1013957 e!835277)))

(declare-fun c!137849 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490594 (= c!137849 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490595 () Bool)

(declare-fun res!1013970 () Bool)

(declare-fun e!835271 () Bool)

(assert (=> b!1490595 (=> (not res!1013970) (not e!835271))))

(declare-datatypes ((array!99616 0))(
  ( (array!99617 (arr!48075 (Array (_ BitVec 32) (_ BitVec 64))) (size!48626 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99616)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99616 (_ BitVec 32)) Bool)

(assert (=> b!1490595 (= res!1013970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!835273 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1490596 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490596 (= e!835273 (or (= (select (arr!48075 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48075 a!2862) intermediateBeforeIndex!19) (select (arr!48075 a!2862) j!93))))))

(declare-fun b!1490597 () Bool)

(declare-fun res!1013959 () Bool)

(assert (=> b!1490597 (=> (not res!1013959) (not e!835271))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490597 (= res!1013959 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48626 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48626 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48626 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490598 () Bool)

(declare-fun e!835275 () Bool)

(assert (=> b!1490598 (= e!835275 e!835274)))

(declare-fun res!1013967 () Bool)

(assert (=> b!1490598 (=> (not res!1013967) (not e!835274))))

(declare-datatypes ((SeekEntryResult!12338 0))(
  ( (MissingZero!12338 (index!51743 (_ BitVec 32))) (Found!12338 (index!51744 (_ BitVec 32))) (Intermediate!12338 (undefined!13150 Bool) (index!51745 (_ BitVec 32)) (x!133333 (_ BitVec 32))) (Undefined!12338) (MissingVacant!12338 (index!51746 (_ BitVec 32))) )
))
(declare-fun lt!649962 () SeekEntryResult!12338)

(assert (=> b!1490598 (= res!1013967 (= lt!649962 (Intermediate!12338 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649961 () array!99616)

(declare-fun lt!649964 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99616 (_ BitVec 32)) SeekEntryResult!12338)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490598 (= lt!649962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649964 mask!2687) lt!649964 lt!649961 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490598 (= lt!649964 (select (store (arr!48075 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490599 () Bool)

(declare-fun res!1013964 () Bool)

(assert (=> b!1490599 (=> (not res!1013964) (not e!835271))))

(assert (=> b!1490599 (= res!1013964 (and (= (size!48626 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48626 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48626 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490600 () Bool)

(declare-fun res!1013963 () Bool)

(assert (=> b!1490600 (=> (not res!1013963) (not e!835274))))

(assert (=> b!1490600 (= res!1013963 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490601 () Bool)

(declare-fun e!835276 () Bool)

(assert (=> b!1490601 (= e!835271 e!835276)))

(declare-fun res!1013955 () Bool)

(assert (=> b!1490601 (=> (not res!1013955) (not e!835276))))

(assert (=> b!1490601 (= res!1013955 (= (select (store (arr!48075 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490601 (= lt!649961 (array!99617 (store (arr!48075 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48626 a!2862)))))

(declare-fun b!1490602 () Bool)

(assert (=> b!1490602 (= e!835277 (= lt!649962 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649964 lt!649961 mask!2687)))))

(declare-fun res!1013960 () Bool)

(assert (=> start!126926 (=> (not res!1013960) (not e!835271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126926 (= res!1013960 (validMask!0 mask!2687))))

(assert (=> start!126926 e!835271))

(assert (=> start!126926 true))

(declare-fun array_inv!37020 (array!99616) Bool)

(assert (=> start!126926 (array_inv!37020 a!2862)))

(declare-fun b!1490603 () Bool)

(declare-fun e!835272 () Bool)

(assert (=> b!1490603 (= e!835272 true)))

(declare-fun lt!649966 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490603 (= lt!649966 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490604 () Bool)

(declare-fun res!1013969 () Bool)

(assert (=> b!1490604 (=> (not res!1013969) (not e!835271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490604 (= res!1013969 (validKeyInArray!0 (select (arr!48075 a!2862) j!93)))))

(declare-fun b!1490605 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99616 (_ BitVec 32)) SeekEntryResult!12338)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99616 (_ BitVec 32)) SeekEntryResult!12338)

(assert (=> b!1490605 (= e!835277 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649964 lt!649961 mask!2687) (seekEntryOrOpen!0 lt!649964 lt!649961 mask!2687)))))

(declare-fun b!1490606 () Bool)

(declare-fun res!1013965 () Bool)

(assert (=> b!1490606 (=> (not res!1013965) (not e!835275))))

(declare-fun lt!649963 () SeekEntryResult!12338)

(assert (=> b!1490606 (= res!1013965 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48075 a!2862) j!93) a!2862 mask!2687) lt!649963))))

(declare-fun b!1490607 () Bool)

(declare-fun res!1013966 () Bool)

(assert (=> b!1490607 (=> (not res!1013966) (not e!835271))))

(declare-datatypes ((List!34756 0))(
  ( (Nil!34753) (Cons!34752 (h!36135 (_ BitVec 64)) (t!49457 List!34756)) )
))
(declare-fun arrayNoDuplicates!0 (array!99616 (_ BitVec 32) List!34756) Bool)

(assert (=> b!1490607 (= res!1013966 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34753))))

(declare-fun b!1490608 () Bool)

(assert (=> b!1490608 (= e!835276 e!835275)))

(declare-fun res!1013961 () Bool)

(assert (=> b!1490608 (=> (not res!1013961) (not e!835275))))

(assert (=> b!1490608 (= res!1013961 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48075 a!2862) j!93) mask!2687) (select (arr!48075 a!2862) j!93) a!2862 mask!2687) lt!649963))))

(assert (=> b!1490608 (= lt!649963 (Intermediate!12338 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490609 () Bool)

(assert (=> b!1490609 (= e!835274 (not e!835272))))

(declare-fun res!1013956 () Bool)

(assert (=> b!1490609 (=> res!1013956 e!835272)))

(assert (=> b!1490609 (= res!1013956 (or (and (= (select (arr!48075 a!2862) index!646) (select (store (arr!48075 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48075 a!2862) index!646) (select (arr!48075 a!2862) j!93))) (= (select (arr!48075 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490609 e!835273))

(declare-fun res!1013958 () Bool)

(assert (=> b!1490609 (=> (not res!1013958) (not e!835273))))

(assert (=> b!1490609 (= res!1013958 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49964 0))(
  ( (Unit!49965) )
))
(declare-fun lt!649965 () Unit!49964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49964)

(assert (=> b!1490609 (= lt!649965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490610 () Bool)

(declare-fun res!1013968 () Bool)

(assert (=> b!1490610 (=> (not res!1013968) (not e!835273))))

(assert (=> b!1490610 (= res!1013968 (= (seekEntryOrOpen!0 (select (arr!48075 a!2862) j!93) a!2862 mask!2687) (Found!12338 j!93)))))

(declare-fun b!1490611 () Bool)

(declare-fun res!1013962 () Bool)

(assert (=> b!1490611 (=> (not res!1013962) (not e!835271))))

(assert (=> b!1490611 (= res!1013962 (validKeyInArray!0 (select (arr!48075 a!2862) i!1006)))))

(assert (= (and start!126926 res!1013960) b!1490599))

(assert (= (and b!1490599 res!1013964) b!1490611))

(assert (= (and b!1490611 res!1013962) b!1490604))

(assert (= (and b!1490604 res!1013969) b!1490595))

(assert (= (and b!1490595 res!1013970) b!1490607))

(assert (= (and b!1490607 res!1013966) b!1490597))

(assert (= (and b!1490597 res!1013959) b!1490601))

(assert (= (and b!1490601 res!1013955) b!1490608))

(assert (= (and b!1490608 res!1013961) b!1490606))

(assert (= (and b!1490606 res!1013965) b!1490598))

(assert (= (and b!1490598 res!1013967) b!1490594))

(assert (= (and b!1490594 c!137849) b!1490602))

(assert (= (and b!1490594 (not c!137849)) b!1490605))

(assert (= (and b!1490594 res!1013957) b!1490600))

(assert (= (and b!1490600 res!1013963) b!1490609))

(assert (= (and b!1490609 res!1013958) b!1490610))

(assert (= (and b!1490610 res!1013968) b!1490596))

(assert (= (and b!1490609 (not res!1013956)) b!1490603))

(declare-fun m!1374803 () Bool)

(assert (=> b!1490607 m!1374803))

(declare-fun m!1374805 () Bool)

(assert (=> b!1490606 m!1374805))

(assert (=> b!1490606 m!1374805))

(declare-fun m!1374807 () Bool)

(assert (=> b!1490606 m!1374807))

(declare-fun m!1374809 () Bool)

(assert (=> b!1490596 m!1374809))

(assert (=> b!1490596 m!1374805))

(declare-fun m!1374811 () Bool)

(assert (=> start!126926 m!1374811))

(declare-fun m!1374813 () Bool)

(assert (=> start!126926 m!1374813))

(declare-fun m!1374815 () Bool)

(assert (=> b!1490598 m!1374815))

(assert (=> b!1490598 m!1374815))

(declare-fun m!1374817 () Bool)

(assert (=> b!1490598 m!1374817))

(declare-fun m!1374819 () Bool)

(assert (=> b!1490598 m!1374819))

(declare-fun m!1374821 () Bool)

(assert (=> b!1490598 m!1374821))

(assert (=> b!1490608 m!1374805))

(assert (=> b!1490608 m!1374805))

(declare-fun m!1374823 () Bool)

(assert (=> b!1490608 m!1374823))

(assert (=> b!1490608 m!1374823))

(assert (=> b!1490608 m!1374805))

(declare-fun m!1374825 () Bool)

(assert (=> b!1490608 m!1374825))

(declare-fun m!1374827 () Bool)

(assert (=> b!1490605 m!1374827))

(declare-fun m!1374829 () Bool)

(assert (=> b!1490605 m!1374829))

(declare-fun m!1374831 () Bool)

(assert (=> b!1490595 m!1374831))

(declare-fun m!1374833 () Bool)

(assert (=> b!1490611 m!1374833))

(assert (=> b!1490611 m!1374833))

(declare-fun m!1374835 () Bool)

(assert (=> b!1490611 m!1374835))

(declare-fun m!1374837 () Bool)

(assert (=> b!1490603 m!1374837))

(assert (=> b!1490601 m!1374819))

(declare-fun m!1374839 () Bool)

(assert (=> b!1490601 m!1374839))

(assert (=> b!1490610 m!1374805))

(assert (=> b!1490610 m!1374805))

(declare-fun m!1374841 () Bool)

(assert (=> b!1490610 m!1374841))

(assert (=> b!1490604 m!1374805))

(assert (=> b!1490604 m!1374805))

(declare-fun m!1374843 () Bool)

(assert (=> b!1490604 m!1374843))

(declare-fun m!1374845 () Bool)

(assert (=> b!1490609 m!1374845))

(assert (=> b!1490609 m!1374819))

(declare-fun m!1374847 () Bool)

(assert (=> b!1490609 m!1374847))

(declare-fun m!1374849 () Bool)

(assert (=> b!1490609 m!1374849))

(declare-fun m!1374851 () Bool)

(assert (=> b!1490609 m!1374851))

(assert (=> b!1490609 m!1374805))

(declare-fun m!1374853 () Bool)

(assert (=> b!1490602 m!1374853))

(push 1)

