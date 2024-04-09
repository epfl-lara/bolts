; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104306 () Bool)

(assert start!104306)

(declare-fun b!1245483 () Bool)

(declare-fun e!706282 () Bool)

(declare-fun e!706283 () Bool)

(assert (=> b!1245483 (= e!706282 e!706283)))

(declare-fun res!831069 () Bool)

(assert (=> b!1245483 (=> res!831069 e!706283)))

(declare-datatypes ((List!27647 0))(
  ( (Nil!27644) (Cons!27643 (h!28852 (_ BitVec 64)) (t!41123 List!27647)) )
))
(declare-fun lt!562878 () List!27647)

(declare-fun contains!7465 (List!27647 (_ BitVec 64)) Bool)

(assert (=> b!1245483 (= res!831069 (contains!7465 lt!562878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245485 () Bool)

(declare-fun res!831070 () Bool)

(declare-fun e!706281 () Bool)

(assert (=> b!1245485 (=> (not res!831070) (not e!706281))))

(declare-datatypes ((array!80175 0))(
  ( (array!80176 (arr!38666 (Array (_ BitVec 32) (_ BitVec 64))) (size!39203 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80175)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245485 (= res!831070 (validKeyInArray!0 (select (arr!38666 a!3892) from!3270)))))

(declare-fun b!1245486 () Bool)

(declare-fun res!831074 () Bool)

(assert (=> b!1245486 (=> (not res!831074) (not e!706281))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1245486 (= res!831074 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39203 a!3892)) (not (= newFrom!287 (size!39203 a!3892)))))))

(declare-fun b!1245487 () Bool)

(assert (=> b!1245487 (= e!706283 (contains!7465 lt!562878 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245488 () Bool)

(assert (=> b!1245488 (= e!706281 e!706282)))

(declare-fun res!831071 () Bool)

(assert (=> b!1245488 (=> (not res!831071) (not e!706282))))

(assert (=> b!1245488 (= res!831071 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1245488 (= lt!562878 (Cons!27643 (select (arr!38666 a!3892) from!3270) Nil!27644))))

(declare-fun b!1245489 () Bool)

(declare-fun res!831073 () Bool)

(assert (=> b!1245489 (=> (not res!831073) (not e!706281))))

(declare-fun arrayNoDuplicates!0 (array!80175 (_ BitVec 32) List!27647) Bool)

(assert (=> b!1245489 (= res!831073 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27644))))

(declare-fun b!1245484 () Bool)

(declare-fun res!831075 () Bool)

(assert (=> b!1245484 (=> (not res!831075) (not e!706282))))

(declare-fun noDuplicate!2055 (List!27647) Bool)

(assert (=> b!1245484 (= res!831075 (noDuplicate!2055 lt!562878))))

(declare-fun res!831072 () Bool)

(assert (=> start!104306 (=> (not res!831072) (not e!706281))))

(assert (=> start!104306 (= res!831072 (and (bvslt (size!39203 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39203 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39203 a!3892))))))

(assert (=> start!104306 e!706281))

(declare-fun array_inv!29442 (array!80175) Bool)

(assert (=> start!104306 (array_inv!29442 a!3892)))

(assert (=> start!104306 true))

(assert (= (and start!104306 res!831072) b!1245489))

(assert (= (and b!1245489 res!831073) b!1245486))

(assert (= (and b!1245486 res!831074) b!1245485))

(assert (= (and b!1245485 res!831070) b!1245488))

(assert (= (and b!1245488 res!831071) b!1245484))

(assert (= (and b!1245484 res!831075) b!1245483))

(assert (= (and b!1245483 (not res!831069)) b!1245487))

(declare-fun m!1147537 () Bool)

(assert (=> b!1245487 m!1147537))

(declare-fun m!1147539 () Bool)

(assert (=> b!1245484 m!1147539))

(declare-fun m!1147541 () Bool)

(assert (=> b!1245489 m!1147541))

(declare-fun m!1147543 () Bool)

(assert (=> start!104306 m!1147543))

(declare-fun m!1147545 () Bool)

(assert (=> b!1245483 m!1147545))

(declare-fun m!1147547 () Bool)

(assert (=> b!1245488 m!1147547))

(assert (=> b!1245485 m!1147547))

(assert (=> b!1245485 m!1147547))

(declare-fun m!1147549 () Bool)

(assert (=> b!1245485 m!1147549))

(push 1)

(assert (not b!1245485))

(assert (not b!1245483))

(assert (not start!104306))

(assert (not b!1245489))

(assert (not b!1245484))

(assert (not b!1245487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137323 () Bool)

(declare-fun res!831100 () Bool)

(declare-fun e!706311 () Bool)

(assert (=> d!137323 (=> res!831100 e!706311)))

(assert (=> d!137323 (= res!831100 (is-Nil!27644 lt!562878))))

(assert (=> d!137323 (= (noDuplicate!2055 lt!562878) e!706311)))

(declare-fun b!1245518 () Bool)

(declare-fun e!706312 () Bool)

(assert (=> b!1245518 (= e!706311 e!706312)))

(declare-fun res!831101 () Bool)

(assert (=> b!1245518 (=> (not res!831101) (not e!706312))))

(assert (=> b!1245518 (= res!831101 (not (contains!7465 (t!41123 lt!562878) (h!28852 lt!562878))))))

(declare-fun b!1245519 () Bool)

(assert (=> b!1245519 (= e!706312 (noDuplicate!2055 (t!41123 lt!562878)))))

(assert (= (and d!137323 (not res!831100)) b!1245518))

(assert (= (and b!1245518 res!831101) b!1245519))

(declare-fun m!1147567 () Bool)

(assert (=> b!1245518 m!1147567))

(declare-fun m!1147569 () Bool)

(assert (=> b!1245519 m!1147569))

(assert (=> b!1245484 d!137323))

(declare-fun d!137327 () Bool)

(assert (=> d!137327 (= (validKeyInArray!0 (select (arr!38666 a!3892) from!3270)) (and (not (= (select (arr!38666 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38666 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245485 d!137327))

(declare-fun d!137329 () Bool)

(declare-fun lt!562888 () Bool)

(declare-fun content!629 (List!27647) (Set (_ BitVec 64)))

(assert (=> d!137329 (= lt!562888 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!629 lt!562878)))))

(declare-fun e!706342 () Bool)

(assert (=> d!137329 (= lt!562888 e!706342)))

(declare-fun res!831127 () Bool)

(assert (=> d!137329 (=> (not res!831127) (not e!706342))))

(assert (=> d!137329 (= res!831127 (is-Cons!27643 lt!562878))))

(assert (=> d!137329 (= (contains!7465 lt!562878 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562888)))

(declare-fun b!1245552 () Bool)

(declare-fun e!706341 () Bool)

(assert (=> b!1245552 (= e!706342 e!706341)))

(declare-fun res!831126 () Bool)

(assert (=> b!1245552 (=> res!831126 e!706341)))

(assert (=> b!1245552 (= res!831126 (= (h!28852 lt!562878) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245553 () Bool)

(assert (=> b!1245553 (= e!706341 (contains!7465 (t!41123 lt!562878) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137329 res!831127) b!1245552))

(assert (= (and b!1245552 (not res!831126)) b!1245553))

(declare-fun m!1147579 () Bool)

(assert (=> d!137329 m!1147579))

(declare-fun m!1147581 () Bool)

(assert (=> d!137329 m!1147581))

(declare-fun m!1147583 () Bool)

(assert (=> b!1245553 m!1147583))

(assert (=> b!1245483 d!137329))

(declare-fun b!1245570 () Bool)

(declare-fun e!706358 () Bool)

(assert (=> b!1245570 (= e!706358 (contains!7465 Nil!27644 (select (arr!38666 a!3892) from!3270)))))

(declare-fun b!1245571 () Bool)

(declare-fun e!706360 () Bool)

(declare-fun call!61490 () Bool)

(assert (=> b!1245571 (= e!706360 call!61490)))

(declare-fun b!1245572 () Bool)

(declare-fun e!706357 () Bool)

(declare-fun e!706359 () Bool)

(assert (=> b!1245572 (= e!706357 e!706359)))

(declare-fun res!831142 () Bool)

(assert (=> b!1245572 (=> (not res!831142) (not e!706359))))

(assert (=> b!1245572 (= res!831142 (not e!706358))))

(declare-fun res!831141 () Bool)

(assert (=> b!1245572 (=> (not res!831141) (not e!706358))))

(assert (=> b!1245572 (= res!831141 (validKeyInArray!0 (select (arr!38666 a!3892) from!3270)))))

(declare-fun b!1245573 () Bool)

(assert (=> b!1245573 (= e!706359 e!706360)))

(declare-fun c!121902 () Bool)

(assert (=> b!1245573 (= c!121902 (validKeyInArray!0 (select (arr!38666 a!3892) from!3270)))))

(declare-fun b!1245574 () Bool)

(assert (=> b!1245574 (= e!706360 call!61490)))

(declare-fun d!137337 () Bool)

(declare-fun res!831140 () Bool)

(assert (=> d!137337 (=> res!831140 e!706357)))

(assert (=> d!137337 (= res!831140 (bvsge from!3270 (size!39203 a!3892)))))

(assert (=> d!137337 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27644) e!706357)))

(declare-fun bm!61487 () Bool)

(assert (=> bm!61487 (= call!61490 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121902 (Cons!27643 (select (arr!38666 a!3892) from!3270) Nil!27644) Nil!27644)))))

(assert (= (and d!137337 (not res!831140)) b!1245572))

(assert (= (and b!1245572 res!831141) b!1245570))

(assert (= (and b!1245572 res!831142) b!1245573))

(assert (= (and b!1245573 c!121902) b!1245571))

(assert (= (and b!1245573 (not c!121902)) b!1245574))

(assert (= (or b!1245571 b!1245574) bm!61487))

(assert (=> b!1245570 m!1147547))

(assert (=> b!1245570 m!1147547))

(declare-fun m!1147597 () Bool)

(assert (=> b!1245570 m!1147597))

(assert (=> b!1245572 m!1147547))

(assert (=> b!1245572 m!1147547))

(assert (=> b!1245572 m!1147549))

(assert (=> b!1245573 m!1147547))

(assert (=> b!1245573 m!1147547))

(assert (=> b!1245573 m!1147549))

(assert (=> bm!61487 m!1147547))

(declare-fun m!1147599 () Bool)

(assert (=> bm!61487 m!1147599))

(assert (=> b!1245489 d!137337))

(declare-fun d!137343 () Bool)

(declare-fun lt!562890 () Bool)

(assert (=> d!137343 (= lt!562890 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!629 lt!562878)))))

(declare-fun e!706362 () Bool)

(assert (=> d!137343 (= lt!562890 e!706362)))

(declare-fun res!831144 () Bool)

(assert (=> d!137343 (=> (not res!831144) (not e!706362))))

(assert (=> d!137343 (= res!831144 (is-Cons!27643 lt!562878))))

(assert (=> d!137343 (= (contains!7465 lt!562878 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562890)))

(declare-fun b!1245575 () Bool)

(declare-fun e!706361 () Bool)

(assert (=> b!1245575 (= e!706362 e!706361)))

(declare-fun res!831143 () Bool)

(assert (=> b!1245575 (=> res!831143 e!706361)))

(assert (=> b!1245575 (= res!831143 (= (h!28852 lt!562878) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245576 () Bool)

(assert (=> b!1245576 (= e!706361 (contains!7465 (t!41123 lt!562878) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137343 res!831144) b!1245575))

(assert (= (and b!1245575 (not res!831143)) b!1245576))

(assert (=> d!137343 m!1147579))

(declare-fun m!1147601 () Bool)

(assert (=> d!137343 m!1147601))

(declare-fun m!1147603 () Bool)

(assert (=> b!1245576 m!1147603))

(assert (=> b!1245487 d!137343))

(declare-fun d!137345 () Bool)

(assert (=> d!137345 (= (array_inv!29442 a!3892) (bvsge (size!39203 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104306 d!137345))

(push 1)

(assert (not b!1245518))

(assert (not d!137329))

(assert (not b!1245553))

(assert (not b!1245572))

(assert (not b!1245519))

(assert (not b!1245576))

(assert (not d!137343))

(assert (not b!1245570))

(assert (not b!1245573))

(assert (not bm!61487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

