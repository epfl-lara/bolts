; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358632 () Bool)

(assert start!358632)

(declare-fun res!1551440 () Bool)

(declare-fun e!2366586 () Bool)

(assert (=> start!358632 (=> (not res!1551440) (not e!2366586))))

(declare-datatypes ((B!2589 0))(
  ( (B!2590 (val!13316 Int)) )
))
(declare-datatypes ((List!40569 0))(
  ( (Nil!40445) (Cons!40445 (h!45865 B!2589) (t!309158 List!40569)) )
))
(declare-fun l1!1027 () List!40569)

(get-info :version)

(assert (=> start!358632 (= res!1551440 (not ((_ is Cons!40445) l1!1027)))))

(assert (=> start!358632 e!2366586))

(declare-fun e!2366588 () Bool)

(assert (=> start!358632 e!2366588))

(declare-fun e!2366587 () Bool)

(assert (=> start!358632 e!2366587))

(declare-fun b!3832382 () Bool)

(declare-fun l2!996 () List!40569)

(declare-fun isSuffix!1000 (List!40569 List!40569) Bool)

(declare-fun ++!10208 (List!40569 List!40569) List!40569)

(assert (=> b!3832382 (= e!2366586 (not (isSuffix!1000 l2!996 (++!10208 l1!1027 l2!996))))))

(declare-fun b!3832383 () Bool)

(declare-fun tp_is_empty!19229 () Bool)

(declare-fun tp!1159418 () Bool)

(assert (=> b!3832383 (= e!2366588 (and tp_is_empty!19229 tp!1159418))))

(declare-fun b!3832384 () Bool)

(declare-fun tp!1159417 () Bool)

(assert (=> b!3832384 (= e!2366587 (and tp_is_empty!19229 tp!1159417))))

(assert (= (and start!358632 res!1551440) b!3832382))

(assert (= (and start!358632 ((_ is Cons!40445) l1!1027)) b!3832383))

(assert (= (and start!358632 ((_ is Cons!40445) l2!996)) b!3832384))

(declare-fun m!4387009 () Bool)

(assert (=> b!3832382 m!4387009))

(assert (=> b!3832382 m!4387009))

(declare-fun m!4387011 () Bool)

(assert (=> b!3832382 m!4387011))

(check-sat (not b!3832382) (not b!3832383) (not b!3832384) tp_is_empty!19229)
(check-sat)
(get-model)

(declare-fun d!1137669 () Bool)

(declare-fun e!2366594 () Bool)

(assert (=> d!1137669 e!2366594))

(declare-fun res!1551446 () Bool)

(assert (=> d!1137669 (=> res!1551446 e!2366594)))

(declare-fun lt!1330637 () Bool)

(assert (=> d!1137669 (= res!1551446 (not lt!1330637))))

(declare-fun drop!2136 (List!40569 Int) List!40569)

(declare-fun size!30487 (List!40569) Int)

(assert (=> d!1137669 (= lt!1330637 (= l2!996 (drop!2136 (++!10208 l1!1027 l2!996) (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996)))))))

(assert (=> d!1137669 (= (isSuffix!1000 l2!996 (++!10208 l1!1027 l2!996)) lt!1330637)))

(declare-fun b!3832390 () Bool)

(assert (=> b!3832390 (= e!2366594 (>= (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996)))))

(assert (= (and d!1137669 (not res!1551446)) b!3832390))

(assert (=> d!1137669 m!4387009))

(declare-fun m!4387019 () Bool)

(assert (=> d!1137669 m!4387019))

(declare-fun m!4387021 () Bool)

(assert (=> d!1137669 m!4387021))

(assert (=> d!1137669 m!4387009))

(declare-fun m!4387023 () Bool)

(assert (=> d!1137669 m!4387023))

(assert (=> b!3832390 m!4387009))

(assert (=> b!3832390 m!4387019))

(assert (=> b!3832390 m!4387021))

(assert (=> b!3832382 d!1137669))

(declare-fun b!3832407 () Bool)

(declare-fun e!2366604 () List!40569)

(assert (=> b!3832407 (= e!2366604 l2!996)))

(declare-fun b!3832409 () Bool)

(declare-fun res!1551455 () Bool)

(declare-fun e!2366603 () Bool)

(assert (=> b!3832409 (=> (not res!1551455) (not e!2366603))))

(declare-fun lt!1330642 () List!40569)

(assert (=> b!3832409 (= res!1551455 (= (size!30487 lt!1330642) (+ (size!30487 l1!1027) (size!30487 l2!996))))))

(declare-fun b!3832408 () Bool)

(assert (=> b!3832408 (= e!2366604 (Cons!40445 (h!45865 l1!1027) (++!10208 (t!309158 l1!1027) l2!996)))))

(declare-fun b!3832410 () Bool)

(assert (=> b!3832410 (= e!2366603 (or (not (= l2!996 Nil!40445)) (= lt!1330642 l1!1027)))))

(declare-fun d!1137673 () Bool)

(assert (=> d!1137673 e!2366603))

(declare-fun res!1551456 () Bool)

(assert (=> d!1137673 (=> (not res!1551456) (not e!2366603))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6003 (List!40569) (InoxSet B!2589))

(assert (=> d!1137673 (= res!1551456 (= (content!6003 lt!1330642) ((_ map or) (content!6003 l1!1027) (content!6003 l2!996))))))

(assert (=> d!1137673 (= lt!1330642 e!2366604)))

(declare-fun c!668342 () Bool)

(assert (=> d!1137673 (= c!668342 ((_ is Nil!40445) l1!1027))))

(assert (=> d!1137673 (= (++!10208 l1!1027 l2!996) lt!1330642)))

(assert (= (and d!1137673 c!668342) b!3832407))

(assert (= (and d!1137673 (not c!668342)) b!3832408))

(assert (= (and d!1137673 res!1551456) b!3832409))

(assert (= (and b!3832409 res!1551455) b!3832410))

(declare-fun m!4387025 () Bool)

(assert (=> b!3832409 m!4387025))

(declare-fun m!4387027 () Bool)

(assert (=> b!3832409 m!4387027))

(assert (=> b!3832409 m!4387021))

(declare-fun m!4387029 () Bool)

(assert (=> b!3832408 m!4387029))

(declare-fun m!4387031 () Bool)

(assert (=> d!1137673 m!4387031))

(declare-fun m!4387033 () Bool)

(assert (=> d!1137673 m!4387033))

(declare-fun m!4387035 () Bool)

(assert (=> d!1137673 m!4387035))

(assert (=> b!3832382 d!1137673))

(declare-fun b!3832419 () Bool)

(declare-fun e!2366609 () Bool)

(declare-fun tp!1159421 () Bool)

(assert (=> b!3832419 (= e!2366609 (and tp_is_empty!19229 tp!1159421))))

(assert (=> b!3832383 (= tp!1159418 e!2366609)))

(assert (= (and b!3832383 ((_ is Cons!40445) (t!309158 l1!1027))) b!3832419))

(declare-fun b!3832420 () Bool)

(declare-fun e!2366610 () Bool)

(declare-fun tp!1159422 () Bool)

(assert (=> b!3832420 (= e!2366610 (and tp_is_empty!19229 tp!1159422))))

(assert (=> b!3832384 (= tp!1159417 e!2366610)))

(assert (= (and b!3832384 ((_ is Cons!40445) (t!309158 l2!996))) b!3832420))

(check-sat (not b!3832420) (not d!1137673) (not b!3832390) (not b!3832408) (not b!3832419) (not b!3832409) tp_is_empty!19229 (not d!1137669))
(check-sat)
(get-model)

(declare-fun b!3832445 () Bool)

(declare-fun e!2366627 () List!40569)

(assert (=> b!3832445 (= e!2366627 (++!10208 l1!1027 l2!996))))

(declare-fun b!3832446 () Bool)

(declare-fun e!2366625 () Int)

(declare-fun e!2366628 () Int)

(assert (=> b!3832446 (= e!2366625 e!2366628)))

(declare-fun call!281819 () Int)

(declare-fun c!668352 () Bool)

(assert (=> b!3832446 (= c!668352 (>= (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996)) call!281819))))

(declare-fun b!3832447 () Bool)

(declare-fun e!2366629 () List!40569)

(assert (=> b!3832447 (= e!2366629 Nil!40445)))

(declare-fun b!3832448 () Bool)

(declare-fun e!2366626 () Bool)

(declare-fun lt!1330646 () List!40569)

(assert (=> b!3832448 (= e!2366626 (= (size!30487 lt!1330646) e!2366625))))

(declare-fun c!668355 () Bool)

(assert (=> b!3832448 (= c!668355 (<= (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996)) 0))))

(declare-fun b!3832449 () Bool)

(assert (=> b!3832449 (= e!2366628 0)))

(declare-fun b!3832450 () Bool)

(assert (=> b!3832450 (= e!2366628 (- call!281819 (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996))))))

(declare-fun b!3832451 () Bool)

(assert (=> b!3832451 (= e!2366625 call!281819)))

(declare-fun b!3832452 () Bool)

(assert (=> b!3832452 (= e!2366627 (drop!2136 (t!309158 (++!10208 l1!1027 l2!996)) (- (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996)) 1)))))

(declare-fun d!1137675 () Bool)

(assert (=> d!1137675 e!2366626))

(declare-fun res!1551461 () Bool)

(assert (=> d!1137675 (=> (not res!1551461) (not e!2366626))))

(assert (=> d!1137675 (= res!1551461 (= ((_ map implies) (content!6003 lt!1330646) (content!6003 (++!10208 l1!1027 l2!996))) ((as const (InoxSet B!2589)) true)))))

(assert (=> d!1137675 (= lt!1330646 e!2366629)))

(declare-fun c!668354 () Bool)

(assert (=> d!1137675 (= c!668354 ((_ is Nil!40445) (++!10208 l1!1027 l2!996)))))

(assert (=> d!1137675 (= (drop!2136 (++!10208 l1!1027 l2!996) (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996))) lt!1330646)))

(declare-fun bm!281814 () Bool)

(assert (=> bm!281814 (= call!281819 (size!30487 (++!10208 l1!1027 l2!996)))))

(declare-fun b!3832453 () Bool)

(assert (=> b!3832453 (= e!2366629 e!2366627)))

(declare-fun c!668353 () Bool)

(assert (=> b!3832453 (= c!668353 (<= (- (size!30487 (++!10208 l1!1027 l2!996)) (size!30487 l2!996)) 0))))

(assert (= (and d!1137675 c!668354) b!3832447))

(assert (= (and d!1137675 (not c!668354)) b!3832453))

(assert (= (and b!3832453 c!668353) b!3832445))

(assert (= (and b!3832453 (not c!668353)) b!3832452))

(assert (= (and d!1137675 res!1551461) b!3832448))

(assert (= (and b!3832448 c!668355) b!3832451))

(assert (= (and b!3832448 (not c!668355)) b!3832446))

(assert (= (and b!3832446 c!668352) b!3832449))

(assert (= (and b!3832446 (not c!668352)) b!3832450))

(assert (= (or b!3832451 b!3832446 b!3832450) bm!281814))

(declare-fun m!4387049 () Bool)

(assert (=> b!3832448 m!4387049))

(declare-fun m!4387051 () Bool)

(assert (=> b!3832452 m!4387051))

(declare-fun m!4387053 () Bool)

(assert (=> d!1137675 m!4387053))

(assert (=> d!1137675 m!4387009))

(declare-fun m!4387055 () Bool)

(assert (=> d!1137675 m!4387055))

(assert (=> bm!281814 m!4387009))

(assert (=> bm!281814 m!4387019))

(assert (=> d!1137669 d!1137675))

(declare-fun d!1137677 () Bool)

(declare-fun lt!1330649 () Int)

(assert (=> d!1137677 (>= lt!1330649 0)))

(declare-fun e!2366632 () Int)

(assert (=> d!1137677 (= lt!1330649 e!2366632)))

(declare-fun c!668358 () Bool)

(assert (=> d!1137677 (= c!668358 ((_ is Nil!40445) (++!10208 l1!1027 l2!996)))))

(assert (=> d!1137677 (= (size!30487 (++!10208 l1!1027 l2!996)) lt!1330649)))

(declare-fun b!3832458 () Bool)

(assert (=> b!3832458 (= e!2366632 0)))

(declare-fun b!3832459 () Bool)

(assert (=> b!3832459 (= e!2366632 (+ 1 (size!30487 (t!309158 (++!10208 l1!1027 l2!996)))))))

(assert (= (and d!1137677 c!668358) b!3832458))

(assert (= (and d!1137677 (not c!668358)) b!3832459))

(declare-fun m!4387057 () Bool)

(assert (=> b!3832459 m!4387057))

(assert (=> d!1137669 d!1137677))

(declare-fun d!1137679 () Bool)

(declare-fun lt!1330650 () Int)

(assert (=> d!1137679 (>= lt!1330650 0)))

(declare-fun e!2366633 () Int)

(assert (=> d!1137679 (= lt!1330650 e!2366633)))

(declare-fun c!668359 () Bool)

(assert (=> d!1137679 (= c!668359 ((_ is Nil!40445) l2!996))))

(assert (=> d!1137679 (= (size!30487 l2!996) lt!1330650)))

(declare-fun b!3832460 () Bool)

(assert (=> b!3832460 (= e!2366633 0)))

(declare-fun b!3832461 () Bool)

(assert (=> b!3832461 (= e!2366633 (+ 1 (size!30487 (t!309158 l2!996))))))

(assert (= (and d!1137679 c!668359) b!3832460))

(assert (= (and d!1137679 (not c!668359)) b!3832461))

(declare-fun m!4387059 () Bool)

(assert (=> b!3832461 m!4387059))

(assert (=> d!1137669 d!1137679))

(assert (=> b!3832390 d!1137677))

(assert (=> b!3832390 d!1137679))

(declare-fun d!1137681 () Bool)

(declare-fun c!668362 () Bool)

(assert (=> d!1137681 (= c!668362 ((_ is Nil!40445) lt!1330642))))

(declare-fun e!2366636 () (InoxSet B!2589))

(assert (=> d!1137681 (= (content!6003 lt!1330642) e!2366636)))

(declare-fun b!3832466 () Bool)

(assert (=> b!3832466 (= e!2366636 ((as const (Array B!2589 Bool)) false))))

(declare-fun b!3832467 () Bool)

(assert (=> b!3832467 (= e!2366636 ((_ map or) (store ((as const (Array B!2589 Bool)) false) (h!45865 lt!1330642) true) (content!6003 (t!309158 lt!1330642))))))

(assert (= (and d!1137681 c!668362) b!3832466))

(assert (= (and d!1137681 (not c!668362)) b!3832467))

(declare-fun m!4387061 () Bool)

(assert (=> b!3832467 m!4387061))

(declare-fun m!4387063 () Bool)

(assert (=> b!3832467 m!4387063))

(assert (=> d!1137673 d!1137681))

(declare-fun d!1137685 () Bool)

(declare-fun c!668363 () Bool)

(assert (=> d!1137685 (= c!668363 ((_ is Nil!40445) l1!1027))))

(declare-fun e!2366637 () (InoxSet B!2589))

(assert (=> d!1137685 (= (content!6003 l1!1027) e!2366637)))

(declare-fun b!3832468 () Bool)

(assert (=> b!3832468 (= e!2366637 ((as const (Array B!2589 Bool)) false))))

(declare-fun b!3832469 () Bool)

(assert (=> b!3832469 (= e!2366637 ((_ map or) (store ((as const (Array B!2589 Bool)) false) (h!45865 l1!1027) true) (content!6003 (t!309158 l1!1027))))))

(assert (= (and d!1137685 c!668363) b!3832468))

(assert (= (and d!1137685 (not c!668363)) b!3832469))

(declare-fun m!4387065 () Bool)

(assert (=> b!3832469 m!4387065))

(declare-fun m!4387067 () Bool)

(assert (=> b!3832469 m!4387067))

(assert (=> d!1137673 d!1137685))

(declare-fun d!1137687 () Bool)

(declare-fun c!668364 () Bool)

(assert (=> d!1137687 (= c!668364 ((_ is Nil!40445) l2!996))))

(declare-fun e!2366638 () (InoxSet B!2589))

(assert (=> d!1137687 (= (content!6003 l2!996) e!2366638)))

(declare-fun b!3832470 () Bool)

(assert (=> b!3832470 (= e!2366638 ((as const (Array B!2589 Bool)) false))))

(declare-fun b!3832471 () Bool)

(assert (=> b!3832471 (= e!2366638 ((_ map or) (store ((as const (Array B!2589 Bool)) false) (h!45865 l2!996) true) (content!6003 (t!309158 l2!996))))))

(assert (= (and d!1137687 c!668364) b!3832470))

(assert (= (and d!1137687 (not c!668364)) b!3832471))

(declare-fun m!4387069 () Bool)

(assert (=> b!3832471 m!4387069))

(declare-fun m!4387071 () Bool)

(assert (=> b!3832471 m!4387071))

(assert (=> d!1137673 d!1137687))

(declare-fun d!1137689 () Bool)

(declare-fun lt!1330651 () Int)

(assert (=> d!1137689 (>= lt!1330651 0)))

(declare-fun e!2366639 () Int)

(assert (=> d!1137689 (= lt!1330651 e!2366639)))

(declare-fun c!668365 () Bool)

(assert (=> d!1137689 (= c!668365 ((_ is Nil!40445) lt!1330642))))

(assert (=> d!1137689 (= (size!30487 lt!1330642) lt!1330651)))

(declare-fun b!3832472 () Bool)

(assert (=> b!3832472 (= e!2366639 0)))

(declare-fun b!3832473 () Bool)

(assert (=> b!3832473 (= e!2366639 (+ 1 (size!30487 (t!309158 lt!1330642))))))

(assert (= (and d!1137689 c!668365) b!3832472))

(assert (= (and d!1137689 (not c!668365)) b!3832473))

(declare-fun m!4387073 () Bool)

(assert (=> b!3832473 m!4387073))

(assert (=> b!3832409 d!1137689))

(declare-fun d!1137691 () Bool)

(declare-fun lt!1330652 () Int)

(assert (=> d!1137691 (>= lt!1330652 0)))

(declare-fun e!2366640 () Int)

(assert (=> d!1137691 (= lt!1330652 e!2366640)))

(declare-fun c!668366 () Bool)

(assert (=> d!1137691 (= c!668366 ((_ is Nil!40445) l1!1027))))

(assert (=> d!1137691 (= (size!30487 l1!1027) lt!1330652)))

(declare-fun b!3832474 () Bool)

(assert (=> b!3832474 (= e!2366640 0)))

(declare-fun b!3832475 () Bool)

(assert (=> b!3832475 (= e!2366640 (+ 1 (size!30487 (t!309158 l1!1027))))))

(assert (= (and d!1137691 c!668366) b!3832474))

(assert (= (and d!1137691 (not c!668366)) b!3832475))

(declare-fun m!4387075 () Bool)

(assert (=> b!3832475 m!4387075))

(assert (=> b!3832409 d!1137691))

(assert (=> b!3832409 d!1137679))

(declare-fun b!3832476 () Bool)

(declare-fun e!2366642 () List!40569)

(assert (=> b!3832476 (= e!2366642 l2!996)))

(declare-fun b!3832478 () Bool)

(declare-fun res!1551462 () Bool)

(declare-fun e!2366641 () Bool)

(assert (=> b!3832478 (=> (not res!1551462) (not e!2366641))))

(declare-fun lt!1330653 () List!40569)

(assert (=> b!3832478 (= res!1551462 (= (size!30487 lt!1330653) (+ (size!30487 (t!309158 l1!1027)) (size!30487 l2!996))))))

(declare-fun b!3832477 () Bool)

(assert (=> b!3832477 (= e!2366642 (Cons!40445 (h!45865 (t!309158 l1!1027)) (++!10208 (t!309158 (t!309158 l1!1027)) l2!996)))))

(declare-fun b!3832479 () Bool)

(assert (=> b!3832479 (= e!2366641 (or (not (= l2!996 Nil!40445)) (= lt!1330653 (t!309158 l1!1027))))))

(declare-fun d!1137693 () Bool)

(assert (=> d!1137693 e!2366641))

(declare-fun res!1551463 () Bool)

(assert (=> d!1137693 (=> (not res!1551463) (not e!2366641))))

(assert (=> d!1137693 (= res!1551463 (= (content!6003 lt!1330653) ((_ map or) (content!6003 (t!309158 l1!1027)) (content!6003 l2!996))))))

(assert (=> d!1137693 (= lt!1330653 e!2366642)))

(declare-fun c!668367 () Bool)

(assert (=> d!1137693 (= c!668367 ((_ is Nil!40445) (t!309158 l1!1027)))))

(assert (=> d!1137693 (= (++!10208 (t!309158 l1!1027) l2!996) lt!1330653)))

(assert (= (and d!1137693 c!668367) b!3832476))

(assert (= (and d!1137693 (not c!668367)) b!3832477))

(assert (= (and d!1137693 res!1551463) b!3832478))

(assert (= (and b!3832478 res!1551462) b!3832479))

(declare-fun m!4387077 () Bool)

(assert (=> b!3832478 m!4387077))

(assert (=> b!3832478 m!4387075))

(assert (=> b!3832478 m!4387021))

(declare-fun m!4387079 () Bool)

(assert (=> b!3832477 m!4387079))

(declare-fun m!4387081 () Bool)

(assert (=> d!1137693 m!4387081))

(assert (=> d!1137693 m!4387067))

(assert (=> d!1137693 m!4387035))

(assert (=> b!3832408 d!1137693))

(declare-fun b!3832484 () Bool)

(declare-fun e!2366645 () Bool)

(declare-fun tp!1159427 () Bool)

(assert (=> b!3832484 (= e!2366645 (and tp_is_empty!19229 tp!1159427))))

(assert (=> b!3832419 (= tp!1159421 e!2366645)))

(assert (= (and b!3832419 ((_ is Cons!40445) (t!309158 (t!309158 l1!1027)))) b!3832484))

(declare-fun b!3832485 () Bool)

(declare-fun e!2366646 () Bool)

(declare-fun tp!1159428 () Bool)

(assert (=> b!3832485 (= e!2366646 (and tp_is_empty!19229 tp!1159428))))

(assert (=> b!3832420 (= tp!1159422 e!2366646)))

(assert (= (and b!3832420 ((_ is Cons!40445) (t!309158 (t!309158 l2!996)))) b!3832485))

(check-sat (not b!3832459) (not b!3832477) (not b!3832469) (not b!3832484) (not b!3832485) (not b!3832473) (not b!3832475) (not b!3832467) (not b!3832478) (not bm!281814) (not b!3832448) (not d!1137693) (not d!1137675) (not b!3832452) tp_is_empty!19229 (not b!3832461) (not b!3832471))
(check-sat)
