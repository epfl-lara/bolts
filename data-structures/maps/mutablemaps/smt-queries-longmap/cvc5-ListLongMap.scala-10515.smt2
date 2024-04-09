; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124000 () Bool)

(assert start!124000)

(declare-fun b!1435923 () Bool)

(declare-fun res!969004 () Bool)

(declare-fun e!810378 () Bool)

(assert (=> b!1435923 (=> (not res!969004) (not e!810378))))

(declare-datatypes ((array!97614 0))(
  ( (array!97615 (arr!47101 (Array (_ BitVec 32) (_ BitVec 64))) (size!47652 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97614)

(assert (=> b!1435923 (= res!969004 (and (bvsle #b00000000000000000000000000000000 (size!47652 a!2862)) (bvslt (size!47652 a!2862) #b01111111111111111111111111111111)))))

(declare-fun res!969009 () Bool)

(assert (=> start!124000 (=> (not res!969009) (not e!810378))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124000 (= res!969009 (validMask!0 mask!2687))))

(assert (=> start!124000 e!810378))

(assert (=> start!124000 true))

(declare-fun array_inv!36046 (array!97614) Bool)

(assert (=> start!124000 (array_inv!36046 a!2862)))

(declare-fun b!1435924 () Bool)

(declare-fun res!969005 () Bool)

(assert (=> b!1435924 (=> (not res!969005) (not e!810378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97614 (_ BitVec 32)) Bool)

(assert (=> b!1435924 (= res!969005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435925 () Bool)

(declare-fun res!969008 () Bool)

(assert (=> b!1435925 (=> (not res!969008) (not e!810378))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435925 (= res!969008 (and (= (size!47652 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47652 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47652 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435926 () Bool)

(declare-fun e!810379 () Bool)

(assert (=> b!1435926 (= e!810378 e!810379)))

(declare-fun res!969007 () Bool)

(assert (=> b!1435926 (=> res!969007 e!810379)))

(declare-datatypes ((List!33782 0))(
  ( (Nil!33779) (Cons!33778 (h!35113 (_ BitVec 64)) (t!48483 List!33782)) )
))
(declare-fun contains!9891 (List!33782 (_ BitVec 64)) Bool)

(assert (=> b!1435926 (= res!969007 (contains!9891 Nil!33779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435927 () Bool)

(assert (=> b!1435927 (= e!810379 (contains!9891 Nil!33779 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435928 () Bool)

(declare-fun res!969002 () Bool)

(assert (=> b!1435928 (=> (not res!969002) (not e!810378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435928 (= res!969002 (validKeyInArray!0 (select (arr!47101 a!2862) i!1006)))))

(declare-fun b!1435929 () Bool)

(declare-fun res!969003 () Bool)

(assert (=> b!1435929 (=> (not res!969003) (not e!810378))))

(assert (=> b!1435929 (= res!969003 (validKeyInArray!0 (select (arr!47101 a!2862) j!93)))))

(declare-fun b!1435930 () Bool)

(declare-fun res!969006 () Bool)

(assert (=> b!1435930 (=> (not res!969006) (not e!810378))))

(declare-fun noDuplicate!2648 (List!33782) Bool)

(assert (=> b!1435930 (= res!969006 (noDuplicate!2648 Nil!33779))))

(assert (= (and start!124000 res!969009) b!1435925))

(assert (= (and b!1435925 res!969008) b!1435928))

(assert (= (and b!1435928 res!969002) b!1435929))

(assert (= (and b!1435929 res!969003) b!1435924))

(assert (= (and b!1435924 res!969005) b!1435923))

(assert (= (and b!1435923 res!969004) b!1435930))

(assert (= (and b!1435930 res!969006) b!1435926))

(assert (= (and b!1435926 (not res!969007)) b!1435927))

(declare-fun m!1325327 () Bool)

(assert (=> start!124000 m!1325327))

(declare-fun m!1325329 () Bool)

(assert (=> start!124000 m!1325329))

(declare-fun m!1325331 () Bool)

(assert (=> b!1435924 m!1325331))

(declare-fun m!1325333 () Bool)

(assert (=> b!1435928 m!1325333))

(assert (=> b!1435928 m!1325333))

(declare-fun m!1325335 () Bool)

(assert (=> b!1435928 m!1325335))

(declare-fun m!1325337 () Bool)

(assert (=> b!1435927 m!1325337))

(declare-fun m!1325339 () Bool)

(assert (=> b!1435929 m!1325339))

(assert (=> b!1435929 m!1325339))

(declare-fun m!1325341 () Bool)

(assert (=> b!1435929 m!1325341))

(declare-fun m!1325343 () Bool)

(assert (=> b!1435926 m!1325343))

(declare-fun m!1325345 () Bool)

(assert (=> b!1435930 m!1325345))

(push 1)

(assert (not b!1435924))

(assert (not b!1435929))

(assert (not start!124000))

(assert (not b!1435927))

(assert (not b!1435930))

(assert (not b!1435926))

(assert (not b!1435928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154417 () Bool)

(declare-fun res!969068 () Bool)

(declare-fun e!810409 () Bool)

(assert (=> d!154417 (=> res!969068 e!810409)))

(assert (=> d!154417 (= res!969068 (is-Nil!33779 Nil!33779))))

(assert (=> d!154417 (= (noDuplicate!2648 Nil!33779) e!810409)))

(declare-fun b!1435989 () Bool)

(declare-fun e!810410 () Bool)

(assert (=> b!1435989 (= e!810409 e!810410)))

(declare-fun res!969069 () Bool)

(assert (=> b!1435989 (=> (not res!969069) (not e!810410))))

(assert (=> b!1435989 (= res!969069 (not (contains!9891 (t!48483 Nil!33779) (h!35113 Nil!33779))))))

(declare-fun b!1435990 () Bool)

(assert (=> b!1435990 (= e!810410 (noDuplicate!2648 (t!48483 Nil!33779)))))

(assert (= (and d!154417 (not res!969068)) b!1435989))

(assert (= (and b!1435989 res!969069) b!1435990))

(declare-fun m!1325391 () Bool)

(assert (=> b!1435989 m!1325391))

(declare-fun m!1325393 () Bool)

(assert (=> b!1435990 m!1325393))

(assert (=> b!1435930 d!154417))

(declare-fun b!1436023 () Bool)

(declare-fun e!810437 () Bool)

(declare-fun call!67587 () Bool)

(assert (=> b!1436023 (= e!810437 call!67587)))

(declare-fun b!1436024 () Bool)

(declare-fun e!810436 () Bool)

(assert (=> b!1436024 (= e!810436 call!67587)))

(declare-fun d!154421 () Bool)

(declare-fun res!969086 () Bool)

(declare-fun e!810435 () Bool)

(assert (=> d!154421 (=> res!969086 e!810435)))

(assert (=> d!154421 (= res!969086 (bvsge #b00000000000000000000000000000000 (size!47652 a!2862)))))

(assert (=> d!154421 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810435)))

(declare-fun b!1436025 () Bool)

(assert (=> b!1436025 (= e!810435 e!810437)))

(declare-fun c!132974 () Bool)

(assert (=> b!1436025 (= c!132974 (validKeyInArray!0 (select (arr!47101 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67584 () Bool)

(assert (=> bm!67584 (= call!67587 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1436026 () Bool)

(assert (=> b!1436026 (= e!810437 e!810436)))

(declare-fun lt!632010 () (_ BitVec 64))

(assert (=> b!1436026 (= lt!632010 (select (arr!47101 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48486 0))(
  ( (Unit!48487) )
))
(declare-fun lt!632011 () Unit!48486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97614 (_ BitVec 64) (_ BitVec 32)) Unit!48486)

(assert (=> b!1436026 (= lt!632011 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632010 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436026 (arrayContainsKey!0 a!2862 lt!632010 #b00000000000000000000000000000000)))

(declare-fun lt!632009 () Unit!48486)

(assert (=> b!1436026 (= lt!632009 lt!632011)))

(declare-fun res!969087 () Bool)

(declare-datatypes ((SeekEntryResult!11397 0))(
  ( (MissingZero!11397 (index!47976 (_ BitVec 32))) (Found!11396 (index!47977 (_ BitVec 32))) (Intermediate!11396 (undefined!12208 Bool) (index!47979 (_ BitVec 32)) (x!129661 (_ BitVec 32))) (Undefined!11396) (MissingVacant!11396 (index!47981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97614 (_ BitVec 32)) SeekEntryResult!11397)

(assert (=> b!1436026 (= res!969087 (= (seekEntryOrOpen!0 (select (arr!47101 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11396 #b00000000000000000000000000000000)))))

(assert (=> b!1436026 (=> (not res!969087) (not e!810436))))

(assert (= (and d!154421 (not res!969086)) b!1436025))

(assert (= (and b!1436025 c!132974) b!1436026))

(assert (= (and b!1436025 (not c!132974)) b!1436023))

(assert (= (and b!1436026 res!969087) b!1436024))

(assert (= (or b!1436024 b!1436023) bm!67584))

(declare-fun m!1325417 () Bool)

(assert (=> b!1436025 m!1325417))

(assert (=> b!1436025 m!1325417))

(declare-fun m!1325421 () Bool)

(assert (=> b!1436025 m!1325421))

(declare-fun m!1325423 () Bool)

(assert (=> bm!67584 m!1325423))

(assert (=> b!1436026 m!1325417))

(declare-fun m!1325425 () Bool)

(assert (=> b!1436026 m!1325425))

(declare-fun m!1325427 () Bool)

(assert (=> b!1436026 m!1325427))

(assert (=> b!1436026 m!1325417))

(declare-fun m!1325429 () Bool)

(assert (=> b!1436026 m!1325429))

(assert (=> b!1435924 d!154421))

(declare-fun d!154429 () Bool)

(assert (=> d!154429 (= (validKeyInArray!0 (select (arr!47101 a!2862) j!93)) (and (not (= (select (arr!47101 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47101 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435929 d!154429))

(declare-fun d!154433 () Bool)

(assert (=> d!154433 (= (validKeyInArray!0 (select (arr!47101 a!2862) i!1006)) (and (not (= (select (arr!47101 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47101 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435928 d!154433))

(declare-fun d!154435 () Bool)

(declare-fun lt!632021 () Bool)

(declare-fun content!780 (List!33782) (Set (_ BitVec 64)))

(assert (=> d!154435 (= lt!632021 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!780 Nil!33779)))))

(declare-fun e!810456 () Bool)

(assert (=> d!154435 (= lt!632021 e!810456)))

(declare-fun res!969107 () Bool)

(assert (=> d!154435 (=> (not res!969107) (not e!810456))))

(assert (=> d!154435 (= res!969107 (is-Cons!33778 Nil!33779))))

(assert (=> d!154435 (= (contains!9891 Nil!33779 #b1000000000000000000000000000000000000000000000000000000000000000) lt!632021)))

(declare-fun b!1436045 () Bool)

(declare-fun e!810457 () Bool)

(assert (=> b!1436045 (= e!810456 e!810457)))

(declare-fun res!969106 () Bool)

(assert (=> b!1436045 (=> res!969106 e!810457)))

(assert (=> b!1436045 (= res!969106 (= (h!35113 Nil!33779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1436046 () Bool)

(assert (=> b!1436046 (= e!810457 (contains!9891 (t!48483 Nil!33779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154435 res!969107) b!1436045))

(assert (= (and b!1436045 (not res!969106)) b!1436046))

(declare-fun m!1325447 () Bool)

(assert (=> d!154435 m!1325447))

(declare-fun m!1325449 () Bool)

(assert (=> d!154435 m!1325449))

(declare-fun m!1325451 () Bool)

(assert (=> b!1436046 m!1325451))

(assert (=> b!1435927 d!154435))

(declare-fun d!154445 () Bool)

(assert (=> d!154445 (= (validMask!0 mask!2687) (and (or (= mask!2687 