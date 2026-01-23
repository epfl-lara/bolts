; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747606 () Bool)

(assert start!747606)

(declare-fun res!3141669 () Bool)

(declare-fun e!4672429 () Bool)

(assert (=> start!747606 (=> (not res!3141669) (not e!4672429))))

(declare-datatypes ((T!145594 0))(
  ( (T!145595 (val!32030 Int)) )
))
(declare-datatypes ((List!74542 0))(
  ( (Nil!74418) (Cons!74418 (h!80866 T!145594) (t!390045 List!74542)) )
))
(declare-datatypes ((IArray!31805 0))(
  ( (IArray!31806 (innerList!15960 List!74542)) )
))
(declare-datatypes ((Conc!15872 0))(
  ( (Node!15872 (left!56828 Conc!15872) (right!57158 Conc!15872) (csize!31974 Int) (cheight!16083 Int)) (Leaf!30189 (xs!19254 IArray!31805) (csize!31975 Int)) (Empty!15872) )
))
(declare-fun c!5365 () Conc!15872)

(declare-fun isBalanced!4498 (Conc!15872) Bool)

(assert (=> start!747606 (= res!3141669 (isBalanced!4498 c!5365))))

(assert (=> start!747606 e!4672429))

(declare-fun e!4672428 () Bool)

(declare-fun inv!95556 (Conc!15872) Bool)

(assert (=> start!747606 (and (inv!95556 c!5365) e!4672428)))

(declare-fun e!4672430 () Bool)

(assert (=> start!747606 e!4672430))

(declare-fun b!7915521 () Bool)

(declare-fun e!4672427 () Bool)

(declare-fun inv!95557 (IArray!31805) Bool)

(assert (=> b!7915521 (= e!4672428 (and (inv!95557 (xs!19254 c!5365)) e!4672427))))

(declare-fun b!7915522 () Bool)

(declare-fun tp_is_empty!53169 () Bool)

(declare-fun tp!2357359 () Bool)

(assert (=> b!7915522 (= e!4672430 (and tp_is_empty!53169 tp!2357359))))

(declare-fun b!7915523 () Bool)

(declare-fun tp!2357360 () Bool)

(assert (=> b!7915523 (= e!4672427 tp!2357360)))

(declare-fun tp!2357361 () Bool)

(declare-fun b!7915524 () Bool)

(declare-fun tp!2357362 () Bool)

(assert (=> b!7915524 (= e!4672428 (and (inv!95556 (left!56828 c!5365)) tp!2357362 (inv!95556 (right!57158 c!5365)) tp!2357361))))

(declare-fun b!7915525 () Bool)

(declare-fun res!3141670 () Bool)

(assert (=> b!7915525 (=> (not res!3141670) (not e!4672429))))

(declare-fun ll!14 () List!74542)

(get-info :version)

(assert (=> b!7915525 (= res!3141670 (not ((_ is Nil!74418) ll!14)))))

(declare-fun b!7915526 () Bool)

(declare-fun lt!2689977 () Conc!15872)

(declare-fun list!19363 (Conc!15872) List!74542)

(declare-fun rec!53 (List!74542 Conc!15872) Conc!15872)

(declare-fun ++!18236 (List!74542 List!74542) List!74542)

(assert (=> b!7915526 (= e!4672429 (not (= (list!19363 (rec!53 (t!390045 ll!14) lt!2689977)) (++!18236 (list!19363 lt!2689977) (t!390045 ll!14)))))))

(declare-fun append!1116 (Conc!15872 T!145594) Conc!15872)

(assert (=> b!7915526 (= lt!2689977 (append!1116 c!5365 (h!80866 ll!14)))))

(assert (= (and start!747606 res!3141669) b!7915525))

(assert (= (and b!7915525 res!3141670) b!7915526))

(assert (= (and start!747606 ((_ is Node!15872) c!5365)) b!7915524))

(assert (= b!7915521 b!7915523))

(assert (= (and start!747606 ((_ is Leaf!30189) c!5365)) b!7915521))

(assert (= (and start!747606 ((_ is Cons!74418) ll!14)) b!7915522))

(declare-fun m!8289650 () Bool)

(assert (=> start!747606 m!8289650))

(declare-fun m!8289652 () Bool)

(assert (=> start!747606 m!8289652))

(declare-fun m!8289654 () Bool)

(assert (=> b!7915521 m!8289654))

(declare-fun m!8289656 () Bool)

(assert (=> b!7915524 m!8289656))

(declare-fun m!8289658 () Bool)

(assert (=> b!7915524 m!8289658))

(declare-fun m!8289660 () Bool)

(assert (=> b!7915526 m!8289660))

(declare-fun m!8289662 () Bool)

(assert (=> b!7915526 m!8289662))

(declare-fun m!8289664 () Bool)

(assert (=> b!7915526 m!8289664))

(assert (=> b!7915526 m!8289664))

(declare-fun m!8289666 () Bool)

(assert (=> b!7915526 m!8289666))

(assert (=> b!7915526 m!8289660))

(declare-fun m!8289668 () Bool)

(assert (=> b!7915526 m!8289668))

(check-sat (not b!7915521) (not b!7915526) (not b!7915524) (not b!7915523) (not start!747606) (not b!7915522) tp_is_empty!53169)
(check-sat)
(get-model)

(declare-fun b!7915563 () Bool)

(declare-fun res!3141703 () Bool)

(declare-fun e!4672448 () Bool)

(assert (=> b!7915563 (=> (not res!3141703) (not e!4672448))))

(declare-fun isEmpty!42733 (Conc!15872) Bool)

(assert (=> b!7915563 (= res!3141703 (not (isEmpty!42733 (left!56828 c!5365))))))

(declare-fun b!7915564 () Bool)

(declare-fun res!3141702 () Bool)

(assert (=> b!7915564 (=> (not res!3141702) (not e!4672448))))

(assert (=> b!7915564 (= res!3141702 (isBalanced!4498 (left!56828 c!5365)))))

(declare-fun d!2361517 () Bool)

(declare-fun res!3141700 () Bool)

(declare-fun e!4672447 () Bool)

(assert (=> d!2361517 (=> res!3141700 e!4672447)))

(assert (=> d!2361517 (= res!3141700 (not ((_ is Node!15872) c!5365)))))

(assert (=> d!2361517 (= (isBalanced!4498 c!5365) e!4672447)))

(declare-fun b!7915565 () Bool)

(declare-fun res!3141704 () Bool)

(assert (=> b!7915565 (=> (not res!3141704) (not e!4672448))))

(declare-fun height!2188 (Conc!15872) Int)

(assert (=> b!7915565 (= res!3141704 (<= (- (height!2188 (left!56828 c!5365)) (height!2188 (right!57158 c!5365))) 1))))

(declare-fun b!7915566 () Bool)

(declare-fun res!3141699 () Bool)

(assert (=> b!7915566 (=> (not res!3141699) (not e!4672448))))

(assert (=> b!7915566 (= res!3141699 (isBalanced!4498 (right!57158 c!5365)))))

(declare-fun b!7915567 () Bool)

(assert (=> b!7915567 (= e!4672447 e!4672448)))

(declare-fun res!3141701 () Bool)

(assert (=> b!7915567 (=> (not res!3141701) (not e!4672448))))

(assert (=> b!7915567 (= res!3141701 (<= (- 1) (- (height!2188 (left!56828 c!5365)) (height!2188 (right!57158 c!5365)))))))

(declare-fun b!7915568 () Bool)

(assert (=> b!7915568 (= e!4672448 (not (isEmpty!42733 (right!57158 c!5365))))))

(assert (= (and d!2361517 (not res!3141700)) b!7915567))

(assert (= (and b!7915567 res!3141701) b!7915565))

(assert (= (and b!7915565 res!3141704) b!7915564))

(assert (= (and b!7915564 res!3141702) b!7915566))

(assert (= (and b!7915566 res!3141699) b!7915563))

(assert (= (and b!7915563 res!3141703) b!7915568))

(declare-fun m!8289678 () Bool)

(assert (=> b!7915565 m!8289678))

(declare-fun m!8289680 () Bool)

(assert (=> b!7915565 m!8289680))

(assert (=> b!7915567 m!8289678))

(assert (=> b!7915567 m!8289680))

(declare-fun m!8289682 () Bool)

(assert (=> b!7915568 m!8289682))

(declare-fun m!8289684 () Bool)

(assert (=> b!7915566 m!8289684))

(declare-fun m!8289686 () Bool)

(assert (=> b!7915563 m!8289686))

(declare-fun m!8289688 () Bool)

(assert (=> b!7915564 m!8289688))

(assert (=> start!747606 d!2361517))

(declare-fun d!2361523 () Bool)

(declare-fun c!1452404 () Bool)

(assert (=> d!2361523 (= c!1452404 ((_ is Node!15872) c!5365))))

(declare-fun e!4672457 () Bool)

(assert (=> d!2361523 (= (inv!95556 c!5365) e!4672457)))

(declare-fun b!7915586 () Bool)

(declare-fun inv!95560 (Conc!15872) Bool)

(assert (=> b!7915586 (= e!4672457 (inv!95560 c!5365))))

(declare-fun b!7915587 () Bool)

(declare-fun e!4672458 () Bool)

(assert (=> b!7915587 (= e!4672457 e!4672458)))

(declare-fun res!3141714 () Bool)

(assert (=> b!7915587 (= res!3141714 (not ((_ is Leaf!30189) c!5365)))))

(assert (=> b!7915587 (=> res!3141714 e!4672458)))

(declare-fun b!7915588 () Bool)

(declare-fun inv!95561 (Conc!15872) Bool)

(assert (=> b!7915588 (= e!4672458 (inv!95561 c!5365))))

(assert (= (and d!2361523 c!1452404) b!7915586))

(assert (= (and d!2361523 (not c!1452404)) b!7915587))

(assert (= (and b!7915587 (not res!3141714)) b!7915588))

(declare-fun m!8289708 () Bool)

(assert (=> b!7915586 m!8289708))

(declare-fun m!8289710 () Bool)

(assert (=> b!7915588 m!8289710))

(assert (=> start!747606 d!2361523))

(declare-fun d!2361531 () Bool)

(declare-fun size!43195 (List!74542) Int)

(assert (=> d!2361531 (= (inv!95557 (xs!19254 c!5365)) (<= (size!43195 (innerList!15960 (xs!19254 c!5365))) 2147483647))))

(declare-fun bs!1968450 () Bool)

(assert (= bs!1968450 d!2361531))

(declare-fun m!8289712 () Bool)

(assert (=> bs!1968450 m!8289712))

(assert (=> b!7915521 d!2361531))

(declare-fun b!7915610 () Bool)

(declare-fun e!4672470 () List!74542)

(assert (=> b!7915610 (= e!4672470 (++!18236 (list!19363 (left!56828 lt!2689977)) (list!19363 (right!57158 lt!2689977))))))

(declare-fun b!7915609 () Bool)

(declare-fun list!19365 (IArray!31805) List!74542)

(assert (=> b!7915609 (= e!4672470 (list!19365 (xs!19254 lt!2689977)))))

(declare-fun d!2361533 () Bool)

(declare-fun c!1452415 () Bool)

(assert (=> d!2361533 (= c!1452415 ((_ is Empty!15872) lt!2689977))))

(declare-fun e!4672469 () List!74542)

(assert (=> d!2361533 (= (list!19363 lt!2689977) e!4672469)))

(declare-fun b!7915608 () Bool)

(assert (=> b!7915608 (= e!4672469 e!4672470)))

(declare-fun c!1452416 () Bool)

(assert (=> b!7915608 (= c!1452416 ((_ is Leaf!30189) lt!2689977))))

(declare-fun b!7915607 () Bool)

(assert (=> b!7915607 (= e!4672469 Nil!74418)))

(assert (= (and d!2361533 c!1452415) b!7915607))

(assert (= (and d!2361533 (not c!1452415)) b!7915608))

(assert (= (and b!7915608 c!1452416) b!7915609))

(assert (= (and b!7915608 (not c!1452416)) b!7915610))

(declare-fun m!8289722 () Bool)

(assert (=> b!7915610 m!8289722))

(declare-fun m!8289724 () Bool)

(assert (=> b!7915610 m!8289724))

(assert (=> b!7915610 m!8289722))

(assert (=> b!7915610 m!8289724))

(declare-fun m!8289726 () Bool)

(assert (=> b!7915610 m!8289726))

(declare-fun m!8289728 () Bool)

(assert (=> b!7915609 m!8289728))

(assert (=> b!7915526 d!2361533))

(declare-fun b!7915678 () Bool)

(declare-fun e!4672508 () Conc!15872)

(declare-fun call!734461 () IArray!31805)

(assert (=> b!7915678 (= e!4672508 (Leaf!30189 call!734461 1))))

(declare-fun b!7915679 () Bool)

(declare-fun e!4672510 () Conc!15872)

(declare-fun append!1117 (IArray!31805 T!145594) IArray!31805)

(assert (=> b!7915679 (= e!4672510 (Leaf!30189 (append!1117 (xs!19254 c!5365) (h!80866 ll!14)) (+ (csize!31975 c!5365) 1)))))

(declare-fun lt!2690067 () List!74542)

(declare-fun $colon+!294 (List!74542 T!145594) List!74542)

(assert (=> b!7915679 (= lt!2690067 ($colon+!294 (list!19365 (xs!19254 c!5365)) (h!80866 ll!14)))))

(declare-fun c!1452446 () Bool)

(declare-fun lt!2690079 () List!74542)

(declare-fun lt!2690077 () List!74542)

(declare-fun call!734460 () List!74542)

(declare-fun lt!2690076 () List!74542)

(declare-fun bm!734448 () Bool)

(declare-fun call!734462 () List!74542)

(assert (=> bm!734448 (= call!734462 (++!18236 (ite c!1452446 call!734460 lt!2690077) (ite c!1452446 lt!2690079 lt!2690076)))))

(declare-fun b!7915680 () Bool)

(declare-fun call!734458 () Conc!15872)

(assert (=> b!7915680 (= e!4672510 call!734458)))

(declare-fun lt!2690068 () List!74542)

(declare-fun lt!2690071 () List!74542)

(declare-datatypes ((Unit!169537 0))(
  ( (Unit!169538) )
))
(declare-fun call!734455 () Unit!169537)

(declare-fun lt!2690070 () List!74542)

(declare-fun lt!2690074 () List!74542)

(declare-fun bm!734449 () Bool)

(declare-fun lt!2690080 () List!74542)

(declare-fun lemmaConcatAssociativity!3138 (List!74542 List!74542 List!74542) Unit!169537)

(assert (=> bm!734449 (= call!734455 (lemmaConcatAssociativity!3138 (ite c!1452446 lt!2690068 lt!2690080) (ite c!1452446 lt!2690071 lt!2690070) (ite c!1452446 lt!2690079 lt!2690074)))))

(declare-fun bm!734450 () Bool)

(assert (=> bm!734450 (= call!734460 (++!18236 (ite c!1452446 lt!2690068 lt!2690080) (ite c!1452446 lt!2690071 lt!2690070)))))

(declare-fun b!7915681 () Bool)

(declare-fun e!4672506 () Conc!15872)

(assert (=> b!7915681 (= e!4672506 call!734458)))

(declare-fun call!734459 () List!74542)

(assert (=> b!7915681 (= lt!2690080 call!734459)))

(declare-fun call!734456 () List!74542)

(assert (=> b!7915681 (= lt!2690070 call!734456)))

(declare-fun lt!2690078 () Conc!15872)

(assert (=> b!7915681 (= lt!2690074 (list!19363 (right!57158 lt!2690078)))))

(declare-fun lt!2690075 () Unit!169537)

(assert (=> b!7915681 (= lt!2690075 call!734455)))

(declare-fun call!734457 () List!74542)

(assert (=> b!7915681 (= (++!18236 call!734460 lt!2690074) (++!18236 lt!2690080 call!734457))))

(declare-fun lt!2690085 () Unit!169537)

(assert (=> b!7915681 (= lt!2690085 lt!2690075)))

(declare-fun lt!2690069 () List!74542)

(assert (=> b!7915681 (= lt!2690069 call!734459)))

(assert (=> b!7915681 (= lt!2690077 (list!19363 (right!57158 c!5365)))))

(assert (=> b!7915681 (= lt!2690076 (Cons!74418 (h!80866 ll!14) Nil!74418))))

(declare-fun lt!2690066 () Unit!169537)

(assert (=> b!7915681 (= lt!2690066 (lemmaConcatAssociativity!3138 lt!2690069 lt!2690077 lt!2690076))))

(declare-fun call!734454 () List!74542)

(assert (=> b!7915681 (= (++!18236 call!734454 lt!2690076) (++!18236 lt!2690069 call!734462))))

(declare-fun lt!2690072 () Unit!169537)

(assert (=> b!7915681 (= lt!2690072 lt!2690066)))

(declare-fun b!7915682 () Bool)

(assert (=> b!7915682 (= e!4672508 (right!57158 lt!2690078))))

(declare-fun b!7915683 () Bool)

(declare-fun e!4672509 () Conc!15872)

(declare-fun e!4672505 () Conc!15872)

(assert (=> b!7915683 (= e!4672509 e!4672505)))

(declare-fun c!1452445 () Bool)

(assert (=> b!7915683 (= c!1452445 ((_ is Node!15872) c!5365))))

(declare-fun b!7915684 () Bool)

(declare-fun c!1452448 () Bool)

(assert (=> b!7915684 (= c!1452448 (< (csize!31975 c!5365) 512))))

(assert (=> b!7915684 (= e!4672505 e!4672510)))

(declare-fun e!4672507 () Bool)

(declare-fun b!7915685 () Bool)

(declare-fun lt!2690073 () Conc!15872)

(assert (=> b!7915685 (= e!4672507 (= (list!19363 lt!2690073) ($colon+!294 (list!19363 c!5365) (h!80866 ll!14))))))

(declare-fun b!7915686 () Bool)

(assert (=> b!7915686 (= e!4672509 (Leaf!30189 call!734461 1))))

(declare-fun bm!734451 () Bool)

(declare-fun call!734453 () Conc!15872)

(declare-fun <>!409 (Conc!15872 Conc!15872) Conc!15872)

(assert (=> bm!734451 (= call!734453 (<>!409 (left!56828 c!5365) (ite c!1452446 lt!2690078 (left!56828 lt!2690078))))))

(declare-fun b!7915687 () Bool)

(assert (=> b!7915687 (= c!1452446 (<= (height!2188 lt!2690078) (+ (height!2188 (left!56828 c!5365)) 1)))))

(assert (=> b!7915687 (= lt!2690078 (append!1116 (right!57158 c!5365) (h!80866 ll!14)))))

(assert (=> b!7915687 (= e!4672505 e!4672506)))

(declare-fun d!2361537 () Bool)

(assert (=> d!2361537 e!4672507))

(declare-fun res!3141730 () Bool)

(assert (=> d!2361537 (=> (not res!3141730) (not e!4672507))))

(assert (=> d!2361537 (= res!3141730 (isBalanced!4498 lt!2690073))))

(assert (=> d!2361537 (= lt!2690073 e!4672509)))

(declare-fun c!1452443 () Bool)

(assert (=> d!2361537 (= c!1452443 ((_ is Empty!15872) c!5365))))

(assert (=> d!2361537 (isBalanced!4498 c!5365)))

(assert (=> d!2361537 (= (append!1116 c!5365 (h!80866 ll!14)) lt!2690073)))

(declare-fun b!7915688 () Bool)

(declare-fun res!3141732 () Bool)

(assert (=> b!7915688 (=> (not res!3141732) (not e!4672507))))

(assert (=> b!7915688 (= res!3141732 (<= (height!2188 lt!2690073) (+ (height!2188 c!5365) 1)))))

(declare-fun bm!734452 () Bool)

(assert (=> bm!734452 (= call!734454 (++!18236 (ite c!1452446 lt!2690071 lt!2690069) (ite c!1452446 lt!2690079 lt!2690077)))))

(declare-fun bm!734453 () Bool)

(assert (=> bm!734453 (= call!734459 (list!19363 (ite c!1452446 (right!57158 c!5365) (left!56828 c!5365))))))

(declare-fun bm!734454 () Bool)

(declare-fun fill!250 (Int T!145594) IArray!31805)

(assert (=> bm!734454 (= call!734461 (fill!250 1 (h!80866 ll!14)))))

(declare-fun bm!734455 () Bool)

(declare-fun c!1452447 () Bool)

(assert (=> bm!734455 (= c!1452447 c!1452445)))

(assert (=> bm!734455 (= call!734458 (<>!409 (ite c!1452445 call!734453 c!5365) e!4672508))))

(declare-fun bm!734456 () Bool)

(assert (=> bm!734456 (= call!734457 (++!18236 (ite c!1452446 lt!2690068 lt!2690070) (ite c!1452446 call!734454 lt!2690074)))))

(declare-fun bm!734457 () Bool)

(assert (=> bm!734457 (= call!734456 (list!19363 (ite c!1452446 (left!56828 c!5365) (left!56828 lt!2690078))))))

(declare-fun b!7915689 () Bool)

(assert (=> b!7915689 (= e!4672506 call!734453)))

(assert (=> b!7915689 (= lt!2690068 call!734456)))

(assert (=> b!7915689 (= lt!2690071 call!734459)))

(assert (=> b!7915689 (= lt!2690079 (Cons!74418 (h!80866 ll!14) Nil!74418))))

(declare-fun lt!2690082 () Unit!169537)

(assert (=> b!7915689 (= lt!2690082 call!734455)))

(assert (=> b!7915689 (= call!734462 call!734457)))

(declare-fun lt!2690081 () Unit!169537)

(assert (=> b!7915689 (= lt!2690081 lt!2690082)))

(declare-fun b!7915690 () Bool)

(declare-fun res!3141731 () Bool)

(assert (=> b!7915690 (=> (not res!3141731) (not e!4672507))))

(assert (=> b!7915690 (= res!3141731 (<= (height!2188 c!5365) (height!2188 lt!2690073)))))

(assert (= (and d!2361537 c!1452443) b!7915686))

(assert (= (and d!2361537 (not c!1452443)) b!7915683))

(assert (= (and b!7915683 c!1452445) b!7915687))

(assert (= (and b!7915683 (not c!1452445)) b!7915684))

(assert (= (and b!7915687 c!1452446) b!7915689))

(assert (= (and b!7915687 (not c!1452446)) b!7915681))

(assert (= (or b!7915689 b!7915681) bm!734453))

(assert (= (or b!7915689 b!7915681) bm!734451))

(assert (= (or b!7915689 b!7915681) bm!734457))

(assert (= (or b!7915689 b!7915681) bm!734450))

(assert (= (or b!7915689 b!7915681) bm!734449))

(assert (= (or b!7915689 b!7915681) bm!734452))

(assert (= (or b!7915689 b!7915681) bm!734448))

(assert (= (or b!7915689 b!7915681) bm!734456))

(assert (= (and b!7915684 c!1452448) b!7915679))

(assert (= (and b!7915684 (not c!1452448)) b!7915680))

(assert (= (or b!7915681 b!7915680) bm!734455))

(assert (= (and bm!734455 c!1452447) b!7915682))

(assert (= (and bm!734455 (not c!1452447)) b!7915678))

(assert (= (or b!7915686 b!7915678) bm!734454))

(assert (= (and d!2361537 res!3141730) b!7915690))

(assert (= (and b!7915690 res!3141731) b!7915688))

(assert (= (and b!7915688 res!3141732) b!7915685))

(declare-fun m!8289772 () Bool)

(assert (=> bm!734457 m!8289772))

(declare-fun m!8289774 () Bool)

(assert (=> bm!734456 m!8289774))

(declare-fun m!8289776 () Bool)

(assert (=> bm!734452 m!8289776))

(declare-fun m!8289778 () Bool)

(assert (=> d!2361537 m!8289778))

(assert (=> d!2361537 m!8289650))

(declare-fun m!8289780 () Bool)

(assert (=> bm!734448 m!8289780))

(declare-fun m!8289782 () Bool)

(assert (=> bm!734449 m!8289782))

(declare-fun m!8289784 () Bool)

(assert (=> bm!734451 m!8289784))

(declare-fun m!8289786 () Bool)

(assert (=> b!7915687 m!8289786))

(assert (=> b!7915687 m!8289678))

(declare-fun m!8289788 () Bool)

(assert (=> b!7915687 m!8289788))

(declare-fun m!8289790 () Bool)

(assert (=> b!7915685 m!8289790))

(declare-fun m!8289792 () Bool)

(assert (=> b!7915685 m!8289792))

(assert (=> b!7915685 m!8289792))

(declare-fun m!8289794 () Bool)

(assert (=> b!7915685 m!8289794))

(declare-fun m!8289796 () Bool)

(assert (=> bm!734454 m!8289796))

(declare-fun m!8289798 () Bool)

(assert (=> b!7915679 m!8289798))

(declare-fun m!8289800 () Bool)

(assert (=> b!7915679 m!8289800))

(assert (=> b!7915679 m!8289800))

(declare-fun m!8289802 () Bool)

(assert (=> b!7915679 m!8289802))

(declare-fun m!8289804 () Bool)

(assert (=> b!7915681 m!8289804))

(declare-fun m!8289806 () Bool)

(assert (=> b!7915681 m!8289806))

(declare-fun m!8289808 () Bool)

(assert (=> b!7915681 m!8289808))

(declare-fun m!8289810 () Bool)

(assert (=> b!7915681 m!8289810))

(declare-fun m!8289812 () Bool)

(assert (=> b!7915681 m!8289812))

(declare-fun m!8289814 () Bool)

(assert (=> b!7915681 m!8289814))

(declare-fun m!8289816 () Bool)

(assert (=> b!7915681 m!8289816))

(declare-fun m!8289818 () Bool)

(assert (=> bm!734453 m!8289818))

(declare-fun m!8289820 () Bool)

(assert (=> b!7915688 m!8289820))

(declare-fun m!8289822 () Bool)

(assert (=> b!7915688 m!8289822))

(assert (=> b!7915690 m!8289822))

(assert (=> b!7915690 m!8289820))

(declare-fun m!8289824 () Bool)

(assert (=> bm!734450 m!8289824))

(declare-fun m!8289826 () Bool)

(assert (=> bm!734455 m!8289826))

(assert (=> b!7915526 d!2361537))

(declare-fun b!7915698 () Bool)

(declare-fun e!4672514 () List!74542)

(assert (=> b!7915698 (= e!4672514 (++!18236 (list!19363 (left!56828 (rec!53 (t!390045 ll!14) lt!2689977))) (list!19363 (right!57158 (rec!53 (t!390045 ll!14) lt!2689977)))))))

(declare-fun b!7915697 () Bool)

(assert (=> b!7915697 (= e!4672514 (list!19365 (xs!19254 (rec!53 (t!390045 ll!14) lt!2689977))))))

(declare-fun d!2361545 () Bool)

(declare-fun c!1452451 () Bool)

(assert (=> d!2361545 (= c!1452451 ((_ is Empty!15872) (rec!53 (t!390045 ll!14) lt!2689977)))))

(declare-fun e!4672513 () List!74542)

(assert (=> d!2361545 (= (list!19363 (rec!53 (t!390045 ll!14) lt!2689977)) e!4672513)))

(declare-fun b!7915696 () Bool)

(assert (=> b!7915696 (= e!4672513 e!4672514)))

(declare-fun c!1452452 () Bool)

(assert (=> b!7915696 (= c!1452452 ((_ is Leaf!30189) (rec!53 (t!390045 ll!14) lt!2689977)))))

(declare-fun b!7915695 () Bool)

(assert (=> b!7915695 (= e!4672513 Nil!74418)))

(assert (= (and d!2361545 c!1452451) b!7915695))

(assert (= (and d!2361545 (not c!1452451)) b!7915696))

(assert (= (and b!7915696 c!1452452) b!7915697))

(assert (= (and b!7915696 (not c!1452452)) b!7915698))

(declare-fun m!8289828 () Bool)

(assert (=> b!7915698 m!8289828))

(declare-fun m!8289830 () Bool)

(assert (=> b!7915698 m!8289830))

(assert (=> b!7915698 m!8289828))

(assert (=> b!7915698 m!8289830))

(declare-fun m!8289832 () Bool)

(assert (=> b!7915698 m!8289832))

(declare-fun m!8289834 () Bool)

(assert (=> b!7915697 m!8289834))

(assert (=> b!7915526 d!2361545))

(declare-fun d!2361547 () Bool)

(declare-fun e!4672540 () Bool)

(assert (=> d!2361547 e!4672540))

(declare-fun res!3141744 () Bool)

(assert (=> d!2361547 (=> (not res!3141744) (not e!4672540))))

(declare-fun lt!2690115 () Conc!15872)

(assert (=> d!2361547 (= res!3141744 (= (list!19363 lt!2690115) (++!18236 (list!19363 lt!2689977) (t!390045 ll!14))))))

(declare-fun e!4672539 () Conc!15872)

(assert (=> d!2361547 (= lt!2690115 e!4672539)))

(declare-fun c!1452461 () Bool)

(assert (=> d!2361547 (= c!1452461 ((_ is Nil!74418) (t!390045 ll!14)))))

(assert (=> d!2361547 (isBalanced!4498 lt!2689977)))

(assert (=> d!2361547 (= (rec!53 (t!390045 ll!14) lt!2689977) lt!2690115)))

(declare-fun b!7915744 () Bool)

(assert (=> b!7915744 (= e!4672539 lt!2689977)))

(declare-fun b!7915745 () Bool)

(assert (=> b!7915745 (= e!4672539 (rec!53 (t!390045 (t!390045 ll!14)) (append!1116 lt!2689977 (h!80866 (t!390045 ll!14)))))))

(declare-fun lt!2690114 () List!74542)

(assert (=> b!7915745 (= lt!2690114 (list!19363 lt!2689977))))

(declare-fun lt!2690118 () List!74542)

(assert (=> b!7915745 (= lt!2690118 (Cons!74418 (h!80866 (t!390045 ll!14)) Nil!74418))))

(declare-fun lt!2690117 () Unit!169537)

(declare-fun lemmaConcatAssociativity!3140 (List!74542 List!74542 List!74542) Unit!169537)

(assert (=> b!7915745 (= lt!2690117 (lemmaConcatAssociativity!3140 lt!2690114 lt!2690118 (t!390045 (t!390045 ll!14))))))

(assert (=> b!7915745 (= (++!18236 (++!18236 lt!2690114 lt!2690118) (t!390045 (t!390045 ll!14))) (++!18236 lt!2690114 (++!18236 lt!2690118 (t!390045 (t!390045 ll!14)))))))

(declare-fun lt!2690116 () Unit!169537)

(assert (=> b!7915745 (= lt!2690116 lt!2690117)))

(declare-fun b!7915746 () Bool)

(assert (=> b!7915746 (= e!4672540 (isBalanced!4498 lt!2690115))))

(assert (= (and d!2361547 c!1452461) b!7915744))

(assert (= (and d!2361547 (not c!1452461)) b!7915745))

(assert (= (and d!2361547 res!3141744) b!7915746))

(declare-fun m!8289904 () Bool)

(assert (=> d!2361547 m!8289904))

(assert (=> d!2361547 m!8289664))

(assert (=> d!2361547 m!8289664))

(assert (=> d!2361547 m!8289666))

(declare-fun m!8289906 () Bool)

(assert (=> d!2361547 m!8289906))

(declare-fun m!8289908 () Bool)

(assert (=> b!7915745 m!8289908))

(declare-fun m!8289910 () Bool)

(assert (=> b!7915745 m!8289910))

(assert (=> b!7915745 m!8289908))

(declare-fun m!8289912 () Bool)

(assert (=> b!7915745 m!8289912))

(declare-fun m!8289914 () Bool)

(assert (=> b!7915745 m!8289914))

(declare-fun m!8289916 () Bool)

(assert (=> b!7915745 m!8289916))

(assert (=> b!7915745 m!8289912))

(declare-fun m!8289918 () Bool)

(assert (=> b!7915745 m!8289918))

(assert (=> b!7915745 m!8289664))

(assert (=> b!7915745 m!8289916))

(declare-fun m!8289920 () Bool)

(assert (=> b!7915745 m!8289920))

(declare-fun m!8289922 () Bool)

(assert (=> b!7915746 m!8289922))

(assert (=> b!7915526 d!2361547))

(declare-fun d!2361549 () Bool)

(declare-fun e!4672545 () Bool)

(assert (=> d!2361549 e!4672545))

(declare-fun res!3141750 () Bool)

(assert (=> d!2361549 (=> (not res!3141750) (not e!4672545))))

(declare-fun lt!2690121 () List!74542)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15762 (List!74542) (InoxSet T!145594))

(assert (=> d!2361549 (= res!3141750 (= (content!15762 lt!2690121) ((_ map or) (content!15762 (list!19363 lt!2689977)) (content!15762 (t!390045 ll!14)))))))

(declare-fun e!4672546 () List!74542)

(assert (=> d!2361549 (= lt!2690121 e!4672546)))

(declare-fun c!1452464 () Bool)

(assert (=> d!2361549 (= c!1452464 ((_ is Nil!74418) (list!19363 lt!2689977)))))

(assert (=> d!2361549 (= (++!18236 (list!19363 lt!2689977) (t!390045 ll!14)) lt!2690121)))

(declare-fun b!7915757 () Bool)

(declare-fun res!3141749 () Bool)

(assert (=> b!7915757 (=> (not res!3141749) (not e!4672545))))

(assert (=> b!7915757 (= res!3141749 (= (size!43195 lt!2690121) (+ (size!43195 (list!19363 lt!2689977)) (size!43195 (t!390045 ll!14)))))))

(declare-fun b!7915755 () Bool)

(assert (=> b!7915755 (= e!4672546 (t!390045 ll!14))))

(declare-fun b!7915756 () Bool)

(assert (=> b!7915756 (= e!4672546 (Cons!74418 (h!80866 (list!19363 lt!2689977)) (++!18236 (t!390045 (list!19363 lt!2689977)) (t!390045 ll!14))))))

(declare-fun b!7915758 () Bool)

(assert (=> b!7915758 (= e!4672545 (or (not (= (t!390045 ll!14) Nil!74418)) (= lt!2690121 (list!19363 lt!2689977))))))

(assert (= (and d!2361549 c!1452464) b!7915755))

(assert (= (and d!2361549 (not c!1452464)) b!7915756))

(assert (= (and d!2361549 res!3141750) b!7915757))

(assert (= (and b!7915757 res!3141749) b!7915758))

(declare-fun m!8289924 () Bool)

(assert (=> d!2361549 m!8289924))

(assert (=> d!2361549 m!8289664))

(declare-fun m!8289926 () Bool)

(assert (=> d!2361549 m!8289926))

(declare-fun m!8289928 () Bool)

(assert (=> d!2361549 m!8289928))

(declare-fun m!8289930 () Bool)

(assert (=> b!7915757 m!8289930))

(assert (=> b!7915757 m!8289664))

(declare-fun m!8289932 () Bool)

(assert (=> b!7915757 m!8289932))

(declare-fun m!8289934 () Bool)

(assert (=> b!7915757 m!8289934))

(declare-fun m!8289936 () Bool)

(assert (=> b!7915756 m!8289936))

(assert (=> b!7915526 d!2361549))

(declare-fun d!2361551 () Bool)

(declare-fun c!1452465 () Bool)

(assert (=> d!2361551 (= c!1452465 ((_ is Node!15872) (left!56828 c!5365)))))

(declare-fun e!4672547 () Bool)

(assert (=> d!2361551 (= (inv!95556 (left!56828 c!5365)) e!4672547)))

(declare-fun b!7915759 () Bool)

(assert (=> b!7915759 (= e!4672547 (inv!95560 (left!56828 c!5365)))))

(declare-fun b!7915760 () Bool)

(declare-fun e!4672548 () Bool)

(assert (=> b!7915760 (= e!4672547 e!4672548)))

(declare-fun res!3141751 () Bool)

(assert (=> b!7915760 (= res!3141751 (not ((_ is Leaf!30189) (left!56828 c!5365))))))

(assert (=> b!7915760 (=> res!3141751 e!4672548)))

(declare-fun b!7915761 () Bool)

(assert (=> b!7915761 (= e!4672548 (inv!95561 (left!56828 c!5365)))))

(assert (= (and d!2361551 c!1452465) b!7915759))

(assert (= (and d!2361551 (not c!1452465)) b!7915760))

(assert (= (and b!7915760 (not res!3141751)) b!7915761))

(declare-fun m!8289938 () Bool)

(assert (=> b!7915759 m!8289938))

(declare-fun m!8289940 () Bool)

(assert (=> b!7915761 m!8289940))

(assert (=> b!7915524 d!2361551))

(declare-fun d!2361553 () Bool)

(declare-fun c!1452466 () Bool)

(assert (=> d!2361553 (= c!1452466 ((_ is Node!15872) (right!57158 c!5365)))))

(declare-fun e!4672549 () Bool)

(assert (=> d!2361553 (= (inv!95556 (right!57158 c!5365)) e!4672549)))

(declare-fun b!7915762 () Bool)

(assert (=> b!7915762 (= e!4672549 (inv!95560 (right!57158 c!5365)))))

(declare-fun b!7915763 () Bool)

(declare-fun e!4672550 () Bool)

(assert (=> b!7915763 (= e!4672549 e!4672550)))

(declare-fun res!3141752 () Bool)

(assert (=> b!7915763 (= res!3141752 (not ((_ is Leaf!30189) (right!57158 c!5365))))))

(assert (=> b!7915763 (=> res!3141752 e!4672550)))

(declare-fun b!7915764 () Bool)

(assert (=> b!7915764 (= e!4672550 (inv!95561 (right!57158 c!5365)))))

(assert (= (and d!2361553 c!1452466) b!7915762))

(assert (= (and d!2361553 (not c!1452466)) b!7915763))

(assert (= (and b!7915763 (not res!3141752)) b!7915764))

(declare-fun m!8289942 () Bool)

(assert (=> b!7915762 m!8289942))

(declare-fun m!8289944 () Bool)

(assert (=> b!7915764 m!8289944))

(assert (=> b!7915524 d!2361553))

(declare-fun b!7915773 () Bool)

(declare-fun e!4672555 () Bool)

(declare-fun tp!2357387 () Bool)

(declare-fun tp!2357385 () Bool)

(assert (=> b!7915773 (= e!4672555 (and (inv!95556 (left!56828 (left!56828 c!5365))) tp!2357387 (inv!95556 (right!57158 (left!56828 c!5365))) tp!2357385))))

(declare-fun b!7915775 () Bool)

(declare-fun e!4672556 () Bool)

(declare-fun tp!2357386 () Bool)

(assert (=> b!7915775 (= e!4672556 tp!2357386)))

(declare-fun b!7915774 () Bool)

(assert (=> b!7915774 (= e!4672555 (and (inv!95557 (xs!19254 (left!56828 c!5365))) e!4672556))))

(assert (=> b!7915524 (= tp!2357362 (and (inv!95556 (left!56828 c!5365)) e!4672555))))

(assert (= (and b!7915524 ((_ is Node!15872) (left!56828 c!5365))) b!7915773))

(assert (= b!7915774 b!7915775))

(assert (= (and b!7915524 ((_ is Leaf!30189) (left!56828 c!5365))) b!7915774))

(declare-fun m!8289946 () Bool)

(assert (=> b!7915773 m!8289946))

(declare-fun m!8289948 () Bool)

(assert (=> b!7915773 m!8289948))

(declare-fun m!8289950 () Bool)

(assert (=> b!7915774 m!8289950))

(assert (=> b!7915524 m!8289656))

(declare-fun tp!2357390 () Bool)

(declare-fun e!4672557 () Bool)

(declare-fun tp!2357388 () Bool)

(declare-fun b!7915776 () Bool)

(assert (=> b!7915776 (= e!4672557 (and (inv!95556 (left!56828 (right!57158 c!5365))) tp!2357390 (inv!95556 (right!57158 (right!57158 c!5365))) tp!2357388))))

(declare-fun b!7915778 () Bool)

(declare-fun e!4672558 () Bool)

(declare-fun tp!2357389 () Bool)

(assert (=> b!7915778 (= e!4672558 tp!2357389)))

(declare-fun b!7915777 () Bool)

(assert (=> b!7915777 (= e!4672557 (and (inv!95557 (xs!19254 (right!57158 c!5365))) e!4672558))))

(assert (=> b!7915524 (= tp!2357361 (and (inv!95556 (right!57158 c!5365)) e!4672557))))

(assert (= (and b!7915524 ((_ is Node!15872) (right!57158 c!5365))) b!7915776))

(assert (= b!7915777 b!7915778))

(assert (= (and b!7915524 ((_ is Leaf!30189) (right!57158 c!5365))) b!7915777))

(declare-fun m!8289952 () Bool)

(assert (=> b!7915776 m!8289952))

(declare-fun m!8289954 () Bool)

(assert (=> b!7915776 m!8289954))

(declare-fun m!8289956 () Bool)

(assert (=> b!7915777 m!8289956))

(assert (=> b!7915524 m!8289658))

(declare-fun b!7915783 () Bool)

(declare-fun e!4672561 () Bool)

(declare-fun tp!2357393 () Bool)

(assert (=> b!7915783 (= e!4672561 (and tp_is_empty!53169 tp!2357393))))

(assert (=> b!7915522 (= tp!2357359 e!4672561)))

(assert (= (and b!7915522 ((_ is Cons!74418) (t!390045 ll!14))) b!7915783))

(declare-fun b!7915784 () Bool)

(declare-fun e!4672562 () Bool)

(declare-fun tp!2357394 () Bool)

(assert (=> b!7915784 (= e!4672562 (and tp_is_empty!53169 tp!2357394))))

(assert (=> b!7915523 (= tp!2357360 e!4672562)))

(assert (= (and b!7915523 ((_ is Cons!74418) (innerList!15960 (xs!19254 c!5365)))) b!7915784))

(check-sat (not b!7915588) (not b!7915690) (not b!7915757) (not b!7915784) (not d!2361537) (not b!7915745) (not bm!734450) (not b!7915746) (not b!7915685) (not bm!734451) (not bm!734456) (not b!7915679) tp_is_empty!53169 (not b!7915586) (not b!7915775) (not bm!734452) (not bm!734454) (not b!7915759) (not bm!734453) (not b!7915773) (not b!7915610) (not d!2361547) (not b!7915564) (not b!7915565) (not b!7915681) (not b!7915609) (not bm!734457) (not d!2361531) (not b!7915774) (not b!7915687) (not b!7915566) (not b!7915783) (not bm!734449) (not b!7915697) (not bm!734455) (not b!7915762) (not b!7915761) (not b!7915524) (not b!7915563) (not b!7915688) (not b!7915698) (not b!7915776) (not d!2361549) (not b!7915756) (not b!7915777) (not b!7915764) (not b!7915778) (not bm!734448) (not b!7915568) (not b!7915567))
(check-sat)
