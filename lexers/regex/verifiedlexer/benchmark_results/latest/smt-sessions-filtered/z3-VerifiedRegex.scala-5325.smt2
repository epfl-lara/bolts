; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272292 () Bool)

(assert start!272292)

(declare-fun res!1170812 () Bool)

(declare-fun e!1778635 () Bool)

(assert (=> start!272292 (=> (not res!1170812) (not e!1778635))))

(declare-datatypes ((T!54836 0))(
  ( (T!54837 (val!10338 Int)) )
))
(declare-datatypes ((List!32979 0))(
  ( (Nil!32860) (Cons!32860 (h!38280 T!54836) (t!229940 List!32979)) )
))
(declare-fun ll!54 () List!32979)

(get-info :version)

(assert (=> start!272292 (= res!1170812 (not ((_ is Nil!32860) ll!54)))))

(assert (=> start!272292 e!1778635))

(declare-fun e!1778638 () Bool)

(assert (=> start!272292 e!1778638))

(declare-fun e!1778637 () Bool)

(assert (=> start!272292 e!1778637))

(declare-fun b!2812488 () Bool)

(declare-fun e!1778639 () Bool)

(declare-fun size!25608 (List!32979) Int)

(assert (=> b!2812488 (= e!1778639 (< (size!25608 (t!229940 ll!54)) (size!25608 ll!54)))))

(declare-fun b!2812489 () Bool)

(declare-fun e!1778634 () Bool)

(assert (=> b!2812489 (= e!1778634 e!1778639)))

(declare-fun res!1170810 () Bool)

(assert (=> b!2812489 (=> res!1170810 e!1778639)))

(declare-fun lt!1004736 () List!32979)

(declare-fun lt!1004740 () List!32979)

(declare-fun ++!8071 (List!32979 List!32979) List!32979)

(declare-fun $colon$colon!571 (List!32979 T!54836) List!32979)

(assert (=> b!2812489 (= res!1170810 (not (= lt!1004736 (++!8071 lt!1004740 ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54))))))))

(declare-fun lt!1004742 () List!32979)

(assert (=> b!2812489 (= lt!1004736 (++!8071 lt!1004740 lt!1004742))))

(declare-fun lt!1004739 () List!32979)

(assert (=> b!2812489 (= lt!1004736 (++!8071 lt!1004739 (t!229940 ll!54)))))

(declare-fun lt!1004743 () List!32979)

(assert (=> b!2812489 (= lt!1004742 (++!8071 lt!1004743 (t!229940 ll!54)))))

(declare-datatypes ((Unit!46864 0))(
  ( (Unit!46865) )
))
(declare-fun lt!1004738 () Unit!46864)

(declare-fun lemmaConcatAssociativity!1676 (List!32979 List!32979 List!32979) Unit!46864)

(assert (=> b!2812489 (= lt!1004738 (lemmaConcatAssociativity!1676 lt!1004740 lt!1004743 (t!229940 ll!54)))))

(declare-fun b!2812490 () Bool)

(declare-fun e!1778636 () Bool)

(assert (=> b!2812490 (= e!1778636 e!1778634)))

(declare-fun res!1170811 () Bool)

(assert (=> b!2812490 (=> res!1170811 e!1778634)))

(declare-fun lt!1004741 () List!32979)

(assert (=> b!2812490 (= res!1170811 (not (= lt!1004741 lt!1004739)))))

(assert (=> b!2812490 (= lt!1004739 (++!8071 lt!1004740 lt!1004743))))

(assert (=> b!2812490 (= lt!1004743 (Cons!32860 (h!38280 ll!54) Nil!32860))))

(declare-fun b!2812491 () Bool)

(declare-fun tp!898123 () Bool)

(declare-fun tp!898122 () Bool)

(assert (=> b!2812491 (= e!1778637 (and tp!898123 tp!898122))))

(declare-fun b!2812492 () Bool)

(declare-fun tp_is_empty!14399 () Bool)

(declare-fun tp!898124 () Bool)

(assert (=> b!2812492 (= e!1778638 (and tp_is_empty!14399 tp!898124))))

(declare-fun b!2812493 () Bool)

(assert (=> b!2812493 (= e!1778635 (not e!1778636))))

(declare-fun res!1170809 () Bool)

(assert (=> b!2812493 (=> res!1170809 e!1778636)))

(declare-datatypes ((Conc!10176 0) (Object!5258 0) (IArray!20357 0) (BalanceConc!19986 0) (List!32981 0))(
  ( (Node!10176 (left!24785 Conc!10176) (right!25115 Conc!10176) (csize!20582 Int) (cheight!10387 Int)) (Leaf!15502 (xs!13288 IArray!20357) (csize!20583 Int)) (Empty!10176) )
  ( (BalanceConc!19985 (value!158163 BalanceConc!19986)) (List!32980 (value!158164 List!32981)) (Character!118 (value!158165 (_ BitVec 16))) (Open!118 (value!158166 Int)) )
  ( (IArray!20358 (innerList!10236 List!32981)) )
  ( (BalanceConc!19987 (c!455708 Conc!10176)) )
  ( (Nil!32861) (Cons!32861 (h!38281 Object!5258) (t!229941 List!32981)) )
))
(declare-datatypes ((Vector!244 0))(
  ( (Vector!245 (underlying!8362 Object!5258) (overflowing!179 List!32979)) )
))
(declare-fun lt!1004737 () Vector!244)

(declare-fun list!12311 (Vector!244) List!32979)

(declare-fun rec!25 (List!32979 Vector!244) Vector!244)

(assert (=> b!2812493 (= res!1170809 (not (= (list!12311 (rec!25 (t!229940 ll!54) lt!1004737)) (++!8071 lt!1004741 (t!229940 ll!54)))))))

(declare-fun $colon+!214 (List!32979 T!54836) List!32979)

(assert (=> b!2812493 (= lt!1004741 ($colon+!214 lt!1004740 (h!38280 ll!54)))))

(assert (=> b!2812493 (= lt!1004741 (list!12311 lt!1004737))))

(declare-fun v!5966 () Vector!244)

(assert (=> b!2812493 (= lt!1004740 (list!12311 v!5966))))

(declare-fun $colon+!215 (Vector!244 T!54836) Vector!244)

(assert (=> b!2812493 (= lt!1004737 ($colon+!215 v!5966 (h!38280 ll!54)))))

(assert (= (and start!272292 res!1170812) b!2812493))

(assert (= (and b!2812493 (not res!1170809)) b!2812490))

(assert (= (and b!2812490 (not res!1170811)) b!2812489))

(assert (= (and b!2812489 (not res!1170810)) b!2812488))

(assert (= (and start!272292 ((_ is Cons!32860) ll!54)) b!2812492))

(assert (= start!272292 b!2812491))

(declare-fun m!3242641 () Bool)

(assert (=> b!2812488 m!3242641))

(declare-fun m!3242643 () Bool)

(assert (=> b!2812488 m!3242643))

(declare-fun m!3242645 () Bool)

(assert (=> b!2812489 m!3242645))

(declare-fun m!3242647 () Bool)

(assert (=> b!2812489 m!3242647))

(declare-fun m!3242649 () Bool)

(assert (=> b!2812489 m!3242649))

(assert (=> b!2812489 m!3242647))

(declare-fun m!3242651 () Bool)

(assert (=> b!2812489 m!3242651))

(declare-fun m!3242653 () Bool)

(assert (=> b!2812489 m!3242653))

(declare-fun m!3242655 () Bool)

(assert (=> b!2812489 m!3242655))

(declare-fun m!3242657 () Bool)

(assert (=> b!2812490 m!3242657))

(declare-fun m!3242659 () Bool)

(assert (=> b!2812493 m!3242659))

(declare-fun m!3242661 () Bool)

(assert (=> b!2812493 m!3242661))

(declare-fun m!3242663 () Bool)

(assert (=> b!2812493 m!3242663))

(declare-fun m!3242665 () Bool)

(assert (=> b!2812493 m!3242665))

(declare-fun m!3242667 () Bool)

(assert (=> b!2812493 m!3242667))

(declare-fun m!3242669 () Bool)

(assert (=> b!2812493 m!3242669))

(assert (=> b!2812493 m!3242659))

(declare-fun m!3242671 () Bool)

(assert (=> b!2812493 m!3242671))

(check-sat (not b!2812493) (not b!2812489) tp_is_empty!14399 (not b!2812488) (not b!2812490) (not b!2812491) (not b!2812492))
(check-sat)
(get-model)

(declare-fun d!816446 () Bool)

(declare-fun e!1778651 () Bool)

(assert (=> d!816446 e!1778651))

(declare-fun res!1170824 () Bool)

(assert (=> d!816446 (=> (not res!1170824) (not e!1778651))))

(declare-fun lt!1004749 () List!32979)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4583 (List!32979) (InoxSet T!54836))

(assert (=> d!816446 (= res!1170824 (= (content!4583 lt!1004749) ((_ map or) (content!4583 lt!1004740) (content!4583 lt!1004743))))))

(declare-fun e!1778650 () List!32979)

(assert (=> d!816446 (= lt!1004749 e!1778650)))

(declare-fun c!455714 () Bool)

(assert (=> d!816446 (= c!455714 ((_ is Nil!32860) lt!1004740))))

(assert (=> d!816446 (= (++!8071 lt!1004740 lt!1004743) lt!1004749)))

(declare-fun b!2812515 () Bool)

(assert (=> b!2812515 (= e!1778650 (Cons!32860 (h!38280 lt!1004740) (++!8071 (t!229940 lt!1004740) lt!1004743)))))

(declare-fun b!2812516 () Bool)

(declare-fun res!1170823 () Bool)

(assert (=> b!2812516 (=> (not res!1170823) (not e!1778651))))

(assert (=> b!2812516 (= res!1170823 (= (size!25608 lt!1004749) (+ (size!25608 lt!1004740) (size!25608 lt!1004743))))))

(declare-fun b!2812514 () Bool)

(assert (=> b!2812514 (= e!1778650 lt!1004743)))

(declare-fun b!2812517 () Bool)

(assert (=> b!2812517 (= e!1778651 (or (not (= lt!1004743 Nil!32860)) (= lt!1004749 lt!1004740)))))

(assert (= (and d!816446 c!455714) b!2812514))

(assert (= (and d!816446 (not c!455714)) b!2812515))

(assert (= (and d!816446 res!1170824) b!2812516))

(assert (= (and b!2812516 res!1170823) b!2812517))

(declare-fun m!3242689 () Bool)

(assert (=> d!816446 m!3242689))

(declare-fun m!3242691 () Bool)

(assert (=> d!816446 m!3242691))

(declare-fun m!3242693 () Bool)

(assert (=> d!816446 m!3242693))

(declare-fun m!3242695 () Bool)

(assert (=> b!2812515 m!3242695))

(declare-fun m!3242697 () Bool)

(assert (=> b!2812516 m!3242697))

(declare-fun m!3242699 () Bool)

(assert (=> b!2812516 m!3242699))

(declare-fun m!3242701 () Bool)

(assert (=> b!2812516 m!3242701))

(assert (=> b!2812490 d!816446))

(declare-fun d!816452 () Bool)

(declare-fun e!1778653 () Bool)

(assert (=> d!816452 e!1778653))

(declare-fun res!1170826 () Bool)

(assert (=> d!816452 (=> (not res!1170826) (not e!1778653))))

(declare-fun lt!1004750 () List!32979)

(assert (=> d!816452 (= res!1170826 (= (content!4583 lt!1004750) ((_ map or) (content!4583 lt!1004740) (content!4583 ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54))))))))

(declare-fun e!1778652 () List!32979)

(assert (=> d!816452 (= lt!1004750 e!1778652)))

(declare-fun c!455715 () Bool)

(assert (=> d!816452 (= c!455715 ((_ is Nil!32860) lt!1004740))))

(assert (=> d!816452 (= (++!8071 lt!1004740 ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54))) lt!1004750)))

(declare-fun b!2812519 () Bool)

(assert (=> b!2812519 (= e!1778652 (Cons!32860 (h!38280 lt!1004740) (++!8071 (t!229940 lt!1004740) ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54)))))))

(declare-fun b!2812520 () Bool)

(declare-fun res!1170825 () Bool)

(assert (=> b!2812520 (=> (not res!1170825) (not e!1778653))))

(assert (=> b!2812520 (= res!1170825 (= (size!25608 lt!1004750) (+ (size!25608 lt!1004740) (size!25608 ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54))))))))

(declare-fun b!2812518 () Bool)

(assert (=> b!2812518 (= e!1778652 ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54)))))

(declare-fun b!2812521 () Bool)

(assert (=> b!2812521 (= e!1778653 (or (not (= ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54)) Nil!32860)) (= lt!1004750 lt!1004740)))))

(assert (= (and d!816452 c!455715) b!2812518))

(assert (= (and d!816452 (not c!455715)) b!2812519))

(assert (= (and d!816452 res!1170826) b!2812520))

(assert (= (and b!2812520 res!1170825) b!2812521))

(declare-fun m!3242703 () Bool)

(assert (=> d!816452 m!3242703))

(assert (=> d!816452 m!3242691))

(assert (=> d!816452 m!3242647))

(declare-fun m!3242705 () Bool)

(assert (=> d!816452 m!3242705))

(assert (=> b!2812519 m!3242647))

(declare-fun m!3242707 () Bool)

(assert (=> b!2812519 m!3242707))

(declare-fun m!3242709 () Bool)

(assert (=> b!2812520 m!3242709))

(assert (=> b!2812520 m!3242699))

(assert (=> b!2812520 m!3242647))

(declare-fun m!3242711 () Bool)

(assert (=> b!2812520 m!3242711))

(assert (=> b!2812489 d!816452))

(declare-fun d!816454 () Bool)

(declare-fun e!1778655 () Bool)

(assert (=> d!816454 e!1778655))

(declare-fun res!1170828 () Bool)

(assert (=> d!816454 (=> (not res!1170828) (not e!1778655))))

(declare-fun lt!1004751 () List!32979)

(assert (=> d!816454 (= res!1170828 (= (content!4583 lt!1004751) ((_ map or) (content!4583 lt!1004740) (content!4583 lt!1004742))))))

(declare-fun e!1778654 () List!32979)

(assert (=> d!816454 (= lt!1004751 e!1778654)))

(declare-fun c!455716 () Bool)

(assert (=> d!816454 (= c!455716 ((_ is Nil!32860) lt!1004740))))

(assert (=> d!816454 (= (++!8071 lt!1004740 lt!1004742) lt!1004751)))

(declare-fun b!2812523 () Bool)

(assert (=> b!2812523 (= e!1778654 (Cons!32860 (h!38280 lt!1004740) (++!8071 (t!229940 lt!1004740) lt!1004742)))))

(declare-fun b!2812524 () Bool)

(declare-fun res!1170827 () Bool)

(assert (=> b!2812524 (=> (not res!1170827) (not e!1778655))))

(assert (=> b!2812524 (= res!1170827 (= (size!25608 lt!1004751) (+ (size!25608 lt!1004740) (size!25608 lt!1004742))))))

(declare-fun b!2812522 () Bool)

(assert (=> b!2812522 (= e!1778654 lt!1004742)))

(declare-fun b!2812525 () Bool)

(assert (=> b!2812525 (= e!1778655 (or (not (= lt!1004742 Nil!32860)) (= lt!1004751 lt!1004740)))))

(assert (= (and d!816454 c!455716) b!2812522))

(assert (= (and d!816454 (not c!455716)) b!2812523))

(assert (= (and d!816454 res!1170828) b!2812524))

(assert (= (and b!2812524 res!1170827) b!2812525))

(declare-fun m!3242713 () Bool)

(assert (=> d!816454 m!3242713))

(assert (=> d!816454 m!3242691))

(declare-fun m!3242715 () Bool)

(assert (=> d!816454 m!3242715))

(declare-fun m!3242717 () Bool)

(assert (=> b!2812523 m!3242717))

(declare-fun m!3242719 () Bool)

(assert (=> b!2812524 m!3242719))

(assert (=> b!2812524 m!3242699))

(declare-fun m!3242721 () Bool)

(assert (=> b!2812524 m!3242721))

(assert (=> b!2812489 d!816454))

(declare-fun d!816456 () Bool)

(assert (=> d!816456 (= (++!8071 (++!8071 lt!1004740 lt!1004743) (t!229940 ll!54)) (++!8071 lt!1004740 (++!8071 lt!1004743 (t!229940 ll!54))))))

(declare-fun lt!1004756 () Unit!46864)

(declare-fun choose!16617 (List!32979 List!32979 List!32979) Unit!46864)

(assert (=> d!816456 (= lt!1004756 (choose!16617 lt!1004740 lt!1004743 (t!229940 ll!54)))))

(assert (=> d!816456 (= (lemmaConcatAssociativity!1676 lt!1004740 lt!1004743 (t!229940 ll!54)) lt!1004756)))

(declare-fun bs!516473 () Bool)

(assert (= bs!516473 d!816456))

(assert (=> bs!516473 m!3242645))

(declare-fun m!3242723 () Bool)

(assert (=> bs!516473 m!3242723))

(declare-fun m!3242725 () Bool)

(assert (=> bs!516473 m!3242725))

(assert (=> bs!516473 m!3242645))

(assert (=> bs!516473 m!3242657))

(declare-fun m!3242727 () Bool)

(assert (=> bs!516473 m!3242727))

(assert (=> bs!516473 m!3242657))

(assert (=> b!2812489 d!816456))

(declare-fun d!816458 () Bool)

(declare-fun e!1778663 () Bool)

(assert (=> d!816458 e!1778663))

(declare-fun res!1170838 () Bool)

(assert (=> d!816458 (=> (not res!1170838) (not e!1778663))))

(declare-fun lt!1004757 () List!32979)

(assert (=> d!816458 (= res!1170838 (= (content!4583 lt!1004757) ((_ map or) (content!4583 lt!1004743) (content!4583 (t!229940 ll!54)))))))

(declare-fun e!1778662 () List!32979)

(assert (=> d!816458 (= lt!1004757 e!1778662)))

(declare-fun c!455721 () Bool)

(assert (=> d!816458 (= c!455721 ((_ is Nil!32860) lt!1004743))))

(assert (=> d!816458 (= (++!8071 lt!1004743 (t!229940 ll!54)) lt!1004757)))

(declare-fun b!2812543 () Bool)

(assert (=> b!2812543 (= e!1778662 (Cons!32860 (h!38280 lt!1004743) (++!8071 (t!229940 lt!1004743) (t!229940 ll!54))))))

(declare-fun b!2812544 () Bool)

(declare-fun res!1170837 () Bool)

(assert (=> b!2812544 (=> (not res!1170837) (not e!1778663))))

(assert (=> b!2812544 (= res!1170837 (= (size!25608 lt!1004757) (+ (size!25608 lt!1004743) (size!25608 (t!229940 ll!54)))))))

(declare-fun b!2812542 () Bool)

(assert (=> b!2812542 (= e!1778662 (t!229940 ll!54))))

(declare-fun b!2812545 () Bool)

(assert (=> b!2812545 (= e!1778663 (or (not (= (t!229940 ll!54) Nil!32860)) (= lt!1004757 lt!1004743)))))

(assert (= (and d!816458 c!455721) b!2812542))

(assert (= (and d!816458 (not c!455721)) b!2812543))

(assert (= (and d!816458 res!1170838) b!2812544))

(assert (= (and b!2812544 res!1170837) b!2812545))

(declare-fun m!3242729 () Bool)

(assert (=> d!816458 m!3242729))

(assert (=> d!816458 m!3242693))

(declare-fun m!3242731 () Bool)

(assert (=> d!816458 m!3242731))

(declare-fun m!3242733 () Bool)

(assert (=> b!2812543 m!3242733))

(declare-fun m!3242735 () Bool)

(assert (=> b!2812544 m!3242735))

(assert (=> b!2812544 m!3242701))

(assert (=> b!2812544 m!3242641))

(assert (=> b!2812489 d!816458))

(declare-fun d!816460 () Bool)

(declare-fun e!1778665 () Bool)

(assert (=> d!816460 e!1778665))

(declare-fun res!1170840 () Bool)

(assert (=> d!816460 (=> (not res!1170840) (not e!1778665))))

(declare-fun lt!1004758 () List!32979)

(assert (=> d!816460 (= res!1170840 (= (content!4583 lt!1004758) ((_ map or) (content!4583 lt!1004739) (content!4583 (t!229940 ll!54)))))))

(declare-fun e!1778664 () List!32979)

(assert (=> d!816460 (= lt!1004758 e!1778664)))

(declare-fun c!455722 () Bool)

(assert (=> d!816460 (= c!455722 ((_ is Nil!32860) lt!1004739))))

(assert (=> d!816460 (= (++!8071 lt!1004739 (t!229940 ll!54)) lt!1004758)))

(declare-fun b!2812547 () Bool)

(assert (=> b!2812547 (= e!1778664 (Cons!32860 (h!38280 lt!1004739) (++!8071 (t!229940 lt!1004739) (t!229940 ll!54))))))

(declare-fun b!2812548 () Bool)

(declare-fun res!1170839 () Bool)

(assert (=> b!2812548 (=> (not res!1170839) (not e!1778665))))

(assert (=> b!2812548 (= res!1170839 (= (size!25608 lt!1004758) (+ (size!25608 lt!1004739) (size!25608 (t!229940 ll!54)))))))

(declare-fun b!2812546 () Bool)

(assert (=> b!2812546 (= e!1778664 (t!229940 ll!54))))

(declare-fun b!2812549 () Bool)

(assert (=> b!2812549 (= e!1778665 (or (not (= (t!229940 ll!54) Nil!32860)) (= lt!1004758 lt!1004739)))))

(assert (= (and d!816460 c!455722) b!2812546))

(assert (= (and d!816460 (not c!455722)) b!2812547))

(assert (= (and d!816460 res!1170840) b!2812548))

(assert (= (and b!2812548 res!1170839) b!2812549))

(declare-fun m!3242737 () Bool)

(assert (=> d!816460 m!3242737))

(declare-fun m!3242739 () Bool)

(assert (=> d!816460 m!3242739))

(assert (=> d!816460 m!3242731))

(declare-fun m!3242741 () Bool)

(assert (=> b!2812547 m!3242741))

(declare-fun m!3242743 () Bool)

(assert (=> b!2812548 m!3242743))

(declare-fun m!3242745 () Bool)

(assert (=> b!2812548 m!3242745))

(assert (=> b!2812548 m!3242641))

(assert (=> b!2812489 d!816460))

(declare-fun d!816462 () Bool)

(assert (=> d!816462 (= ($colon$colon!571 (t!229940 ll!54) (h!38280 ll!54)) (Cons!32860 (h!38280 ll!54) (t!229940 ll!54)))))

(assert (=> b!2812489 d!816462))

(declare-fun d!816464 () Bool)

(declare-fun lt!1004762 () Int)

(assert (=> d!816464 (>= lt!1004762 0)))

(declare-fun e!1778671 () Int)

(assert (=> d!816464 (= lt!1004762 e!1778671)))

(declare-fun c!455727 () Bool)

(assert (=> d!816464 (= c!455727 ((_ is Nil!32860) (t!229940 ll!54)))))

(assert (=> d!816464 (= (size!25608 (t!229940 ll!54)) lt!1004762)))

(declare-fun b!2812562 () Bool)

(assert (=> b!2812562 (= e!1778671 0)))

(declare-fun b!2812563 () Bool)

(assert (=> b!2812563 (= e!1778671 (+ 1 (size!25608 (t!229940 (t!229940 ll!54)))))))

(assert (= (and d!816464 c!455727) b!2812562))

(assert (= (and d!816464 (not c!455727)) b!2812563))

(declare-fun m!3242763 () Bool)

(assert (=> b!2812563 m!3242763))

(assert (=> b!2812488 d!816464))

(declare-fun d!816470 () Bool)

(declare-fun lt!1004763 () Int)

(assert (=> d!816470 (>= lt!1004763 0)))

(declare-fun e!1778672 () Int)

(assert (=> d!816470 (= lt!1004763 e!1778672)))

(declare-fun c!455728 () Bool)

(assert (=> d!816470 (= c!455728 ((_ is Nil!32860) ll!54))))

(assert (=> d!816470 (= (size!25608 ll!54) lt!1004763)))

(declare-fun b!2812564 () Bool)

(assert (=> b!2812564 (= e!1778672 0)))

(declare-fun b!2812565 () Bool)

(assert (=> b!2812565 (= e!1778672 (+ 1 (size!25608 (t!229940 ll!54))))))

(assert (= (and d!816470 c!455728) b!2812564))

(assert (= (and d!816470 (not c!455728)) b!2812565))

(assert (=> b!2812565 m!3242641))

(assert (=> b!2812488 d!816470))

(declare-fun d!816472 () Bool)

(declare-fun e!1778674 () Bool)

(assert (=> d!816472 e!1778674))

(declare-fun res!1170846 () Bool)

(assert (=> d!816472 (=> (not res!1170846) (not e!1778674))))

(declare-fun lt!1004764 () List!32979)

(assert (=> d!816472 (= res!1170846 (= (content!4583 lt!1004764) ((_ map or) (content!4583 lt!1004741) (content!4583 (t!229940 ll!54)))))))

(declare-fun e!1778673 () List!32979)

(assert (=> d!816472 (= lt!1004764 e!1778673)))

(declare-fun c!455729 () Bool)

(assert (=> d!816472 (= c!455729 ((_ is Nil!32860) lt!1004741))))

(assert (=> d!816472 (= (++!8071 lt!1004741 (t!229940 ll!54)) lt!1004764)))

(declare-fun b!2812567 () Bool)

(assert (=> b!2812567 (= e!1778673 (Cons!32860 (h!38280 lt!1004741) (++!8071 (t!229940 lt!1004741) (t!229940 ll!54))))))

(declare-fun b!2812568 () Bool)

(declare-fun res!1170845 () Bool)

(assert (=> b!2812568 (=> (not res!1170845) (not e!1778674))))

(assert (=> b!2812568 (= res!1170845 (= (size!25608 lt!1004764) (+ (size!25608 lt!1004741) (size!25608 (t!229940 ll!54)))))))

(declare-fun b!2812566 () Bool)

(assert (=> b!2812566 (= e!1778673 (t!229940 ll!54))))

(declare-fun b!2812569 () Bool)

(assert (=> b!2812569 (= e!1778674 (or (not (= (t!229940 ll!54) Nil!32860)) (= lt!1004764 lt!1004741)))))

(assert (= (and d!816472 c!455729) b!2812566))

(assert (= (and d!816472 (not c!455729)) b!2812567))

(assert (= (and d!816472 res!1170846) b!2812568))

(assert (= (and b!2812568 res!1170845) b!2812569))

(declare-fun m!3242765 () Bool)

(assert (=> d!816472 m!3242765))

(declare-fun m!3242767 () Bool)

(assert (=> d!816472 m!3242767))

(assert (=> d!816472 m!3242731))

(declare-fun m!3242769 () Bool)

(assert (=> b!2812567 m!3242769))

(declare-fun m!3242771 () Bool)

(assert (=> b!2812568 m!3242771))

(declare-fun m!3242773 () Bool)

(assert (=> b!2812568 m!3242773))

(assert (=> b!2812568 m!3242641))

(assert (=> b!2812493 d!816472))

(declare-fun d!816474 () Bool)

(declare-fun choose!16619 (Vector!244) List!32979)

(assert (=> d!816474 (= (list!12311 v!5966) (choose!16619 v!5966))))

(declare-fun bs!516475 () Bool)

(assert (= bs!516475 d!816474))

(declare-fun m!3242775 () Bool)

(assert (=> bs!516475 m!3242775))

(assert (=> b!2812493 d!816474))

(declare-fun d!816476 () Bool)

(assert (=> d!816476 (= (list!12311 lt!1004737) (choose!16619 lt!1004737))))

(declare-fun bs!516476 () Bool)

(assert (= bs!516476 d!816476))

(declare-fun m!3242777 () Bool)

(assert (=> bs!516476 m!3242777))

(assert (=> b!2812493 d!816476))

(declare-fun d!816478 () Bool)

(declare-fun lt!1004803 () Vector!244)

(assert (=> d!816478 (= (list!12311 lt!1004803) (++!8071 (list!12311 lt!1004737) (t!229940 ll!54)))))

(declare-fun e!1778684 () Vector!244)

(assert (=> d!816478 (= lt!1004803 e!1778684)))

(declare-fun c!455738 () Bool)

(assert (=> d!816478 (= c!455738 ((_ is Nil!32860) (t!229940 ll!54)))))

(assert (=> d!816478 (= (rec!25 (t!229940 ll!54) lt!1004737) lt!1004803)))

(declare-fun b!2812588 () Bool)

(assert (=> b!2812588 (= e!1778684 lt!1004737)))

(declare-fun b!2812589 () Bool)

(declare-fun lt!1004806 () Vector!244)

(assert (=> b!2812589 (= e!1778684 (rec!25 (t!229940 (t!229940 ll!54)) lt!1004806))))

(declare-fun lt!1004805 () List!32979)

(assert (=> b!2812589 (= lt!1004805 (list!12311 lt!1004737))))

(declare-fun lt!1004802 () List!32979)

(assert (=> b!2812589 (= lt!1004802 (Cons!32860 (h!38280 (t!229940 ll!54)) Nil!32860))))

(declare-fun lt!1004804 () Unit!46864)

(assert (=> b!2812589 (= lt!1004804 (lemmaConcatAssociativity!1676 lt!1004805 lt!1004802 (t!229940 (t!229940 ll!54))))))

(assert (=> b!2812589 (= (++!8071 (++!8071 lt!1004805 lt!1004802) (t!229940 (t!229940 ll!54))) (++!8071 lt!1004805 (++!8071 lt!1004802 (t!229940 (t!229940 ll!54)))))))

(declare-fun lt!1004801 () Unit!46864)

(assert (=> b!2812589 (= lt!1004801 lt!1004804)))

(assert (=> b!2812589 (= lt!1004806 ($colon+!215 lt!1004737 (h!38280 (t!229940 ll!54))))))

(assert (=> b!2812589 (= (list!12311 lt!1004806) ($colon+!214 (list!12311 lt!1004737) (h!38280 (t!229940 ll!54))))))

(assert (= (and d!816478 c!455738) b!2812588))

(assert (= (and d!816478 (not c!455738)) b!2812589))

(declare-fun m!3242821 () Bool)

(assert (=> d!816478 m!3242821))

(assert (=> d!816478 m!3242661))

(assert (=> d!816478 m!3242661))

(declare-fun m!3242823 () Bool)

(assert (=> d!816478 m!3242823))

(assert (=> b!2812589 m!3242661))

(declare-fun m!3242825 () Bool)

(assert (=> b!2812589 m!3242825))

(assert (=> b!2812589 m!3242661))

(declare-fun m!3242827 () Bool)

(assert (=> b!2812589 m!3242827))

(declare-fun m!3242829 () Bool)

(assert (=> b!2812589 m!3242829))

(declare-fun m!3242831 () Bool)

(assert (=> b!2812589 m!3242831))

(declare-fun m!3242833 () Bool)

(assert (=> b!2812589 m!3242833))

(assert (=> b!2812589 m!3242831))

(declare-fun m!3242835 () Bool)

(assert (=> b!2812589 m!3242835))

(declare-fun m!3242837 () Bool)

(assert (=> b!2812589 m!3242837))

(assert (=> b!2812589 m!3242837))

(declare-fun m!3242841 () Bool)

(assert (=> b!2812589 m!3242841))

(declare-fun m!3242843 () Bool)

(assert (=> b!2812589 m!3242843))

(assert (=> b!2812493 d!816478))

(declare-fun d!816490 () Bool)

(declare-fun lt!1004814 () Vector!244)

(assert (=> d!816490 (= (list!12311 lt!1004814) ($colon+!214 (list!12311 v!5966) (h!38280 ll!54)))))

(declare-fun choose!16620 (Vector!244 T!54836) Vector!244)

(assert (=> d!816490 (= lt!1004814 (choose!16620 v!5966 (h!38280 ll!54)))))

(assert (=> d!816490 (= ($colon+!215 v!5966 (h!38280 ll!54)) lt!1004814)))

(declare-fun bs!516480 () Bool)

(assert (= bs!516480 d!816490))

(declare-fun m!3242851 () Bool)

(assert (=> bs!516480 m!3242851))

(assert (=> bs!516480 m!3242665))

(assert (=> bs!516480 m!3242665))

(declare-fun m!3242853 () Bool)

(assert (=> bs!516480 m!3242853))

(declare-fun m!3242855 () Bool)

(assert (=> bs!516480 m!3242855))

(assert (=> b!2812493 d!816490))

(declare-fun b!2812643 () Bool)

(declare-fun e!1778711 () Bool)

(declare-fun call!183135 () (_ BitVec 32))

(declare-fun call!183136 () (_ BitVec 32))

(assert (=> b!2812643 (= e!1778711 (= call!183135 call!183136))))

(declare-fun b!2812644 () Bool)

(assert (=> b!2812644 (= e!1778711 (= call!183135 (bvadd call!183136 #b00000000000000000000000000000001)))))

(declare-fun b!2812645 () Bool)

(declare-fun res!1170868 () Bool)

(declare-fun e!1778713 () Bool)

(assert (=> b!2812645 (=> (not res!1170868) (not e!1778713))))

(declare-fun lt!1004821 () List!32979)

(assert (=> b!2812645 (= res!1170868 (= (content!4583 lt!1004821) ((_ map or) (content!4583 lt!1004740) (store ((as const (Array T!54836 Bool)) false) (h!38280 ll!54) true))))))

(declare-fun d!816496 () Bool)

(assert (=> d!816496 e!1778713))

(declare-fun res!1170867 () Bool)

(assert (=> d!816496 (=> (not res!1170867) (not e!1778713))))

(assert (=> d!816496 (= res!1170867 ((_ is Cons!32860) lt!1004821))))

(declare-fun e!1778712 () List!32979)

(assert (=> d!816496 (= lt!1004821 e!1778712)))

(declare-fun c!455749 () Bool)

(assert (=> d!816496 (= c!455749 ((_ is Nil!32860) lt!1004740))))

(assert (=> d!816496 (= ($colon+!214 lt!1004740 (h!38280 ll!54)) lt!1004821)))

(declare-fun bm!183130 () Bool)

(declare-fun isize!72 (List!32979) (_ BitVec 32))

(assert (=> bm!183130 (= call!183136 (isize!72 lt!1004740))))

(declare-fun b!2812646 () Bool)

(declare-fun res!1170866 () Bool)

(assert (=> b!2812646 (=> (not res!1170866) (not e!1778713))))

(assert (=> b!2812646 (= res!1170866 e!1778711)))

(declare-fun c!455750 () Bool)

(assert (=> b!2812646 (= c!455750 (bvslt (isize!72 lt!1004740) #b01111111111111111111111111111111))))

(declare-fun bm!183131 () Bool)

(assert (=> bm!183131 (= call!183135 (isize!72 lt!1004821))))

(declare-fun b!2812647 () Bool)

(assert (=> b!2812647 (= e!1778712 (Cons!32860 (h!38280 lt!1004740) ($colon+!214 (t!229940 lt!1004740) (h!38280 ll!54))))))

(declare-fun b!2812648 () Bool)

(declare-fun res!1170865 () Bool)

(assert (=> b!2812648 (=> (not res!1170865) (not e!1778713))))

(assert (=> b!2812648 (= res!1170865 (= (size!25608 lt!1004821) (+ (size!25608 lt!1004740) 1)))))

(declare-fun b!2812649 () Bool)

(assert (=> b!2812649 (= e!1778713 (= lt!1004821 (++!8071 lt!1004740 (Cons!32860 (h!38280 ll!54) Nil!32860))))))

(declare-fun b!2812650 () Bool)

(assert (=> b!2812650 (= e!1778712 (Cons!32860 (h!38280 ll!54) lt!1004740))))

(assert (= (and d!816496 c!455749) b!2812650))

(assert (= (and d!816496 (not c!455749)) b!2812647))

(assert (= (and d!816496 res!1170867) b!2812648))

(assert (= (and b!2812648 res!1170865) b!2812646))

(assert (= (and b!2812646 c!455750) b!2812644))

(assert (= (and b!2812646 (not c!455750)) b!2812643))

(assert (= (or b!2812644 b!2812643) bm!183130))

(assert (= (or b!2812644 b!2812643) bm!183131))

(assert (= (and b!2812646 res!1170866) b!2812645))

(assert (= (and b!2812645 res!1170868) b!2812649))

(declare-fun m!3242897 () Bool)

(assert (=> b!2812645 m!3242897))

(assert (=> b!2812645 m!3242691))

(declare-fun m!3242899 () Bool)

(assert (=> b!2812645 m!3242899))

(declare-fun m!3242901 () Bool)

(assert (=> bm!183130 m!3242901))

(declare-fun m!3242903 () Bool)

(assert (=> b!2812648 m!3242903))

(assert (=> b!2812648 m!3242699))

(assert (=> b!2812646 m!3242901))

(declare-fun m!3242905 () Bool)

(assert (=> bm!183131 m!3242905))

(declare-fun m!3242907 () Bool)

(assert (=> b!2812647 m!3242907))

(declare-fun m!3242909 () Bool)

(assert (=> b!2812649 m!3242909))

(assert (=> b!2812493 d!816496))

(declare-fun d!816506 () Bool)

(assert (=> d!816506 (= (list!12311 (rec!25 (t!229940 ll!54) lt!1004737)) (choose!16619 (rec!25 (t!229940 ll!54) lt!1004737)))))

(declare-fun bs!516481 () Bool)

(assert (= bs!516481 d!816506))

(assert (=> bs!516481 m!3242659))

(declare-fun m!3242911 () Bool)

(assert (=> bs!516481 m!3242911))

(assert (=> b!2812493 d!816506))

(declare-fun b!2812655 () Bool)

(declare-fun e!1778716 () Bool)

(declare-fun tp!898137 () Bool)

(assert (=> b!2812655 (= e!1778716 (and tp_is_empty!14399 tp!898137))))

(assert (=> b!2812492 (= tp!898124 e!1778716)))

(assert (= (and b!2812492 ((_ is Cons!32860) (t!229940 ll!54))) b!2812655))

(declare-fun b!2812665 () Bool)

(declare-fun e!1778722 () Bool)

(declare-fun tp!898142 () Bool)

(declare-fun inv!44617 (Conc!10176) Bool)

(assert (=> b!2812665 (= e!1778722 (and (inv!44617 (c!455708 (value!158163 (underlying!8362 v!5966)))) tp!898142))))

(declare-fun b!2812664 () Bool)

(declare-fun e!1778721 () Bool)

(declare-fun inv!44618 (BalanceConc!19986) Bool)

(assert (=> b!2812664 (= e!1778721 (and (inv!44618 (value!158163 (underlying!8362 v!5966))) e!1778722))))

(declare-fun b!2812666 () Bool)

(declare-fun tp!898143 () Bool)

(assert (=> b!2812666 (= e!1778721 tp!898143)))

(assert (=> b!2812491 (= tp!898123 e!1778721)))

(assert (= b!2812664 b!2812665))

(assert (= (and b!2812491 ((_ is BalanceConc!19985) (underlying!8362 v!5966))) b!2812664))

(assert (= (and b!2812491 ((_ is List!32980) (underlying!8362 v!5966))) b!2812666))

(declare-fun m!3242913 () Bool)

(assert (=> b!2812665 m!3242913))

(declare-fun m!3242915 () Bool)

(assert (=> b!2812664 m!3242915))

(declare-fun b!2812667 () Bool)

(declare-fun e!1778723 () Bool)

(declare-fun tp!898144 () Bool)

(assert (=> b!2812667 (= e!1778723 (and tp_is_empty!14399 tp!898144))))

(assert (=> b!2812491 (= tp!898122 e!1778723)))

(assert (= (and b!2812491 ((_ is Cons!32860) (overflowing!179 v!5966))) b!2812667))

(check-sat (not d!816474) (not d!816446) (not b!2812523) (not d!816472) tp_is_empty!14399 (not b!2812565) (not d!816456) (not bm!183130) (not b!2812515) (not b!2812563) (not d!816506) (not b!2812649) (not b!2812648) (not d!816460) (not b!2812524) (not d!816454) (not b!2812667) (not b!2812520) (not b!2812543) (not b!2812655) (not b!2812647) (not b!2812589) (not d!816490) (not d!816452) (not b!2812568) (not b!2812666) (not b!2812516) (not b!2812519) (not b!2812664) (not b!2812547) (not b!2812645) (not d!816476) (not d!816478) (not d!816458) (not bm!183131) (not b!2812548) (not b!2812567) (not b!2812665) (not b!2812646) (not b!2812544))
(check-sat)
