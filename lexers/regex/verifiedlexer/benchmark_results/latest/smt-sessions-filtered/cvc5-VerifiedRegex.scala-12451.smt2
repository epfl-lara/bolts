; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694454 () Bool)

(assert start!694454)

(declare-fun setIsEmpty!51820 () Bool)

(declare-fun setRes!51820 () Bool)

(assert (=> setIsEmpty!51820 setRes!51820))

(declare-fun e!4283821 () Bool)

(declare-datatypes ((C!36338 0))(
  ( (C!36339 (val!28095 Int)) )
))
(declare-datatypes ((Regex!18034 0))(
  ( (ElementMatch!18034 (c!1329824 C!36338)) (Concat!26879 (regOne!36580 Regex!18034) (regTwo!36580 Regex!18034)) (EmptyExpr!18034) (Star!18034 (reg!18363 Regex!18034)) (EmptyLang!18034) (Union!18034 (regOne!36581 Regex!18034) (regTwo!36581 Regex!18034)) )
))
(declare-datatypes ((List!69122 0))(
  ( (Nil!68998) (Cons!68998 (h!75446 Regex!18034) (t!383099 List!69122)) )
))
(declare-datatypes ((Context!14056 0))(
  ( (Context!14057 (exprs!7528 List!69122)) )
))
(declare-fun setElem!51821 () Context!14056)

(declare-fun setNonEmpty!51820 () Bool)

(declare-fun tp!1964120 () Bool)

(declare-fun inv!88114 (Context!14056) Bool)

(assert (=> setNonEmpty!51820 (= setRes!51820 (and tp!1964120 (inv!88114 setElem!51821) e!4283821))))

(declare-fun z2!471 () (Set Context!14056))

(declare-fun setRest!51821 () (Set Context!14056))

(assert (=> setNonEmpty!51820 (= z2!471 (set.union (set.insert setElem!51821 (as set.empty (Set Context!14056))) setRest!51821))))

(declare-fun b!7128531 () Bool)

(declare-fun e!4283822 () Bool)

(declare-fun tp_is_empty!45669 () Bool)

(declare-fun tp!1964122 () Bool)

(assert (=> b!7128531 (= e!4283822 (and tp_is_empty!45669 tp!1964122))))

(declare-fun b!7128532 () Bool)

(declare-fun e!4283816 () Bool)

(declare-datatypes ((List!69123 0))(
  ( (Nil!68999) (Cons!68999 (h!75447 C!36338) (t!383100 List!69123)) )
))
(declare-fun s2Rec!140 () List!69123)

(declare-fun size!41469 (List!69123) Int)

(assert (=> b!7128532 (= e!4283816 (< (size!41469 s2Rec!140) 0))))

(declare-fun b!7128533 () Bool)

(declare-fun e!4283820 () Bool)

(declare-fun tp!1964121 () Bool)

(assert (=> b!7128533 (= e!4283820 tp!1964121)))

(declare-fun b!7128534 () Bool)

(declare-fun tp!1964114 () Bool)

(assert (=> b!7128534 (= e!4283821 tp!1964114)))

(declare-fun setIsEmpty!51821 () Bool)

(declare-fun setRes!51821 () Bool)

(assert (=> setIsEmpty!51821 setRes!51821))

(declare-fun b!7128535 () Bool)

(declare-fun res!2908506 () Bool)

(assert (=> b!7128535 (=> (not res!2908506) (not e!4283816))))

(declare-fun s2!1620 () List!69123)

(declare-fun matchZipper!3290 ((Set Context!14056) List!69123) Bool)

(assert (=> b!7128535 (= res!2908506 (matchZipper!3290 z2!471 s2!1620))))

(declare-fun tp!1964116 () Bool)

(declare-fun setElem!51820 () Context!14056)

(declare-fun setNonEmpty!51821 () Bool)

(assert (=> setNonEmpty!51821 (= setRes!51821 (and tp!1964116 (inv!88114 setElem!51820) e!4283820))))

(declare-fun z1!552 () (Set Context!14056))

(declare-fun setRest!51820 () (Set Context!14056))

(assert (=> setNonEmpty!51821 (= z1!552 (set.union (set.insert setElem!51820 (as set.empty (Set Context!14056))) setRest!51820))))

(declare-fun b!7128536 () Bool)

(declare-fun e!4283819 () Bool)

(declare-fun tp!1964119 () Bool)

(assert (=> b!7128536 (= e!4283819 (and tp_is_empty!45669 tp!1964119))))

(declare-fun b!7128537 () Bool)

(declare-fun res!2908502 () Bool)

(assert (=> b!7128537 (=> (not res!2908502) (not e!4283816))))

(declare-fun s1Rec!140 () List!69123)

(declare-fun s!7390 () List!69123)

(declare-fun ++!16172 (List!69123 List!69123) List!69123)

(assert (=> b!7128537 (= res!2908502 (= (++!16172 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7128538 () Bool)

(declare-fun res!2908504 () Bool)

(assert (=> b!7128538 (=> (not res!2908504) (not e!4283816))))

(declare-fun s1!1688 () List!69123)

(assert (=> b!7128538 (= res!2908504 (= (++!16172 s1!1688 s2!1620) s!7390))))

(declare-fun b!7128539 () Bool)

(declare-fun e!4283818 () Bool)

(declare-fun tp!1964115 () Bool)

(assert (=> b!7128539 (= e!4283818 (and tp_is_empty!45669 tp!1964115))))

(declare-fun b!7128540 () Bool)

(declare-fun res!2908505 () Bool)

(assert (=> b!7128540 (=> (not res!2908505) (not e!4283816))))

(declare-fun isPrefix!5903 (List!69123 List!69123) Bool)

(assert (=> b!7128540 (= res!2908505 (isPrefix!5903 s1Rec!140 s1!1688))))

(declare-fun b!7128541 () Bool)

(declare-fun e!4283823 () Bool)

(declare-fun tp!1964117 () Bool)

(assert (=> b!7128541 (= e!4283823 (and tp_is_empty!45669 tp!1964117))))

(declare-fun b!7128530 () Bool)

(declare-fun e!4283817 () Bool)

(declare-fun tp!1964118 () Bool)

(assert (=> b!7128530 (= e!4283817 (and tp_is_empty!45669 tp!1964118))))

(declare-fun res!2908503 () Bool)

(assert (=> start!694454 (=> (not res!2908503) (not e!4283816))))

(assert (=> start!694454 (= res!2908503 (matchZipper!3290 z1!552 s1!1688))))

(assert (=> start!694454 e!4283816))

(assert (=> start!694454 e!4283822))

(declare-fun condSetEmpty!51821 () Bool)

(assert (=> start!694454 (= condSetEmpty!51821 (= z1!552 (as set.empty (Set Context!14056))))))

(assert (=> start!694454 setRes!51821))

(assert (=> start!694454 e!4283817))

(declare-fun condSetEmpty!51820 () Bool)

(assert (=> start!694454 (= condSetEmpty!51820 (= z2!471 (as set.empty (Set Context!14056))))))

(assert (=> start!694454 setRes!51820))

(assert (=> start!694454 e!4283823))

(assert (=> start!694454 e!4283818))

(assert (=> start!694454 e!4283819))

(assert (= (and start!694454 res!2908503) b!7128535))

(assert (= (and b!7128535 res!2908506) b!7128538))

(assert (= (and b!7128538 res!2908504) b!7128540))

(assert (= (and b!7128540 res!2908505) b!7128537))

(assert (= (and b!7128537 res!2908502) b!7128532))

(assert (= (and start!694454 (is-Cons!68999 s1Rec!140)) b!7128531))

(assert (= (and start!694454 condSetEmpty!51821) setIsEmpty!51821))

(assert (= (and start!694454 (not condSetEmpty!51821)) setNonEmpty!51821))

(assert (= setNonEmpty!51821 b!7128533))

(assert (= (and start!694454 (is-Cons!68999 s2Rec!140)) b!7128530))

(assert (= (and start!694454 condSetEmpty!51820) setIsEmpty!51820))

(assert (= (and start!694454 (not condSetEmpty!51820)) setNonEmpty!51820))

(assert (= setNonEmpty!51820 b!7128534))

(assert (= (and start!694454 (is-Cons!68999 s2!1620)) b!7128541))

(assert (= (and start!694454 (is-Cons!68999 s1!1688)) b!7128539))

(assert (= (and start!694454 (is-Cons!68999 s!7390)) b!7128536))

(declare-fun m!7845656 () Bool)

(assert (=> start!694454 m!7845656))

(declare-fun m!7845658 () Bool)

(assert (=> b!7128540 m!7845658))

(declare-fun m!7845660 () Bool)

(assert (=> b!7128532 m!7845660))

(declare-fun m!7845662 () Bool)

(assert (=> b!7128538 m!7845662))

(declare-fun m!7845664 () Bool)

(assert (=> b!7128537 m!7845664))

(declare-fun m!7845666 () Bool)

(assert (=> setNonEmpty!51820 m!7845666))

(declare-fun m!7845668 () Bool)

(assert (=> setNonEmpty!51821 m!7845668))

(declare-fun m!7845670 () Bool)

(assert (=> b!7128535 m!7845670))

(push 1)

(assert (not setNonEmpty!51820))

(assert (not b!7128537))

(assert (not b!7128538))

(assert (not b!7128530))

(assert (not b!7128540))

(assert (not b!7128539))

(assert (not b!7128535))

(assert (not b!7128531))

(assert (not b!7128536))

(assert (not b!7128532))

(assert (not setNonEmpty!51821))

(assert (not b!7128533))

(assert (not b!7128534))

(assert tp_is_empty!45669)

(assert (not start!694454))

(assert (not b!7128541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7128594 () Bool)

(declare-fun res!2908532 () Bool)

(declare-fun e!4283857 () Bool)

(assert (=> b!7128594 (=> (not res!2908532) (not e!4283857))))

(declare-fun lt!2563719 () List!69123)

(assert (=> b!7128594 (= res!2908532 (= (size!41469 lt!2563719) (+ (size!41469 s1Rec!140) (size!41469 s2Rec!140))))))

(declare-fun b!7128592 () Bool)

(declare-fun e!4283856 () List!69123)

(assert (=> b!7128592 (= e!4283856 s2Rec!140)))

(declare-fun b!7128593 () Bool)

(assert (=> b!7128593 (= e!4283856 (Cons!68999 (h!75447 s1Rec!140) (++!16172 (t!383100 s1Rec!140) s2Rec!140)))))

(declare-fun d!2224792 () Bool)

(assert (=> d!2224792 e!4283857))

(declare-fun res!2908533 () Bool)

(assert (=> d!2224792 (=> (not res!2908533) (not e!4283857))))

(declare-fun content!14118 (List!69123) (Set C!36338))

(assert (=> d!2224792 (= res!2908533 (= (content!14118 lt!2563719) (set.union (content!14118 s1Rec!140) (content!14118 s2Rec!140))))))

(assert (=> d!2224792 (= lt!2563719 e!4283856)))

(declare-fun c!1329828 () Bool)

(assert (=> d!2224792 (= c!1329828 (is-Nil!68999 s1Rec!140))))

(assert (=> d!2224792 (= (++!16172 s1Rec!140 s2Rec!140) lt!2563719)))

(declare-fun b!7128595 () Bool)

(assert (=> b!7128595 (= e!4283857 (or (not (= s2Rec!140 Nil!68999)) (= lt!2563719 s1Rec!140)))))

(assert (= (and d!2224792 c!1329828) b!7128592))

(assert (= (and d!2224792 (not c!1329828)) b!7128593))

(assert (= (and d!2224792 res!2908533) b!7128594))

(assert (= (and b!7128594 res!2908532) b!7128595))

(declare-fun m!7845688 () Bool)

(assert (=> b!7128594 m!7845688))

(declare-fun m!7845690 () Bool)

(assert (=> b!7128594 m!7845690))

(assert (=> b!7128594 m!7845660))

(declare-fun m!7845692 () Bool)

(assert (=> b!7128593 m!7845692))

(declare-fun m!7845694 () Bool)

(assert (=> d!2224792 m!7845694))

(declare-fun m!7845696 () Bool)

(assert (=> d!2224792 m!7845696))

(declare-fun m!7845698 () Bool)

(assert (=> d!2224792 m!7845698))

(assert (=> b!7128537 d!2224792))

(declare-fun d!2224796 () Bool)

(declare-fun lambda!433146 () Int)

(declare-fun forall!16918 (List!69122 Int) Bool)

(assert (=> d!2224796 (= (inv!88114 setElem!51820) (forall!16918 (exprs!7528 setElem!51820) lambda!433146))))

(declare-fun bs!1886770 () Bool)

(assert (= bs!1886770 d!2224796))

(declare-fun m!7845724 () Bool)

(assert (=> bs!1886770 m!7845724))

(assert (=> setNonEmpty!51821 d!2224796))

(declare-fun b!7128622 () Bool)

(declare-fun e!4283876 () Bool)

(declare-fun e!4283877 () Bool)

(assert (=> b!7128622 (= e!4283876 e!4283877)))

(declare-fun res!2908557 () Bool)

(assert (=> b!7128622 (=> (not res!2908557) (not e!4283877))))

(assert (=> b!7128622 (= res!2908557 (not (is-Nil!68999 s1!1688)))))

(declare-fun b!7128623 () Bool)

(declare-fun res!2908554 () Bool)

(assert (=> b!7128623 (=> (not res!2908554) (not e!4283877))))

(declare-fun head!14467 (List!69123) C!36338)

(assert (=> b!7128623 (= res!2908554 (= (head!14467 s1Rec!140) (head!14467 s1!1688)))))

(declare-fun b!7128624 () Bool)

(declare-fun tail!13939 (List!69123) List!69123)

(assert (=> b!7128624 (= e!4283877 (isPrefix!5903 (tail!13939 s1Rec!140) (tail!13939 s1!1688)))))

(declare-fun d!2224802 () Bool)

(declare-fun e!4283875 () Bool)

(assert (=> d!2224802 e!4283875))

(declare-fun res!2908555 () Bool)

(assert (=> d!2224802 (=> res!2908555 e!4283875)))

(declare-fun lt!2563726 () Bool)

(assert (=> d!2224802 (= res!2908555 (not lt!2563726))))

(assert (=> d!2224802 (= lt!2563726 e!4283876)))

(declare-fun res!2908556 () Bool)

(assert (=> d!2224802 (=> res!2908556 e!4283876)))

(assert (=> d!2224802 (= res!2908556 (is-Nil!68999 s1Rec!140))))

(assert (=> d!2224802 (= (isPrefix!5903 s1Rec!140 s1!1688) lt!2563726)))

(declare-fun b!7128625 () Bool)

(assert (=> b!7128625 (= e!4283875 (>= (size!41469 s1!1688) (size!41469 s1Rec!140)))))

(assert (= (and d!2224802 (not res!2908556)) b!7128622))

(assert (= (and b!7128622 res!2908557) b!7128623))

(assert (= (and b!7128623 res!2908554) b!7128624))

(assert (= (and d!2224802 (not res!2908555)) b!7128625))

(declare-fun m!7845726 () Bool)

(assert (=> b!7128623 m!7845726))

(declare-fun m!7845728 () Bool)

(assert (=> b!7128623 m!7845728))

(declare-fun m!7845730 () Bool)

(assert (=> b!7128624 m!7845730))

(declare-fun m!7845732 () Bool)

(assert (=> b!7128624 m!7845732))

(assert (=> b!7128624 m!7845730))

(assert (=> b!7128624 m!7845732))

(declare-fun m!7845734 () Bool)

(assert (=> b!7128624 m!7845734))

(declare-fun m!7845736 () Bool)

(assert (=> b!7128625 m!7845736))

(assert (=> b!7128625 m!7845690))

(assert (=> b!7128540 d!2224802))

(declare-fun d!2224804 () Bool)

(declare-fun lt!2563729 () Int)

(assert (=> d!2224804 (>= lt!2563729 0)))

(declare-fun e!4283880 () Int)

(assert (=> d!2224804 (= lt!2563729 e!4283880)))

(declare-fun c!1329834 () Bool)

(assert (=> d!2224804 (= c!1329834 (is-Nil!68999 s2Rec!140))))

(assert (=> d!2224804 (= (size!41469 s2Rec!140) lt!2563729)))

(declare-fun b!7128630 () Bool)

(assert (=> b!7128630 (= e!4283880 0)))

(declare-fun b!7128631 () Bool)

(assert (=> b!7128631 (= e!4283880 (+ 1 (size!41469 (t!383100 s2Rec!140))))))

(assert (= (and d!2224804 c!1329834) b!7128630))

(assert (= (and d!2224804 (not c!1329834)) b!7128631))

(declare-fun m!7845738 () Bool)

(assert (=> b!7128631 m!7845738))

(assert (=> b!7128532 d!2224804))

(declare-fun d!2224806 () Bool)

(declare-fun c!1329837 () Bool)

(declare-fun isEmpty!40023 (List!69123) Bool)

(assert (=> d!2224806 (= c!1329837 (isEmpty!40023 s1!1688))))

(declare-fun e!4283883 () Bool)

(assert (=> d!2224806 (= (matchZipper!3290 z1!552 s1!1688) e!4283883)))

(declare-fun b!7128636 () Bool)

(declare-fun nullableZipper!2759 ((Set Context!14056)) Bool)

(assert (=> b!7128636 (= e!4283883 (nullableZipper!2759 z1!552))))

(declare-fun b!7128637 () Bool)

(declare-fun derivationStepZipper!3171 ((Set Context!14056) C!36338) (Set Context!14056))

(assert (=> b!7128637 (= e!4283883 (matchZipper!3290 (derivationStepZipper!3171 z1!552 (head!14467 s1!1688)) (tail!13939 s1!1688)))))

(assert (= (and d!2224806 c!1329837) b!7128636))

(assert (= (and d!2224806 (not c!1329837)) b!7128637))

(declare-fun m!7845740 () Bool)

(assert (=> d!2224806 m!7845740))

(declare-fun m!7845742 () Bool)

(assert (=> b!7128636 m!7845742))

(assert (=> b!7128637 m!7845728))

(assert (=> b!7128637 m!7845728))

(declare-fun m!7845744 () Bool)

(assert (=> b!7128637 m!7845744))

(assert (=> b!7128637 m!7845732))

(assert (=> b!7128637 m!7845744))

(assert (=> b!7128637 m!7845732))

(declare-fun m!7845746 () Bool)

(assert (=> b!7128637 m!7845746))

(assert (=> start!694454 d!2224806))

(declare-fun d!2224808 () Bool)

(declare-fun c!1329838 () Bool)

(assert (=> d!2224808 (= c!1329838 (isEmpty!40023 s2!1620))))

(declare-fun e!4283884 () Bool)

(assert (=> d!2224808 (= (matchZipper!3290 z2!471 s2!1620) e!4283884)))

(declare-fun b!7128638 () Bool)

(assert (=> b!7128638 (= e!4283884 (nullableZipper!2759 z2!471))))

(declare-fun b!7128639 () Bool)

(assert (=> b!7128639 (= e!4283884 (matchZipper!3290 (derivationStepZipper!3171 z2!471 (head!14467 s2!1620)) (tail!13939 s2!1620)))))

(assert (= (and d!2224808 c!1329838) b!7128638))

(assert (= (and d!2224808 (not c!1329838)) b!7128639))

(declare-fun m!7845748 () Bool)

(assert (=> d!2224808 m!7845748))

(declare-fun m!7845750 () Bool)

(assert (=> b!7128638 m!7845750))

(declare-fun m!7845752 () Bool)

(assert (=> b!7128639 m!7845752))

(assert (=> b!7128639 m!7845752))

(declare-fun m!7845754 () Bool)

(assert (=> b!7128639 m!7845754))

(declare-fun m!7845756 () Bool)

(assert (=> b!7128639 m!7845756))

(assert (=> b!7128639 m!7845754))

(assert (=> b!7128639 m!7845756))

(declare-fun m!7845758 () Bool)

(assert (=> b!7128639 m!7845758))

(assert (=> b!7128535 d!2224808))

(declare-fun bs!1886771 () Bool)

(declare-fun d!2224810 () Bool)

(assert (= bs!1886771 (and d!2224810 d!2224796)))

(declare-fun lambda!433147 () Int)

(assert (=> bs!1886771 (= lambda!433147 lambda!433146)))

(assert (=> d!2224810 (= (inv!88114 setElem!51821) (forall!16918 (exprs!7528 setElem!51821) lambda!433147))))

(declare-fun bs!1886772 () Bool)

(assert (= bs!1886772 d!2224810))

(declare-fun m!7845760 () Bool)

(assert (=> bs!1886772 m!7845760))

(assert (=> setNonEmpty!51820 d!2224810))

(declare-fun b!7128642 () Bool)

(declare-fun res!2908558 () Bool)

(declare-fun e!4283886 () Bool)

(assert (=> b!7128642 (=> (not res!2908558) (not e!4283886))))

(declare-fun lt!2563730 () List!69123)

(assert (=> b!7128642 (= res!2908558 (= (size!41469 lt!2563730) (+ (size!41469 s1!1688) (size!41469 s2!1620))))))

(declare-fun b!7128640 () Bool)

(declare-fun e!4283885 () List!69123)

(assert (=> b!7128640 (= e!4283885 s2!1620)))

(declare-fun b!7128641 () Bool)

(assert (=> b!7128641 (= e!4283885 (Cons!68999 (h!75447 s1!1688) (++!16172 (t!383100 s1!1688) s2!1620)))))

(declare-fun d!2224812 () Bool)

(assert (=> d!2224812 e!4283886))

(declare-fun res!2908559 () Bool)

(assert (=> d!2224812 (=> (not res!2908559) (not e!4283886))))

(assert (=> d!2224812 (= res!2908559 (= (content!14118 lt!2563730) (set.union (content!14118 s1!1688) (content!14118 s2!1620))))))

(assert (=> d!2224812 (= lt!2563730 e!4283885)))

(declare-fun c!1329839 () Bool)

(assert (=> d!2224812 (= c!1329839 (is-Nil!68999 s1!1688))))

(assert (=> d!2224812 (= (++!16172 s1!1688 s2!1620) lt!2563730)))

(declare-fun b!7128643 () Bool)

(assert (=> b!7128643 (= e!4283886 (or (not (= s2!1620 Nil!68999)) (= lt!2563730 s1!1688)))))

(assert (= (and d!2224812 c!1329839) b!7128640))

(assert (= (and d!2224812 (not c!1329839)) b!7128641))

(assert (= (and d!2224812 res!2908559) b!7128642))

(assert (= (and b!7128642 res!2908558) b!7128643))

(declare-fun m!7845762 () Bool)

(assert (=> b!7128642 m!7845762))

(assert (=> b!7128642 m!7845736))

(declare-fun m!7845764 () Bool)

(assert (=> b!7128642 m!7845764))

(declare-fun m!7845766 () Bool)

(assert (=> b!7128641 m!7845766))

(declare-fun m!7845768 () Bool)

(assert (=> d!2224812 m!7845768))

(declare-fun m!7845770 () Bool)

(assert (=> d!2224812 m!7845770))

(declare-fun m!7845772 () Bool)

(assert (=> d!2224812 m!7845772))

(assert (=> b!7128538 d!2224812))

(declare-fun b!7128648 () Bool)

(declare-fun e!4283889 () Bool)

(declare-fun tp!1964154 () Bool)

(declare-fun tp!1964155 () Bool)

(assert (=> b!7128648 (= e!4283889 (and tp!1964154 tp!1964155))))

(assert (=> b!7128533 (= tp!1964121 e!4283889)))

(assert (= (and b!7128533 (is-Cons!68998 (exprs!7528 setElem!51820))) b!7128648))

(declare-fun b!7128653 () Bool)

(declare-fun e!4283892 () Bool)

(declare-fun tp!1964158 () Bool)

(assert (=> b!7128653 (= e!4283892 (and tp_is_empty!45669 tp!1964158))))

(assert (=> b!7128536 (= tp!1964119 e!4283892)))

(assert (= (and b!7128536 (is-Cons!68999 (t!383100 s!7390))) b!7128653))

(declare-fun condSetEmpty!51830 () Bool)

(assert (=> setNonEmpty!51821 (= condSetEmpty!51830 (= setRest!51820 (as set.empty (Set Context!14056))))))

(declare-fun setRes!51830 () Bool)

(assert (=> setNonEmpty!51821 (= tp!1964116 setRes!51830)))

(declare-fun setIsEmpty!51830 () Bool)

(assert (=> setIsEmpty!51830 setRes!51830))

(declare-fun setElem!51830 () Context!14056)

(declare-fun setNonEmpty!51830 () Bool)

(declare-fun e!4283895 () Bool)

(declare-fun tp!1964163 () Bool)

(assert (=> setNonEmpty!51830 (= setRes!51830 (and tp!1964163 (inv!88114 setElem!51830) e!4283895))))

(declare-fun setRest!51830 () (Set Context!14056))

(assert (=> setNonEmpty!51830 (= setRest!51820 (set.union (set.insert setElem!51830 (as set.empty (Set Context!14056))) setRest!51830))))

(declare-fun b!7128658 () Bool)

(declare-fun tp!1964164 () Bool)

(assert (=> b!7128658 (= e!4283895 tp!1964164)))

(assert (= (and setNonEmpty!51821 condSetEmpty!51830) setIsEmpty!51830))

(assert (= (and setNonEmpty!51821 (not condSetEmpty!51830)) setNonEmpty!51830))

(assert (= setNonEmpty!51830 b!7128658))

(declare-fun m!7845774 () Bool)

(assert (=> setNonEmpty!51830 m!7845774))

(declare-fun b!7128659 () Bool)

(declare-fun e!4283896 () Bool)

(declare-fun tp!1964165 () Bool)

(assert (=> b!7128659 (= e!4283896 (and tp_is_empty!45669 tp!1964165))))

(assert (=> b!7128541 (= tp!1964117 e!4283896)))

(assert (= (and b!7128541 (is-Cons!68999 (t!383100 s2!1620))) b!7128659))

(declare-fun b!7128660 () Bool)

(declare-fun e!4283897 () Bool)

(declare-fun tp!1964166 () Bool)

(assert (=> b!7128660 (= e!4283897 (and tp_is_empty!45669 tp!1964166))))

(assert (=> b!7128539 (= tp!1964115 e!4283897)))

(assert (= (and b!7128539 (is-Cons!68999 (t!383100 s1!1688))) b!7128660))

(declare-fun b!7128661 () Bool)

(declare-fun e!4283898 () Bool)

(declare-fun tp!1964167 () Bool)

(assert (=> b!7128661 (= e!4283898 (and tp_is_empty!45669 tp!1964167))))

(assert (=> b!7128530 (= tp!1964118 e!4283898)))

(assert (= (and b!7128530 (is-Cons!68999 (t!383100 s2Rec!140))) b!7128661))

(declare-fun b!7128662 () Bool)

(declare-fun e!4283899 () Bool)

(declare-fun tp!1964168 () Bool)

(assert (=> b!7128662 (= e!4283899 (and tp_is_empty!45669 tp!1964168))))

(assert (=> b!7128531 (= tp!1964122 e!4283899)))

(assert (= (and b!7128531 (is-Cons!68999 (t!383100 s1Rec!140))) b!7128662))

(declare-fun condSetEmpty!51831 () Bool)

(assert (=> setNonEmpty!51820 (= condSetEmpty!51831 (= setRest!51821 (as set.empty (Set Context!14056))))))

(declare-fun setRes!51831 () Bool)

(assert (=> setNonEmpty!51820 (= tp!1964120 setRes!51831)))

(declare-fun setIsEmpty!51831 () Bool)

(assert (=> setIsEmpty!51831 setRes!51831))

(declare-fun setNonEmpty!51831 () Bool)

(declare-fun e!4283900 () Bool)

(declare-fun tp!1964169 () Bool)

(declare-fun setElem!51831 () Context!14056)

(assert (=> setNonEmpty!51831 (= setRes!51831 (and tp!1964169 (inv!88114 setElem!51831) e!4283900))))

(declare-fun setRest!51831 () (Set Context!14056))

(assert (=> setNonEmpty!51831 (= setRest!51821 (set.union (set.insert setElem!51831 (as set.empty (Set Context!14056))) setRest!51831))))

(declare-fun b!7128663 () Bool)

(declare-fun tp!1964170 () Bool)

(assert (=> b!7128663 (= e!4283900 tp!1964170)))

(assert (= (and setNonEmpty!51820 condSetEmpty!51831) setIsEmpty!51831))

(assert (= (and setNonEmpty!51820 (not condSetEmpty!51831)) setNonEmpty!51831))

(assert (= setNonEmpty!51831 b!7128663))

(declare-fun m!7845776 () Bool)

(assert (=> setNonEmpty!51831 m!7845776))

(declare-fun b!7128664 () Bool)

(declare-fun e!4283901 () Bool)

(declare-fun tp!1964171 () Bool)

(declare-fun tp!1964172 () Bool)

(assert (=> b!7128664 (= e!4283901 (and tp!1964171 tp!1964172))))

(assert (=> b!7128534 (= tp!1964114 e!4283901)))

(assert (= (and b!7128534 (is-Cons!68998 (exprs!7528 setElem!51821))) b!7128664))

(push 1)

(assert (not b!7128663))

(assert (not b!7128658))

(assert (not b!7128594))

(assert (not b!7128660))

(assert (not b!7128659))

(assert (not d!2224812))

(assert (not b!7128593))

(assert (not b!7128653))

(assert tp_is_empty!45669)

(assert (not b!7128636))

(assert (not b!7128624))

(assert (not d!2224808))

(assert (not b!7128664))

(assert (not setNonEmpty!51831))

(assert (not d!2224792))

(assert (not b!7128641))

(assert (not b!7128661))

(assert (not b!7128631))

(assert (not b!7128623))

(assert (not d!2224810))

(assert (not b!7128625))

(assert (not b!7128638))

(assert (not b!7128662))

(assert (not b!7128639))

(assert (not b!7128637))

(assert (not d!2224806))

(assert (not setNonEmpty!51830))

(assert (not b!7128642))

(assert (not b!7128648))

(assert (not d!2224796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

