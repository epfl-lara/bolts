; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104304 () Bool)

(assert start!104304)

(declare-fun b!1245462 () Bool)

(declare-fun e!706270 () Bool)

(declare-fun e!706272 () Bool)

(assert (=> b!1245462 (= e!706270 e!706272)))

(declare-fun res!831053 () Bool)

(assert (=> b!1245462 (=> (not res!831053) (not e!706272))))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1245462 (= res!831053 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27646 0))(
  ( (Nil!27643) (Cons!27642 (h!28851 (_ BitVec 64)) (t!41122 List!27646)) )
))
(declare-fun lt!562875 () List!27646)

(declare-datatypes ((array!80173 0))(
  ( (array!80174 (arr!38665 (Array (_ BitVec 32) (_ BitVec 64))) (size!39202 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80173)

(assert (=> b!1245462 (= lt!562875 (Cons!27642 (select (arr!38665 a!3892) from!3270) Nil!27643))))

(declare-fun b!1245463 () Bool)

(declare-fun e!706269 () Bool)

(assert (=> b!1245463 (= e!706272 e!706269)))

(declare-fun res!831052 () Bool)

(assert (=> b!1245463 (=> res!831052 e!706269)))

(declare-fun contains!7464 (List!27646 (_ BitVec 64)) Bool)

(assert (=> b!1245463 (= res!831052 (contains!7464 lt!562875 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245464 () Bool)

(declare-fun res!831049 () Bool)

(assert (=> b!1245464 (=> (not res!831049) (not e!706270))))

(declare-fun arrayNoDuplicates!0 (array!80173 (_ BitVec 32) List!27646) Bool)

(assert (=> b!1245464 (= res!831049 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27643))))

(declare-fun res!831054 () Bool)

(assert (=> start!104304 (=> (not res!831054) (not e!706270))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104304 (= res!831054 (and (bvslt (size!39202 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39202 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39202 a!3892))))))

(assert (=> start!104304 e!706270))

(declare-fun array_inv!29441 (array!80173) Bool)

(assert (=> start!104304 (array_inv!29441 a!3892)))

(assert (=> start!104304 true))

(declare-fun b!1245465 () Bool)

(declare-fun res!831050 () Bool)

(assert (=> b!1245465 (=> (not res!831050) (not e!706272))))

(declare-fun noDuplicate!2054 (List!27646) Bool)

(assert (=> b!1245465 (= res!831050 (noDuplicate!2054 lt!562875))))

(declare-fun b!1245466 () Bool)

(declare-fun res!831048 () Bool)

(assert (=> b!1245466 (=> (not res!831048) (not e!706270))))

(assert (=> b!1245466 (= res!831048 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39202 a!3892)) (not (= newFrom!287 (size!39202 a!3892)))))))

(declare-fun b!1245467 () Bool)

(declare-fun res!831051 () Bool)

(assert (=> b!1245467 (=> (not res!831051) (not e!706270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245467 (= res!831051 (validKeyInArray!0 (select (arr!38665 a!3892) from!3270)))))

(declare-fun b!1245468 () Bool)

(assert (=> b!1245468 (= e!706269 (contains!7464 lt!562875 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104304 res!831054) b!1245464))

(assert (= (and b!1245464 res!831049) b!1245466))

(assert (= (and b!1245466 res!831048) b!1245467))

(assert (= (and b!1245467 res!831051) b!1245462))

(assert (= (and b!1245462 res!831053) b!1245465))

(assert (= (and b!1245465 res!831050) b!1245463))

(assert (= (and b!1245463 (not res!831052)) b!1245468))

(declare-fun m!1147523 () Bool)

(assert (=> start!104304 m!1147523))

(declare-fun m!1147525 () Bool)

(assert (=> b!1245467 m!1147525))

(assert (=> b!1245467 m!1147525))

(declare-fun m!1147527 () Bool)

(assert (=> b!1245467 m!1147527))

(declare-fun m!1147529 () Bool)

(assert (=> b!1245464 m!1147529))

(declare-fun m!1147531 () Bool)

(assert (=> b!1245468 m!1147531))

(declare-fun m!1147533 () Bool)

(assert (=> b!1245463 m!1147533))

(declare-fun m!1147535 () Bool)

(assert (=> b!1245465 m!1147535))

(assert (=> b!1245462 m!1147525))

(check-sat (not b!1245468) (not b!1245467) (not b!1245464) (not b!1245463) (not b!1245465) (not start!104304))
(check-sat)
(get-model)

(declare-fun d!137311 () Bool)

(declare-fun lt!562881 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!627 (List!27646) (InoxSet (_ BitVec 64)))

(assert (=> d!137311 (= lt!562881 (select (content!627 lt!562875) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706289 () Bool)

(assert (=> d!137311 (= lt!562881 e!706289)))

(declare-fun res!831080 () Bool)

(assert (=> d!137311 (=> (not res!831080) (not e!706289))))

(get-info :version)

(assert (=> d!137311 (= res!831080 ((_ is Cons!27642) lt!562875))))

(assert (=> d!137311 (= (contains!7464 lt!562875 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562881)))

(declare-fun b!1245494 () Bool)

(declare-fun e!706290 () Bool)

(assert (=> b!1245494 (= e!706289 e!706290)))

(declare-fun res!831081 () Bool)

(assert (=> b!1245494 (=> res!831081 e!706290)))

(assert (=> b!1245494 (= res!831081 (= (h!28851 lt!562875) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245495 () Bool)

(assert (=> b!1245495 (= e!706290 (contains!7464 (t!41122 lt!562875) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137311 res!831080) b!1245494))

(assert (= (and b!1245494 (not res!831081)) b!1245495))

(declare-fun m!1147551 () Bool)

(assert (=> d!137311 m!1147551))

(declare-fun m!1147553 () Bool)

(assert (=> d!137311 m!1147553))

(declare-fun m!1147555 () Bool)

(assert (=> b!1245495 m!1147555))

(assert (=> b!1245468 d!137311))

(declare-fun d!137313 () Bool)

(declare-fun lt!562882 () Bool)

(assert (=> d!137313 (= lt!562882 (select (content!627 lt!562875) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706291 () Bool)

(assert (=> d!137313 (= lt!562882 e!706291)))

(declare-fun res!831082 () Bool)

(assert (=> d!137313 (=> (not res!831082) (not e!706291))))

(assert (=> d!137313 (= res!831082 ((_ is Cons!27642) lt!562875))))

(assert (=> d!137313 (= (contains!7464 lt!562875 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562882)))

(declare-fun b!1245496 () Bool)

(declare-fun e!706292 () Bool)

(assert (=> b!1245496 (= e!706291 e!706292)))

(declare-fun res!831083 () Bool)

(assert (=> b!1245496 (=> res!831083 e!706292)))

(assert (=> b!1245496 (= res!831083 (= (h!28851 lt!562875) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245497 () Bool)

(assert (=> b!1245497 (= e!706292 (contains!7464 (t!41122 lt!562875) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137313 res!831082) b!1245496))

(assert (= (and b!1245496 (not res!831083)) b!1245497))

(assert (=> d!137313 m!1147551))

(declare-fun m!1147557 () Bool)

(assert (=> d!137313 m!1147557))

(declare-fun m!1147559 () Bool)

(assert (=> b!1245497 m!1147559))

(assert (=> b!1245463 d!137313))

(declare-fun d!137315 () Bool)

(assert (=> d!137315 (= (validKeyInArray!0 (select (arr!38665 a!3892) from!3270)) (and (not (= (select (arr!38665 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38665 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245467 d!137315))

(declare-fun bm!61481 () Bool)

(declare-fun call!61484 () Bool)

(declare-fun c!121896 () Bool)

(assert (=> bm!61481 (= call!61484 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121896 (Cons!27642 (select (arr!38665 a!3892) from!3270) Nil!27643) Nil!27643)))))

(declare-fun b!1245522 () Bool)

(declare-fun e!706317 () Bool)

(declare-fun e!706318 () Bool)

(assert (=> b!1245522 (= e!706317 e!706318)))

(assert (=> b!1245522 (= c!121896 (validKeyInArray!0 (select (arr!38665 a!3892) from!3270)))))

(declare-fun b!1245523 () Bool)

(declare-fun e!706316 () Bool)

(assert (=> b!1245523 (= e!706316 e!706317)))

(declare-fun res!831106 () Bool)

(assert (=> b!1245523 (=> (not res!831106) (not e!706317))))

(declare-fun e!706315 () Bool)

(assert (=> b!1245523 (= res!831106 (not e!706315))))

(declare-fun res!831104 () Bool)

(assert (=> b!1245523 (=> (not res!831104) (not e!706315))))

(assert (=> b!1245523 (= res!831104 (validKeyInArray!0 (select (arr!38665 a!3892) from!3270)))))

(declare-fun d!137317 () Bool)

(declare-fun res!831105 () Bool)

(assert (=> d!137317 (=> res!831105 e!706316)))

(assert (=> d!137317 (= res!831105 (bvsge from!3270 (size!39202 a!3892)))))

(assert (=> d!137317 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27643) e!706316)))

(declare-fun b!1245524 () Bool)

(assert (=> b!1245524 (= e!706318 call!61484)))

(declare-fun b!1245525 () Bool)

(assert (=> b!1245525 (= e!706318 call!61484)))

(declare-fun b!1245526 () Bool)

(assert (=> b!1245526 (= e!706315 (contains!7464 Nil!27643 (select (arr!38665 a!3892) from!3270)))))

(assert (= (and d!137317 (not res!831105)) b!1245523))

(assert (= (and b!1245523 res!831104) b!1245526))

(assert (= (and b!1245523 res!831106) b!1245522))

(assert (= (and b!1245522 c!121896) b!1245524))

(assert (= (and b!1245522 (not c!121896)) b!1245525))

(assert (= (or b!1245524 b!1245525) bm!61481))

(assert (=> bm!61481 m!1147525))

(declare-fun m!1147571 () Bool)

(assert (=> bm!61481 m!1147571))

(assert (=> b!1245522 m!1147525))

(assert (=> b!1245522 m!1147525))

(assert (=> b!1245522 m!1147527))

(assert (=> b!1245523 m!1147525))

(assert (=> b!1245523 m!1147525))

(assert (=> b!1245523 m!1147527))

(assert (=> b!1245526 m!1147525))

(assert (=> b!1245526 m!1147525))

(declare-fun m!1147573 () Bool)

(assert (=> b!1245526 m!1147573))

(assert (=> b!1245464 d!137317))

(declare-fun d!137331 () Bool)

(assert (=> d!137331 (= (array_inv!29441 a!3892) (bvsge (size!39202 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104304 d!137331))

(declare-fun d!137333 () Bool)

(declare-fun res!831128 () Bool)

(declare-fun e!706343 () Bool)

(assert (=> d!137333 (=> res!831128 e!706343)))

(assert (=> d!137333 (= res!831128 ((_ is Nil!27643) lt!562875))))

(assert (=> d!137333 (= (noDuplicate!2054 lt!562875) e!706343)))

(declare-fun b!1245554 () Bool)

(declare-fun e!706344 () Bool)

(assert (=> b!1245554 (= e!706343 e!706344)))

(declare-fun res!831129 () Bool)

(assert (=> b!1245554 (=> (not res!831129) (not e!706344))))

(assert (=> b!1245554 (= res!831129 (not (contains!7464 (t!41122 lt!562875) (h!28851 lt!562875))))))

(declare-fun b!1245555 () Bool)

(assert (=> b!1245555 (= e!706344 (noDuplicate!2054 (t!41122 lt!562875)))))

(assert (= (and d!137333 (not res!831128)) b!1245554))

(assert (= (and b!1245554 res!831129) b!1245555))

(declare-fun m!1147585 () Bool)

(assert (=> b!1245554 m!1147585))

(declare-fun m!1147587 () Bool)

(assert (=> b!1245555 m!1147587))

(assert (=> b!1245465 d!137333))

(check-sat (not b!1245554) (not d!137311) (not bm!61481) (not b!1245523) (not d!137313) (not b!1245497) (not b!1245555) (not b!1245495) (not b!1245526) (not b!1245522))
(check-sat)
(get-model)

(assert (=> b!1245522 d!137315))

(declare-fun d!137347 () Bool)

(declare-fun lt!562891 () Bool)

(assert (=> d!137347 (= lt!562891 (select (content!627 (t!41122 lt!562875)) (h!28851 lt!562875)))))

(declare-fun e!706363 () Bool)

(assert (=> d!137347 (= lt!562891 e!706363)))

(declare-fun res!831145 () Bool)

(assert (=> d!137347 (=> (not res!831145) (not e!706363))))

(assert (=> d!137347 (= res!831145 ((_ is Cons!27642) (t!41122 lt!562875)))))

(assert (=> d!137347 (= (contains!7464 (t!41122 lt!562875) (h!28851 lt!562875)) lt!562891)))

(declare-fun b!1245577 () Bool)

(declare-fun e!706364 () Bool)

(assert (=> b!1245577 (= e!706363 e!706364)))

(declare-fun res!831146 () Bool)

(assert (=> b!1245577 (=> res!831146 e!706364)))

(assert (=> b!1245577 (= res!831146 (= (h!28851 (t!41122 lt!562875)) (h!28851 lt!562875)))))

(declare-fun b!1245578 () Bool)

(assert (=> b!1245578 (= e!706364 (contains!7464 (t!41122 (t!41122 lt!562875)) (h!28851 lt!562875)))))

(assert (= (and d!137347 res!831145) b!1245577))

(assert (= (and b!1245577 (not res!831146)) b!1245578))

(declare-fun m!1147605 () Bool)

(assert (=> d!137347 m!1147605))

(declare-fun m!1147607 () Bool)

(assert (=> d!137347 m!1147607))

(declare-fun m!1147609 () Bool)

(assert (=> b!1245578 m!1147609))

(assert (=> b!1245554 d!137347))

(declare-fun d!137349 () Bool)

(declare-fun c!121905 () Bool)

(assert (=> d!137349 (= c!121905 ((_ is Nil!27643) lt!562875))))

(declare-fun e!706367 () (InoxSet (_ BitVec 64)))

(assert (=> d!137349 (= (content!627 lt!562875) e!706367)))

(declare-fun b!1245583 () Bool)

(assert (=> b!1245583 (= e!706367 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1245584 () Bool)

(assert (=> b!1245584 (= e!706367 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28851 lt!562875) true) (content!627 (t!41122 lt!562875))))))

(assert (= (and d!137349 c!121905) b!1245583))

(assert (= (and d!137349 (not c!121905)) b!1245584))

(declare-fun m!1147611 () Bool)

(assert (=> b!1245584 m!1147611))

(assert (=> b!1245584 m!1147605))

(assert (=> d!137311 d!137349))

(declare-fun c!121906 () Bool)

(declare-fun bm!61488 () Bool)

(declare-fun call!61491 () Bool)

(assert (=> bm!61488 (= call!61491 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!121906 (Cons!27642 (select (arr!38665 a!3892) (bvadd from!3270 #b00000000000000000000000000000001)) (ite c!121896 (Cons!27642 (select (arr!38665 a!3892) from!3270) Nil!27643) Nil!27643)) (ite c!121896 (Cons!27642 (select (arr!38665 a!3892) from!3270) Nil!27643) Nil!27643))))))

(declare-fun b!1245585 () Bool)

(declare-fun e!706370 () Bool)

(declare-fun e!706371 () Bool)

(assert (=> b!1245585 (= e!706370 e!706371)))

(assert (=> b!1245585 (= c!121906 (validKeyInArray!0 (select (arr!38665 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun b!1245586 () Bool)

(declare-fun e!706369 () Bool)

(assert (=> b!1245586 (= e!706369 e!706370)))

(declare-fun res!831149 () Bool)

(assert (=> b!1245586 (=> (not res!831149) (not e!706370))))

(declare-fun e!706368 () Bool)

(assert (=> b!1245586 (= res!831149 (not e!706368))))

(declare-fun res!831147 () Bool)

(assert (=> b!1245586 (=> (not res!831147) (not e!706368))))

(assert (=> b!1245586 (= res!831147 (validKeyInArray!0 (select (arr!38665 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun d!137351 () Bool)

(declare-fun res!831148 () Bool)

(assert (=> d!137351 (=> res!831148 e!706369)))

(assert (=> d!137351 (= res!831148 (bvsge (bvadd from!3270 #b00000000000000000000000000000001) (size!39202 a!3892)))))

(assert (=> d!137351 (= (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121896 (Cons!27642 (select (arr!38665 a!3892) from!3270) Nil!27643) Nil!27643)) e!706369)))

(declare-fun b!1245587 () Bool)

(assert (=> b!1245587 (= e!706371 call!61491)))

(declare-fun b!1245588 () Bool)

(assert (=> b!1245588 (= e!706371 call!61491)))

(declare-fun b!1245589 () Bool)

(assert (=> b!1245589 (= e!706368 (contains!7464 (ite c!121896 (Cons!27642 (select (arr!38665 a!3892) from!3270) Nil!27643) Nil!27643) (select (arr!38665 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(assert (= (and d!137351 (not res!831148)) b!1245586))

(assert (= (and b!1245586 res!831147) b!1245589))

(assert (= (and b!1245586 res!831149) b!1245585))

(assert (= (and b!1245585 c!121906) b!1245587))

(assert (= (and b!1245585 (not c!121906)) b!1245588))

(assert (= (or b!1245587 b!1245588) bm!61488))

(declare-fun m!1147613 () Bool)

(assert (=> bm!61488 m!1147613))

(declare-fun m!1147615 () Bool)

(assert (=> bm!61488 m!1147615))

(assert (=> b!1245585 m!1147613))

(assert (=> b!1245585 m!1147613))

(declare-fun m!1147617 () Bool)

(assert (=> b!1245585 m!1147617))

(assert (=> b!1245586 m!1147613))

(assert (=> b!1245586 m!1147613))

(assert (=> b!1245586 m!1147617))

(assert (=> b!1245589 m!1147613))

(assert (=> b!1245589 m!1147613))

(declare-fun m!1147619 () Bool)

(assert (=> b!1245589 m!1147619))

(assert (=> bm!61481 d!137351))

(assert (=> b!1245523 d!137315))

(declare-fun d!137353 () Bool)

(declare-fun lt!562892 () Bool)

(assert (=> d!137353 (= lt!562892 (select (content!627 (t!41122 lt!562875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706372 () Bool)

(assert (=> d!137353 (= lt!562892 e!706372)))

(declare-fun res!831150 () Bool)

(assert (=> d!137353 (=> (not res!831150) (not e!706372))))

(assert (=> d!137353 (= res!831150 ((_ is Cons!27642) (t!41122 lt!562875)))))

(assert (=> d!137353 (= (contains!7464 (t!41122 lt!562875) #b1000000000000000000000000000000000000000000000000000000000000000) lt!562892)))

(declare-fun b!1245590 () Bool)

(declare-fun e!706373 () Bool)

(assert (=> b!1245590 (= e!706372 e!706373)))

(declare-fun res!831151 () Bool)

(assert (=> b!1245590 (=> res!831151 e!706373)))

(assert (=> b!1245590 (= res!831151 (= (h!28851 (t!41122 lt!562875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245591 () Bool)

(assert (=> b!1245591 (= e!706373 (contains!7464 (t!41122 (t!41122 lt!562875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137353 res!831150) b!1245590))

(assert (= (and b!1245590 (not res!831151)) b!1245591))

(assert (=> d!137353 m!1147605))

(declare-fun m!1147621 () Bool)

(assert (=> d!137353 m!1147621))

(declare-fun m!1147623 () Bool)

(assert (=> b!1245591 m!1147623))

(assert (=> b!1245495 d!137353))

(declare-fun d!137355 () Bool)

(declare-fun res!831152 () Bool)

(declare-fun e!706374 () Bool)

(assert (=> d!137355 (=> res!831152 e!706374)))

(assert (=> d!137355 (= res!831152 ((_ is Nil!27643) (t!41122 lt!562875)))))

(assert (=> d!137355 (= (noDuplicate!2054 (t!41122 lt!562875)) e!706374)))

(declare-fun b!1245592 () Bool)

(declare-fun e!706375 () Bool)

(assert (=> b!1245592 (= e!706374 e!706375)))

(declare-fun res!831153 () Bool)

(assert (=> b!1245592 (=> (not res!831153) (not e!706375))))

(assert (=> b!1245592 (= res!831153 (not (contains!7464 (t!41122 (t!41122 lt!562875)) (h!28851 (t!41122 lt!562875)))))))

(declare-fun b!1245593 () Bool)

(assert (=> b!1245593 (= e!706375 (noDuplicate!2054 (t!41122 (t!41122 lt!562875))))))

(assert (= (and d!137355 (not res!831152)) b!1245592))

(assert (= (and b!1245592 res!831153) b!1245593))

(declare-fun m!1147625 () Bool)

(assert (=> b!1245592 m!1147625))

(declare-fun m!1147627 () Bool)

(assert (=> b!1245593 m!1147627))

(assert (=> b!1245555 d!137355))

(declare-fun d!137359 () Bool)

(declare-fun lt!562893 () Bool)

(assert (=> d!137359 (= lt!562893 (select (content!627 (t!41122 lt!562875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706376 () Bool)

(assert (=> d!137359 (= lt!562893 e!706376)))

(declare-fun res!831154 () Bool)

(assert (=> d!137359 (=> (not res!831154) (not e!706376))))

(assert (=> d!137359 (= res!831154 ((_ is Cons!27642) (t!41122 lt!562875)))))

(assert (=> d!137359 (= (contains!7464 (t!41122 lt!562875) #b0000000000000000000000000000000000000000000000000000000000000000) lt!562893)))

(declare-fun b!1245594 () Bool)

(declare-fun e!706377 () Bool)

(assert (=> b!1245594 (= e!706376 e!706377)))

(declare-fun res!831155 () Bool)

(assert (=> b!1245594 (=> res!831155 e!706377)))

(assert (=> b!1245594 (= res!831155 (= (h!28851 (t!41122 lt!562875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245595 () Bool)

(assert (=> b!1245595 (= e!706377 (contains!7464 (t!41122 (t!41122 lt!562875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137359 res!831154) b!1245594))

(assert (= (and b!1245594 (not res!831155)) b!1245595))

(assert (=> d!137359 m!1147605))

(declare-fun m!1147629 () Bool)

(assert (=> d!137359 m!1147629))

(declare-fun m!1147631 () Bool)

(assert (=> b!1245595 m!1147631))

(assert (=> b!1245497 d!137359))

(declare-fun d!137361 () Bool)

(declare-fun lt!562894 () Bool)

(assert (=> d!137361 (= lt!562894 (select (content!627 Nil!27643) (select (arr!38665 a!3892) from!3270)))))

(declare-fun e!706380 () Bool)

(assert (=> d!137361 (= lt!562894 e!706380)))

(declare-fun res!831156 () Bool)

(assert (=> d!137361 (=> (not res!831156) (not e!706380))))

(assert (=> d!137361 (= res!831156 ((_ is Cons!27642) Nil!27643))))

(assert (=> d!137361 (= (contains!7464 Nil!27643 (select (arr!38665 a!3892) from!3270)) lt!562894)))

(declare-fun b!1245600 () Bool)

(declare-fun e!706381 () Bool)

(assert (=> b!1245600 (= e!706380 e!706381)))

(declare-fun res!831157 () Bool)

(assert (=> b!1245600 (=> res!831157 e!706381)))

(assert (=> b!1245600 (= res!831157 (= (h!28851 Nil!27643) (select (arr!38665 a!3892) from!3270)))))

(declare-fun b!1245601 () Bool)

(assert (=> b!1245601 (= e!706381 (contains!7464 (t!41122 Nil!27643) (select (arr!38665 a!3892) from!3270)))))

(assert (= (and d!137361 res!831156) b!1245600))

(assert (= (and b!1245600 (not res!831157)) b!1245601))

(declare-fun m!1147633 () Bool)

(assert (=> d!137361 m!1147633))

(assert (=> d!137361 m!1147525))

(declare-fun m!1147635 () Bool)

(assert (=> d!137361 m!1147635))

(assert (=> b!1245601 m!1147525))

(declare-fun m!1147637 () Bool)

(assert (=> b!1245601 m!1147637))

(assert (=> b!1245526 d!137361))

(assert (=> d!137313 d!137349))

(check-sat (not d!137353) (not bm!61488) (not b!1245592) (not b!1245595) (not b!1245585) (not b!1245586) (not b!1245591) (not d!137361) (not d!137359) (not d!137347) (not b!1245589) (not b!1245578) (not b!1245601) (not b!1245593) (not b!1245584))
(check-sat)
