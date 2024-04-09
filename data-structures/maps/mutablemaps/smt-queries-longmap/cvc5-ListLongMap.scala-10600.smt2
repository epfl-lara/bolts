; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124780 () Bool)

(assert start!124780)

(declare-fun b!1446189 () Bool)

(declare-fun e!814570 () Bool)

(assert (=> b!1446189 (= e!814570 (not true))))

(declare-fun e!814573 () Bool)

(assert (=> b!1446189 e!814573))

(declare-fun res!978077 () Bool)

(assert (=> b!1446189 (=> (not res!978077) (not e!814573))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98145 0))(
  ( (array!98146 (arr!47356 (Array (_ BitVec 32) (_ BitVec 64))) (size!47907 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98145)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98145 (_ BitVec 32)) Bool)

(assert (=> b!1446189 (= res!978077 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48706 0))(
  ( (Unit!48707) )
))
(declare-fun lt!634682 () Unit!48706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48706)

(assert (=> b!1446189 (= lt!634682 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446190 () Bool)

(declare-fun res!978079 () Bool)

(declare-fun e!814568 () Bool)

(assert (=> b!1446190 (=> (not res!978079) (not e!814568))))

(assert (=> b!1446190 (= res!978079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446191 () Bool)

(declare-fun res!978078 () Bool)

(assert (=> b!1446191 (=> (not res!978078) (not e!814573))))

(declare-datatypes ((SeekEntryResult!11631 0))(
  ( (MissingZero!11631 (index!48915 (_ BitVec 32))) (Found!11631 (index!48916 (_ BitVec 32))) (Intermediate!11631 (undefined!12443 Bool) (index!48917 (_ BitVec 32)) (x!130603 (_ BitVec 32))) (Undefined!11631) (MissingVacant!11631 (index!48918 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98145 (_ BitVec 32)) SeekEntryResult!11631)

(assert (=> b!1446191 (= res!978078 (= (seekEntryOrOpen!0 (select (arr!47356 a!2862) j!93) a!2862 mask!2687) (Found!11631 j!93)))))

(declare-fun b!1446192 () Bool)

(declare-fun res!978080 () Bool)

(assert (=> b!1446192 (=> (not res!978080) (not e!814570))))

(declare-fun e!814569 () Bool)

(assert (=> b!1446192 (= res!978080 e!814569)))

(declare-fun c!133571 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446192 (= c!133571 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446193 () Bool)

(declare-fun res!978085 () Bool)

(assert (=> b!1446193 (=> (not res!978085) (not e!814568))))

(declare-datatypes ((List!34037 0))(
  ( (Nil!34034) (Cons!34033 (h!35383 (_ BitVec 64)) (t!48738 List!34037)) )
))
(declare-fun arrayNoDuplicates!0 (array!98145 (_ BitVec 32) List!34037) Bool)

(assert (=> b!1446193 (= res!978085 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34034))))

(declare-fun res!978076 () Bool)

(assert (=> start!124780 (=> (not res!978076) (not e!814568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124780 (= res!978076 (validMask!0 mask!2687))))

(assert (=> start!124780 e!814568))

(assert (=> start!124780 true))

(declare-fun array_inv!36301 (array!98145) Bool)

(assert (=> start!124780 (array_inv!36301 a!2862)))

(declare-fun b!1446194 () Bool)

(declare-fun res!978082 () Bool)

(assert (=> b!1446194 (=> (not res!978082) (not e!814568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446194 (= res!978082 (validKeyInArray!0 (select (arr!47356 a!2862) j!93)))))

(declare-fun b!1446195 () Bool)

(declare-fun res!978073 () Bool)

(assert (=> b!1446195 (=> (not res!978073) (not e!814568))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446195 (= res!978073 (validKeyInArray!0 (select (arr!47356 a!2862) i!1006)))))

(declare-fun lt!634683 () (_ BitVec 64))

(declare-fun lt!634681 () array!98145)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1446196 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98145 (_ BitVec 32)) SeekEntryResult!11631)

(assert (=> b!1446196 (= e!814569 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634683 lt!634681 mask!2687) (seekEntryOrOpen!0 lt!634683 lt!634681 mask!2687)))))

(declare-fun b!1446197 () Bool)

(declare-fun res!978087 () Bool)

(assert (=> b!1446197 (=> (not res!978087) (not e!814568))))

(assert (=> b!1446197 (= res!978087 (and (= (size!47907 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47907 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47907 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446198 () Bool)

(declare-fun res!978083 () Bool)

(declare-fun e!814572 () Bool)

(assert (=> b!1446198 (=> (not res!978083) (not e!814572))))

(declare-fun lt!634680 () SeekEntryResult!11631)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98145 (_ BitVec 32)) SeekEntryResult!11631)

(assert (=> b!1446198 (= res!978083 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47356 a!2862) j!93) a!2862 mask!2687) lt!634680))))

(declare-fun b!1446199 () Bool)

(declare-fun res!978081 () Bool)

(assert (=> b!1446199 (=> (not res!978081) (not e!814570))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446199 (= res!978081 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446200 () Bool)

(declare-fun e!814571 () Bool)

(assert (=> b!1446200 (= e!814571 e!814572)))

(declare-fun res!978086 () Bool)

(assert (=> b!1446200 (=> (not res!978086) (not e!814572))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446200 (= res!978086 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47356 a!2862) j!93) mask!2687) (select (arr!47356 a!2862) j!93) a!2862 mask!2687) lt!634680))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1446200 (= lt!634680 (Intermediate!11631 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!634684 () SeekEntryResult!11631)

(declare-fun b!1446201 () Bool)

(assert (=> b!1446201 (= e!814569 (= lt!634684 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634683 lt!634681 mask!2687)))))

(declare-fun b!1446202 () Bool)

(assert (=> b!1446202 (= e!814573 (or (= (select (arr!47356 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47356 a!2862) intermediateBeforeIndex!19) (select (arr!47356 a!2862) j!93))))))

(declare-fun b!1446203 () Bool)

(declare-fun res!978075 () Bool)

(assert (=> b!1446203 (=> (not res!978075) (not e!814568))))

(assert (=> b!1446203 (= res!978075 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47907 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47907 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47907 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446204 () Bool)

(assert (=> b!1446204 (= e!814568 e!814571)))

(declare-fun res!978074 () Bool)

(assert (=> b!1446204 (=> (not res!978074) (not e!814571))))

(assert (=> b!1446204 (= res!978074 (= (select (store (arr!47356 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446204 (= lt!634681 (array!98146 (store (arr!47356 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47907 a!2862)))))

(declare-fun b!1446205 () Bool)

(assert (=> b!1446205 (= e!814572 e!814570)))

(declare-fun res!978084 () Bool)

(assert (=> b!1446205 (=> (not res!978084) (not e!814570))))

(assert (=> b!1446205 (= res!978084 (= lt!634684 (Intermediate!11631 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446205 (= lt!634684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634683 mask!2687) lt!634683 lt!634681 mask!2687))))

(assert (=> b!1446205 (= lt!634683 (select (store (arr!47356 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124780 res!978076) b!1446197))

(assert (= (and b!1446197 res!978087) b!1446195))

(assert (= (and b!1446195 res!978073) b!1446194))

(assert (= (and b!1446194 res!978082) b!1446190))

(assert (= (and b!1446190 res!978079) b!1446193))

(assert (= (and b!1446193 res!978085) b!1446203))

(assert (= (and b!1446203 res!978075) b!1446204))

(assert (= (and b!1446204 res!978074) b!1446200))

(assert (= (and b!1446200 res!978086) b!1446198))

(assert (= (and b!1446198 res!978083) b!1446205))

(assert (= (and b!1446205 res!978084) b!1446192))

(assert (= (and b!1446192 c!133571) b!1446201))

(assert (= (and b!1446192 (not c!133571)) b!1446196))

(assert (= (and b!1446192 res!978080) b!1446199))

(assert (= (and b!1446199 res!978081) b!1446189))

(assert (= (and b!1446189 res!978077) b!1446191))

(assert (= (and b!1446191 res!978078) b!1446202))

(declare-fun m!1335135 () Bool)

(assert (=> b!1446189 m!1335135))

(declare-fun m!1335137 () Bool)

(assert (=> b!1446189 m!1335137))

(declare-fun m!1335139 () Bool)

(assert (=> b!1446205 m!1335139))

(assert (=> b!1446205 m!1335139))

(declare-fun m!1335141 () Bool)

(assert (=> b!1446205 m!1335141))

(declare-fun m!1335143 () Bool)

(assert (=> b!1446205 m!1335143))

(declare-fun m!1335145 () Bool)

(assert (=> b!1446205 m!1335145))

(declare-fun m!1335147 () Bool)

(assert (=> b!1446196 m!1335147))

(declare-fun m!1335149 () Bool)

(assert (=> b!1446196 m!1335149))

(declare-fun m!1335151 () Bool)

(assert (=> b!1446190 m!1335151))

(declare-fun m!1335153 () Bool)

(assert (=> b!1446191 m!1335153))

(assert (=> b!1446191 m!1335153))

(declare-fun m!1335155 () Bool)

(assert (=> b!1446191 m!1335155))

(declare-fun m!1335157 () Bool)

(assert (=> b!1446195 m!1335157))

(assert (=> b!1446195 m!1335157))

(declare-fun m!1335159 () Bool)

(assert (=> b!1446195 m!1335159))

(declare-fun m!1335161 () Bool)

(assert (=> b!1446193 m!1335161))

(assert (=> b!1446204 m!1335143))

(declare-fun m!1335163 () Bool)

(assert (=> b!1446204 m!1335163))

(assert (=> b!1446198 m!1335153))

(assert (=> b!1446198 m!1335153))

(declare-fun m!1335165 () Bool)

(assert (=> b!1446198 m!1335165))

(declare-fun m!1335167 () Bool)

(assert (=> start!124780 m!1335167))

(declare-fun m!1335169 () Bool)

(assert (=> start!124780 m!1335169))

(declare-fun m!1335171 () Bool)

(assert (=> b!1446201 m!1335171))

(assert (=> b!1446194 m!1335153))

(assert (=> b!1446194 m!1335153))

(declare-fun m!1335173 () Bool)

(assert (=> b!1446194 m!1335173))

(declare-fun m!1335175 () Bool)

(assert (=> b!1446202 m!1335175))

(assert (=> b!1446202 m!1335153))

(assert (=> b!1446200 m!1335153))

(assert (=> b!1446200 m!1335153))

(declare-fun m!1335177 () Bool)

(assert (=> b!1446200 m!1335177))

(assert (=> b!1446200 m!1335177))

(assert (=> b!1446200 m!1335153))

(declare-fun m!1335179 () Bool)

(assert (=> b!1446200 m!1335179))

(push 1)

