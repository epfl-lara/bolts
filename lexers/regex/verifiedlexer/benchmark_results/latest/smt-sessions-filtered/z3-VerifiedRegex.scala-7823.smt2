; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410888 () Bool)

(assert start!410888)

(declare-fun b!4277461 () Bool)

(declare-fun e!2655658 () Bool)

(declare-fun tp_is_empty!22949 () Bool)

(declare-fun tp!1308872 () Bool)

(assert (=> b!4277461 (= e!2655658 (and tp_is_empty!22949 tp!1308872))))

(declare-fun b!4277462 () Bool)

(declare-fun e!2655659 () Bool)

(declare-fun tp!1308871 () Bool)

(declare-datatypes ((T!79976 0))(
  ( (T!79977 (val!15270 Int)) )
))
(declare-datatypes ((List!47479 0))(
  ( (Nil!47355) (Cons!47355 (h!52775 T!79976) (t!354046 List!47479)) )
))
(declare-datatypes ((IArray!28679 0))(
  ( (IArray!28680 (innerList!14397 List!47479)) )
))
(declare-datatypes ((Conc!14337 0))(
  ( (Node!14337 (left!35288 Conc!14337) (right!35618 Conc!14337) (csize!28904 Int) (cheight!14548 Int)) (Leaf!22161 (xs!17643 IArray!28679) (csize!28905 Int)) (Empty!14337) )
))
(declare-fun t!3602 () Conc!14337)

(declare-fun tp!1308873 () Bool)

(declare-fun inv!62708 (Conc!14337) Bool)

(assert (=> b!4277462 (= e!2655659 (and (inv!62708 (left!35288 t!3602)) tp!1308871 (inv!62708 (right!35618 t!3602)) tp!1308873))))

(declare-fun b!4277463 () Bool)

(declare-fun e!2655661 () Bool)

(declare-fun tp!1308874 () Bool)

(assert (=> b!4277463 (= e!2655661 tp!1308874)))

(declare-fun b!4277464 () Bool)

(declare-fun inv!62709 (IArray!28679) Bool)

(assert (=> b!4277464 (= e!2655659 (and (inv!62709 (xs!17643 t!3602)) e!2655661))))

(declare-fun res!1756299 () Bool)

(declare-fun e!2655660 () Bool)

(assert (=> start!410888 (=> (not res!1756299) (not e!2655660))))

(get-info :version)

(assert (=> start!410888 (= res!1756299 (and (not ((_ is Empty!14337) t!3602)) (not ((_ is Leaf!22161) t!3602))))))

(assert (=> start!410888 e!2655660))

(assert (=> start!410888 (and (inv!62708 t!3602) e!2655659)))

(assert (=> start!410888 e!2655658))

(declare-fun b!4277465 () Bool)

(declare-fun height!1887 (Conc!14337) Int)

(assert (=> b!4277465 (= e!2655660 (not (< (height!1887 (right!35618 t!3602)) (height!1887 t!3602))))))

(declare-fun lt!1514031 () List!47479)

(declare-fun lt!1514032 () List!47479)

(declare-fun acc!259 () List!47479)

(declare-fun ++!12101 (List!47479 List!47479) List!47479)

(assert (=> b!4277465 (= (++!12101 (++!12101 lt!1514031 lt!1514032) acc!259) (++!12101 lt!1514031 (++!12101 lt!1514032 acc!259)))))

(declare-datatypes ((Unit!66309 0))(
  ( (Unit!66310) )
))
(declare-fun lt!1514030 () Unit!66309)

(declare-fun lemmaConcatAssociativity!2732 (List!47479 List!47479 List!47479) Unit!66309)

(assert (=> b!4277465 (= lt!1514030 (lemmaConcatAssociativity!2732 lt!1514031 lt!1514032 acc!259))))

(declare-fun list!17271 (Conc!14337) List!47479)

(assert (=> b!4277465 (= lt!1514032 (list!17271 (right!35618 t!3602)))))

(assert (=> b!4277465 (= lt!1514031 (list!17271 (left!35288 t!3602)))))

(assert (= (and start!410888 res!1756299) b!4277465))

(assert (= (and start!410888 ((_ is Node!14337) t!3602)) b!4277462))

(assert (= b!4277464 b!4277463))

(assert (= (and start!410888 ((_ is Leaf!22161) t!3602)) b!4277464))

(assert (= (and start!410888 ((_ is Cons!47355) acc!259)) b!4277461))

(declare-fun m!4873499 () Bool)

(assert (=> b!4277462 m!4873499))

(declare-fun m!4873501 () Bool)

(assert (=> b!4277462 m!4873501))

(declare-fun m!4873503 () Bool)

(assert (=> b!4277464 m!4873503))

(declare-fun m!4873505 () Bool)

(assert (=> start!410888 m!4873505))

(declare-fun m!4873507 () Bool)

(assert (=> b!4277465 m!4873507))

(declare-fun m!4873509 () Bool)

(assert (=> b!4277465 m!4873509))

(declare-fun m!4873511 () Bool)

(assert (=> b!4277465 m!4873511))

(declare-fun m!4873513 () Bool)

(assert (=> b!4277465 m!4873513))

(declare-fun m!4873515 () Bool)

(assert (=> b!4277465 m!4873515))

(declare-fun m!4873517 () Bool)

(assert (=> b!4277465 m!4873517))

(declare-fun m!4873519 () Bool)

(assert (=> b!4277465 m!4873519))

(assert (=> b!4277465 m!4873511))

(declare-fun m!4873521 () Bool)

(assert (=> b!4277465 m!4873521))

(assert (=> b!4277465 m!4873515))

(declare-fun m!4873523 () Bool)

(assert (=> b!4277465 m!4873523))

(check-sat (not b!4277462) (not b!4277464) (not b!4277461) (not start!410888) tp_is_empty!22949 (not b!4277463) (not b!4277465))
(check-sat)
(get-model)

(declare-fun d!1262726 () Bool)

(declare-fun c!728513 () Bool)

(assert (=> d!1262726 (= c!728513 ((_ is Node!14337) t!3602))))

(declare-fun e!2655670 () Bool)

(assert (=> d!1262726 (= (inv!62708 t!3602) e!2655670)))

(declare-fun b!4277478 () Bool)

(declare-fun inv!62710 (Conc!14337) Bool)

(assert (=> b!4277478 (= e!2655670 (inv!62710 t!3602))))

(declare-fun b!4277479 () Bool)

(declare-fun e!2655671 () Bool)

(assert (=> b!4277479 (= e!2655670 e!2655671)))

(declare-fun res!1756304 () Bool)

(assert (=> b!4277479 (= res!1756304 (not ((_ is Leaf!22161) t!3602)))))

(assert (=> b!4277479 (=> res!1756304 e!2655671)))

(declare-fun b!4277480 () Bool)

(declare-fun inv!62712 (Conc!14337) Bool)

(assert (=> b!4277480 (= e!2655671 (inv!62712 t!3602))))

(assert (= (and d!1262726 c!728513) b!4277478))

(assert (= (and d!1262726 (not c!728513)) b!4277479))

(assert (= (and b!4277479 (not res!1756304)) b!4277480))

(declare-fun m!4873527 () Bool)

(assert (=> b!4277478 m!4873527))

(declare-fun m!4873529 () Bool)

(assert (=> b!4277480 m!4873529))

(assert (=> start!410888 d!1262726))

(declare-fun d!1262730 () Bool)

(declare-fun size!34665 (List!47479) Int)

(assert (=> d!1262730 (= (inv!62709 (xs!17643 t!3602)) (<= (size!34665 (innerList!14397 (xs!17643 t!3602))) 2147483647))))

(declare-fun bs!602588 () Bool)

(assert (= bs!602588 d!1262730))

(declare-fun m!4873539 () Bool)

(assert (=> bs!602588 m!4873539))

(assert (=> b!4277464 d!1262730))

(declare-fun e!2655687 () Bool)

(declare-fun lt!1514038 () List!47479)

(declare-fun b!4277510 () Bool)

(assert (=> b!4277510 (= e!2655687 (or (not (= (++!12101 lt!1514032 acc!259) Nil!47355)) (= lt!1514038 lt!1514031)))))

(declare-fun b!4277509 () Bool)

(declare-fun res!1756317 () Bool)

(assert (=> b!4277509 (=> (not res!1756317) (not e!2655687))))

(assert (=> b!4277509 (= res!1756317 (= (size!34665 lt!1514038) (+ (size!34665 lt!1514031) (size!34665 (++!12101 lt!1514032 acc!259)))))))

(declare-fun b!4277507 () Bool)

(declare-fun e!2655686 () List!47479)

(assert (=> b!4277507 (= e!2655686 (++!12101 lt!1514032 acc!259))))

(declare-fun d!1262736 () Bool)

(assert (=> d!1262736 e!2655687))

(declare-fun res!1756318 () Bool)

(assert (=> d!1262736 (=> (not res!1756318) (not e!2655687))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7488 (List!47479) (InoxSet T!79976))

(assert (=> d!1262736 (= res!1756318 (= (content!7488 lt!1514038) ((_ map or) (content!7488 lt!1514031) (content!7488 (++!12101 lt!1514032 acc!259)))))))

(assert (=> d!1262736 (= lt!1514038 e!2655686)))

(declare-fun c!728521 () Bool)

(assert (=> d!1262736 (= c!728521 ((_ is Nil!47355) lt!1514031))))

(assert (=> d!1262736 (= (++!12101 lt!1514031 (++!12101 lt!1514032 acc!259)) lt!1514038)))

(declare-fun b!4277508 () Bool)

(assert (=> b!4277508 (= e!2655686 (Cons!47355 (h!52775 lt!1514031) (++!12101 (t!354046 lt!1514031) (++!12101 lt!1514032 acc!259))))))

(assert (= (and d!1262736 c!728521) b!4277507))

(assert (= (and d!1262736 (not c!728521)) b!4277508))

(assert (= (and d!1262736 res!1756318) b!4277509))

(assert (= (and b!4277509 res!1756317) b!4277510))

(declare-fun m!4873555 () Bool)

(assert (=> b!4277509 m!4873555))

(declare-fun m!4873557 () Bool)

(assert (=> b!4277509 m!4873557))

(assert (=> b!4277509 m!4873515))

(declare-fun m!4873559 () Bool)

(assert (=> b!4277509 m!4873559))

(declare-fun m!4873561 () Bool)

(assert (=> d!1262736 m!4873561))

(declare-fun m!4873563 () Bool)

(assert (=> d!1262736 m!4873563))

(assert (=> d!1262736 m!4873515))

(declare-fun m!4873565 () Bool)

(assert (=> d!1262736 m!4873565))

(assert (=> b!4277508 m!4873515))

(declare-fun m!4873567 () Bool)

(assert (=> b!4277508 m!4873567))

(assert (=> b!4277465 d!1262736))

(declare-fun b!4277534 () Bool)

(declare-fun e!2655699 () List!47479)

(assert (=> b!4277534 (= e!2655699 (++!12101 (list!17271 (left!35288 (left!35288 t!3602))) (list!17271 (right!35618 (left!35288 t!3602)))))))

(declare-fun d!1262740 () Bool)

(declare-fun c!728532 () Bool)

(assert (=> d!1262740 (= c!728532 ((_ is Empty!14337) (left!35288 t!3602)))))

(declare-fun e!2655698 () List!47479)

(assert (=> d!1262740 (= (list!17271 (left!35288 t!3602)) e!2655698)))

(declare-fun b!4277531 () Bool)

(assert (=> b!4277531 (= e!2655698 Nil!47355)))

(declare-fun b!4277532 () Bool)

(assert (=> b!4277532 (= e!2655698 e!2655699)))

(declare-fun c!728533 () Bool)

(assert (=> b!4277532 (= c!728533 ((_ is Leaf!22161) (left!35288 t!3602)))))

(declare-fun b!4277533 () Bool)

(declare-fun list!17272 (IArray!28679) List!47479)

(assert (=> b!4277533 (= e!2655699 (list!17272 (xs!17643 (left!35288 t!3602))))))

(assert (= (and d!1262740 c!728532) b!4277531))

(assert (= (and d!1262740 (not c!728532)) b!4277532))

(assert (= (and b!4277532 c!728533) b!4277533))

(assert (= (and b!4277532 (not c!728533)) b!4277534))

(declare-fun m!4873577 () Bool)

(assert (=> b!4277534 m!4873577))

(declare-fun m!4873579 () Bool)

(assert (=> b!4277534 m!4873579))

(assert (=> b!4277534 m!4873577))

(assert (=> b!4277534 m!4873579))

(declare-fun m!4873581 () Bool)

(assert (=> b!4277534 m!4873581))

(declare-fun m!4873583 () Bool)

(assert (=> b!4277533 m!4873583))

(assert (=> b!4277465 d!1262740))

(declare-fun e!2655701 () Bool)

(declare-fun lt!1514039 () List!47479)

(declare-fun b!4277538 () Bool)

(assert (=> b!4277538 (= e!2655701 (or (not (= acc!259 Nil!47355)) (= lt!1514039 (++!12101 lt!1514031 lt!1514032))))))

(declare-fun b!4277537 () Bool)

(declare-fun res!1756319 () Bool)

(assert (=> b!4277537 (=> (not res!1756319) (not e!2655701))))

(assert (=> b!4277537 (= res!1756319 (= (size!34665 lt!1514039) (+ (size!34665 (++!12101 lt!1514031 lt!1514032)) (size!34665 acc!259))))))

(declare-fun b!4277535 () Bool)

(declare-fun e!2655700 () List!47479)

(assert (=> b!4277535 (= e!2655700 acc!259)))

(declare-fun d!1262744 () Bool)

(assert (=> d!1262744 e!2655701))

(declare-fun res!1756320 () Bool)

(assert (=> d!1262744 (=> (not res!1756320) (not e!2655701))))

(assert (=> d!1262744 (= res!1756320 (= (content!7488 lt!1514039) ((_ map or) (content!7488 (++!12101 lt!1514031 lt!1514032)) (content!7488 acc!259))))))

(assert (=> d!1262744 (= lt!1514039 e!2655700)))

(declare-fun c!728534 () Bool)

(assert (=> d!1262744 (= c!728534 ((_ is Nil!47355) (++!12101 lt!1514031 lt!1514032)))))

(assert (=> d!1262744 (= (++!12101 (++!12101 lt!1514031 lt!1514032) acc!259) lt!1514039)))

(declare-fun b!4277536 () Bool)

(assert (=> b!4277536 (= e!2655700 (Cons!47355 (h!52775 (++!12101 lt!1514031 lt!1514032)) (++!12101 (t!354046 (++!12101 lt!1514031 lt!1514032)) acc!259)))))

(assert (= (and d!1262744 c!728534) b!4277535))

(assert (= (and d!1262744 (not c!728534)) b!4277536))

(assert (= (and d!1262744 res!1756320) b!4277537))

(assert (= (and b!4277537 res!1756319) b!4277538))

(declare-fun m!4873585 () Bool)

(assert (=> b!4277537 m!4873585))

(assert (=> b!4277537 m!4873511))

(declare-fun m!4873587 () Bool)

(assert (=> b!4277537 m!4873587))

(declare-fun m!4873589 () Bool)

(assert (=> b!4277537 m!4873589))

(declare-fun m!4873591 () Bool)

(assert (=> d!1262744 m!4873591))

(assert (=> d!1262744 m!4873511))

(declare-fun m!4873593 () Bool)

(assert (=> d!1262744 m!4873593))

(declare-fun m!4873595 () Bool)

(assert (=> d!1262744 m!4873595))

(declare-fun m!4873597 () Bool)

(assert (=> b!4277536 m!4873597))

(assert (=> b!4277465 d!1262744))

(declare-fun b!4277542 () Bool)

(declare-fun e!2655703 () List!47479)

(assert (=> b!4277542 (= e!2655703 (++!12101 (list!17271 (left!35288 (right!35618 t!3602))) (list!17271 (right!35618 (right!35618 t!3602)))))))

(declare-fun d!1262746 () Bool)

(declare-fun c!728535 () Bool)

(assert (=> d!1262746 (= c!728535 ((_ is Empty!14337) (right!35618 t!3602)))))

(declare-fun e!2655702 () List!47479)

(assert (=> d!1262746 (= (list!17271 (right!35618 t!3602)) e!2655702)))

(declare-fun b!4277539 () Bool)

(assert (=> b!4277539 (= e!2655702 Nil!47355)))

(declare-fun b!4277540 () Bool)

(assert (=> b!4277540 (= e!2655702 e!2655703)))

(declare-fun c!728536 () Bool)

(assert (=> b!4277540 (= c!728536 ((_ is Leaf!22161) (right!35618 t!3602)))))

(declare-fun b!4277541 () Bool)

(assert (=> b!4277541 (= e!2655703 (list!17272 (xs!17643 (right!35618 t!3602))))))

(assert (= (and d!1262746 c!728535) b!4277539))

(assert (= (and d!1262746 (not c!728535)) b!4277540))

(assert (= (and b!4277540 c!728536) b!4277541))

(assert (= (and b!4277540 (not c!728536)) b!4277542))

(declare-fun m!4873599 () Bool)

(assert (=> b!4277542 m!4873599))

(declare-fun m!4873601 () Bool)

(assert (=> b!4277542 m!4873601))

(assert (=> b!4277542 m!4873599))

(assert (=> b!4277542 m!4873601))

(declare-fun m!4873603 () Bool)

(assert (=> b!4277542 m!4873603))

(declare-fun m!4873605 () Bool)

(assert (=> b!4277541 m!4873605))

(assert (=> b!4277465 d!1262746))

(declare-fun d!1262748 () Bool)

(assert (=> d!1262748 (= (++!12101 (++!12101 lt!1514031 lt!1514032) acc!259) (++!12101 lt!1514031 (++!12101 lt!1514032 acc!259)))))

(declare-fun lt!1514048 () Unit!66309)

(declare-fun choose!26086 (List!47479 List!47479 List!47479) Unit!66309)

(assert (=> d!1262748 (= lt!1514048 (choose!26086 lt!1514031 lt!1514032 acc!259))))

(assert (=> d!1262748 (= (lemmaConcatAssociativity!2732 lt!1514031 lt!1514032 acc!259) lt!1514048)))

(declare-fun bs!602590 () Bool)

(assert (= bs!602590 d!1262748))

(assert (=> bs!602590 m!4873515))

(assert (=> bs!602590 m!4873515))

(assert (=> bs!602590 m!4873517))

(assert (=> bs!602590 m!4873511))

(assert (=> bs!602590 m!4873521))

(assert (=> bs!602590 m!4873511))

(declare-fun m!4873639 () Bool)

(assert (=> bs!602590 m!4873639))

(assert (=> b!4277465 d!1262748))

(declare-fun d!1262758 () Bool)

(assert (=> d!1262758 (= (height!1887 (right!35618 t!3602)) (ite ((_ is Empty!14337) (right!35618 t!3602)) 0 (ite ((_ is Leaf!22161) (right!35618 t!3602)) 1 (cheight!14548 (right!35618 t!3602)))))))

(assert (=> b!4277465 d!1262758))

(declare-fun d!1262762 () Bool)

(assert (=> d!1262762 (= (height!1887 t!3602) (ite ((_ is Empty!14337) t!3602) 0 (ite ((_ is Leaf!22161) t!3602) 1 (cheight!14548 t!3602))))))

(assert (=> b!4277465 d!1262762))

(declare-fun e!2655713 () Bool)

(declare-fun lt!1514049 () List!47479)

(declare-fun b!4277562 () Bool)

(assert (=> b!4277562 (= e!2655713 (or (not (= lt!1514032 Nil!47355)) (= lt!1514049 lt!1514031)))))

(declare-fun b!4277561 () Bool)

(declare-fun res!1756327 () Bool)

(assert (=> b!4277561 (=> (not res!1756327) (not e!2655713))))

(assert (=> b!4277561 (= res!1756327 (= (size!34665 lt!1514049) (+ (size!34665 lt!1514031) (size!34665 lt!1514032))))))

(declare-fun b!4277559 () Bool)

(declare-fun e!2655712 () List!47479)

(assert (=> b!4277559 (= e!2655712 lt!1514032)))

(declare-fun d!1262764 () Bool)

(assert (=> d!1262764 e!2655713))

(declare-fun res!1756328 () Bool)

(assert (=> d!1262764 (=> (not res!1756328) (not e!2655713))))

(assert (=> d!1262764 (= res!1756328 (= (content!7488 lt!1514049) ((_ map or) (content!7488 lt!1514031) (content!7488 lt!1514032))))))

(assert (=> d!1262764 (= lt!1514049 e!2655712)))

(declare-fun c!728542 () Bool)

(assert (=> d!1262764 (= c!728542 ((_ is Nil!47355) lt!1514031))))

(assert (=> d!1262764 (= (++!12101 lt!1514031 lt!1514032) lt!1514049)))

(declare-fun b!4277560 () Bool)

(assert (=> b!4277560 (= e!2655712 (Cons!47355 (h!52775 lt!1514031) (++!12101 (t!354046 lt!1514031) lt!1514032)))))

(assert (= (and d!1262764 c!728542) b!4277559))

(assert (= (and d!1262764 (not c!728542)) b!4277560))

(assert (= (and d!1262764 res!1756328) b!4277561))

(assert (= (and b!4277561 res!1756327) b!4277562))

(declare-fun m!4873649 () Bool)

(assert (=> b!4277561 m!4873649))

(assert (=> b!4277561 m!4873557))

(declare-fun m!4873651 () Bool)

(assert (=> b!4277561 m!4873651))

(declare-fun m!4873653 () Bool)

(assert (=> d!1262764 m!4873653))

(assert (=> d!1262764 m!4873563))

(declare-fun m!4873655 () Bool)

(assert (=> d!1262764 m!4873655))

(declare-fun m!4873657 () Bool)

(assert (=> b!4277560 m!4873657))

(assert (=> b!4277465 d!1262764))

(declare-fun b!4277569 () Bool)

(declare-fun e!2655717 () Bool)

(declare-fun lt!1514050 () List!47479)

(assert (=> b!4277569 (= e!2655717 (or (not (= acc!259 Nil!47355)) (= lt!1514050 lt!1514032)))))

(declare-fun b!4277568 () Bool)

(declare-fun res!1756330 () Bool)

(assert (=> b!4277568 (=> (not res!1756330) (not e!2655717))))

(assert (=> b!4277568 (= res!1756330 (= (size!34665 lt!1514050) (+ (size!34665 lt!1514032) (size!34665 acc!259))))))

(declare-fun b!4277566 () Bool)

(declare-fun e!2655716 () List!47479)

(assert (=> b!4277566 (= e!2655716 acc!259)))

(declare-fun d!1262770 () Bool)

(assert (=> d!1262770 e!2655717))

(declare-fun res!1756331 () Bool)

(assert (=> d!1262770 (=> (not res!1756331) (not e!2655717))))

(assert (=> d!1262770 (= res!1756331 (= (content!7488 lt!1514050) ((_ map or) (content!7488 lt!1514032) (content!7488 acc!259))))))

(assert (=> d!1262770 (= lt!1514050 e!2655716)))

(declare-fun c!728544 () Bool)

(assert (=> d!1262770 (= c!728544 ((_ is Nil!47355) lt!1514032))))

(assert (=> d!1262770 (= (++!12101 lt!1514032 acc!259) lt!1514050)))

(declare-fun b!4277567 () Bool)

(assert (=> b!4277567 (= e!2655716 (Cons!47355 (h!52775 lt!1514032) (++!12101 (t!354046 lt!1514032) acc!259)))))

(assert (= (and d!1262770 c!728544) b!4277566))

(assert (= (and d!1262770 (not c!728544)) b!4277567))

(assert (= (and d!1262770 res!1756331) b!4277568))

(assert (= (and b!4277568 res!1756330) b!4277569))

(declare-fun m!4873663 () Bool)

(assert (=> b!4277568 m!4873663))

(assert (=> b!4277568 m!4873651))

(assert (=> b!4277568 m!4873589))

(declare-fun m!4873665 () Bool)

(assert (=> d!1262770 m!4873665))

(assert (=> d!1262770 m!4873655))

(assert (=> d!1262770 m!4873595))

(declare-fun m!4873667 () Bool)

(assert (=> b!4277567 m!4873667))

(assert (=> b!4277465 d!1262770))

(declare-fun d!1262772 () Bool)

(declare-fun c!728545 () Bool)

(assert (=> d!1262772 (= c!728545 ((_ is Node!14337) (left!35288 t!3602)))))

(declare-fun e!2655722 () Bool)

(assert (=> d!1262772 (= (inv!62708 (left!35288 t!3602)) e!2655722)))

(declare-fun b!4277578 () Bool)

(assert (=> b!4277578 (= e!2655722 (inv!62710 (left!35288 t!3602)))))

(declare-fun b!4277579 () Bool)

(declare-fun e!2655723 () Bool)

(assert (=> b!4277579 (= e!2655722 e!2655723)))

(declare-fun res!1756332 () Bool)

(assert (=> b!4277579 (= res!1756332 (not ((_ is Leaf!22161) (left!35288 t!3602))))))

(assert (=> b!4277579 (=> res!1756332 e!2655723)))

(declare-fun b!4277580 () Bool)

(assert (=> b!4277580 (= e!2655723 (inv!62712 (left!35288 t!3602)))))

(assert (= (and d!1262772 c!728545) b!4277578))

(assert (= (and d!1262772 (not c!728545)) b!4277579))

(assert (= (and b!4277579 (not res!1756332)) b!4277580))

(declare-fun m!4873669 () Bool)

(assert (=> b!4277578 m!4873669))

(declare-fun m!4873671 () Bool)

(assert (=> b!4277580 m!4873671))

(assert (=> b!4277462 d!1262772))

(declare-fun d!1262774 () Bool)

(declare-fun c!728546 () Bool)

(assert (=> d!1262774 (= c!728546 ((_ is Node!14337) (right!35618 t!3602)))))

(declare-fun e!2655724 () Bool)

(assert (=> d!1262774 (= (inv!62708 (right!35618 t!3602)) e!2655724)))

(declare-fun b!4277581 () Bool)

(assert (=> b!4277581 (= e!2655724 (inv!62710 (right!35618 t!3602)))))

(declare-fun b!4277582 () Bool)

(declare-fun e!2655725 () Bool)

(assert (=> b!4277582 (= e!2655724 e!2655725)))

(declare-fun res!1756333 () Bool)

(assert (=> b!4277582 (= res!1756333 (not ((_ is Leaf!22161) (right!35618 t!3602))))))

(assert (=> b!4277582 (=> res!1756333 e!2655725)))

(declare-fun b!4277583 () Bool)

(assert (=> b!4277583 (= e!2655725 (inv!62712 (right!35618 t!3602)))))

(assert (= (and d!1262774 c!728546) b!4277581))

(assert (= (and d!1262774 (not c!728546)) b!4277582))

(assert (= (and b!4277582 (not res!1756333)) b!4277583))

(declare-fun m!4873673 () Bool)

(assert (=> b!4277581 m!4873673))

(declare-fun m!4873675 () Bool)

(assert (=> b!4277583 m!4873675))

(assert (=> b!4277462 d!1262774))

(declare-fun b!4277591 () Bool)

(declare-fun e!2655730 () Bool)

(declare-fun tp!1308886 () Bool)

(assert (=> b!4277591 (= e!2655730 (and tp_is_empty!22949 tp!1308886))))

(assert (=> b!4277461 (= tp!1308872 e!2655730)))

(assert (= (and b!4277461 ((_ is Cons!47355) (t!354046 acc!259))) b!4277591))

(declare-fun b!4277592 () Bool)

(declare-fun e!2655731 () Bool)

(declare-fun tp!1308887 () Bool)

(assert (=> b!4277592 (= e!2655731 (and tp_is_empty!22949 tp!1308887))))

(assert (=> b!4277463 (= tp!1308874 e!2655731)))

(assert (= (and b!4277463 ((_ is Cons!47355) (innerList!14397 (xs!17643 t!3602)))) b!4277592))

(declare-fun e!2655742 () Bool)

(declare-fun tp!1308902 () Bool)

(declare-fun tp!1308903 () Bool)

(declare-fun b!4277610 () Bool)

(assert (=> b!4277610 (= e!2655742 (and (inv!62708 (left!35288 (left!35288 t!3602))) tp!1308903 (inv!62708 (right!35618 (left!35288 t!3602))) tp!1308902))))

(declare-fun b!4277612 () Bool)

(declare-fun e!2655743 () Bool)

(declare-fun tp!1308901 () Bool)

(assert (=> b!4277612 (= e!2655743 tp!1308901)))

(declare-fun b!4277611 () Bool)

(assert (=> b!4277611 (= e!2655742 (and (inv!62709 (xs!17643 (left!35288 t!3602))) e!2655743))))

(assert (=> b!4277462 (= tp!1308871 (and (inv!62708 (left!35288 t!3602)) e!2655742))))

(assert (= (and b!4277462 ((_ is Node!14337) (left!35288 t!3602))) b!4277610))

(assert (= b!4277611 b!4277612))

(assert (= (and b!4277462 ((_ is Leaf!22161) (left!35288 t!3602))) b!4277611))

(declare-fun m!4873689 () Bool)

(assert (=> b!4277610 m!4873689))

(declare-fun m!4873691 () Bool)

(assert (=> b!4277610 m!4873691))

(declare-fun m!4873693 () Bool)

(assert (=> b!4277611 m!4873693))

(assert (=> b!4277462 m!4873499))

(declare-fun tp!1308906 () Bool)

(declare-fun b!4277613 () Bool)

(declare-fun tp!1308905 () Bool)

(declare-fun e!2655744 () Bool)

(assert (=> b!4277613 (= e!2655744 (and (inv!62708 (left!35288 (right!35618 t!3602))) tp!1308906 (inv!62708 (right!35618 (right!35618 t!3602))) tp!1308905))))

(declare-fun b!4277615 () Bool)

(declare-fun e!2655745 () Bool)

(declare-fun tp!1308904 () Bool)

(assert (=> b!4277615 (= e!2655745 tp!1308904)))

(declare-fun b!4277614 () Bool)

(assert (=> b!4277614 (= e!2655744 (and (inv!62709 (xs!17643 (right!35618 t!3602))) e!2655745))))

(assert (=> b!4277462 (= tp!1308873 (and (inv!62708 (right!35618 t!3602)) e!2655744))))

(assert (= (and b!4277462 ((_ is Node!14337) (right!35618 t!3602))) b!4277613))

(assert (= b!4277614 b!4277615))

(assert (= (and b!4277462 ((_ is Leaf!22161) (right!35618 t!3602))) b!4277614))

(declare-fun m!4873695 () Bool)

(assert (=> b!4277613 m!4873695))

(declare-fun m!4873697 () Bool)

(assert (=> b!4277613 m!4873697))

(declare-fun m!4873699 () Bool)

(assert (=> b!4277614 m!4873699))

(assert (=> b!4277462 m!4873501))

(check-sat (not d!1262764) (not b!4277567) (not b!4277509) (not b!4277578) (not b!4277583) (not b!4277533) (not b!4277614) (not d!1262730) (not b!4277581) (not b!4277537) (not b!4277480) (not b!4277591) (not d!1262748) (not b!4277611) (not b!4277561) (not b!4277542) (not b!4277613) (not d!1262736) (not b!4277478) (not b!4277580) (not b!4277568) (not d!1262770) (not b!4277610) (not b!4277462) (not b!4277592) (not b!4277508) (not b!4277541) (not b!4277560) (not b!4277612) (not b!4277615) tp_is_empty!22949 (not b!4277534) (not b!4277536) (not d!1262744))
(check-sat)
(get-model)

(declare-fun d!1262776 () Bool)

(declare-fun lt!1514053 () Int)

(assert (=> d!1262776 (>= lt!1514053 0)))

(declare-fun e!2655748 () Int)

(assert (=> d!1262776 (= lt!1514053 e!2655748)))

(declare-fun c!728549 () Bool)

(assert (=> d!1262776 (= c!728549 ((_ is Nil!47355) lt!1514049))))

(assert (=> d!1262776 (= (size!34665 lt!1514049) lt!1514053)))

(declare-fun b!4277620 () Bool)

(assert (=> b!4277620 (= e!2655748 0)))

(declare-fun b!4277621 () Bool)

(assert (=> b!4277621 (= e!2655748 (+ 1 (size!34665 (t!354046 lt!1514049))))))

(assert (= (and d!1262776 c!728549) b!4277620))

(assert (= (and d!1262776 (not c!728549)) b!4277621))

(declare-fun m!4873701 () Bool)

(assert (=> b!4277621 m!4873701))

(assert (=> b!4277561 d!1262776))

(declare-fun d!1262778 () Bool)

(declare-fun lt!1514054 () Int)

(assert (=> d!1262778 (>= lt!1514054 0)))

(declare-fun e!2655749 () Int)

(assert (=> d!1262778 (= lt!1514054 e!2655749)))

(declare-fun c!728550 () Bool)

(assert (=> d!1262778 (= c!728550 ((_ is Nil!47355) lt!1514031))))

(assert (=> d!1262778 (= (size!34665 lt!1514031) lt!1514054)))

(declare-fun b!4277622 () Bool)

(assert (=> b!4277622 (= e!2655749 0)))

(declare-fun b!4277623 () Bool)

(assert (=> b!4277623 (= e!2655749 (+ 1 (size!34665 (t!354046 lt!1514031))))))

(assert (= (and d!1262778 c!728550) b!4277622))

(assert (= (and d!1262778 (not c!728550)) b!4277623))

(declare-fun m!4873703 () Bool)

(assert (=> b!4277623 m!4873703))

(assert (=> b!4277561 d!1262778))

(declare-fun d!1262780 () Bool)

(declare-fun lt!1514055 () Int)

(assert (=> d!1262780 (>= lt!1514055 0)))

(declare-fun e!2655750 () Int)

(assert (=> d!1262780 (= lt!1514055 e!2655750)))

(declare-fun c!728551 () Bool)

(assert (=> d!1262780 (= c!728551 ((_ is Nil!47355) lt!1514032))))

(assert (=> d!1262780 (= (size!34665 lt!1514032) lt!1514055)))

(declare-fun b!4277624 () Bool)

(assert (=> b!4277624 (= e!2655750 0)))

(declare-fun b!4277625 () Bool)

(assert (=> b!4277625 (= e!2655750 (+ 1 (size!34665 (t!354046 lt!1514032))))))

(assert (= (and d!1262780 c!728551) b!4277624))

(assert (= (and d!1262780 (not c!728551)) b!4277625))

(declare-fun m!4873705 () Bool)

(assert (=> b!4277625 m!4873705))

(assert (=> b!4277561 d!1262780))

(declare-fun d!1262782 () Bool)

(declare-fun res!1756340 () Bool)

(declare-fun e!2655753 () Bool)

(assert (=> d!1262782 (=> (not res!1756340) (not e!2655753))))

(declare-fun size!34666 (Conc!14337) Int)

(assert (=> d!1262782 (= res!1756340 (= (csize!28904 (right!35618 t!3602)) (+ (size!34666 (left!35288 (right!35618 t!3602))) (size!34666 (right!35618 (right!35618 t!3602))))))))

(assert (=> d!1262782 (= (inv!62710 (right!35618 t!3602)) e!2655753)))

(declare-fun b!4277632 () Bool)

(declare-fun res!1756341 () Bool)

(assert (=> b!4277632 (=> (not res!1756341) (not e!2655753))))

(assert (=> b!4277632 (= res!1756341 (and (not (= (left!35288 (right!35618 t!3602)) Empty!14337)) (not (= (right!35618 (right!35618 t!3602)) Empty!14337))))))

(declare-fun b!4277633 () Bool)

(declare-fun res!1756342 () Bool)

(assert (=> b!4277633 (=> (not res!1756342) (not e!2655753))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4277633 (= res!1756342 (= (cheight!14548 (right!35618 t!3602)) (+ (max!0 (height!1887 (left!35288 (right!35618 t!3602))) (height!1887 (right!35618 (right!35618 t!3602)))) 1)))))

(declare-fun b!4277634 () Bool)

(assert (=> b!4277634 (= e!2655753 (<= 0 (cheight!14548 (right!35618 t!3602))))))

(assert (= (and d!1262782 res!1756340) b!4277632))

(assert (= (and b!4277632 res!1756341) b!4277633))

(assert (= (and b!4277633 res!1756342) b!4277634))

(declare-fun m!4873707 () Bool)

(assert (=> d!1262782 m!4873707))

(declare-fun m!4873709 () Bool)

(assert (=> d!1262782 m!4873709))

(declare-fun m!4873711 () Bool)

(assert (=> b!4277633 m!4873711))

(declare-fun m!4873713 () Bool)

(assert (=> b!4277633 m!4873713))

(assert (=> b!4277633 m!4873711))

(assert (=> b!4277633 m!4873713))

(declare-fun m!4873715 () Bool)

(assert (=> b!4277633 m!4873715))

(assert (=> b!4277581 d!1262782))

(declare-fun b!4277638 () Bool)

(declare-fun lt!1514056 () List!47479)

(declare-fun e!2655755 () Bool)

(assert (=> b!4277638 (= e!2655755 (or (not (= lt!1514032 Nil!47355)) (= lt!1514056 (t!354046 lt!1514031))))))

(declare-fun b!4277637 () Bool)

(declare-fun res!1756343 () Bool)

(assert (=> b!4277637 (=> (not res!1756343) (not e!2655755))))

(assert (=> b!4277637 (= res!1756343 (= (size!34665 lt!1514056) (+ (size!34665 (t!354046 lt!1514031)) (size!34665 lt!1514032))))))

(declare-fun b!4277635 () Bool)

(declare-fun e!2655754 () List!47479)

(assert (=> b!4277635 (= e!2655754 lt!1514032)))

(declare-fun d!1262784 () Bool)

(assert (=> d!1262784 e!2655755))

(declare-fun res!1756344 () Bool)

(assert (=> d!1262784 (=> (not res!1756344) (not e!2655755))))

(assert (=> d!1262784 (= res!1756344 (= (content!7488 lt!1514056) ((_ map or) (content!7488 (t!354046 lt!1514031)) (content!7488 lt!1514032))))))

(assert (=> d!1262784 (= lt!1514056 e!2655754)))

(declare-fun c!728552 () Bool)

(assert (=> d!1262784 (= c!728552 ((_ is Nil!47355) (t!354046 lt!1514031)))))

(assert (=> d!1262784 (= (++!12101 (t!354046 lt!1514031) lt!1514032) lt!1514056)))

(declare-fun b!4277636 () Bool)

(assert (=> b!4277636 (= e!2655754 (Cons!47355 (h!52775 (t!354046 lt!1514031)) (++!12101 (t!354046 (t!354046 lt!1514031)) lt!1514032)))))

(assert (= (and d!1262784 c!728552) b!4277635))

(assert (= (and d!1262784 (not c!728552)) b!4277636))

(assert (= (and d!1262784 res!1756344) b!4277637))

(assert (= (and b!4277637 res!1756343) b!4277638))

(declare-fun m!4873717 () Bool)

(assert (=> b!4277637 m!4873717))

(assert (=> b!4277637 m!4873703))

(assert (=> b!4277637 m!4873651))

(declare-fun m!4873719 () Bool)

(assert (=> d!1262784 m!4873719))

(declare-fun m!4873721 () Bool)

(assert (=> d!1262784 m!4873721))

(assert (=> d!1262784 m!4873655))

(declare-fun m!4873723 () Bool)

(assert (=> b!4277636 m!4873723))

(assert (=> b!4277560 d!1262784))

(declare-fun d!1262786 () Bool)

(declare-fun c!728555 () Bool)

(assert (=> d!1262786 (= c!728555 ((_ is Nil!47355) lt!1514039))))

(declare-fun e!2655758 () (InoxSet T!79976))

(assert (=> d!1262786 (= (content!7488 lt!1514039) e!2655758)))

(declare-fun b!4277643 () Bool)

(assert (=> b!4277643 (= e!2655758 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277644 () Bool)

(assert (=> b!4277644 (= e!2655758 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514039) true) (content!7488 (t!354046 lt!1514039))))))

(assert (= (and d!1262786 c!728555) b!4277643))

(assert (= (and d!1262786 (not c!728555)) b!4277644))

(declare-fun m!4873725 () Bool)

(assert (=> b!4277644 m!4873725))

(declare-fun m!4873727 () Bool)

(assert (=> b!4277644 m!4873727))

(assert (=> d!1262744 d!1262786))

(declare-fun d!1262788 () Bool)

(declare-fun c!728556 () Bool)

(assert (=> d!1262788 (= c!728556 ((_ is Nil!47355) (++!12101 lt!1514031 lt!1514032)))))

(declare-fun e!2655759 () (InoxSet T!79976))

(assert (=> d!1262788 (= (content!7488 (++!12101 lt!1514031 lt!1514032)) e!2655759)))

(declare-fun b!4277645 () Bool)

(assert (=> b!4277645 (= e!2655759 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277646 () Bool)

(assert (=> b!4277646 (= e!2655759 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (++!12101 lt!1514031 lt!1514032)) true) (content!7488 (t!354046 (++!12101 lt!1514031 lt!1514032)))))))

(assert (= (and d!1262788 c!728556) b!4277645))

(assert (= (and d!1262788 (not c!728556)) b!4277646))

(declare-fun m!4873729 () Bool)

(assert (=> b!4277646 m!4873729))

(declare-fun m!4873731 () Bool)

(assert (=> b!4277646 m!4873731))

(assert (=> d!1262744 d!1262788))

(declare-fun d!1262790 () Bool)

(declare-fun c!728557 () Bool)

(assert (=> d!1262790 (= c!728557 ((_ is Nil!47355) acc!259))))

(declare-fun e!2655760 () (InoxSet T!79976))

(assert (=> d!1262790 (= (content!7488 acc!259) e!2655760)))

(declare-fun b!4277647 () Bool)

(assert (=> b!4277647 (= e!2655760 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277648 () Bool)

(assert (=> b!4277648 (= e!2655760 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 acc!259) true) (content!7488 (t!354046 acc!259))))))

(assert (= (and d!1262790 c!728557) b!4277647))

(assert (= (and d!1262790 (not c!728557)) b!4277648))

(declare-fun m!4873733 () Bool)

(assert (=> b!4277648 m!4873733))

(declare-fun m!4873735 () Bool)

(assert (=> b!4277648 m!4873735))

(assert (=> d!1262744 d!1262790))

(declare-fun d!1262792 () Bool)

(declare-fun c!728558 () Bool)

(assert (=> d!1262792 (= c!728558 ((_ is Node!14337) (left!35288 (right!35618 t!3602))))))

(declare-fun e!2655761 () Bool)

(assert (=> d!1262792 (= (inv!62708 (left!35288 (right!35618 t!3602))) e!2655761)))

(declare-fun b!4277649 () Bool)

(assert (=> b!4277649 (= e!2655761 (inv!62710 (left!35288 (right!35618 t!3602))))))

(declare-fun b!4277650 () Bool)

(declare-fun e!2655762 () Bool)

(assert (=> b!4277650 (= e!2655761 e!2655762)))

(declare-fun res!1756345 () Bool)

(assert (=> b!4277650 (= res!1756345 (not ((_ is Leaf!22161) (left!35288 (right!35618 t!3602)))))))

(assert (=> b!4277650 (=> res!1756345 e!2655762)))

(declare-fun b!4277651 () Bool)

(assert (=> b!4277651 (= e!2655762 (inv!62712 (left!35288 (right!35618 t!3602))))))

(assert (= (and d!1262792 c!728558) b!4277649))

(assert (= (and d!1262792 (not c!728558)) b!4277650))

(assert (= (and b!4277650 (not res!1756345)) b!4277651))

(declare-fun m!4873737 () Bool)

(assert (=> b!4277649 m!4873737))

(declare-fun m!4873739 () Bool)

(assert (=> b!4277651 m!4873739))

(assert (=> b!4277613 d!1262792))

(declare-fun d!1262794 () Bool)

(declare-fun c!728559 () Bool)

(assert (=> d!1262794 (= c!728559 ((_ is Node!14337) (right!35618 (right!35618 t!3602))))))

(declare-fun e!2655763 () Bool)

(assert (=> d!1262794 (= (inv!62708 (right!35618 (right!35618 t!3602))) e!2655763)))

(declare-fun b!4277652 () Bool)

(assert (=> b!4277652 (= e!2655763 (inv!62710 (right!35618 (right!35618 t!3602))))))

(declare-fun b!4277653 () Bool)

(declare-fun e!2655764 () Bool)

(assert (=> b!4277653 (= e!2655763 e!2655764)))

(declare-fun res!1756346 () Bool)

(assert (=> b!4277653 (= res!1756346 (not ((_ is Leaf!22161) (right!35618 (right!35618 t!3602)))))))

(assert (=> b!4277653 (=> res!1756346 e!2655764)))

(declare-fun b!4277654 () Bool)

(assert (=> b!4277654 (= e!2655764 (inv!62712 (right!35618 (right!35618 t!3602))))))

(assert (= (and d!1262794 c!728559) b!4277652))

(assert (= (and d!1262794 (not c!728559)) b!4277653))

(assert (= (and b!4277653 (not res!1756346)) b!4277654))

(declare-fun m!4873741 () Bool)

(assert (=> b!4277652 m!4873741))

(declare-fun m!4873743 () Bool)

(assert (=> b!4277654 m!4873743))

(assert (=> b!4277613 d!1262794))

(declare-fun d!1262796 () Bool)

(declare-fun lt!1514057 () Int)

(assert (=> d!1262796 (>= lt!1514057 0)))

(declare-fun e!2655765 () Int)

(assert (=> d!1262796 (= lt!1514057 e!2655765)))

(declare-fun c!728560 () Bool)

(assert (=> d!1262796 (= c!728560 ((_ is Nil!47355) lt!1514039))))

(assert (=> d!1262796 (= (size!34665 lt!1514039) lt!1514057)))

(declare-fun b!4277655 () Bool)

(assert (=> b!4277655 (= e!2655765 0)))

(declare-fun b!4277656 () Bool)

(assert (=> b!4277656 (= e!2655765 (+ 1 (size!34665 (t!354046 lt!1514039))))))

(assert (= (and d!1262796 c!728560) b!4277655))

(assert (= (and d!1262796 (not c!728560)) b!4277656))

(declare-fun m!4873745 () Bool)

(assert (=> b!4277656 m!4873745))

(assert (=> b!4277537 d!1262796))

(declare-fun d!1262798 () Bool)

(declare-fun lt!1514058 () Int)

(assert (=> d!1262798 (>= lt!1514058 0)))

(declare-fun e!2655766 () Int)

(assert (=> d!1262798 (= lt!1514058 e!2655766)))

(declare-fun c!728561 () Bool)

(assert (=> d!1262798 (= c!728561 ((_ is Nil!47355) (++!12101 lt!1514031 lt!1514032)))))

(assert (=> d!1262798 (= (size!34665 (++!12101 lt!1514031 lt!1514032)) lt!1514058)))

(declare-fun b!4277657 () Bool)

(assert (=> b!4277657 (= e!2655766 0)))

(declare-fun b!4277658 () Bool)

(assert (=> b!4277658 (= e!2655766 (+ 1 (size!34665 (t!354046 (++!12101 lt!1514031 lt!1514032)))))))

(assert (= (and d!1262798 c!728561) b!4277657))

(assert (= (and d!1262798 (not c!728561)) b!4277658))

(declare-fun m!4873747 () Bool)

(assert (=> b!4277658 m!4873747))

(assert (=> b!4277537 d!1262798))

(declare-fun d!1262800 () Bool)

(declare-fun lt!1514059 () Int)

(assert (=> d!1262800 (>= lt!1514059 0)))

(declare-fun e!2655767 () Int)

(assert (=> d!1262800 (= lt!1514059 e!2655767)))

(declare-fun c!728562 () Bool)

(assert (=> d!1262800 (= c!728562 ((_ is Nil!47355) acc!259))))

(assert (=> d!1262800 (= (size!34665 acc!259) lt!1514059)))

(declare-fun b!4277659 () Bool)

(assert (=> b!4277659 (= e!2655767 0)))

(declare-fun b!4277660 () Bool)

(assert (=> b!4277660 (= e!2655767 (+ 1 (size!34665 (t!354046 acc!259))))))

(assert (= (and d!1262800 c!728562) b!4277659))

(assert (= (and d!1262800 (not c!728562)) b!4277660))

(declare-fun m!4873749 () Bool)

(assert (=> b!4277660 m!4873749))

(assert (=> b!4277537 d!1262800))

(declare-fun d!1262802 () Bool)

(declare-fun lt!1514060 () Int)

(assert (=> d!1262802 (>= lt!1514060 0)))

(declare-fun e!2655768 () Int)

(assert (=> d!1262802 (= lt!1514060 e!2655768)))

(declare-fun c!728563 () Bool)

(assert (=> d!1262802 (= c!728563 ((_ is Nil!47355) lt!1514038))))

(assert (=> d!1262802 (= (size!34665 lt!1514038) lt!1514060)))

(declare-fun b!4277661 () Bool)

(assert (=> b!4277661 (= e!2655768 0)))

(declare-fun b!4277662 () Bool)

(assert (=> b!4277662 (= e!2655768 (+ 1 (size!34665 (t!354046 lt!1514038))))))

(assert (= (and d!1262802 c!728563) b!4277661))

(assert (= (and d!1262802 (not c!728563)) b!4277662))

(declare-fun m!4873751 () Bool)

(assert (=> b!4277662 m!4873751))

(assert (=> b!4277509 d!1262802))

(assert (=> b!4277509 d!1262778))

(declare-fun d!1262804 () Bool)

(declare-fun lt!1514061 () Int)

(assert (=> d!1262804 (>= lt!1514061 0)))

(declare-fun e!2655769 () Int)

(assert (=> d!1262804 (= lt!1514061 e!2655769)))

(declare-fun c!728564 () Bool)

(assert (=> d!1262804 (= c!728564 ((_ is Nil!47355) (++!12101 lt!1514032 acc!259)))))

(assert (=> d!1262804 (= (size!34665 (++!12101 lt!1514032 acc!259)) lt!1514061)))

(declare-fun b!4277663 () Bool)

(assert (=> b!4277663 (= e!2655769 0)))

(declare-fun b!4277664 () Bool)

(assert (=> b!4277664 (= e!2655769 (+ 1 (size!34665 (t!354046 (++!12101 lt!1514032 acc!259)))))))

(assert (= (and d!1262804 c!728564) b!4277663))

(assert (= (and d!1262804 (not c!728564)) b!4277664))

(declare-fun m!4873753 () Bool)

(assert (=> b!4277664 m!4873753))

(assert (=> b!4277509 d!1262804))

(declare-fun b!4277668 () Bool)

(declare-fun e!2655771 () Bool)

(declare-fun lt!1514062 () List!47479)

(assert (=> b!4277668 (= e!2655771 (or (not (= acc!259 Nil!47355)) (= lt!1514062 (t!354046 (++!12101 lt!1514031 lt!1514032)))))))

(declare-fun b!4277667 () Bool)

(declare-fun res!1756347 () Bool)

(assert (=> b!4277667 (=> (not res!1756347) (not e!2655771))))

(assert (=> b!4277667 (= res!1756347 (= (size!34665 lt!1514062) (+ (size!34665 (t!354046 (++!12101 lt!1514031 lt!1514032))) (size!34665 acc!259))))))

(declare-fun b!4277665 () Bool)

(declare-fun e!2655770 () List!47479)

(assert (=> b!4277665 (= e!2655770 acc!259)))

(declare-fun d!1262806 () Bool)

(assert (=> d!1262806 e!2655771))

(declare-fun res!1756348 () Bool)

(assert (=> d!1262806 (=> (not res!1756348) (not e!2655771))))

(assert (=> d!1262806 (= res!1756348 (= (content!7488 lt!1514062) ((_ map or) (content!7488 (t!354046 (++!12101 lt!1514031 lt!1514032))) (content!7488 acc!259))))))

(assert (=> d!1262806 (= lt!1514062 e!2655770)))

(declare-fun c!728565 () Bool)

(assert (=> d!1262806 (= c!728565 ((_ is Nil!47355) (t!354046 (++!12101 lt!1514031 lt!1514032))))))

(assert (=> d!1262806 (= (++!12101 (t!354046 (++!12101 lt!1514031 lt!1514032)) acc!259) lt!1514062)))

(declare-fun b!4277666 () Bool)

(assert (=> b!4277666 (= e!2655770 (Cons!47355 (h!52775 (t!354046 (++!12101 lt!1514031 lt!1514032))) (++!12101 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032))) acc!259)))))

(assert (= (and d!1262806 c!728565) b!4277665))

(assert (= (and d!1262806 (not c!728565)) b!4277666))

(assert (= (and d!1262806 res!1756348) b!4277667))

(assert (= (and b!4277667 res!1756347) b!4277668))

(declare-fun m!4873755 () Bool)

(assert (=> b!4277667 m!4873755))

(assert (=> b!4277667 m!4873747))

(assert (=> b!4277667 m!4873589))

(declare-fun m!4873757 () Bool)

(assert (=> d!1262806 m!4873757))

(assert (=> d!1262806 m!4873731))

(assert (=> d!1262806 m!4873595))

(declare-fun m!4873759 () Bool)

(assert (=> b!4277666 m!4873759))

(assert (=> b!4277536 d!1262806))

(declare-fun e!2655773 () Bool)

(declare-fun b!4277672 () Bool)

(declare-fun lt!1514063 () List!47479)

(assert (=> b!4277672 (= e!2655773 (or (not (= (++!12101 lt!1514032 acc!259) Nil!47355)) (= lt!1514063 (t!354046 lt!1514031))))))

(declare-fun b!4277671 () Bool)

(declare-fun res!1756349 () Bool)

(assert (=> b!4277671 (=> (not res!1756349) (not e!2655773))))

(assert (=> b!4277671 (= res!1756349 (= (size!34665 lt!1514063) (+ (size!34665 (t!354046 lt!1514031)) (size!34665 (++!12101 lt!1514032 acc!259)))))))

(declare-fun b!4277669 () Bool)

(declare-fun e!2655772 () List!47479)

(assert (=> b!4277669 (= e!2655772 (++!12101 lt!1514032 acc!259))))

(declare-fun d!1262808 () Bool)

(assert (=> d!1262808 e!2655773))

(declare-fun res!1756350 () Bool)

(assert (=> d!1262808 (=> (not res!1756350) (not e!2655773))))

(assert (=> d!1262808 (= res!1756350 (= (content!7488 lt!1514063) ((_ map or) (content!7488 (t!354046 lt!1514031)) (content!7488 (++!12101 lt!1514032 acc!259)))))))

(assert (=> d!1262808 (= lt!1514063 e!2655772)))

(declare-fun c!728566 () Bool)

(assert (=> d!1262808 (= c!728566 ((_ is Nil!47355) (t!354046 lt!1514031)))))

(assert (=> d!1262808 (= (++!12101 (t!354046 lt!1514031) (++!12101 lt!1514032 acc!259)) lt!1514063)))

(declare-fun b!4277670 () Bool)

(assert (=> b!4277670 (= e!2655772 (Cons!47355 (h!52775 (t!354046 lt!1514031)) (++!12101 (t!354046 (t!354046 lt!1514031)) (++!12101 lt!1514032 acc!259))))))

(assert (= (and d!1262808 c!728566) b!4277669))

(assert (= (and d!1262808 (not c!728566)) b!4277670))

(assert (= (and d!1262808 res!1756350) b!4277671))

(assert (= (and b!4277671 res!1756349) b!4277672))

(declare-fun m!4873761 () Bool)

(assert (=> b!4277671 m!4873761))

(assert (=> b!4277671 m!4873703))

(assert (=> b!4277671 m!4873515))

(assert (=> b!4277671 m!4873559))

(declare-fun m!4873763 () Bool)

(assert (=> d!1262808 m!4873763))

(assert (=> d!1262808 m!4873721))

(assert (=> d!1262808 m!4873515))

(assert (=> d!1262808 m!4873565))

(assert (=> b!4277670 m!4873515))

(declare-fun m!4873765 () Bool)

(assert (=> b!4277670 m!4873765))

(assert (=> b!4277508 d!1262808))

(assert (=> d!1262748 d!1262736))

(assert (=> d!1262748 d!1262744))

(declare-fun d!1262810 () Bool)

(assert (=> d!1262810 (= (++!12101 (++!12101 lt!1514031 lt!1514032) acc!259) (++!12101 lt!1514031 (++!12101 lt!1514032 acc!259)))))

(assert (=> d!1262810 true))

(declare-fun _$15!518 () Unit!66309)

(assert (=> d!1262810 (= (choose!26086 lt!1514031 lt!1514032 acc!259) _$15!518)))

(declare-fun bs!602591 () Bool)

(assert (= bs!602591 d!1262810))

(assert (=> bs!602591 m!4873511))

(assert (=> bs!602591 m!4873511))

(assert (=> bs!602591 m!4873521))

(assert (=> bs!602591 m!4873515))

(assert (=> bs!602591 m!4873515))

(assert (=> bs!602591 m!4873517))

(assert (=> d!1262748 d!1262810))

(assert (=> d!1262748 d!1262764))

(assert (=> d!1262748 d!1262770))

(declare-fun d!1262812 () Bool)

(declare-fun res!1756355 () Bool)

(declare-fun e!2655776 () Bool)

(assert (=> d!1262812 (=> (not res!1756355) (not e!2655776))))

(assert (=> d!1262812 (= res!1756355 (<= (size!34665 (list!17272 (xs!17643 (right!35618 t!3602)))) 512))))

(assert (=> d!1262812 (= (inv!62712 (right!35618 t!3602)) e!2655776)))

(declare-fun b!4277677 () Bool)

(declare-fun res!1756356 () Bool)

(assert (=> b!4277677 (=> (not res!1756356) (not e!2655776))))

(assert (=> b!4277677 (= res!1756356 (= (csize!28905 (right!35618 t!3602)) (size!34665 (list!17272 (xs!17643 (right!35618 t!3602))))))))

(declare-fun b!4277678 () Bool)

(assert (=> b!4277678 (= e!2655776 (and (> (csize!28905 (right!35618 t!3602)) 0) (<= (csize!28905 (right!35618 t!3602)) 512)))))

(assert (= (and d!1262812 res!1756355) b!4277677))

(assert (= (and b!4277677 res!1756356) b!4277678))

(assert (=> d!1262812 m!4873605))

(assert (=> d!1262812 m!4873605))

(declare-fun m!4873767 () Bool)

(assert (=> d!1262812 m!4873767))

(assert (=> b!4277677 m!4873605))

(assert (=> b!4277677 m!4873605))

(assert (=> b!4277677 m!4873767))

(assert (=> b!4277583 d!1262812))

(declare-fun d!1262814 () Bool)

(declare-fun c!728567 () Bool)

(assert (=> d!1262814 (= c!728567 ((_ is Nil!47355) lt!1514050))))

(declare-fun e!2655777 () (InoxSet T!79976))

(assert (=> d!1262814 (= (content!7488 lt!1514050) e!2655777)))

(declare-fun b!4277679 () Bool)

(assert (=> b!4277679 (= e!2655777 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277680 () Bool)

(assert (=> b!4277680 (= e!2655777 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514050) true) (content!7488 (t!354046 lt!1514050))))))

(assert (= (and d!1262814 c!728567) b!4277679))

(assert (= (and d!1262814 (not c!728567)) b!4277680))

(declare-fun m!4873769 () Bool)

(assert (=> b!4277680 m!4873769))

(declare-fun m!4873771 () Bool)

(assert (=> b!4277680 m!4873771))

(assert (=> d!1262770 d!1262814))

(declare-fun d!1262816 () Bool)

(declare-fun c!728568 () Bool)

(assert (=> d!1262816 (= c!728568 ((_ is Nil!47355) lt!1514032))))

(declare-fun e!2655778 () (InoxSet T!79976))

(assert (=> d!1262816 (= (content!7488 lt!1514032) e!2655778)))

(declare-fun b!4277681 () Bool)

(assert (=> b!4277681 (= e!2655778 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277682 () Bool)

(assert (=> b!4277682 (= e!2655778 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514032) true) (content!7488 (t!354046 lt!1514032))))))

(assert (= (and d!1262816 c!728568) b!4277681))

(assert (= (and d!1262816 (not c!728568)) b!4277682))

(declare-fun m!4873773 () Bool)

(assert (=> b!4277682 m!4873773))

(declare-fun m!4873775 () Bool)

(assert (=> b!4277682 m!4873775))

(assert (=> d!1262770 d!1262816))

(assert (=> d!1262770 d!1262790))

(declare-fun d!1262818 () Bool)

(declare-fun c!728569 () Bool)

(assert (=> d!1262818 (= c!728569 ((_ is Nil!47355) lt!1514049))))

(declare-fun e!2655779 () (InoxSet T!79976))

(assert (=> d!1262818 (= (content!7488 lt!1514049) e!2655779)))

(declare-fun b!4277683 () Bool)

(assert (=> b!4277683 (= e!2655779 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277684 () Bool)

(assert (=> b!4277684 (= e!2655779 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514049) true) (content!7488 (t!354046 lt!1514049))))))

(assert (= (and d!1262818 c!728569) b!4277683))

(assert (= (and d!1262818 (not c!728569)) b!4277684))

(declare-fun m!4873777 () Bool)

(assert (=> b!4277684 m!4873777))

(declare-fun m!4873779 () Bool)

(assert (=> b!4277684 m!4873779))

(assert (=> d!1262764 d!1262818))

(declare-fun d!1262820 () Bool)

(declare-fun c!728570 () Bool)

(assert (=> d!1262820 (= c!728570 ((_ is Nil!47355) lt!1514031))))

(declare-fun e!2655780 () (InoxSet T!79976))

(assert (=> d!1262820 (= (content!7488 lt!1514031) e!2655780)))

(declare-fun b!4277685 () Bool)

(assert (=> b!4277685 (= e!2655780 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277686 () Bool)

(assert (=> b!4277686 (= e!2655780 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514031) true) (content!7488 (t!354046 lt!1514031))))))

(assert (= (and d!1262820 c!728570) b!4277685))

(assert (= (and d!1262820 (not c!728570)) b!4277686))

(declare-fun m!4873781 () Bool)

(assert (=> b!4277686 m!4873781))

(assert (=> b!4277686 m!4873721))

(assert (=> d!1262764 d!1262820))

(assert (=> d!1262764 d!1262816))

(declare-fun d!1262822 () Bool)

(declare-fun res!1756357 () Bool)

(declare-fun e!2655781 () Bool)

(assert (=> d!1262822 (=> (not res!1756357) (not e!2655781))))

(assert (=> d!1262822 (= res!1756357 (<= (size!34665 (list!17272 (xs!17643 (left!35288 t!3602)))) 512))))

(assert (=> d!1262822 (= (inv!62712 (left!35288 t!3602)) e!2655781)))

(declare-fun b!4277687 () Bool)

(declare-fun res!1756358 () Bool)

(assert (=> b!4277687 (=> (not res!1756358) (not e!2655781))))

(assert (=> b!4277687 (= res!1756358 (= (csize!28905 (left!35288 t!3602)) (size!34665 (list!17272 (xs!17643 (left!35288 t!3602))))))))

(declare-fun b!4277688 () Bool)

(assert (=> b!4277688 (= e!2655781 (and (> (csize!28905 (left!35288 t!3602)) 0) (<= (csize!28905 (left!35288 t!3602)) 512)))))

(assert (= (and d!1262822 res!1756357) b!4277687))

(assert (= (and b!4277687 res!1756358) b!4277688))

(assert (=> d!1262822 m!4873583))

(assert (=> d!1262822 m!4873583))

(declare-fun m!4873783 () Bool)

(assert (=> d!1262822 m!4873783))

(assert (=> b!4277687 m!4873583))

(assert (=> b!4277687 m!4873583))

(assert (=> b!4277687 m!4873783))

(assert (=> b!4277580 d!1262822))

(declare-fun d!1262824 () Bool)

(assert (=> d!1262824 (= (list!17272 (xs!17643 (right!35618 t!3602))) (innerList!14397 (xs!17643 (right!35618 t!3602))))))

(assert (=> b!4277541 d!1262824))

(declare-fun b!4277692 () Bool)

(declare-fun e!2655783 () Bool)

(declare-fun lt!1514064 () List!47479)

(assert (=> b!4277692 (= e!2655783 (or (not (= (list!17271 (right!35618 (right!35618 t!3602))) Nil!47355)) (= lt!1514064 (list!17271 (left!35288 (right!35618 t!3602))))))))

(declare-fun b!4277691 () Bool)

(declare-fun res!1756359 () Bool)

(assert (=> b!4277691 (=> (not res!1756359) (not e!2655783))))

(assert (=> b!4277691 (= res!1756359 (= (size!34665 lt!1514064) (+ (size!34665 (list!17271 (left!35288 (right!35618 t!3602)))) (size!34665 (list!17271 (right!35618 (right!35618 t!3602)))))))))

(declare-fun b!4277689 () Bool)

(declare-fun e!2655782 () List!47479)

(assert (=> b!4277689 (= e!2655782 (list!17271 (right!35618 (right!35618 t!3602))))))

(declare-fun d!1262826 () Bool)

(assert (=> d!1262826 e!2655783))

(declare-fun res!1756360 () Bool)

(assert (=> d!1262826 (=> (not res!1756360) (not e!2655783))))

(assert (=> d!1262826 (= res!1756360 (= (content!7488 lt!1514064) ((_ map or) (content!7488 (list!17271 (left!35288 (right!35618 t!3602)))) (content!7488 (list!17271 (right!35618 (right!35618 t!3602)))))))))

(assert (=> d!1262826 (= lt!1514064 e!2655782)))

(declare-fun c!728571 () Bool)

(assert (=> d!1262826 (= c!728571 ((_ is Nil!47355) (list!17271 (left!35288 (right!35618 t!3602)))))))

(assert (=> d!1262826 (= (++!12101 (list!17271 (left!35288 (right!35618 t!3602))) (list!17271 (right!35618 (right!35618 t!3602)))) lt!1514064)))

(declare-fun b!4277690 () Bool)

(assert (=> b!4277690 (= e!2655782 (Cons!47355 (h!52775 (list!17271 (left!35288 (right!35618 t!3602)))) (++!12101 (t!354046 (list!17271 (left!35288 (right!35618 t!3602)))) (list!17271 (right!35618 (right!35618 t!3602))))))))

(assert (= (and d!1262826 c!728571) b!4277689))

(assert (= (and d!1262826 (not c!728571)) b!4277690))

(assert (= (and d!1262826 res!1756360) b!4277691))

(assert (= (and b!4277691 res!1756359) b!4277692))

(declare-fun m!4873785 () Bool)

(assert (=> b!4277691 m!4873785))

(assert (=> b!4277691 m!4873599))

(declare-fun m!4873787 () Bool)

(assert (=> b!4277691 m!4873787))

(assert (=> b!4277691 m!4873601))

(declare-fun m!4873789 () Bool)

(assert (=> b!4277691 m!4873789))

(declare-fun m!4873791 () Bool)

(assert (=> d!1262826 m!4873791))

(assert (=> d!1262826 m!4873599))

(declare-fun m!4873793 () Bool)

(assert (=> d!1262826 m!4873793))

(assert (=> d!1262826 m!4873601))

(declare-fun m!4873795 () Bool)

(assert (=> d!1262826 m!4873795))

(assert (=> b!4277690 m!4873601))

(declare-fun m!4873797 () Bool)

(assert (=> b!4277690 m!4873797))

(assert (=> b!4277542 d!1262826))

(declare-fun b!4277696 () Bool)

(declare-fun e!2655785 () List!47479)

(assert (=> b!4277696 (= e!2655785 (++!12101 (list!17271 (left!35288 (left!35288 (right!35618 t!3602)))) (list!17271 (right!35618 (left!35288 (right!35618 t!3602))))))))

(declare-fun d!1262828 () Bool)

(declare-fun c!728572 () Bool)

(assert (=> d!1262828 (= c!728572 ((_ is Empty!14337) (left!35288 (right!35618 t!3602))))))

(declare-fun e!2655784 () List!47479)

(assert (=> d!1262828 (= (list!17271 (left!35288 (right!35618 t!3602))) e!2655784)))

(declare-fun b!4277693 () Bool)

(assert (=> b!4277693 (= e!2655784 Nil!47355)))

(declare-fun b!4277694 () Bool)

(assert (=> b!4277694 (= e!2655784 e!2655785)))

(declare-fun c!728573 () Bool)

(assert (=> b!4277694 (= c!728573 ((_ is Leaf!22161) (left!35288 (right!35618 t!3602))))))

(declare-fun b!4277695 () Bool)

(assert (=> b!4277695 (= e!2655785 (list!17272 (xs!17643 (left!35288 (right!35618 t!3602)))))))

(assert (= (and d!1262828 c!728572) b!4277693))

(assert (= (and d!1262828 (not c!728572)) b!4277694))

(assert (= (and b!4277694 c!728573) b!4277695))

(assert (= (and b!4277694 (not c!728573)) b!4277696))

(declare-fun m!4873799 () Bool)

(assert (=> b!4277696 m!4873799))

(declare-fun m!4873801 () Bool)

(assert (=> b!4277696 m!4873801))

(assert (=> b!4277696 m!4873799))

(assert (=> b!4277696 m!4873801))

(declare-fun m!4873803 () Bool)

(assert (=> b!4277696 m!4873803))

(declare-fun m!4873805 () Bool)

(assert (=> b!4277695 m!4873805))

(assert (=> b!4277542 d!1262828))

(declare-fun b!4277700 () Bool)

(declare-fun e!2655787 () List!47479)

(assert (=> b!4277700 (= e!2655787 (++!12101 (list!17271 (left!35288 (right!35618 (right!35618 t!3602)))) (list!17271 (right!35618 (right!35618 (right!35618 t!3602))))))))

(declare-fun d!1262830 () Bool)

(declare-fun c!728574 () Bool)

(assert (=> d!1262830 (= c!728574 ((_ is Empty!14337) (right!35618 (right!35618 t!3602))))))

(declare-fun e!2655786 () List!47479)

(assert (=> d!1262830 (= (list!17271 (right!35618 (right!35618 t!3602))) e!2655786)))

(declare-fun b!4277697 () Bool)

(assert (=> b!4277697 (= e!2655786 Nil!47355)))

(declare-fun b!4277698 () Bool)

(assert (=> b!4277698 (= e!2655786 e!2655787)))

(declare-fun c!728575 () Bool)

(assert (=> b!4277698 (= c!728575 ((_ is Leaf!22161) (right!35618 (right!35618 t!3602))))))

(declare-fun b!4277699 () Bool)

(assert (=> b!4277699 (= e!2655787 (list!17272 (xs!17643 (right!35618 (right!35618 t!3602)))))))

(assert (= (and d!1262830 c!728574) b!4277697))

(assert (= (and d!1262830 (not c!728574)) b!4277698))

(assert (= (and b!4277698 c!728575) b!4277699))

(assert (= (and b!4277698 (not c!728575)) b!4277700))

(declare-fun m!4873807 () Bool)

(assert (=> b!4277700 m!4873807))

(declare-fun m!4873809 () Bool)

(assert (=> b!4277700 m!4873809))

(assert (=> b!4277700 m!4873807))

(assert (=> b!4277700 m!4873809))

(declare-fun m!4873811 () Bool)

(assert (=> b!4277700 m!4873811))

(declare-fun m!4873813 () Bool)

(assert (=> b!4277699 m!4873813))

(assert (=> b!4277542 d!1262830))

(declare-fun d!1262832 () Bool)

(declare-fun lt!1514065 () Int)

(assert (=> d!1262832 (>= lt!1514065 0)))

(declare-fun e!2655788 () Int)

(assert (=> d!1262832 (= lt!1514065 e!2655788)))

(declare-fun c!728576 () Bool)

(assert (=> d!1262832 (= c!728576 ((_ is Nil!47355) (innerList!14397 (xs!17643 t!3602))))))

(assert (=> d!1262832 (= (size!34665 (innerList!14397 (xs!17643 t!3602))) lt!1514065)))

(declare-fun b!4277701 () Bool)

(assert (=> b!4277701 (= e!2655788 0)))

(declare-fun b!4277702 () Bool)

(assert (=> b!4277702 (= e!2655788 (+ 1 (size!34665 (t!354046 (innerList!14397 (xs!17643 t!3602))))))))

(assert (= (and d!1262832 c!728576) b!4277701))

(assert (= (and d!1262832 (not c!728576)) b!4277702))

(declare-fun m!4873815 () Bool)

(assert (=> b!4277702 m!4873815))

(assert (=> d!1262730 d!1262832))

(declare-fun d!1262834 () Bool)

(assert (=> d!1262834 (= (list!17272 (xs!17643 (left!35288 t!3602))) (innerList!14397 (xs!17643 (left!35288 t!3602))))))

(assert (=> b!4277533 d!1262834))

(declare-fun d!1262836 () Bool)

(assert (=> d!1262836 (= (inv!62709 (xs!17643 (right!35618 t!3602))) (<= (size!34665 (innerList!14397 (xs!17643 (right!35618 t!3602)))) 2147483647))))

(declare-fun bs!602592 () Bool)

(assert (= bs!602592 d!1262836))

(declare-fun m!4873817 () Bool)

(assert (=> bs!602592 m!4873817))

(assert (=> b!4277614 d!1262836))

(declare-fun b!4277706 () Bool)

(declare-fun e!2655790 () Bool)

(declare-fun lt!1514066 () List!47479)

(assert (=> b!4277706 (= e!2655790 (or (not (= (list!17271 (right!35618 (left!35288 t!3602))) Nil!47355)) (= lt!1514066 (list!17271 (left!35288 (left!35288 t!3602))))))))

(declare-fun b!4277705 () Bool)

(declare-fun res!1756361 () Bool)

(assert (=> b!4277705 (=> (not res!1756361) (not e!2655790))))

(assert (=> b!4277705 (= res!1756361 (= (size!34665 lt!1514066) (+ (size!34665 (list!17271 (left!35288 (left!35288 t!3602)))) (size!34665 (list!17271 (right!35618 (left!35288 t!3602)))))))))

(declare-fun b!4277703 () Bool)

(declare-fun e!2655789 () List!47479)

(assert (=> b!4277703 (= e!2655789 (list!17271 (right!35618 (left!35288 t!3602))))))

(declare-fun d!1262838 () Bool)

(assert (=> d!1262838 e!2655790))

(declare-fun res!1756362 () Bool)

(assert (=> d!1262838 (=> (not res!1756362) (not e!2655790))))

(assert (=> d!1262838 (= res!1756362 (= (content!7488 lt!1514066) ((_ map or) (content!7488 (list!17271 (left!35288 (left!35288 t!3602)))) (content!7488 (list!17271 (right!35618 (left!35288 t!3602)))))))))

(assert (=> d!1262838 (= lt!1514066 e!2655789)))

(declare-fun c!728577 () Bool)

(assert (=> d!1262838 (= c!728577 ((_ is Nil!47355) (list!17271 (left!35288 (left!35288 t!3602)))))))

(assert (=> d!1262838 (= (++!12101 (list!17271 (left!35288 (left!35288 t!3602))) (list!17271 (right!35618 (left!35288 t!3602)))) lt!1514066)))

(declare-fun b!4277704 () Bool)

(assert (=> b!4277704 (= e!2655789 (Cons!47355 (h!52775 (list!17271 (left!35288 (left!35288 t!3602)))) (++!12101 (t!354046 (list!17271 (left!35288 (left!35288 t!3602)))) (list!17271 (right!35618 (left!35288 t!3602))))))))

(assert (= (and d!1262838 c!728577) b!4277703))

(assert (= (and d!1262838 (not c!728577)) b!4277704))

(assert (= (and d!1262838 res!1756362) b!4277705))

(assert (= (and b!4277705 res!1756361) b!4277706))

(declare-fun m!4873819 () Bool)

(assert (=> b!4277705 m!4873819))

(assert (=> b!4277705 m!4873577))

(declare-fun m!4873821 () Bool)

(assert (=> b!4277705 m!4873821))

(assert (=> b!4277705 m!4873579))

(declare-fun m!4873823 () Bool)

(assert (=> b!4277705 m!4873823))

(declare-fun m!4873825 () Bool)

(assert (=> d!1262838 m!4873825))

(assert (=> d!1262838 m!4873577))

(declare-fun m!4873827 () Bool)

(assert (=> d!1262838 m!4873827))

(assert (=> d!1262838 m!4873579))

(declare-fun m!4873829 () Bool)

(assert (=> d!1262838 m!4873829))

(assert (=> b!4277704 m!4873579))

(declare-fun m!4873831 () Bool)

(assert (=> b!4277704 m!4873831))

(assert (=> b!4277534 d!1262838))

(declare-fun b!4277710 () Bool)

(declare-fun e!2655792 () List!47479)

(assert (=> b!4277710 (= e!2655792 (++!12101 (list!17271 (left!35288 (left!35288 (left!35288 t!3602)))) (list!17271 (right!35618 (left!35288 (left!35288 t!3602))))))))

(declare-fun d!1262840 () Bool)

(declare-fun c!728578 () Bool)

(assert (=> d!1262840 (= c!728578 ((_ is Empty!14337) (left!35288 (left!35288 t!3602))))))

(declare-fun e!2655791 () List!47479)

(assert (=> d!1262840 (= (list!17271 (left!35288 (left!35288 t!3602))) e!2655791)))

(declare-fun b!4277707 () Bool)

(assert (=> b!4277707 (= e!2655791 Nil!47355)))

(declare-fun b!4277708 () Bool)

(assert (=> b!4277708 (= e!2655791 e!2655792)))

(declare-fun c!728579 () Bool)

(assert (=> b!4277708 (= c!728579 ((_ is Leaf!22161) (left!35288 (left!35288 t!3602))))))

(declare-fun b!4277709 () Bool)

(assert (=> b!4277709 (= e!2655792 (list!17272 (xs!17643 (left!35288 (left!35288 t!3602)))))))

(assert (= (and d!1262840 c!728578) b!4277707))

(assert (= (and d!1262840 (not c!728578)) b!4277708))

(assert (= (and b!4277708 c!728579) b!4277709))

(assert (= (and b!4277708 (not c!728579)) b!4277710))

(declare-fun m!4873833 () Bool)

(assert (=> b!4277710 m!4873833))

(declare-fun m!4873835 () Bool)

(assert (=> b!4277710 m!4873835))

(assert (=> b!4277710 m!4873833))

(assert (=> b!4277710 m!4873835))

(declare-fun m!4873837 () Bool)

(assert (=> b!4277710 m!4873837))

(declare-fun m!4873839 () Bool)

(assert (=> b!4277709 m!4873839))

(assert (=> b!4277534 d!1262840))

(declare-fun b!4277714 () Bool)

(declare-fun e!2655794 () List!47479)

(assert (=> b!4277714 (= e!2655794 (++!12101 (list!17271 (left!35288 (right!35618 (left!35288 t!3602)))) (list!17271 (right!35618 (right!35618 (left!35288 t!3602))))))))

(declare-fun d!1262842 () Bool)

(declare-fun c!728580 () Bool)

(assert (=> d!1262842 (= c!728580 ((_ is Empty!14337) (right!35618 (left!35288 t!3602))))))

(declare-fun e!2655793 () List!47479)

(assert (=> d!1262842 (= (list!17271 (right!35618 (left!35288 t!3602))) e!2655793)))

(declare-fun b!4277711 () Bool)

(assert (=> b!4277711 (= e!2655793 Nil!47355)))

(declare-fun b!4277712 () Bool)

(assert (=> b!4277712 (= e!2655793 e!2655794)))

(declare-fun c!728581 () Bool)

(assert (=> b!4277712 (= c!728581 ((_ is Leaf!22161) (right!35618 (left!35288 t!3602))))))

(declare-fun b!4277713 () Bool)

(assert (=> b!4277713 (= e!2655794 (list!17272 (xs!17643 (right!35618 (left!35288 t!3602)))))))

(assert (= (and d!1262842 c!728580) b!4277711))

(assert (= (and d!1262842 (not c!728580)) b!4277712))

(assert (= (and b!4277712 c!728581) b!4277713))

(assert (= (and b!4277712 (not c!728581)) b!4277714))

(declare-fun m!4873841 () Bool)

(assert (=> b!4277714 m!4873841))

(declare-fun m!4873843 () Bool)

(assert (=> b!4277714 m!4873843))

(assert (=> b!4277714 m!4873841))

(assert (=> b!4277714 m!4873843))

(declare-fun m!4873845 () Bool)

(assert (=> b!4277714 m!4873845))

(declare-fun m!4873847 () Bool)

(assert (=> b!4277713 m!4873847))

(assert (=> b!4277534 d!1262842))

(declare-fun d!1262844 () Bool)

(declare-fun res!1756363 () Bool)

(declare-fun e!2655795 () Bool)

(assert (=> d!1262844 (=> (not res!1756363) (not e!2655795))))

(assert (=> d!1262844 (= res!1756363 (= (csize!28904 (left!35288 t!3602)) (+ (size!34666 (left!35288 (left!35288 t!3602))) (size!34666 (right!35618 (left!35288 t!3602))))))))

(assert (=> d!1262844 (= (inv!62710 (left!35288 t!3602)) e!2655795)))

(declare-fun b!4277715 () Bool)

(declare-fun res!1756364 () Bool)

(assert (=> b!4277715 (=> (not res!1756364) (not e!2655795))))

(assert (=> b!4277715 (= res!1756364 (and (not (= (left!35288 (left!35288 t!3602)) Empty!14337)) (not (= (right!35618 (left!35288 t!3602)) Empty!14337))))))

(declare-fun b!4277716 () Bool)

(declare-fun res!1756365 () Bool)

(assert (=> b!4277716 (=> (not res!1756365) (not e!2655795))))

(assert (=> b!4277716 (= res!1756365 (= (cheight!14548 (left!35288 t!3602)) (+ (max!0 (height!1887 (left!35288 (left!35288 t!3602))) (height!1887 (right!35618 (left!35288 t!3602)))) 1)))))

(declare-fun b!4277717 () Bool)

(assert (=> b!4277717 (= e!2655795 (<= 0 (cheight!14548 (left!35288 t!3602))))))

(assert (= (and d!1262844 res!1756363) b!4277715))

(assert (= (and b!4277715 res!1756364) b!4277716))

(assert (= (and b!4277716 res!1756365) b!4277717))

(declare-fun m!4873849 () Bool)

(assert (=> d!1262844 m!4873849))

(declare-fun m!4873851 () Bool)

(assert (=> d!1262844 m!4873851))

(declare-fun m!4873853 () Bool)

(assert (=> b!4277716 m!4873853))

(declare-fun m!4873855 () Bool)

(assert (=> b!4277716 m!4873855))

(assert (=> b!4277716 m!4873853))

(assert (=> b!4277716 m!4873855))

(declare-fun m!4873857 () Bool)

(assert (=> b!4277716 m!4873857))

(assert (=> b!4277578 d!1262844))

(declare-fun d!1262846 () Bool)

(declare-fun res!1756366 () Bool)

(declare-fun e!2655796 () Bool)

(assert (=> d!1262846 (=> (not res!1756366) (not e!2655796))))

(assert (=> d!1262846 (= res!1756366 (<= (size!34665 (list!17272 (xs!17643 t!3602))) 512))))

(assert (=> d!1262846 (= (inv!62712 t!3602) e!2655796)))

(declare-fun b!4277718 () Bool)

(declare-fun res!1756367 () Bool)

(assert (=> b!4277718 (=> (not res!1756367) (not e!2655796))))

(assert (=> b!4277718 (= res!1756367 (= (csize!28905 t!3602) (size!34665 (list!17272 (xs!17643 t!3602)))))))

(declare-fun b!4277719 () Bool)

(assert (=> b!4277719 (= e!2655796 (and (> (csize!28905 t!3602) 0) (<= (csize!28905 t!3602) 512)))))

(assert (= (and d!1262846 res!1756366) b!4277718))

(assert (= (and b!4277718 res!1756367) b!4277719))

(declare-fun m!4873859 () Bool)

(assert (=> d!1262846 m!4873859))

(assert (=> d!1262846 m!4873859))

(declare-fun m!4873861 () Bool)

(assert (=> d!1262846 m!4873861))

(assert (=> b!4277718 m!4873859))

(assert (=> b!4277718 m!4873859))

(assert (=> b!4277718 m!4873861))

(assert (=> b!4277480 d!1262846))

(declare-fun d!1262848 () Bool)

(declare-fun res!1756368 () Bool)

(declare-fun e!2655797 () Bool)

(assert (=> d!1262848 (=> (not res!1756368) (not e!2655797))))

(assert (=> d!1262848 (= res!1756368 (= (csize!28904 t!3602) (+ (size!34666 (left!35288 t!3602)) (size!34666 (right!35618 t!3602)))))))

(assert (=> d!1262848 (= (inv!62710 t!3602) e!2655797)))

(declare-fun b!4277720 () Bool)

(declare-fun res!1756369 () Bool)

(assert (=> b!4277720 (=> (not res!1756369) (not e!2655797))))

(assert (=> b!4277720 (= res!1756369 (and (not (= (left!35288 t!3602) Empty!14337)) (not (= (right!35618 t!3602) Empty!14337))))))

(declare-fun b!4277721 () Bool)

(declare-fun res!1756370 () Bool)

(assert (=> b!4277721 (=> (not res!1756370) (not e!2655797))))

(assert (=> b!4277721 (= res!1756370 (= (cheight!14548 t!3602) (+ (max!0 (height!1887 (left!35288 t!3602)) (height!1887 (right!35618 t!3602))) 1)))))

(declare-fun b!4277722 () Bool)

(assert (=> b!4277722 (= e!2655797 (<= 0 (cheight!14548 t!3602)))))

(assert (= (and d!1262848 res!1756368) b!4277720))

(assert (= (and b!4277720 res!1756369) b!4277721))

(assert (= (and b!4277721 res!1756370) b!4277722))

(declare-fun m!4873863 () Bool)

(assert (=> d!1262848 m!4873863))

(declare-fun m!4873865 () Bool)

(assert (=> d!1262848 m!4873865))

(declare-fun m!4873867 () Bool)

(assert (=> b!4277721 m!4873867))

(assert (=> b!4277721 m!4873509))

(assert (=> b!4277721 m!4873867))

(assert (=> b!4277721 m!4873509))

(declare-fun m!4873869 () Bool)

(assert (=> b!4277721 m!4873869))

(assert (=> b!4277478 d!1262848))

(declare-fun e!2655799 () Bool)

(declare-fun lt!1514067 () List!47479)

(declare-fun b!4277726 () Bool)

(assert (=> b!4277726 (= e!2655799 (or (not (= acc!259 Nil!47355)) (= lt!1514067 (t!354046 lt!1514032))))))

(declare-fun b!4277725 () Bool)

(declare-fun res!1756371 () Bool)

(assert (=> b!4277725 (=> (not res!1756371) (not e!2655799))))

(assert (=> b!4277725 (= res!1756371 (= (size!34665 lt!1514067) (+ (size!34665 (t!354046 lt!1514032)) (size!34665 acc!259))))))

(declare-fun b!4277723 () Bool)

(declare-fun e!2655798 () List!47479)

(assert (=> b!4277723 (= e!2655798 acc!259)))

(declare-fun d!1262850 () Bool)

(assert (=> d!1262850 e!2655799))

(declare-fun res!1756372 () Bool)

(assert (=> d!1262850 (=> (not res!1756372) (not e!2655799))))

(assert (=> d!1262850 (= res!1756372 (= (content!7488 lt!1514067) ((_ map or) (content!7488 (t!354046 lt!1514032)) (content!7488 acc!259))))))

(assert (=> d!1262850 (= lt!1514067 e!2655798)))

(declare-fun c!728582 () Bool)

(assert (=> d!1262850 (= c!728582 ((_ is Nil!47355) (t!354046 lt!1514032)))))

(assert (=> d!1262850 (= (++!12101 (t!354046 lt!1514032) acc!259) lt!1514067)))

(declare-fun b!4277724 () Bool)

(assert (=> b!4277724 (= e!2655798 (Cons!47355 (h!52775 (t!354046 lt!1514032)) (++!12101 (t!354046 (t!354046 lt!1514032)) acc!259)))))

(assert (= (and d!1262850 c!728582) b!4277723))

(assert (= (and d!1262850 (not c!728582)) b!4277724))

(assert (= (and d!1262850 res!1756372) b!4277725))

(assert (= (and b!4277725 res!1756371) b!4277726))

(declare-fun m!4873871 () Bool)

(assert (=> b!4277725 m!4873871))

(assert (=> b!4277725 m!4873705))

(assert (=> b!4277725 m!4873589))

(declare-fun m!4873873 () Bool)

(assert (=> d!1262850 m!4873873))

(assert (=> d!1262850 m!4873775))

(assert (=> d!1262850 m!4873595))

(declare-fun m!4873875 () Bool)

(assert (=> b!4277724 m!4873875))

(assert (=> b!4277567 d!1262850))

(declare-fun d!1262852 () Bool)

(declare-fun c!728583 () Bool)

(assert (=> d!1262852 (= c!728583 ((_ is Nil!47355) lt!1514038))))

(declare-fun e!2655800 () (InoxSet T!79976))

(assert (=> d!1262852 (= (content!7488 lt!1514038) e!2655800)))

(declare-fun b!4277727 () Bool)

(assert (=> b!4277727 (= e!2655800 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277728 () Bool)

(assert (=> b!4277728 (= e!2655800 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514038) true) (content!7488 (t!354046 lt!1514038))))))

(assert (= (and d!1262852 c!728583) b!4277727))

(assert (= (and d!1262852 (not c!728583)) b!4277728))

(declare-fun m!4873877 () Bool)

(assert (=> b!4277728 m!4873877))

(declare-fun m!4873879 () Bool)

(assert (=> b!4277728 m!4873879))

(assert (=> d!1262736 d!1262852))

(assert (=> d!1262736 d!1262820))

(declare-fun d!1262854 () Bool)

(declare-fun c!728584 () Bool)

(assert (=> d!1262854 (= c!728584 ((_ is Nil!47355) (++!12101 lt!1514032 acc!259)))))

(declare-fun e!2655801 () (InoxSet T!79976))

(assert (=> d!1262854 (= (content!7488 (++!12101 lt!1514032 acc!259)) e!2655801)))

(declare-fun b!4277729 () Bool)

(assert (=> b!4277729 (= e!2655801 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277730 () Bool)

(assert (=> b!4277730 (= e!2655801 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (++!12101 lt!1514032 acc!259)) true) (content!7488 (t!354046 (++!12101 lt!1514032 acc!259)))))))

(assert (= (and d!1262854 c!728584) b!4277729))

(assert (= (and d!1262854 (not c!728584)) b!4277730))

(declare-fun m!4873881 () Bool)

(assert (=> b!4277730 m!4873881))

(declare-fun m!4873883 () Bool)

(assert (=> b!4277730 m!4873883))

(assert (=> d!1262736 d!1262854))

(declare-fun d!1262856 () Bool)

(declare-fun lt!1514068 () Int)

(assert (=> d!1262856 (>= lt!1514068 0)))

(declare-fun e!2655802 () Int)

(assert (=> d!1262856 (= lt!1514068 e!2655802)))

(declare-fun c!728585 () Bool)

(assert (=> d!1262856 (= c!728585 ((_ is Nil!47355) lt!1514050))))

(assert (=> d!1262856 (= (size!34665 lt!1514050) lt!1514068)))

(declare-fun b!4277731 () Bool)

(assert (=> b!4277731 (= e!2655802 0)))

(declare-fun b!4277732 () Bool)

(assert (=> b!4277732 (= e!2655802 (+ 1 (size!34665 (t!354046 lt!1514050))))))

(assert (= (and d!1262856 c!728585) b!4277731))

(assert (= (and d!1262856 (not c!728585)) b!4277732))

(declare-fun m!4873885 () Bool)

(assert (=> b!4277732 m!4873885))

(assert (=> b!4277568 d!1262856))

(assert (=> b!4277568 d!1262780))

(assert (=> b!4277568 d!1262800))

(declare-fun d!1262858 () Bool)

(declare-fun c!728586 () Bool)

(assert (=> d!1262858 (= c!728586 ((_ is Node!14337) (left!35288 (left!35288 t!3602))))))

(declare-fun e!2655803 () Bool)

(assert (=> d!1262858 (= (inv!62708 (left!35288 (left!35288 t!3602))) e!2655803)))

(declare-fun b!4277733 () Bool)

(assert (=> b!4277733 (= e!2655803 (inv!62710 (left!35288 (left!35288 t!3602))))))

(declare-fun b!4277734 () Bool)

(declare-fun e!2655804 () Bool)

(assert (=> b!4277734 (= e!2655803 e!2655804)))

(declare-fun res!1756373 () Bool)

(assert (=> b!4277734 (= res!1756373 (not ((_ is Leaf!22161) (left!35288 (left!35288 t!3602)))))))

(assert (=> b!4277734 (=> res!1756373 e!2655804)))

(declare-fun b!4277735 () Bool)

(assert (=> b!4277735 (= e!2655804 (inv!62712 (left!35288 (left!35288 t!3602))))))

(assert (= (and d!1262858 c!728586) b!4277733))

(assert (= (and d!1262858 (not c!728586)) b!4277734))

(assert (= (and b!4277734 (not res!1756373)) b!4277735))

(declare-fun m!4873887 () Bool)

(assert (=> b!4277733 m!4873887))

(declare-fun m!4873889 () Bool)

(assert (=> b!4277735 m!4873889))

(assert (=> b!4277610 d!1262858))

(declare-fun d!1262860 () Bool)

(declare-fun c!728587 () Bool)

(assert (=> d!1262860 (= c!728587 ((_ is Node!14337) (right!35618 (left!35288 t!3602))))))

(declare-fun e!2655805 () Bool)

(assert (=> d!1262860 (= (inv!62708 (right!35618 (left!35288 t!3602))) e!2655805)))

(declare-fun b!4277736 () Bool)

(assert (=> b!4277736 (= e!2655805 (inv!62710 (right!35618 (left!35288 t!3602))))))

(declare-fun b!4277737 () Bool)

(declare-fun e!2655806 () Bool)

(assert (=> b!4277737 (= e!2655805 e!2655806)))

(declare-fun res!1756374 () Bool)

(assert (=> b!4277737 (= res!1756374 (not ((_ is Leaf!22161) (right!35618 (left!35288 t!3602)))))))

(assert (=> b!4277737 (=> res!1756374 e!2655806)))

(declare-fun b!4277738 () Bool)

(assert (=> b!4277738 (= e!2655806 (inv!62712 (right!35618 (left!35288 t!3602))))))

(assert (= (and d!1262860 c!728587) b!4277736))

(assert (= (and d!1262860 (not c!728587)) b!4277737))

(assert (= (and b!4277737 (not res!1756374)) b!4277738))

(declare-fun m!4873891 () Bool)

(assert (=> b!4277736 m!4873891))

(declare-fun m!4873893 () Bool)

(assert (=> b!4277738 m!4873893))

(assert (=> b!4277610 d!1262860))

(declare-fun d!1262862 () Bool)

(assert (=> d!1262862 (= (inv!62709 (xs!17643 (left!35288 t!3602))) (<= (size!34665 (innerList!14397 (xs!17643 (left!35288 t!3602)))) 2147483647))))

(declare-fun bs!602593 () Bool)

(assert (= bs!602593 d!1262862))

(declare-fun m!4873895 () Bool)

(assert (=> bs!602593 m!4873895))

(assert (=> b!4277611 d!1262862))

(assert (=> b!4277462 d!1262772))

(assert (=> b!4277462 d!1262774))

(declare-fun tp!1308908 () Bool)

(declare-fun tp!1308909 () Bool)

(declare-fun e!2655807 () Bool)

(declare-fun b!4277739 () Bool)

(assert (=> b!4277739 (= e!2655807 (and (inv!62708 (left!35288 (left!35288 (right!35618 t!3602)))) tp!1308909 (inv!62708 (right!35618 (left!35288 (right!35618 t!3602)))) tp!1308908))))

(declare-fun b!4277741 () Bool)

(declare-fun e!2655808 () Bool)

(declare-fun tp!1308907 () Bool)

(assert (=> b!4277741 (= e!2655808 tp!1308907)))

(declare-fun b!4277740 () Bool)

(assert (=> b!4277740 (= e!2655807 (and (inv!62709 (xs!17643 (left!35288 (right!35618 t!3602)))) e!2655808))))

(assert (=> b!4277613 (= tp!1308906 (and (inv!62708 (left!35288 (right!35618 t!3602))) e!2655807))))

(assert (= (and b!4277613 ((_ is Node!14337) (left!35288 (right!35618 t!3602)))) b!4277739))

(assert (= b!4277740 b!4277741))

(assert (= (and b!4277613 ((_ is Leaf!22161) (left!35288 (right!35618 t!3602)))) b!4277740))

(declare-fun m!4873897 () Bool)

(assert (=> b!4277739 m!4873897))

(declare-fun m!4873899 () Bool)

(assert (=> b!4277739 m!4873899))

(declare-fun m!4873901 () Bool)

(assert (=> b!4277740 m!4873901))

(assert (=> b!4277613 m!4873695))

(declare-fun tp!1308912 () Bool)

(declare-fun e!2655809 () Bool)

(declare-fun tp!1308911 () Bool)

(declare-fun b!4277742 () Bool)

(assert (=> b!4277742 (= e!2655809 (and (inv!62708 (left!35288 (right!35618 (right!35618 t!3602)))) tp!1308912 (inv!62708 (right!35618 (right!35618 (right!35618 t!3602)))) tp!1308911))))

(declare-fun b!4277744 () Bool)

(declare-fun e!2655810 () Bool)

(declare-fun tp!1308910 () Bool)

(assert (=> b!4277744 (= e!2655810 tp!1308910)))

(declare-fun b!4277743 () Bool)

(assert (=> b!4277743 (= e!2655809 (and (inv!62709 (xs!17643 (right!35618 (right!35618 t!3602)))) e!2655810))))

(assert (=> b!4277613 (= tp!1308905 (and (inv!62708 (right!35618 (right!35618 t!3602))) e!2655809))))

(assert (= (and b!4277613 ((_ is Node!14337) (right!35618 (right!35618 t!3602)))) b!4277742))

(assert (= b!4277743 b!4277744))

(assert (= (and b!4277613 ((_ is Leaf!22161) (right!35618 (right!35618 t!3602)))) b!4277743))

(declare-fun m!4873903 () Bool)

(assert (=> b!4277742 m!4873903))

(declare-fun m!4873905 () Bool)

(assert (=> b!4277742 m!4873905))

(declare-fun m!4873907 () Bool)

(assert (=> b!4277743 m!4873907))

(assert (=> b!4277613 m!4873697))

(declare-fun b!4277745 () Bool)

(declare-fun e!2655811 () Bool)

(declare-fun tp!1308913 () Bool)

(assert (=> b!4277745 (= e!2655811 (and tp_is_empty!22949 tp!1308913))))

(assert (=> b!4277592 (= tp!1308887 e!2655811)))

(assert (= (and b!4277592 ((_ is Cons!47355) (t!354046 (innerList!14397 (xs!17643 t!3602))))) b!4277745))

(declare-fun b!4277746 () Bool)

(declare-fun e!2655812 () Bool)

(declare-fun tp!1308914 () Bool)

(assert (=> b!4277746 (= e!2655812 (and tp_is_empty!22949 tp!1308914))))

(assert (=> b!4277612 (= tp!1308901 e!2655812)))

(assert (= (and b!4277612 ((_ is Cons!47355) (innerList!14397 (xs!17643 (left!35288 t!3602))))) b!4277746))

(declare-fun b!4277747 () Bool)

(declare-fun e!2655813 () Bool)

(declare-fun tp!1308915 () Bool)

(assert (=> b!4277747 (= e!2655813 (and tp_is_empty!22949 tp!1308915))))

(assert (=> b!4277591 (= tp!1308886 e!2655813)))

(assert (= (and b!4277591 ((_ is Cons!47355) (t!354046 (t!354046 acc!259)))) b!4277747))

(declare-fun b!4277748 () Bool)

(declare-fun e!2655814 () Bool)

(declare-fun tp!1308917 () Bool)

(declare-fun tp!1308918 () Bool)

(assert (=> b!4277748 (= e!2655814 (and (inv!62708 (left!35288 (left!35288 (left!35288 t!3602)))) tp!1308918 (inv!62708 (right!35618 (left!35288 (left!35288 t!3602)))) tp!1308917))))

(declare-fun b!4277750 () Bool)

(declare-fun e!2655815 () Bool)

(declare-fun tp!1308916 () Bool)

(assert (=> b!4277750 (= e!2655815 tp!1308916)))

(declare-fun b!4277749 () Bool)

(assert (=> b!4277749 (= e!2655814 (and (inv!62709 (xs!17643 (left!35288 (left!35288 t!3602)))) e!2655815))))

(assert (=> b!4277610 (= tp!1308903 (and (inv!62708 (left!35288 (left!35288 t!3602))) e!2655814))))

(assert (= (and b!4277610 ((_ is Node!14337) (left!35288 (left!35288 t!3602)))) b!4277748))

(assert (= b!4277749 b!4277750))

(assert (= (and b!4277610 ((_ is Leaf!22161) (left!35288 (left!35288 t!3602)))) b!4277749))

(declare-fun m!4873909 () Bool)

(assert (=> b!4277748 m!4873909))

(declare-fun m!4873911 () Bool)

(assert (=> b!4277748 m!4873911))

(declare-fun m!4873913 () Bool)

(assert (=> b!4277749 m!4873913))

(assert (=> b!4277610 m!4873689))

(declare-fun tp!1308921 () Bool)

(declare-fun tp!1308920 () Bool)

(declare-fun b!4277751 () Bool)

(declare-fun e!2655816 () Bool)

(assert (=> b!4277751 (= e!2655816 (and (inv!62708 (left!35288 (right!35618 (left!35288 t!3602)))) tp!1308921 (inv!62708 (right!35618 (right!35618 (left!35288 t!3602)))) tp!1308920))))

(declare-fun b!4277753 () Bool)

(declare-fun e!2655817 () Bool)

(declare-fun tp!1308919 () Bool)

(assert (=> b!4277753 (= e!2655817 tp!1308919)))

(declare-fun b!4277752 () Bool)

(assert (=> b!4277752 (= e!2655816 (and (inv!62709 (xs!17643 (right!35618 (left!35288 t!3602)))) e!2655817))))

(assert (=> b!4277610 (= tp!1308902 (and (inv!62708 (right!35618 (left!35288 t!3602))) e!2655816))))

(assert (= (and b!4277610 ((_ is Node!14337) (right!35618 (left!35288 t!3602)))) b!4277751))

(assert (= b!4277752 b!4277753))

(assert (= (and b!4277610 ((_ is Leaf!22161) (right!35618 (left!35288 t!3602)))) b!4277752))

(declare-fun m!4873915 () Bool)

(assert (=> b!4277751 m!4873915))

(declare-fun m!4873917 () Bool)

(assert (=> b!4277751 m!4873917))

(declare-fun m!4873919 () Bool)

(assert (=> b!4277752 m!4873919))

(assert (=> b!4277610 m!4873691))

(declare-fun b!4277754 () Bool)

(declare-fun e!2655818 () Bool)

(declare-fun tp!1308922 () Bool)

(assert (=> b!4277754 (= e!2655818 (and tp_is_empty!22949 tp!1308922))))

(assert (=> b!4277615 (= tp!1308904 e!2655818)))

(assert (= (and b!4277615 ((_ is Cons!47355) (innerList!14397 (xs!17643 (right!35618 t!3602))))) b!4277754))

(check-sat (not b!4277743) (not b!4277725) (not d!1262844) (not b!4277739) (not b!4277705) (not b!4277710) (not b!4277732) (not d!1262850) (not b!4277748) (not d!1262838) (not b!4277741) (not b!4277613) (not b!4277746) (not b!4277677) (not b!4277658) (not b!4277753) (not b!4277724) (not b!4277738) (not b!4277728) (not b!4277652) (not b!4277736) (not b!4277649) (not b!4277662) (not b!4277654) (not b!4277718) (not b!4277636) (not d!1262806) (not b!4277690) (not b!4277740) (not d!1262808) (not b!4277684) (not b!4277695) (not b!4277687) (not d!1262822) (not d!1262826) (not b!4277621) (not b!4277660) (not b!4277682) (not b!4277752) (not b!4277721) (not b!4277666) (not d!1262836) (not d!1262846) (not d!1262848) (not b!4277691) (not b!4277648) (not b!4277623) (not b!4277747) (not b!4277633) (not b!4277702) (not b!4277651) (not b!4277742) (not b!4277750) (not b!4277751) (not b!4277716) (not d!1262782) (not d!1262862) (not b!4277610) (not b!4277671) (not b!4277704) (not b!4277670) (not b!4277699) (not b!4277625) (not b!4277646) (not b!4277656) (not b!4277709) (not b!4277680) (not b!4277733) (not b!4277644) (not b!4277735) (not b!4277667) (not b!4277713) (not d!1262784) (not b!4277700) (not b!4277749) (not b!4277637) (not b!4277686) (not b!4277696) (not d!1262810) (not b!4277664) (not b!4277745) (not b!4277730) tp_is_empty!22949 (not b!4277754) (not d!1262812) (not b!4277744) (not b!4277714))
(check-sat)
(get-model)

(declare-fun d!1262952 () Bool)

(declare-fun res!1756416 () Bool)

(declare-fun e!2655892 () Bool)

(assert (=> d!1262952 (=> (not res!1756416) (not e!2655892))))

(assert (=> d!1262952 (= res!1756416 (<= (size!34665 (list!17272 (xs!17643 (left!35288 (right!35618 t!3602))))) 512))))

(assert (=> d!1262952 (= (inv!62712 (left!35288 (right!35618 t!3602))) e!2655892)))

(declare-fun b!4277894 () Bool)

(declare-fun res!1756417 () Bool)

(assert (=> b!4277894 (=> (not res!1756417) (not e!2655892))))

(assert (=> b!4277894 (= res!1756417 (= (csize!28905 (left!35288 (right!35618 t!3602))) (size!34665 (list!17272 (xs!17643 (left!35288 (right!35618 t!3602)))))))))

(declare-fun b!4277895 () Bool)

(assert (=> b!4277895 (= e!2655892 (and (> (csize!28905 (left!35288 (right!35618 t!3602))) 0) (<= (csize!28905 (left!35288 (right!35618 t!3602))) 512)))))

(assert (= (and d!1262952 res!1756416) b!4277894))

(assert (= (and b!4277894 res!1756417) b!4277895))

(assert (=> d!1262952 m!4873805))

(assert (=> d!1262952 m!4873805))

(declare-fun m!4874141 () Bool)

(assert (=> d!1262952 m!4874141))

(assert (=> b!4277894 m!4873805))

(assert (=> b!4277894 m!4873805))

(assert (=> b!4277894 m!4874141))

(assert (=> b!4277651 d!1262952))

(declare-fun d!1262954 () Bool)

(declare-fun lt!1514087 () Int)

(assert (=> d!1262954 (>= lt!1514087 0)))

(declare-fun e!2655893 () Int)

(assert (=> d!1262954 (= lt!1514087 e!2655893)))

(declare-fun c!728629 () Bool)

(assert (=> d!1262954 (= c!728629 ((_ is Nil!47355) (list!17272 (xs!17643 (right!35618 t!3602)))))))

(assert (=> d!1262954 (= (size!34665 (list!17272 (xs!17643 (right!35618 t!3602)))) lt!1514087)))

(declare-fun b!4277896 () Bool)

(assert (=> b!4277896 (= e!2655893 0)))

(declare-fun b!4277897 () Bool)

(assert (=> b!4277897 (= e!2655893 (+ 1 (size!34665 (t!354046 (list!17272 (xs!17643 (right!35618 t!3602)))))))))

(assert (= (and d!1262954 c!728629) b!4277896))

(assert (= (and d!1262954 (not c!728629)) b!4277897))

(declare-fun m!4874143 () Bool)

(assert (=> b!4277897 m!4874143))

(assert (=> b!4277677 d!1262954))

(assert (=> b!4277677 d!1262824))

(declare-fun d!1262956 () Bool)

(declare-fun c!728630 () Bool)

(assert (=> d!1262956 (= c!728630 ((_ is Node!14337) (left!35288 (left!35288 (left!35288 t!3602)))))))

(declare-fun e!2655894 () Bool)

(assert (=> d!1262956 (= (inv!62708 (left!35288 (left!35288 (left!35288 t!3602)))) e!2655894)))

(declare-fun b!4277898 () Bool)

(assert (=> b!4277898 (= e!2655894 (inv!62710 (left!35288 (left!35288 (left!35288 t!3602)))))))

(declare-fun b!4277899 () Bool)

(declare-fun e!2655895 () Bool)

(assert (=> b!4277899 (= e!2655894 e!2655895)))

(declare-fun res!1756418 () Bool)

(assert (=> b!4277899 (= res!1756418 (not ((_ is Leaf!22161) (left!35288 (left!35288 (left!35288 t!3602))))))))

(assert (=> b!4277899 (=> res!1756418 e!2655895)))

(declare-fun b!4277900 () Bool)

(assert (=> b!4277900 (= e!2655895 (inv!62712 (left!35288 (left!35288 (left!35288 t!3602)))))))

(assert (= (and d!1262956 c!728630) b!4277898))

(assert (= (and d!1262956 (not c!728630)) b!4277899))

(assert (= (and b!4277899 (not res!1756418)) b!4277900))

(declare-fun m!4874145 () Bool)

(assert (=> b!4277898 m!4874145))

(declare-fun m!4874147 () Bool)

(assert (=> b!4277900 m!4874147))

(assert (=> b!4277748 d!1262956))

(declare-fun d!1262958 () Bool)

(declare-fun c!728631 () Bool)

(assert (=> d!1262958 (= c!728631 ((_ is Node!14337) (right!35618 (left!35288 (left!35288 t!3602)))))))

(declare-fun e!2655896 () Bool)

(assert (=> d!1262958 (= (inv!62708 (right!35618 (left!35288 (left!35288 t!3602)))) e!2655896)))

(declare-fun b!4277901 () Bool)

(assert (=> b!4277901 (= e!2655896 (inv!62710 (right!35618 (left!35288 (left!35288 t!3602)))))))

(declare-fun b!4277902 () Bool)

(declare-fun e!2655897 () Bool)

(assert (=> b!4277902 (= e!2655896 e!2655897)))

(declare-fun res!1756419 () Bool)

(assert (=> b!4277902 (= res!1756419 (not ((_ is Leaf!22161) (right!35618 (left!35288 (left!35288 t!3602))))))))

(assert (=> b!4277902 (=> res!1756419 e!2655897)))

(declare-fun b!4277903 () Bool)

(assert (=> b!4277903 (= e!2655897 (inv!62712 (right!35618 (left!35288 (left!35288 t!3602)))))))

(assert (= (and d!1262958 c!728631) b!4277901))

(assert (= (and d!1262958 (not c!728631)) b!4277902))

(assert (= (and b!4277902 (not res!1756419)) b!4277903))

(declare-fun m!4874149 () Bool)

(assert (=> b!4277901 m!4874149))

(declare-fun m!4874151 () Bool)

(assert (=> b!4277903 m!4874151))

(assert (=> b!4277748 d!1262958))

(declare-fun b!4277907 () Bool)

(declare-fun e!2655899 () Bool)

(declare-fun lt!1514088 () List!47479)

(assert (=> b!4277907 (= e!2655899 (or (not (= (list!17271 (right!35618 (right!35618 t!3602))) Nil!47355)) (= lt!1514088 (t!354046 (list!17271 (left!35288 (right!35618 t!3602)))))))))

(declare-fun b!4277906 () Bool)

(declare-fun res!1756420 () Bool)

(assert (=> b!4277906 (=> (not res!1756420) (not e!2655899))))

(assert (=> b!4277906 (= res!1756420 (= (size!34665 lt!1514088) (+ (size!34665 (t!354046 (list!17271 (left!35288 (right!35618 t!3602))))) (size!34665 (list!17271 (right!35618 (right!35618 t!3602)))))))))

(declare-fun b!4277904 () Bool)

(declare-fun e!2655898 () List!47479)

(assert (=> b!4277904 (= e!2655898 (list!17271 (right!35618 (right!35618 t!3602))))))

(declare-fun d!1262960 () Bool)

(assert (=> d!1262960 e!2655899))

(declare-fun res!1756421 () Bool)

(assert (=> d!1262960 (=> (not res!1756421) (not e!2655899))))

(assert (=> d!1262960 (= res!1756421 (= (content!7488 lt!1514088) ((_ map or) (content!7488 (t!354046 (list!17271 (left!35288 (right!35618 t!3602))))) (content!7488 (list!17271 (right!35618 (right!35618 t!3602)))))))))

(assert (=> d!1262960 (= lt!1514088 e!2655898)))

(declare-fun c!728632 () Bool)

(assert (=> d!1262960 (= c!728632 ((_ is Nil!47355) (t!354046 (list!17271 (left!35288 (right!35618 t!3602))))))))

(assert (=> d!1262960 (= (++!12101 (t!354046 (list!17271 (left!35288 (right!35618 t!3602)))) (list!17271 (right!35618 (right!35618 t!3602)))) lt!1514088)))

(declare-fun b!4277905 () Bool)

(assert (=> b!4277905 (= e!2655898 (Cons!47355 (h!52775 (t!354046 (list!17271 (left!35288 (right!35618 t!3602))))) (++!12101 (t!354046 (t!354046 (list!17271 (left!35288 (right!35618 t!3602))))) (list!17271 (right!35618 (right!35618 t!3602))))))))

(assert (= (and d!1262960 c!728632) b!4277904))

(assert (= (and d!1262960 (not c!728632)) b!4277905))

(assert (= (and d!1262960 res!1756421) b!4277906))

(assert (= (and b!4277906 res!1756420) b!4277907))

(declare-fun m!4874153 () Bool)

(assert (=> b!4277906 m!4874153))

(declare-fun m!4874155 () Bool)

(assert (=> b!4277906 m!4874155))

(assert (=> b!4277906 m!4873601))

(assert (=> b!4277906 m!4873789))

(declare-fun m!4874157 () Bool)

(assert (=> d!1262960 m!4874157))

(declare-fun m!4874159 () Bool)

(assert (=> d!1262960 m!4874159))

(assert (=> d!1262960 m!4873601))

(assert (=> d!1262960 m!4873795))

(assert (=> b!4277905 m!4873601))

(declare-fun m!4874161 () Bool)

(assert (=> b!4277905 m!4874161))

(assert (=> b!4277690 d!1262960))

(declare-fun d!1262962 () Bool)

(declare-fun c!728633 () Bool)

(assert (=> d!1262962 (= c!728633 ((_ is Node!14337) (left!35288 (right!35618 (right!35618 t!3602)))))))

(declare-fun e!2655900 () Bool)

(assert (=> d!1262962 (= (inv!62708 (left!35288 (right!35618 (right!35618 t!3602)))) e!2655900)))

(declare-fun b!4277908 () Bool)

(assert (=> b!4277908 (= e!2655900 (inv!62710 (left!35288 (right!35618 (right!35618 t!3602)))))))

(declare-fun b!4277909 () Bool)

(declare-fun e!2655901 () Bool)

(assert (=> b!4277909 (= e!2655900 e!2655901)))

(declare-fun res!1756422 () Bool)

(assert (=> b!4277909 (= res!1756422 (not ((_ is Leaf!22161) (left!35288 (right!35618 (right!35618 t!3602))))))))

(assert (=> b!4277909 (=> res!1756422 e!2655901)))

(declare-fun b!4277910 () Bool)

(assert (=> b!4277910 (= e!2655901 (inv!62712 (left!35288 (right!35618 (right!35618 t!3602)))))))

(assert (= (and d!1262962 c!728633) b!4277908))

(assert (= (and d!1262962 (not c!728633)) b!4277909))

(assert (= (and b!4277909 (not res!1756422)) b!4277910))

(declare-fun m!4874163 () Bool)

(assert (=> b!4277908 m!4874163))

(declare-fun m!4874165 () Bool)

(assert (=> b!4277910 m!4874165))

(assert (=> b!4277742 d!1262962))

(declare-fun d!1262964 () Bool)

(declare-fun c!728634 () Bool)

(assert (=> d!1262964 (= c!728634 ((_ is Node!14337) (right!35618 (right!35618 (right!35618 t!3602)))))))

(declare-fun e!2655902 () Bool)

(assert (=> d!1262964 (= (inv!62708 (right!35618 (right!35618 (right!35618 t!3602)))) e!2655902)))

(declare-fun b!4277911 () Bool)

(assert (=> b!4277911 (= e!2655902 (inv!62710 (right!35618 (right!35618 (right!35618 t!3602)))))))

(declare-fun b!4277912 () Bool)

(declare-fun e!2655903 () Bool)

(assert (=> b!4277912 (= e!2655902 e!2655903)))

(declare-fun res!1756423 () Bool)

(assert (=> b!4277912 (= res!1756423 (not ((_ is Leaf!22161) (right!35618 (right!35618 (right!35618 t!3602))))))))

(assert (=> b!4277912 (=> res!1756423 e!2655903)))

(declare-fun b!4277913 () Bool)

(assert (=> b!4277913 (= e!2655903 (inv!62712 (right!35618 (right!35618 (right!35618 t!3602)))))))

(assert (= (and d!1262964 c!728634) b!4277911))

(assert (= (and d!1262964 (not c!728634)) b!4277912))

(assert (= (and b!4277912 (not res!1756423)) b!4277913))

(declare-fun m!4874167 () Bool)

(assert (=> b!4277911 m!4874167))

(declare-fun m!4874169 () Bool)

(assert (=> b!4277913 m!4874169))

(assert (=> b!4277742 d!1262964))

(declare-fun d!1262966 () Bool)

(declare-fun res!1756424 () Bool)

(declare-fun e!2655904 () Bool)

(assert (=> d!1262966 (=> (not res!1756424) (not e!2655904))))

(assert (=> d!1262966 (= res!1756424 (<= (size!34665 (list!17272 (xs!17643 (left!35288 (left!35288 t!3602))))) 512))))

(assert (=> d!1262966 (= (inv!62712 (left!35288 (left!35288 t!3602))) e!2655904)))

(declare-fun b!4277914 () Bool)

(declare-fun res!1756425 () Bool)

(assert (=> b!4277914 (=> (not res!1756425) (not e!2655904))))

(assert (=> b!4277914 (= res!1756425 (= (csize!28905 (left!35288 (left!35288 t!3602))) (size!34665 (list!17272 (xs!17643 (left!35288 (left!35288 t!3602)))))))))

(declare-fun b!4277915 () Bool)

(assert (=> b!4277915 (= e!2655904 (and (> (csize!28905 (left!35288 (left!35288 t!3602))) 0) (<= (csize!28905 (left!35288 (left!35288 t!3602))) 512)))))

(assert (= (and d!1262966 res!1756424) b!4277914))

(assert (= (and b!4277914 res!1756425) b!4277915))

(assert (=> d!1262966 m!4873839))

(assert (=> d!1262966 m!4873839))

(declare-fun m!4874171 () Bool)

(assert (=> d!1262966 m!4874171))

(assert (=> b!4277914 m!4873839))

(assert (=> b!4277914 m!4873839))

(assert (=> b!4277914 m!4874171))

(assert (=> b!4277735 d!1262966))

(declare-fun d!1262968 () Bool)

(declare-fun lt!1514089 () Int)

(assert (=> d!1262968 (>= lt!1514089 0)))

(declare-fun e!2655905 () Int)

(assert (=> d!1262968 (= lt!1514089 e!2655905)))

(declare-fun c!728635 () Bool)

(assert (=> d!1262968 (= c!728635 ((_ is Nil!47355) (t!354046 acc!259)))))

(assert (=> d!1262968 (= (size!34665 (t!354046 acc!259)) lt!1514089)))

(declare-fun b!4277916 () Bool)

(assert (=> b!4277916 (= e!2655905 0)))

(declare-fun b!4277917 () Bool)

(assert (=> b!4277917 (= e!2655905 (+ 1 (size!34665 (t!354046 (t!354046 acc!259)))))))

(assert (= (and d!1262968 c!728635) b!4277916))

(assert (= (and d!1262968 (not c!728635)) b!4277917))

(declare-fun m!4874173 () Bool)

(assert (=> b!4277917 m!4874173))

(assert (=> b!4277660 d!1262968))

(declare-fun d!1262970 () Bool)

(assert (=> d!1262970 (= (list!17272 (xs!17643 (left!35288 (left!35288 t!3602)))) (innerList!14397 (xs!17643 (left!35288 (left!35288 t!3602)))))))

(assert (=> b!4277709 d!1262970))

(declare-fun d!1262972 () Bool)

(declare-fun res!1756426 () Bool)

(declare-fun e!2655906 () Bool)

(assert (=> d!1262972 (=> (not res!1756426) (not e!2655906))))

(assert (=> d!1262972 (= res!1756426 (= (csize!28904 (left!35288 (left!35288 t!3602))) (+ (size!34666 (left!35288 (left!35288 (left!35288 t!3602)))) (size!34666 (right!35618 (left!35288 (left!35288 t!3602)))))))))

(assert (=> d!1262972 (= (inv!62710 (left!35288 (left!35288 t!3602))) e!2655906)))

(declare-fun b!4277918 () Bool)

(declare-fun res!1756427 () Bool)

(assert (=> b!4277918 (=> (not res!1756427) (not e!2655906))))

(assert (=> b!4277918 (= res!1756427 (and (not (= (left!35288 (left!35288 (left!35288 t!3602))) Empty!14337)) (not (= (right!35618 (left!35288 (left!35288 t!3602))) Empty!14337))))))

(declare-fun b!4277919 () Bool)

(declare-fun res!1756428 () Bool)

(assert (=> b!4277919 (=> (not res!1756428) (not e!2655906))))

(assert (=> b!4277919 (= res!1756428 (= (cheight!14548 (left!35288 (left!35288 t!3602))) (+ (max!0 (height!1887 (left!35288 (left!35288 (left!35288 t!3602)))) (height!1887 (right!35618 (left!35288 (left!35288 t!3602))))) 1)))))

(declare-fun b!4277920 () Bool)

(assert (=> b!4277920 (= e!2655906 (<= 0 (cheight!14548 (left!35288 (left!35288 t!3602)))))))

(assert (= (and d!1262972 res!1756426) b!4277918))

(assert (= (and b!4277918 res!1756427) b!4277919))

(assert (= (and b!4277919 res!1756428) b!4277920))

(declare-fun m!4874175 () Bool)

(assert (=> d!1262972 m!4874175))

(declare-fun m!4874177 () Bool)

(assert (=> d!1262972 m!4874177))

(declare-fun m!4874179 () Bool)

(assert (=> b!4277919 m!4874179))

(declare-fun m!4874181 () Bool)

(assert (=> b!4277919 m!4874181))

(assert (=> b!4277919 m!4874179))

(assert (=> b!4277919 m!4874181))

(declare-fun m!4874183 () Bool)

(assert (=> b!4277919 m!4874183))

(assert (=> b!4277733 d!1262972))

(declare-fun d!1262974 () Bool)

(declare-fun c!728636 () Bool)

(assert (=> d!1262974 (= c!728636 ((_ is Nil!47355) (t!354046 lt!1514032)))))

(declare-fun e!2655907 () (InoxSet T!79976))

(assert (=> d!1262974 (= (content!7488 (t!354046 lt!1514032)) e!2655907)))

(declare-fun b!4277921 () Bool)

(assert (=> b!4277921 (= e!2655907 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277922 () Bool)

(assert (=> b!4277922 (= e!2655907 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 lt!1514032)) true) (content!7488 (t!354046 (t!354046 lt!1514032)))))))

(assert (= (and d!1262974 c!728636) b!4277921))

(assert (= (and d!1262974 (not c!728636)) b!4277922))

(declare-fun m!4874185 () Bool)

(assert (=> b!4277922 m!4874185))

(declare-fun m!4874187 () Bool)

(assert (=> b!4277922 m!4874187))

(assert (=> b!4277682 d!1262974))

(declare-fun d!1262976 () Bool)

(declare-fun c!728637 () Bool)

(assert (=> d!1262976 (= c!728637 ((_ is Nil!47355) (t!354046 (++!12101 lt!1514031 lt!1514032))))))

(declare-fun e!2655908 () (InoxSet T!79976))

(assert (=> d!1262976 (= (content!7488 (t!354046 (++!12101 lt!1514031 lt!1514032))) e!2655908)))

(declare-fun b!4277923 () Bool)

(assert (=> b!4277923 (= e!2655908 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277924 () Bool)

(assert (=> b!4277924 (= e!2655908 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 (++!12101 lt!1514031 lt!1514032))) true) (content!7488 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032))))))))

(assert (= (and d!1262976 c!728637) b!4277923))

(assert (= (and d!1262976 (not c!728637)) b!4277924))

(declare-fun m!4874189 () Bool)

(assert (=> b!4277924 m!4874189))

(declare-fun m!4874191 () Bool)

(assert (=> b!4277924 m!4874191))

(assert (=> b!4277646 d!1262976))

(declare-fun d!1262978 () Bool)

(declare-fun res!1756429 () Bool)

(declare-fun e!2655909 () Bool)

(assert (=> d!1262978 (=> (not res!1756429) (not e!2655909))))

(assert (=> d!1262978 (= res!1756429 (= (csize!28904 (left!35288 (right!35618 t!3602))) (+ (size!34666 (left!35288 (left!35288 (right!35618 t!3602)))) (size!34666 (right!35618 (left!35288 (right!35618 t!3602)))))))))

(assert (=> d!1262978 (= (inv!62710 (left!35288 (right!35618 t!3602))) e!2655909)))

(declare-fun b!4277925 () Bool)

(declare-fun res!1756430 () Bool)

(assert (=> b!4277925 (=> (not res!1756430) (not e!2655909))))

(assert (=> b!4277925 (= res!1756430 (and (not (= (left!35288 (left!35288 (right!35618 t!3602))) Empty!14337)) (not (= (right!35618 (left!35288 (right!35618 t!3602))) Empty!14337))))))

(declare-fun b!4277926 () Bool)

(declare-fun res!1756431 () Bool)

(assert (=> b!4277926 (=> (not res!1756431) (not e!2655909))))

(assert (=> b!4277926 (= res!1756431 (= (cheight!14548 (left!35288 (right!35618 t!3602))) (+ (max!0 (height!1887 (left!35288 (left!35288 (right!35618 t!3602)))) (height!1887 (right!35618 (left!35288 (right!35618 t!3602))))) 1)))))

(declare-fun b!4277927 () Bool)

(assert (=> b!4277927 (= e!2655909 (<= 0 (cheight!14548 (left!35288 (right!35618 t!3602)))))))

(assert (= (and d!1262978 res!1756429) b!4277925))

(assert (= (and b!4277925 res!1756430) b!4277926))

(assert (= (and b!4277926 res!1756431) b!4277927))

(declare-fun m!4874193 () Bool)

(assert (=> d!1262978 m!4874193))

(declare-fun m!4874195 () Bool)

(assert (=> d!1262978 m!4874195))

(declare-fun m!4874197 () Bool)

(assert (=> b!4277926 m!4874197))

(declare-fun m!4874199 () Bool)

(assert (=> b!4277926 m!4874199))

(assert (=> b!4277926 m!4874197))

(assert (=> b!4277926 m!4874199))

(declare-fun m!4874201 () Bool)

(assert (=> b!4277926 m!4874201))

(assert (=> b!4277649 d!1262978))

(declare-fun d!1262980 () Bool)

(assert (=> d!1262980 (= (max!0 (height!1887 (left!35288 t!3602)) (height!1887 (right!35618 t!3602))) (ite (< (height!1887 (left!35288 t!3602)) (height!1887 (right!35618 t!3602))) (height!1887 (right!35618 t!3602)) (height!1887 (left!35288 t!3602))))))

(assert (=> b!4277721 d!1262980))

(declare-fun d!1262982 () Bool)

(assert (=> d!1262982 (= (height!1887 (left!35288 t!3602)) (ite ((_ is Empty!14337) (left!35288 t!3602)) 0 (ite ((_ is Leaf!22161) (left!35288 t!3602)) 1 (cheight!14548 (left!35288 t!3602)))))))

(assert (=> b!4277721 d!1262982))

(assert (=> b!4277721 d!1262758))

(declare-fun b!4277931 () Bool)

(declare-fun lt!1514090 () List!47479)

(declare-fun e!2655911 () Bool)

(assert (=> b!4277931 (= e!2655911 (or (not (= acc!259 Nil!47355)) (= lt!1514090 (t!354046 (t!354046 lt!1514032)))))))

(declare-fun b!4277930 () Bool)

(declare-fun res!1756432 () Bool)

(assert (=> b!4277930 (=> (not res!1756432) (not e!2655911))))

(assert (=> b!4277930 (= res!1756432 (= (size!34665 lt!1514090) (+ (size!34665 (t!354046 (t!354046 lt!1514032))) (size!34665 acc!259))))))

(declare-fun b!4277928 () Bool)

(declare-fun e!2655910 () List!47479)

(assert (=> b!4277928 (= e!2655910 acc!259)))

(declare-fun d!1262984 () Bool)

(assert (=> d!1262984 e!2655911))

(declare-fun res!1756433 () Bool)

(assert (=> d!1262984 (=> (not res!1756433) (not e!2655911))))

(assert (=> d!1262984 (= res!1756433 (= (content!7488 lt!1514090) ((_ map or) (content!7488 (t!354046 (t!354046 lt!1514032))) (content!7488 acc!259))))))

(assert (=> d!1262984 (= lt!1514090 e!2655910)))

(declare-fun c!728638 () Bool)

(assert (=> d!1262984 (= c!728638 ((_ is Nil!47355) (t!354046 (t!354046 lt!1514032))))))

(assert (=> d!1262984 (= (++!12101 (t!354046 (t!354046 lt!1514032)) acc!259) lt!1514090)))

(declare-fun b!4277929 () Bool)

(assert (=> b!4277929 (= e!2655910 (Cons!47355 (h!52775 (t!354046 (t!354046 lt!1514032))) (++!12101 (t!354046 (t!354046 (t!354046 lt!1514032))) acc!259)))))

(assert (= (and d!1262984 c!728638) b!4277928))

(assert (= (and d!1262984 (not c!728638)) b!4277929))

(assert (= (and d!1262984 res!1756433) b!4277930))

(assert (= (and b!4277930 res!1756432) b!4277931))

(declare-fun m!4874203 () Bool)

(assert (=> b!4277930 m!4874203))

(declare-fun m!4874205 () Bool)

(assert (=> b!4277930 m!4874205))

(assert (=> b!4277930 m!4873589))

(declare-fun m!4874207 () Bool)

(assert (=> d!1262984 m!4874207))

(assert (=> d!1262984 m!4874187))

(assert (=> d!1262984 m!4873595))

(declare-fun m!4874209 () Bool)

(assert (=> b!4277929 m!4874209))

(assert (=> b!4277724 d!1262984))

(declare-fun d!1262986 () Bool)

(declare-fun lt!1514091 () Int)

(assert (=> d!1262986 (>= lt!1514091 0)))

(declare-fun e!2655912 () Int)

(assert (=> d!1262986 (= lt!1514091 e!2655912)))

(declare-fun c!728639 () Bool)

(assert (=> d!1262986 (= c!728639 ((_ is Nil!47355) (t!354046 (innerList!14397 (xs!17643 t!3602)))))))

(assert (=> d!1262986 (= (size!34665 (t!354046 (innerList!14397 (xs!17643 t!3602)))) lt!1514091)))

(declare-fun b!4277932 () Bool)

(assert (=> b!4277932 (= e!2655912 0)))

(declare-fun b!4277933 () Bool)

(assert (=> b!4277933 (= e!2655912 (+ 1 (size!34665 (t!354046 (t!354046 (innerList!14397 (xs!17643 t!3602)))))))))

(assert (= (and d!1262986 c!728639) b!4277932))

(assert (= (and d!1262986 (not c!728639)) b!4277933))

(declare-fun m!4874211 () Bool)

(assert (=> b!4277933 m!4874211))

(assert (=> b!4277702 d!1262986))

(declare-fun d!1262988 () Bool)

(declare-fun c!728640 () Bool)

(assert (=> d!1262988 (= c!728640 ((_ is Nil!47355) lt!1514063))))

(declare-fun e!2655913 () (InoxSet T!79976))

(assert (=> d!1262988 (= (content!7488 lt!1514063) e!2655913)))

(declare-fun b!4277934 () Bool)

(assert (=> b!4277934 (= e!2655913 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277935 () Bool)

(assert (=> b!4277935 (= e!2655913 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514063) true) (content!7488 (t!354046 lt!1514063))))))

(assert (= (and d!1262988 c!728640) b!4277934))

(assert (= (and d!1262988 (not c!728640)) b!4277935))

(declare-fun m!4874213 () Bool)

(assert (=> b!4277935 m!4874213))

(declare-fun m!4874215 () Bool)

(assert (=> b!4277935 m!4874215))

(assert (=> d!1262808 d!1262988))

(declare-fun d!1262990 () Bool)

(declare-fun c!728641 () Bool)

(assert (=> d!1262990 (= c!728641 ((_ is Nil!47355) (t!354046 lt!1514031)))))

(declare-fun e!2655914 () (InoxSet T!79976))

(assert (=> d!1262990 (= (content!7488 (t!354046 lt!1514031)) e!2655914)))

(declare-fun b!4277936 () Bool)

(assert (=> b!4277936 (= e!2655914 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277937 () Bool)

(assert (=> b!4277937 (= e!2655914 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 lt!1514031)) true) (content!7488 (t!354046 (t!354046 lt!1514031)))))))

(assert (= (and d!1262990 c!728641) b!4277936))

(assert (= (and d!1262990 (not c!728641)) b!4277937))

(declare-fun m!4874217 () Bool)

(assert (=> b!4277937 m!4874217))

(declare-fun m!4874219 () Bool)

(assert (=> b!4277937 m!4874219))

(assert (=> d!1262808 d!1262990))

(assert (=> d!1262808 d!1262854))

(declare-fun d!1262992 () Bool)

(declare-fun lt!1514092 () Int)

(assert (=> d!1262992 (>= lt!1514092 0)))

(declare-fun e!2655915 () Int)

(assert (=> d!1262992 (= lt!1514092 e!2655915)))

(declare-fun c!728642 () Bool)

(assert (=> d!1262992 (= c!728642 ((_ is Nil!47355) (innerList!14397 (xs!17643 (left!35288 t!3602)))))))

(assert (=> d!1262992 (= (size!34665 (innerList!14397 (xs!17643 (left!35288 t!3602)))) lt!1514092)))

(declare-fun b!4277938 () Bool)

(assert (=> b!4277938 (= e!2655915 0)))

(declare-fun b!4277939 () Bool)

(assert (=> b!4277939 (= e!2655915 (+ 1 (size!34665 (t!354046 (innerList!14397 (xs!17643 (left!35288 t!3602)))))))))

(assert (= (and d!1262992 c!728642) b!4277938))

(assert (= (and d!1262992 (not c!728642)) b!4277939))

(declare-fun m!4874221 () Bool)

(assert (=> b!4277939 m!4874221))

(assert (=> d!1262862 d!1262992))

(assert (=> d!1262812 d!1262954))

(assert (=> d!1262812 d!1262824))

(declare-fun d!1262994 () Bool)

(declare-fun lt!1514093 () Int)

(assert (=> d!1262994 (>= lt!1514093 0)))

(declare-fun e!2655916 () Int)

(assert (=> d!1262994 (= lt!1514093 e!2655916)))

(declare-fun c!728643 () Bool)

(assert (=> d!1262994 (= c!728643 ((_ is Nil!47355) lt!1514056))))

(assert (=> d!1262994 (= (size!34665 lt!1514056) lt!1514093)))

(declare-fun b!4277940 () Bool)

(assert (=> b!4277940 (= e!2655916 0)))

(declare-fun b!4277941 () Bool)

(assert (=> b!4277941 (= e!2655916 (+ 1 (size!34665 (t!354046 lt!1514056))))))

(assert (= (and d!1262994 c!728643) b!4277940))

(assert (= (and d!1262994 (not c!728643)) b!4277941))

(declare-fun m!4874223 () Bool)

(assert (=> b!4277941 m!4874223))

(assert (=> b!4277637 d!1262994))

(declare-fun d!1262996 () Bool)

(declare-fun lt!1514094 () Int)

(assert (=> d!1262996 (>= lt!1514094 0)))

(declare-fun e!2655917 () Int)

(assert (=> d!1262996 (= lt!1514094 e!2655917)))

(declare-fun c!728644 () Bool)

(assert (=> d!1262996 (= c!728644 ((_ is Nil!47355) (t!354046 lt!1514031)))))

(assert (=> d!1262996 (= (size!34665 (t!354046 lt!1514031)) lt!1514094)))

(declare-fun b!4277942 () Bool)

(assert (=> b!4277942 (= e!2655917 0)))

(declare-fun b!4277943 () Bool)

(assert (=> b!4277943 (= e!2655917 (+ 1 (size!34665 (t!354046 (t!354046 lt!1514031)))))))

(assert (= (and d!1262996 c!728644) b!4277942))

(assert (= (and d!1262996 (not c!728644)) b!4277943))

(declare-fun m!4874225 () Bool)

(assert (=> b!4277943 m!4874225))

(assert (=> b!4277637 d!1262996))

(assert (=> b!4277637 d!1262780))

(declare-fun e!2655919 () Bool)

(declare-fun b!4277947 () Bool)

(declare-fun lt!1514095 () List!47479)

(assert (=> b!4277947 (= e!2655919 (or (not (= (++!12101 lt!1514032 acc!259) Nil!47355)) (= lt!1514095 (t!354046 (t!354046 lt!1514031)))))))

(declare-fun b!4277946 () Bool)

(declare-fun res!1756434 () Bool)

(assert (=> b!4277946 (=> (not res!1756434) (not e!2655919))))

(assert (=> b!4277946 (= res!1756434 (= (size!34665 lt!1514095) (+ (size!34665 (t!354046 (t!354046 lt!1514031))) (size!34665 (++!12101 lt!1514032 acc!259)))))))

(declare-fun b!4277944 () Bool)

(declare-fun e!2655918 () List!47479)

(assert (=> b!4277944 (= e!2655918 (++!12101 lt!1514032 acc!259))))

(declare-fun d!1262998 () Bool)

(assert (=> d!1262998 e!2655919))

(declare-fun res!1756435 () Bool)

(assert (=> d!1262998 (=> (not res!1756435) (not e!2655919))))

(assert (=> d!1262998 (= res!1756435 (= (content!7488 lt!1514095) ((_ map or) (content!7488 (t!354046 (t!354046 lt!1514031))) (content!7488 (++!12101 lt!1514032 acc!259)))))))

(assert (=> d!1262998 (= lt!1514095 e!2655918)))

(declare-fun c!728645 () Bool)

(assert (=> d!1262998 (= c!728645 ((_ is Nil!47355) (t!354046 (t!354046 lt!1514031))))))

(assert (=> d!1262998 (= (++!12101 (t!354046 (t!354046 lt!1514031)) (++!12101 lt!1514032 acc!259)) lt!1514095)))

(declare-fun b!4277945 () Bool)

(assert (=> b!4277945 (= e!2655918 (Cons!47355 (h!52775 (t!354046 (t!354046 lt!1514031))) (++!12101 (t!354046 (t!354046 (t!354046 lt!1514031))) (++!12101 lt!1514032 acc!259))))))

(assert (= (and d!1262998 c!728645) b!4277944))

(assert (= (and d!1262998 (not c!728645)) b!4277945))

(assert (= (and d!1262998 res!1756435) b!4277946))

(assert (= (and b!4277946 res!1756434) b!4277947))

(declare-fun m!4874227 () Bool)

(assert (=> b!4277946 m!4874227))

(assert (=> b!4277946 m!4874225))

(assert (=> b!4277946 m!4873515))

(assert (=> b!4277946 m!4873559))

(declare-fun m!4874229 () Bool)

(assert (=> d!1262998 m!4874229))

(assert (=> d!1262998 m!4874219))

(assert (=> d!1262998 m!4873515))

(assert (=> d!1262998 m!4873565))

(assert (=> b!4277945 m!4873515))

(declare-fun m!4874231 () Bool)

(assert (=> b!4277945 m!4874231))

(assert (=> b!4277670 d!1262998))

(declare-fun d!1263000 () Bool)

(assert (=> d!1263000 (= (list!17272 (xs!17643 (left!35288 (right!35618 t!3602)))) (innerList!14397 (xs!17643 (left!35288 (right!35618 t!3602)))))))

(assert (=> b!4277695 d!1263000))

(declare-fun d!1263002 () Bool)

(declare-fun lt!1514098 () Int)

(assert (=> d!1263002 (= lt!1514098 (size!34665 (list!17271 (left!35288 (left!35288 t!3602)))))))

(assert (=> d!1263002 (= lt!1514098 (ite ((_ is Empty!14337) (left!35288 (left!35288 t!3602))) 0 (ite ((_ is Leaf!22161) (left!35288 (left!35288 t!3602))) (csize!28905 (left!35288 (left!35288 t!3602))) (csize!28904 (left!35288 (left!35288 t!3602))))))))

(assert (=> d!1263002 (= (size!34666 (left!35288 (left!35288 t!3602))) lt!1514098)))

(declare-fun bs!602597 () Bool)

(assert (= bs!602597 d!1263002))

(assert (=> bs!602597 m!4873577))

(assert (=> bs!602597 m!4873577))

(assert (=> bs!602597 m!4873821))

(assert (=> d!1262844 d!1263002))

(declare-fun d!1263004 () Bool)

(declare-fun lt!1514099 () Int)

(assert (=> d!1263004 (= lt!1514099 (size!34665 (list!17271 (right!35618 (left!35288 t!3602)))))))

(assert (=> d!1263004 (= lt!1514099 (ite ((_ is Empty!14337) (right!35618 (left!35288 t!3602))) 0 (ite ((_ is Leaf!22161) (right!35618 (left!35288 t!3602))) (csize!28905 (right!35618 (left!35288 t!3602))) (csize!28904 (right!35618 (left!35288 t!3602))))))))

(assert (=> d!1263004 (= (size!34666 (right!35618 (left!35288 t!3602))) lt!1514099)))

(declare-fun bs!602598 () Bool)

(assert (= bs!602598 d!1263004))

(assert (=> bs!602598 m!4873579))

(assert (=> bs!602598 m!4873579))

(assert (=> bs!602598 m!4873823))

(assert (=> d!1262844 d!1263004))

(declare-fun d!1263006 () Bool)

(declare-fun lt!1514100 () Int)

(assert (=> d!1263006 (>= lt!1514100 0)))

(declare-fun e!2655920 () Int)

(assert (=> d!1263006 (= lt!1514100 e!2655920)))

(declare-fun c!728646 () Bool)

(assert (=> d!1263006 (= c!728646 ((_ is Nil!47355) (list!17272 (xs!17643 t!3602))))))

(assert (=> d!1263006 (= (size!34665 (list!17272 (xs!17643 t!3602))) lt!1514100)))

(declare-fun b!4277948 () Bool)

(assert (=> b!4277948 (= e!2655920 0)))

(declare-fun b!4277949 () Bool)

(assert (=> b!4277949 (= e!2655920 (+ 1 (size!34665 (t!354046 (list!17272 (xs!17643 t!3602))))))))

(assert (= (and d!1263006 c!728646) b!4277948))

(assert (= (and d!1263006 (not c!728646)) b!4277949))

(declare-fun m!4874233 () Bool)

(assert (=> b!4277949 m!4874233))

(assert (=> d!1262846 d!1263006))

(declare-fun d!1263008 () Bool)

(assert (=> d!1263008 (= (list!17272 (xs!17643 t!3602)) (innerList!14397 (xs!17643 t!3602)))))

(assert (=> d!1262846 d!1263008))

(declare-fun d!1263010 () Bool)

(declare-fun lt!1514101 () Int)

(assert (=> d!1263010 (>= lt!1514101 0)))

(declare-fun e!2655921 () Int)

(assert (=> d!1263010 (= lt!1514101 e!2655921)))

(declare-fun c!728647 () Bool)

(assert (=> d!1263010 (= c!728647 ((_ is Nil!47355) (innerList!14397 (xs!17643 (right!35618 t!3602)))))))

(assert (=> d!1263010 (= (size!34665 (innerList!14397 (xs!17643 (right!35618 t!3602)))) lt!1514101)))

(declare-fun b!4277950 () Bool)

(assert (=> b!4277950 (= e!2655921 0)))

(declare-fun b!4277951 () Bool)

(assert (=> b!4277951 (= e!2655921 (+ 1 (size!34665 (t!354046 (innerList!14397 (xs!17643 (right!35618 t!3602)))))))))

(assert (= (and d!1263010 c!728647) b!4277950))

(assert (= (and d!1263010 (not c!728647)) b!4277951))

(declare-fun m!4874235 () Bool)

(assert (=> b!4277951 m!4874235))

(assert (=> d!1262836 d!1263010))

(declare-fun d!1263012 () Bool)

(declare-fun lt!1514102 () Int)

(assert (=> d!1263012 (>= lt!1514102 0)))

(declare-fun e!2655922 () Int)

(assert (=> d!1263012 (= lt!1514102 e!2655922)))

(declare-fun c!728648 () Bool)

(assert (=> d!1263012 (= c!728648 ((_ is Nil!47355) (t!354046 lt!1514049)))))

(assert (=> d!1263012 (= (size!34665 (t!354046 lt!1514049)) lt!1514102)))

(declare-fun b!4277952 () Bool)

(assert (=> b!4277952 (= e!2655922 0)))

(declare-fun b!4277953 () Bool)

(assert (=> b!4277953 (= e!2655922 (+ 1 (size!34665 (t!354046 (t!354046 lt!1514049)))))))

(assert (= (and d!1263012 c!728648) b!4277952))

(assert (= (and d!1263012 (not c!728648)) b!4277953))

(declare-fun m!4874237 () Bool)

(assert (=> b!4277953 m!4874237))

(assert (=> b!4277621 d!1263012))

(declare-fun b!4277957 () Bool)

(declare-fun e!2655924 () Bool)

(declare-fun lt!1514103 () List!47479)

(assert (=> b!4277957 (= e!2655924 (or (not (= (list!17271 (right!35618 (right!35618 (right!35618 t!3602)))) Nil!47355)) (= lt!1514103 (list!17271 (left!35288 (right!35618 (right!35618 t!3602)))))))))

(declare-fun b!4277956 () Bool)

(declare-fun res!1756436 () Bool)

(assert (=> b!4277956 (=> (not res!1756436) (not e!2655924))))

(assert (=> b!4277956 (= res!1756436 (= (size!34665 lt!1514103) (+ (size!34665 (list!17271 (left!35288 (right!35618 (right!35618 t!3602))))) (size!34665 (list!17271 (right!35618 (right!35618 (right!35618 t!3602))))))))))

(declare-fun b!4277954 () Bool)

(declare-fun e!2655923 () List!47479)

(assert (=> b!4277954 (= e!2655923 (list!17271 (right!35618 (right!35618 (right!35618 t!3602)))))))

(declare-fun d!1263014 () Bool)

(assert (=> d!1263014 e!2655924))

(declare-fun res!1756437 () Bool)

(assert (=> d!1263014 (=> (not res!1756437) (not e!2655924))))

(assert (=> d!1263014 (= res!1756437 (= (content!7488 lt!1514103) ((_ map or) (content!7488 (list!17271 (left!35288 (right!35618 (right!35618 t!3602))))) (content!7488 (list!17271 (right!35618 (right!35618 (right!35618 t!3602))))))))))

(assert (=> d!1263014 (= lt!1514103 e!2655923)))

(declare-fun c!728649 () Bool)

(assert (=> d!1263014 (= c!728649 ((_ is Nil!47355) (list!17271 (left!35288 (right!35618 (right!35618 t!3602))))))))

(assert (=> d!1263014 (= (++!12101 (list!17271 (left!35288 (right!35618 (right!35618 t!3602)))) (list!17271 (right!35618 (right!35618 (right!35618 t!3602))))) lt!1514103)))

(declare-fun b!4277955 () Bool)

(assert (=> b!4277955 (= e!2655923 (Cons!47355 (h!52775 (list!17271 (left!35288 (right!35618 (right!35618 t!3602))))) (++!12101 (t!354046 (list!17271 (left!35288 (right!35618 (right!35618 t!3602))))) (list!17271 (right!35618 (right!35618 (right!35618 t!3602)))))))))

(assert (= (and d!1263014 c!728649) b!4277954))

(assert (= (and d!1263014 (not c!728649)) b!4277955))

(assert (= (and d!1263014 res!1756437) b!4277956))

(assert (= (and b!4277956 res!1756436) b!4277957))

(declare-fun m!4874239 () Bool)

(assert (=> b!4277956 m!4874239))

(assert (=> b!4277956 m!4873807))

(declare-fun m!4874241 () Bool)

(assert (=> b!4277956 m!4874241))

(assert (=> b!4277956 m!4873809))

(declare-fun m!4874243 () Bool)

(assert (=> b!4277956 m!4874243))

(declare-fun m!4874245 () Bool)

(assert (=> d!1263014 m!4874245))

(assert (=> d!1263014 m!4873807))

(declare-fun m!4874247 () Bool)

(assert (=> d!1263014 m!4874247))

(assert (=> d!1263014 m!4873809))

(declare-fun m!4874249 () Bool)

(assert (=> d!1263014 m!4874249))

(assert (=> b!4277955 m!4873809))

(declare-fun m!4874251 () Bool)

(assert (=> b!4277955 m!4874251))

(assert (=> b!4277700 d!1263014))

(declare-fun b!4277961 () Bool)

(declare-fun e!2655926 () List!47479)

(assert (=> b!4277961 (= e!2655926 (++!12101 (list!17271 (left!35288 (left!35288 (right!35618 (right!35618 t!3602))))) (list!17271 (right!35618 (left!35288 (right!35618 (right!35618 t!3602)))))))))

(declare-fun d!1263016 () Bool)

(declare-fun c!728650 () Bool)

(assert (=> d!1263016 (= c!728650 ((_ is Empty!14337) (left!35288 (right!35618 (right!35618 t!3602)))))))

(declare-fun e!2655925 () List!47479)

(assert (=> d!1263016 (= (list!17271 (left!35288 (right!35618 (right!35618 t!3602)))) e!2655925)))

(declare-fun b!4277958 () Bool)

(assert (=> b!4277958 (= e!2655925 Nil!47355)))

(declare-fun b!4277959 () Bool)

(assert (=> b!4277959 (= e!2655925 e!2655926)))

(declare-fun c!728651 () Bool)

(assert (=> b!4277959 (= c!728651 ((_ is Leaf!22161) (left!35288 (right!35618 (right!35618 t!3602)))))))

(declare-fun b!4277960 () Bool)

(assert (=> b!4277960 (= e!2655926 (list!17272 (xs!17643 (left!35288 (right!35618 (right!35618 t!3602))))))))

(assert (= (and d!1263016 c!728650) b!4277958))

(assert (= (and d!1263016 (not c!728650)) b!4277959))

(assert (= (and b!4277959 c!728651) b!4277960))

(assert (= (and b!4277959 (not c!728651)) b!4277961))

(declare-fun m!4874253 () Bool)

(assert (=> b!4277961 m!4874253))

(declare-fun m!4874255 () Bool)

(assert (=> b!4277961 m!4874255))

(assert (=> b!4277961 m!4874253))

(assert (=> b!4277961 m!4874255))

(declare-fun m!4874257 () Bool)

(assert (=> b!4277961 m!4874257))

(declare-fun m!4874259 () Bool)

(assert (=> b!4277960 m!4874259))

(assert (=> b!4277700 d!1263016))

(declare-fun b!4277965 () Bool)

(declare-fun e!2655928 () List!47479)

(assert (=> b!4277965 (= e!2655928 (++!12101 (list!17271 (left!35288 (right!35618 (right!35618 (right!35618 t!3602))))) (list!17271 (right!35618 (right!35618 (right!35618 (right!35618 t!3602)))))))))

(declare-fun d!1263018 () Bool)

(declare-fun c!728652 () Bool)

(assert (=> d!1263018 (= c!728652 ((_ is Empty!14337) (right!35618 (right!35618 (right!35618 t!3602)))))))

(declare-fun e!2655927 () List!47479)

(assert (=> d!1263018 (= (list!17271 (right!35618 (right!35618 (right!35618 t!3602)))) e!2655927)))

(declare-fun b!4277962 () Bool)

(assert (=> b!4277962 (= e!2655927 Nil!47355)))

(declare-fun b!4277963 () Bool)

(assert (=> b!4277963 (= e!2655927 e!2655928)))

(declare-fun c!728653 () Bool)

(assert (=> b!4277963 (= c!728653 ((_ is Leaf!22161) (right!35618 (right!35618 (right!35618 t!3602)))))))

(declare-fun b!4277964 () Bool)

(assert (=> b!4277964 (= e!2655928 (list!17272 (xs!17643 (right!35618 (right!35618 (right!35618 t!3602))))))))

(assert (= (and d!1263018 c!728652) b!4277962))

(assert (= (and d!1263018 (not c!728652)) b!4277963))

(assert (= (and b!4277963 c!728653) b!4277964))

(assert (= (and b!4277963 (not c!728653)) b!4277965))

(declare-fun m!4874261 () Bool)

(assert (=> b!4277965 m!4874261))

(declare-fun m!4874263 () Bool)

(assert (=> b!4277965 m!4874263))

(assert (=> b!4277965 m!4874261))

(assert (=> b!4277965 m!4874263))

(declare-fun m!4874265 () Bool)

(assert (=> b!4277965 m!4874265))

(declare-fun m!4874267 () Bool)

(assert (=> b!4277964 m!4874267))

(assert (=> b!4277700 d!1263018))

(declare-fun d!1263020 () Bool)

(assert (=> d!1263020 (= (max!0 (height!1887 (left!35288 (left!35288 t!3602))) (height!1887 (right!35618 (left!35288 t!3602)))) (ite (< (height!1887 (left!35288 (left!35288 t!3602))) (height!1887 (right!35618 (left!35288 t!3602)))) (height!1887 (right!35618 (left!35288 t!3602))) (height!1887 (left!35288 (left!35288 t!3602)))))))

(assert (=> b!4277716 d!1263020))

(declare-fun d!1263022 () Bool)

(assert (=> d!1263022 (= (height!1887 (left!35288 (left!35288 t!3602))) (ite ((_ is Empty!14337) (left!35288 (left!35288 t!3602))) 0 (ite ((_ is Leaf!22161) (left!35288 (left!35288 t!3602))) 1 (cheight!14548 (left!35288 (left!35288 t!3602))))))))

(assert (=> b!4277716 d!1263022))

(declare-fun d!1263024 () Bool)

(assert (=> d!1263024 (= (height!1887 (right!35618 (left!35288 t!3602))) (ite ((_ is Empty!14337) (right!35618 (left!35288 t!3602))) 0 (ite ((_ is Leaf!22161) (right!35618 (left!35288 t!3602))) 1 (cheight!14548 (right!35618 (left!35288 t!3602))))))))

(assert (=> b!4277716 d!1263024))

(declare-fun d!1263026 () Bool)

(declare-fun lt!1514104 () Int)

(assert (=> d!1263026 (>= lt!1514104 0)))

(declare-fun e!2655929 () Int)

(assert (=> d!1263026 (= lt!1514104 e!2655929)))

(declare-fun c!728654 () Bool)

(assert (=> d!1263026 (= c!728654 ((_ is Nil!47355) (t!354046 (++!12101 lt!1514031 lt!1514032))))))

(assert (=> d!1263026 (= (size!34665 (t!354046 (++!12101 lt!1514031 lt!1514032))) lt!1514104)))

(declare-fun b!4277966 () Bool)

(assert (=> b!4277966 (= e!2655929 0)))

(declare-fun b!4277967 () Bool)

(assert (=> b!4277967 (= e!2655929 (+ 1 (size!34665 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032))))))))

(assert (= (and d!1263026 c!728654) b!4277966))

(assert (= (and d!1263026 (not c!728654)) b!4277967))

(declare-fun m!4874269 () Bool)

(assert (=> b!4277967 m!4874269))

(assert (=> b!4277658 d!1263026))

(declare-fun d!1263028 () Bool)

(declare-fun lt!1514105 () Int)

(assert (=> d!1263028 (>= lt!1514105 0)))

(declare-fun e!2655930 () Int)

(assert (=> d!1263028 (= lt!1514105 e!2655930)))

(declare-fun c!728655 () Bool)

(assert (=> d!1263028 (= c!728655 ((_ is Nil!47355) (t!354046 lt!1514050)))))

(assert (=> d!1263028 (= (size!34665 (t!354046 lt!1514050)) lt!1514105)))

(declare-fun b!4277968 () Bool)

(assert (=> b!4277968 (= e!2655930 0)))

(declare-fun b!4277969 () Bool)

(assert (=> b!4277969 (= e!2655930 (+ 1 (size!34665 (t!354046 (t!354046 lt!1514050)))))))

(assert (= (and d!1263028 c!728655) b!4277968))

(assert (= (and d!1263028 (not c!728655)) b!4277969))

(declare-fun m!4874271 () Bool)

(assert (=> b!4277969 m!4874271))

(assert (=> b!4277732 d!1263028))

(declare-fun d!1263030 () Bool)

(declare-fun c!728656 () Bool)

(assert (=> d!1263030 (= c!728656 ((_ is Nil!47355) (t!354046 lt!1514038)))))

(declare-fun e!2655931 () (InoxSet T!79976))

(assert (=> d!1263030 (= (content!7488 (t!354046 lt!1514038)) e!2655931)))

(declare-fun b!4277970 () Bool)

(assert (=> b!4277970 (= e!2655931 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277971 () Bool)

(assert (=> b!4277971 (= e!2655931 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 lt!1514038)) true) (content!7488 (t!354046 (t!354046 lt!1514038)))))))

(assert (= (and d!1263030 c!728656) b!4277970))

(assert (= (and d!1263030 (not c!728656)) b!4277971))

(declare-fun m!4874273 () Bool)

(assert (=> b!4277971 m!4874273))

(declare-fun m!4874275 () Bool)

(assert (=> b!4277971 m!4874275))

(assert (=> b!4277728 d!1263030))

(declare-fun d!1263032 () Bool)

(declare-fun c!728657 () Bool)

(assert (=> d!1263032 (= c!728657 ((_ is Nil!47355) (t!354046 acc!259)))))

(declare-fun e!2655932 () (InoxSet T!79976))

(assert (=> d!1263032 (= (content!7488 (t!354046 acc!259)) e!2655932)))

(declare-fun b!4277972 () Bool)

(assert (=> b!4277972 (= e!2655932 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277973 () Bool)

(assert (=> b!4277973 (= e!2655932 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 acc!259)) true) (content!7488 (t!354046 (t!354046 acc!259)))))))

(assert (= (and d!1263032 c!728657) b!4277972))

(assert (= (and d!1263032 (not c!728657)) b!4277973))

(declare-fun m!4874277 () Bool)

(assert (=> b!4277973 m!4874277))

(declare-fun m!4874279 () Bool)

(assert (=> b!4277973 m!4874279))

(assert (=> b!4277648 d!1263032))

(declare-fun d!1263034 () Bool)

(declare-fun lt!1514106 () Int)

(assert (=> d!1263034 (>= lt!1514106 0)))

(declare-fun e!2655933 () Int)

(assert (=> d!1263034 (= lt!1514106 e!2655933)))

(declare-fun c!728658 () Bool)

(assert (=> d!1263034 (= c!728658 ((_ is Nil!47355) lt!1514062))))

(assert (=> d!1263034 (= (size!34665 lt!1514062) lt!1514106)))

(declare-fun b!4277974 () Bool)

(assert (=> b!4277974 (= e!2655933 0)))

(declare-fun b!4277975 () Bool)

(assert (=> b!4277975 (= e!2655933 (+ 1 (size!34665 (t!354046 lt!1514062))))))

(assert (= (and d!1263034 c!728658) b!4277974))

(assert (= (and d!1263034 (not c!728658)) b!4277975))

(declare-fun m!4874281 () Bool)

(assert (=> b!4277975 m!4874281))

(assert (=> b!4277667 d!1263034))

(assert (=> b!4277667 d!1263026))

(assert (=> b!4277667 d!1262800))

(assert (=> b!4277718 d!1263006))

(assert (=> b!4277718 d!1263008))

(declare-fun d!1263036 () Bool)

(assert (=> d!1263036 (= (inv!62709 (xs!17643 (left!35288 (right!35618 t!3602)))) (<= (size!34665 (innerList!14397 (xs!17643 (left!35288 (right!35618 t!3602))))) 2147483647))))

(declare-fun bs!602599 () Bool)

(assert (= bs!602599 d!1263036))

(declare-fun m!4874283 () Bool)

(assert (=> bs!602599 m!4874283))

(assert (=> b!4277740 d!1263036))

(declare-fun d!1263038 () Bool)

(declare-fun c!728659 () Bool)

(assert (=> d!1263038 (= c!728659 ((_ is Nil!47355) (t!354046 lt!1514049)))))

(declare-fun e!2655934 () (InoxSet T!79976))

(assert (=> d!1263038 (= (content!7488 (t!354046 lt!1514049)) e!2655934)))

(declare-fun b!4277976 () Bool)

(assert (=> b!4277976 (= e!2655934 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277977 () Bool)

(assert (=> b!4277977 (= e!2655934 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 lt!1514049)) true) (content!7488 (t!354046 (t!354046 lt!1514049)))))))

(assert (= (and d!1263038 c!728659) b!4277976))

(assert (= (and d!1263038 (not c!728659)) b!4277977))

(declare-fun m!4874285 () Bool)

(assert (=> b!4277977 m!4874285))

(declare-fun m!4874287 () Bool)

(assert (=> b!4277977 m!4874287))

(assert (=> b!4277684 d!1263038))

(declare-fun d!1263040 () Bool)

(declare-fun lt!1514107 () Int)

(assert (=> d!1263040 (>= lt!1514107 0)))

(declare-fun e!2655935 () Int)

(assert (=> d!1263040 (= lt!1514107 e!2655935)))

(declare-fun c!728660 () Bool)

(assert (=> d!1263040 (= c!728660 ((_ is Nil!47355) lt!1514066))))

(assert (=> d!1263040 (= (size!34665 lt!1514066) lt!1514107)))

(declare-fun b!4277978 () Bool)

(assert (=> b!4277978 (= e!2655935 0)))

(declare-fun b!4277979 () Bool)

(assert (=> b!4277979 (= e!2655935 (+ 1 (size!34665 (t!354046 lt!1514066))))))

(assert (= (and d!1263040 c!728660) b!4277978))

(assert (= (and d!1263040 (not c!728660)) b!4277979))

(declare-fun m!4874289 () Bool)

(assert (=> b!4277979 m!4874289))

(assert (=> b!4277705 d!1263040))

(declare-fun d!1263042 () Bool)

(declare-fun lt!1514108 () Int)

(assert (=> d!1263042 (>= lt!1514108 0)))

(declare-fun e!2655936 () Int)

(assert (=> d!1263042 (= lt!1514108 e!2655936)))

(declare-fun c!728661 () Bool)

(assert (=> d!1263042 (= c!728661 ((_ is Nil!47355) (list!17271 (left!35288 (left!35288 t!3602)))))))

(assert (=> d!1263042 (= (size!34665 (list!17271 (left!35288 (left!35288 t!3602)))) lt!1514108)))

(declare-fun b!4277980 () Bool)

(assert (=> b!4277980 (= e!2655936 0)))

(declare-fun b!4277981 () Bool)

(assert (=> b!4277981 (= e!2655936 (+ 1 (size!34665 (t!354046 (list!17271 (left!35288 (left!35288 t!3602)))))))))

(assert (= (and d!1263042 c!728661) b!4277980))

(assert (= (and d!1263042 (not c!728661)) b!4277981))

(declare-fun m!4874291 () Bool)

(assert (=> b!4277981 m!4874291))

(assert (=> b!4277705 d!1263042))

(declare-fun d!1263044 () Bool)

(declare-fun lt!1514109 () Int)

(assert (=> d!1263044 (>= lt!1514109 0)))

(declare-fun e!2655937 () Int)

(assert (=> d!1263044 (= lt!1514109 e!2655937)))

(declare-fun c!728662 () Bool)

(assert (=> d!1263044 (= c!728662 ((_ is Nil!47355) (list!17271 (right!35618 (left!35288 t!3602)))))))

(assert (=> d!1263044 (= (size!34665 (list!17271 (right!35618 (left!35288 t!3602)))) lt!1514109)))

(declare-fun b!4277982 () Bool)

(assert (=> b!4277982 (= e!2655937 0)))

(declare-fun b!4277983 () Bool)

(assert (=> b!4277983 (= e!2655937 (+ 1 (size!34665 (t!354046 (list!17271 (right!35618 (left!35288 t!3602)))))))))

(assert (= (and d!1263044 c!728662) b!4277982))

(assert (= (and d!1263044 (not c!728662)) b!4277983))

(declare-fun m!4874293 () Bool)

(assert (=> b!4277983 m!4874293))

(assert (=> b!4277705 d!1263044))

(assert (=> d!1262810 d!1262744))

(assert (=> d!1262810 d!1262764))

(assert (=> d!1262810 d!1262736))

(assert (=> d!1262810 d!1262770))

(declare-fun d!1263046 () Bool)

(assert (=> d!1263046 (= (list!17272 (xs!17643 (right!35618 (left!35288 t!3602)))) (innerList!14397 (xs!17643 (right!35618 (left!35288 t!3602)))))))

(assert (=> b!4277713 d!1263046))

(declare-fun d!1263048 () Bool)

(declare-fun c!728663 () Bool)

(assert (=> d!1263048 (= c!728663 ((_ is Node!14337) (left!35288 (right!35618 (left!35288 t!3602)))))))

(declare-fun e!2655938 () Bool)

(assert (=> d!1263048 (= (inv!62708 (left!35288 (right!35618 (left!35288 t!3602)))) e!2655938)))

(declare-fun b!4277984 () Bool)

(assert (=> b!4277984 (= e!2655938 (inv!62710 (left!35288 (right!35618 (left!35288 t!3602)))))))

(declare-fun b!4277985 () Bool)

(declare-fun e!2655939 () Bool)

(assert (=> b!4277985 (= e!2655938 e!2655939)))

(declare-fun res!1756438 () Bool)

(assert (=> b!4277985 (= res!1756438 (not ((_ is Leaf!22161) (left!35288 (right!35618 (left!35288 t!3602))))))))

(assert (=> b!4277985 (=> res!1756438 e!2655939)))

(declare-fun b!4277986 () Bool)

(assert (=> b!4277986 (= e!2655939 (inv!62712 (left!35288 (right!35618 (left!35288 t!3602)))))))

(assert (= (and d!1263048 c!728663) b!4277984))

(assert (= (and d!1263048 (not c!728663)) b!4277985))

(assert (= (and b!4277985 (not res!1756438)) b!4277986))

(declare-fun m!4874295 () Bool)

(assert (=> b!4277984 m!4874295))

(declare-fun m!4874297 () Bool)

(assert (=> b!4277986 m!4874297))

(assert (=> b!4277751 d!1263048))

(declare-fun d!1263050 () Bool)

(declare-fun c!728664 () Bool)

(assert (=> d!1263050 (= c!728664 ((_ is Node!14337) (right!35618 (right!35618 (left!35288 t!3602)))))))

(declare-fun e!2655940 () Bool)

(assert (=> d!1263050 (= (inv!62708 (right!35618 (right!35618 (left!35288 t!3602)))) e!2655940)))

(declare-fun b!4277987 () Bool)

(assert (=> b!4277987 (= e!2655940 (inv!62710 (right!35618 (right!35618 (left!35288 t!3602)))))))

(declare-fun b!4277988 () Bool)

(declare-fun e!2655941 () Bool)

(assert (=> b!4277988 (= e!2655940 e!2655941)))

(declare-fun res!1756439 () Bool)

(assert (=> b!4277988 (= res!1756439 (not ((_ is Leaf!22161) (right!35618 (right!35618 (left!35288 t!3602))))))))

(assert (=> b!4277988 (=> res!1756439 e!2655941)))

(declare-fun b!4277989 () Bool)

(assert (=> b!4277989 (= e!2655941 (inv!62712 (right!35618 (right!35618 (left!35288 t!3602)))))))

(assert (= (and d!1263050 c!728664) b!4277987))

(assert (= (and d!1263050 (not c!728664)) b!4277988))

(assert (= (and b!4277988 (not res!1756439)) b!4277989))

(declare-fun m!4874299 () Bool)

(assert (=> b!4277987 m!4874299))

(declare-fun m!4874301 () Bool)

(assert (=> b!4277989 m!4874301))

(assert (=> b!4277751 d!1263050))

(declare-fun d!1263052 () Bool)

(declare-fun c!728665 () Bool)

(assert (=> d!1263052 (= c!728665 ((_ is Nil!47355) lt!1514062))))

(declare-fun e!2655942 () (InoxSet T!79976))

(assert (=> d!1263052 (= (content!7488 lt!1514062) e!2655942)))

(declare-fun b!4277990 () Bool)

(assert (=> b!4277990 (= e!2655942 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277991 () Bool)

(assert (=> b!4277991 (= e!2655942 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514062) true) (content!7488 (t!354046 lt!1514062))))))

(assert (= (and d!1263052 c!728665) b!4277990))

(assert (= (and d!1263052 (not c!728665)) b!4277991))

(declare-fun m!4874303 () Bool)

(assert (=> b!4277991 m!4874303))

(declare-fun m!4874305 () Bool)

(assert (=> b!4277991 m!4874305))

(assert (=> d!1262806 d!1263052))

(assert (=> d!1262806 d!1262976))

(assert (=> d!1262806 d!1262790))

(declare-fun d!1263054 () Bool)

(declare-fun lt!1514110 () Int)

(assert (=> d!1263054 (>= lt!1514110 0)))

(declare-fun e!2655943 () Int)

(assert (=> d!1263054 (= lt!1514110 e!2655943)))

(declare-fun c!728666 () Bool)

(assert (=> d!1263054 (= c!728666 ((_ is Nil!47355) (list!17272 (xs!17643 (left!35288 t!3602)))))))

(assert (=> d!1263054 (= (size!34665 (list!17272 (xs!17643 (left!35288 t!3602)))) lt!1514110)))

(declare-fun b!4277992 () Bool)

(assert (=> b!4277992 (= e!2655943 0)))

(declare-fun b!4277993 () Bool)

(assert (=> b!4277993 (= e!2655943 (+ 1 (size!34665 (t!354046 (list!17272 (xs!17643 (left!35288 t!3602)))))))))

(assert (= (and d!1263054 c!728666) b!4277992))

(assert (= (and d!1263054 (not c!728666)) b!4277993))

(declare-fun m!4874307 () Bool)

(assert (=> b!4277993 m!4874307))

(assert (=> d!1262822 d!1263054))

(assert (=> d!1262822 d!1262834))

(declare-fun d!1263056 () Bool)

(declare-fun c!728667 () Bool)

(assert (=> d!1263056 (= c!728667 ((_ is Nil!47355) (t!354046 (++!12101 lt!1514032 acc!259))))))

(declare-fun e!2655944 () (InoxSet T!79976))

(assert (=> d!1263056 (= (content!7488 (t!354046 (++!12101 lt!1514032 acc!259))) e!2655944)))

(declare-fun b!4277994 () Bool)

(assert (=> b!4277994 (= e!2655944 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4277995 () Bool)

(assert (=> b!4277995 (= e!2655944 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 (++!12101 lt!1514032 acc!259))) true) (content!7488 (t!354046 (t!354046 (++!12101 lt!1514032 acc!259))))))))

(assert (= (and d!1263056 c!728667) b!4277994))

(assert (= (and d!1263056 (not c!728667)) b!4277995))

(declare-fun m!4874309 () Bool)

(assert (=> b!4277995 m!4874309))

(declare-fun m!4874311 () Bool)

(assert (=> b!4277995 m!4874311))

(assert (=> b!4277730 d!1263056))

(declare-fun d!1263058 () Bool)

(declare-fun lt!1514111 () Int)

(assert (=> d!1263058 (>= lt!1514111 0)))

(declare-fun e!2655945 () Int)

(assert (=> d!1263058 (= lt!1514111 e!2655945)))

(declare-fun c!728668 () Bool)

(assert (=> d!1263058 (= c!728668 ((_ is Nil!47355) (t!354046 lt!1514032)))))

(assert (=> d!1263058 (= (size!34665 (t!354046 lt!1514032)) lt!1514111)))

(declare-fun b!4277996 () Bool)

(assert (=> b!4277996 (= e!2655945 0)))

(declare-fun b!4277997 () Bool)

(assert (=> b!4277997 (= e!2655945 (+ 1 (size!34665 (t!354046 (t!354046 lt!1514032)))))))

(assert (= (and d!1263058 c!728668) b!4277996))

(assert (= (and d!1263058 (not c!728668)) b!4277997))

(assert (=> b!4277997 m!4874205))

(assert (=> b!4277625 d!1263058))

(declare-fun d!1263060 () Bool)

(assert (=> d!1263060 (= (inv!62709 (xs!17643 (right!35618 (right!35618 t!3602)))) (<= (size!34665 (innerList!14397 (xs!17643 (right!35618 (right!35618 t!3602))))) 2147483647))))

(declare-fun bs!602600 () Bool)

(assert (= bs!602600 d!1263060))

(declare-fun m!4874313 () Bool)

(assert (=> bs!602600 m!4874313))

(assert (=> b!4277743 d!1263060))

(declare-fun b!4278001 () Bool)

(declare-fun e!2655947 () Bool)

(declare-fun lt!1514112 () List!47479)

(assert (=> b!4278001 (= e!2655947 (or (not (= (list!17271 (right!35618 (left!35288 (left!35288 t!3602)))) Nil!47355)) (= lt!1514112 (list!17271 (left!35288 (left!35288 (left!35288 t!3602)))))))))

(declare-fun b!4278000 () Bool)

(declare-fun res!1756440 () Bool)

(assert (=> b!4278000 (=> (not res!1756440) (not e!2655947))))

(assert (=> b!4278000 (= res!1756440 (= (size!34665 lt!1514112) (+ (size!34665 (list!17271 (left!35288 (left!35288 (left!35288 t!3602))))) (size!34665 (list!17271 (right!35618 (left!35288 (left!35288 t!3602))))))))))

(declare-fun b!4277998 () Bool)

(declare-fun e!2655946 () List!47479)

(assert (=> b!4277998 (= e!2655946 (list!17271 (right!35618 (left!35288 (left!35288 t!3602)))))))

(declare-fun d!1263062 () Bool)

(assert (=> d!1263062 e!2655947))

(declare-fun res!1756441 () Bool)

(assert (=> d!1263062 (=> (not res!1756441) (not e!2655947))))

(assert (=> d!1263062 (= res!1756441 (= (content!7488 lt!1514112) ((_ map or) (content!7488 (list!17271 (left!35288 (left!35288 (left!35288 t!3602))))) (content!7488 (list!17271 (right!35618 (left!35288 (left!35288 t!3602))))))))))

(assert (=> d!1263062 (= lt!1514112 e!2655946)))

(declare-fun c!728669 () Bool)

(assert (=> d!1263062 (= c!728669 ((_ is Nil!47355) (list!17271 (left!35288 (left!35288 (left!35288 t!3602))))))))

(assert (=> d!1263062 (= (++!12101 (list!17271 (left!35288 (left!35288 (left!35288 t!3602)))) (list!17271 (right!35618 (left!35288 (left!35288 t!3602))))) lt!1514112)))

(declare-fun b!4277999 () Bool)

(assert (=> b!4277999 (= e!2655946 (Cons!47355 (h!52775 (list!17271 (left!35288 (left!35288 (left!35288 t!3602))))) (++!12101 (t!354046 (list!17271 (left!35288 (left!35288 (left!35288 t!3602))))) (list!17271 (right!35618 (left!35288 (left!35288 t!3602)))))))))

(assert (= (and d!1263062 c!728669) b!4277998))

(assert (= (and d!1263062 (not c!728669)) b!4277999))

(assert (= (and d!1263062 res!1756441) b!4278000))

(assert (= (and b!4278000 res!1756440) b!4278001))

(declare-fun m!4874315 () Bool)

(assert (=> b!4278000 m!4874315))

(assert (=> b!4278000 m!4873833))

(declare-fun m!4874317 () Bool)

(assert (=> b!4278000 m!4874317))

(assert (=> b!4278000 m!4873835))

(declare-fun m!4874319 () Bool)

(assert (=> b!4278000 m!4874319))

(declare-fun m!4874321 () Bool)

(assert (=> d!1263062 m!4874321))

(assert (=> d!1263062 m!4873833))

(declare-fun m!4874323 () Bool)

(assert (=> d!1263062 m!4874323))

(assert (=> d!1263062 m!4873835))

(declare-fun m!4874325 () Bool)

(assert (=> d!1263062 m!4874325))

(assert (=> b!4277999 m!4873835))

(declare-fun m!4874327 () Bool)

(assert (=> b!4277999 m!4874327))

(assert (=> b!4277710 d!1263062))

(declare-fun b!4278005 () Bool)

(declare-fun e!2655949 () List!47479)

(assert (=> b!4278005 (= e!2655949 (++!12101 (list!17271 (left!35288 (left!35288 (left!35288 (left!35288 t!3602))))) (list!17271 (right!35618 (left!35288 (left!35288 (left!35288 t!3602)))))))))

(declare-fun d!1263064 () Bool)

(declare-fun c!728670 () Bool)

(assert (=> d!1263064 (= c!728670 ((_ is Empty!14337) (left!35288 (left!35288 (left!35288 t!3602)))))))

(declare-fun e!2655948 () List!47479)

(assert (=> d!1263064 (= (list!17271 (left!35288 (left!35288 (left!35288 t!3602)))) e!2655948)))

(declare-fun b!4278002 () Bool)

(assert (=> b!4278002 (= e!2655948 Nil!47355)))

(declare-fun b!4278003 () Bool)

(assert (=> b!4278003 (= e!2655948 e!2655949)))

(declare-fun c!728671 () Bool)

(assert (=> b!4278003 (= c!728671 ((_ is Leaf!22161) (left!35288 (left!35288 (left!35288 t!3602)))))))

(declare-fun b!4278004 () Bool)

(assert (=> b!4278004 (= e!2655949 (list!17272 (xs!17643 (left!35288 (left!35288 (left!35288 t!3602))))))))

(assert (= (and d!1263064 c!728670) b!4278002))

(assert (= (and d!1263064 (not c!728670)) b!4278003))

(assert (= (and b!4278003 c!728671) b!4278004))

(assert (= (and b!4278003 (not c!728671)) b!4278005))

(declare-fun m!4874329 () Bool)

(assert (=> b!4278005 m!4874329))

(declare-fun m!4874331 () Bool)

(assert (=> b!4278005 m!4874331))

(assert (=> b!4278005 m!4874329))

(assert (=> b!4278005 m!4874331))

(declare-fun m!4874333 () Bool)

(assert (=> b!4278005 m!4874333))

(declare-fun m!4874335 () Bool)

(assert (=> b!4278004 m!4874335))

(assert (=> b!4277710 d!1263064))

(declare-fun b!4278009 () Bool)

(declare-fun e!2655951 () List!47479)

(assert (=> b!4278009 (= e!2655951 (++!12101 (list!17271 (left!35288 (right!35618 (left!35288 (left!35288 t!3602))))) (list!17271 (right!35618 (right!35618 (left!35288 (left!35288 t!3602)))))))))

(declare-fun d!1263066 () Bool)

(declare-fun c!728672 () Bool)

(assert (=> d!1263066 (= c!728672 ((_ is Empty!14337) (right!35618 (left!35288 (left!35288 t!3602)))))))

(declare-fun e!2655950 () List!47479)

(assert (=> d!1263066 (= (list!17271 (right!35618 (left!35288 (left!35288 t!3602)))) e!2655950)))

(declare-fun b!4278006 () Bool)

(assert (=> b!4278006 (= e!2655950 Nil!47355)))

(declare-fun b!4278007 () Bool)

(assert (=> b!4278007 (= e!2655950 e!2655951)))

(declare-fun c!728673 () Bool)

(assert (=> b!4278007 (= c!728673 ((_ is Leaf!22161) (right!35618 (left!35288 (left!35288 t!3602)))))))

(declare-fun b!4278008 () Bool)

(assert (=> b!4278008 (= e!2655951 (list!17272 (xs!17643 (right!35618 (left!35288 (left!35288 t!3602))))))))

(assert (= (and d!1263066 c!728672) b!4278006))

(assert (= (and d!1263066 (not c!728672)) b!4278007))

(assert (= (and b!4278007 c!728673) b!4278008))

(assert (= (and b!4278007 (not c!728673)) b!4278009))

(declare-fun m!4874337 () Bool)

(assert (=> b!4278009 m!4874337))

(declare-fun m!4874339 () Bool)

(assert (=> b!4278009 m!4874339))

(assert (=> b!4278009 m!4874337))

(assert (=> b!4278009 m!4874339))

(declare-fun m!4874341 () Bool)

(assert (=> b!4278009 m!4874341))

(declare-fun m!4874343 () Bool)

(assert (=> b!4278008 m!4874343))

(assert (=> b!4277710 d!1263066))

(declare-fun d!1263068 () Bool)

(declare-fun lt!1514113 () Int)

(assert (=> d!1263068 (>= lt!1514113 0)))

(declare-fun e!2655952 () Int)

(assert (=> d!1263068 (= lt!1514113 e!2655952)))

(declare-fun c!728674 () Bool)

(assert (=> d!1263068 (= c!728674 ((_ is Nil!47355) (t!354046 (++!12101 lt!1514032 acc!259))))))

(assert (=> d!1263068 (= (size!34665 (t!354046 (++!12101 lt!1514032 acc!259))) lt!1514113)))

(declare-fun b!4278010 () Bool)

(assert (=> b!4278010 (= e!2655952 0)))

(declare-fun b!4278011 () Bool)

(assert (=> b!4278011 (= e!2655952 (+ 1 (size!34665 (t!354046 (t!354046 (++!12101 lt!1514032 acc!259))))))))

(assert (= (and d!1263068 c!728674) b!4278010))

(assert (= (and d!1263068 (not c!728674)) b!4278011))

(declare-fun m!4874345 () Bool)

(assert (=> b!4278011 m!4874345))

(assert (=> b!4277664 d!1263068))

(declare-fun d!1263070 () Bool)

(declare-fun c!728675 () Bool)

(assert (=> d!1263070 (= c!728675 ((_ is Nil!47355) lt!1514056))))

(declare-fun e!2655953 () (InoxSet T!79976))

(assert (=> d!1263070 (= (content!7488 lt!1514056) e!2655953)))

(declare-fun b!4278012 () Bool)

(assert (=> b!4278012 (= e!2655953 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278013 () Bool)

(assert (=> b!4278013 (= e!2655953 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514056) true) (content!7488 (t!354046 lt!1514056))))))

(assert (= (and d!1263070 c!728675) b!4278012))

(assert (= (and d!1263070 (not c!728675)) b!4278013))

(declare-fun m!4874347 () Bool)

(assert (=> b!4278013 m!4874347))

(declare-fun m!4874349 () Bool)

(assert (=> b!4278013 m!4874349))

(assert (=> d!1262784 d!1263070))

(assert (=> d!1262784 d!1262990))

(assert (=> d!1262784 d!1262816))

(assert (=> b!4277686 d!1262990))

(declare-fun d!1263072 () Bool)

(declare-fun lt!1514114 () Int)

(assert (=> d!1263072 (>= lt!1514114 0)))

(declare-fun e!2655954 () Int)

(assert (=> d!1263072 (= lt!1514114 e!2655954)))

(declare-fun c!728676 () Bool)

(assert (=> d!1263072 (= c!728676 ((_ is Nil!47355) lt!1514067))))

(assert (=> d!1263072 (= (size!34665 lt!1514067) lt!1514114)))

(declare-fun b!4278014 () Bool)

(assert (=> b!4278014 (= e!2655954 0)))

(declare-fun b!4278015 () Bool)

(assert (=> b!4278015 (= e!2655954 (+ 1 (size!34665 (t!354046 lt!1514067))))))

(assert (= (and d!1263072 c!728676) b!4278014))

(assert (= (and d!1263072 (not c!728676)) b!4278015))

(declare-fun m!4874351 () Bool)

(assert (=> b!4278015 m!4874351))

(assert (=> b!4277725 d!1263072))

(assert (=> b!4277725 d!1263058))

(assert (=> b!4277725 d!1262800))

(assert (=> b!4277613 d!1262792))

(assert (=> b!4277613 d!1262794))

(declare-fun d!1263074 () Bool)

(declare-fun lt!1514115 () Int)

(assert (=> d!1263074 (>= lt!1514115 0)))

(declare-fun e!2655955 () Int)

(assert (=> d!1263074 (= lt!1514115 e!2655955)))

(declare-fun c!728677 () Bool)

(assert (=> d!1263074 (= c!728677 ((_ is Nil!47355) lt!1514063))))

(assert (=> d!1263074 (= (size!34665 lt!1514063) lt!1514115)))

(declare-fun b!4278016 () Bool)

(assert (=> b!4278016 (= e!2655955 0)))

(declare-fun b!4278017 () Bool)

(assert (=> b!4278017 (= e!2655955 (+ 1 (size!34665 (t!354046 lt!1514063))))))

(assert (= (and d!1263074 c!728677) b!4278016))

(assert (= (and d!1263074 (not c!728677)) b!4278017))

(declare-fun m!4874353 () Bool)

(assert (=> b!4278017 m!4874353))

(assert (=> b!4277671 d!1263074))

(assert (=> b!4277671 d!1262996))

(assert (=> b!4277671 d!1262804))

(declare-fun b!4278021 () Bool)

(declare-fun e!2655957 () Bool)

(declare-fun lt!1514116 () List!47479)

(assert (=> b!4278021 (= e!2655957 (or (not (= (list!17271 (right!35618 (left!35288 (right!35618 t!3602)))) Nil!47355)) (= lt!1514116 (list!17271 (left!35288 (left!35288 (right!35618 t!3602)))))))))

(declare-fun b!4278020 () Bool)

(declare-fun res!1756442 () Bool)

(assert (=> b!4278020 (=> (not res!1756442) (not e!2655957))))

(assert (=> b!4278020 (= res!1756442 (= (size!34665 lt!1514116) (+ (size!34665 (list!17271 (left!35288 (left!35288 (right!35618 t!3602))))) (size!34665 (list!17271 (right!35618 (left!35288 (right!35618 t!3602))))))))))

(declare-fun b!4278018 () Bool)

(declare-fun e!2655956 () List!47479)

(assert (=> b!4278018 (= e!2655956 (list!17271 (right!35618 (left!35288 (right!35618 t!3602)))))))

(declare-fun d!1263076 () Bool)

(assert (=> d!1263076 e!2655957))

(declare-fun res!1756443 () Bool)

(assert (=> d!1263076 (=> (not res!1756443) (not e!2655957))))

(assert (=> d!1263076 (= res!1756443 (= (content!7488 lt!1514116) ((_ map or) (content!7488 (list!17271 (left!35288 (left!35288 (right!35618 t!3602))))) (content!7488 (list!17271 (right!35618 (left!35288 (right!35618 t!3602))))))))))

(assert (=> d!1263076 (= lt!1514116 e!2655956)))

(declare-fun c!728678 () Bool)

(assert (=> d!1263076 (= c!728678 ((_ is Nil!47355) (list!17271 (left!35288 (left!35288 (right!35618 t!3602))))))))

(assert (=> d!1263076 (= (++!12101 (list!17271 (left!35288 (left!35288 (right!35618 t!3602)))) (list!17271 (right!35618 (left!35288 (right!35618 t!3602))))) lt!1514116)))

(declare-fun b!4278019 () Bool)

(assert (=> b!4278019 (= e!2655956 (Cons!47355 (h!52775 (list!17271 (left!35288 (left!35288 (right!35618 t!3602))))) (++!12101 (t!354046 (list!17271 (left!35288 (left!35288 (right!35618 t!3602))))) (list!17271 (right!35618 (left!35288 (right!35618 t!3602)))))))))

(assert (= (and d!1263076 c!728678) b!4278018))

(assert (= (and d!1263076 (not c!728678)) b!4278019))

(assert (= (and d!1263076 res!1756443) b!4278020))

(assert (= (and b!4278020 res!1756442) b!4278021))

(declare-fun m!4874355 () Bool)

(assert (=> b!4278020 m!4874355))

(assert (=> b!4278020 m!4873799))

(declare-fun m!4874357 () Bool)

(assert (=> b!4278020 m!4874357))

(assert (=> b!4278020 m!4873801))

(declare-fun m!4874359 () Bool)

(assert (=> b!4278020 m!4874359))

(declare-fun m!4874361 () Bool)

(assert (=> d!1263076 m!4874361))

(assert (=> d!1263076 m!4873799))

(declare-fun m!4874363 () Bool)

(assert (=> d!1263076 m!4874363))

(assert (=> d!1263076 m!4873801))

(declare-fun m!4874365 () Bool)

(assert (=> d!1263076 m!4874365))

(assert (=> b!4278019 m!4873801))

(declare-fun m!4874367 () Bool)

(assert (=> b!4278019 m!4874367))

(assert (=> b!4277696 d!1263076))

(declare-fun b!4278025 () Bool)

(declare-fun e!2655959 () List!47479)

(assert (=> b!4278025 (= e!2655959 (++!12101 (list!17271 (left!35288 (left!35288 (left!35288 (right!35618 t!3602))))) (list!17271 (right!35618 (left!35288 (left!35288 (right!35618 t!3602)))))))))

(declare-fun d!1263078 () Bool)

(declare-fun c!728679 () Bool)

(assert (=> d!1263078 (= c!728679 ((_ is Empty!14337) (left!35288 (left!35288 (right!35618 t!3602)))))))

(declare-fun e!2655958 () List!47479)

(assert (=> d!1263078 (= (list!17271 (left!35288 (left!35288 (right!35618 t!3602)))) e!2655958)))

(declare-fun b!4278022 () Bool)

(assert (=> b!4278022 (= e!2655958 Nil!47355)))

(declare-fun b!4278023 () Bool)

(assert (=> b!4278023 (= e!2655958 e!2655959)))

(declare-fun c!728680 () Bool)

(assert (=> b!4278023 (= c!728680 ((_ is Leaf!22161) (left!35288 (left!35288 (right!35618 t!3602)))))))

(declare-fun b!4278024 () Bool)

(assert (=> b!4278024 (= e!2655959 (list!17272 (xs!17643 (left!35288 (left!35288 (right!35618 t!3602))))))))

(assert (= (and d!1263078 c!728679) b!4278022))

(assert (= (and d!1263078 (not c!728679)) b!4278023))

(assert (= (and b!4278023 c!728680) b!4278024))

(assert (= (and b!4278023 (not c!728680)) b!4278025))

(declare-fun m!4874369 () Bool)

(assert (=> b!4278025 m!4874369))

(declare-fun m!4874371 () Bool)

(assert (=> b!4278025 m!4874371))

(assert (=> b!4278025 m!4874369))

(assert (=> b!4278025 m!4874371))

(declare-fun m!4874373 () Bool)

(assert (=> b!4278025 m!4874373))

(declare-fun m!4874375 () Bool)

(assert (=> b!4278024 m!4874375))

(assert (=> b!4277696 d!1263078))

(declare-fun b!4278029 () Bool)

(declare-fun e!2655961 () List!47479)

(assert (=> b!4278029 (= e!2655961 (++!12101 (list!17271 (left!35288 (right!35618 (left!35288 (right!35618 t!3602))))) (list!17271 (right!35618 (right!35618 (left!35288 (right!35618 t!3602)))))))))

(declare-fun d!1263080 () Bool)

(declare-fun c!728681 () Bool)

(assert (=> d!1263080 (= c!728681 ((_ is Empty!14337) (right!35618 (left!35288 (right!35618 t!3602)))))))

(declare-fun e!2655960 () List!47479)

(assert (=> d!1263080 (= (list!17271 (right!35618 (left!35288 (right!35618 t!3602)))) e!2655960)))

(declare-fun b!4278026 () Bool)

(assert (=> b!4278026 (= e!2655960 Nil!47355)))

(declare-fun b!4278027 () Bool)

(assert (=> b!4278027 (= e!2655960 e!2655961)))

(declare-fun c!728682 () Bool)

(assert (=> b!4278027 (= c!728682 ((_ is Leaf!22161) (right!35618 (left!35288 (right!35618 t!3602)))))))

(declare-fun b!4278028 () Bool)

(assert (=> b!4278028 (= e!2655961 (list!17272 (xs!17643 (right!35618 (left!35288 (right!35618 t!3602))))))))

(assert (= (and d!1263080 c!728681) b!4278026))

(assert (= (and d!1263080 (not c!728681)) b!4278027))

(assert (= (and b!4278027 c!728682) b!4278028))

(assert (= (and b!4278027 (not c!728682)) b!4278029))

(declare-fun m!4874377 () Bool)

(assert (=> b!4278029 m!4874377))

(declare-fun m!4874379 () Bool)

(assert (=> b!4278029 m!4874379))

(assert (=> b!4278029 m!4874377))

(assert (=> b!4278029 m!4874379))

(declare-fun m!4874381 () Bool)

(assert (=> b!4278029 m!4874381))

(declare-fun m!4874383 () Bool)

(assert (=> b!4278028 m!4874383))

(assert (=> b!4277696 d!1263080))

(declare-fun d!1263082 () Bool)

(declare-fun c!728683 () Bool)

(assert (=> d!1263082 (= c!728683 ((_ is Node!14337) (left!35288 (left!35288 (right!35618 t!3602)))))))

(declare-fun e!2655962 () Bool)

(assert (=> d!1263082 (= (inv!62708 (left!35288 (left!35288 (right!35618 t!3602)))) e!2655962)))

(declare-fun b!4278030 () Bool)

(assert (=> b!4278030 (= e!2655962 (inv!62710 (left!35288 (left!35288 (right!35618 t!3602)))))))

(declare-fun b!4278031 () Bool)

(declare-fun e!2655963 () Bool)

(assert (=> b!4278031 (= e!2655962 e!2655963)))

(declare-fun res!1756444 () Bool)

(assert (=> b!4278031 (= res!1756444 (not ((_ is Leaf!22161) (left!35288 (left!35288 (right!35618 t!3602))))))))

(assert (=> b!4278031 (=> res!1756444 e!2655963)))

(declare-fun b!4278032 () Bool)

(assert (=> b!4278032 (= e!2655963 (inv!62712 (left!35288 (left!35288 (right!35618 t!3602)))))))

(assert (= (and d!1263082 c!728683) b!4278030))

(assert (= (and d!1263082 (not c!728683)) b!4278031))

(assert (= (and b!4278031 (not res!1756444)) b!4278032))

(declare-fun m!4874385 () Bool)

(assert (=> b!4278030 m!4874385))

(declare-fun m!4874387 () Bool)

(assert (=> b!4278032 m!4874387))

(assert (=> b!4277739 d!1263082))

(declare-fun d!1263084 () Bool)

(declare-fun c!728684 () Bool)

(assert (=> d!1263084 (= c!728684 ((_ is Node!14337) (right!35618 (left!35288 (right!35618 t!3602)))))))

(declare-fun e!2655964 () Bool)

(assert (=> d!1263084 (= (inv!62708 (right!35618 (left!35288 (right!35618 t!3602)))) e!2655964)))

(declare-fun b!4278033 () Bool)

(assert (=> b!4278033 (= e!2655964 (inv!62710 (right!35618 (left!35288 (right!35618 t!3602)))))))

(declare-fun b!4278034 () Bool)

(declare-fun e!2655965 () Bool)

(assert (=> b!4278034 (= e!2655964 e!2655965)))

(declare-fun res!1756445 () Bool)

(assert (=> b!4278034 (= res!1756445 (not ((_ is Leaf!22161) (right!35618 (left!35288 (right!35618 t!3602))))))))

(assert (=> b!4278034 (=> res!1756445 e!2655965)))

(declare-fun b!4278035 () Bool)

(assert (=> b!4278035 (= e!2655965 (inv!62712 (right!35618 (left!35288 (right!35618 t!3602)))))))

(assert (= (and d!1263084 c!728684) b!4278033))

(assert (= (and d!1263084 (not c!728684)) b!4278034))

(assert (= (and b!4278034 (not res!1756445)) b!4278035))

(declare-fun m!4874389 () Bool)

(assert (=> b!4278033 m!4874389))

(declare-fun m!4874391 () Bool)

(assert (=> b!4278035 m!4874391))

(assert (=> b!4277739 d!1263084))

(declare-fun d!1263086 () Bool)

(assert (=> d!1263086 (= (max!0 (height!1887 (left!35288 (right!35618 t!3602))) (height!1887 (right!35618 (right!35618 t!3602)))) (ite (< (height!1887 (left!35288 (right!35618 t!3602))) (height!1887 (right!35618 (right!35618 t!3602)))) (height!1887 (right!35618 (right!35618 t!3602))) (height!1887 (left!35288 (right!35618 t!3602)))))))

(assert (=> b!4277633 d!1263086))

(declare-fun d!1263088 () Bool)

(assert (=> d!1263088 (= (height!1887 (left!35288 (right!35618 t!3602))) (ite ((_ is Empty!14337) (left!35288 (right!35618 t!3602))) 0 (ite ((_ is Leaf!22161) (left!35288 (right!35618 t!3602))) 1 (cheight!14548 (left!35288 (right!35618 t!3602))))))))

(assert (=> b!4277633 d!1263088))

(declare-fun d!1263090 () Bool)

(assert (=> d!1263090 (= (height!1887 (right!35618 (right!35618 t!3602))) (ite ((_ is Empty!14337) (right!35618 (right!35618 t!3602))) 0 (ite ((_ is Leaf!22161) (right!35618 (right!35618 t!3602))) 1 (cheight!14548 (right!35618 (right!35618 t!3602))))))))

(assert (=> b!4277633 d!1263090))

(declare-fun e!2655967 () Bool)

(declare-fun b!4278039 () Bool)

(declare-fun lt!1514117 () List!47479)

(assert (=> b!4278039 (= e!2655967 (or (not (= lt!1514032 Nil!47355)) (= lt!1514117 (t!354046 (t!354046 lt!1514031)))))))

(declare-fun b!4278038 () Bool)

(declare-fun res!1756446 () Bool)

(assert (=> b!4278038 (=> (not res!1756446) (not e!2655967))))

(assert (=> b!4278038 (= res!1756446 (= (size!34665 lt!1514117) (+ (size!34665 (t!354046 (t!354046 lt!1514031))) (size!34665 lt!1514032))))))

(declare-fun b!4278036 () Bool)

(declare-fun e!2655966 () List!47479)

(assert (=> b!4278036 (= e!2655966 lt!1514032)))

(declare-fun d!1263092 () Bool)

(assert (=> d!1263092 e!2655967))

(declare-fun res!1756447 () Bool)

(assert (=> d!1263092 (=> (not res!1756447) (not e!2655967))))

(assert (=> d!1263092 (= res!1756447 (= (content!7488 lt!1514117) ((_ map or) (content!7488 (t!354046 (t!354046 lt!1514031))) (content!7488 lt!1514032))))))

(assert (=> d!1263092 (= lt!1514117 e!2655966)))

(declare-fun c!728685 () Bool)

(assert (=> d!1263092 (= c!728685 ((_ is Nil!47355) (t!354046 (t!354046 lt!1514031))))))

(assert (=> d!1263092 (= (++!12101 (t!354046 (t!354046 lt!1514031)) lt!1514032) lt!1514117)))

(declare-fun b!4278037 () Bool)

(assert (=> b!4278037 (= e!2655966 (Cons!47355 (h!52775 (t!354046 (t!354046 lt!1514031))) (++!12101 (t!354046 (t!354046 (t!354046 lt!1514031))) lt!1514032)))))

(assert (= (and d!1263092 c!728685) b!4278036))

(assert (= (and d!1263092 (not c!728685)) b!4278037))

(assert (= (and d!1263092 res!1756447) b!4278038))

(assert (= (and b!4278038 res!1756446) b!4278039))

(declare-fun m!4874393 () Bool)

(assert (=> b!4278038 m!4874393))

(assert (=> b!4278038 m!4874225))

(assert (=> b!4278038 m!4873651))

(declare-fun m!4874395 () Bool)

(assert (=> d!1263092 m!4874395))

(assert (=> d!1263092 m!4874219))

(assert (=> d!1263092 m!4873655))

(declare-fun m!4874397 () Bool)

(assert (=> b!4278037 m!4874397))

(assert (=> b!4277636 d!1263092))

(assert (=> b!4277687 d!1263054))

(assert (=> b!4277687 d!1262834))

(declare-fun d!1263094 () Bool)

(declare-fun lt!1514118 () Int)

(assert (=> d!1263094 (>= lt!1514118 0)))

(declare-fun e!2655968 () Int)

(assert (=> d!1263094 (= lt!1514118 e!2655968)))

(declare-fun c!728686 () Bool)

(assert (=> d!1263094 (= c!728686 ((_ is Nil!47355) (t!354046 lt!1514039)))))

(assert (=> d!1263094 (= (size!34665 (t!354046 lt!1514039)) lt!1514118)))

(declare-fun b!4278040 () Bool)

(assert (=> b!4278040 (= e!2655968 0)))

(declare-fun b!4278041 () Bool)

(assert (=> b!4278041 (= e!2655968 (+ 1 (size!34665 (t!354046 (t!354046 lt!1514039)))))))

(assert (= (and d!1263094 c!728686) b!4278040))

(assert (= (and d!1263094 (not c!728686)) b!4278041))

(declare-fun m!4874399 () Bool)

(assert (=> b!4278041 m!4874399))

(assert (=> b!4277656 d!1263094))

(declare-fun d!1263096 () Bool)

(declare-fun lt!1514119 () Int)

(assert (=> d!1263096 (= lt!1514119 (size!34665 (list!17271 (left!35288 (right!35618 t!3602)))))))

(assert (=> d!1263096 (= lt!1514119 (ite ((_ is Empty!14337) (left!35288 (right!35618 t!3602))) 0 (ite ((_ is Leaf!22161) (left!35288 (right!35618 t!3602))) (csize!28905 (left!35288 (right!35618 t!3602))) (csize!28904 (left!35288 (right!35618 t!3602))))))))

(assert (=> d!1263096 (= (size!34666 (left!35288 (right!35618 t!3602))) lt!1514119)))

(declare-fun bs!602601 () Bool)

(assert (= bs!602601 d!1263096))

(assert (=> bs!602601 m!4873599))

(assert (=> bs!602601 m!4873599))

(assert (=> bs!602601 m!4873787))

(assert (=> d!1262782 d!1263096))

(declare-fun d!1263098 () Bool)

(declare-fun lt!1514120 () Int)

(assert (=> d!1263098 (= lt!1514120 (size!34665 (list!17271 (right!35618 (right!35618 t!3602)))))))

(assert (=> d!1263098 (= lt!1514120 (ite ((_ is Empty!14337) (right!35618 (right!35618 t!3602))) 0 (ite ((_ is Leaf!22161) (right!35618 (right!35618 t!3602))) (csize!28905 (right!35618 (right!35618 t!3602))) (csize!28904 (right!35618 (right!35618 t!3602))))))))

(assert (=> d!1263098 (= (size!34666 (right!35618 (right!35618 t!3602))) lt!1514120)))

(declare-fun bs!602602 () Bool)

(assert (= bs!602602 d!1263098))

(assert (=> bs!602602 m!4873601))

(assert (=> bs!602602 m!4873601))

(assert (=> bs!602602 m!4873789))

(assert (=> d!1262782 d!1263098))

(declare-fun d!1263100 () Bool)

(assert (=> d!1263100 (= (inv!62709 (xs!17643 (left!35288 (left!35288 t!3602)))) (<= (size!34665 (innerList!14397 (xs!17643 (left!35288 (left!35288 t!3602))))) 2147483647))))

(declare-fun bs!602603 () Bool)

(assert (= bs!602603 d!1263100))

(declare-fun m!4874401 () Bool)

(assert (=> bs!602603 m!4874401))

(assert (=> b!4277749 d!1263100))

(declare-fun d!1263102 () Bool)

(assert (=> d!1263102 (= (list!17272 (xs!17643 (right!35618 (right!35618 t!3602)))) (innerList!14397 (xs!17643 (right!35618 (right!35618 t!3602)))))))

(assert (=> b!4277699 d!1263102))

(declare-fun d!1263104 () Bool)

(declare-fun lt!1514121 () Int)

(assert (=> d!1263104 (>= lt!1514121 0)))

(declare-fun e!2655969 () Int)

(assert (=> d!1263104 (= lt!1514121 e!2655969)))

(declare-fun c!728687 () Bool)

(assert (=> d!1263104 (= c!728687 ((_ is Nil!47355) lt!1514064))))

(assert (=> d!1263104 (= (size!34665 lt!1514064) lt!1514121)))

(declare-fun b!4278042 () Bool)

(assert (=> b!4278042 (= e!2655969 0)))

(declare-fun b!4278043 () Bool)

(assert (=> b!4278043 (= e!2655969 (+ 1 (size!34665 (t!354046 lt!1514064))))))

(assert (= (and d!1263104 c!728687) b!4278042))

(assert (= (and d!1263104 (not c!728687)) b!4278043))

(declare-fun m!4874403 () Bool)

(assert (=> b!4278043 m!4874403))

(assert (=> b!4277691 d!1263104))

(declare-fun d!1263106 () Bool)

(declare-fun lt!1514122 () Int)

(assert (=> d!1263106 (>= lt!1514122 0)))

(declare-fun e!2655970 () Int)

(assert (=> d!1263106 (= lt!1514122 e!2655970)))

(declare-fun c!728688 () Bool)

(assert (=> d!1263106 (= c!728688 ((_ is Nil!47355) (list!17271 (left!35288 (right!35618 t!3602)))))))

(assert (=> d!1263106 (= (size!34665 (list!17271 (left!35288 (right!35618 t!3602)))) lt!1514122)))

(declare-fun b!4278044 () Bool)

(assert (=> b!4278044 (= e!2655970 0)))

(declare-fun b!4278045 () Bool)

(assert (=> b!4278045 (= e!2655970 (+ 1 (size!34665 (t!354046 (list!17271 (left!35288 (right!35618 t!3602)))))))))

(assert (= (and d!1263106 c!728688) b!4278044))

(assert (= (and d!1263106 (not c!728688)) b!4278045))

(assert (=> b!4278045 m!4874155))

(assert (=> b!4277691 d!1263106))

(declare-fun d!1263108 () Bool)

(declare-fun lt!1514123 () Int)

(assert (=> d!1263108 (>= lt!1514123 0)))

(declare-fun e!2655971 () Int)

(assert (=> d!1263108 (= lt!1514123 e!2655971)))

(declare-fun c!728689 () Bool)

(assert (=> d!1263108 (= c!728689 ((_ is Nil!47355) (list!17271 (right!35618 (right!35618 t!3602)))))))

(assert (=> d!1263108 (= (size!34665 (list!17271 (right!35618 (right!35618 t!3602)))) lt!1514123)))

(declare-fun b!4278046 () Bool)

(assert (=> b!4278046 (= e!2655971 0)))

(declare-fun b!4278047 () Bool)

(assert (=> b!4278047 (= e!2655971 (+ 1 (size!34665 (t!354046 (list!17271 (right!35618 (right!35618 t!3602)))))))))

(assert (= (and d!1263108 c!728689) b!4278046))

(assert (= (and d!1263108 (not c!728689)) b!4278047))

(declare-fun m!4874405 () Bool)

(assert (=> b!4278047 m!4874405))

(assert (=> b!4277691 d!1263108))

(assert (=> b!4277623 d!1262996))

(declare-fun d!1263110 () Bool)

(declare-fun res!1756448 () Bool)

(declare-fun e!2655972 () Bool)

(assert (=> d!1263110 (=> (not res!1756448) (not e!2655972))))

(assert (=> d!1263110 (= res!1756448 (= (csize!28904 (right!35618 (right!35618 t!3602))) (+ (size!34666 (left!35288 (right!35618 (right!35618 t!3602)))) (size!34666 (right!35618 (right!35618 (right!35618 t!3602)))))))))

(assert (=> d!1263110 (= (inv!62710 (right!35618 (right!35618 t!3602))) e!2655972)))

(declare-fun b!4278048 () Bool)

(declare-fun res!1756449 () Bool)

(assert (=> b!4278048 (=> (not res!1756449) (not e!2655972))))

(assert (=> b!4278048 (= res!1756449 (and (not (= (left!35288 (right!35618 (right!35618 t!3602))) Empty!14337)) (not (= (right!35618 (right!35618 (right!35618 t!3602))) Empty!14337))))))

(declare-fun b!4278049 () Bool)

(declare-fun res!1756450 () Bool)

(assert (=> b!4278049 (=> (not res!1756450) (not e!2655972))))

(assert (=> b!4278049 (= res!1756450 (= (cheight!14548 (right!35618 (right!35618 t!3602))) (+ (max!0 (height!1887 (left!35288 (right!35618 (right!35618 t!3602)))) (height!1887 (right!35618 (right!35618 (right!35618 t!3602))))) 1)))))

(declare-fun b!4278050 () Bool)

(assert (=> b!4278050 (= e!2655972 (<= 0 (cheight!14548 (right!35618 (right!35618 t!3602)))))))

(assert (= (and d!1263110 res!1756448) b!4278048))

(assert (= (and b!4278048 res!1756449) b!4278049))

(assert (= (and b!4278049 res!1756450) b!4278050))

(declare-fun m!4874407 () Bool)

(assert (=> d!1263110 m!4874407))

(declare-fun m!4874409 () Bool)

(assert (=> d!1263110 m!4874409))

(declare-fun m!4874411 () Bool)

(assert (=> b!4278049 m!4874411))

(declare-fun m!4874413 () Bool)

(assert (=> b!4278049 m!4874413))

(assert (=> b!4278049 m!4874411))

(assert (=> b!4278049 m!4874413))

(declare-fun m!4874415 () Bool)

(assert (=> b!4278049 m!4874415))

(assert (=> b!4277652 d!1263110))

(declare-fun d!1263112 () Bool)

(declare-fun c!728690 () Bool)

(assert (=> d!1263112 (= c!728690 ((_ is Nil!47355) (t!354046 lt!1514039)))))

(declare-fun e!2655973 () (InoxSet T!79976))

(assert (=> d!1263112 (= (content!7488 (t!354046 lt!1514039)) e!2655973)))

(declare-fun b!4278051 () Bool)

(assert (=> b!4278051 (= e!2655973 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278052 () Bool)

(assert (=> b!4278052 (= e!2655973 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 lt!1514039)) true) (content!7488 (t!354046 (t!354046 lt!1514039)))))))

(assert (= (and d!1263112 c!728690) b!4278051))

(assert (= (and d!1263112 (not c!728690)) b!4278052))

(declare-fun m!4874417 () Bool)

(assert (=> b!4278052 m!4874417))

(declare-fun m!4874419 () Bool)

(assert (=> b!4278052 m!4874419))

(assert (=> b!4277644 d!1263112))

(declare-fun d!1263114 () Bool)

(declare-fun c!728691 () Bool)

(assert (=> d!1263114 (= c!728691 ((_ is Nil!47355) lt!1514067))))

(declare-fun e!2655974 () (InoxSet T!79976))

(assert (=> d!1263114 (= (content!7488 lt!1514067) e!2655974)))

(declare-fun b!4278053 () Bool)

(assert (=> b!4278053 (= e!2655974 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278054 () Bool)

(assert (=> b!4278054 (= e!2655974 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514067) true) (content!7488 (t!354046 lt!1514067))))))

(assert (= (and d!1263114 c!728691) b!4278053))

(assert (= (and d!1263114 (not c!728691)) b!4278054))

(declare-fun m!4874421 () Bool)

(assert (=> b!4278054 m!4874421))

(declare-fun m!4874423 () Bool)

(assert (=> b!4278054 m!4874423))

(assert (=> d!1262850 d!1263114))

(assert (=> d!1262850 d!1262974))

(assert (=> d!1262850 d!1262790))

(declare-fun d!1263116 () Bool)

(declare-fun res!1756451 () Bool)

(declare-fun e!2655975 () Bool)

(assert (=> d!1263116 (=> (not res!1756451) (not e!2655975))))

(assert (=> d!1263116 (= res!1756451 (= (csize!28904 (right!35618 (left!35288 t!3602))) (+ (size!34666 (left!35288 (right!35618 (left!35288 t!3602)))) (size!34666 (right!35618 (right!35618 (left!35288 t!3602)))))))))

(assert (=> d!1263116 (= (inv!62710 (right!35618 (left!35288 t!3602))) e!2655975)))

(declare-fun b!4278055 () Bool)

(declare-fun res!1756452 () Bool)

(assert (=> b!4278055 (=> (not res!1756452) (not e!2655975))))

(assert (=> b!4278055 (= res!1756452 (and (not (= (left!35288 (right!35618 (left!35288 t!3602))) Empty!14337)) (not (= (right!35618 (right!35618 (left!35288 t!3602))) Empty!14337))))))

(declare-fun b!4278056 () Bool)

(declare-fun res!1756453 () Bool)

(assert (=> b!4278056 (=> (not res!1756453) (not e!2655975))))

(assert (=> b!4278056 (= res!1756453 (= (cheight!14548 (right!35618 (left!35288 t!3602))) (+ (max!0 (height!1887 (left!35288 (right!35618 (left!35288 t!3602)))) (height!1887 (right!35618 (right!35618 (left!35288 t!3602))))) 1)))))

(declare-fun b!4278057 () Bool)

(assert (=> b!4278057 (= e!2655975 (<= 0 (cheight!14548 (right!35618 (left!35288 t!3602)))))))

(assert (= (and d!1263116 res!1756451) b!4278055))

(assert (= (and b!4278055 res!1756452) b!4278056))

(assert (= (and b!4278056 res!1756453) b!4278057))

(declare-fun m!4874425 () Bool)

(assert (=> d!1263116 m!4874425))

(declare-fun m!4874427 () Bool)

(assert (=> d!1263116 m!4874427))

(declare-fun m!4874429 () Bool)

(assert (=> b!4278056 m!4874429))

(declare-fun m!4874431 () Bool)

(assert (=> b!4278056 m!4874431))

(assert (=> b!4278056 m!4874429))

(assert (=> b!4278056 m!4874431))

(declare-fun m!4874433 () Bool)

(assert (=> b!4278056 m!4874433))

(assert (=> b!4277736 d!1263116))

(declare-fun e!2655977 () Bool)

(declare-fun lt!1514124 () List!47479)

(declare-fun b!4278061 () Bool)

(assert (=> b!4278061 (= e!2655977 (or (not (= acc!259 Nil!47355)) (= lt!1514124 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032))))))))

(declare-fun b!4278060 () Bool)

(declare-fun res!1756454 () Bool)

(assert (=> b!4278060 (=> (not res!1756454) (not e!2655977))))

(assert (=> b!4278060 (= res!1756454 (= (size!34665 lt!1514124) (+ (size!34665 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032)))) (size!34665 acc!259))))))

(declare-fun b!4278058 () Bool)

(declare-fun e!2655976 () List!47479)

(assert (=> b!4278058 (= e!2655976 acc!259)))

(declare-fun d!1263118 () Bool)

(assert (=> d!1263118 e!2655977))

(declare-fun res!1756455 () Bool)

(assert (=> d!1263118 (=> (not res!1756455) (not e!2655977))))

(assert (=> d!1263118 (= res!1756455 (= (content!7488 lt!1514124) ((_ map or) (content!7488 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032)))) (content!7488 acc!259))))))

(assert (=> d!1263118 (= lt!1514124 e!2655976)))

(declare-fun c!728692 () Bool)

(assert (=> d!1263118 (= c!728692 ((_ is Nil!47355) (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032)))))))

(assert (=> d!1263118 (= (++!12101 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032))) acc!259) lt!1514124)))

(declare-fun b!4278059 () Bool)

(assert (=> b!4278059 (= e!2655976 (Cons!47355 (h!52775 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032)))) (++!12101 (t!354046 (t!354046 (t!354046 (++!12101 lt!1514031 lt!1514032)))) acc!259)))))

(assert (= (and d!1263118 c!728692) b!4278058))

(assert (= (and d!1263118 (not c!728692)) b!4278059))

(assert (= (and d!1263118 res!1756455) b!4278060))

(assert (= (and b!4278060 res!1756454) b!4278061))

(declare-fun m!4874435 () Bool)

(assert (=> b!4278060 m!4874435))

(assert (=> b!4278060 m!4874269))

(assert (=> b!4278060 m!4873589))

(declare-fun m!4874437 () Bool)

(assert (=> d!1263118 m!4874437))

(assert (=> d!1263118 m!4874191))

(assert (=> d!1263118 m!4873595))

(declare-fun m!4874439 () Bool)

(assert (=> b!4278059 m!4874439))

(assert (=> b!4277666 d!1263118))

(declare-fun d!1263120 () Bool)

(declare-fun lt!1514125 () Int)

(assert (=> d!1263120 (>= lt!1514125 0)))

(declare-fun e!2655978 () Int)

(assert (=> d!1263120 (= lt!1514125 e!2655978)))

(declare-fun c!728693 () Bool)

(assert (=> d!1263120 (= c!728693 ((_ is Nil!47355) (t!354046 lt!1514038)))))

(assert (=> d!1263120 (= (size!34665 (t!354046 lt!1514038)) lt!1514125)))

(declare-fun b!4278062 () Bool)

(assert (=> b!4278062 (= e!2655978 0)))

(declare-fun b!4278063 () Bool)

(assert (=> b!4278063 (= e!2655978 (+ 1 (size!34665 (t!354046 (t!354046 lt!1514038)))))))

(assert (= (and d!1263120 c!728693) b!4278062))

(assert (= (and d!1263120 (not c!728693)) b!4278063))

(declare-fun m!4874441 () Bool)

(assert (=> b!4278063 m!4874441))

(assert (=> b!4277662 d!1263120))

(declare-fun d!1263122 () Bool)

(declare-fun c!728694 () Bool)

(assert (=> d!1263122 (= c!728694 ((_ is Nil!47355) (t!354046 lt!1514050)))))

(declare-fun e!2655979 () (InoxSet T!79976))

(assert (=> d!1263122 (= (content!7488 (t!354046 lt!1514050)) e!2655979)))

(declare-fun b!4278064 () Bool)

(assert (=> b!4278064 (= e!2655979 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278065 () Bool)

(assert (=> b!4278065 (= e!2655979 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (t!354046 lt!1514050)) true) (content!7488 (t!354046 (t!354046 lt!1514050)))))))

(assert (= (and d!1263122 c!728694) b!4278064))

(assert (= (and d!1263122 (not c!728694)) b!4278065))

(declare-fun m!4874443 () Bool)

(assert (=> b!4278065 m!4874443))

(declare-fun m!4874445 () Bool)

(assert (=> b!4278065 m!4874445))

(assert (=> b!4277680 d!1263122))

(declare-fun d!1263124 () Bool)

(declare-fun c!728695 () Bool)

(assert (=> d!1263124 (= c!728695 ((_ is Nil!47355) lt!1514066))))

(declare-fun e!2655980 () (InoxSet T!79976))

(assert (=> d!1263124 (= (content!7488 lt!1514066) e!2655980)))

(declare-fun b!4278066 () Bool)

(assert (=> b!4278066 (= e!2655980 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278067 () Bool)

(assert (=> b!4278067 (= e!2655980 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514066) true) (content!7488 (t!354046 lt!1514066))))))

(assert (= (and d!1263124 c!728695) b!4278066))

(assert (= (and d!1263124 (not c!728695)) b!4278067))

(declare-fun m!4874447 () Bool)

(assert (=> b!4278067 m!4874447))

(declare-fun m!4874449 () Bool)

(assert (=> b!4278067 m!4874449))

(assert (=> d!1262838 d!1263124))

(declare-fun d!1263126 () Bool)

(declare-fun c!728696 () Bool)

(assert (=> d!1263126 (= c!728696 ((_ is Nil!47355) (list!17271 (left!35288 (left!35288 t!3602)))))))

(declare-fun e!2655981 () (InoxSet T!79976))

(assert (=> d!1263126 (= (content!7488 (list!17271 (left!35288 (left!35288 t!3602)))) e!2655981)))

(declare-fun b!4278068 () Bool)

(assert (=> b!4278068 (= e!2655981 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278069 () Bool)

(assert (=> b!4278069 (= e!2655981 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (list!17271 (left!35288 (left!35288 t!3602)))) true) (content!7488 (t!354046 (list!17271 (left!35288 (left!35288 t!3602)))))))))

(assert (= (and d!1263126 c!728696) b!4278068))

(assert (= (and d!1263126 (not c!728696)) b!4278069))

(declare-fun m!4874451 () Bool)

(assert (=> b!4278069 m!4874451))

(declare-fun m!4874453 () Bool)

(assert (=> b!4278069 m!4874453))

(assert (=> d!1262838 d!1263126))

(declare-fun d!1263128 () Bool)

(declare-fun c!728697 () Bool)

(assert (=> d!1263128 (= c!728697 ((_ is Nil!47355) (list!17271 (right!35618 (left!35288 t!3602)))))))

(declare-fun e!2655982 () (InoxSet T!79976))

(assert (=> d!1263128 (= (content!7488 (list!17271 (right!35618 (left!35288 t!3602)))) e!2655982)))

(declare-fun b!4278070 () Bool)

(assert (=> b!4278070 (= e!2655982 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278071 () Bool)

(assert (=> b!4278071 (= e!2655982 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (list!17271 (right!35618 (left!35288 t!3602)))) true) (content!7488 (t!354046 (list!17271 (right!35618 (left!35288 t!3602)))))))))

(assert (= (and d!1263128 c!728697) b!4278070))

(assert (= (and d!1263128 (not c!728697)) b!4278071))

(declare-fun m!4874455 () Bool)

(assert (=> b!4278071 m!4874455))

(declare-fun m!4874457 () Bool)

(assert (=> b!4278071 m!4874457))

(assert (=> d!1262838 d!1263128))

(declare-fun b!4278075 () Bool)

(declare-fun e!2655984 () Bool)

(declare-fun lt!1514126 () List!47479)

(assert (=> b!4278075 (= e!2655984 (or (not (= (list!17271 (right!35618 (right!35618 (left!35288 t!3602)))) Nil!47355)) (= lt!1514126 (list!17271 (left!35288 (right!35618 (left!35288 t!3602)))))))))

(declare-fun b!4278074 () Bool)

(declare-fun res!1756456 () Bool)

(assert (=> b!4278074 (=> (not res!1756456) (not e!2655984))))

(assert (=> b!4278074 (= res!1756456 (= (size!34665 lt!1514126) (+ (size!34665 (list!17271 (left!35288 (right!35618 (left!35288 t!3602))))) (size!34665 (list!17271 (right!35618 (right!35618 (left!35288 t!3602))))))))))

(declare-fun b!4278072 () Bool)

(declare-fun e!2655983 () List!47479)

(assert (=> b!4278072 (= e!2655983 (list!17271 (right!35618 (right!35618 (left!35288 t!3602)))))))

(declare-fun d!1263130 () Bool)

(assert (=> d!1263130 e!2655984))

(declare-fun res!1756457 () Bool)

(assert (=> d!1263130 (=> (not res!1756457) (not e!2655984))))

(assert (=> d!1263130 (= res!1756457 (= (content!7488 lt!1514126) ((_ map or) (content!7488 (list!17271 (left!35288 (right!35618 (left!35288 t!3602))))) (content!7488 (list!17271 (right!35618 (right!35618 (left!35288 t!3602))))))))))

(assert (=> d!1263130 (= lt!1514126 e!2655983)))

(declare-fun c!728698 () Bool)

(assert (=> d!1263130 (= c!728698 ((_ is Nil!47355) (list!17271 (left!35288 (right!35618 (left!35288 t!3602))))))))

(assert (=> d!1263130 (= (++!12101 (list!17271 (left!35288 (right!35618 (left!35288 t!3602)))) (list!17271 (right!35618 (right!35618 (left!35288 t!3602))))) lt!1514126)))

(declare-fun b!4278073 () Bool)

(assert (=> b!4278073 (= e!2655983 (Cons!47355 (h!52775 (list!17271 (left!35288 (right!35618 (left!35288 t!3602))))) (++!12101 (t!354046 (list!17271 (left!35288 (right!35618 (left!35288 t!3602))))) (list!17271 (right!35618 (right!35618 (left!35288 t!3602)))))))))

(assert (= (and d!1263130 c!728698) b!4278072))

(assert (= (and d!1263130 (not c!728698)) b!4278073))

(assert (= (and d!1263130 res!1756457) b!4278074))

(assert (= (and b!4278074 res!1756456) b!4278075))

(declare-fun m!4874459 () Bool)

(assert (=> b!4278074 m!4874459))

(assert (=> b!4278074 m!4873841))

(declare-fun m!4874461 () Bool)

(assert (=> b!4278074 m!4874461))

(assert (=> b!4278074 m!4873843))

(declare-fun m!4874463 () Bool)

(assert (=> b!4278074 m!4874463))

(declare-fun m!4874465 () Bool)

(assert (=> d!1263130 m!4874465))

(assert (=> d!1263130 m!4873841))

(declare-fun m!4874467 () Bool)

(assert (=> d!1263130 m!4874467))

(assert (=> d!1263130 m!4873843))

(declare-fun m!4874469 () Bool)

(assert (=> d!1263130 m!4874469))

(assert (=> b!4278073 m!4873843))

(declare-fun m!4874471 () Bool)

(assert (=> b!4278073 m!4874471))

(assert (=> b!4277714 d!1263130))

(declare-fun b!4278079 () Bool)

(declare-fun e!2655986 () List!47479)

(assert (=> b!4278079 (= e!2655986 (++!12101 (list!17271 (left!35288 (left!35288 (right!35618 (left!35288 t!3602))))) (list!17271 (right!35618 (left!35288 (right!35618 (left!35288 t!3602)))))))))

(declare-fun d!1263132 () Bool)

(declare-fun c!728699 () Bool)

(assert (=> d!1263132 (= c!728699 ((_ is Empty!14337) (left!35288 (right!35618 (left!35288 t!3602)))))))

(declare-fun e!2655985 () List!47479)

(assert (=> d!1263132 (= (list!17271 (left!35288 (right!35618 (left!35288 t!3602)))) e!2655985)))

(declare-fun b!4278076 () Bool)

(assert (=> b!4278076 (= e!2655985 Nil!47355)))

(declare-fun b!4278077 () Bool)

(assert (=> b!4278077 (= e!2655985 e!2655986)))

(declare-fun c!728700 () Bool)

(assert (=> b!4278077 (= c!728700 ((_ is Leaf!22161) (left!35288 (right!35618 (left!35288 t!3602)))))))

(declare-fun b!4278078 () Bool)

(assert (=> b!4278078 (= e!2655986 (list!17272 (xs!17643 (left!35288 (right!35618 (left!35288 t!3602))))))))

(assert (= (and d!1263132 c!728699) b!4278076))

(assert (= (and d!1263132 (not c!728699)) b!4278077))

(assert (= (and b!4278077 c!728700) b!4278078))

(assert (= (and b!4278077 (not c!728700)) b!4278079))

(declare-fun m!4874473 () Bool)

(assert (=> b!4278079 m!4874473))

(declare-fun m!4874475 () Bool)

(assert (=> b!4278079 m!4874475))

(assert (=> b!4278079 m!4874473))

(assert (=> b!4278079 m!4874475))

(declare-fun m!4874477 () Bool)

(assert (=> b!4278079 m!4874477))

(declare-fun m!4874479 () Bool)

(assert (=> b!4278078 m!4874479))

(assert (=> b!4277714 d!1263132))

(declare-fun b!4278083 () Bool)

(declare-fun e!2655988 () List!47479)

(assert (=> b!4278083 (= e!2655988 (++!12101 (list!17271 (left!35288 (right!35618 (right!35618 (left!35288 t!3602))))) (list!17271 (right!35618 (right!35618 (right!35618 (left!35288 t!3602)))))))))

(declare-fun d!1263134 () Bool)

(declare-fun c!728701 () Bool)

(assert (=> d!1263134 (= c!728701 ((_ is Empty!14337) (right!35618 (right!35618 (left!35288 t!3602)))))))

(declare-fun e!2655987 () List!47479)

(assert (=> d!1263134 (= (list!17271 (right!35618 (right!35618 (left!35288 t!3602)))) e!2655987)))

(declare-fun b!4278080 () Bool)

(assert (=> b!4278080 (= e!2655987 Nil!47355)))

(declare-fun b!4278081 () Bool)

(assert (=> b!4278081 (= e!2655987 e!2655988)))

(declare-fun c!728702 () Bool)

(assert (=> b!4278081 (= c!728702 ((_ is Leaf!22161) (right!35618 (right!35618 (left!35288 t!3602)))))))

(declare-fun b!4278082 () Bool)

(assert (=> b!4278082 (= e!2655988 (list!17272 (xs!17643 (right!35618 (right!35618 (left!35288 t!3602))))))))

(assert (= (and d!1263134 c!728701) b!4278080))

(assert (= (and d!1263134 (not c!728701)) b!4278081))

(assert (= (and b!4278081 c!728702) b!4278082))

(assert (= (and b!4278081 (not c!728702)) b!4278083))

(declare-fun m!4874481 () Bool)

(assert (=> b!4278083 m!4874481))

(declare-fun m!4874483 () Bool)

(assert (=> b!4278083 m!4874483))

(assert (=> b!4278083 m!4874481))

(assert (=> b!4278083 m!4874483))

(declare-fun m!4874485 () Bool)

(assert (=> b!4278083 m!4874485))

(declare-fun m!4874487 () Bool)

(assert (=> b!4278082 m!4874487))

(assert (=> b!4277714 d!1263134))

(declare-fun b!4278087 () Bool)

(declare-fun e!2655990 () Bool)

(declare-fun lt!1514127 () List!47479)

(assert (=> b!4278087 (= e!2655990 (or (not (= (list!17271 (right!35618 (left!35288 t!3602))) Nil!47355)) (= lt!1514127 (t!354046 (list!17271 (left!35288 (left!35288 t!3602)))))))))

(declare-fun b!4278086 () Bool)

(declare-fun res!1756458 () Bool)

(assert (=> b!4278086 (=> (not res!1756458) (not e!2655990))))

(assert (=> b!4278086 (= res!1756458 (= (size!34665 lt!1514127) (+ (size!34665 (t!354046 (list!17271 (left!35288 (left!35288 t!3602))))) (size!34665 (list!17271 (right!35618 (left!35288 t!3602)))))))))

(declare-fun b!4278084 () Bool)

(declare-fun e!2655989 () List!47479)

(assert (=> b!4278084 (= e!2655989 (list!17271 (right!35618 (left!35288 t!3602))))))

(declare-fun d!1263136 () Bool)

(assert (=> d!1263136 e!2655990))

(declare-fun res!1756459 () Bool)

(assert (=> d!1263136 (=> (not res!1756459) (not e!2655990))))

(assert (=> d!1263136 (= res!1756459 (= (content!7488 lt!1514127) ((_ map or) (content!7488 (t!354046 (list!17271 (left!35288 (left!35288 t!3602))))) (content!7488 (list!17271 (right!35618 (left!35288 t!3602)))))))))

(assert (=> d!1263136 (= lt!1514127 e!2655989)))

(declare-fun c!728703 () Bool)

(assert (=> d!1263136 (= c!728703 ((_ is Nil!47355) (t!354046 (list!17271 (left!35288 (left!35288 t!3602))))))))

(assert (=> d!1263136 (= (++!12101 (t!354046 (list!17271 (left!35288 (left!35288 t!3602)))) (list!17271 (right!35618 (left!35288 t!3602)))) lt!1514127)))

(declare-fun b!4278085 () Bool)

(assert (=> b!4278085 (= e!2655989 (Cons!47355 (h!52775 (t!354046 (list!17271 (left!35288 (left!35288 t!3602))))) (++!12101 (t!354046 (t!354046 (list!17271 (left!35288 (left!35288 t!3602))))) (list!17271 (right!35618 (left!35288 t!3602))))))))

(assert (= (and d!1263136 c!728703) b!4278084))

(assert (= (and d!1263136 (not c!728703)) b!4278085))

(assert (= (and d!1263136 res!1756459) b!4278086))

(assert (= (and b!4278086 res!1756458) b!4278087))

(declare-fun m!4874489 () Bool)

(assert (=> b!4278086 m!4874489))

(assert (=> b!4278086 m!4874291))

(assert (=> b!4278086 m!4873579))

(assert (=> b!4278086 m!4873823))

(declare-fun m!4874491 () Bool)

(assert (=> d!1263136 m!4874491))

(assert (=> d!1263136 m!4874453))

(assert (=> d!1263136 m!4873579))

(assert (=> d!1263136 m!4873829))

(assert (=> b!4278085 m!4873579))

(declare-fun m!4874493 () Bool)

(assert (=> b!4278085 m!4874493))

(assert (=> b!4277704 d!1263136))

(declare-fun d!1263138 () Bool)

(assert (=> d!1263138 (= (inv!62709 (xs!17643 (right!35618 (left!35288 t!3602)))) (<= (size!34665 (innerList!14397 (xs!17643 (right!35618 (left!35288 t!3602))))) 2147483647))))

(declare-fun bs!602604 () Bool)

(assert (= bs!602604 d!1263138))

(declare-fun m!4874495 () Bool)

(assert (=> bs!602604 m!4874495))

(assert (=> b!4277752 d!1263138))

(declare-fun d!1263140 () Bool)

(declare-fun lt!1514128 () Int)

(assert (=> d!1263140 (= lt!1514128 (size!34665 (list!17271 (left!35288 t!3602))))))

(assert (=> d!1263140 (= lt!1514128 (ite ((_ is Empty!14337) (left!35288 t!3602)) 0 (ite ((_ is Leaf!22161) (left!35288 t!3602)) (csize!28905 (left!35288 t!3602)) (csize!28904 (left!35288 t!3602)))))))

(assert (=> d!1263140 (= (size!34666 (left!35288 t!3602)) lt!1514128)))

(declare-fun bs!602605 () Bool)

(assert (= bs!602605 d!1263140))

(assert (=> bs!602605 m!4873523))

(assert (=> bs!602605 m!4873523))

(declare-fun m!4874497 () Bool)

(assert (=> bs!602605 m!4874497))

(assert (=> d!1262848 d!1263140))

(declare-fun d!1263142 () Bool)

(declare-fun lt!1514129 () Int)

(assert (=> d!1263142 (= lt!1514129 (size!34665 (list!17271 (right!35618 t!3602))))))

(assert (=> d!1263142 (= lt!1514129 (ite ((_ is Empty!14337) (right!35618 t!3602)) 0 (ite ((_ is Leaf!22161) (right!35618 t!3602)) (csize!28905 (right!35618 t!3602)) (csize!28904 (right!35618 t!3602)))))))

(assert (=> d!1263142 (= (size!34666 (right!35618 t!3602)) lt!1514129)))

(declare-fun bs!602606 () Bool)

(assert (= bs!602606 d!1263142))

(assert (=> bs!602606 m!4873513))

(assert (=> bs!602606 m!4873513))

(declare-fun m!4874499 () Bool)

(assert (=> bs!602606 m!4874499))

(assert (=> d!1262848 d!1263142))

(declare-fun d!1263144 () Bool)

(declare-fun c!728704 () Bool)

(assert (=> d!1263144 (= c!728704 ((_ is Nil!47355) lt!1514064))))

(declare-fun e!2655991 () (InoxSet T!79976))

(assert (=> d!1263144 (= (content!7488 lt!1514064) e!2655991)))

(declare-fun b!4278088 () Bool)

(assert (=> b!4278088 (= e!2655991 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278089 () Bool)

(assert (=> b!4278089 (= e!2655991 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 lt!1514064) true) (content!7488 (t!354046 lt!1514064))))))

(assert (= (and d!1263144 c!728704) b!4278088))

(assert (= (and d!1263144 (not c!728704)) b!4278089))

(declare-fun m!4874501 () Bool)

(assert (=> b!4278089 m!4874501))

(declare-fun m!4874503 () Bool)

(assert (=> b!4278089 m!4874503))

(assert (=> d!1262826 d!1263144))

(declare-fun d!1263146 () Bool)

(declare-fun c!728705 () Bool)

(assert (=> d!1263146 (= c!728705 ((_ is Nil!47355) (list!17271 (left!35288 (right!35618 t!3602)))))))

(declare-fun e!2655992 () (InoxSet T!79976))

(assert (=> d!1263146 (= (content!7488 (list!17271 (left!35288 (right!35618 t!3602)))) e!2655992)))

(declare-fun b!4278090 () Bool)

(assert (=> b!4278090 (= e!2655992 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278091 () Bool)

(assert (=> b!4278091 (= e!2655992 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (list!17271 (left!35288 (right!35618 t!3602)))) true) (content!7488 (t!354046 (list!17271 (left!35288 (right!35618 t!3602)))))))))

(assert (= (and d!1263146 c!728705) b!4278090))

(assert (= (and d!1263146 (not c!728705)) b!4278091))

(declare-fun m!4874505 () Bool)

(assert (=> b!4278091 m!4874505))

(assert (=> b!4278091 m!4874159))

(assert (=> d!1262826 d!1263146))

(declare-fun d!1263148 () Bool)

(declare-fun c!728706 () Bool)

(assert (=> d!1263148 (= c!728706 ((_ is Nil!47355) (list!17271 (right!35618 (right!35618 t!3602)))))))

(declare-fun e!2655993 () (InoxSet T!79976))

(assert (=> d!1263148 (= (content!7488 (list!17271 (right!35618 (right!35618 t!3602)))) e!2655993)))

(declare-fun b!4278092 () Bool)

(assert (=> b!4278092 (= e!2655993 ((as const (Array T!79976 Bool)) false))))

(declare-fun b!4278093 () Bool)

(assert (=> b!4278093 (= e!2655993 ((_ map or) (store ((as const (Array T!79976 Bool)) false) (h!52775 (list!17271 (right!35618 (right!35618 t!3602)))) true) (content!7488 (t!354046 (list!17271 (right!35618 (right!35618 t!3602)))))))))

(assert (= (and d!1263148 c!728706) b!4278092))

(assert (= (and d!1263148 (not c!728706)) b!4278093))

(declare-fun m!4874507 () Bool)

(assert (=> b!4278093 m!4874507))

(declare-fun m!4874509 () Bool)

(assert (=> b!4278093 m!4874509))

(assert (=> d!1262826 d!1263148))

(assert (=> b!4277610 d!1262858))

(assert (=> b!4277610 d!1262860))

(declare-fun d!1263150 () Bool)

(declare-fun res!1756460 () Bool)

(declare-fun e!2655994 () Bool)

(assert (=> d!1263150 (=> (not res!1756460) (not e!2655994))))

(assert (=> d!1263150 (= res!1756460 (<= (size!34665 (list!17272 (xs!17643 (right!35618 (left!35288 t!3602))))) 512))))

(assert (=> d!1263150 (= (inv!62712 (right!35618 (left!35288 t!3602))) e!2655994)))

(declare-fun b!4278094 () Bool)

(declare-fun res!1756461 () Bool)

(assert (=> b!4278094 (=> (not res!1756461) (not e!2655994))))

(assert (=> b!4278094 (= res!1756461 (= (csize!28905 (right!35618 (left!35288 t!3602))) (size!34665 (list!17272 (xs!17643 (right!35618 (left!35288 t!3602)))))))))

(declare-fun b!4278095 () Bool)

(assert (=> b!4278095 (= e!2655994 (and (> (csize!28905 (right!35618 (left!35288 t!3602))) 0) (<= (csize!28905 (right!35618 (left!35288 t!3602))) 512)))))

(assert (= (and d!1263150 res!1756460) b!4278094))

(assert (= (and b!4278094 res!1756461) b!4278095))

(assert (=> d!1263150 m!4873847))

(assert (=> d!1263150 m!4873847))

(declare-fun m!4874511 () Bool)

(assert (=> d!1263150 m!4874511))

(assert (=> b!4278094 m!4873847))

(assert (=> b!4278094 m!4873847))

(assert (=> b!4278094 m!4874511))

(assert (=> b!4277738 d!1263150))

(declare-fun d!1263152 () Bool)

(declare-fun res!1756462 () Bool)

(declare-fun e!2655995 () Bool)

(assert (=> d!1263152 (=> (not res!1756462) (not e!2655995))))

(assert (=> d!1263152 (= res!1756462 (<= (size!34665 (list!17272 (xs!17643 (right!35618 (right!35618 t!3602))))) 512))))

(assert (=> d!1263152 (= (inv!62712 (right!35618 (right!35618 t!3602))) e!2655995)))

(declare-fun b!4278096 () Bool)

(declare-fun res!1756463 () Bool)

(assert (=> b!4278096 (=> (not res!1756463) (not e!2655995))))

(assert (=> b!4278096 (= res!1756463 (= (csize!28905 (right!35618 (right!35618 t!3602))) (size!34665 (list!17272 (xs!17643 (right!35618 (right!35618 t!3602)))))))))

(declare-fun b!4278097 () Bool)

(assert (=> b!4278097 (= e!2655995 (and (> (csize!28905 (right!35618 (right!35618 t!3602))) 0) (<= (csize!28905 (right!35618 (right!35618 t!3602))) 512)))))

(assert (= (and d!1263152 res!1756462) b!4278096))

(assert (= (and b!4278096 res!1756463) b!4278097))

(assert (=> d!1263152 m!4873813))

(assert (=> d!1263152 m!4873813))

(declare-fun m!4874513 () Bool)

(assert (=> d!1263152 m!4874513))

(assert (=> b!4278096 m!4873813))

(assert (=> b!4278096 m!4873813))

(assert (=> b!4278096 m!4874513))

(assert (=> b!4277654 d!1263152))

(declare-fun e!2655996 () Bool)

(declare-fun tp!1308940 () Bool)

(declare-fun b!4278098 () Bool)

(declare-fun tp!1308941 () Bool)

(assert (=> b!4278098 (= e!2655996 (and (inv!62708 (left!35288 (left!35288 (left!35288 (left!35288 t!3602))))) tp!1308941 (inv!62708 (right!35618 (left!35288 (left!35288 (left!35288 t!3602))))) tp!1308940))))

(declare-fun b!4278100 () Bool)

(declare-fun e!2655997 () Bool)

(declare-fun tp!1308939 () Bool)

(assert (=> b!4278100 (= e!2655997 tp!1308939)))

(declare-fun b!4278099 () Bool)

(assert (=> b!4278099 (= e!2655996 (and (inv!62709 (xs!17643 (left!35288 (left!35288 (left!35288 t!3602))))) e!2655997))))

(assert (=> b!4277748 (= tp!1308918 (and (inv!62708 (left!35288 (left!35288 (left!35288 t!3602)))) e!2655996))))

(assert (= (and b!4277748 ((_ is Node!14337) (left!35288 (left!35288 (left!35288 t!3602))))) b!4278098))

(assert (= b!4278099 b!4278100))

(assert (= (and b!4277748 ((_ is Leaf!22161) (left!35288 (left!35288 (left!35288 t!3602))))) b!4278099))

(declare-fun m!4874515 () Bool)

(assert (=> b!4278098 m!4874515))

(declare-fun m!4874517 () Bool)

(assert (=> b!4278098 m!4874517))

(declare-fun m!4874519 () Bool)

(assert (=> b!4278099 m!4874519))

(assert (=> b!4277748 m!4873909))

(declare-fun e!2655998 () Bool)

(declare-fun b!4278101 () Bool)

(declare-fun tp!1308943 () Bool)

(declare-fun tp!1308944 () Bool)

(assert (=> b!4278101 (= e!2655998 (and (inv!62708 (left!35288 (right!35618 (left!35288 (left!35288 t!3602))))) tp!1308944 (inv!62708 (right!35618 (right!35618 (left!35288 (left!35288 t!3602))))) tp!1308943))))

(declare-fun b!4278103 () Bool)

(declare-fun e!2655999 () Bool)

(declare-fun tp!1308942 () Bool)

(assert (=> b!4278103 (= e!2655999 tp!1308942)))

(declare-fun b!4278102 () Bool)

(assert (=> b!4278102 (= e!2655998 (and (inv!62709 (xs!17643 (right!35618 (left!35288 (left!35288 t!3602))))) e!2655999))))

(assert (=> b!4277748 (= tp!1308917 (and (inv!62708 (right!35618 (left!35288 (left!35288 t!3602)))) e!2655998))))

(assert (= (and b!4277748 ((_ is Node!14337) (right!35618 (left!35288 (left!35288 t!3602))))) b!4278101))

(assert (= b!4278102 b!4278103))

(assert (= (and b!4277748 ((_ is Leaf!22161) (right!35618 (left!35288 (left!35288 t!3602))))) b!4278102))

(declare-fun m!4874521 () Bool)

(assert (=> b!4278101 m!4874521))

(declare-fun m!4874523 () Bool)

(assert (=> b!4278101 m!4874523))

(declare-fun m!4874525 () Bool)

(assert (=> b!4278102 m!4874525))

(assert (=> b!4277748 m!4873911))

(declare-fun b!4278104 () Bool)

(declare-fun e!2656000 () Bool)

(declare-fun tp!1308945 () Bool)

(assert (=> b!4278104 (= e!2656000 (and tp_is_empty!22949 tp!1308945))))

(assert (=> b!4277744 (= tp!1308910 e!2656000)))

(assert (= (and b!4277744 ((_ is Cons!47355) (innerList!14397 (xs!17643 (right!35618 (right!35618 t!3602)))))) b!4278104))

(declare-fun tp!1308948 () Bool)

(declare-fun tp!1308947 () Bool)

(declare-fun e!2656001 () Bool)

(declare-fun b!4278105 () Bool)

(assert (=> b!4278105 (= e!2656001 (and (inv!62708 (left!35288 (left!35288 (right!35618 (right!35618 t!3602))))) tp!1308948 (inv!62708 (right!35618 (left!35288 (right!35618 (right!35618 t!3602))))) tp!1308947))))

(declare-fun b!4278107 () Bool)

(declare-fun e!2656002 () Bool)

(declare-fun tp!1308946 () Bool)

(assert (=> b!4278107 (= e!2656002 tp!1308946)))

(declare-fun b!4278106 () Bool)

(assert (=> b!4278106 (= e!2656001 (and (inv!62709 (xs!17643 (left!35288 (right!35618 (right!35618 t!3602))))) e!2656002))))

(assert (=> b!4277742 (= tp!1308912 (and (inv!62708 (left!35288 (right!35618 (right!35618 t!3602)))) e!2656001))))

(assert (= (and b!4277742 ((_ is Node!14337) (left!35288 (right!35618 (right!35618 t!3602))))) b!4278105))

(assert (= b!4278106 b!4278107))

(assert (= (and b!4277742 ((_ is Leaf!22161) (left!35288 (right!35618 (right!35618 t!3602))))) b!4278106))

(declare-fun m!4874527 () Bool)

(assert (=> b!4278105 m!4874527))

(declare-fun m!4874529 () Bool)

(assert (=> b!4278105 m!4874529))

(declare-fun m!4874531 () Bool)

(assert (=> b!4278106 m!4874531))

(assert (=> b!4277742 m!4873903))

(declare-fun tp!1308950 () Bool)

(declare-fun tp!1308951 () Bool)

(declare-fun b!4278108 () Bool)

(declare-fun e!2656003 () Bool)

(assert (=> b!4278108 (= e!2656003 (and (inv!62708 (left!35288 (right!35618 (right!35618 (right!35618 t!3602))))) tp!1308951 (inv!62708 (right!35618 (right!35618 (right!35618 (right!35618 t!3602))))) tp!1308950))))

(declare-fun b!4278110 () Bool)

(declare-fun e!2656004 () Bool)

(declare-fun tp!1308949 () Bool)

(assert (=> b!4278110 (= e!2656004 tp!1308949)))

(declare-fun b!4278109 () Bool)

(assert (=> b!4278109 (= e!2656003 (and (inv!62709 (xs!17643 (right!35618 (right!35618 (right!35618 t!3602))))) e!2656004))))

(assert (=> b!4277742 (= tp!1308911 (and (inv!62708 (right!35618 (right!35618 (right!35618 t!3602)))) e!2656003))))

(assert (= (and b!4277742 ((_ is Node!14337) (right!35618 (right!35618 (right!35618 t!3602))))) b!4278108))

(assert (= b!4278109 b!4278110))

(assert (= (and b!4277742 ((_ is Leaf!22161) (right!35618 (right!35618 (right!35618 t!3602))))) b!4278109))

(declare-fun m!4874533 () Bool)

(assert (=> b!4278108 m!4874533))

(declare-fun m!4874535 () Bool)

(assert (=> b!4278108 m!4874535))

(declare-fun m!4874537 () Bool)

(assert (=> b!4278109 m!4874537))

(assert (=> b!4277742 m!4873905))

(declare-fun b!4278111 () Bool)

(declare-fun e!2656005 () Bool)

(declare-fun tp!1308952 () Bool)

(assert (=> b!4278111 (= e!2656005 (and tp_is_empty!22949 tp!1308952))))

(assert (=> b!4277745 (= tp!1308913 e!2656005)))

(assert (= (and b!4277745 ((_ is Cons!47355) (t!354046 (t!354046 (innerList!14397 (xs!17643 t!3602)))))) b!4278111))

(declare-fun b!4278112 () Bool)

(declare-fun e!2656006 () Bool)

(declare-fun tp!1308953 () Bool)

(assert (=> b!4278112 (= e!2656006 (and tp_is_empty!22949 tp!1308953))))

(assert (=> b!4277741 (= tp!1308907 e!2656006)))

(assert (= (and b!4277741 ((_ is Cons!47355) (innerList!14397 (xs!17643 (left!35288 (right!35618 t!3602)))))) b!4278112))

(declare-fun b!4278113 () Bool)

(declare-fun e!2656007 () Bool)

(declare-fun tp!1308954 () Bool)

(assert (=> b!4278113 (= e!2656007 (and tp_is_empty!22949 tp!1308954))))

(assert (=> b!4277753 (= tp!1308919 e!2656007)))

(assert (= (and b!4277753 ((_ is Cons!47355) (innerList!14397 (xs!17643 (right!35618 (left!35288 t!3602)))))) b!4278113))

(declare-fun e!2656008 () Bool)

(declare-fun tp!1308957 () Bool)

(declare-fun b!4278114 () Bool)

(declare-fun tp!1308956 () Bool)

(assert (=> b!4278114 (= e!2656008 (and (inv!62708 (left!35288 (left!35288 (left!35288 (right!35618 t!3602))))) tp!1308957 (inv!62708 (right!35618 (left!35288 (left!35288 (right!35618 t!3602))))) tp!1308956))))

(declare-fun b!4278116 () Bool)

(declare-fun e!2656009 () Bool)

(declare-fun tp!1308955 () Bool)

(assert (=> b!4278116 (= e!2656009 tp!1308955)))

(declare-fun b!4278115 () Bool)

(assert (=> b!4278115 (= e!2656008 (and (inv!62709 (xs!17643 (left!35288 (left!35288 (right!35618 t!3602))))) e!2656009))))

(assert (=> b!4277739 (= tp!1308909 (and (inv!62708 (left!35288 (left!35288 (right!35618 t!3602)))) e!2656008))))

(assert (= (and b!4277739 ((_ is Node!14337) (left!35288 (left!35288 (right!35618 t!3602))))) b!4278114))

(assert (= b!4278115 b!4278116))

(assert (= (and b!4277739 ((_ is Leaf!22161) (left!35288 (left!35288 (right!35618 t!3602))))) b!4278115))

(declare-fun m!4874539 () Bool)

(assert (=> b!4278114 m!4874539))

(declare-fun m!4874541 () Bool)

(assert (=> b!4278114 m!4874541))

(declare-fun m!4874543 () Bool)

(assert (=> b!4278115 m!4874543))

(assert (=> b!4277739 m!4873897))

(declare-fun tp!1308960 () Bool)

(declare-fun b!4278117 () Bool)

(declare-fun e!2656010 () Bool)

(declare-fun tp!1308959 () Bool)

(assert (=> b!4278117 (= e!2656010 (and (inv!62708 (left!35288 (right!35618 (left!35288 (right!35618 t!3602))))) tp!1308960 (inv!62708 (right!35618 (right!35618 (left!35288 (right!35618 t!3602))))) tp!1308959))))

(declare-fun b!4278119 () Bool)

(declare-fun e!2656011 () Bool)

(declare-fun tp!1308958 () Bool)

(assert (=> b!4278119 (= e!2656011 tp!1308958)))

(declare-fun b!4278118 () Bool)

(assert (=> b!4278118 (= e!2656010 (and (inv!62709 (xs!17643 (right!35618 (left!35288 (right!35618 t!3602))))) e!2656011))))

(assert (=> b!4277739 (= tp!1308908 (and (inv!62708 (right!35618 (left!35288 (right!35618 t!3602)))) e!2656010))))

(assert (= (and b!4277739 ((_ is Node!14337) (right!35618 (left!35288 (right!35618 t!3602))))) b!4278117))

(assert (= b!4278118 b!4278119))

(assert (= (and b!4277739 ((_ is Leaf!22161) (right!35618 (left!35288 (right!35618 t!3602))))) b!4278118))

(declare-fun m!4874545 () Bool)

(assert (=> b!4278117 m!4874545))

(declare-fun m!4874547 () Bool)

(assert (=> b!4278117 m!4874547))

(declare-fun m!4874549 () Bool)

(assert (=> b!4278118 m!4874549))

(assert (=> b!4277739 m!4873899))

(declare-fun b!4278120 () Bool)

(declare-fun e!2656012 () Bool)

(declare-fun tp!1308961 () Bool)

(assert (=> b!4278120 (= e!2656012 (and tp_is_empty!22949 tp!1308961))))

(assert (=> b!4277754 (= tp!1308922 e!2656012)))

(assert (= (and b!4277754 ((_ is Cons!47355) (t!354046 (innerList!14397 (xs!17643 (right!35618 t!3602)))))) b!4278120))

(declare-fun b!4278121 () Bool)

(declare-fun e!2656013 () Bool)

(declare-fun tp!1308962 () Bool)

(assert (=> b!4278121 (= e!2656013 (and tp_is_empty!22949 tp!1308962))))

(assert (=> b!4277747 (= tp!1308915 e!2656013)))

(assert (= (and b!4277747 ((_ is Cons!47355) (t!354046 (t!354046 (t!354046 acc!259))))) b!4278121))

(declare-fun b!4278122 () Bool)

(declare-fun e!2656014 () Bool)

(declare-fun tp!1308965 () Bool)

(declare-fun tp!1308964 () Bool)

(assert (=> b!4278122 (= e!2656014 (and (inv!62708 (left!35288 (left!35288 (right!35618 (left!35288 t!3602))))) tp!1308965 (inv!62708 (right!35618 (left!35288 (right!35618 (left!35288 t!3602))))) tp!1308964))))

(declare-fun b!4278124 () Bool)

(declare-fun e!2656015 () Bool)

(declare-fun tp!1308963 () Bool)

(assert (=> b!4278124 (= e!2656015 tp!1308963)))

(declare-fun b!4278123 () Bool)

(assert (=> b!4278123 (= e!2656014 (and (inv!62709 (xs!17643 (left!35288 (right!35618 (left!35288 t!3602))))) e!2656015))))

(assert (=> b!4277751 (= tp!1308921 (and (inv!62708 (left!35288 (right!35618 (left!35288 t!3602)))) e!2656014))))

(assert (= (and b!4277751 ((_ is Node!14337) (left!35288 (right!35618 (left!35288 t!3602))))) b!4278122))

(assert (= b!4278123 b!4278124))

(assert (= (and b!4277751 ((_ is Leaf!22161) (left!35288 (right!35618 (left!35288 t!3602))))) b!4278123))

(declare-fun m!4874551 () Bool)

(assert (=> b!4278122 m!4874551))

(declare-fun m!4874553 () Bool)

(assert (=> b!4278122 m!4874553))

(declare-fun m!4874555 () Bool)

(assert (=> b!4278123 m!4874555))

(assert (=> b!4277751 m!4873915))

(declare-fun e!2656016 () Bool)

(declare-fun b!4278125 () Bool)

(declare-fun tp!1308968 () Bool)

(declare-fun tp!1308967 () Bool)

(assert (=> b!4278125 (= e!2656016 (and (inv!62708 (left!35288 (right!35618 (right!35618 (left!35288 t!3602))))) tp!1308968 (inv!62708 (right!35618 (right!35618 (right!35618 (left!35288 t!3602))))) tp!1308967))))

(declare-fun b!4278127 () Bool)

(declare-fun e!2656017 () Bool)

(declare-fun tp!1308966 () Bool)

(assert (=> b!4278127 (= e!2656017 tp!1308966)))

(declare-fun b!4278126 () Bool)

(assert (=> b!4278126 (= e!2656016 (and (inv!62709 (xs!17643 (right!35618 (right!35618 (left!35288 t!3602))))) e!2656017))))

(assert (=> b!4277751 (= tp!1308920 (and (inv!62708 (right!35618 (right!35618 (left!35288 t!3602)))) e!2656016))))

(assert (= (and b!4277751 ((_ is Node!14337) (right!35618 (right!35618 (left!35288 t!3602))))) b!4278125))

(assert (= b!4278126 b!4278127))

(assert (= (and b!4277751 ((_ is Leaf!22161) (right!35618 (right!35618 (left!35288 t!3602))))) b!4278126))

(declare-fun m!4874557 () Bool)

(assert (=> b!4278125 m!4874557))

(declare-fun m!4874559 () Bool)

(assert (=> b!4278125 m!4874559))

(declare-fun m!4874561 () Bool)

(assert (=> b!4278126 m!4874561))

(assert (=> b!4277751 m!4873917))

(declare-fun b!4278128 () Bool)

(declare-fun e!2656018 () Bool)

(declare-fun tp!1308969 () Bool)

(assert (=> b!4278128 (= e!2656018 (and tp_is_empty!22949 tp!1308969))))

(assert (=> b!4277746 (= tp!1308914 e!2656018)))

(assert (= (and b!4277746 ((_ is Cons!47355) (t!354046 (innerList!14397 (xs!17643 (left!35288 t!3602)))))) b!4278128))

(declare-fun b!4278129 () Bool)

(declare-fun e!2656019 () Bool)

(declare-fun tp!1308970 () Bool)

(assert (=> b!4278129 (= e!2656019 (and tp_is_empty!22949 tp!1308970))))

(assert (=> b!4277750 (= tp!1308916 e!2656019)))

(assert (= (and b!4277750 ((_ is Cons!47355) (innerList!14397 (xs!17643 (left!35288 (left!35288 t!3602)))))) b!4278129))

(check-sat (not b!4277739) (not b!4277984) (not b!4278122) (not d!1263098) (not b!4278011) (not b!4278032) (not b!4277977) (not b!4277748) (not b!4277900) (not b!4278127) (not b!4277981) (not b!4278029) (not b!4278060) (not b!4278009) (not b!4277955) (not d!1263150) (not b!4278045) (not b!4277937) (not b!4277919) (not b!4277894) (not b!4278098) (not b!4277986) (not b!4278071) (not b!4278128) (not b!4278105) (not d!1263130) (not b!4277926) (not b!4278111) (not d!1263138) (not b!4277995) (not b!4278091) (not b!4278109) (not b!4278067) (not b!4277914) (not b!4277949) (not b!4278004) (not b!4278054) (not b!4277945) (not b!4277903) (not b!4278115) (not b!4278129) (not b!4278033) (not b!4278015) (not b!4277913) (not b!4278101) (not b!4278019) (not b!4278119) (not d!1262960) (not b!4277935) (not b!4277930) (not b!4277961) (not b!4278063) (not b!4277987) (not d!1263060) (not b!4278005) (not d!1263076) (not b!4277929) (not b!4277971) (not b!4278079) (not d!1263092) (not b!4278041) (not b!4278114) (not d!1262984) (not b!4278037) (not b!4277905) (not b!4277999) (not b!4277922) (not b!4277969) (not b!4278096) (not d!1263110) (not b!4277975) (not b!4277908) (not b!4278083) (not b!4278078) (not b!4278035) (not d!1263036) (not b!4277953) (not b!4278107) (not b!4277910) (not b!4278099) (not b!4278056) (not b!4277991) (not d!1263004) (not b!4277742) (not b!4278085) (not d!1263142) (not b!4277943) (not b!4277751) (not b!4277967) (not b!4278094) (not b!4278049) (not b!4277983) (not b!4278112) (not b!4278073) (not b!4278052) (not b!4278100) (not b!4278113) (not b!4278120) (not b!4278106) (not b!4278110) (not b!4278017) (not b!4277979) (not b!4278089) (not b!4278069) (not b!4277993) (not b!4278102) (not b!4278123) (not b!4278104) (not d!1263096) (not b!4278116) (not b!4278008) (not b!4278013) (not d!1263152) (not b!4278121) (not d!1263116) (not b!4278124) (not d!1262966) (not b!4278093) (not d!1262952) (not b!4278030) (not d!1263100) (not b!4277960) (not b!4277946) (not b!4278025) (not b!4278065) (not b!4277911) (not b!4278082) (not b!4277898) (not b!4277901) (not b!4278043) (not b!4278074) (not b!4277951) (not b!4278020) (not b!4278000) (not b!4278108) (not d!1263014) (not b!4278117) (not d!1263136) (not d!1263062) (not b!4277956) (not b!4277939) (not b!4277989) (not d!1262998) (not b!4277964) (not b!4278118) (not b!4277933) (not b!4277965) (not b!4277906) (not d!1263002) tp_is_empty!22949 (not b!4277973) (not b!4278047) (not d!1262972) (not d!1263118) (not b!4278103) (not b!4277897) (not b!4277917) (not b!4278126) (not b!4278125) (not b!4277941) (not d!1263140) (not b!4278086) (not b!4278028) (not b!4278038) (not b!4277997) (not d!1262978) (not b!4277924) (not b!4278024) (not b!4278059))
(check-sat)
