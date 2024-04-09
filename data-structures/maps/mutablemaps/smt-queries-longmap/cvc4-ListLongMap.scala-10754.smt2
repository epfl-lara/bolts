; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125828 () Bool)

(assert start!125828)

(declare-fun b!1472127 () Bool)

(declare-fun res!999933 () Bool)

(declare-fun e!826238 () Bool)

(assert (=> b!1472127 (=> (not res!999933) (not e!826238))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12083 0))(
  ( (MissingZero!12083 (index!50723 (_ BitVec 32))) (Found!12083 (index!50724 (_ BitVec 32))) (Intermediate!12083 (undefined!12895 Bool) (index!50725 (_ BitVec 32)) (x!132305 (_ BitVec 32))) (Undefined!12083) (MissingVacant!12083 (index!50726 (_ BitVec 32))) )
))
(declare-fun lt!643443 () SeekEntryResult!12083)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99079 0))(
  ( (array!99080 (arr!47820 (Array (_ BitVec 32) (_ BitVec 64))) (size!48371 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99079)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99079 (_ BitVec 32)) SeekEntryResult!12083)

(assert (=> b!1472127 (= res!999933 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47820 a!2862) j!93) a!2862 mask!2687) lt!643443))))

(declare-fun e!826242 () Bool)

(declare-fun lt!643444 () (_ BitVec 64))

(declare-fun b!1472128 () Bool)

(declare-fun lt!643446 () SeekEntryResult!12083)

(declare-fun lt!643445 () array!99079)

(assert (=> b!1472128 (= e!826242 (= lt!643446 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643444 lt!643445 mask!2687)))))

(declare-fun b!1472129 () Bool)

(declare-fun res!999927 () Bool)

(declare-fun e!826243 () Bool)

(assert (=> b!1472129 (=> (not res!999927) (not e!826243))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472129 (= res!999927 (and (= (size!48371 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48371 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48371 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472130 () Bool)

(declare-fun e!826244 () Bool)

(assert (=> b!1472130 (= e!826244 e!826238)))

(declare-fun res!999932 () Bool)

(assert (=> b!1472130 (=> (not res!999932) (not e!826238))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472130 (= res!999932 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47820 a!2862) j!93) mask!2687) (select (arr!47820 a!2862) j!93) a!2862 mask!2687) lt!643443))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472130 (= lt!643443 (Intermediate!12083 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472131 () Bool)

(declare-fun res!999929 () Bool)

(declare-fun e!826239 () Bool)

(assert (=> b!1472131 (=> (not res!999929) (not e!826239))))

(assert (=> b!1472131 (= res!999929 e!826242)))

(declare-fun c!135617 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472131 (= c!135617 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472132 () Bool)

(declare-fun res!999931 () Bool)

(assert (=> b!1472132 (=> (not res!999931) (not e!826243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472132 (= res!999931 (validKeyInArray!0 (select (arr!47820 a!2862) j!93)))))

(declare-fun b!1472133 () Bool)

(declare-fun res!999939 () Bool)

(assert (=> b!1472133 (=> (not res!999939) (not e!826243))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472133 (= res!999939 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48371 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48371 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48371 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472134 () Bool)

(declare-fun res!999937 () Bool)

(assert (=> b!1472134 (=> (not res!999937) (not e!826243))))

(declare-datatypes ((List!34501 0))(
  ( (Nil!34498) (Cons!34497 (h!35853 (_ BitVec 64)) (t!49202 List!34501)) )
))
(declare-fun arrayNoDuplicates!0 (array!99079 (_ BitVec 32) List!34501) Bool)

(assert (=> b!1472134 (= res!999937 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34498))))

(declare-fun b!1472135 () Bool)

(declare-fun res!999930 () Bool)

(declare-fun e!826240 () Bool)

(assert (=> b!1472135 (=> (not res!999930) (not e!826240))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99079 (_ BitVec 32)) SeekEntryResult!12083)

(assert (=> b!1472135 (= res!999930 (= (seekEntryOrOpen!0 (select (arr!47820 a!2862) j!93) a!2862 mask!2687) (Found!12083 j!93)))))

(declare-fun b!1472136 () Bool)

(declare-fun res!999928 () Bool)

(assert (=> b!1472136 (=> (not res!999928) (not e!826243))))

(assert (=> b!1472136 (= res!999928 (validKeyInArray!0 (select (arr!47820 a!2862) i!1006)))))

(declare-fun b!1472137 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99079 (_ BitVec 32)) SeekEntryResult!12083)

(assert (=> b!1472137 (= e!826242 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643444 lt!643445 mask!2687) (seekEntryOrOpen!0 lt!643444 lt!643445 mask!2687)))))

(declare-fun b!1472138 () Bool)

(declare-fun res!999938 () Bool)

(assert (=> b!1472138 (=> (not res!999938) (not e!826239))))

(assert (=> b!1472138 (= res!999938 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472139 () Bool)

(assert (=> b!1472139 (= e!826240 (or (= (select (arr!47820 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47820 a!2862) intermediateBeforeIndex!19) (select (arr!47820 a!2862) j!93))))))

(declare-fun b!1472140 () Bool)

(assert (=> b!1472140 (= e!826243 e!826244)))

(declare-fun res!999935 () Bool)

(assert (=> b!1472140 (=> (not res!999935) (not e!826244))))

(assert (=> b!1472140 (= res!999935 (= (select (store (arr!47820 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472140 (= lt!643445 (array!99080 (store (arr!47820 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48371 a!2862)))))

(declare-fun res!999926 () Bool)

(assert (=> start!125828 (=> (not res!999926) (not e!826243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125828 (= res!999926 (validMask!0 mask!2687))))

(assert (=> start!125828 e!826243))

(assert (=> start!125828 true))

(declare-fun array_inv!36765 (array!99079) Bool)

(assert (=> start!125828 (array_inv!36765 a!2862)))

(declare-fun b!1472141 () Bool)

(declare-fun res!999934 () Bool)

(assert (=> b!1472141 (=> (not res!999934) (not e!826243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99079 (_ BitVec 32)) Bool)

(assert (=> b!1472141 (= res!999934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472142 () Bool)

(assert (=> b!1472142 (= e!826239 (not true))))

(assert (=> b!1472142 e!826240))

(declare-fun res!999936 () Bool)

(assert (=> b!1472142 (=> (not res!999936) (not e!826240))))

(assert (=> b!1472142 (= res!999936 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49454 0))(
  ( (Unit!49455) )
))
(declare-fun lt!643447 () Unit!49454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49454)

(assert (=> b!1472142 (= lt!643447 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472143 () Bool)

(assert (=> b!1472143 (= e!826238 e!826239)))

(declare-fun res!999925 () Bool)

(assert (=> b!1472143 (=> (not res!999925) (not e!826239))))

(assert (=> b!1472143 (= res!999925 (= lt!643446 (Intermediate!12083 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472143 (= lt!643446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643444 mask!2687) lt!643444 lt!643445 mask!2687))))

(assert (=> b!1472143 (= lt!643444 (select (store (arr!47820 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125828 res!999926) b!1472129))

(assert (= (and b!1472129 res!999927) b!1472136))

(assert (= (and b!1472136 res!999928) b!1472132))

(assert (= (and b!1472132 res!999931) b!1472141))

(assert (= (and b!1472141 res!999934) b!1472134))

(assert (= (and b!1472134 res!999937) b!1472133))

(assert (= (and b!1472133 res!999939) b!1472140))

(assert (= (and b!1472140 res!999935) b!1472130))

(assert (= (and b!1472130 res!999932) b!1472127))

(assert (= (and b!1472127 res!999933) b!1472143))

(assert (= (and b!1472143 res!999925) b!1472131))

(assert (= (and b!1472131 c!135617) b!1472128))

(assert (= (and b!1472131 (not c!135617)) b!1472137))

(assert (= (and b!1472131 res!999929) b!1472138))

(assert (= (and b!1472138 res!999938) b!1472142))

(assert (= (and b!1472142 res!999936) b!1472135))

(assert (= (and b!1472135 res!999930) b!1472139))

(declare-fun m!1358921 () Bool)

(assert (=> b!1472140 m!1358921))

(declare-fun m!1358923 () Bool)

(assert (=> b!1472140 m!1358923))

(declare-fun m!1358925 () Bool)

(assert (=> b!1472130 m!1358925))

(assert (=> b!1472130 m!1358925))

(declare-fun m!1358927 () Bool)

(assert (=> b!1472130 m!1358927))

(assert (=> b!1472130 m!1358927))

(assert (=> b!1472130 m!1358925))

(declare-fun m!1358929 () Bool)

(assert (=> b!1472130 m!1358929))

(declare-fun m!1358931 () Bool)

(assert (=> b!1472139 m!1358931))

(assert (=> b!1472139 m!1358925))

(assert (=> b!1472135 m!1358925))

(assert (=> b!1472135 m!1358925))

(declare-fun m!1358933 () Bool)

(assert (=> b!1472135 m!1358933))

(assert (=> b!1472132 m!1358925))

(assert (=> b!1472132 m!1358925))

(declare-fun m!1358935 () Bool)

(assert (=> b!1472132 m!1358935))

(declare-fun m!1358937 () Bool)

(assert (=> b!1472142 m!1358937))

(declare-fun m!1358939 () Bool)

(assert (=> b!1472142 m!1358939))

(declare-fun m!1358941 () Bool)

(assert (=> b!1472128 m!1358941))

(declare-fun m!1358943 () Bool)

(assert (=> b!1472143 m!1358943))

(assert (=> b!1472143 m!1358943))

(declare-fun m!1358945 () Bool)

(assert (=> b!1472143 m!1358945))

(assert (=> b!1472143 m!1358921))

(declare-fun m!1358947 () Bool)

(assert (=> b!1472143 m!1358947))

(declare-fun m!1358949 () Bool)

(assert (=> b!1472134 m!1358949))

(declare-fun m!1358951 () Bool)

(assert (=> b!1472137 m!1358951))

(declare-fun m!1358953 () Bool)

(assert (=> b!1472137 m!1358953))

(declare-fun m!1358955 () Bool)

(assert (=> start!125828 m!1358955))

(declare-fun m!1358957 () Bool)

(assert (=> start!125828 m!1358957))

(declare-fun m!1358959 () Bool)

(assert (=> b!1472141 m!1358959))

(assert (=> b!1472127 m!1358925))

(assert (=> b!1472127 m!1358925))

(declare-fun m!1358961 () Bool)

(assert (=> b!1472127 m!1358961))

(declare-fun m!1358963 () Bool)

(assert (=> b!1472136 m!1358963))

(assert (=> b!1472136 m!1358963))

(declare-fun m!1358965 () Bool)

(assert (=> b!1472136 m!1358965))

(push 1)

