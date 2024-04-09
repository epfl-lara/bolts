; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124002 () Bool)

(assert start!124002)

(declare-fun b!1435947 () Bool)

(declare-fun e!810388 () Bool)

(declare-datatypes ((List!33783 0))(
  ( (Nil!33780) (Cons!33779 (h!35114 (_ BitVec 64)) (t!48484 List!33783)) )
))
(declare-fun contains!9892 (List!33783 (_ BitVec 64)) Bool)

(assert (=> b!1435947 (= e!810388 (contains!9892 Nil!33780 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435948 () Bool)

(declare-fun res!969028 () Bool)

(declare-fun e!810389 () Bool)

(assert (=> b!1435948 (=> (not res!969028) (not e!810389))))

(declare-datatypes ((array!97616 0))(
  ( (array!97617 (arr!47102 (Array (_ BitVec 32) (_ BitVec 64))) (size!47653 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97616)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97616 (_ BitVec 32)) Bool)

(assert (=> b!1435948 (= res!969028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435949 () Bool)

(declare-fun res!969030 () Bool)

(assert (=> b!1435949 (=> (not res!969030) (not e!810389))))

(assert (=> b!1435949 (= res!969030 (and (bvsle #b00000000000000000000000000000000 (size!47653 a!2862)) (bvslt (size!47653 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435950 () Bool)

(declare-fun res!969027 () Bool)

(assert (=> b!1435950 (=> (not res!969027) (not e!810389))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435950 (= res!969027 (and (= (size!47653 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47653 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47653 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!969026 () Bool)

(assert (=> start!124002 (=> (not res!969026) (not e!810389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124002 (= res!969026 (validMask!0 mask!2687))))

(assert (=> start!124002 e!810389))

(assert (=> start!124002 true))

(declare-fun array_inv!36047 (array!97616) Bool)

(assert (=> start!124002 (array_inv!36047 a!2862)))

(declare-fun b!1435951 () Bool)

(declare-fun res!969031 () Bool)

(assert (=> b!1435951 (=> (not res!969031) (not e!810389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435951 (= res!969031 (validKeyInArray!0 (select (arr!47102 a!2862) j!93)))))

(declare-fun b!1435952 () Bool)

(assert (=> b!1435952 (= e!810389 e!810388)))

(declare-fun res!969029 () Bool)

(assert (=> b!1435952 (=> res!969029 e!810388)))

(assert (=> b!1435952 (= res!969029 (contains!9892 Nil!33780 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435953 () Bool)

(declare-fun res!969033 () Bool)

(assert (=> b!1435953 (=> (not res!969033) (not e!810389))))

(assert (=> b!1435953 (= res!969033 (validKeyInArray!0 (select (arr!47102 a!2862) i!1006)))))

(declare-fun b!1435954 () Bool)

(declare-fun res!969032 () Bool)

(assert (=> b!1435954 (=> (not res!969032) (not e!810389))))

(declare-fun noDuplicate!2649 (List!33783) Bool)

(assert (=> b!1435954 (= res!969032 (noDuplicate!2649 Nil!33780))))

(assert (= (and start!124002 res!969026) b!1435950))

(assert (= (and b!1435950 res!969027) b!1435953))

(assert (= (and b!1435953 res!969033) b!1435951))

(assert (= (and b!1435951 res!969031) b!1435948))

(assert (= (and b!1435948 res!969028) b!1435949))

(assert (= (and b!1435949 res!969030) b!1435954))

(assert (= (and b!1435954 res!969032) b!1435952))

(assert (= (and b!1435952 (not res!969029)) b!1435947))

(declare-fun m!1325347 () Bool)

(assert (=> b!1435954 m!1325347))

(declare-fun m!1325349 () Bool)

(assert (=> b!1435947 m!1325349))

(declare-fun m!1325351 () Bool)

(assert (=> b!1435948 m!1325351))

(declare-fun m!1325353 () Bool)

(assert (=> b!1435953 m!1325353))

(assert (=> b!1435953 m!1325353))

(declare-fun m!1325355 () Bool)

(assert (=> b!1435953 m!1325355))

(declare-fun m!1325357 () Bool)

(assert (=> b!1435952 m!1325357))

(declare-fun m!1325359 () Bool)

(assert (=> b!1435951 m!1325359))

(assert (=> b!1435951 m!1325359))

(declare-fun m!1325361 () Bool)

(assert (=> b!1435951 m!1325361))

(declare-fun m!1325363 () Bool)

(assert (=> start!124002 m!1325363))

(declare-fun m!1325365 () Bool)

(assert (=> start!124002 m!1325365))

(check-sat (not start!124002) (not b!1435953) (not b!1435951) (not b!1435947) (not b!1435952) (not b!1435948) (not b!1435954))
(check-sat)
(get-model)

(declare-fun d!154413 () Bool)

(declare-fun res!969062 () Bool)

(declare-fun e!810403 () Bool)

(assert (=> d!154413 (=> res!969062 e!810403)))

(get-info :version)

(assert (=> d!154413 (= res!969062 ((_ is Nil!33780) Nil!33780))))

(assert (=> d!154413 (= (noDuplicate!2649 Nil!33780) e!810403)))

(declare-fun b!1435983 () Bool)

(declare-fun e!810404 () Bool)

(assert (=> b!1435983 (= e!810403 e!810404)))

(declare-fun res!969063 () Bool)

(assert (=> b!1435983 (=> (not res!969063) (not e!810404))))

(assert (=> b!1435983 (= res!969063 (not (contains!9892 (t!48484 Nil!33780) (h!35114 Nil!33780))))))

(declare-fun b!1435984 () Bool)

(assert (=> b!1435984 (= e!810404 (noDuplicate!2649 (t!48484 Nil!33780)))))

(assert (= (and d!154413 (not res!969062)) b!1435983))

(assert (= (and b!1435983 res!969063) b!1435984))

(declare-fun m!1325387 () Bool)

(assert (=> b!1435983 m!1325387))

(declare-fun m!1325389 () Bool)

(assert (=> b!1435984 m!1325389))

(assert (=> b!1435954 d!154413))

(declare-fun d!154415 () Bool)

(declare-fun res!969078 () Bool)

(declare-fun e!810423 () Bool)

(assert (=> d!154415 (=> res!969078 e!810423)))

(assert (=> d!154415 (= res!969078 (bvsge #b00000000000000000000000000000000 (size!47653 a!2862)))))

(assert (=> d!154415 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810423)))

(declare-fun b!1436009 () Bool)

(declare-fun e!810424 () Bool)

(declare-fun e!810425 () Bool)

(assert (=> b!1436009 (= e!810424 e!810425)))

(declare-fun lt!631997 () (_ BitVec 64))

(assert (=> b!1436009 (= lt!631997 (select (arr!47102 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48484 0))(
  ( (Unit!48485) )
))
(declare-fun lt!631998 () Unit!48484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97616 (_ BitVec 64) (_ BitVec 32)) Unit!48484)

(assert (=> b!1436009 (= lt!631998 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!631997 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436009 (arrayContainsKey!0 a!2862 lt!631997 #b00000000000000000000000000000000)))

(declare-fun lt!631999 () Unit!48484)

(assert (=> b!1436009 (= lt!631999 lt!631998)))

(declare-fun res!969079 () Bool)

(declare-datatypes ((SeekEntryResult!11395 0))(
  ( (MissingZero!11395 (index!47971 (_ BitVec 32))) (Found!11395 (index!47972 (_ BitVec 32))) (Intermediate!11395 (undefined!12207 Bool) (index!47973 (_ BitVec 32)) (x!129660 (_ BitVec 32))) (Undefined!11395) (MissingVacant!11395 (index!47974 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97616 (_ BitVec 32)) SeekEntryResult!11395)

(assert (=> b!1436009 (= res!969079 (= (seekEntryOrOpen!0 (select (arr!47102 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11395 #b00000000000000000000000000000000)))))

(assert (=> b!1436009 (=> (not res!969079) (not e!810425))))

(declare-fun b!1436010 () Bool)

(assert (=> b!1436010 (= e!810423 e!810424)))

(declare-fun c!132970 () Bool)

(assert (=> b!1436010 (= c!132970 (validKeyInArray!0 (select (arr!47102 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67578 () Bool)

(declare-fun call!67581 () Bool)

(assert (=> bm!67578 (= call!67581 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1436011 () Bool)

(assert (=> b!1436011 (= e!810425 call!67581)))

(declare-fun b!1436012 () Bool)

(assert (=> b!1436012 (= e!810424 call!67581)))

(assert (= (and d!154415 (not res!969078)) b!1436010))

(assert (= (and b!1436010 c!132970) b!1436009))

(assert (= (and b!1436010 (not c!132970)) b!1436012))

(assert (= (and b!1436009 res!969079) b!1436011))

(assert (= (or b!1436011 b!1436012) bm!67578))

(declare-fun m!1325395 () Bool)

(assert (=> b!1436009 m!1325395))

(declare-fun m!1325397 () Bool)

(assert (=> b!1436009 m!1325397))

(declare-fun m!1325399 () Bool)

(assert (=> b!1436009 m!1325399))

(assert (=> b!1436009 m!1325395))

(declare-fun m!1325401 () Bool)

(assert (=> b!1436009 m!1325401))

(assert (=> b!1436010 m!1325395))

(assert (=> b!1436010 m!1325395))

(declare-fun m!1325403 () Bool)

(assert (=> b!1436010 m!1325403))

(declare-fun m!1325405 () Bool)

(assert (=> bm!67578 m!1325405))

(assert (=> b!1435948 d!154415))

(declare-fun d!154423 () Bool)

(assert (=> d!154423 (= (validKeyInArray!0 (select (arr!47102 a!2862) i!1006)) (and (not (= (select (arr!47102 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47102 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435953 d!154423))

(declare-fun d!154425 () Bool)

(declare-fun lt!632014 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!778 (List!33783) (InoxSet (_ BitVec 64)))

(assert (=> d!154425 (= lt!632014 (select (content!778 Nil!33780) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!810442 () Bool)

(assert (=> d!154425 (= lt!632014 e!810442)))

(declare-fun res!969092 () Bool)

(assert (=> d!154425 (=> (not res!969092) (not e!810442))))

(assert (=> d!154425 (= res!969092 ((_ is Cons!33779) Nil!33780))))

(assert (=> d!154425 (= (contains!9892 Nil!33780 #b1000000000000000000000000000000000000000000000000000000000000000) lt!632014)))

(declare-fun b!1436031 () Bool)

(declare-fun e!810443 () Bool)

(assert (=> b!1436031 (= e!810442 e!810443)))

(declare-fun res!969093 () Bool)

(assert (=> b!1436031 (=> res!969093 e!810443)))

(assert (=> b!1436031 (= res!969093 (= (h!35114 Nil!33780) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1436032 () Bool)

(assert (=> b!1436032 (= e!810443 (contains!9892 (t!48484 Nil!33780) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154425 res!969092) b!1436031))

(assert (= (and b!1436031 (not res!969093)) b!1436032))

(declare-fun m!1325431 () Bool)

(assert (=> d!154425 m!1325431))

(declare-fun m!1325433 () Bool)

(assert (=> d!154425 m!1325433))

(declare-fun m!1325435 () Bool)

(assert (=> b!1436032 m!1325435))

(assert (=> b!1435947 d!154425))

(declare-fun d!154437 () Bool)

(declare-fun lt!632015 () Bool)

(assert (=> d!154437 (= lt!632015 (select (content!778 Nil!33780) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!810444 () Bool)

(assert (=> d!154437 (= lt!632015 e!810444)))

(declare-fun res!969094 () Bool)

(assert (=> d!154437 (=> (not res!969094) (not e!810444))))

(assert (=> d!154437 (= res!969094 ((_ is Cons!33779) Nil!33780))))

(assert (=> d!154437 (= (contains!9892 Nil!33780 #b0000000000000000000000000000000000000000000000000000000000000000) lt!632015)))

(declare-fun b!1436033 () Bool)

(declare-fun e!810445 () Bool)

(assert (=> b!1436033 (= e!810444 e!810445)))

(declare-fun res!969095 () Bool)

(assert (=> b!1436033 (=> res!969095 e!810445)))

(assert (=> b!1436033 (= res!969095 (= (h!35114 Nil!33780) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1436034 () Bool)

(assert (=> b!1436034 (= e!810445 (contains!9892 (t!48484 Nil!33780) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!154437 res!969094) b!1436033))

(assert (= (and b!1436033 (not res!969095)) b!1436034))

(assert (=> d!154437 m!1325431))

(declare-fun m!1325437 () Bool)

(assert (=> d!154437 m!1325437))

(declare-fun m!1325439 () Bool)

(assert (=> b!1436034 m!1325439))

(assert (=> b!1435952 d!154437))

(declare-fun d!154439 () Bool)

(assert (=> d!154439 (= (validKeyInArray!0 (select (arr!47102 a!2862) j!93)) (and (not (= (select (arr!47102 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47102 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435951 d!154439))

(declare-fun d!154441 () Bool)

(assert (=> d!154441 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124002 d!154441))

(declare-fun d!154449 () Bool)

(assert (=> d!154449 (= (array_inv!36047 a!2862) (bvsge (size!47653 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124002 d!154449))

(check-sat (not d!154437) (not d!154425) (not b!1435984) (not bm!67578) (not b!1436032) (not b!1435983) (not b!1436010) (not b!1436009) (not b!1436034))
(check-sat)
