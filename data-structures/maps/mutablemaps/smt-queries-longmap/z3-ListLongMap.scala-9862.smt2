; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116902 () Bool)

(assert start!116902)

(declare-fun b!1376959 () Bool)

(declare-fun res!919893 () Bool)

(declare-fun e!780011 () Bool)

(assert (=> b!1376959 (=> (not res!919893) (not e!780011))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93489 0))(
  ( (array!93490 (arr!45143 (Array (_ BitVec 32) (_ BitVec 64))) (size!45694 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93489)

(assert (=> b!1376959 (= res!919893 (and (bvslt (size!45694 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45694 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376960 () Bool)

(declare-fun e!780012 () Bool)

(assert (=> b!1376960 (= e!780011 e!780012)))

(declare-fun res!919895 () Bool)

(assert (=> b!1376960 (=> (not res!919895) (not e!780012))))

(declare-fun lt!605588 () (_ BitVec 32))

(declare-fun lt!605586 () (_ BitVec 32))

(assert (=> b!1376960 (= res!919895 (and (= lt!605586 lt!605588) (not (= to!206 (size!45694 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93489 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376960 (= lt!605588 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605592 () array!93489)

(assert (=> b!1376960 (= lt!605586 (arrayCountValidKeys!0 lt!605592 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376960 (= lt!605592 (array!93490 (store (arr!45143 a!4032) i!1445 k0!2947) (size!45694 a!4032)))))

(declare-fun b!1376961 () Bool)

(declare-fun res!919892 () Bool)

(assert (=> b!1376961 (=> (not res!919892) (not e!780011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376961 (= res!919892 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376962 () Bool)

(declare-fun res!919894 () Bool)

(assert (=> b!1376962 (=> (not res!919894) (not e!780011))))

(assert (=> b!1376962 (= res!919894 (validKeyInArray!0 (select (arr!45143 a!4032) i!1445)))))

(declare-fun b!1376963 () Bool)

(declare-datatypes ((Unit!45601 0))(
  ( (Unit!45602) )
))
(declare-fun e!780014 () Unit!45601)

(declare-fun lt!605591 () Unit!45601)

(assert (=> b!1376963 (= e!780014 lt!605591)))

(declare-fun lt!605593 () Unit!45601)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93489 (_ BitVec 32) (_ BitVec 32)) Unit!45601)

(assert (=> b!1376963 (= lt!605593 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65915 () (_ BitVec 32))

(assert (=> b!1376963 (= call!65915 lt!605588)))

(assert (=> b!1376963 (= lt!605591 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605592 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65916 () (_ BitVec 32))

(assert (=> b!1376963 (= call!65916 lt!605586)))

(declare-fun b!1376964 () Bool)

(assert (=> b!1376964 (= e!780012 false)))

(declare-fun lt!605589 () Unit!45601)

(assert (=> b!1376964 (= lt!605589 e!780014)))

(declare-fun c!127976 () Bool)

(assert (=> b!1376964 (= c!127976 (validKeyInArray!0 (select (arr!45143 a!4032) to!206)))))

(declare-fun res!919896 () Bool)

(assert (=> start!116902 (=> (not res!919896) (not e!780011))))

(assert (=> start!116902 (= res!919896 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45694 a!4032))))))

(assert (=> start!116902 e!780011))

(assert (=> start!116902 true))

(declare-fun array_inv!34088 (array!93489) Bool)

(assert (=> start!116902 (array_inv!34088 a!4032)))

(declare-fun bm!65912 () Bool)

(assert (=> bm!65912 (= call!65915 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65913 () Bool)

(assert (=> bm!65913 (= call!65916 (arrayCountValidKeys!0 lt!605592 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376965 () Bool)

(declare-fun lt!605587 () Unit!45601)

(assert (=> b!1376965 (= e!780014 lt!605587)))

(declare-fun lt!605590 () Unit!45601)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93489 (_ BitVec 32) (_ BitVec 32)) Unit!45601)

(assert (=> b!1376965 (= lt!605590 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376965 (= call!65915 (bvadd #b00000000000000000000000000000001 lt!605588))))

(assert (=> b!1376965 (= lt!605587 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605592 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376965 (= call!65916 (bvadd #b00000000000000000000000000000001 lt!605586))))

(assert (= (and start!116902 res!919896) b!1376962))

(assert (= (and b!1376962 res!919894) b!1376961))

(assert (= (and b!1376961 res!919892) b!1376959))

(assert (= (and b!1376959 res!919893) b!1376960))

(assert (= (and b!1376960 res!919895) b!1376964))

(assert (= (and b!1376964 c!127976) b!1376965))

(assert (= (and b!1376964 (not c!127976)) b!1376963))

(assert (= (or b!1376965 b!1376963) bm!65913))

(assert (= (or b!1376965 b!1376963) bm!65912))

(declare-fun m!1261199 () Bool)

(assert (=> bm!65913 m!1261199))

(declare-fun m!1261201 () Bool)

(assert (=> b!1376962 m!1261201))

(assert (=> b!1376962 m!1261201))

(declare-fun m!1261203 () Bool)

(assert (=> b!1376962 m!1261203))

(declare-fun m!1261205 () Bool)

(assert (=> start!116902 m!1261205))

(declare-fun m!1261207 () Bool)

(assert (=> b!1376961 m!1261207))

(declare-fun m!1261209 () Bool)

(assert (=> b!1376964 m!1261209))

(assert (=> b!1376964 m!1261209))

(declare-fun m!1261211 () Bool)

(assert (=> b!1376964 m!1261211))

(declare-fun m!1261213 () Bool)

(assert (=> b!1376965 m!1261213))

(declare-fun m!1261215 () Bool)

(assert (=> b!1376965 m!1261215))

(declare-fun m!1261217 () Bool)

(assert (=> b!1376963 m!1261217))

(declare-fun m!1261219 () Bool)

(assert (=> b!1376963 m!1261219))

(declare-fun m!1261221 () Bool)

(assert (=> bm!65912 m!1261221))

(declare-fun m!1261223 () Bool)

(assert (=> b!1376960 m!1261223))

(declare-fun m!1261225 () Bool)

(assert (=> b!1376960 m!1261225))

(declare-fun m!1261227 () Bool)

(assert (=> b!1376960 m!1261227))

(check-sat (not bm!65913) (not b!1376963) (not b!1376965) (not b!1376961) (not b!1376962) (not start!116902) (not b!1376964) (not b!1376960) (not bm!65912))
(check-sat)
