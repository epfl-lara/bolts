; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123936 () Bool)

(assert start!123936)

(declare-fun b!1435743 () Bool)

(declare-fun res!968858 () Bool)

(declare-fun e!810275 () Bool)

(assert (=> b!1435743 (=> (not res!968858) (not e!810275))))

(declare-datatypes ((array!97598 0))(
  ( (array!97599 (arr!47096 (Array (_ BitVec 32) (_ BitVec 64))) (size!47647 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97598)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97598 (_ BitVec 32)) Bool)

(assert (=> b!1435743 (= res!968858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435744 () Bool)

(declare-fun res!968862 () Bool)

(assert (=> b!1435744 (=> (not res!968862) (not e!810275))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435744 (= res!968862 (validKeyInArray!0 (select (arr!47096 a!2862) i!1006)))))

(declare-fun res!968859 () Bool)

(assert (=> start!123936 (=> (not res!968859) (not e!810275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123936 (= res!968859 (validMask!0 mask!2687))))

(assert (=> start!123936 e!810275))

(assert (=> start!123936 true))

(declare-fun array_inv!36041 (array!97598) Bool)

(assert (=> start!123936 (array_inv!36041 a!2862)))

(declare-fun b!1435745 () Bool)

(declare-fun res!968860 () Bool)

(assert (=> b!1435745 (=> (not res!968860) (not e!810275))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1435745 (= res!968860 (validKeyInArray!0 (select (arr!47096 a!2862) j!93)))))

(declare-fun b!1435746 () Bool)

(assert (=> b!1435746 (= e!810275 (and (bvsle #b00000000000000000000000000000000 (size!47647 a!2862)) (bvsge (size!47647 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435747 () Bool)

(declare-fun res!968861 () Bool)

(assert (=> b!1435747 (=> (not res!968861) (not e!810275))))

(assert (=> b!1435747 (= res!968861 (and (= (size!47647 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47647 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47647 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!123936 res!968859) b!1435747))

(assert (= (and b!1435747 res!968861) b!1435744))

(assert (= (and b!1435744 res!968862) b!1435745))

(assert (= (and b!1435745 res!968860) b!1435743))

(assert (= (and b!1435743 res!968858) b!1435746))

(declare-fun m!1325167 () Bool)

(assert (=> b!1435743 m!1325167))

(declare-fun m!1325169 () Bool)

(assert (=> b!1435744 m!1325169))

(assert (=> b!1435744 m!1325169))

(declare-fun m!1325171 () Bool)

(assert (=> b!1435744 m!1325171))

(declare-fun m!1325173 () Bool)

(assert (=> start!123936 m!1325173))

(declare-fun m!1325175 () Bool)

(assert (=> start!123936 m!1325175))

(declare-fun m!1325177 () Bool)

(assert (=> b!1435745 m!1325177))

(assert (=> b!1435745 m!1325177))

(declare-fun m!1325179 () Bool)

(assert (=> b!1435745 m!1325179))

(check-sat (not b!1435743) (not start!123936) (not b!1435744) (not b!1435745))
(check-sat)
(get-model)

(declare-fun b!1435771 () Bool)

(declare-fun e!810288 () Bool)

(declare-fun call!67563 () Bool)

(assert (=> b!1435771 (= e!810288 call!67563)))

(declare-fun b!1435772 () Bool)

(declare-fun e!810289 () Bool)

(declare-fun e!810290 () Bool)

(assert (=> b!1435772 (= e!810289 e!810290)))

(declare-fun c!132950 () Bool)

(assert (=> b!1435772 (= c!132950 (validKeyInArray!0 (select (arr!47096 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154343 () Bool)

(declare-fun res!968882 () Bool)

(assert (=> d!154343 (=> res!968882 e!810289)))

(assert (=> d!154343 (= res!968882 (bvsge #b00000000000000000000000000000000 (size!47647 a!2862)))))

(assert (=> d!154343 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810289)))

(declare-fun b!1435773 () Bool)

(assert (=> b!1435773 (= e!810290 call!67563)))

(declare-fun b!1435774 () Bool)

(assert (=> b!1435774 (= e!810290 e!810288)))

(declare-fun lt!631937 () (_ BitVec 64))

(assert (=> b!1435774 (= lt!631937 (select (arr!47096 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48474 0))(
  ( (Unit!48475) )
))
(declare-fun lt!631938 () Unit!48474)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97598 (_ BitVec 64) (_ BitVec 32)) Unit!48474)

(assert (=> b!1435774 (= lt!631938 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!631937 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1435774 (arrayContainsKey!0 a!2862 lt!631937 #b00000000000000000000000000000000)))

(declare-fun lt!631939 () Unit!48474)

(assert (=> b!1435774 (= lt!631939 lt!631938)))

(declare-fun res!968883 () Bool)

(declare-datatypes ((SeekEntryResult!11390 0))(
  ( (MissingZero!11390 (index!47951 (_ BitVec 32))) (Found!11390 (index!47952 (_ BitVec 32))) (Intermediate!11390 (undefined!12202 Bool) (index!47953 (_ BitVec 32)) (x!129639 (_ BitVec 32))) (Undefined!11390) (MissingVacant!11390 (index!47954 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97598 (_ BitVec 32)) SeekEntryResult!11390)

(assert (=> b!1435774 (= res!968883 (= (seekEntryOrOpen!0 (select (arr!47096 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11390 #b00000000000000000000000000000000)))))

(assert (=> b!1435774 (=> (not res!968883) (not e!810288))))

(declare-fun bm!67560 () Bool)

(assert (=> bm!67560 (= call!67563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!154343 (not res!968882)) b!1435772))

(assert (= (and b!1435772 c!132950) b!1435774))

(assert (= (and b!1435772 (not c!132950)) b!1435773))

(assert (= (and b!1435774 res!968883) b!1435771))

(assert (= (or b!1435771 b!1435773) bm!67560))

(declare-fun m!1325195 () Bool)

(assert (=> b!1435772 m!1325195))

(assert (=> b!1435772 m!1325195))

(declare-fun m!1325197 () Bool)

(assert (=> b!1435772 m!1325197))

(assert (=> b!1435774 m!1325195))

(declare-fun m!1325199 () Bool)

(assert (=> b!1435774 m!1325199))

(declare-fun m!1325201 () Bool)

(assert (=> b!1435774 m!1325201))

(assert (=> b!1435774 m!1325195))

(declare-fun m!1325203 () Bool)

(assert (=> b!1435774 m!1325203))

(declare-fun m!1325205 () Bool)

(assert (=> bm!67560 m!1325205))

(assert (=> b!1435743 d!154343))

(declare-fun d!154353 () Bool)

(assert (=> d!154353 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!123936 d!154353))

(declare-fun d!154363 () Bool)

(assert (=> d!154363 (= (array_inv!36041 a!2862) (bvsge (size!47647 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!123936 d!154363))

(declare-fun d!154365 () Bool)

(assert (=> d!154365 (= (validKeyInArray!0 (select (arr!47096 a!2862) i!1006)) (and (not (= (select (arr!47096 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47096 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435744 d!154365))

(declare-fun d!154367 () Bool)

(assert (=> d!154367 (= (validKeyInArray!0 (select (arr!47096 a!2862) j!93)) (and (not (= (select (arr!47096 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47096 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435745 d!154367))

(check-sat (not b!1435774) (not bm!67560) (not b!1435772))
(check-sat)
