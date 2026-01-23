; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677300 () Bool)

(assert start!677300)

(declare-fun b!7021633 () Bool)

(assert (=> b!7021633 true))

(declare-fun setIsEmpty!48753 () Bool)

(declare-fun setRes!48753 () Bool)

(assert (=> setIsEmpty!48753 setRes!48753))

(declare-fun b!7021626 () Bool)

(declare-fun e!4220857 () Bool)

(declare-fun tp!1934300 () Bool)

(assert (=> b!7021626 (= e!4220857 tp!1934300)))

(declare-fun res!2866170 () Bool)

(declare-fun e!4220861 () Bool)

(assert (=> start!677300 (=> (not res!2866170) (not e!4220861))))

(declare-datatypes ((C!35070 0))(
  ( (C!35071 (val!27237 Int)) )
))
(declare-datatypes ((Regex!17400 0))(
  ( (ElementMatch!17400 (c!1304979 C!35070)) (Concat!26245 (regOne!35312 Regex!17400) (regTwo!35312 Regex!17400)) (EmptyExpr!17400) (Star!17400 (reg!17729 Regex!17400)) (EmptyLang!17400) (Union!17400 (regOne!35313 Regex!17400) (regTwo!35313 Regex!17400)) )
))
(declare-datatypes ((List!67742 0))(
  ( (Nil!67618) (Cons!67618 (h!74066 Regex!17400) (t!381497 List!67742)) )
))
(declare-datatypes ((Context!12792 0))(
  ( (Context!12793 (exprs!6896 List!67742)) )
))
(declare-fun lt!2512215 () (Set Context!12792))

(declare-datatypes ((List!67743 0))(
  ( (Nil!67619) (Cons!67619 (h!74067 C!35070) (t!381498 List!67743)) )
))
(declare-fun s!7408 () List!67743)

(declare-fun matchZipper!2940 ((Set Context!12792) List!67743) Bool)

(assert (=> start!677300 (= res!2866170 (matchZipper!2940 lt!2512215 s!7408))))

(declare-fun z1!570 () (Set Context!12792))

(declare-fun ct2!306 () Context!12792)

(declare-fun appendTo!521 ((Set Context!12792) Context!12792) (Set Context!12792))

(assert (=> start!677300 (= lt!2512215 (appendTo!521 z1!570 ct2!306))))

(assert (=> start!677300 e!4220861))

(declare-fun condSetEmpty!48753 () Bool)

(assert (=> start!677300 (= condSetEmpty!48753 (= z1!570 (as set.empty (Set Context!12792))))))

(assert (=> start!677300 setRes!48753))

(declare-fun e!4220859 () Bool)

(declare-fun inv!86360 (Context!12792) Bool)

(assert (=> start!677300 (and (inv!86360 ct2!306) e!4220859)))

(declare-fun e!4220860 () Bool)

(assert (=> start!677300 e!4220860))

(declare-fun b!7021627 () Bool)

(declare-fun res!2866173 () Bool)

(assert (=> b!7021627 (=> (not res!2866173) (not e!4220861))))

(declare-fun lambda!411618 () Int)

(declare-fun exists!3291 ((Set Context!12792) Int) Bool)

(assert (=> b!7021627 (= res!2866173 (exists!3291 lt!2512215 lambda!411618))))

(declare-fun b!7021628 () Bool)

(declare-fun res!2866172 () Bool)

(assert (=> b!7021628 (=> (not res!2866172) (not e!4220861))))

(assert (=> b!7021628 (= res!2866172 (not (is-Cons!67619 s!7408)))))

(declare-fun b!7021629 () Bool)

(declare-fun res!2866174 () Bool)

(assert (=> b!7021629 (=> (not res!2866174) (not e!4220861))))

(declare-fun nullableZipper!2529 ((Set Context!12792)) Bool)

(assert (=> b!7021629 (= res!2866174 (nullableZipper!2529 lt!2512215))))

(declare-fun b!7021630 () Bool)

(declare-fun tp_is_empty!44025 () Bool)

(declare-fun tp!1934298 () Bool)

(assert (=> b!7021630 (= e!4220860 (and tp_is_empty!44025 tp!1934298))))

(declare-fun tp!1934301 () Bool)

(declare-fun setNonEmpty!48753 () Bool)

(declare-fun setElem!48753 () Context!12792)

(assert (=> setNonEmpty!48753 (= setRes!48753 (and tp!1934301 (inv!86360 setElem!48753) e!4220857))))

(declare-fun setRest!48753 () (Set Context!12792))

(assert (=> setNonEmpty!48753 (= z1!570 (set.union (set.insert setElem!48753 (as set.empty (Set Context!12792))) setRest!48753))))

(declare-fun b!7021631 () Bool)

(declare-fun tp!1934299 () Bool)

(assert (=> b!7021631 (= e!4220859 tp!1934299)))

(declare-fun b!7021632 () Bool)

(declare-fun e!4220858 () Bool)

(assert (=> b!7021632 (= e!4220861 e!4220858)))

(declare-fun res!2866171 () Bool)

(assert (=> b!7021632 (=> (not res!2866171) (not e!4220858))))

(declare-fun lt!2512216 () Context!12792)

(declare-fun nullableContext!60 (Context!12792) Bool)

(assert (=> b!7021632 (= res!2866171 (nullableContext!60 lt!2512216))))

(declare-fun getWitness!1373 ((Set Context!12792) Int) Context!12792)

(assert (=> b!7021632 (= lt!2512216 (getWitness!1373 lt!2512215 lambda!411618))))

(declare-fun lambda!411620 () Int)

(declare-fun lambda!411619 () Int)

(declare-fun forall!16304 (List!67742 Int) Bool)

(declare-fun mapPost2!247 ((Set Context!12792) Int Context!12792) Context!12792)

(assert (=> b!7021633 (= e!4220858 (not (forall!16304 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)) lambda!411620)))))

(assert (= (and start!677300 res!2866170) b!7021628))

(assert (= (and b!7021628 res!2866172) b!7021629))

(assert (= (and b!7021629 res!2866174) b!7021627))

(assert (= (and b!7021627 res!2866173) b!7021632))

(assert (= (and b!7021632 res!2866171) b!7021633))

(assert (= (and start!677300 condSetEmpty!48753) setIsEmpty!48753))

(assert (= (and start!677300 (not condSetEmpty!48753)) setNonEmpty!48753))

(assert (= setNonEmpty!48753 b!7021626))

(assert (= start!677300 b!7021631))

(assert (= (and start!677300 (is-Cons!67619 s!7408)) b!7021630))

(declare-fun m!7723548 () Bool)

(assert (=> b!7021633 m!7723548))

(declare-fun m!7723550 () Bool)

(assert (=> b!7021633 m!7723550))

(declare-fun m!7723552 () Bool)

(assert (=> start!677300 m!7723552))

(declare-fun m!7723554 () Bool)

(assert (=> start!677300 m!7723554))

(declare-fun m!7723556 () Bool)

(assert (=> start!677300 m!7723556))

(declare-fun m!7723558 () Bool)

(assert (=> setNonEmpty!48753 m!7723558))

(declare-fun m!7723560 () Bool)

(assert (=> b!7021627 m!7723560))

(declare-fun m!7723562 () Bool)

(assert (=> b!7021629 m!7723562))

(declare-fun m!7723564 () Bool)

(assert (=> b!7021632 m!7723564))

(declare-fun m!7723566 () Bool)

(assert (=> b!7021632 m!7723566))

(push 1)

(assert (not b!7021633))

(assert (not start!677300))

(assert tp_is_empty!44025)

(assert (not b!7021632))

(assert (not setNonEmpty!48753))

(assert (not b!7021631))

(assert (not b!7021630))

(assert (not b!7021627))

(assert (not b!7021626))

(assert (not b!7021629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867698 () Bool)

(declare-fun d!2188714 () Bool)

(assert (= bs!1867698 (and d!2188714 b!7021633)))

(declare-fun lambda!411636 () Int)

(assert (=> bs!1867698 (= lambda!411636 lambda!411620)))

(assert (=> d!2188714 (= (inv!86360 setElem!48753) (forall!16304 (exprs!6896 setElem!48753) lambda!411636))))

(declare-fun bs!1867699 () Bool)

(assert (= bs!1867699 d!2188714))

(declare-fun m!7723588 () Bool)

(assert (=> bs!1867699 m!7723588))

(assert (=> setNonEmpty!48753 d!2188714))

(declare-fun d!2188716 () Bool)

(declare-fun c!1304989 () Bool)

(declare-fun isEmpty!39462 (List!67743) Bool)

(assert (=> d!2188716 (= c!1304989 (isEmpty!39462 s!7408))))

(declare-fun e!4220879 () Bool)

(assert (=> d!2188716 (= (matchZipper!2940 lt!2512215 s!7408) e!4220879)))

(declare-fun b!7021666 () Bool)

(assert (=> b!7021666 (= e!4220879 (nullableZipper!2529 lt!2512215))))

(declare-fun b!7021667 () Bool)

(declare-fun derivationStepZipper!2874 ((Set Context!12792) C!35070) (Set Context!12792))

(declare-fun head!14215 (List!67743) C!35070)

(declare-fun tail!13484 (List!67743) List!67743)

(assert (=> b!7021667 (= e!4220879 (matchZipper!2940 (derivationStepZipper!2874 lt!2512215 (head!14215 s!7408)) (tail!13484 s!7408)))))

(assert (= (and d!2188716 c!1304989) b!7021666))

(assert (= (and d!2188716 (not c!1304989)) b!7021667))

(declare-fun m!7723590 () Bool)

(assert (=> d!2188716 m!7723590))

(assert (=> b!7021666 m!7723562))

(declare-fun m!7723592 () Bool)

(assert (=> b!7021667 m!7723592))

(assert (=> b!7021667 m!7723592))

(declare-fun m!7723594 () Bool)

(assert (=> b!7021667 m!7723594))

(declare-fun m!7723596 () Bool)

(assert (=> b!7021667 m!7723596))

(assert (=> b!7021667 m!7723594))

(assert (=> b!7021667 m!7723596))

(declare-fun m!7723598 () Bool)

(assert (=> b!7021667 m!7723598))

(assert (=> start!677300 d!2188716))

(declare-fun bs!1867700 () Bool)

(declare-fun d!2188718 () Bool)

(assert (= bs!1867700 (and d!2188718 b!7021633)))

(declare-fun lambda!411641 () Int)

(assert (=> bs!1867700 (= lambda!411641 lambda!411619)))

(assert (=> d!2188718 true))

(declare-fun map!15689 ((Set Context!12792) Int) (Set Context!12792))

(assert (=> d!2188718 (= (appendTo!521 z1!570 ct2!306) (map!15689 z1!570 lambda!411641))))

(declare-fun bs!1867701 () Bool)

(assert (= bs!1867701 d!2188718))

(declare-fun m!7723600 () Bool)

(assert (=> bs!1867701 m!7723600))

(assert (=> start!677300 d!2188718))

(declare-fun bs!1867702 () Bool)

(declare-fun d!2188720 () Bool)

(assert (= bs!1867702 (and d!2188720 b!7021633)))

(declare-fun lambda!411642 () Int)

(assert (=> bs!1867702 (= lambda!411642 lambda!411620)))

(declare-fun bs!1867703 () Bool)

(assert (= bs!1867703 (and d!2188720 d!2188714)))

(assert (=> bs!1867703 (= lambda!411642 lambda!411636)))

(assert (=> d!2188720 (= (inv!86360 ct2!306) (forall!16304 (exprs!6896 ct2!306) lambda!411642))))

(declare-fun bs!1867704 () Bool)

(assert (= bs!1867704 d!2188720))

(declare-fun m!7723602 () Bool)

(assert (=> bs!1867704 m!7723602))

(assert (=> start!677300 d!2188720))

(declare-fun d!2188722 () Bool)

(declare-fun lt!2512229 () Bool)

(declare-datatypes ((List!67746 0))(
  ( (Nil!67622) (Cons!67622 (h!74070 Context!12792) (t!381501 List!67746)) )
))
(declare-fun exists!3293 (List!67746 Int) Bool)

(declare-fun toList!10757 ((Set Context!12792)) List!67746)

(assert (=> d!2188722 (= lt!2512229 (exists!3293 (toList!10757 lt!2512215) lambda!411618))))

(declare-fun choose!52978 ((Set Context!12792) Int) Bool)

(assert (=> d!2188722 (= lt!2512229 (choose!52978 lt!2512215 lambda!411618))))

(assert (=> d!2188722 (= (exists!3291 lt!2512215 lambda!411618) lt!2512229)))

(declare-fun bs!1867705 () Bool)

(assert (= bs!1867705 d!2188722))

(declare-fun m!7723604 () Bool)

(assert (=> bs!1867705 m!7723604))

(assert (=> bs!1867705 m!7723604))

(declare-fun m!7723606 () Bool)

(assert (=> bs!1867705 m!7723606))

(declare-fun m!7723608 () Bool)

(assert (=> bs!1867705 m!7723608))

(assert (=> b!7021627 d!2188722))

(declare-fun bs!1867706 () Bool)

(declare-fun d!2188724 () Bool)

(assert (= bs!1867706 (and d!2188724 b!7021633)))

(declare-fun lambda!411645 () Int)

(assert (=> bs!1867706 (not (= lambda!411645 lambda!411620))))

(declare-fun bs!1867707 () Bool)

(assert (= bs!1867707 (and d!2188724 d!2188714)))

(assert (=> bs!1867707 (not (= lambda!411645 lambda!411636))))

(declare-fun bs!1867708 () Bool)

(assert (= bs!1867708 (and d!2188724 d!2188720)))

(assert (=> bs!1867708 (not (= lambda!411645 lambda!411642))))

(assert (=> d!2188724 (= (nullableContext!60 lt!2512216) (forall!16304 (exprs!6896 lt!2512216) lambda!411645))))

(declare-fun bs!1867709 () Bool)

(assert (= bs!1867709 d!2188724))

(declare-fun m!7723610 () Bool)

(assert (=> bs!1867709 m!7723610))

(assert (=> b!7021632 d!2188724))

(declare-fun d!2188728 () Bool)

(declare-fun e!4220882 () Bool)

(assert (=> d!2188728 e!4220882))

(declare-fun res!2866194 () Bool)

(assert (=> d!2188728 (=> (not res!2866194) (not e!4220882))))

(declare-fun lt!2512232 () Context!12792)

(declare-fun dynLambda!27240 (Int Context!12792) Bool)

(assert (=> d!2188728 (= res!2866194 (dynLambda!27240 lambda!411618 lt!2512232))))

(declare-fun getWitness!1375 (List!67746 Int) Context!12792)

(assert (=> d!2188728 (= lt!2512232 (getWitness!1375 (toList!10757 lt!2512215) lambda!411618))))

(assert (=> d!2188728 (exists!3291 lt!2512215 lambda!411618)))

(assert (=> d!2188728 (= (getWitness!1373 lt!2512215 lambda!411618) lt!2512232)))

(declare-fun b!7021670 () Bool)

(assert (=> b!7021670 (= e!4220882 (set.member lt!2512232 lt!2512215))))

(assert (= (and d!2188728 res!2866194) b!7021670))

(declare-fun b_lambda!265135 () Bool)

(assert (=> (not b_lambda!265135) (not d!2188728)))

(declare-fun m!7723612 () Bool)

(assert (=> d!2188728 m!7723612))

(assert (=> d!2188728 m!7723604))

(assert (=> d!2188728 m!7723604))

(declare-fun m!7723614 () Bool)

(assert (=> d!2188728 m!7723614))

(assert (=> d!2188728 m!7723560))

(declare-fun m!7723616 () Bool)

(assert (=> b!7021670 m!7723616))

(assert (=> b!7021632 d!2188728))

(declare-fun d!2188730 () Bool)

(declare-fun res!2866199 () Bool)

(declare-fun e!4220887 () Bool)

(assert (=> d!2188730 (=> res!2866199 e!4220887)))

(assert (=> d!2188730 (= res!2866199 (is-Nil!67618 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))))))

(assert (=> d!2188730 (= (forall!16304 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)) lambda!411620) e!4220887)))

(declare-fun b!7021675 () Bool)

(declare-fun e!4220888 () Bool)

(assert (=> b!7021675 (= e!4220887 e!4220888)))

(declare-fun res!2866200 () Bool)

(assert (=> b!7021675 (=> (not res!2866200) (not e!4220888))))

(declare-fun dynLambda!27241 (Int Regex!17400) Bool)

(assert (=> b!7021675 (= res!2866200 (dynLambda!27241 lambda!411620 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))

(declare-fun b!7021676 () Bool)

(assert (=> b!7021676 (= e!4220888 (forall!16304 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))) lambda!411620))))

(assert (= (and d!2188730 (not res!2866199)) b!7021675))

(assert (= (and b!7021675 res!2866200) b!7021676))

(declare-fun b_lambda!265137 () Bool)

(assert (=> (not b_lambda!265137) (not b!7021675)))

(declare-fun m!7723620 () Bool)

(assert (=> b!7021675 m!7723620))

(declare-fun m!7723622 () Bool)

(assert (=> b!7021676 m!7723622))

(assert (=> b!7021633 d!2188730))

(declare-fun d!2188734 () Bool)

(declare-fun e!4220891 () Bool)

(assert (=> d!2188734 e!4220891))

(declare-fun res!2866203 () Bool)

(assert (=> d!2188734 (=> (not res!2866203) (not e!4220891))))

(declare-fun lt!2512235 () Context!12792)

(declare-fun dynLambda!27242 (Int Context!12792) Context!12792)

(assert (=> d!2188734 (= res!2866203 (= lt!2512216 (dynLambda!27242 lambda!411619 lt!2512235)))))

(declare-fun choose!52979 ((Set Context!12792) Int Context!12792) Context!12792)

(assert (=> d!2188734 (= lt!2512235 (choose!52979 z1!570 lambda!411619 lt!2512216))))

(assert (=> d!2188734 (set.member lt!2512216 (map!15689 z1!570 lambda!411619))))

(assert (=> d!2188734 (= (mapPost2!247 z1!570 lambda!411619 lt!2512216) lt!2512235)))

(declare-fun b!7021680 () Bool)

(assert (=> b!7021680 (= e!4220891 (set.member lt!2512235 z1!570))))

(assert (= (and d!2188734 res!2866203) b!7021680))

(declare-fun b_lambda!265139 () Bool)

(assert (=> (not b_lambda!265139) (not d!2188734)))

(declare-fun m!7723624 () Bool)

(assert (=> d!2188734 m!7723624))

(declare-fun m!7723626 () Bool)

(assert (=> d!2188734 m!7723626))

(declare-fun m!7723628 () Bool)

(assert (=> d!2188734 m!7723628))

(declare-fun m!7723630 () Bool)

(assert (=> d!2188734 m!7723630))

(declare-fun m!7723632 () Bool)

(assert (=> b!7021680 m!7723632))

(assert (=> b!7021633 d!2188734))

(declare-fun bs!1867712 () Bool)

(declare-fun d!2188736 () Bool)

(assert (= bs!1867712 (and d!2188736 b!7021627)))

(declare-fun lambda!411651 () Int)

(assert (=> bs!1867712 (= lambda!411651 lambda!411618)))

(assert (=> d!2188736 (= (nullableZipper!2529 lt!2512215) (exists!3291 lt!2512215 lambda!411651))))

(declare-fun bs!1867713 () Bool)

(assert (= bs!1867713 d!2188736))

(declare-fun m!7723634 () Bool)

(assert (=> bs!1867713 m!7723634))

(assert (=> b!7021629 d!2188736))

(declare-fun condSetEmpty!48759 () Bool)

(assert (=> setNonEmpty!48753 (= condSetEmpty!48759 (= setRest!48753 (as set.empty (Set Context!12792))))))

(declare-fun setRes!48759 () Bool)

(assert (=> setNonEmpty!48753 (= tp!1934301 setRes!48759)))

(declare-fun setIsEmpty!48759 () Bool)

(assert (=> setIsEmpty!48759 setRes!48759))

(declare-fun setElem!48759 () Context!12792)

(declare-fun setNonEmpty!48759 () Bool)

(declare-fun e!4220897 () Bool)

(declare-fun tp!1934318 () Bool)

(assert (=> setNonEmpty!48759 (= setRes!48759 (and tp!1934318 (inv!86360 setElem!48759) e!4220897))))

(declare-fun setRest!48759 () (Set Context!12792))

(assert (=> setNonEmpty!48759 (= setRest!48753 (set.union (set.insert setElem!48759 (as set.empty (Set Context!12792))) setRest!48759))))

(declare-fun b!7021688 () Bool)

(declare-fun tp!1934319 () Bool)

(assert (=> b!7021688 (= e!4220897 tp!1934319)))

(assert (= (and setNonEmpty!48753 condSetEmpty!48759) setIsEmpty!48759))

(assert (= (and setNonEmpty!48753 (not condSetEmpty!48759)) setNonEmpty!48759))

(assert (= setNonEmpty!48759 b!7021688))

(declare-fun m!7723644 () Bool)

(assert (=> setNonEmpty!48759 m!7723644))

(declare-fun b!7021693 () Bool)

(declare-fun e!4220900 () Bool)

(declare-fun tp!1934322 () Bool)

(assert (=> b!7021693 (= e!4220900 (and tp_is_empty!44025 tp!1934322))))

(assert (=> b!7021630 (= tp!1934298 e!4220900)))

(assert (= (and b!7021630 (is-Cons!67619 (t!381498 s!7408))) b!7021693))

(declare-fun b!7021698 () Bool)

(declare-fun e!4220903 () Bool)

(declare-fun tp!1934327 () Bool)

(declare-fun tp!1934328 () Bool)

(assert (=> b!7021698 (= e!4220903 (and tp!1934327 tp!1934328))))

(assert (=> b!7021631 (= tp!1934299 e!4220903)))

(assert (= (and b!7021631 (is-Cons!67618 (exprs!6896 ct2!306))) b!7021698))

(declare-fun b!7021699 () Bool)

(declare-fun e!4220904 () Bool)

(declare-fun tp!1934329 () Bool)

(declare-fun tp!1934330 () Bool)

(assert (=> b!7021699 (= e!4220904 (and tp!1934329 tp!1934330))))

(assert (=> b!7021626 (= tp!1934300 e!4220904)))

(assert (= (and b!7021626 (is-Cons!67618 (exprs!6896 setElem!48753))) b!7021699))

(declare-fun b_lambda!265143 () Bool)

(assert (= b_lambda!265139 (or b!7021633 b_lambda!265143)))

(declare-fun bs!1867714 () Bool)

(declare-fun d!2188740 () Bool)

(assert (= bs!1867714 (and d!2188740 b!7021633)))

(declare-datatypes ((Unit!161466 0))(
  ( (Unit!161467) )
))
(declare-fun lt!2512239 () Unit!161466)

(declare-fun lemmaConcatPreservesForall!728 (List!67742 List!67742 Int) Unit!161466)

(assert (=> bs!1867714 (= lt!2512239 (lemmaConcatPreservesForall!728 (exprs!6896 lt!2512235) (exprs!6896 ct2!306) lambda!411620))))

(declare-fun ++!15436 (List!67742 List!67742) List!67742)

(assert (=> bs!1867714 (= (dynLambda!27242 lambda!411619 lt!2512235) (Context!12793 (++!15436 (exprs!6896 lt!2512235) (exprs!6896 ct2!306))))))

(declare-fun m!7723646 () Bool)

(assert (=> bs!1867714 m!7723646))

(declare-fun m!7723648 () Bool)

(assert (=> bs!1867714 m!7723648))

(assert (=> d!2188734 d!2188740))

(declare-fun b_lambda!265145 () Bool)

(assert (= b_lambda!265137 (or b!7021633 b_lambda!265145)))

(declare-fun bs!1867715 () Bool)

(declare-fun d!2188742 () Bool)

(assert (= bs!1867715 (and d!2188742 b!7021633)))

(declare-fun validRegex!8919 (Regex!17400) Bool)

(assert (=> bs!1867715 (= (dynLambda!27241 lambda!411620 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))) (validRegex!8919 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))

(declare-fun m!7723650 () Bool)

(assert (=> bs!1867715 m!7723650))

(assert (=> b!7021675 d!2188742))

(declare-fun b_lambda!265147 () Bool)

(assert (= b_lambda!265135 (or b!7021627 b_lambda!265147)))

(declare-fun bs!1867716 () Bool)

(declare-fun d!2188744 () Bool)

(assert (= bs!1867716 (and d!2188744 b!7021627)))

(assert (=> bs!1867716 (= (dynLambda!27240 lambda!411618 lt!2512232) (nullableContext!60 lt!2512232))))

(declare-fun m!7723652 () Bool)

(assert (=> bs!1867716 m!7723652))

(assert (=> d!2188728 d!2188744))

(push 1)

(assert (not d!2188714))

(assert (not d!2188736))

(assert (not b_lambda!265145))

(assert (not b!7021698))

(assert (not d!2188724))

(assert (not b!7021666))

(assert (not bs!1867716))

(assert (not setNonEmpty!48759))

(assert (not b!7021676))

(assert (not b!7021699))

(assert (not d!2188734))

(assert (not b!7021688))

(assert (not b!7021693))

(assert (not d!2188716))

(assert (not b!7021667))

(assert (not d!2188728))

(assert (not d!2188720))

(assert (not b_lambda!265147))

(assert (not bs!1867714))

(assert tp_is_empty!44025)

(assert (not b_lambda!265143))

(assert (not d!2188722))

(assert (not bs!1867715))

(assert (not d!2188718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2188766 () Bool)

(declare-fun res!2866216 () Bool)

(declare-fun e!4220927 () Bool)

(assert (=> d!2188766 (=> res!2866216 e!4220927)))

(assert (=> d!2188766 (= res!2866216 (is-Nil!67618 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))

(assert (=> d!2188766 (= (forall!16304 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))) lambda!411620) e!4220927)))

(declare-fun b!7021732 () Bool)

(declare-fun e!4220928 () Bool)

(assert (=> b!7021732 (= e!4220927 e!4220928)))

(declare-fun res!2866217 () Bool)

(assert (=> b!7021732 (=> (not res!2866217) (not e!4220928))))

(assert (=> b!7021732 (= res!2866217 (dynLambda!27241 lambda!411620 (h!74066 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))))))))

(declare-fun b!7021733 () Bool)

(assert (=> b!7021733 (= e!4220928 (forall!16304 (t!381497 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))) lambda!411620))))

(assert (= (and d!2188766 (not res!2866216)) b!7021732))

(assert (= (and b!7021732 res!2866217) b!7021733))

(declare-fun b_lambda!265159 () Bool)

(assert (=> (not b_lambda!265159) (not b!7021732)))

(declare-fun m!7723700 () Bool)

(assert (=> b!7021732 m!7723700))

(declare-fun m!7723702 () Bool)

(assert (=> b!7021733 m!7723702))

(assert (=> b!7021676 d!2188766))

(declare-fun b!7021752 () Bool)

(declare-fun e!4220943 () Bool)

(declare-fun e!4220948 () Bool)

(assert (=> b!7021752 (= e!4220943 e!4220948)))

(declare-fun c!1305005 () Bool)

(assert (=> b!7021752 (= c!1305005 (is-Star!17400 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))

(declare-fun b!7021753 () Bool)

(declare-fun e!4220949 () Bool)

(declare-fun call!637636 () Bool)

(assert (=> b!7021753 (= e!4220949 call!637636)))

(declare-fun c!1305006 () Bool)

(declare-fun call!637637 () Bool)

(declare-fun bm!637630 () Bool)

(assert (=> bm!637630 (= call!637637 (validRegex!8919 (ite c!1305006 (regOne!35313 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))) (regOne!35312 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))))

(declare-fun b!7021754 () Bool)

(declare-fun res!2866229 () Bool)

(declare-fun e!4220947 () Bool)

(assert (=> b!7021754 (=> (not res!2866229) (not e!4220947))))

(assert (=> b!7021754 (= res!2866229 call!637637)))

(declare-fun e!4220946 () Bool)

(assert (=> b!7021754 (= e!4220946 e!4220947)))

(declare-fun b!7021755 () Bool)

(declare-fun e!4220945 () Bool)

(assert (=> b!7021755 (= e!4220945 e!4220949)))

(declare-fun res!2866232 () Bool)

(assert (=> b!7021755 (=> (not res!2866232) (not e!4220949))))

(assert (=> b!7021755 (= res!2866232 call!637637)))

(declare-fun b!7021756 () Bool)

(assert (=> b!7021756 (= e!4220948 e!4220946)))

(assert (=> b!7021756 (= c!1305006 (is-Union!17400 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))

(declare-fun b!7021757 () Bool)

(declare-fun e!4220944 () Bool)

(assert (=> b!7021757 (= e!4220948 e!4220944)))

(declare-fun res!2866230 () Bool)

(declare-fun nullable!7139 (Regex!17400) Bool)

(assert (=> b!7021757 (= res!2866230 (not (nullable!7139 (reg!17729 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))))

(assert (=> b!7021757 (=> (not res!2866230) (not e!4220944))))

(declare-fun b!7021758 () Bool)

(declare-fun res!2866228 () Bool)

(assert (=> b!7021758 (=> res!2866228 e!4220945)))

(assert (=> b!7021758 (= res!2866228 (not (is-Concat!26245 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))))))))

(assert (=> b!7021758 (= e!4220946 e!4220945)))

(declare-fun bm!637631 () Bool)

(declare-fun call!637635 () Bool)

(assert (=> bm!637631 (= call!637635 (validRegex!8919 (ite c!1305005 (reg!17729 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))) (ite c!1305006 (regTwo!35313 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))) (regTwo!35312 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))))))))))

(declare-fun b!7021759 () Bool)

(assert (=> b!7021759 (= e!4220944 call!637635)))

(declare-fun d!2188768 () Bool)

(declare-fun res!2866231 () Bool)

(assert (=> d!2188768 (=> res!2866231 e!4220943)))

(assert (=> d!2188768 (= res!2866231 (is-ElementMatch!17400 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))))))

(assert (=> d!2188768 (= (validRegex!8919 (h!74066 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216)))) e!4220943)))

(declare-fun bm!637632 () Bool)

(assert (=> bm!637632 (= call!637636 call!637635)))

(declare-fun b!7021760 () Bool)

(assert (=> b!7021760 (= e!4220947 call!637636)))

(assert (= (and d!2188768 (not res!2866231)) b!7021752))

(assert (= (and b!7021752 c!1305005) b!7021757))

(assert (= (and b!7021752 (not c!1305005)) b!7021756))

(assert (= (and b!7021757 res!2866230) b!7021759))

(assert (= (and b!7021756 c!1305006) b!7021754))

(assert (= (and b!7021756 (not c!1305006)) b!7021758))

(assert (= (and b!7021754 res!2866229) b!7021760))

(assert (= (and b!7021758 (not res!2866228)) b!7021755))

(assert (= (and b!7021755 res!2866232) b!7021753))

(assert (= (or b!7021760 b!7021753) bm!637632))

(assert (= (or b!7021754 b!7021755) bm!637630))

(assert (= (or b!7021759 bm!637632) bm!637631))

(declare-fun m!7723704 () Bool)

(assert (=> bm!637630 m!7723704))

(declare-fun m!7723706 () Bool)

(assert (=> b!7021757 m!7723706))

(declare-fun m!7723708 () Bool)

(assert (=> bm!637631 m!7723708))

(assert (=> bs!1867715 d!2188768))

(declare-fun bs!1867732 () Bool)

(declare-fun d!2188770 () Bool)

(assert (= bs!1867732 (and d!2188770 b!7021633)))

(declare-fun lambda!411664 () Int)

(assert (=> bs!1867732 (= lambda!411664 lambda!411620)))

(declare-fun bs!1867733 () Bool)

(assert (= bs!1867733 (and d!2188770 d!2188714)))

(assert (=> bs!1867733 (= lambda!411664 lambda!411636)))

(declare-fun bs!1867734 () Bool)

(assert (= bs!1867734 (and d!2188770 d!2188720)))

(assert (=> bs!1867734 (= lambda!411664 lambda!411642)))

(declare-fun bs!1867735 () Bool)

(assert (= bs!1867735 (and d!2188770 d!2188724)))

(assert (=> bs!1867735 (not (= lambda!411664 lambda!411645))))

(assert (=> d!2188770 (= (inv!86360 setElem!48759) (forall!16304 (exprs!6896 setElem!48759) lambda!411664))))

(declare-fun bs!1867736 () Bool)

(assert (= bs!1867736 d!2188770))

(declare-fun m!7723710 () Bool)

(assert (=> bs!1867736 m!7723710))

(assert (=> setNonEmpty!48759 d!2188770))

(declare-fun d!2188772 () Bool)

(declare-fun e!4220958 () Bool)

(assert (=> d!2188772 e!4220958))

(declare-fun res!2866238 () Bool)

(assert (=> d!2188772 (=> (not res!2866238) (not e!4220958))))

(declare-fun lt!2512253 () Context!12792)

(assert (=> d!2188772 (= res!2866238 (dynLambda!27240 lambda!411618 lt!2512253))))

(declare-fun e!4220960 () Context!12792)

(assert (=> d!2188772 (= lt!2512253 e!4220960)))

(declare-fun c!1305012 () Bool)

(declare-fun e!4220959 () Bool)

(assert (=> d!2188772 (= c!1305012 e!4220959)))

(declare-fun res!2866237 () Bool)

(assert (=> d!2188772 (=> (not res!2866237) (not e!4220959))))

(assert (=> d!2188772 (= res!2866237 (is-Cons!67622 (toList!10757 lt!2512215)))))

(assert (=> d!2188772 (exists!3293 (toList!10757 lt!2512215) lambda!411618)))

(assert (=> d!2188772 (= (getWitness!1375 (toList!10757 lt!2512215) lambda!411618) lt!2512253)))

(declare-fun b!7021773 () Bool)

(declare-fun contains!20437 (List!67746 Context!12792) Bool)

(assert (=> b!7021773 (= e!4220958 (contains!20437 (toList!10757 lt!2512215) lt!2512253))))

(declare-fun b!7021774 () Bool)

(assert (=> b!7021774 (= e!4220960 (h!74070 (toList!10757 lt!2512215)))))

(declare-fun b!7021775 () Bool)

(declare-fun e!4220961 () Context!12792)

(assert (=> b!7021775 (= e!4220961 (getWitness!1375 (t!381501 (toList!10757 lt!2512215)) lambda!411618))))

(declare-fun b!7021776 () Bool)

(assert (=> b!7021776 (= e!4220959 (dynLambda!27240 lambda!411618 (h!74070 (toList!10757 lt!2512215))))))

(declare-fun b!7021777 () Bool)

(assert (=> b!7021777 (= e!4220960 e!4220961)))

(declare-fun c!1305011 () Bool)

(assert (=> b!7021777 (= c!1305011 (is-Cons!67622 (toList!10757 lt!2512215)))))

(declare-fun b!7021778 () Bool)

(declare-fun lt!2512254 () Unit!161466)

(declare-fun Unit!161470 () Unit!161466)

(assert (=> b!7021778 (= lt!2512254 Unit!161470)))

(assert (=> b!7021778 false))

(declare-fun head!14217 (List!67746) Context!12792)

(assert (=> b!7021778 (= e!4220961 (head!14217 (toList!10757 lt!2512215)))))

(assert (= (and d!2188772 res!2866237) b!7021776))

(assert (= (and d!2188772 c!1305012) b!7021774))

(assert (= (and d!2188772 (not c!1305012)) b!7021777))

(assert (= (and b!7021777 c!1305011) b!7021775))

(assert (= (and b!7021777 (not c!1305011)) b!7021778))

(assert (= (and d!2188772 res!2866238) b!7021773))

(declare-fun b_lambda!265161 () Bool)

(assert (=> (not b_lambda!265161) (not d!2188772)))

(declare-fun b_lambda!265163 () Bool)

(assert (=> (not b_lambda!265163) (not b!7021776)))

(declare-fun m!7723712 () Bool)

(assert (=> d!2188772 m!7723712))

(assert (=> d!2188772 m!7723604))

(assert (=> d!2188772 m!7723606))

(assert (=> b!7021773 m!7723604))

(declare-fun m!7723714 () Bool)

(assert (=> b!7021773 m!7723714))

(declare-fun m!7723716 () Bool)

(assert (=> b!7021775 m!7723716))

(declare-fun m!7723718 () Bool)

(assert (=> b!7021776 m!7723718))

(assert (=> b!7021778 m!7723604))

(declare-fun m!7723720 () Bool)

(assert (=> b!7021778 m!7723720))

(assert (=> d!2188728 d!2188772))

(declare-fun d!2188774 () Bool)

(declare-fun e!4220964 () Bool)

(assert (=> d!2188774 e!4220964))

(declare-fun res!2866241 () Bool)

(assert (=> d!2188774 (=> (not res!2866241) (not e!4220964))))

(declare-fun lt!2512257 () List!67746)

(declare-fun noDuplicate!2597 (List!67746) Bool)

(assert (=> d!2188774 (= res!2866241 (noDuplicate!2597 lt!2512257))))

(declare-fun choose!52982 ((Set Context!12792)) List!67746)

(assert (=> d!2188774 (= lt!2512257 (choose!52982 lt!2512215))))

(assert (=> d!2188774 (= (toList!10757 lt!2512215) lt!2512257)))

(declare-fun b!7021781 () Bool)

(declare-fun content!13463 (List!67746) (Set Context!12792))

(assert (=> b!7021781 (= e!4220964 (= (content!13463 lt!2512257) lt!2512215))))

(assert (= (and d!2188774 res!2866241) b!7021781))

(declare-fun m!7723722 () Bool)

(assert (=> d!2188774 m!7723722))

(declare-fun m!7723724 () Bool)

(assert (=> d!2188774 m!7723724))

(declare-fun m!7723726 () Bool)

(assert (=> b!7021781 m!7723726))

(assert (=> d!2188728 d!2188774))

(assert (=> d!2188728 d!2188722))

(declare-fun d!2188776 () Bool)

(declare-fun e!4220969 () Bool)

(assert (=> d!2188776 e!4220969))

(declare-fun res!2866244 () Bool)

(assert (=> d!2188776 (=> (not res!2866244) (not e!4220969))))

(declare-fun a!13089 () Context!12792)

(assert (=> d!2188776 (= res!2866244 (= lt!2512216 (dynLambda!27242 lambda!411619 a!13089)))))

(declare-fun e!4220970 () Bool)

(assert (=> d!2188776 (and (inv!86360 a!13089) e!4220970)))

(assert (=> d!2188776 (= (choose!52979 z1!570 lambda!411619 lt!2512216) a!13089)))

(declare-fun b!7021787 () Bool)

(declare-fun tp!1934350 () Bool)

(assert (=> b!7021787 (= e!4220970 tp!1934350)))

(declare-fun b!7021788 () Bool)

(assert (=> b!7021788 (= e!4220969 (set.member a!13089 z1!570))))

(assert (= d!2188776 b!7021787))

(assert (= (and d!2188776 res!2866244) b!7021788))

(declare-fun b_lambda!265165 () Bool)

(assert (=> (not b_lambda!265165) (not d!2188776)))

(declare-fun m!7723728 () Bool)

(assert (=> d!2188776 m!7723728))

(declare-fun m!7723730 () Bool)

(assert (=> d!2188776 m!7723730))

(declare-fun m!7723732 () Bool)

(assert (=> b!7021788 m!7723732))

(assert (=> d!2188734 d!2188776))

(declare-fun d!2188778 () Bool)

(declare-fun choose!52983 ((Set Context!12792) Int) (Set Context!12792))

(assert (=> d!2188778 (= (map!15689 z1!570 lambda!411619) (choose!52983 z1!570 lambda!411619))))

(declare-fun bs!1867737 () Bool)

(assert (= bs!1867737 d!2188778))

(declare-fun m!7723734 () Bool)

(assert (=> bs!1867737 m!7723734))

(assert (=> d!2188734 d!2188778))

(assert (=> b!7021666 d!2188736))

(declare-fun d!2188780 () Bool)

(declare-fun c!1305013 () Bool)

(assert (=> d!2188780 (= c!1305013 (isEmpty!39462 (tail!13484 s!7408)))))

(declare-fun e!4220971 () Bool)

(assert (=> d!2188780 (= (matchZipper!2940 (derivationStepZipper!2874 lt!2512215 (head!14215 s!7408)) (tail!13484 s!7408)) e!4220971)))

(declare-fun b!7021789 () Bool)

(assert (=> b!7021789 (= e!4220971 (nullableZipper!2529 (derivationStepZipper!2874 lt!2512215 (head!14215 s!7408))))))

(declare-fun b!7021790 () Bool)

(assert (=> b!7021790 (= e!4220971 (matchZipper!2940 (derivationStepZipper!2874 (derivationStepZipper!2874 lt!2512215 (head!14215 s!7408)) (head!14215 (tail!13484 s!7408))) (tail!13484 (tail!13484 s!7408))))))

(assert (= (and d!2188780 c!1305013) b!7021789))

(assert (= (and d!2188780 (not c!1305013)) b!7021790))

(assert (=> d!2188780 m!7723596))

(declare-fun m!7723736 () Bool)

(assert (=> d!2188780 m!7723736))

(assert (=> b!7021789 m!7723594))

(declare-fun m!7723738 () Bool)

(assert (=> b!7021789 m!7723738))

(assert (=> b!7021790 m!7723596))

(declare-fun m!7723740 () Bool)

(assert (=> b!7021790 m!7723740))

(assert (=> b!7021790 m!7723594))

(assert (=> b!7021790 m!7723740))

(declare-fun m!7723742 () Bool)

(assert (=> b!7021790 m!7723742))

(assert (=> b!7021790 m!7723596))

(declare-fun m!7723744 () Bool)

(assert (=> b!7021790 m!7723744))

(assert (=> b!7021790 m!7723742))

(assert (=> b!7021790 m!7723744))

(declare-fun m!7723746 () Bool)

(assert (=> b!7021790 m!7723746))

(assert (=> b!7021667 d!2188780))

(declare-fun d!2188782 () Bool)

(assert (=> d!2188782 true))

(declare-fun lambda!411667 () Int)

(declare-fun flatMap!2378 ((Set Context!12792) Int) (Set Context!12792))

(assert (=> d!2188782 (= (derivationStepZipper!2874 lt!2512215 (head!14215 s!7408)) (flatMap!2378 lt!2512215 lambda!411667))))

(declare-fun bs!1867738 () Bool)

(assert (= bs!1867738 d!2188782))

(declare-fun m!7723748 () Bool)

(assert (=> bs!1867738 m!7723748))

(assert (=> b!7021667 d!2188782))

(declare-fun d!2188784 () Bool)

(assert (=> d!2188784 (= (head!14215 s!7408) (h!74067 s!7408))))

(assert (=> b!7021667 d!2188784))

(declare-fun d!2188786 () Bool)

(assert (=> d!2188786 (= (tail!13484 s!7408) (t!381498 s!7408))))

(assert (=> b!7021667 d!2188786))

(declare-fun d!2188788 () Bool)

(assert (=> d!2188788 (= (isEmpty!39462 s!7408) (is-Nil!67619 s!7408))))

(assert (=> d!2188716 d!2188788))

(declare-fun d!2188790 () Bool)

(declare-fun res!2866245 () Bool)

(declare-fun e!4220972 () Bool)

(assert (=> d!2188790 (=> res!2866245 e!4220972)))

(assert (=> d!2188790 (= res!2866245 (is-Nil!67618 (exprs!6896 setElem!48753)))))

(assert (=> d!2188790 (= (forall!16304 (exprs!6896 setElem!48753) lambda!411636) e!4220972)))

(declare-fun b!7021793 () Bool)

(declare-fun e!4220973 () Bool)

(assert (=> b!7021793 (= e!4220972 e!4220973)))

(declare-fun res!2866246 () Bool)

(assert (=> b!7021793 (=> (not res!2866246) (not e!4220973))))

(assert (=> b!7021793 (= res!2866246 (dynLambda!27241 lambda!411636 (h!74066 (exprs!6896 setElem!48753))))))

(declare-fun b!7021794 () Bool)

(assert (=> b!7021794 (= e!4220973 (forall!16304 (t!381497 (exprs!6896 setElem!48753)) lambda!411636))))

(assert (= (and d!2188790 (not res!2866245)) b!7021793))

(assert (= (and b!7021793 res!2866246) b!7021794))

(declare-fun b_lambda!265167 () Bool)

(assert (=> (not b_lambda!265167) (not b!7021793)))

(declare-fun m!7723750 () Bool)

(assert (=> b!7021793 m!7723750))

(declare-fun m!7723752 () Bool)

(assert (=> b!7021794 m!7723752))

(assert (=> d!2188714 d!2188790))

(declare-fun bs!1867739 () Bool)

(declare-fun d!2188792 () Bool)

(assert (= bs!1867739 (and d!2188792 d!2188720)))

(declare-fun lambda!411668 () Int)

(assert (=> bs!1867739 (not (= lambda!411668 lambda!411642))))

(declare-fun bs!1867740 () Bool)

(assert (= bs!1867740 (and d!2188792 d!2188714)))

(assert (=> bs!1867740 (not (= lambda!411668 lambda!411636))))

(declare-fun bs!1867741 () Bool)

(assert (= bs!1867741 (and d!2188792 d!2188770)))

(assert (=> bs!1867741 (not (= lambda!411668 lambda!411664))))

(declare-fun bs!1867742 () Bool)

(assert (= bs!1867742 (and d!2188792 b!7021633)))

(assert (=> bs!1867742 (not (= lambda!411668 lambda!411620))))

(declare-fun bs!1867743 () Bool)

(assert (= bs!1867743 (and d!2188792 d!2188724)))

(assert (=> bs!1867743 (= lambda!411668 lambda!411645)))

(assert (=> d!2188792 (= (nullableContext!60 lt!2512232) (forall!16304 (exprs!6896 lt!2512232) lambda!411668))))

(declare-fun bs!1867744 () Bool)

(assert (= bs!1867744 d!2188792))

(declare-fun m!7723754 () Bool)

(assert (=> bs!1867744 m!7723754))

(assert (=> bs!1867716 d!2188792))

(declare-fun d!2188794 () Bool)

(declare-fun res!2866247 () Bool)

(declare-fun e!4220974 () Bool)

(assert (=> d!2188794 (=> res!2866247 e!4220974)))

(assert (=> d!2188794 (= res!2866247 (is-Nil!67618 (exprs!6896 ct2!306)))))

(assert (=> d!2188794 (= (forall!16304 (exprs!6896 ct2!306) lambda!411642) e!4220974)))

(declare-fun b!7021795 () Bool)

(declare-fun e!4220975 () Bool)

(assert (=> b!7021795 (= e!4220974 e!4220975)))

(declare-fun res!2866248 () Bool)

(assert (=> b!7021795 (=> (not res!2866248) (not e!4220975))))

(assert (=> b!7021795 (= res!2866248 (dynLambda!27241 lambda!411642 (h!74066 (exprs!6896 ct2!306))))))

(declare-fun b!7021796 () Bool)

(assert (=> b!7021796 (= e!4220975 (forall!16304 (t!381497 (exprs!6896 ct2!306)) lambda!411642))))

(assert (= (and d!2188794 (not res!2866247)) b!7021795))

(assert (= (and b!7021795 res!2866248) b!7021796))

(declare-fun b_lambda!265169 () Bool)

(assert (=> (not b_lambda!265169) (not b!7021795)))

(declare-fun m!7723756 () Bool)

(assert (=> b!7021795 m!7723756))

(declare-fun m!7723758 () Bool)

(assert (=> b!7021796 m!7723758))

(assert (=> d!2188720 d!2188794))

(declare-fun d!2188796 () Bool)

(declare-fun lt!2512258 () Bool)

(assert (=> d!2188796 (= lt!2512258 (exists!3293 (toList!10757 lt!2512215) lambda!411651))))

(assert (=> d!2188796 (= lt!2512258 (choose!52978 lt!2512215 lambda!411651))))

(assert (=> d!2188796 (= (exists!3291 lt!2512215 lambda!411651) lt!2512258)))

(declare-fun bs!1867745 () Bool)

(assert (= bs!1867745 d!2188796))

(assert (=> bs!1867745 m!7723604))

(assert (=> bs!1867745 m!7723604))

(declare-fun m!7723760 () Bool)

(assert (=> bs!1867745 m!7723760))

(declare-fun m!7723762 () Bool)

(assert (=> bs!1867745 m!7723762))

(assert (=> d!2188736 d!2188796))

(declare-fun d!2188798 () Bool)

(declare-fun res!2866249 () Bool)

(declare-fun e!4220976 () Bool)

(assert (=> d!2188798 (=> res!2866249 e!4220976)))

(assert (=> d!2188798 (= res!2866249 (is-Nil!67618 (exprs!6896 lt!2512216)))))

(assert (=> d!2188798 (= (forall!16304 (exprs!6896 lt!2512216) lambda!411645) e!4220976)))

(declare-fun b!7021797 () Bool)

(declare-fun e!4220977 () Bool)

(assert (=> b!7021797 (= e!4220976 e!4220977)))

(declare-fun res!2866250 () Bool)

(assert (=> b!7021797 (=> (not res!2866250) (not e!4220977))))

(assert (=> b!7021797 (= res!2866250 (dynLambda!27241 lambda!411645 (h!74066 (exprs!6896 lt!2512216))))))

(declare-fun b!7021798 () Bool)

(assert (=> b!7021798 (= e!4220977 (forall!16304 (t!381497 (exprs!6896 lt!2512216)) lambda!411645))))

(assert (= (and d!2188798 (not res!2866249)) b!7021797))

(assert (= (and b!7021797 res!2866250) b!7021798))

(declare-fun b_lambda!265171 () Bool)

(assert (=> (not b_lambda!265171) (not b!7021797)))

(declare-fun m!7723764 () Bool)

(assert (=> b!7021797 m!7723764))

(declare-fun m!7723766 () Bool)

(assert (=> b!7021798 m!7723766))

(assert (=> d!2188724 d!2188798))

(declare-fun bs!1867746 () Bool)

(declare-fun d!2188800 () Bool)

(assert (= bs!1867746 (and d!2188800 b!7021627)))

(declare-fun lambda!411671 () Int)

(assert (=> bs!1867746 (not (= lambda!411671 lambda!411618))))

(declare-fun bs!1867747 () Bool)

(assert (= bs!1867747 (and d!2188800 d!2188736)))

(assert (=> bs!1867747 (not (= lambda!411671 lambda!411651))))

(assert (=> d!2188800 true))

(declare-fun order!28105 () Int)

(declare-fun dynLambda!27246 (Int Int) Int)

(assert (=> d!2188800 (< (dynLambda!27246 order!28105 lambda!411618) (dynLambda!27246 order!28105 lambda!411671))))

(declare-fun forall!16306 (List!67746 Int) Bool)

(assert (=> d!2188800 (= (exists!3293 (toList!10757 lt!2512215) lambda!411618) (not (forall!16306 (toList!10757 lt!2512215) lambda!411671)))))

(declare-fun bs!1867748 () Bool)

(assert (= bs!1867748 d!2188800))

(assert (=> bs!1867748 m!7723604))

(declare-fun m!7723768 () Bool)

(assert (=> bs!1867748 m!7723768))

(assert (=> d!2188722 d!2188800))

(assert (=> d!2188722 d!2188774))

(declare-fun d!2188802 () Bool)

(declare-fun res!2866253 () Bool)

(assert (=> d!2188802 (= res!2866253 (exists!3293 (toList!10757 lt!2512215) lambda!411618))))

(assert (=> d!2188802 true))

(assert (=> d!2188802 (= (choose!52978 lt!2512215 lambda!411618) res!2866253)))

(declare-fun bs!1867749 () Bool)

(assert (= bs!1867749 d!2188802))

(assert (=> bs!1867749 m!7723604))

(assert (=> bs!1867749 m!7723604))

(assert (=> bs!1867749 m!7723606))

(assert (=> d!2188722 d!2188802))

(declare-fun d!2188804 () Bool)

(assert (=> d!2188804 (forall!16304 (++!15436 (exprs!6896 lt!2512235) (exprs!6896 ct2!306)) lambda!411620)))

(declare-fun lt!2512261 () Unit!161466)

(declare-fun choose!52984 (List!67742 List!67742 Int) Unit!161466)

(assert (=> d!2188804 (= lt!2512261 (choose!52984 (exprs!6896 lt!2512235) (exprs!6896 ct2!306) lambda!411620))))

(assert (=> d!2188804 (forall!16304 (exprs!6896 lt!2512235) lambda!411620)))

(assert (=> d!2188804 (= (lemmaConcatPreservesForall!728 (exprs!6896 lt!2512235) (exprs!6896 ct2!306) lambda!411620) lt!2512261)))

(declare-fun bs!1867750 () Bool)

(assert (= bs!1867750 d!2188804))

(assert (=> bs!1867750 m!7723648))

(assert (=> bs!1867750 m!7723648))

(declare-fun m!7723770 () Bool)

(assert (=> bs!1867750 m!7723770))

(declare-fun m!7723772 () Bool)

(assert (=> bs!1867750 m!7723772))

(declare-fun m!7723774 () Bool)

(assert (=> bs!1867750 m!7723774))

(assert (=> bs!1867714 d!2188804))

(declare-fun b!7021809 () Bool)

(declare-fun e!4220982 () List!67742)

(assert (=> b!7021809 (= e!4220982 (exprs!6896 ct2!306))))

(declare-fun lt!2512264 () List!67742)

(declare-fun b!7021812 () Bool)

(declare-fun e!4220983 () Bool)

(assert (=> b!7021812 (= e!4220983 (or (not (= (exprs!6896 ct2!306) Nil!67618)) (= lt!2512264 (exprs!6896 lt!2512235))))))

(declare-fun b!7021811 () Bool)

(declare-fun res!2866258 () Bool)

(assert (=> b!7021811 (=> (not res!2866258) (not e!4220983))))

(declare-fun size!41025 (List!67742) Int)

(assert (=> b!7021811 (= res!2866258 (= (size!41025 lt!2512264) (+ (size!41025 (exprs!6896 lt!2512235)) (size!41025 (exprs!6896 ct2!306)))))))

(declare-fun d!2188806 () Bool)

(assert (=> d!2188806 e!4220983))

(declare-fun res!2866259 () Bool)

(assert (=> d!2188806 (=> (not res!2866259) (not e!4220983))))

(declare-fun content!13464 (List!67742) (Set Regex!17400))

(assert (=> d!2188806 (= res!2866259 (= (content!13464 lt!2512264) (set.union (content!13464 (exprs!6896 lt!2512235)) (content!13464 (exprs!6896 ct2!306)))))))

(assert (=> d!2188806 (= lt!2512264 e!4220982)))

(declare-fun c!1305018 () Bool)

(assert (=> d!2188806 (= c!1305018 (is-Nil!67618 (exprs!6896 lt!2512235)))))

(assert (=> d!2188806 (= (++!15436 (exprs!6896 lt!2512235) (exprs!6896 ct2!306)) lt!2512264)))

(declare-fun b!7021810 () Bool)

(assert (=> b!7021810 (= e!4220982 (Cons!67618 (h!74066 (exprs!6896 lt!2512235)) (++!15436 (t!381497 (exprs!6896 lt!2512235)) (exprs!6896 ct2!306))))))

(assert (= (and d!2188806 c!1305018) b!7021809))

(assert (= (and d!2188806 (not c!1305018)) b!7021810))

(assert (= (and d!2188806 res!2866259) b!7021811))

(assert (= (and b!7021811 res!2866258) b!7021812))

(declare-fun m!7723776 () Bool)

(assert (=> b!7021811 m!7723776))

(declare-fun m!7723778 () Bool)

(assert (=> b!7021811 m!7723778))

(declare-fun m!7723780 () Bool)

(assert (=> b!7021811 m!7723780))

(declare-fun m!7723782 () Bool)

(assert (=> d!2188806 m!7723782))

(declare-fun m!7723784 () Bool)

(assert (=> d!2188806 m!7723784))

(declare-fun m!7723786 () Bool)

(assert (=> d!2188806 m!7723786))

(declare-fun m!7723788 () Bool)

(assert (=> b!7021810 m!7723788))

(assert (=> bs!1867714 d!2188806))

(declare-fun d!2188808 () Bool)

(assert (=> d!2188808 (= (map!15689 z1!570 lambda!411641) (choose!52983 z1!570 lambda!411641))))

(declare-fun bs!1867751 () Bool)

(assert (= bs!1867751 d!2188808))

(declare-fun m!7723790 () Bool)

(assert (=> bs!1867751 m!7723790))

(assert (=> d!2188718 d!2188808))

(declare-fun b!7021823 () Bool)

(declare-fun e!4220986 () Bool)

(assert (=> b!7021823 (= e!4220986 tp_is_empty!44025)))

(declare-fun b!7021824 () Bool)

(declare-fun tp!1934365 () Bool)

(declare-fun tp!1934363 () Bool)

(assert (=> b!7021824 (= e!4220986 (and tp!1934365 tp!1934363))))

(declare-fun b!7021826 () Bool)

(declare-fun tp!1934362 () Bool)

(declare-fun tp!1934364 () Bool)

(assert (=> b!7021826 (= e!4220986 (and tp!1934362 tp!1934364))))

(assert (=> b!7021698 (= tp!1934327 e!4220986)))

(declare-fun b!7021825 () Bool)

(declare-fun tp!1934361 () Bool)

(assert (=> b!7021825 (= e!4220986 tp!1934361)))

(assert (= (and b!7021698 (is-ElementMatch!17400 (h!74066 (exprs!6896 ct2!306)))) b!7021823))

(assert (= (and b!7021698 (is-Concat!26245 (h!74066 (exprs!6896 ct2!306)))) b!7021824))

(assert (= (and b!7021698 (is-Star!17400 (h!74066 (exprs!6896 ct2!306)))) b!7021825))

(assert (= (and b!7021698 (is-Union!17400 (h!74066 (exprs!6896 ct2!306)))) b!7021826))

(declare-fun b!7021827 () Bool)

(declare-fun e!4220987 () Bool)

(declare-fun tp!1934366 () Bool)

(declare-fun tp!1934367 () Bool)

(assert (=> b!7021827 (= e!4220987 (and tp!1934366 tp!1934367))))

(assert (=> b!7021698 (= tp!1934328 e!4220987)))

(assert (= (and b!7021698 (is-Cons!67618 (t!381497 (exprs!6896 ct2!306)))) b!7021827))

(declare-fun condSetEmpty!48763 () Bool)

(assert (=> setNonEmpty!48759 (= condSetEmpty!48763 (= setRest!48759 (as set.empty (Set Context!12792))))))

(declare-fun setRes!48763 () Bool)

(assert (=> setNonEmpty!48759 (= tp!1934318 setRes!48763)))

(declare-fun setIsEmpty!48763 () Bool)

(assert (=> setIsEmpty!48763 setRes!48763))

(declare-fun setElem!48763 () Context!12792)

(declare-fun setNonEmpty!48763 () Bool)

(declare-fun tp!1934368 () Bool)

(declare-fun e!4220988 () Bool)

(assert (=> setNonEmpty!48763 (= setRes!48763 (and tp!1934368 (inv!86360 setElem!48763) e!4220988))))

(declare-fun setRest!48763 () (Set Context!12792))

(assert (=> setNonEmpty!48763 (= setRest!48759 (set.union (set.insert setElem!48763 (as set.empty (Set Context!12792))) setRest!48763))))

(declare-fun b!7021828 () Bool)

(declare-fun tp!1934369 () Bool)

(assert (=> b!7021828 (= e!4220988 tp!1934369)))

(assert (= (and setNonEmpty!48759 condSetEmpty!48763) setIsEmpty!48763))

(assert (= (and setNonEmpty!48759 (not condSetEmpty!48763)) setNonEmpty!48763))

(assert (= setNonEmpty!48763 b!7021828))

(declare-fun m!7723792 () Bool)

(assert (=> setNonEmpty!48763 m!7723792))

(declare-fun b!7021829 () Bool)

(declare-fun e!4220989 () Bool)

(declare-fun tp!1934370 () Bool)

(declare-fun tp!1934371 () Bool)

(assert (=> b!7021829 (= e!4220989 (and tp!1934370 tp!1934371))))

(assert (=> b!7021688 (= tp!1934319 e!4220989)))

(assert (= (and b!7021688 (is-Cons!67618 (exprs!6896 setElem!48759))) b!7021829))

(declare-fun b!7021830 () Bool)

(declare-fun e!4220990 () Bool)

(declare-fun tp!1934372 () Bool)

(assert (=> b!7021830 (= e!4220990 (and tp_is_empty!44025 tp!1934372))))

(assert (=> b!7021693 (= tp!1934322 e!4220990)))

(assert (= (and b!7021693 (is-Cons!67619 (t!381498 (t!381498 s!7408)))) b!7021830))

(declare-fun b!7021831 () Bool)

(declare-fun e!4220991 () Bool)

(assert (=> b!7021831 (= e!4220991 tp_is_empty!44025)))

(declare-fun b!7021832 () Bool)

(declare-fun tp!1934377 () Bool)

(declare-fun tp!1934375 () Bool)

(assert (=> b!7021832 (= e!4220991 (and tp!1934377 tp!1934375))))

(declare-fun b!7021834 () Bool)

(declare-fun tp!1934374 () Bool)

(declare-fun tp!1934376 () Bool)

(assert (=> b!7021834 (= e!4220991 (and tp!1934374 tp!1934376))))

(assert (=> b!7021699 (= tp!1934329 e!4220991)))

(declare-fun b!7021833 () Bool)

(declare-fun tp!1934373 () Bool)

(assert (=> b!7021833 (= e!4220991 tp!1934373)))

(assert (= (and b!7021699 (is-ElementMatch!17400 (h!74066 (exprs!6896 setElem!48753)))) b!7021831))

(assert (= (and b!7021699 (is-Concat!26245 (h!74066 (exprs!6896 setElem!48753)))) b!7021832))

(assert (= (and b!7021699 (is-Star!17400 (h!74066 (exprs!6896 setElem!48753)))) b!7021833))

(assert (= (and b!7021699 (is-Union!17400 (h!74066 (exprs!6896 setElem!48753)))) b!7021834))

(declare-fun b!7021835 () Bool)

(declare-fun e!4220992 () Bool)

(declare-fun tp!1934378 () Bool)

(declare-fun tp!1934379 () Bool)

(assert (=> b!7021835 (= e!4220992 (and tp!1934378 tp!1934379))))

(assert (=> b!7021699 (= tp!1934330 e!4220992)))

(assert (= (and b!7021699 (is-Cons!67618 (t!381497 (exprs!6896 setElem!48753)))) b!7021835))

(declare-fun b_lambda!265173 () Bool)

(assert (= b_lambda!265169 (or d!2188720 b_lambda!265173)))

(declare-fun bs!1867752 () Bool)

(declare-fun d!2188810 () Bool)

(assert (= bs!1867752 (and d!2188810 d!2188720)))

(assert (=> bs!1867752 (= (dynLambda!27241 lambda!411642 (h!74066 (exprs!6896 ct2!306))) (validRegex!8919 (h!74066 (exprs!6896 ct2!306))))))

(declare-fun m!7723794 () Bool)

(assert (=> bs!1867752 m!7723794))

(assert (=> b!7021795 d!2188810))

(declare-fun b_lambda!265175 () Bool)

(assert (= b_lambda!265159 (or b!7021633 b_lambda!265175)))

(declare-fun bs!1867753 () Bool)

(declare-fun d!2188812 () Bool)

(assert (= bs!1867753 (and d!2188812 b!7021633)))

(assert (=> bs!1867753 (= (dynLambda!27241 lambda!411620 (h!74066 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))))) (validRegex!8919 (h!74066 (t!381497 (exprs!6896 (mapPost2!247 z1!570 lambda!411619 lt!2512216))))))))

(declare-fun m!7723796 () Bool)

(assert (=> bs!1867753 m!7723796))

(assert (=> b!7021732 d!2188812))

(declare-fun b_lambda!265177 () Bool)

(assert (= b_lambda!265167 (or d!2188714 b_lambda!265177)))

(declare-fun bs!1867754 () Bool)

(declare-fun d!2188814 () Bool)

(assert (= bs!1867754 (and d!2188814 d!2188714)))

(assert (=> bs!1867754 (= (dynLambda!27241 lambda!411636 (h!74066 (exprs!6896 setElem!48753))) (validRegex!8919 (h!74066 (exprs!6896 setElem!48753))))))

(declare-fun m!7723798 () Bool)

(assert (=> bs!1867754 m!7723798))

(assert (=> b!7021793 d!2188814))

(declare-fun b_lambda!265179 () Bool)

(assert (= b_lambda!265165 (or b!7021633 b_lambda!265179)))

(declare-fun bs!1867755 () Bool)

(declare-fun d!2188816 () Bool)

(assert (= bs!1867755 (and d!2188816 b!7021633)))

(declare-fun lt!2512265 () Unit!161466)

(assert (=> bs!1867755 (= lt!2512265 (lemmaConcatPreservesForall!728 (exprs!6896 a!13089) (exprs!6896 ct2!306) lambda!411620))))

(assert (=> bs!1867755 (= (dynLambda!27242 lambda!411619 a!13089) (Context!12793 (++!15436 (exprs!6896 a!13089) (exprs!6896 ct2!306))))))

(declare-fun m!7723800 () Bool)

(assert (=> bs!1867755 m!7723800))

(declare-fun m!7723802 () Bool)

(assert (=> bs!1867755 m!7723802))

(assert (=> d!2188776 d!2188816))

(declare-fun b_lambda!265181 () Bool)

(assert (= b_lambda!265163 (or b!7021627 b_lambda!265181)))

(declare-fun bs!1867756 () Bool)

(declare-fun d!2188818 () Bool)

(assert (= bs!1867756 (and d!2188818 b!7021627)))

(assert (=> bs!1867756 (= (dynLambda!27240 lambda!411618 (h!74070 (toList!10757 lt!2512215))) (nullableContext!60 (h!74070 (toList!10757 lt!2512215))))))

(declare-fun m!7723804 () Bool)

(assert (=> bs!1867756 m!7723804))

(assert (=> b!7021776 d!2188818))

(declare-fun b_lambda!265183 () Bool)

(assert (= b_lambda!265161 (or b!7021627 b_lambda!265183)))

(declare-fun bs!1867757 () Bool)

(declare-fun d!2188820 () Bool)

(assert (= bs!1867757 (and d!2188820 b!7021627)))

(assert (=> bs!1867757 (= (dynLambda!27240 lambda!411618 lt!2512253) (nullableContext!60 lt!2512253))))

(declare-fun m!7723806 () Bool)

(assert (=> bs!1867757 m!7723806))

(assert (=> d!2188772 d!2188820))

(declare-fun b_lambda!265185 () Bool)

(assert (= b_lambda!265171 (or d!2188724 b_lambda!265185)))

(declare-fun bs!1867758 () Bool)

(declare-fun d!2188822 () Bool)

(assert (= bs!1867758 (and d!2188822 d!2188724)))

(assert (=> bs!1867758 (= (dynLambda!27241 lambda!411645 (h!74066 (exprs!6896 lt!2512216))) (nullable!7139 (h!74066 (exprs!6896 lt!2512216))))))

(declare-fun m!7723808 () Bool)

(assert (=> bs!1867758 m!7723808))

(assert (=> b!7021797 d!2188822))

(push 1)

(assert (not b!7021824))

(assert (not b!7021833))

(assert (not b!7021798))

(assert (not d!2188792))

(assert (not b!7021835))

(assert (not d!2188804))

(assert tp_is_empty!44025)

(assert (not d!2188776))

(assert (not b!7021778))

(assert (not b!7021796))

(assert (not b!7021828))

(assert (not d!2188800))

(assert (not d!2188778))

(assert (not setNonEmpty!48763))

(assert (not bm!637630))

(assert (not b!7021832))

(assert (not b!7021733))

(assert (not b!7021829))

(assert (not b!7021794))

(assert (not d!2188774))

(assert (not b!7021811))

(assert (not bs!1867757))

(assert (not bs!1867753))

(assert (not b!7021810))

(assert (not b!7021775))

(assert (not b_lambda!265147))

(assert (not d!2188806))

(assert (not d!2188796))

(assert (not b_lambda!265185))

(assert (not b_lambda!265181))

(assert (not d!2188782))

(assert (not b_lambda!265145))

(assert (not b!7021827))

(assert (not d!2188808))

(assert (not d!2188772))

(assert (not bs!1867758))

(assert (not d!2188770))

(assert (not b!7021781))

(assert (not b_lambda!265177))

(assert (not bm!637631))

(assert (not b!7021830))

(assert (not bs!1867754))

(assert (not b_lambda!265173))

(assert (not bs!1867755))

(assert (not bs!1867756))

(assert (not b!7021825))

(assert (not b!7021834))

(assert (not b!7021787))

(assert (not b!7021757))

(assert (not d!2188802))

(assert (not b!7021773))

(assert (not b_lambda!265143))

(assert (not b!7021789))

(assert (not bs!1867752))

(assert (not b_lambda!265175))

(assert (not b_lambda!265183))

(assert (not b_lambda!265179))

(assert (not b!7021826))

(assert (not b!7021790))

(assert (not d!2188780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

