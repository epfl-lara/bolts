; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125026 () Bool)

(assert start!125026)

(declare-fun b!1453080 () Bool)

(declare-fun e!817929 () Bool)

(declare-fun e!817935 () Bool)

(assert (=> b!1453080 (= e!817929 e!817935)))

(declare-fun res!984242 () Bool)

(assert (=> b!1453080 (=> (not res!984242) (not e!817935))))

(declare-fun lt!637099 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453080 (= res!984242 (and (= index!646 intermediateAfterIndex!19) (= lt!637099 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun e!817930 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98391 0))(
  ( (array!98392 (arr!47479 (Array (_ BitVec 32) (_ BitVec 64))) (size!48030 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98391)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1453081 () Bool)

(assert (=> b!1453081 (= e!817930 (not (or (and (= (select (arr!47479 a!2862) index!646) (select (store (arr!47479 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47479 a!2862) index!646) (select (arr!47479 a!2862) j!93))) (= (select (arr!47479 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!817937 () Bool)

(assert (=> b!1453081 e!817937))

(declare-fun res!984232 () Bool)

(assert (=> b!1453081 (=> (not res!984232) (not e!817937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98391 (_ BitVec 32)) Bool)

(assert (=> b!1453081 (= res!984232 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48952 0))(
  ( (Unit!48953) )
))
(declare-fun lt!637098 () Unit!48952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48952)

(assert (=> b!1453081 (= lt!637098 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453082 () Bool)

(declare-fun res!984241 () Bool)

(declare-fun e!817936 () Bool)

(assert (=> b!1453082 (=> (not res!984241) (not e!817936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453082 (= res!984241 (validKeyInArray!0 (select (arr!47479 a!2862) i!1006)))))

(declare-fun res!984233 () Bool)

(assert (=> start!125026 (=> (not res!984233) (not e!817936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125026 (= res!984233 (validMask!0 mask!2687))))

(assert (=> start!125026 e!817936))

(assert (=> start!125026 true))

(declare-fun array_inv!36424 (array!98391) Bool)

(assert (=> start!125026 (array_inv!36424 a!2862)))

(declare-fun b!1453083 () Bool)

(declare-fun res!984239 () Bool)

(assert (=> b!1453083 (=> (not res!984239) (not e!817936))))

(declare-datatypes ((List!34160 0))(
  ( (Nil!34157) (Cons!34156 (h!35506 (_ BitVec 64)) (t!48861 List!34160)) )
))
(declare-fun arrayNoDuplicates!0 (array!98391 (_ BitVec 32) List!34160) Bool)

(assert (=> b!1453083 (= res!984239 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34157))))

(declare-fun b!1453084 () Bool)

(declare-fun e!817934 () Bool)

(assert (=> b!1453084 (= e!817936 e!817934)))

(declare-fun res!984236 () Bool)

(assert (=> b!1453084 (=> (not res!984236) (not e!817934))))

(assert (=> b!1453084 (= res!984236 (= (select (store (arr!47479 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637097 () array!98391)

(assert (=> b!1453084 (= lt!637097 (array!98392 (store (arr!47479 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48030 a!2862)))))

(declare-fun b!1453085 () Bool)

(declare-fun res!984228 () Bool)

(assert (=> b!1453085 (=> (not res!984228) (not e!817930))))

(declare-fun e!817931 () Bool)

(assert (=> b!1453085 (= res!984228 e!817931)))

(declare-fun c!133940 () Bool)

(assert (=> b!1453085 (= c!133940 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453086 () Bool)

(declare-fun res!984229 () Bool)

(assert (=> b!1453086 (=> (not res!984229) (not e!817936))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453086 (= res!984229 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48030 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48030 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48030 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453087 () Bool)

(declare-fun res!984227 () Bool)

(declare-fun e!817932 () Bool)

(assert (=> b!1453087 (=> (not res!984227) (not e!817932))))

(declare-datatypes ((SeekEntryResult!11754 0))(
  ( (MissingZero!11754 (index!49407 (_ BitVec 32))) (Found!11754 (index!49408 (_ BitVec 32))) (Intermediate!11754 (undefined!12566 Bool) (index!49409 (_ BitVec 32)) (x!131054 (_ BitVec 32))) (Undefined!11754) (MissingVacant!11754 (index!49410 (_ BitVec 32))) )
))
(declare-fun lt!637096 () SeekEntryResult!11754)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98391 (_ BitVec 32)) SeekEntryResult!11754)

(assert (=> b!1453087 (= res!984227 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47479 a!2862) j!93) a!2862 mask!2687) lt!637096))))

(declare-fun b!1453088 () Bool)

(assert (=> b!1453088 (= e!817937 e!817929)))

(declare-fun res!984238 () Bool)

(assert (=> b!1453088 (=> res!984238 e!817929)))

(assert (=> b!1453088 (= res!984238 (or (and (= (select (arr!47479 a!2862) index!646) lt!637099) (= (select (arr!47479 a!2862) index!646) (select (arr!47479 a!2862) j!93))) (= (select (arr!47479 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453088 (= lt!637099 (select (store (arr!47479 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453089 () Bool)

(declare-fun res!984235 () Bool)

(assert (=> b!1453089 (=> (not res!984235) (not e!817936))))

(assert (=> b!1453089 (= res!984235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453090 () Bool)

(declare-fun res!984231 () Bool)

(assert (=> b!1453090 (=> (not res!984231) (not e!817936))))

(assert (=> b!1453090 (= res!984231 (validKeyInArray!0 (select (arr!47479 a!2862) j!93)))))

(declare-fun b!1453091 () Bool)

(declare-fun res!984226 () Bool)

(assert (=> b!1453091 (=> (not res!984226) (not e!817930))))

(assert (=> b!1453091 (= res!984226 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453092 () Bool)

(declare-fun lt!637095 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98391 (_ BitVec 32)) SeekEntryResult!11754)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98391 (_ BitVec 32)) SeekEntryResult!11754)

(assert (=> b!1453092 (= e!817931 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637095 lt!637097 mask!2687) (seekEntryOrOpen!0 lt!637095 lt!637097 mask!2687)))))

(declare-fun b!1453093 () Bool)

(declare-fun res!984230 () Bool)

(assert (=> b!1453093 (=> (not res!984230) (not e!817937))))

(assert (=> b!1453093 (= res!984230 (or (= (select (arr!47479 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47479 a!2862) intermediateBeforeIndex!19) (select (arr!47479 a!2862) j!93))))))

(declare-fun b!1453094 () Bool)

(assert (=> b!1453094 (= e!817934 e!817932)))

(declare-fun res!984243 () Bool)

(assert (=> b!1453094 (=> (not res!984243) (not e!817932))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453094 (= res!984243 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47479 a!2862) j!93) mask!2687) (select (arr!47479 a!2862) j!93) a!2862 mask!2687) lt!637096))))

(assert (=> b!1453094 (= lt!637096 (Intermediate!11754 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453095 () Bool)

(assert (=> b!1453095 (= e!817935 (= (seekEntryOrOpen!0 lt!637095 lt!637097 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637095 lt!637097 mask!2687)))))

(declare-fun b!1453096 () Bool)

(declare-fun lt!637094 () SeekEntryResult!11754)

(assert (=> b!1453096 (= e!817931 (= lt!637094 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637095 lt!637097 mask!2687)))))

(declare-fun b!1453097 () Bool)

(assert (=> b!1453097 (= e!817932 e!817930)))

(declare-fun res!984234 () Bool)

(assert (=> b!1453097 (=> (not res!984234) (not e!817930))))

(assert (=> b!1453097 (= res!984234 (= lt!637094 (Intermediate!11754 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1453097 (= lt!637094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637095 mask!2687) lt!637095 lt!637097 mask!2687))))

(assert (=> b!1453097 (= lt!637095 (select (store (arr!47479 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453098 () Bool)

(declare-fun res!984240 () Bool)

(assert (=> b!1453098 (=> (not res!984240) (not e!817936))))

(assert (=> b!1453098 (= res!984240 (and (= (size!48030 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48030 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48030 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453099 () Bool)

(declare-fun res!984237 () Bool)

(assert (=> b!1453099 (=> (not res!984237) (not e!817937))))

(assert (=> b!1453099 (= res!984237 (= (seekEntryOrOpen!0 (select (arr!47479 a!2862) j!93) a!2862 mask!2687) (Found!11754 j!93)))))

(assert (= (and start!125026 res!984233) b!1453098))

(assert (= (and b!1453098 res!984240) b!1453082))

(assert (= (and b!1453082 res!984241) b!1453090))

(assert (= (and b!1453090 res!984231) b!1453089))

(assert (= (and b!1453089 res!984235) b!1453083))

(assert (= (and b!1453083 res!984239) b!1453086))

(assert (= (and b!1453086 res!984229) b!1453084))

(assert (= (and b!1453084 res!984236) b!1453094))

(assert (= (and b!1453094 res!984243) b!1453087))

(assert (= (and b!1453087 res!984227) b!1453097))

(assert (= (and b!1453097 res!984234) b!1453085))

(assert (= (and b!1453085 c!133940) b!1453096))

(assert (= (and b!1453085 (not c!133940)) b!1453092))

(assert (= (and b!1453085 res!984228) b!1453091))

(assert (= (and b!1453091 res!984226) b!1453081))

(assert (= (and b!1453081 res!984232) b!1453099))

(assert (= (and b!1453099 res!984237) b!1453093))

(assert (= (and b!1453093 res!984230) b!1453088))

(assert (= (and b!1453088 (not res!984238)) b!1453080))

(assert (= (and b!1453080 res!984242) b!1453095))

(declare-fun m!1341663 () Bool)

(assert (=> b!1453082 m!1341663))

(assert (=> b!1453082 m!1341663))

(declare-fun m!1341665 () Bool)

(assert (=> b!1453082 m!1341665))

(declare-fun m!1341667 () Bool)

(assert (=> b!1453093 m!1341667))

(declare-fun m!1341669 () Bool)

(assert (=> b!1453093 m!1341669))

(declare-fun m!1341671 () Bool)

(assert (=> start!125026 m!1341671))

(declare-fun m!1341673 () Bool)

(assert (=> start!125026 m!1341673))

(declare-fun m!1341675 () Bool)

(assert (=> b!1453096 m!1341675))

(assert (=> b!1453094 m!1341669))

(assert (=> b!1453094 m!1341669))

(declare-fun m!1341677 () Bool)

(assert (=> b!1453094 m!1341677))

(assert (=> b!1453094 m!1341677))

(assert (=> b!1453094 m!1341669))

(declare-fun m!1341679 () Bool)

(assert (=> b!1453094 m!1341679))

(assert (=> b!1453090 m!1341669))

(assert (=> b!1453090 m!1341669))

(declare-fun m!1341681 () Bool)

(assert (=> b!1453090 m!1341681))

(declare-fun m!1341683 () Bool)

(assert (=> b!1453095 m!1341683))

(declare-fun m!1341685 () Bool)

(assert (=> b!1453095 m!1341685))

(declare-fun m!1341687 () Bool)

(assert (=> b!1453084 m!1341687))

(declare-fun m!1341689 () Bool)

(assert (=> b!1453084 m!1341689))

(declare-fun m!1341691 () Bool)

(assert (=> b!1453089 m!1341691))

(assert (=> b!1453092 m!1341685))

(assert (=> b!1453092 m!1341683))

(assert (=> b!1453087 m!1341669))

(assert (=> b!1453087 m!1341669))

(declare-fun m!1341693 () Bool)

(assert (=> b!1453087 m!1341693))

(declare-fun m!1341695 () Bool)

(assert (=> b!1453081 m!1341695))

(assert (=> b!1453081 m!1341687))

(declare-fun m!1341697 () Bool)

(assert (=> b!1453081 m!1341697))

(declare-fun m!1341699 () Bool)

(assert (=> b!1453081 m!1341699))

(declare-fun m!1341701 () Bool)

(assert (=> b!1453081 m!1341701))

(assert (=> b!1453081 m!1341669))

(assert (=> b!1453088 m!1341699))

(assert (=> b!1453088 m!1341669))

(assert (=> b!1453088 m!1341687))

(assert (=> b!1453088 m!1341697))

(declare-fun m!1341703 () Bool)

(assert (=> b!1453097 m!1341703))

(assert (=> b!1453097 m!1341703))

(declare-fun m!1341705 () Bool)

(assert (=> b!1453097 m!1341705))

(assert (=> b!1453097 m!1341687))

(declare-fun m!1341707 () Bool)

(assert (=> b!1453097 m!1341707))

(assert (=> b!1453099 m!1341669))

(assert (=> b!1453099 m!1341669))

(declare-fun m!1341709 () Bool)

(assert (=> b!1453099 m!1341709))

(declare-fun m!1341711 () Bool)

(assert (=> b!1453083 m!1341711))

(push 1)

