; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104004 () Bool)

(assert start!104004)

(declare-fun b!1244336 () Bool)

(declare-fun e!705332 () Bool)

(declare-fun e!705328 () Bool)

(assert (=> b!1244336 (= e!705332 (not e!705328))))

(declare-fun res!830111 () Bool)

(assert (=> b!1244336 (=> res!830111 e!705328)))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244336 (= res!830111 (bvslt newFrom!287 #b00000000000000000000000000000000))))

(declare-datatypes ((array!80042 0))(
  ( (array!80043 (arr!38610 (Array (_ BitVec 32) (_ BitVec 64))) (size!39147 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80042)

(declare-datatypes ((List!27591 0))(
  ( (Nil!27588) (Cons!27587 (h!28796 (_ BitVec 64)) (t!41067 List!27591)) )
))
(declare-fun arrayNoDuplicates!0 (array!80042 (_ BitVec 32) List!27591) Bool)

(assert (=> b!1244336 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27588)))

(declare-datatypes ((Unit!41320 0))(
  ( (Unit!41321) )
))
(declare-fun lt!562680 () Unit!41320)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80042 (_ BitVec 32) (_ BitVec 32)) Unit!41320)

(assert (=> b!1244336 (= lt!562680 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244337 () Bool)

(declare-fun noDuplicate!2032 (List!27591) Bool)

(assert (=> b!1244337 (= e!705328 (noDuplicate!2032 Nil!27588))))

(declare-fun res!830112 () Bool)

(declare-fun e!705330 () Bool)

(assert (=> start!104004 (=> (not res!830112) (not e!705330))))

(assert (=> start!104004 (= res!830112 (and (bvslt (size!39147 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39147 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39147 a!3892))))))

(assert (=> start!104004 e!705330))

(declare-fun array_inv!29386 (array!80042) Bool)

(assert (=> start!104004 (array_inv!29386 a!3892)))

(assert (=> start!104004 true))

(declare-fun b!1244338 () Bool)

(declare-fun res!830113 () Bool)

(assert (=> b!1244338 (=> (not res!830113) (not e!705332))))

(assert (=> b!1244338 (= res!830113 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27588))))

(declare-fun b!1244339 () Bool)

(declare-fun e!705329 () Unit!41320)

(declare-fun Unit!41322 () Unit!41320)

(assert (=> b!1244339 (= e!705329 Unit!41322)))

(declare-fun b!1244340 () Bool)

(assert (=> b!1244340 (= e!705330 e!705332)))

(declare-fun res!830110 () Bool)

(assert (=> b!1244340 (=> (not res!830110) (not e!705332))))

(assert (=> b!1244340 (= res!830110 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562681 () Unit!41320)

(assert (=> b!1244340 (= lt!562681 e!705329)))

(declare-fun c!121801 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244340 (= c!121801 (validKeyInArray!0 (select (arr!38610 a!3892) from!3270)))))

(declare-fun b!1244341 () Bool)

(declare-fun res!830108 () Bool)

(assert (=> b!1244341 (=> (not res!830108) (not e!705330))))

(assert (=> b!1244341 (= res!830108 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27588))))

(declare-fun b!1244342 () Bool)

(declare-fun lt!562679 () Unit!41320)

(assert (=> b!1244342 (= e!705329 lt!562679)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80042 List!27591 List!27591 (_ BitVec 32)) Unit!41320)

(assert (=> b!1244342 (= lt!562679 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27587 (select (arr!38610 a!3892) from!3270) Nil!27588) Nil!27588 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244342 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27588)))

(declare-fun b!1244343 () Bool)

(declare-fun res!830109 () Bool)

(assert (=> b!1244343 (=> (not res!830109) (not e!705330))))

(assert (=> b!1244343 (= res!830109 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39147 a!3892)) (not (= newFrom!287 (size!39147 a!3892)))))))

(assert (= (and start!104004 res!830112) b!1244341))

(assert (= (and b!1244341 res!830108) b!1244343))

(assert (= (and b!1244343 res!830109) b!1244340))

(assert (= (and b!1244340 c!121801) b!1244342))

(assert (= (and b!1244340 (not c!121801)) b!1244339))

(assert (= (and b!1244340 res!830110) b!1244338))

(assert (= (and b!1244338 res!830113) b!1244336))

(assert (= (and b!1244336 (not res!830111)) b!1244337))

(declare-fun m!1146645 () Bool)

(assert (=> b!1244342 m!1146645))

(declare-fun m!1146647 () Bool)

(assert (=> b!1244342 m!1146647))

(declare-fun m!1146649 () Bool)

(assert (=> b!1244342 m!1146649))

(declare-fun m!1146651 () Bool)

(assert (=> b!1244337 m!1146651))

(declare-fun m!1146653 () Bool)

(assert (=> start!104004 m!1146653))

(assert (=> b!1244338 m!1146649))

(assert (=> b!1244340 m!1146645))

(assert (=> b!1244340 m!1146645))

(declare-fun m!1146655 () Bool)

(assert (=> b!1244340 m!1146655))

(declare-fun m!1146657 () Bool)

(assert (=> b!1244336 m!1146657))

(declare-fun m!1146659 () Bool)

(assert (=> b!1244336 m!1146659))

(declare-fun m!1146661 () Bool)

(assert (=> b!1244341 m!1146661))

(push 1)

(assert (not b!1244336))

(assert (not b!1244341))

(assert (not b!1244342))

(assert (not b!1244338))

(assert (not b!1244337))

(assert (not b!1244340))

(assert (not start!104004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137035 () Bool)

(assert (=> d!137035 (= (array_inv!29386 a!3892) (bvsge (size!39147 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104004 d!137035))

(declare-fun d!137039 () Bool)

(declare-fun res!830185 () Bool)

(declare-fun e!705408 () Bool)

(assert (=> d!137039 (=> res!830185 e!705408)))

(assert (=> d!137039 (= res!830185 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39147 a!3892)))))

(assert (=> d!137039 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27588) e!705408)))

(declare-fun b!1244443 () Bool)

(declare-fun e!705405 () Bool)

(assert (=> b!1244443 (= e!705408 e!705405)))

(declare-fun res!830183 () Bool)

(assert (=> b!1244443 (=> (not res!830183) (not e!705405))))

(declare-fun e!705407 () Bool)

(assert (=> b!1244443 (= res!830183 (not e!705407))))

(declare-fun res!830184 () Bool)

(assert (=> b!1244443 (=> (not res!830184) (not e!705407))))

(assert (=> b!1244443 (= res!830184 (validKeyInArray!0 (select (arr!38610 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244444 () Bool)

(declare-fun e!705406 () Bool)

(assert (=> b!1244444 (= e!705405 e!705406)))

(declare-fun c!121817 () Bool)

(assert (=> b!1244444 (= c!121817 (validKeyInArray!0 (select (arr!38610 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244445 () Bool)

(declare-fun call!61414 () Bool)

(assert (=> b!1244445 (= e!705406 call!61414)))

(declare-fun b!1244446 () Bool)

(declare-fun contains!7444 (List!27591 (_ BitVec 64)) Bool)

(assert (=> b!1244446 (= e!705407 (contains!7444 Nil!27588 (select (arr!38610 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun bm!61411 () Bool)

(assert (=> bm!61411 (= call!61414 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121817 (Cons!27587 (select (arr!38610 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27588) Nil!27588)))))

(declare-fun b!1244447 () Bool)

(assert (=> b!1244447 (= e!705406 call!61414)))

(assert (= (and d!137039 (not res!830185)) b!1244443))

(assert (= (and b!1244443 res!830184) b!1244446))

(assert (= (and b!1244443 res!830183) b!1244444))

(assert (= (and b!1244444 c!121817) b!1244445))

(assert (= (and b!1244444 (not c!121817)) b!1244447))

(assert (= (or b!1244445 b!1244447) bm!61411))

(declare-fun m!1146723 () Bool)

(assert (=> b!1244443 m!1146723))

(assert (=> b!1244443 m!1146723))

(declare-fun m!1146725 () Bool)

(assert (=> b!1244443 m!1146725))

(assert (=> b!1244444 m!1146723))

(assert (=> b!1244444 m!1146723))

(assert (=> b!1244444 m!1146725))

(assert (=> b!1244446 m!1146723))

(assert (=> b!1244446 m!1146723))

(declare-fun m!1146727 () Bool)

(assert (=> b!1244446 m!1146727))

(assert (=> bm!61411 m!1146723))

(declare-fun m!1146729 () Bool)

(assert (=> bm!61411 m!1146729))

(assert (=> b!1244338 d!137039))

(declare-fun d!137051 () Bool)

(assert (=> d!137051 (= (validKeyInArray!0 (select (arr!38610 a!3892) from!3270)) (and (not (= (select (arr!38610 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38610 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1244340 d!137051))

(declare-fun d!137055 () Bool)

(declare-fun res!830191 () Bool)

(declare-fun e!705416 () Bool)

(assert (=> d!137055 (=> res!830191 e!705416)))

(assert (=> d!137055 (= res!830191 (bvsge newFrom!287 (size!39147 a!3892)))))

(assert (=> d!137055 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27588) e!705416)))

(declare-fun b!1244453 () Bool)

(declare-fun e!705413 () Bool)

(assert (=> b!1244453 (= e!705416 e!705413)))

(declare-fun res!830189 () Bool)

(assert (=> b!1244453 (=> (not res!830189) (not e!705413))))

(declare-fun e!705415 () Bool)

(assert (=> b!1244453 (= res!830189 (not e!705415))))

(declare-fun res!830190 () Bool)

(assert (=> b!1244453 (=> (not res!830190) (not e!705415))))

(assert (=> b!1244453 (= res!830190 (validKeyInArray!0 (select (arr!38610 a!3892) newFrom!287)))))

(declare-fun b!1244454 () Bool)

(declare-fun e!705414 () Bool)

(assert (=> b!1244454 (= e!705413 e!705414)))

(declare-fun c!121819 () Bool)

(assert (=> b!1244454 (= c!121819 (validKeyInArray!0 (select (arr!38610 a!3892) newFrom!287)))))

(declare-fun b!1244455 () Bool)

(declare-fun call!61416 () Bool)

(assert (=> b!1244455 (= e!705414 call!61416)))

(declare-fun b!1244456 () Bool)

(assert (=> b!1244456 (= e!705415 (contains!7444 Nil!27588 (select (arr!38610 a!3892) newFrom!287)))))

(declare-fun bm!61413 () Bool)

(assert (=> bm!61413 (= call!61416 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!121819 (Cons!27587 (select (arr!38610 a!3892) newFrom!287) Nil!27588) Nil!27588)))))

(declare-fun b!1244457 () Bool)

(assert (=> b!1244457 (= e!705414 call!61416)))

(assert (= (and d!137055 (not res!830191)) b!1244453))

(assert (= (and b!1244453 res!830190) b!1244456))

(assert (= (and b!1244453 res!830189) b!1244454))

(assert (= (and b!1244454 c!121819) b!1244455))

(assert (= (and b!1244454 (not c!121819)) b!1244457))

(assert (= (or b!1244455 b!1244457) bm!61413))

(declare-fun m!1146739 () Bool)

(assert (=> b!1244453 m!1146739))

(assert (=> b!1244453 m!1146739))

(declare-fun m!1146743 () Bool)

(assert (=> b!1244453 m!1146743))

(assert (=> b!1244454 m!1146739))

(assert (=> b!1244454 m!1146739))

(assert (=> b!1244454 m!1146743))

(assert (=> b!1244456 m!1146739))

(assert (=> b!1244456 m!1146739))

(declare-fun m!1146745 () Bool)

(assert (=> b!1244456 m!1146745))

(assert (=> bm!61413 m!1146739))

(declare-fun m!1146747 () Bool)

(assert (=> bm!61413 m!1146747))

(assert (=> b!1244336 d!137055))

(declare-fun d!137059 () Bool)

(assert (=> d!137059 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27588)))

(declare-fun lt!562711 () Unit!41320)

(declare-fun choose!39 (array!80042 (_ BitVec 32) (_ BitVec 32)) Unit!41320)

(assert (=> d!137059 (= lt!562711 (choose!39 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (=> d!137059 (bvslt (size!39147 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137059 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287) lt!562711)))

(declare-fun bs!35035 () Bool)

(assert (= bs!35035 d!137059))

(assert (=> bs!35035 m!1146657))

(declare-fun m!1146753 () Bool)

(assert (=> bs!35035 m!1146753))

(assert (=> b!1244336 d!137059))

(declare-fun d!137063 () Bool)

(declare-fun res!830194 () Bool)

(declare-fun e!705420 () Bool)

(assert (=> d!137063 (=> res!830194 e!705420)))

(assert (=> d!137063 (= res!830194 (bvsge from!3270 (size!39147 a!3892)))))

(assert (=> d!137063 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27588) e!705420)))

(declare-fun b!1244458 () Bool)

(declare-fun e!705417 () Bool)

(assert (=> b!1244458 (= e!705420 e!705417)))

(declare-fun res!830192 () Bool)

(assert (=> b!1244458 (=> (not res!830192) (not e!705417))))

(declare-fun e!705419 () Bool)

(assert (=> b!1244458 (= res!830192 (not e!705419))))

(declare-fun res!830193 () Bool)

(assert (=> b!1244458 (=> (not res!830193) (not e!705419))))

(assert (=> b!1244458 (= res!830193 (validKeyInArray!0 (select (arr!38610 a!3892) from!3270)))))

(declare-fun b!1244459 () Bool)

(declare-fun e!705418 () Bool)

(assert (=> b!1244459 (= e!705417 e!705418)))

(declare-fun c!121820 () Bool)

(assert (=> b!1244459 (= c!121820 (validKeyInArray!0 (select (arr!38610 a!3892) from!3270)))))

(declare-fun b!1244460 () Bool)

(declare-fun call!61417 () Bool)

(assert (=> b!1244460 (= e!705418 call!61417)))

(declare-fun b!1244461 () Bool)

