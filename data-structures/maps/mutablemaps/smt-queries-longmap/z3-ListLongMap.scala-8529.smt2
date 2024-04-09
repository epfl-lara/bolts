; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104006 () Bool)

(assert start!104006)

(declare-fun b!1244360 () Bool)

(declare-fun res!830126 () Bool)

(declare-fun e!705343 () Bool)

(assert (=> b!1244360 (=> (not res!830126) (not e!705343))))

(declare-datatypes ((array!80044 0))(
  ( (array!80045 (arr!38611 (Array (_ BitVec 32) (_ BitVec 64))) (size!39148 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80044)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1244360 (= res!830126 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39148 a!3892)) (not (= newFrom!287 (size!39148 a!3892)))))))

(declare-fun b!1244361 () Bool)

(declare-fun res!830128 () Bool)

(declare-fun e!705346 () Bool)

(assert (=> b!1244361 (=> (not res!830128) (not e!705346))))

(declare-datatypes ((List!27592 0))(
  ( (Nil!27589) (Cons!27588 (h!28797 (_ BitVec 64)) (t!41068 List!27592)) )
))
(declare-fun arrayNoDuplicates!0 (array!80044 (_ BitVec 32) List!27592) Bool)

(assert (=> b!1244361 (= res!830128 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27589))))

(declare-fun b!1244362 () Bool)

(declare-fun res!830130 () Bool)

(assert (=> b!1244362 (=> (not res!830130) (not e!705343))))

(assert (=> b!1244362 (= res!830130 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27589))))

(declare-fun b!1244363 () Bool)

(declare-fun e!705345 () Bool)

(assert (=> b!1244363 (= e!705346 (not e!705345))))

(declare-fun res!830129 () Bool)

(assert (=> b!1244363 (=> res!830129 e!705345)))

(assert (=> b!1244363 (= res!830129 (bvslt newFrom!287 #b00000000000000000000000000000000))))

(assert (=> b!1244363 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27589)))

(declare-datatypes ((Unit!41323 0))(
  ( (Unit!41324) )
))
(declare-fun lt!562689 () Unit!41323)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80044 (_ BitVec 32) (_ BitVec 32)) Unit!41323)

(assert (=> b!1244363 (= lt!562689 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun res!830131 () Bool)

(assert (=> start!104006 (=> (not res!830131) (not e!705343))))

(assert (=> start!104006 (= res!830131 (and (bvslt (size!39148 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39148 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39148 a!3892))))))

(assert (=> start!104006 e!705343))

(declare-fun array_inv!29387 (array!80044) Bool)

(assert (=> start!104006 (array_inv!29387 a!3892)))

(assert (=> start!104006 true))

(declare-fun b!1244364 () Bool)

(assert (=> b!1244364 (= e!705343 e!705346)))

(declare-fun res!830127 () Bool)

(assert (=> b!1244364 (=> (not res!830127) (not e!705346))))

(assert (=> b!1244364 (= res!830127 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562688 () Unit!41323)

(declare-fun e!705347 () Unit!41323)

(assert (=> b!1244364 (= lt!562688 e!705347)))

(declare-fun c!121804 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244364 (= c!121804 (validKeyInArray!0 (select (arr!38611 a!3892) from!3270)))))

(declare-fun b!1244365 () Bool)

(declare-fun lt!562690 () Unit!41323)

(assert (=> b!1244365 (= e!705347 lt!562690)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80044 List!27592 List!27592 (_ BitVec 32)) Unit!41323)

(assert (=> b!1244365 (= lt!562690 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27588 (select (arr!38611 a!3892) from!3270) Nil!27589) Nil!27589 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244365 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27589)))

(declare-fun b!1244366 () Bool)

(declare-fun Unit!41325 () Unit!41323)

(assert (=> b!1244366 (= e!705347 Unit!41325)))

(declare-fun b!1244367 () Bool)

(declare-fun noDuplicate!2033 (List!27592) Bool)

(assert (=> b!1244367 (= e!705345 (noDuplicate!2033 Nil!27589))))

(assert (= (and start!104006 res!830131) b!1244362))

(assert (= (and b!1244362 res!830130) b!1244360))

(assert (= (and b!1244360 res!830126) b!1244364))

(assert (= (and b!1244364 c!121804) b!1244365))

(assert (= (and b!1244364 (not c!121804)) b!1244366))

(assert (= (and b!1244364 res!830127) b!1244361))

(assert (= (and b!1244361 res!830128) b!1244363))

(assert (= (and b!1244363 (not res!830129)) b!1244367))

(declare-fun m!1146663 () Bool)

(assert (=> start!104006 m!1146663))

(declare-fun m!1146665 () Bool)

(assert (=> b!1244367 m!1146665))

(declare-fun m!1146667 () Bool)

(assert (=> b!1244361 m!1146667))

(declare-fun m!1146669 () Bool)

(assert (=> b!1244364 m!1146669))

(assert (=> b!1244364 m!1146669))

(declare-fun m!1146671 () Bool)

(assert (=> b!1244364 m!1146671))

(declare-fun m!1146673 () Bool)

(assert (=> b!1244362 m!1146673))

(declare-fun m!1146675 () Bool)

(assert (=> b!1244363 m!1146675))

(declare-fun m!1146677 () Bool)

(assert (=> b!1244363 m!1146677))

(assert (=> b!1244365 m!1146669))

(declare-fun m!1146679 () Bool)

(assert (=> b!1244365 m!1146679))

(assert (=> b!1244365 m!1146667))

(check-sat (not b!1244362) (not b!1244364) (not b!1244363) (not b!1244361) (not b!1244367) (not start!104006) (not b!1244365))
(check-sat)
(get-model)

(declare-fun b!1244402 () Bool)

(declare-fun e!705371 () Bool)

(declare-fun contains!7442 (List!27592 (_ BitVec 64)) Bool)

(assert (=> b!1244402 (= e!705371 (contains!7442 Nil!27589 (select (arr!38611 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244403 () Bool)

(declare-fun e!705374 () Bool)

(declare-fun call!61407 () Bool)

(assert (=> b!1244403 (= e!705374 call!61407)))

(declare-fun b!1244404 () Bool)

(declare-fun e!705373 () Bool)

(assert (=> b!1244404 (= e!705373 e!705374)))

(declare-fun c!121810 () Bool)

(assert (=> b!1244404 (= c!121810 (validKeyInArray!0 (select (arr!38611 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun bm!61404 () Bool)

(assert (=> bm!61404 (= call!61407 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121810 (Cons!27588 (select (arr!38611 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27589) Nil!27589)))))

(declare-fun d!137031 () Bool)

(declare-fun res!830158 () Bool)

(declare-fun e!705372 () Bool)

(assert (=> d!137031 (=> res!830158 e!705372)))

(assert (=> d!137031 (= res!830158 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39148 a!3892)))))

(assert (=> d!137031 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27589) e!705372)))

(declare-fun b!1244405 () Bool)

(assert (=> b!1244405 (= e!705372 e!705373)))

(declare-fun res!830156 () Bool)

(assert (=> b!1244405 (=> (not res!830156) (not e!705373))))

(assert (=> b!1244405 (= res!830156 (not e!705371))))

(declare-fun res!830157 () Bool)

(assert (=> b!1244405 (=> (not res!830157) (not e!705371))))

(assert (=> b!1244405 (= res!830157 (validKeyInArray!0 (select (arr!38611 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244406 () Bool)

(assert (=> b!1244406 (= e!705374 call!61407)))

(assert (= (and d!137031 (not res!830158)) b!1244405))

(assert (= (and b!1244405 res!830157) b!1244402))

(assert (= (and b!1244405 res!830156) b!1244404))

(assert (= (and b!1244404 c!121810) b!1244403))

(assert (= (and b!1244404 (not c!121810)) b!1244406))

(assert (= (or b!1244403 b!1244406) bm!61404))

(declare-fun m!1146699 () Bool)

(assert (=> b!1244402 m!1146699))

(assert (=> b!1244402 m!1146699))

(declare-fun m!1146701 () Bool)

(assert (=> b!1244402 m!1146701))

(assert (=> b!1244404 m!1146699))

(assert (=> b!1244404 m!1146699))

(declare-fun m!1146703 () Bool)

(assert (=> b!1244404 m!1146703))

(assert (=> bm!61404 m!1146699))

(declare-fun m!1146705 () Bool)

(assert (=> bm!61404 m!1146705))

(assert (=> b!1244405 m!1146699))

(assert (=> b!1244405 m!1146699))

(assert (=> b!1244405 m!1146703))

(assert (=> b!1244361 d!137031))

(declare-fun d!137033 () Bool)

(assert (=> d!137033 (= (array_inv!29387 a!3892) (bvsge (size!39148 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104006 d!137033))

(declare-fun b!1244407 () Bool)

(declare-fun e!705375 () Bool)

(assert (=> b!1244407 (= e!705375 (contains!7442 Nil!27589 (select (arr!38611 a!3892) from!3270)))))

(declare-fun b!1244408 () Bool)

(declare-fun e!705378 () Bool)

(declare-fun call!61408 () Bool)

(assert (=> b!1244408 (= e!705378 call!61408)))

(declare-fun b!1244409 () Bool)

(declare-fun e!705377 () Bool)

(assert (=> b!1244409 (= e!705377 e!705378)))

(declare-fun c!121811 () Bool)

(assert (=> b!1244409 (= c!121811 (validKeyInArray!0 (select (arr!38611 a!3892) from!3270)))))

(declare-fun bm!61405 () Bool)

(assert (=> bm!61405 (= call!61408 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121811 (Cons!27588 (select (arr!38611 a!3892) from!3270) Nil!27589) Nil!27589)))))

(declare-fun d!137037 () Bool)

(declare-fun res!830161 () Bool)

(declare-fun e!705376 () Bool)

(assert (=> d!137037 (=> res!830161 e!705376)))

(assert (=> d!137037 (= res!830161 (bvsge from!3270 (size!39148 a!3892)))))

(assert (=> d!137037 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27589) e!705376)))

(declare-fun b!1244410 () Bool)

(assert (=> b!1244410 (= e!705376 e!705377)))

(declare-fun res!830159 () Bool)

(assert (=> b!1244410 (=> (not res!830159) (not e!705377))))

(assert (=> b!1244410 (= res!830159 (not e!705375))))

(declare-fun res!830160 () Bool)

(assert (=> b!1244410 (=> (not res!830160) (not e!705375))))

(assert (=> b!1244410 (= res!830160 (validKeyInArray!0 (select (arr!38611 a!3892) from!3270)))))

(declare-fun b!1244411 () Bool)

(assert (=> b!1244411 (= e!705378 call!61408)))

(assert (= (and d!137037 (not res!830161)) b!1244410))

(assert (= (and b!1244410 res!830160) b!1244407))

(assert (= (and b!1244410 res!830159) b!1244409))

(assert (= (and b!1244409 c!121811) b!1244408))

(assert (= (and b!1244409 (not c!121811)) b!1244411))

(assert (= (or b!1244408 b!1244411) bm!61405))

(assert (=> b!1244407 m!1146669))

(assert (=> b!1244407 m!1146669))

(declare-fun m!1146707 () Bool)

(assert (=> b!1244407 m!1146707))

(assert (=> b!1244409 m!1146669))

(assert (=> b!1244409 m!1146669))

(assert (=> b!1244409 m!1146671))

(assert (=> bm!61405 m!1146669))

(declare-fun m!1146709 () Bool)

(assert (=> bm!61405 m!1146709))

(assert (=> b!1244410 m!1146669))

(assert (=> b!1244410 m!1146669))

(assert (=> b!1244410 m!1146671))

(assert (=> b!1244362 d!137037))

(declare-fun d!137041 () Bool)

(declare-fun res!830166 () Bool)

(declare-fun e!705383 () Bool)

(assert (=> d!137041 (=> res!830166 e!705383)))

(get-info :version)

(assert (=> d!137041 (= res!830166 ((_ is Nil!27589) Nil!27589))))

(assert (=> d!137041 (= (noDuplicate!2033 Nil!27589) e!705383)))

(declare-fun b!1244416 () Bool)

(declare-fun e!705384 () Bool)

(assert (=> b!1244416 (= e!705383 e!705384)))

(declare-fun res!830167 () Bool)

(assert (=> b!1244416 (=> (not res!830167) (not e!705384))))

(assert (=> b!1244416 (= res!830167 (not (contains!7442 (t!41068 Nil!27589) (h!28797 Nil!27589))))))

(declare-fun b!1244417 () Bool)

(assert (=> b!1244417 (= e!705384 (noDuplicate!2033 (t!41068 Nil!27589)))))

(assert (= (and d!137041 (not res!830166)) b!1244416))

(assert (= (and b!1244416 res!830167) b!1244417))

(declare-fun m!1146711 () Bool)

(assert (=> b!1244416 m!1146711))

(declare-fun m!1146713 () Bool)

(assert (=> b!1244417 m!1146713))

(assert (=> b!1244367 d!137041))

(declare-fun d!137045 () Bool)

(assert (=> d!137045 (= (validKeyInArray!0 (select (arr!38611 a!3892) from!3270)) (and (not (= (select (arr!38611 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38611 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1244364 d!137045))

(declare-fun b!1244428 () Bool)

(declare-fun e!705393 () Bool)

(assert (=> b!1244428 (= e!705393 (contains!7442 Nil!27589 (select (arr!38611 a!3892) newFrom!287)))))

(declare-fun b!1244429 () Bool)

(declare-fun e!705396 () Bool)

(declare-fun call!61411 () Bool)

(assert (=> b!1244429 (= e!705396 call!61411)))

(declare-fun b!1244430 () Bool)

(declare-fun e!705395 () Bool)

(assert (=> b!1244430 (= e!705395 e!705396)))

(declare-fun c!121814 () Bool)

(assert (=> b!1244430 (= c!121814 (validKeyInArray!0 (select (arr!38611 a!3892) newFrom!287)))))

(declare-fun bm!61408 () Bool)

(assert (=> bm!61408 (= call!61411 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!121814 (Cons!27588 (select (arr!38611 a!3892) newFrom!287) Nil!27589) Nil!27589)))))

(declare-fun d!137047 () Bool)

(declare-fun res!830176 () Bool)

(declare-fun e!705394 () Bool)

(assert (=> d!137047 (=> res!830176 e!705394)))

(assert (=> d!137047 (= res!830176 (bvsge newFrom!287 (size!39148 a!3892)))))

(assert (=> d!137047 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27589) e!705394)))

(declare-fun b!1244431 () Bool)

(assert (=> b!1244431 (= e!705394 e!705395)))

(declare-fun res!830174 () Bool)

(assert (=> b!1244431 (=> (not res!830174) (not e!705395))))

(assert (=> b!1244431 (= res!830174 (not e!705393))))

(declare-fun res!830175 () Bool)

(assert (=> b!1244431 (=> (not res!830175) (not e!705393))))

(assert (=> b!1244431 (= res!830175 (validKeyInArray!0 (select (arr!38611 a!3892) newFrom!287)))))

(declare-fun b!1244432 () Bool)

(assert (=> b!1244432 (= e!705396 call!61411)))

(assert (= (and d!137047 (not res!830176)) b!1244431))

(assert (= (and b!1244431 res!830175) b!1244428))

(assert (= (and b!1244431 res!830174) b!1244430))

(assert (= (and b!1244430 c!121814) b!1244429))

(assert (= (and b!1244430 (not c!121814)) b!1244432))

(assert (= (or b!1244429 b!1244432) bm!61408))

(declare-fun m!1146715 () Bool)

(assert (=> b!1244428 m!1146715))

(assert (=> b!1244428 m!1146715))

(declare-fun m!1146717 () Bool)

(assert (=> b!1244428 m!1146717))

(assert (=> b!1244430 m!1146715))

(assert (=> b!1244430 m!1146715))

(declare-fun m!1146719 () Bool)

(assert (=> b!1244430 m!1146719))

(assert (=> bm!61408 m!1146715))

(declare-fun m!1146721 () Bool)

(assert (=> bm!61408 m!1146721))

(assert (=> b!1244431 m!1146715))

(assert (=> b!1244431 m!1146715))

(assert (=> b!1244431 m!1146719))

(assert (=> b!1244363 d!137047))

(declare-fun d!137049 () Bool)

(assert (=> d!137049 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27589)))

(declare-fun lt!562702 () Unit!41323)

(declare-fun choose!39 (array!80044 (_ BitVec 32) (_ BitVec 32)) Unit!41323)

(assert (=> d!137049 (= lt!562702 (choose!39 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (=> d!137049 (bvslt (size!39148 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137049 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287) lt!562702)))

(declare-fun bs!35032 () Bool)

(assert (= bs!35032 d!137049))

(assert (=> bs!35032 m!1146675))

(declare-fun m!1146731 () Bool)

(assert (=> bs!35032 m!1146731))

(assert (=> b!1244363 d!137049))

(declare-fun d!137053 () Bool)

(assert (=> d!137053 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27589)))

(declare-fun lt!562705 () Unit!41323)

(declare-fun choose!80 (array!80044 List!27592 List!27592 (_ BitVec 32)) Unit!41323)

(assert (=> d!137053 (= lt!562705 (choose!80 a!3892 (Cons!27588 (select (arr!38611 a!3892) from!3270) Nil!27589) Nil!27589 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137053 (bvslt (size!39148 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137053 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27588 (select (arr!38611 a!3892) from!3270) Nil!27589) Nil!27589 (bvadd #b00000000000000000000000000000001 from!3270)) lt!562705)))

(declare-fun bs!35033 () Bool)

(assert (= bs!35033 d!137053))

(assert (=> bs!35033 m!1146667))

(declare-fun m!1146749 () Bool)

(assert (=> bs!35033 m!1146749))

(assert (=> b!1244365 d!137053))

(assert (=> b!1244365 d!137031))

(check-sat (not b!1244404) (not bm!61408) (not b!1244409) (not b!1244416) (not b!1244402) (not b!1244431) (not b!1244407) (not b!1244430) (not d!137053) (not b!1244410) (not b!1244417) (not d!137049) (not b!1244405) (not bm!61404) (not b!1244428) (not bm!61405))
(check-sat)
