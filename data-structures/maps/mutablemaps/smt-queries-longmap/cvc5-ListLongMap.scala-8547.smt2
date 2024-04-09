; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104302 () Bool)

(assert start!104302)

(declare-fun b!1245441 () Bool)

(declare-fun res!831032 () Bool)

(declare-fun e!706260 () Bool)

(assert (=> b!1245441 (=> (not res!831032) (not e!706260))))

(declare-datatypes ((array!80171 0))(
  ( (array!80172 (arr!38664 (Array (_ BitVec 32) (_ BitVec 64))) (size!39201 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80171)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27645 0))(
  ( (Nil!27642) (Cons!27641 (h!28850 (_ BitVec 64)) (t!41121 List!27645)) )
))
(declare-fun arrayNoDuplicates!0 (array!80171 (_ BitVec 32) List!27645) Bool)

(assert (=> b!1245441 (= res!831032 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27642))))

(declare-fun b!1245442 () Bool)

(declare-fun e!706259 () Bool)

(declare-fun e!706258 () Bool)

(assert (=> b!1245442 (= e!706259 e!706258)))

(declare-fun res!831030 () Bool)

(assert (=> b!1245442 (=> res!831030 e!706258)))

(declare-fun lt!562872 () List!27645)

(declare-fun contains!7463 (List!27645 (_ BitVec 64)) Bool)

(assert (=> b!1245442 (= res!831030 (contains!7463 lt!562872 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!831029 () Bool)

(assert (=> start!104302 (=> (not res!831029) (not e!706260))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104302 (= res!831029 (and (bvslt (size!39201 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39201 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39201 a!3892))))))

(assert (=> start!104302 e!706260))

(declare-fun array_inv!29440 (array!80171) Bool)

(assert (=> start!104302 (array_inv!29440 a!3892)))

(assert (=> start!104302 true))

(declare-fun b!1245443 () Bool)

(assert (=> b!1245443 (= e!706258 (contains!7463 lt!562872 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245444 () Bool)

(declare-fun res!831031 () Bool)

(assert (=> b!1245444 (=> (not res!831031) (not e!706260))))

(assert (=> b!1245444 (= res!831031 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39201 a!3892)) (not (= newFrom!287 (size!39201 a!3892)))))))

(declare-fun b!1245445 () Bool)

(declare-fun res!831028 () Bool)

(assert (=> b!1245445 (=> (not res!831028) (not e!706259))))

(declare-fun noDuplicate!2053 (List!27645) Bool)

(assert (=> b!1245445 (= res!831028 (noDuplicate!2053 lt!562872))))

(declare-fun b!1245446 () Bool)

(assert (=> b!1245446 (= e!706260 e!706259)))

(declare-fun res!831033 () Bool)

(assert (=> b!1245446 (=> (not res!831033) (not e!706259))))

(assert (=> b!1245446 (= res!831033 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1245446 (= lt!562872 (Cons!27641 (select (arr!38664 a!3892) from!3270) Nil!27642))))

(declare-fun b!1245447 () Bool)

(declare-fun res!831027 () Bool)

(assert (=> b!1245447 (=> (not res!831027) (not e!706260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245447 (= res!831027 (validKeyInArray!0 (select (arr!38664 a!3892) from!3270)))))

(assert (= (and start!104302 res!831029) b!1245441))

(assert (= (and b!1245441 res!831032) b!1245444))

(assert (= (and b!1245444 res!831031) b!1245447))

(assert (= (and b!1245447 res!831027) b!1245446))

(assert (= (and b!1245446 res!831033) b!1245445))

(assert (= (and b!1245445 res!831028) b!1245442))

(assert (= (and b!1245442 (not res!831030)) b!1245443))

(declare-fun m!1147509 () Bool)

(assert (=> b!1245443 m!1147509))

(declare-fun m!1147511 () Bool)

(assert (=> b!1245445 m!1147511))

(declare-fun m!1147513 () Bool)

(assert (=> b!1245446 m!1147513))

(declare-fun m!1147515 () Bool)

(assert (=> start!104302 m!1147515))

(assert (=> b!1245447 m!1147513))

(assert (=> b!1245447 m!1147513))

(declare-fun m!1147517 () Bool)

(assert (=> b!1245447 m!1147517))

(declare-fun m!1147519 () Bool)

(assert (=> b!1245442 m!1147519))

(declare-fun m!1147521 () Bool)

(assert (=> b!1245441 m!1147521))

(push 1)

(assert (not b!1245447))

(assert (not start!104302))

(assert (not b!1245443))

(assert (not b!1245445))

(assert (not b!1245441))

(assert (not b!1245442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137319 () Bool)

(assert (=> d!137319 (= (validKeyInArray!0 (select (arr!38664 a!3892) from!3270)) (and (not (= (select (arr!38664 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38664 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245447 d!137319))

(declare-fun d!137321 () Bool)

(declare-fun lt!562885 () Bool)

(declare-fun content!628 (List!27645) (Set (_ BitVec 64)))

(assert (=> d!137321 (= lt!562885 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!628 lt!562872)))))

(declare-fun e!706306 () Bool)

(assert (=> d!137321 (= lt!562885 e!706306)))

(declare-fun res!831095 () Bool)

(assert (=> d!137321 (=> (not res!831095) (not e!706306))))

(assert (=> d!137321 (= res!831095 (is-Cons!27641 lt!562872))))

(assert (=> d!137321 (= (contains!7463 lt!562872 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562885)))

(declare-fun b!1245512 () Bool)

(declare-fun e!706305 () Bool)

(assert (=> b!1245512 (= e!706306 e!706305)))

(declare-fun res!831094 () Bool)

(assert (=> b!1245512 (=> res!831094 e!706305)))

(assert (=> b!1245512 (= res!831094 (= (h!28850 lt!562872) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245513 () Bool)

(assert (=> b!1245513 (= e!706305 (contains!7463 (t!41121 lt!562872) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137321 res!831095) b!1245512))

(assert (= (and b!1245512 (not res!831094)) b!1245513))

(declare-fun m!1147561 () Bool)

(assert (=> d!137321 m!1147561))

(declare-fun m!1147563 () Bool)

(assert (=> d!137321 m!1147563))

(declare-fun m!1147565 () Bool)

(assert (=> b!1245513 m!1147565))

(assert (=> b!1245442 d!137321))

(declare-fun call!61487 () Bool)

(declare-fun c!121899 () Bool)

(declare-fun bm!61484 () Bool)

(assert (=> bm!61484 (= call!61487 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121899 (Cons!27641 (select (arr!38664 a!3892) from!3270) Nil!27642) Nil!27642)))))

(declare-fun d!137325 () Bool)

(declare-fun res!831112 () Bool)

(declare-fun e!706325 () Bool)

(assert (=> d!137325 (=> res!831112 e!706325)))

(assert (=> d!137325 (= res!831112 (bvsge from!3270 (size!39201 a!3892)))))

(assert (=> d!137325 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27642) e!706325)))

(declare-fun b!1245535 () Bool)

(declare-fun e!706326 () Bool)

(assert (=> b!1245535 (= e!706326 call!61487)))

(declare-fun b!1245536 () Bool)

(assert (=> b!1245536 (= e!706326 call!61487)))

(declare-fun b!1245537 () Bool)

(declare-fun e!706328 () Bool)

(assert (=> b!1245537 (= e!706328 (contains!7463 Nil!27642 (select (arr!38664 a!3892) from!3270)))))

(declare-fun b!1245538 () Bool)

(declare-fun e!706327 () Bool)

(assert (=> b!1245538 (= e!706325 e!706327)))

(declare-fun res!831111 () Bool)

(assert (=> b!1245538 (=> (not res!831111) (not e!706327))))

(assert (=> b!1245538 (= res!831111 (not e!706328))))

(declare-fun res!831113 () Bool)

(assert (=> b!1245538 (=> (not res!831113) (not e!706328))))

(assert (=> b!1245538 (= res!831113 (validKeyInArray!0 (select (arr!38664 a!3892) from!3270)))))

(declare-fun b!1245539 () Bool)

(assert (=> b!1245539 (= e!706327 e!706326)))

(assert (=> b!1245539 (= c!121899 (validKeyInArray!0 (select (arr!38664 a!3892) from!3270)))))

(assert (= (and d!137325 (not res!831112)) b!1245538))

(assert (= (and b!1245538 res!831113) b!1245537))

(assert (= (and b!1245538 res!831111) b!1245539))

(assert (= (and b!1245539 c!121899) b!1245536))

(assert (= (and b!1245539 (not c!121899)) b!1245535))

(assert (= (or b!1245536 b!1245535) bm!61484))

(assert (=> bm!61484 m!1147513))

(declare-fun m!1147575 () Bool)

(assert (=> bm!61484 m!1147575))

(assert (=> b!1245537 m!1147513))

(assert (=> b!1245537 m!1147513))

(declare-fun m!1147577 () Bool)

(assert (=> b!1245537 m!1147577))

(assert (=> b!1245538 m!1147513))

(assert (=> b!1245538 m!1147513))

(assert (=> b!1245538 m!1147517))

(assert (=> b!1245539 m!1147513))

(assert (=> b!1245539 m!1147513))

(assert (=> b!1245539 m!1147517))

(assert (=> b!1245441 d!137325))

(declare-fun d!137335 () Bool)

(declare-fun res!831130 () Bool)

(declare-fun e!706345 () Bool)

(assert (=> d!137335 (=> res!831130 e!706345)))

(assert (=> d!137335 (= res!831130 (is-Nil!27642 lt!562872))))

(assert (=> d!137335 (= (noDuplicate!2053 lt!562872) e!706345)))

(declare-fun b!1245556 () Bool)

(declare-fun e!706346 () Bool)

(assert (=> b!1245556 (= e!706345 e!706346)))

(declare-fun res!831131 () Bool)

(assert (=> b!1245556 (=> (not res!831131) (not e!706346))))

(assert (=> b!1245556 (= res!831131 (not (contains!7463 (t!41121 lt!562872) (h!28850 lt!562872))))))

(declare-fun b!1245557 () Bool)

(assert (=> b!1245557 (= e!706346 (noDuplicate!2053 (t!41121 lt!562872)))))

(assert (= (and d!137335 (not res!831130)) b!1245556))

(assert (= (and b!1245556 res!831131) b!1245557))

(declare-fun m!1147589 () Bool)

(assert (=> b!1245556 m!1147589))

(declare-fun m!1147591 () Bool)

(assert (=> b!1245557 m!1147591))

(assert (=> b!1245445 d!137335))

(declare-fun d!137339 () Bool)

(declare-fun lt!562889 () Bool)

(assert (=> d!137339 (= lt!562889 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!628 lt!562872)))))

(declare-fun e!706348 () Bool)

(assert (=> d!137339 (= lt!562889 e!706348)))

(declare-fun res!831133 () Bool)

(assert (=> d!137339 (=> (not res!831133) (not e!706348))))

(assert (=> d!137339 (= res!831133 (is-Cons!27641 lt!562872))))

(assert (=> d!137339 (= (contains!7463 lt!562872 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562889)))

(declare-fun b!1245558 () Bool)

(declare-fun e!706347 () Bool)

(assert (=> b!1245558 (= e!706348 e!706347)))

(declare-fun res!831132 () Bool)

(assert (=> b!1245558 (=> res!831132 e!706347)))

(assert (=> b!1245558 (= res!831132 (= (h!28850 lt!562872) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245559 () Bool)

(assert (=> b!1245559 (= e!706347 (contains!7463 (t!41121 lt!562872) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137339 res!831133) b!1245558))

(assert (= (and b!1245558 (not res!831132)) b!1245559))

(assert (=> d!137339 m!1147561))

(declare-fun m!1147593 () Bool)

(assert (=> d!137339 m!1147593))

(declare-fun m!1147595 () Bool)

(assert (=> b!1245559 m!1147595))

(assert (=> b!1245443 d!137339))

(declare-fun d!137341 () Bool)

(assert (=> d!137341 (= (array_inv!29440 a!3892) (bvsge (size!39201 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104302 d!137341))

(push 1)

(assert (not b!1245538))

(assert (not b!1245559))

(assert (not b!1245537))

(assert (not b!1245556))

(assert (not d!137321))

(assert (not b!1245557))

(assert (not bm!61484))

(assert (not b!1245513))

(assert (not b!1245539))

(assert (not d!137339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137357 () Bool)

(declare-fun c!121909 () Bool)

(assert (=> d!137357 (= c!121909 (is-Nil!27642 lt!562872))))

(declare-fun e!706382 () (Set (_ BitVec 64)))

(assert (=> d!137357 (= (content!628 lt!562872) e!706382)))

(declare-fun b!1245602 () Bool)

(assert (=> b!1245602 (= e!706382 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1245603 () Bool)

(assert (=> b!1245603 (= e!706382 (set.union (set.insert (h!28850 lt!562872) (as set.empty (Set (_ BitVec 64)))) (content!628 (t!41121 lt!562872))))))

(assert (= (and d!137357 c!121909) b!1245602))

(assert (= (and d!137357 (not c!121909)) b!1245603))

(declare-fun m!1147639 () Bool)

(assert (=> b!1245603 m!1147639))

(declare-fun m!1147641 () Bool)

(assert (=> b!1245603 m!1147641))

(assert (=> d!137321 d!137357))

(declare-fun d!137363 () Bool)

(declare-fun lt!562895 () Bool)

(assert (=> d!137363 (= lt!562895 (set.member (h!28850 lt!562872) (content!628 (t!41121 lt!562872))))))

(declare-fun e!706384 () Bool)

(assert (=> d!137363 (= lt!562895 e!706384)))

(declare-fun res!831159 () Bool)

(assert (=> d!137363 (=> (not res!831159) (not e!706384))))

(assert (=> d!137363 (= res!831159 (is-Cons!27641 (t!41121 lt!562872)))))

(assert (=> d!137363 (= (contains!7463 (t!41121 lt!562872) (h!28850 lt!562872)) lt!562895)))

(declare-fun b!1245604 () Bool)

(declare-fun e!706383 () Bool)

(assert (=> b!1245604 (= e!706384 e!706383)))

(declare-fun res!831158 () Bool)

(assert (=> b!1245604 (=> res!831158 e!706383)))

(assert (=> b!1245604 (= res!831158 (= (h!28850 (t!41121 lt!562872)) (h!28850 lt!562872)))))

(declare-fun b!1245605 () Bool)

(assert (=> b!1245605 (= e!706383 (contains!7463 (t!41121 (t!41121 lt!562872)) (h!28850 lt!562872)))))

(assert (= (and d!137363 res!831159) b!1245604))

(assert (= (and b!1245604 (not res!831158)) b!1245605))

(assert (=> d!137363 m!1147641))

(declare-fun m!1147643 () Bool)

(assert (=> d!137363 m!1147643))

(declare-fun m!1147645 () Bool)

(assert (=> b!1245605 m!1147645))

(assert (=> b!1245556 d!137363))

(declare-fun d!137365 () Bool)

(declare-fun lt!562896 () Bool)

(assert (=> d!137365 (= lt!562896 (set.member (select (arr!38664 a!3892) from!3270) (content!628 Nil!27642)))))

(declare-fun e!706386 () Bool)

(assert (=> d!137365 (= lt!562896 e!706386)))

(declare-fun res!831161 () Bool)

(assert (=> d!137365 (=> (not res!831161) (not e!706386))))

(assert (=> d!137365 (= res!831161 (is-Cons!27641 Nil!27642))))

(assert (=> d!137365 (= (contains!7463 Nil!27642 (select (arr!38664 a!3892) from!3270)) lt!562896)))

(declare-fun b!1245606 () Bool)

(declare-fun e!706385 () Bool)

(assert (=> b!1245606 (= e!706386 e!706385)))

(declare-fun res!831160 () Bool)

(assert (=> b!1245606 (=> res!831160 e!706385)))

(assert (=> b!1245606 (= res!831160 (= (h!28850 Nil!27642) (select (arr!38664 a!3892) from!3270)))))

(declare-fun b!1245607 () Bool)

(assert (=> b!1245607 (= e!706385 (contains!7463 (t!41121 Nil!27642) (select (arr!38664 a!3892) from!3270)))))

(assert (= (and d!137365 res!831161) b!1245606))

(assert (= (and b!1245606 (not res!831160)) b!1245607))

(declare-fun m!1147647 () Bool)

(assert (=> d!137365 m!1147647))

(assert (=> d!137365 m!1147513))

(declare-fun m!1147649 () Bool)

(assert (=> d!137365 m!1147649))

(assert (=> b!1245607 m!1147513))

(declare-fun m!1147651 () Bool)

(assert (=> b!1245607 m!1147651))

(assert (=> b!1245537 d!137365))

(declare-fun d!137367 () Bool)

(declare-fun lt!562897 () Bool)

(assert (=> d!137367 (= lt!562897 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!628 (t!41121 lt!562872))))))

(declare-fun e!706388 () Bool)

(assert (=> d!137367 (= lt!562897 e!706388)))

(declare-fun res!831163 () Bool)

(assert (=> d!137367 (=> (not res!831163) (not e!706388))))

(assert (=> d!137367 (= res!831163 (is-Cons!27641 (t!41121 lt!562872)))))

(assert (=> d!137367 (= (contains!7463 (t!41121 lt!562872) #b1000000000000000000000000000000000000000000000000000000000000000) lt!562897)))

(declare-fun b!1245608 () Bool)

(declare-fun e!706387 () Bool)

(assert (=> b!1245608 (= e!706388 e!706387)))

(declare-fun res!831162 () Bool)

(assert (=> b!1245608 (=> res!831162 e!706387)))

(assert (=> b!1245608 (= res!831162 (= (h!28850 (t!41121 lt!562872)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245609 () Bool)

(assert (=> b!1245609 (= e!706387 (contains!7463 (t!41121 (t!41121 lt!562872)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137367 res!831163) b!1245608))

(assert (= (and b!1245608 (not res!831162)) b!1245609))

(assert (=> d!137367 m!1147641))

(declare-fun m!1147653 () Bool)

(assert (=> d!137367 m!1147653))

(declare-fun m!1147655 () Bool)

(assert (=> b!1245609 m!1147655))

(assert (=> b!1245559 d!137367))

(assert (=> b!1245539 d!137319))

(declare-fun d!137369 () Bool)

(declare-fun res!831164 () Bool)

(declare-fun e!706389 () Bool)

(assert (=> d!137369 (=> res!831164 e!706389)))

(assert (=> d!137369 (= res!831164 (is-Nil!27642 (t!41121 lt!562872)))))

(assert (=> d!137369 (= (noDuplicate!2053 (t!41121 lt!562872)) e!706389)))

(declare-fun b!1245610 () Bool)

(declare-fun e!706390 () Bool)

(assert (=> b!1245610 (= e!706389 e!706390)))

(declare-fun res!831165 () Bool)

(assert (=> b!1245610 (=> (not res!831165) (not e!706390))))

(assert (=> b!1245610 (= res!831165 (not (contains!7463 (t!41121 (t!41121 lt!562872)) (h!28850 (t!41121 lt!562872)))))))

(declare-fun b!1245611 () Bool)

(assert (=> b!1245611 (= e!706390 (noDuplicate!2053 (t!41121 (t!41121 lt!562872))))))

(assert (= (and d!137369 (not res!831164)) b!1245610))

(assert (= (and b!1245610 res!831165) b!1245611))

(declare-fun m!1147657 () Bool)

(assert (=> b!1245610 m!1147657))

(declare-fun m!1147659 () Bool)

(assert (=> b!1245611 m!1147659))

(assert (=> b!1245557 d!137369))

(declare-fun d!137371 () Bool)

(declare-fun lt!562898 () Bool)

(assert (=> d!137371 (= lt!562898 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!628 (t!41121 lt!562872))))))

(declare-fun e!706392 () Bool)

(assert (=> d!137371 (= lt!562898 e!706392)))

(declare-fun res!831167 () Bool)

(assert (=> d!137371 (=> (not res!831167) (not e!706392))))

(assert (=> d!137371 (= res!831167 (is-Cons!27641 (t!41121 lt!562872)))))

(assert (=> d!137371 (= (contains!7463 (t!41121 lt!562872) #b0000000000000000000000000000000000000000000000000000000000000000) lt!562898)))

(declare-fun b!1245612 () Bool)

(declare-fun e!706391 () Bool)

(assert (=> b!1245612 (= e!706392 e!706391)))

(declare-fun res!831166 () Bool)

(assert (=> b!1245612 (=> res!831166 e!706391)))

(assert (=> b!1245612 (= res!831166 (= (h!28850 (t!41121 lt!562872)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245613 () Bool)

(assert (=> b!1245613 (= e!706391 (contains!7463 (t!41121 (t!41121 lt!562872)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137371 res!831167) b!1245612))

(assert (= (and b!1245612 (not res!831166)) b!1245613))

(assert (=> d!137371 m!1147641))

(declare-fun m!1147661 () Bool)

(assert (=> d!137371 m!1147661))

(declare-fun m!1147663 () Bool)

(assert (=> b!1245613 m!1147663))

(assert (=> b!1245513 d!137371))

(assert (=> b!1245538 d!137319))

(declare-fun bm!61489 () Bool)

(declare-fun c!121910 () Bool)

(declare-fun call!61492 () Bool)

(assert (=> bm!61489 (= call!61492 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!121910 (Cons!27641 (select (arr!38664 a!3892) (bvadd from!3270 #b00000000000000000000000000000001)) (ite c!121899 (Cons!27641 (select (arr!38664 a!3892) from!3270) Nil!27642) Nil!27642)) (ite c!121899 (Cons!27641 (select (arr!38664 a!3892) from!3270) Nil!27642) Nil!27642))))))

(declare-fun d!137373 () Bool)

(declare-fun res!831169 () Bool)

(declare-fun e!706393 () Bool)

(assert (=> d!137373 (=> res!831169 e!706393)))

(assert (=> d!137373 (= res!831169 (bvsge (bvadd from!3270 #b00000000000000000000000000000001) (size!39201 a!3892)))))

(assert (=> d!137373 (= (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121899 (Cons!27641 (select (arr!38664 a!3892) from!3270) Nil!27642) Nil!27642)) e!706393)))

(declare-fun b!1245614 () Bool)

(declare-fun e!706394 () Bool)

(assert (=> b!1245614 (= e!706394 call!61492)))

(declare-fun b!1245615 () Bool)

(assert (=> b!1245615 (= e!706394 call!61492)))

(declare-fun e!706396 () Bool)

(declare-fun b!1245616 () Bool)

(assert (=> b!1245616 (= e!706396 (contains!7463 (ite c!121899 (Cons!27641 (select (arr!38664 a!3892) from!3270) Nil!27642) Nil!27642) (select (arr!38664 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun b!1245617 () Bool)

(declare-fun e!706395 () Bool)

(assert (=> b!1245617 (= e!706393 e!706395)))

(declare-fun res!831168 () Bool)

(assert (=> b!1245617 (=> (not res!831168) (not e!706395))))

(assert (=> b!1245617 (= res!831168 (not e!706396))))

(declare-fun res!831170 () Bool)

(assert (=> b!1245617 (=> (not res!831170) (not e!706396))))

(assert (=> b!1245617 (= res!831170 (validKeyInArray!0 (select (arr!38664 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun b!1245618 () Bool)

(assert (=> b!1245618 (= e!706395 e!706394)))

(assert (=> b!1245618 (= c!121910 (validKeyInArray!0 (select (arr!38664 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(assert (= (and d!137373 (not res!831169)) b!1245617))

(assert (= (and b!1245617 res!831170) b!1245616))

(assert (= (and b!1245617 res!831168) b!1245618))

(assert (= (and b!1245618 c!121910) b!1245615))

(assert (= (and b!1245618 (not c!121910)) b!1245614))

(assert (= (or b!1245615 b!1245614) bm!61489))

(declare-fun m!1147665 () Bool)

(assert (=> bm!61489 m!1147665))

(declare-fun m!1147667 () Bool)

(assert (=> bm!61489 m!1147667))

(assert (=> b!1245616 m!1147665))

(assert (=> b!1245616 m!1147665))

(declare-fun m!1147669 () Bool)

(assert (=> b!1245616 m!1147669))

(assert (=> b!1245617 m!1147665))

(assert (=> b!1245617 m!1147665))

(declare-fun m!1147671 () Bool)

(assert (=> b!1245617 m!1147671))

(assert (=> b!1245618 m!1147665))

(assert (=> b!1245618 m!1147665))

(assert (=> b!1245618 m!1147671))

(assert (=> bm!61484 d!137373))

(assert (=> d!137339 d!137357))

(push 1)

