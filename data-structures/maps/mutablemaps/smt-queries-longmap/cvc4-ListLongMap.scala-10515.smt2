; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124004 () Bool)

(assert start!124004)

(declare-fun b!1435971 () Bool)

(declare-fun res!969054 () Bool)

(declare-fun e!810397 () Bool)

(assert (=> b!1435971 (=> (not res!969054) (not e!810397))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97618 0))(
  ( (array!97619 (arr!47103 (Array (_ BitVec 32) (_ BitVec 64))) (size!47654 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97618)

(assert (=> b!1435971 (= res!969054 (and (= (size!47654 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47654 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47654 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435972 () Bool)

(declare-fun res!969056 () Bool)

(assert (=> b!1435972 (=> (not res!969056) (not e!810397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435972 (= res!969056 (validKeyInArray!0 (select (arr!47103 a!2862) i!1006)))))

(declare-fun b!1435973 () Bool)

(declare-fun e!810398 () Bool)

(assert (=> b!1435973 (= e!810397 e!810398)))

(declare-fun res!969055 () Bool)

(assert (=> b!1435973 (=> res!969055 e!810398)))

(declare-datatypes ((List!33784 0))(
  ( (Nil!33781) (Cons!33780 (h!35115 (_ BitVec 64)) (t!48485 List!33784)) )
))
(declare-fun contains!9893 (List!33784 (_ BitVec 64)) Bool)

(assert (=> b!1435973 (= res!969055 (contains!9893 Nil!33781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435974 () Bool)

(declare-fun res!969053 () Bool)

(assert (=> b!1435974 (=> (not res!969053) (not e!810397))))

(assert (=> b!1435974 (= res!969053 (validKeyInArray!0 (select (arr!47103 a!2862) j!93)))))

(declare-fun res!969057 () Bool)

(assert (=> start!124004 (=> (not res!969057) (not e!810397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124004 (= res!969057 (validMask!0 mask!2687))))

(assert (=> start!124004 e!810397))

(assert (=> start!124004 true))

(declare-fun array_inv!36048 (array!97618) Bool)

(assert (=> start!124004 (array_inv!36048 a!2862)))

(declare-fun b!1435975 () Bool)

(declare-fun res!969051 () Bool)

(assert (=> b!1435975 (=> (not res!969051) (not e!810397))))

(assert (=> b!1435975 (= res!969051 (and (bvsle #b00000000000000000000000000000000 (size!47654 a!2862)) (bvslt (size!47654 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435976 () Bool)

(declare-fun res!969050 () Bool)

(assert (=> b!1435976 (=> (not res!969050) (not e!810397))))

(declare-fun noDuplicate!2650 (List!33784) Bool)

(assert (=> b!1435976 (= res!969050 (noDuplicate!2650 Nil!33781))))

(declare-fun b!1435977 () Bool)

(assert (=> b!1435977 (= e!810398 (contains!9893 Nil!33781 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435978 () Bool)

(declare-fun res!969052 () Bool)

(assert (=> b!1435978 (=> (not res!969052) (not e!810397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97618 (_ BitVec 32)) Bool)

(assert (=> b!1435978 (= res!969052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124004 res!969057) b!1435971))

(assert (= (and b!1435971 res!969054) b!1435972))

(assert (= (and b!1435972 res!969056) b!1435974))

(assert (= (and b!1435974 res!969053) b!1435978))

(assert (= (and b!1435978 res!969052) b!1435975))

(assert (= (and b!1435975 res!969051) b!1435976))

(assert (= (and b!1435976 res!969050) b!1435973))

(assert (= (and b!1435973 (not res!969055)) b!1435977))

(declare-fun m!1325367 () Bool)

(assert (=> b!1435978 m!1325367))

(declare-fun m!1325369 () Bool)

(assert (=> start!124004 m!1325369))

(declare-fun m!1325371 () Bool)

(assert (=> start!124004 m!1325371))

(declare-fun m!1325373 () Bool)

(assert (=> b!1435972 m!1325373))

(assert (=> b!1435972 m!1325373))

(declare-fun m!1325375 () Bool)

(assert (=> b!1435972 m!1325375))

(declare-fun m!1325377 () Bool)

(assert (=> b!1435976 m!1325377))

(declare-fun m!1325379 () Bool)

(assert (=> b!1435977 m!1325379))

(declare-fun m!1325381 () Bool)

(assert (=> b!1435974 m!1325381))

(assert (=> b!1435974 m!1325381))

(declare-fun m!1325383 () Bool)

(assert (=> b!1435974 m!1325383))

(declare-fun m!1325385 () Bool)

(assert (=> b!1435973 m!1325385))

(push 1)

(assert (not b!1435972))

(assert (not start!124004))

(assert (not b!1435976))

(assert (not b!1435978))

(assert (not b!1435977))

(assert (not b!1435973))

(assert (not b!1435974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1436019 () Bool)

(declare-fun e!810433 () Bool)

(declare-fun call!67586 () Bool)

(assert (=> b!1436019 (= e!810433 call!67586)))

(declare-fun bm!67583 () Bool)

(assert (=> bm!67583 (= call!67586 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1436020 () Bool)

(declare-fun e!810432 () Bool)

(assert (=> b!1436020 (= e!810432 call!67586)))

(declare-fun d!154419 () Bool)

(declare-fun res!969085 () Bool)

(declare-fun e!810434 () Bool)

(assert (=> d!154419 (=> res!969085 e!810434)))

(assert (=> d!154419 (= res!969085 (bvsge #b00000000000000000000000000000000 (size!47654 a!2862)))))

(assert (=> d!154419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810434)))

(declare-fun b!1436021 () Bool)

(assert (=> b!1436021 (= e!810434 e!810433)))

(declare-fun c!132973 () Bool)

(assert (=> b!1436021 (= c!132973 (validKeyInArray!0 (select (arr!47103 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436022 () Bool)

(assert (=> b!1436022 (= e!810433 e!810432)))

(declare-fun lt!632007 () (_ BitVec 64))

(assert (=> b!1436022 (= lt!632007 (select (arr!47103 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48488 0))(
  ( (Unit!48489) )
))
(declare-fun lt!632008 () Unit!48488)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97618 (_ BitVec 64) (_ BitVec 32)) Unit!48488)

(assert (=> b!1436022 (= lt!632008 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632007 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436022 (arrayContainsKey!0 a!2862 lt!632007 #b00000000000000000000000000000000)))

(declare-fun lt!632006 () Unit!48488)

(assert (=> b!1436022 (= lt!632006 lt!632008)))

(declare-fun res!969084 () Bool)

(declare-datatypes ((SeekEntryResult!11396 0))(
  ( (MissingZero!11396 (index!47975 (_ BitVec 32))) (Found!11397 (index!47978 (_ BitVec 32))) (Intermediate!11397 (undefined!12209 Bool) (index!47980 (_ BitVec 32)) (x!129662 (_ BitVec 32))) (Undefined!11397) (MissingVacant!11397 (index!47982 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97618 (_ BitVec 32)) SeekEntryResult!11396)

(assert (=> b!1436022 (= res!969084 (= (seekEntryOrOpen!0 (select (arr!47103 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11397 #b00000000000000000000000000000000)))))

(assert (=> b!1436022 (=> (not res!969084) (not e!810432))))

(assert (= (and d!154419 (not res!969085)) b!1436021))

(assert (= (and b!1436021 c!132973) b!1436022))

(assert (= (and b!1436021 (not c!132973)) b!1436019))

(assert (= (and b!1436022 res!969084) b!1436020))

(assert (= (or b!1436020 b!1436019) bm!67583))

(declare-fun m!1325407 () Bool)

(assert (=> bm!67583 m!1325407))

(declare-fun m!1325409 () Bool)

(assert (=> b!1436021 m!1325409))

(assert (=> b!1436021 m!1325409))

(declare-fun m!1325411 () Bool)

(assert (=> b!1436021 m!1325411))

(assert (=> b!1436022 m!1325409))

(declare-fun m!1325413 () Bool)

(assert (=> b!1436022 m!1325413))

(declare-fun m!1325415 () Bool)

(assert (=> b!1436022 m!1325415))

(assert (=> b!1436022 m!1325409))

(declare-fun m!1325419 () Bool)

(assert (=> b!1436022 m!1325419))

(assert (=> b!1435978 d!154419))

(declare-fun d!154427 () Bool)

(assert (=> d!154427 (= (validKeyInArray!0 (select (arr!47103 a!2862) i!1006)) (and (not (= (select (arr!47103 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47103 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435972 d!154427))

(declare-fun d!154431 () Bool)

(declare-fun lt!632020 () Bool)

(declare-fun content!779 (List!33784) (Set (_ BitVec 64)))

(assert (=> d!154431 (= lt!632020 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!779 Nil!33781)))))

(declare-fun e!810454 () Bool)

(assert (=> d!154431 (= lt!632020 e!810454)))

(declare-fun res!969105 () Bool)

(assert (=> d!154431 (=> (not res!969105) (not e!810454))))

(assert (=> d!154431 (= res!969105 (is-Cons!33780 Nil!33781))))

(assert (=> d!154431 (= (contains!9893 Nil!33781 #b1000000000000000000000000000000000000000000000000000000000000000) lt!632020)))

(declare-fun b!1436043 () Bool)

(declare-fun e!810455 () Bool)

(assert (=> b!1436043 (= e!810454 e!810455)))

(declare-fun res!969104 () Bool)

(assert (=> b!1436043 (=> res!969104 e!810455)))

(assert (=> b!1436043 (= res!969104 (= (h!35115 Nil!33781) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1436044 () Bool)

(assert (=> b!1436044 (= e!810455 (contains!9893 (t!48485 Nil!33781) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154431 res!969105) b!1436043))

(assert (= (and b!1436043 (not res!969104)) b!1436044))

(declare-fun m!1325441 () Bool)

(assert (=> d!154431 m!1325441))

(declare-fun m!1325443 () Bool)

(assert (=> d!154431 m!1325443))

(declare-fun m!1325445 () Bool)

(assert (=> b!1436044 m!1325445))

(assert (=> b!1435977 d!154431))

(declare-fun d!154443 () Bool)

(declare-fun res!969112 () Bool)

