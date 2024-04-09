; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125390 () Bool)

(assert start!125390)

(declare-fun b!1464871 () Bool)

(declare-fun lt!641188 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11936 0))(
  ( (MissingZero!11936 (index!50135 (_ BitVec 32))) (Found!11936 (index!50136 (_ BitVec 32))) (Intermediate!11936 (undefined!12748 Bool) (index!50137 (_ BitVec 32)) (x!131716 (_ BitVec 32))) (Undefined!11936) (MissingVacant!11936 (index!50138 (_ BitVec 32))) )
))
(declare-fun lt!641191 () SeekEntryResult!11936)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641194 () (_ BitVec 64))

(declare-fun e!823197 () Bool)

(declare-datatypes ((array!98755 0))(
  ( (array!98756 (arr!47661 (Array (_ BitVec 32) (_ BitVec 64))) (size!48212 (_ BitVec 32))) )
))
(declare-fun lt!641193 () array!98755)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98755 (_ BitVec 32)) SeekEntryResult!11936)

(assert (=> b!1464871 (= e!823197 (not (= lt!641191 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641188 lt!641194 lt!641193 mask!2687))))))

(declare-fun b!1464872 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98755 (_ BitVec 32)) SeekEntryResult!11936)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98755 (_ BitVec 32)) SeekEntryResult!11936)

(assert (=> b!1464872 (= e!823197 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641188 intermediateAfterIndex!19 lt!641194 lt!641193 mask!2687) (seekEntryOrOpen!0 lt!641194 lt!641193 mask!2687))))))

(declare-fun b!1464873 () Bool)

(declare-fun e!823200 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1464873 (= e!823200 (= lt!641191 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641194 lt!641193 mask!2687)))))

(declare-fun b!1464874 () Bool)

(declare-fun res!993972 () Bool)

(declare-fun e!823201 () Bool)

(assert (=> b!1464874 (=> (not res!993972) (not e!823201))))

(assert (=> b!1464874 (= res!993972 e!823200)))

(declare-fun c!134972 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464874 (= c!134972 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!993959 () Bool)

(declare-fun e!823193 () Bool)

(assert (=> start!125390 (=> (not res!993959) (not e!823193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125390 (= res!993959 (validMask!0 mask!2687))))

(assert (=> start!125390 e!823193))

(assert (=> start!125390 true))

(declare-fun a!2862 () array!98755)

(declare-fun array_inv!36606 (array!98755) Bool)

(assert (=> start!125390 (array_inv!36606 a!2862)))

(declare-fun b!1464875 () Bool)

(assert (=> b!1464875 (= e!823200 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641194 lt!641193 mask!2687) (seekEntryOrOpen!0 lt!641194 lt!641193 mask!2687)))))

(declare-fun b!1464876 () Bool)

(declare-fun e!823202 () Bool)

(assert (=> b!1464876 (= e!823202 e!823201)))

(declare-fun res!993960 () Bool)

(assert (=> b!1464876 (=> (not res!993960) (not e!823201))))

(assert (=> b!1464876 (= res!993960 (= lt!641191 (Intermediate!11936 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464876 (= lt!641191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641194 mask!2687) lt!641194 lt!641193 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464876 (= lt!641194 (select (store (arr!47661 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464877 () Bool)

(declare-fun res!993964 () Bool)

(assert (=> b!1464877 (=> (not res!993964) (not e!823193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464877 (= res!993964 (validKeyInArray!0 (select (arr!47661 a!2862) j!93)))))

(declare-fun b!1464878 () Bool)

(declare-fun res!993971 () Bool)

(assert (=> b!1464878 (=> (not res!993971) (not e!823193))))

(declare-datatypes ((List!34342 0))(
  ( (Nil!34339) (Cons!34338 (h!35688 (_ BitVec 64)) (t!49043 List!34342)) )
))
(declare-fun arrayNoDuplicates!0 (array!98755 (_ BitVec 32) List!34342) Bool)

(assert (=> b!1464878 (= res!993971 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34339))))

(declare-fun b!1464879 () Bool)

(declare-fun e!823198 () Bool)

(assert (=> b!1464879 (= e!823193 e!823198)))

(declare-fun res!993958 () Bool)

(assert (=> b!1464879 (=> (not res!993958) (not e!823198))))

(assert (=> b!1464879 (= res!993958 (= (select (store (arr!47661 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464879 (= lt!641193 (array!98756 (store (arr!47661 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48212 a!2862)))))

(declare-fun b!1464880 () Bool)

(declare-fun res!993967 () Bool)

(declare-fun e!823194 () Bool)

(assert (=> b!1464880 (=> res!993967 e!823194)))

(declare-fun lt!641189 () SeekEntryResult!11936)

(assert (=> b!1464880 (= res!993967 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641188 (select (arr!47661 a!2862) j!93) a!2862 mask!2687) lt!641189)))))

(declare-fun b!1464881 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!823195 () Bool)

(assert (=> b!1464881 (= e!823195 (or (= (select (arr!47661 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47661 a!2862) intermediateBeforeIndex!19) (select (arr!47661 a!2862) j!93))))))

(declare-fun b!1464882 () Bool)

(declare-fun res!993955 () Bool)

(assert (=> b!1464882 (=> (not res!993955) (not e!823201))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464882 (= res!993955 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464883 () Bool)

(assert (=> b!1464883 (= e!823194 true)))

(declare-fun lt!641192 () Bool)

(assert (=> b!1464883 (= lt!641192 e!823197)))

(declare-fun c!134971 () Bool)

(assert (=> b!1464883 (= c!134971 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464884 () Bool)

(declare-fun e!823199 () Bool)

(assert (=> b!1464884 (= e!823199 e!823194)))

(declare-fun res!993963 () Bool)

(assert (=> b!1464884 (=> res!993963 e!823194)))

(assert (=> b!1464884 (= res!993963 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641188 #b00000000000000000000000000000000) (bvsge lt!641188 (size!48212 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464884 (= lt!641188 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464885 () Bool)

(assert (=> b!1464885 (= e!823201 (not e!823199))))

(declare-fun res!993966 () Bool)

(assert (=> b!1464885 (=> res!993966 e!823199)))

(assert (=> b!1464885 (= res!993966 (or (and (= (select (arr!47661 a!2862) index!646) (select (store (arr!47661 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47661 a!2862) index!646) (select (arr!47661 a!2862) j!93))) (= (select (arr!47661 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464885 e!823195))

(declare-fun res!993956 () Bool)

(assert (=> b!1464885 (=> (not res!993956) (not e!823195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98755 (_ BitVec 32)) Bool)

(assert (=> b!1464885 (= res!993956 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49316 0))(
  ( (Unit!49317) )
))
(declare-fun lt!641190 () Unit!49316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49316)

(assert (=> b!1464885 (= lt!641190 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464886 () Bool)

(declare-fun res!993957 () Bool)

(assert (=> b!1464886 (=> (not res!993957) (not e!823195))))

(assert (=> b!1464886 (= res!993957 (= (seekEntryOrOpen!0 (select (arr!47661 a!2862) j!93) a!2862 mask!2687) (Found!11936 j!93)))))

(declare-fun b!1464887 () Bool)

(declare-fun res!993969 () Bool)

(assert (=> b!1464887 (=> (not res!993969) (not e!823193))))

(assert (=> b!1464887 (= res!993969 (validKeyInArray!0 (select (arr!47661 a!2862) i!1006)))))

(declare-fun b!1464888 () Bool)

(declare-fun res!993961 () Bool)

(assert (=> b!1464888 (=> (not res!993961) (not e!823193))))

(assert (=> b!1464888 (= res!993961 (and (= (size!48212 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48212 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48212 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464889 () Bool)

(declare-fun res!993965 () Bool)

(assert (=> b!1464889 (=> (not res!993965) (not e!823193))))

(assert (=> b!1464889 (= res!993965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464890 () Bool)

(declare-fun res!993970 () Bool)

(assert (=> b!1464890 (=> (not res!993970) (not e!823202))))

(assert (=> b!1464890 (= res!993970 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47661 a!2862) j!93) a!2862 mask!2687) lt!641189))))

(declare-fun b!1464891 () Bool)

(declare-fun res!993962 () Bool)

(assert (=> b!1464891 (=> (not res!993962) (not e!823193))))

(assert (=> b!1464891 (= res!993962 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48212 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48212 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48212 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464892 () Bool)

(assert (=> b!1464892 (= e!823198 e!823202)))

(declare-fun res!993968 () Bool)

(assert (=> b!1464892 (=> (not res!993968) (not e!823202))))

(assert (=> b!1464892 (= res!993968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47661 a!2862) j!93) mask!2687) (select (arr!47661 a!2862) j!93) a!2862 mask!2687) lt!641189))))

(assert (=> b!1464892 (= lt!641189 (Intermediate!11936 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125390 res!993959) b!1464888))

(assert (= (and b!1464888 res!993961) b!1464887))

(assert (= (and b!1464887 res!993969) b!1464877))

(assert (= (and b!1464877 res!993964) b!1464889))

(assert (= (and b!1464889 res!993965) b!1464878))

(assert (= (and b!1464878 res!993971) b!1464891))

(assert (= (and b!1464891 res!993962) b!1464879))

(assert (= (and b!1464879 res!993958) b!1464892))

(assert (= (and b!1464892 res!993968) b!1464890))

(assert (= (and b!1464890 res!993970) b!1464876))

(assert (= (and b!1464876 res!993960) b!1464874))

(assert (= (and b!1464874 c!134972) b!1464873))

(assert (= (and b!1464874 (not c!134972)) b!1464875))

(assert (= (and b!1464874 res!993972) b!1464882))

(assert (= (and b!1464882 res!993955) b!1464885))

(assert (= (and b!1464885 res!993956) b!1464886))

(assert (= (and b!1464886 res!993957) b!1464881))

(assert (= (and b!1464885 (not res!993966)) b!1464884))

(assert (= (and b!1464884 (not res!993963)) b!1464880))

(assert (= (and b!1464880 (not res!993967)) b!1464883))

(assert (= (and b!1464883 c!134971) b!1464871))

(assert (= (and b!1464883 (not c!134971)) b!1464872))

(declare-fun m!1352081 () Bool)

(assert (=> b!1464876 m!1352081))

(assert (=> b!1464876 m!1352081))

(declare-fun m!1352083 () Bool)

(assert (=> b!1464876 m!1352083))

(declare-fun m!1352085 () Bool)

(assert (=> b!1464876 m!1352085))

(declare-fun m!1352087 () Bool)

(assert (=> b!1464876 m!1352087))

(declare-fun m!1352089 () Bool)

(assert (=> b!1464880 m!1352089))

(assert (=> b!1464880 m!1352089))

(declare-fun m!1352091 () Bool)

(assert (=> b!1464880 m!1352091))

(declare-fun m!1352093 () Bool)

(assert (=> b!1464887 m!1352093))

(assert (=> b!1464887 m!1352093))

(declare-fun m!1352095 () Bool)

(assert (=> b!1464887 m!1352095))

(declare-fun m!1352097 () Bool)

(assert (=> b!1464875 m!1352097))

(declare-fun m!1352099 () Bool)

(assert (=> b!1464875 m!1352099))

(declare-fun m!1352101 () Bool)

(assert (=> start!125390 m!1352101))

(declare-fun m!1352103 () Bool)

(assert (=> start!125390 m!1352103))

(assert (=> b!1464892 m!1352089))

(assert (=> b!1464892 m!1352089))

(declare-fun m!1352105 () Bool)

(assert (=> b!1464892 m!1352105))

(assert (=> b!1464892 m!1352105))

(assert (=> b!1464892 m!1352089))

(declare-fun m!1352107 () Bool)

(assert (=> b!1464892 m!1352107))

(declare-fun m!1352109 () Bool)

(assert (=> b!1464881 m!1352109))

(assert (=> b!1464881 m!1352089))

(assert (=> b!1464886 m!1352089))

(assert (=> b!1464886 m!1352089))

(declare-fun m!1352111 () Bool)

(assert (=> b!1464886 m!1352111))

(declare-fun m!1352113 () Bool)

(assert (=> b!1464884 m!1352113))

(declare-fun m!1352115 () Bool)

(assert (=> b!1464872 m!1352115))

(assert (=> b!1464872 m!1352099))

(declare-fun m!1352117 () Bool)

(assert (=> b!1464885 m!1352117))

(assert (=> b!1464885 m!1352085))

(declare-fun m!1352119 () Bool)

(assert (=> b!1464885 m!1352119))

(declare-fun m!1352121 () Bool)

(assert (=> b!1464885 m!1352121))

(declare-fun m!1352123 () Bool)

(assert (=> b!1464885 m!1352123))

(assert (=> b!1464885 m!1352089))

(declare-fun m!1352125 () Bool)

(assert (=> b!1464878 m!1352125))

(assert (=> b!1464890 m!1352089))

(assert (=> b!1464890 m!1352089))

(declare-fun m!1352127 () Bool)

(assert (=> b!1464890 m!1352127))

(declare-fun m!1352129 () Bool)

(assert (=> b!1464871 m!1352129))

(assert (=> b!1464879 m!1352085))

(declare-fun m!1352131 () Bool)

(assert (=> b!1464879 m!1352131))

(declare-fun m!1352133 () Bool)

(assert (=> b!1464889 m!1352133))

(declare-fun m!1352135 () Bool)

(assert (=> b!1464873 m!1352135))

(assert (=> b!1464877 m!1352089))

(assert (=> b!1464877 m!1352089))

(declare-fun m!1352137 () Bool)

(assert (=> b!1464877 m!1352137))

(push 1)

