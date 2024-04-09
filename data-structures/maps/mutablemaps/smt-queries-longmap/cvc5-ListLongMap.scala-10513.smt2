; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123934 () Bool)

(assert start!123934)

(declare-fun b!1435728 () Bool)

(declare-fun res!968844 () Bool)

(declare-fun e!810269 () Bool)

(assert (=> b!1435728 (=> (not res!968844) (not e!810269))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97596 0))(
  ( (array!97597 (arr!47095 (Array (_ BitVec 32) (_ BitVec 64))) (size!47646 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97596)

(assert (=> b!1435728 (= res!968844 (and (= (size!47646 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47646 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47646 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435729 () Bool)

(declare-fun res!968843 () Bool)

(assert (=> b!1435729 (=> (not res!968843) (not e!810269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435729 (= res!968843 (validKeyInArray!0 (select (arr!47095 a!2862) i!1006)))))

(declare-fun res!968846 () Bool)

(assert (=> start!123934 (=> (not res!968846) (not e!810269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123934 (= res!968846 (validMask!0 mask!2687))))

(assert (=> start!123934 e!810269))

(assert (=> start!123934 true))

(declare-fun array_inv!36040 (array!97596) Bool)

(assert (=> start!123934 (array_inv!36040 a!2862)))

(declare-fun b!1435730 () Bool)

(assert (=> b!1435730 (= e!810269 (and (bvsle #b00000000000000000000000000000000 (size!47646 a!2862)) (bvsge (size!47646 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435731 () Bool)

(declare-fun res!968845 () Bool)

(assert (=> b!1435731 (=> (not res!968845) (not e!810269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97596 (_ BitVec 32)) Bool)

(assert (=> b!1435731 (= res!968845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435732 () Bool)

(declare-fun res!968847 () Bool)

(assert (=> b!1435732 (=> (not res!968847) (not e!810269))))

(assert (=> b!1435732 (= res!968847 (validKeyInArray!0 (select (arr!47095 a!2862) j!93)))))

(assert (= (and start!123934 res!968846) b!1435728))

(assert (= (and b!1435728 res!968844) b!1435729))

(assert (= (and b!1435729 res!968843) b!1435732))

(assert (= (and b!1435732 res!968847) b!1435731))

(assert (= (and b!1435731 res!968845) b!1435730))

(declare-fun m!1325153 () Bool)

(assert (=> b!1435729 m!1325153))

(assert (=> b!1435729 m!1325153))

(declare-fun m!1325155 () Bool)

(assert (=> b!1435729 m!1325155))

(declare-fun m!1325157 () Bool)

(assert (=> start!123934 m!1325157))

(declare-fun m!1325159 () Bool)

(assert (=> start!123934 m!1325159))

(declare-fun m!1325161 () Bool)

(assert (=> b!1435731 m!1325161))

(declare-fun m!1325163 () Bool)

(assert (=> b!1435732 m!1325163))

(assert (=> b!1435732 m!1325163))

(declare-fun m!1325165 () Bool)

(assert (=> b!1435732 m!1325165))

(push 1)

(assert (not b!1435732))

(assert (not start!123934))

(assert (not b!1435729))

(assert (not b!1435731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154345 () Bool)

(assert (=> d!154345 (= (validKeyInArray!0 (select (arr!47095 a!2862) j!93)) (and (not (= (select (arr!47095 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47095 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435732 d!154345))

(declare-fun d!154347 () Bool)

(assert (=> d!154347 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!123934 d!154347))

(declare-fun d!154355 () Bool)

(assert (=> d!154355 (= (array_inv!36040 a!2862) (bvsge (size!47646 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!123934 d!154355))

(declare-fun d!154357 () Bool)

(assert (=> d!154357 (= (validKeyInArray!0 (select (arr!47095 a!2862) i!1006)) (and (not (= (select (arr!47095 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47095 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435729 d!154357))

(declare-fun bm!67566 () Bool)

(declare-fun call!67569 () Bool)

(assert (=> bm!67566 (= call!67569 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1435795 () Bool)

(declare-fun e!810306 () Bool)

(declare-fun e!810308 () Bool)

(assert (=> b!1435795 (= e!810306 e!810308)))

(declare-fun lt!631955 () (_ BitVec 64))

(assert (=> b!1435795 (= lt!631955 (select (arr!47095 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48478 0))(
  ( (Unit!48479) )
))
(declare-fun lt!631957 () Unit!48478)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97596 (_ BitVec 64) (_ BitVec 32)) Unit!48478)

(assert (=> b!1435795 (= lt!631957 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!631955 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1435795 (arrayContainsKey!0 a!2862 lt!631955 #b00000000000000000000000000000000)))

(declare-fun lt!631956 () Unit!48478)

(assert (=> b!1435795 (= lt!631956 lt!631957)))

(declare-fun res!968894 () Bool)

(declare-datatypes ((SeekEntryResult!11392 0))(
  ( (MissingZero!11392 (index!47959 (_ BitVec 32))) (Found!11392 (index!47960 (_ BitVec 32))) (Intermediate!11392 (undefined!12204 Bool) (index!47961 (_ BitVec 32)) (x!129641 (_ BitVec 32))) (Undefined!11392) (MissingVacant!11392 (index!47962 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97596 (_ BitVec 32)) SeekEntryResult!11392)

(assert (=> b!1435795 (= res!968894 (= (seekEntryOrOpen!0 (select (arr!47095 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11392 #b00000000000000000000000000000000)))))

(assert (=> b!1435795 (=> (not res!968894) (not e!810308))))

(declare-fun b!1435796 () Bool)

(declare-fun e!810307 () Bool)

(assert (=> b!1435796 (= e!810307 e!810306)))

(declare-fun c!132956 () Bool)

(assert (=> b!1435796 (= c!132956 (validKeyInArray!0 (select (arr!47095 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154359 () Bool)

(declare-fun res!968895 () Bool)

(assert (=> d!154359 (=> res!968895 e!810307)))

