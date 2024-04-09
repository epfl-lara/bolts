; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134624 () Bool)

(assert start!134624)

(declare-fun b!1571064 () Bool)

(declare-fun res!1073457 () Bool)

(declare-fun e!875993 () Bool)

(assert (=> b!1571064 (=> (not res!1073457) (not e!875993))))

(declare-datatypes ((array!104790 0))(
  ( (array!104791 (arr!50570 (Array (_ BitVec 32) (_ BitVec 64))) (size!51121 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104790)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104790 (_ BitVec 32)) Bool)

(assert (=> b!1571064 (= res!1073457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571066 () Bool)

(assert (=> b!1571066 (= e!875993 (bvslt mask!4043 #b00000000000000000000000000000000))))

(declare-fun b!1571063 () Bool)

(declare-fun res!1073456 () Bool)

(assert (=> b!1571063 (=> (not res!1073456) (not e!875993))))

(assert (=> b!1571063 (= res!1073456 (= (size!51121 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun res!1073458 () Bool)

(assert (=> start!134624 (=> (not res!1073458) (not e!875993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134624 (= res!1073458 (validMask!0 mask!4043))))

(assert (=> start!134624 e!875993))

(assert (=> start!134624 true))

(declare-fun array_inv!39215 (array!104790) Bool)

(assert (=> start!134624 (array_inv!39215 a!3462)))

(declare-fun b!1571065 () Bool)

(declare-fun res!1073459 () Bool)

(assert (=> b!1571065 (=> (not res!1073459) (not e!875993))))

(declare-fun k0!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571065 (= res!1073459 (validKeyInArray!0 k0!2731))))

(assert (= (and start!134624 res!1073458) b!1571063))

(assert (= (and b!1571063 res!1073456) b!1571064))

(assert (= (and b!1571064 res!1073457) b!1571065))

(assert (= (and b!1571065 res!1073459) b!1571066))

(declare-fun m!1445103 () Bool)

(assert (=> b!1571064 m!1445103))

(declare-fun m!1445105 () Bool)

(assert (=> start!134624 m!1445105))

(declare-fun m!1445107 () Bool)

(assert (=> start!134624 m!1445107))

(declare-fun m!1445109 () Bool)

(assert (=> b!1571065 m!1445109))

(check-sat (not b!1571065) (not b!1571064) (not start!134624))
(check-sat)
(get-model)

(declare-fun d!164407 () Bool)

(assert (=> d!164407 (= (validKeyInArray!0 k0!2731) (and (not (= k0!2731 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2731 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571065 d!164407))

(declare-fun bm!72352 () Bool)

(declare-fun call!72355 () Bool)

(assert (=> bm!72352 (= call!72355 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3462 mask!4043))))

(declare-fun b!1571095 () Bool)

(declare-fun e!876015 () Bool)

(assert (=> b!1571095 (= e!876015 call!72355)))

(declare-fun d!164409 () Bool)

(declare-fun res!1073480 () Bool)

(declare-fun e!876014 () Bool)

(assert (=> d!164409 (=> res!1073480 e!876014)))

(assert (=> d!164409 (= res!1073480 (bvsge #b00000000000000000000000000000000 (size!51121 a!3462)))))

(assert (=> d!164409 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043) e!876014)))

(declare-fun b!1571096 () Bool)

(declare-fun e!876013 () Bool)

(assert (=> b!1571096 (= e!876015 e!876013)))

(declare-fun lt!673425 () (_ BitVec 64))

(assert (=> b!1571096 (= lt!673425 (select (arr!50570 a!3462) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!52044 0))(
  ( (Unit!52045) )
))
(declare-fun lt!673424 () Unit!52044)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104790 (_ BitVec 64) (_ BitVec 32)) Unit!52044)

(assert (=> b!1571096 (= lt!673424 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3462 lt!673425 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1571096 (arrayContainsKey!0 a!3462 lt!673425 #b00000000000000000000000000000000)))

(declare-fun lt!673426 () Unit!52044)

(assert (=> b!1571096 (= lt!673426 lt!673424)))

(declare-fun res!1073481 () Bool)

(declare-datatypes ((SeekEntryResult!13529 0))(
  ( (MissingZero!13529 (index!56513 (_ BitVec 32))) (Found!13529 (index!56514 (_ BitVec 32))) (Intermediate!13529 (undefined!14341 Bool) (index!56515 (_ BitVec 32)) (x!141204 (_ BitVec 32))) (Undefined!13529) (MissingVacant!13529 (index!56516 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104790 (_ BitVec 32)) SeekEntryResult!13529)

(assert (=> b!1571096 (= res!1073481 (= (seekEntryOrOpen!0 (select (arr!50570 a!3462) #b00000000000000000000000000000000) a!3462 mask!4043) (Found!13529 #b00000000000000000000000000000000)))))

(assert (=> b!1571096 (=> (not res!1073481) (not e!876013))))

(declare-fun b!1571097 () Bool)

(assert (=> b!1571097 (= e!876014 e!876015)))

(declare-fun c!145046 () Bool)

(assert (=> b!1571097 (= c!145046 (validKeyInArray!0 (select (arr!50570 a!3462) #b00000000000000000000000000000000)))))

(declare-fun b!1571098 () Bool)

(assert (=> b!1571098 (= e!876013 call!72355)))

(assert (= (and d!164409 (not res!1073480)) b!1571097))

(assert (= (and b!1571097 c!145046) b!1571096))

(assert (= (and b!1571097 (not c!145046)) b!1571095))

(assert (= (and b!1571096 res!1073481) b!1571098))

(assert (= (or b!1571098 b!1571095) bm!72352))

(declare-fun m!1445119 () Bool)

(assert (=> bm!72352 m!1445119))

(declare-fun m!1445121 () Bool)

(assert (=> b!1571096 m!1445121))

(declare-fun m!1445123 () Bool)

(assert (=> b!1571096 m!1445123))

(declare-fun m!1445125 () Bool)

(assert (=> b!1571096 m!1445125))

(assert (=> b!1571096 m!1445121))

(declare-fun m!1445127 () Bool)

(assert (=> b!1571096 m!1445127))

(assert (=> b!1571097 m!1445121))

(assert (=> b!1571097 m!1445121))

(declare-fun m!1445129 () Bool)

(assert (=> b!1571097 m!1445129))

(assert (=> b!1571064 d!164409))

(declare-fun d!164421 () Bool)

(assert (=> d!164421 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134624 d!164421))

(declare-fun d!164425 () Bool)

(assert (=> d!164425 (= (array_inv!39215 a!3462) (bvsge (size!51121 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134624 d!164425))

(check-sat (not bm!72352) (not b!1571097) (not b!1571096))
(check-sat)
