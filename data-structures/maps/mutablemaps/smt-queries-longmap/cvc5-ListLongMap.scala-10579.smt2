; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124654 () Bool)

(assert start!124654)

(declare-fun b!1442913 () Bool)

(declare-fun e!813193 () Bool)

(declare-fun e!813191 () Bool)

(assert (=> b!1442913 (= e!813193 e!813191)))

(declare-fun res!975186 () Bool)

(assert (=> b!1442913 (=> (not res!975186) (not e!813191))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11568 0))(
  ( (MissingZero!11568 (index!48663 (_ BitVec 32))) (Found!11568 (index!48664 (_ BitVec 32))) (Intermediate!11568 (undefined!12380 Bool) (index!48665 (_ BitVec 32)) (x!130372 (_ BitVec 32))) (Undefined!11568) (MissingVacant!11568 (index!48666 (_ BitVec 32))) )
))
(declare-fun lt!633664 () SeekEntryResult!11568)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442913 (= res!975186 (= lt!633664 (Intermediate!11568 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633667 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98019 0))(
  ( (array!98020 (arr!47293 (Array (_ BitVec 32) (_ BitVec 64))) (size!47844 (_ BitVec 32))) )
))
(declare-fun lt!633663 () array!98019)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98019 (_ BitVec 32)) SeekEntryResult!11568)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442913 (= lt!633664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633667 mask!2687) lt!633667 lt!633663 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98019)

(assert (=> b!1442913 (= lt!633667 (select (store (arr!47293 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442914 () Bool)

(declare-fun res!975189 () Bool)

(declare-fun e!813196 () Bool)

(assert (=> b!1442914 (=> (not res!975189) (not e!813196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98019 (_ BitVec 32)) Bool)

(assert (=> b!1442914 (= res!975189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442915 () Bool)

(declare-fun e!813195 () Bool)

(assert (=> b!1442915 (= e!813196 e!813195)))

(declare-fun res!975181 () Bool)

(assert (=> b!1442915 (=> (not res!975181) (not e!813195))))

(assert (=> b!1442915 (= res!975181 (= (select (store (arr!47293 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442915 (= lt!633663 (array!98020 (store (arr!47293 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47844 a!2862)))))

(declare-fun res!975175 () Bool)

(assert (=> start!124654 (=> (not res!975175) (not e!813196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124654 (= res!975175 (validMask!0 mask!2687))))

(assert (=> start!124654 e!813196))

(assert (=> start!124654 true))

(declare-fun array_inv!36238 (array!98019) Bool)

(assert (=> start!124654 (array_inv!36238 a!2862)))

(declare-fun b!1442916 () Bool)

(declare-fun res!975176 () Bool)

(assert (=> b!1442916 (=> (not res!975176) (not e!813196))))

(declare-datatypes ((List!33974 0))(
  ( (Nil!33971) (Cons!33970 (h!35320 (_ BitVec 64)) (t!48675 List!33974)) )
))
(declare-fun arrayNoDuplicates!0 (array!98019 (_ BitVec 32) List!33974) Bool)

(assert (=> b!1442916 (= res!975176 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33971))))

(declare-fun b!1442917 () Bool)

(declare-fun res!975184 () Bool)

(assert (=> b!1442917 (=> (not res!975184) (not e!813196))))

(assert (=> b!1442917 (= res!975184 (and (= (size!47844 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47844 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47844 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442918 () Bool)

(declare-fun res!975182 () Bool)

(assert (=> b!1442918 (=> (not res!975182) (not e!813191))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442918 (= res!975182 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442919 () Bool)

(declare-fun res!975177 () Bool)

(assert (=> b!1442919 (=> (not res!975177) (not e!813191))))

(declare-fun e!813194 () Bool)

(assert (=> b!1442919 (= res!975177 e!813194)))

(declare-fun c!133382 () Bool)

(assert (=> b!1442919 (= c!133382 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442920 () Bool)

(declare-fun res!975183 () Bool)

(assert (=> b!1442920 (=> (not res!975183) (not e!813196))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1442920 (= res!975183 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47844 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47844 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47844 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442921 () Bool)

(declare-fun res!975178 () Bool)

(declare-fun e!813192 () Bool)

(assert (=> b!1442921 (=> (not res!975178) (not e!813192))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98019 (_ BitVec 32)) SeekEntryResult!11568)

(assert (=> b!1442921 (= res!975178 (= (seekEntryOrOpen!0 (select (arr!47293 a!2862) j!93) a!2862 mask!2687) (Found!11568 j!93)))))

(declare-fun b!1442922 () Bool)

(declare-fun res!975179 () Bool)

(assert (=> b!1442922 (=> (not res!975179) (not e!813196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442922 (= res!975179 (validKeyInArray!0 (select (arr!47293 a!2862) i!1006)))))

(declare-fun b!1442923 () Bool)

(assert (=> b!1442923 (= e!813195 e!813193)))

(declare-fun res!975185 () Bool)

(assert (=> b!1442923 (=> (not res!975185) (not e!813193))))

(declare-fun lt!633666 () SeekEntryResult!11568)

(assert (=> b!1442923 (= res!975185 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47293 a!2862) j!93) mask!2687) (select (arr!47293 a!2862) j!93) a!2862 mask!2687) lt!633666))))

(assert (=> b!1442923 (= lt!633666 (Intermediate!11568 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442924 () Bool)

(declare-fun res!975187 () Bool)

(assert (=> b!1442924 (=> (not res!975187) (not e!813196))))

(assert (=> b!1442924 (= res!975187 (validKeyInArray!0 (select (arr!47293 a!2862) j!93)))))

(declare-fun b!1442925 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98019 (_ BitVec 32)) SeekEntryResult!11568)

(assert (=> b!1442925 (= e!813194 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633667 lt!633663 mask!2687) (seekEntryOrOpen!0 lt!633667 lt!633663 mask!2687)))))

(declare-fun b!1442926 () Bool)

(assert (=> b!1442926 (= e!813192 (or (= (select (arr!47293 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47293 a!2862) intermediateBeforeIndex!19) (select (arr!47293 a!2862) j!93))))))

(declare-fun b!1442927 () Bool)

(declare-fun res!975188 () Bool)

(assert (=> b!1442927 (=> (not res!975188) (not e!813193))))

(assert (=> b!1442927 (= res!975188 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47293 a!2862) j!93) a!2862 mask!2687) lt!633666))))

(declare-fun b!1442928 () Bool)

(assert (=> b!1442928 (= e!813194 (= lt!633664 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633667 lt!633663 mask!2687)))))

(declare-fun b!1442929 () Bool)

(assert (=> b!1442929 (= e!813191 (not true))))

(assert (=> b!1442929 e!813192))

(declare-fun res!975180 () Bool)

(assert (=> b!1442929 (=> (not res!975180) (not e!813192))))

(assert (=> b!1442929 (= res!975180 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48580 0))(
  ( (Unit!48581) )
))
(declare-fun lt!633665 () Unit!48580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48580)

(assert (=> b!1442929 (= lt!633665 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124654 res!975175) b!1442917))

(assert (= (and b!1442917 res!975184) b!1442922))

(assert (= (and b!1442922 res!975179) b!1442924))

(assert (= (and b!1442924 res!975187) b!1442914))

(assert (= (and b!1442914 res!975189) b!1442916))

(assert (= (and b!1442916 res!975176) b!1442920))

(assert (= (and b!1442920 res!975183) b!1442915))

(assert (= (and b!1442915 res!975181) b!1442923))

(assert (= (and b!1442923 res!975185) b!1442927))

(assert (= (and b!1442927 res!975188) b!1442913))

(assert (= (and b!1442913 res!975186) b!1442919))

(assert (= (and b!1442919 c!133382) b!1442928))

(assert (= (and b!1442919 (not c!133382)) b!1442925))

(assert (= (and b!1442919 res!975177) b!1442918))

(assert (= (and b!1442918 res!975182) b!1442929))

(assert (= (and b!1442929 res!975180) b!1442921))

(assert (= (and b!1442921 res!975178) b!1442926))

(declare-fun m!1332081 () Bool)

(assert (=> b!1442928 m!1332081))

(declare-fun m!1332083 () Bool)

(assert (=> b!1442914 m!1332083))

(declare-fun m!1332085 () Bool)

(assert (=> b!1442927 m!1332085))

(assert (=> b!1442927 m!1332085))

(declare-fun m!1332087 () Bool)

(assert (=> b!1442927 m!1332087))

(declare-fun m!1332089 () Bool)

(assert (=> b!1442925 m!1332089))

(declare-fun m!1332091 () Bool)

(assert (=> b!1442925 m!1332091))

(assert (=> b!1442923 m!1332085))

(assert (=> b!1442923 m!1332085))

(declare-fun m!1332093 () Bool)

(assert (=> b!1442923 m!1332093))

(assert (=> b!1442923 m!1332093))

(assert (=> b!1442923 m!1332085))

(declare-fun m!1332095 () Bool)

(assert (=> b!1442923 m!1332095))

(declare-fun m!1332097 () Bool)

(assert (=> start!124654 m!1332097))

(declare-fun m!1332099 () Bool)

(assert (=> start!124654 m!1332099))

(declare-fun m!1332101 () Bool)

(assert (=> b!1442929 m!1332101))

(declare-fun m!1332103 () Bool)

(assert (=> b!1442929 m!1332103))

(declare-fun m!1332105 () Bool)

(assert (=> b!1442913 m!1332105))

(assert (=> b!1442913 m!1332105))

(declare-fun m!1332107 () Bool)

(assert (=> b!1442913 m!1332107))

(declare-fun m!1332109 () Bool)

(assert (=> b!1442913 m!1332109))

(declare-fun m!1332111 () Bool)

(assert (=> b!1442913 m!1332111))

(declare-fun m!1332113 () Bool)

(assert (=> b!1442926 m!1332113))

(assert (=> b!1442926 m!1332085))

(declare-fun m!1332115 () Bool)

(assert (=> b!1442922 m!1332115))

(assert (=> b!1442922 m!1332115))

(declare-fun m!1332117 () Bool)

(assert (=> b!1442922 m!1332117))

(assert (=> b!1442924 m!1332085))

(assert (=> b!1442924 m!1332085))

(declare-fun m!1332119 () Bool)

(assert (=> b!1442924 m!1332119))

(declare-fun m!1332121 () Bool)

(assert (=> b!1442916 m!1332121))

(assert (=> b!1442921 m!1332085))

(assert (=> b!1442921 m!1332085))

(declare-fun m!1332123 () Bool)

(assert (=> b!1442921 m!1332123))

(assert (=> b!1442915 m!1332109))

(declare-fun m!1332125 () Bool)

(assert (=> b!1442915 m!1332125))

(push 1)

