; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669770 () Bool)

(assert start!669770)

(declare-fun b!6980599 () Bool)

(assert (=> b!6980599 true))

(declare-fun b!6980597 () Bool)

(assert (=> b!6980597 true))

(declare-fun b!6980595 () Bool)

(assert (=> b!6980595 true))

(declare-fun e!4195440 () Bool)

(declare-fun e!4195441 () Bool)

(assert (=> b!6980595 (= e!4195440 e!4195441)))

(declare-fun res!2846564 () Bool)

(assert (=> b!6980595 (=> res!2846564 e!4195441)))

(declare-datatypes ((C!34614 0))(
  ( (C!34615 (val!27009 Int)) )
))
(declare-datatypes ((Regex!17172 0))(
  ( (ElementMatch!17172 (c!1293991 C!34614)) (Concat!26017 (regOne!34856 Regex!17172) (regTwo!34856 Regex!17172)) (EmptyExpr!17172) (Star!17172 (reg!17501 Regex!17172)) (EmptyLang!17172) (Union!17172 (regOne!34857 Regex!17172) (regTwo!34857 Regex!17172)) )
))
(declare-datatypes ((List!67061 0))(
  ( (Nil!66937) (Cons!66937 (h!73385 Regex!17172) (t!380804 List!67061)) )
))
(declare-datatypes ((Context!12336 0))(
  ( (Context!12337 (exprs!6668 List!67061)) )
))
(declare-fun lt!2481612 () (Set Context!12336))

(declare-datatypes ((List!67062 0))(
  ( (Nil!66938) (Cons!66938 (h!73386 C!34614) (t!380805 List!67062)) )
))
(declare-fun s!7408 () List!67062)

(declare-fun lt!2481609 () (Set Context!12336))

(declare-fun derivationStepZipper!2652 ((Set Context!12336) C!34614) (Set Context!12336))

(assert (=> b!6980595 (= res!2846564 (not (= (derivationStepZipper!2652 lt!2481609 (h!73386 s!7408)) lt!2481612)))))

(declare-fun lambda!399073 () Int)

(declare-fun lt!2481616 () Context!12336)

(declare-fun flatMap!2158 ((Set Context!12336) Int) (Set Context!12336))

(declare-fun derivationStepZipperUp!1822 (Context!12336 C!34614) (Set Context!12336))

(assert (=> b!6980595 (= (flatMap!2158 lt!2481609 lambda!399073) (derivationStepZipperUp!1822 lt!2481616 (h!73386 s!7408)))))

(declare-datatypes ((Unit!160996 0))(
  ( (Unit!160997) )
))
(declare-fun lt!2481606 () Unit!160996)

(declare-fun lemmaFlatMapOnSingletonSet!1673 ((Set Context!12336) Context!12336 Int) Unit!160996)

(assert (=> b!6980595 (= lt!2481606 (lemmaFlatMapOnSingletonSet!1673 lt!2481609 lt!2481616 lambda!399073))))

(assert (=> b!6980595 (= lt!2481612 (derivationStepZipperUp!1822 lt!2481616 (h!73386 s!7408)))))

(declare-fun lambda!399072 () Int)

(declare-fun ct2!306 () Context!12336)

(declare-fun lt!2481608 () Unit!160996)

(declare-fun lt!2481615 () Context!12336)

(declare-fun lemmaConcatPreservesForall!508 (List!67061 List!67061 Int) Unit!160996)

(assert (=> b!6980595 (= lt!2481608 (lemmaConcatPreservesForall!508 (exprs!6668 lt!2481615) (exprs!6668 ct2!306) lambda!399072))))

(declare-fun b!6980596 () Bool)

(declare-fun e!4195446 () Bool)

(assert (=> b!6980596 (= e!4195441 e!4195446)))

(declare-fun res!2846563 () Bool)

(assert (=> b!6980596 (=> res!2846563 e!4195446)))

(declare-fun nullable!6932 (Regex!17172) Bool)

(assert (=> b!6980596 (= res!2846563 (not (nullable!6932 (h!73385 (exprs!6668 lt!2481615)))))))

(declare-fun lt!2481611 () List!67061)

(declare-fun tail!13146 (List!67061) List!67061)

(assert (=> b!6980596 (= lt!2481611 (tail!13146 (exprs!6668 lt!2481615)))))

(declare-fun setRes!47522 () Bool)

(declare-fun e!4195447 () Bool)

(declare-fun setNonEmpty!47522 () Bool)

(declare-fun setElem!47522 () Context!12336)

(declare-fun tp!1928202 () Bool)

(declare-fun inv!85790 (Context!12336) Bool)

(assert (=> setNonEmpty!47522 (= setRes!47522 (and tp!1928202 (inv!85790 setElem!47522) e!4195447))))

(declare-fun z1!570 () (Set Context!12336))

(declare-fun setRest!47522 () (Set Context!12336))

(assert (=> setNonEmpty!47522 (= z1!570 (set.union (set.insert setElem!47522 (as set.empty (Set Context!12336))) setRest!47522))))

(declare-fun e!4195439 () Bool)

(declare-fun e!4195444 () Bool)

(assert (=> b!6980597 (= e!4195439 e!4195444)))

(declare-fun res!2846568 () Bool)

(assert (=> b!6980597 (=> res!2846568 e!4195444)))

(declare-fun lt!2481607 () Context!12336)

(assert (=> b!6980597 (= res!2846568 (or (not (= lt!2481616 lt!2481607)) (not (set.member lt!2481615 z1!570))))))

(declare-fun ++!15117 (List!67061 List!67061) List!67061)

(assert (=> b!6980597 (= lt!2481616 (Context!12337 (++!15117 (exprs!6668 lt!2481615) (exprs!6668 ct2!306))))))

(declare-fun lt!2481619 () Unit!160996)

(assert (=> b!6980597 (= lt!2481619 (lemmaConcatPreservesForall!508 (exprs!6668 lt!2481615) (exprs!6668 ct2!306) lambda!399072))))

(declare-fun lambda!399071 () Int)

(declare-fun mapPost2!27 ((Set Context!12336) Int Context!12336) Context!12336)

(assert (=> b!6980597 (= lt!2481615 (mapPost2!27 z1!570 lambda!399071 lt!2481607))))

(declare-fun b!6980598 () Bool)

(declare-fun res!2846560 () Bool)

(assert (=> b!6980598 (=> res!2846560 e!4195441)))

(declare-fun isEmpty!39070 (List!67061) Bool)

(assert (=> b!6980598 (= res!2846560 (isEmpty!39070 (exprs!6668 lt!2481615)))))

(declare-fun res!2846569 () Bool)

(declare-fun e!4195443 () Bool)

(assert (=> start!669770 (=> (not res!2846569) (not e!4195443))))

(declare-fun lt!2481618 () (Set Context!12336))

(declare-fun matchZipper!2712 ((Set Context!12336) List!67062) Bool)

(assert (=> start!669770 (= res!2846569 (matchZipper!2712 lt!2481618 s!7408))))

(declare-fun appendTo!293 ((Set Context!12336) Context!12336) (Set Context!12336))

(assert (=> start!669770 (= lt!2481618 (appendTo!293 z1!570 ct2!306))))

(assert (=> start!669770 e!4195443))

(declare-fun condSetEmpty!47522 () Bool)

(assert (=> start!669770 (= condSetEmpty!47522 (= z1!570 (as set.empty (Set Context!12336))))))

(assert (=> start!669770 setRes!47522))

(declare-fun e!4195442 () Bool)

(assert (=> start!669770 (and (inv!85790 ct2!306) e!4195442)))

(declare-fun e!4195445 () Bool)

(assert (=> start!669770 e!4195445))

(assert (=> b!6980599 (= e!4195443 (not e!4195439))))

(declare-fun res!2846565 () Bool)

(assert (=> b!6980599 (=> res!2846565 e!4195439)))

(declare-fun lt!2481617 () (Set Context!12336))

(assert (=> b!6980599 (= res!2846565 (not (matchZipper!2712 lt!2481617 s!7408)))))

(assert (=> b!6980599 (= lt!2481617 (set.insert lt!2481607 (as set.empty (Set Context!12336))))))

(declare-fun lambda!399070 () Int)

(declare-fun getWitness!1040 ((Set Context!12336) Int) Context!12336)

(assert (=> b!6980599 (= lt!2481607 (getWitness!1040 lt!2481618 lambda!399070))))

(declare-datatypes ((List!67063 0))(
  ( (Nil!66939) (Cons!66939 (h!73387 Context!12336) (t!380806 List!67063)) )
))
(declare-fun lt!2481613 () List!67063)

(declare-fun exists!2929 (List!67063 Int) Bool)

(assert (=> b!6980599 (exists!2929 lt!2481613 lambda!399070)))

(declare-fun lt!2481614 () Unit!160996)

(declare-fun lemmaZipperMatchesExistsMatchingContext!141 (List!67063 List!67062) Unit!160996)

(assert (=> b!6980599 (= lt!2481614 (lemmaZipperMatchesExistsMatchingContext!141 lt!2481613 s!7408))))

(declare-fun toList!10532 ((Set Context!12336)) List!67063)

(assert (=> b!6980599 (= lt!2481613 (toList!10532 lt!2481618))))

(declare-fun b!6980600 () Bool)

(declare-fun res!2846567 () Bool)

(assert (=> b!6980600 (=> (not res!2846567) (not e!4195443))))

(assert (=> b!6980600 (= res!2846567 (is-Cons!66938 s!7408))))

(declare-fun b!6980601 () Bool)

(declare-fun tp!1928203 () Bool)

(assert (=> b!6980601 (= e!4195442 tp!1928203)))

(declare-fun b!6980602 () Bool)

(declare-fun res!2846566 () Bool)

(assert (=> b!6980602 (=> res!2846566 e!4195441)))

(assert (=> b!6980602 (= res!2846566 (not (is-Cons!66937 (exprs!6668 lt!2481615))))))

(declare-fun b!6980603 () Bool)

(assert (=> b!6980603 (= e!4195444 e!4195440)))

(declare-fun res!2846562 () Bool)

(assert (=> b!6980603 (=> res!2846562 e!4195440)))

(assert (=> b!6980603 (= res!2846562 (not (= lt!2481609 lt!2481617)))))

(assert (=> b!6980603 (= lt!2481609 (set.insert lt!2481616 (as set.empty (Set Context!12336))))))

(declare-fun lt!2481604 () Unit!160996)

(assert (=> b!6980603 (= lt!2481604 (lemmaConcatPreservesForall!508 (exprs!6668 lt!2481615) (exprs!6668 ct2!306) lambda!399072))))

(declare-fun b!6980604 () Bool)

(declare-fun e!4195438 () Bool)

(declare-fun forall!16058 (List!67061 Int) Bool)

(assert (=> b!6980604 (= e!4195438 (forall!16058 lt!2481611 lambda!399072))))

(declare-fun b!6980605 () Bool)

(declare-fun tp_is_empty!43569 () Bool)

(declare-fun tp!1928204 () Bool)

(assert (=> b!6980605 (= e!4195445 (and tp_is_empty!43569 tp!1928204))))

(declare-fun b!6980606 () Bool)

(assert (=> b!6980606 (= e!4195446 e!4195438)))

(declare-fun res!2846559 () Bool)

(assert (=> b!6980606 (=> res!2846559 e!4195438)))

(declare-fun lt!2481620 () Context!12336)

(declare-fun derivationStepZipperDown!1890 (Regex!17172 Context!12336 C!34614) (Set Context!12336))

(assert (=> b!6980606 (= res!2846559 (not (= lt!2481612 (set.union (derivationStepZipperDown!1890 (h!73385 (exprs!6668 lt!2481615)) lt!2481620 (h!73386 s!7408)) (derivationStepZipperUp!1822 lt!2481620 (h!73386 s!7408))))))))

(assert (=> b!6980606 (= lt!2481620 (Context!12337 (++!15117 lt!2481611 (exprs!6668 ct2!306))))))

(declare-fun lt!2481605 () Unit!160996)

(assert (=> b!6980606 (= lt!2481605 (lemmaConcatPreservesForall!508 lt!2481611 (exprs!6668 ct2!306) lambda!399072))))

(declare-fun lt!2481610 () Unit!160996)

(assert (=> b!6980606 (= lt!2481610 (lemmaConcatPreservesForall!508 lt!2481611 (exprs!6668 ct2!306) lambda!399072))))

(declare-fun setIsEmpty!47522 () Bool)

(assert (=> setIsEmpty!47522 setRes!47522))

(declare-fun b!6980607 () Bool)

(declare-fun res!2846561 () Bool)

(assert (=> b!6980607 (=> res!2846561 e!4195439)))

(assert (=> b!6980607 (= res!2846561 (not (set.member lt!2481607 lt!2481618)))))

(declare-fun b!6980608 () Bool)

(declare-fun tp!1928201 () Bool)

(assert (=> b!6980608 (= e!4195447 tp!1928201)))

(assert (= (and start!669770 res!2846569) b!6980600))

(assert (= (and b!6980600 res!2846567) b!6980599))

(assert (= (and b!6980599 (not res!2846565)) b!6980607))

(assert (= (and b!6980607 (not res!2846561)) b!6980597))

(assert (= (and b!6980597 (not res!2846568)) b!6980603))

(assert (= (and b!6980603 (not res!2846562)) b!6980595))

(assert (= (and b!6980595 (not res!2846564)) b!6980602))

(assert (= (and b!6980602 (not res!2846566)) b!6980598))

(assert (= (and b!6980598 (not res!2846560)) b!6980596))

(assert (= (and b!6980596 (not res!2846563)) b!6980606))

(assert (= (and b!6980606 (not res!2846559)) b!6980604))

(assert (= (and start!669770 condSetEmpty!47522) setIsEmpty!47522))

(assert (= (and start!669770 (not condSetEmpty!47522)) setNonEmpty!47522))

(assert (= setNonEmpty!47522 b!6980608))

(assert (= start!669770 b!6980601))

(assert (= (and start!669770 (is-Cons!66938 s!7408)) b!6980605))

(declare-fun m!7666914 () Bool)

(assert (=> b!6980596 m!7666914))

(declare-fun m!7666916 () Bool)

(assert (=> b!6980596 m!7666916))

(declare-fun m!7666918 () Bool)

(assert (=> start!669770 m!7666918))

(declare-fun m!7666920 () Bool)

(assert (=> start!669770 m!7666920))

(declare-fun m!7666922 () Bool)

(assert (=> start!669770 m!7666922))

(declare-fun m!7666924 () Bool)

(assert (=> setNonEmpty!47522 m!7666924))

(declare-fun m!7666926 () Bool)

(assert (=> b!6980595 m!7666926))

(declare-fun m!7666928 () Bool)

(assert (=> b!6980595 m!7666928))

(declare-fun m!7666930 () Bool)

(assert (=> b!6980595 m!7666930))

(declare-fun m!7666932 () Bool)

(assert (=> b!6980595 m!7666932))

(declare-fun m!7666934 () Bool)

(assert (=> b!6980595 m!7666934))

(declare-fun m!7666936 () Bool)

(assert (=> b!6980603 m!7666936))

(assert (=> b!6980603 m!7666928))

(declare-fun m!7666938 () Bool)

(assert (=> b!6980599 m!7666938))

(declare-fun m!7666940 () Bool)

(assert (=> b!6980599 m!7666940))

(declare-fun m!7666942 () Bool)

(assert (=> b!6980599 m!7666942))

(declare-fun m!7666944 () Bool)

(assert (=> b!6980599 m!7666944))

(declare-fun m!7666946 () Bool)

(assert (=> b!6980599 m!7666946))

(declare-fun m!7666948 () Bool)

(assert (=> b!6980599 m!7666948))

(declare-fun m!7666950 () Bool)

(assert (=> b!6980607 m!7666950))

(declare-fun m!7666952 () Bool)

(assert (=> b!6980606 m!7666952))

(declare-fun m!7666954 () Bool)

(assert (=> b!6980606 m!7666954))

(assert (=> b!6980606 m!7666954))

(declare-fun m!7666956 () Bool)

(assert (=> b!6980606 m!7666956))

(declare-fun m!7666958 () Bool)

(assert (=> b!6980606 m!7666958))

(declare-fun m!7666960 () Bool)

(assert (=> b!6980598 m!7666960))

(declare-fun m!7666962 () Bool)

(assert (=> b!6980597 m!7666962))

(declare-fun m!7666964 () Bool)

(assert (=> b!6980597 m!7666964))

(assert (=> b!6980597 m!7666928))

(declare-fun m!7666966 () Bool)

(assert (=> b!6980597 m!7666966))

(declare-fun m!7666968 () Bool)

(assert (=> b!6980604 m!7666968))

(push 1)

(assert tp_is_empty!43569)

(assert (not b!6980603))

(assert (not b!6980596))

(assert (not b!6980595))

(assert (not b!6980599))

(assert (not b!6980598))

(assert (not b!6980604))

(assert (not b!6980601))

(assert (not b!6980605))

(assert (not b!6980597))

(assert (not setNonEmpty!47522))

(assert (not b!6980608))

(assert (not b!6980606))

(assert (not start!669770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2173818 () Bool)

(declare-fun res!2846609 () Bool)

(declare-fun e!4195482 () Bool)

(assert (=> d!2173818 (=> res!2846609 e!4195482)))

(assert (=> d!2173818 (= res!2846609 (is-Nil!66937 lt!2481611))))

(assert (=> d!2173818 (= (forall!16058 lt!2481611 lambda!399072) e!4195482)))

(declare-fun b!6980667 () Bool)

(declare-fun e!4195483 () Bool)

(assert (=> b!6980667 (= e!4195482 e!4195483)))

(declare-fun res!2846610 () Bool)

(assert (=> b!6980667 (=> (not res!2846610) (not e!4195483))))

(declare-fun dynLambda!26744 (Int Regex!17172) Bool)

(assert (=> b!6980667 (= res!2846610 (dynLambda!26744 lambda!399072 (h!73385 lt!2481611)))))

(declare-fun b!6980668 () Bool)

(assert (=> b!6980668 (= e!4195483 (forall!16058 (t!380804 lt!2481611) lambda!399072))))

(assert (= (and d!2173818 (not res!2846609)) b!6980667))

(assert (= (and b!6980667 res!2846610) b!6980668))

(declare-fun b_lambda!261607 () Bool)

(assert (=> (not b_lambda!261607) (not b!6980667)))

(declare-fun m!7667026 () Bool)

(assert (=> b!6980667 m!7667026))

(declare-fun m!7667028 () Bool)

(assert (=> b!6980668 m!7667028))

(assert (=> b!6980604 d!2173818))

(declare-fun bs!1860799 () Bool)

(declare-fun d!2173820 () Bool)

(assert (= bs!1860799 (and d!2173820 b!6980599)))

(declare-fun lambda!399102 () Int)

(assert (=> bs!1860799 (= lambda!399102 lambda!399070)))

(assert (=> d!2173820 true))

(assert (=> d!2173820 (exists!2929 lt!2481613 lambda!399102)))

(declare-fun lt!2481676 () Unit!160996)

(declare-fun choose!52031 (List!67063 List!67062) Unit!160996)

(assert (=> d!2173820 (= lt!2481676 (choose!52031 lt!2481613 s!7408))))

(declare-fun content!13197 (List!67063) (Set Context!12336))

(assert (=> d!2173820 (matchZipper!2712 (content!13197 lt!2481613) s!7408)))

(assert (=> d!2173820 (= (lemmaZipperMatchesExistsMatchingContext!141 lt!2481613 s!7408) lt!2481676)))

(declare-fun bs!1860800 () Bool)

(assert (= bs!1860800 d!2173820))

(declare-fun m!7667030 () Bool)

(assert (=> bs!1860800 m!7667030))

(declare-fun m!7667032 () Bool)

(assert (=> bs!1860800 m!7667032))

(declare-fun m!7667034 () Bool)

(assert (=> bs!1860800 m!7667034))

(assert (=> bs!1860800 m!7667034))

(declare-fun m!7667036 () Bool)

(assert (=> bs!1860800 m!7667036))

(assert (=> b!6980599 d!2173820))

(declare-fun bs!1860801 () Bool)

(declare-fun d!2173822 () Bool)

(assert (= bs!1860801 (and d!2173822 b!6980599)))

(declare-fun lambda!399105 () Int)

(assert (=> bs!1860801 (not (= lambda!399105 lambda!399070))))

(declare-fun bs!1860802 () Bool)

(assert (= bs!1860802 (and d!2173822 d!2173820)))

(assert (=> bs!1860802 (not (= lambda!399105 lambda!399102))))

(assert (=> d!2173822 true))

(declare-fun order!27841 () Int)

(declare-fun dynLambda!26745 (Int Int) Int)

(assert (=> d!2173822 (< (dynLambda!26745 order!27841 lambda!399070) (dynLambda!26745 order!27841 lambda!399105))))

(declare-fun forall!16060 (List!67063 Int) Bool)

(assert (=> d!2173822 (= (exists!2929 lt!2481613 lambda!399070) (not (forall!16060 lt!2481613 lambda!399105)))))

(declare-fun bs!1860803 () Bool)

(assert (= bs!1860803 d!2173822))

(declare-fun m!7667038 () Bool)

(assert (=> bs!1860803 m!7667038))

(assert (=> b!6980599 d!2173822))

(declare-fun d!2173826 () Bool)

(declare-fun e!4195486 () Bool)

(assert (=> d!2173826 e!4195486))

(declare-fun res!2846613 () Bool)

(assert (=> d!2173826 (=> (not res!2846613) (not e!4195486))))

(declare-fun lt!2481679 () List!67063)

(declare-fun noDuplicate!2492 (List!67063) Bool)

(assert (=> d!2173826 (= res!2846613 (noDuplicate!2492 lt!2481679))))

(declare-fun choose!52032 ((Set Context!12336)) List!67063)

(assert (=> d!2173826 (= lt!2481679 (choose!52032 lt!2481618))))

(assert (=> d!2173826 (= (toList!10532 lt!2481618) lt!2481679)))

(declare-fun b!6980673 () Bool)

(assert (=> b!6980673 (= e!4195486 (= (content!13197 lt!2481679) lt!2481618))))

(assert (= (and d!2173826 res!2846613) b!6980673))

(declare-fun m!7667040 () Bool)

(assert (=> d!2173826 m!7667040))

(declare-fun m!7667042 () Bool)

(assert (=> d!2173826 m!7667042))

(declare-fun m!7667044 () Bool)

(assert (=> b!6980673 m!7667044))

(assert (=> b!6980599 d!2173826))

(declare-fun d!2173828 () Bool)

(declare-fun e!4195491 () Bool)

(assert (=> d!2173828 e!4195491))

(declare-fun res!2846616 () Bool)

(assert (=> d!2173828 (=> (not res!2846616) (not e!4195491))))

(declare-fun lt!2481682 () Context!12336)

(declare-fun dynLambda!26746 (Int Context!12336) Bool)

(assert (=> d!2173828 (= res!2846616 (dynLambda!26746 lambda!399070 lt!2481682))))

(declare-fun getWitness!1042 (List!67063 Int) Context!12336)

(assert (=> d!2173828 (= lt!2481682 (getWitness!1042 (toList!10532 lt!2481618) lambda!399070))))

(declare-fun exists!2931 ((Set Context!12336) Int) Bool)

(assert (=> d!2173828 (exists!2931 lt!2481618 lambda!399070)))

(assert (=> d!2173828 (= (getWitness!1040 lt!2481618 lambda!399070) lt!2481682)))

(declare-fun b!6980680 () Bool)

(assert (=> b!6980680 (= e!4195491 (set.member lt!2481682 lt!2481618))))

(assert (= (and d!2173828 res!2846616) b!6980680))

(declare-fun b_lambda!261609 () Bool)

(assert (=> (not b_lambda!261609) (not d!2173828)))

(declare-fun m!7667046 () Bool)

(assert (=> d!2173828 m!7667046))

(assert (=> d!2173828 m!7666946))

(assert (=> d!2173828 m!7666946))

(declare-fun m!7667048 () Bool)

(assert (=> d!2173828 m!7667048))

(declare-fun m!7667050 () Bool)

(assert (=> d!2173828 m!7667050))

(declare-fun m!7667052 () Bool)

(assert (=> b!6980680 m!7667052))

(assert (=> b!6980599 d!2173828))

(declare-fun d!2173830 () Bool)

(declare-fun c!1294008 () Bool)

(declare-fun isEmpty!39072 (List!67062) Bool)

(assert (=> d!2173830 (= c!1294008 (isEmpty!39072 s!7408))))

(declare-fun e!4195495 () Bool)

(assert (=> d!2173830 (= (matchZipper!2712 lt!2481617 s!7408) e!4195495)))

(declare-fun b!6980687 () Bool)

(declare-fun nullableZipper!2401 ((Set Context!12336)) Bool)

(assert (=> b!6980687 (= e!4195495 (nullableZipper!2401 lt!2481617))))

(declare-fun b!6980688 () Bool)

(declare-fun head!14073 (List!67062) C!34614)

(declare-fun tail!13148 (List!67062) List!67062)

(assert (=> b!6980688 (= e!4195495 (matchZipper!2712 (derivationStepZipper!2652 lt!2481617 (head!14073 s!7408)) (tail!13148 s!7408)))))

(assert (= (and d!2173830 c!1294008) b!6980687))

(assert (= (and d!2173830 (not c!1294008)) b!6980688))

(declare-fun m!7667066 () Bool)

(assert (=> d!2173830 m!7667066))

(declare-fun m!7667068 () Bool)

(assert (=> b!6980687 m!7667068))

(declare-fun m!7667070 () Bool)

(assert (=> b!6980688 m!7667070))

(assert (=> b!6980688 m!7667070))

(declare-fun m!7667072 () Bool)

(assert (=> b!6980688 m!7667072))

(declare-fun m!7667074 () Bool)

(assert (=> b!6980688 m!7667074))

(assert (=> b!6980688 m!7667072))

(assert (=> b!6980688 m!7667074))

(declare-fun m!7667076 () Bool)

(assert (=> b!6980688 m!7667076))

(assert (=> b!6980599 d!2173830))

(declare-fun d!2173834 () Bool)

(assert (=> d!2173834 (= (isEmpty!39070 (exprs!6668 lt!2481615)) (is-Nil!66937 (exprs!6668 lt!2481615)))))

(assert (=> b!6980598 d!2173834))

(declare-fun d!2173836 () Bool)

(declare-fun nullableFct!2604 (Regex!17172) Bool)

(assert (=> d!2173836 (= (nullable!6932 (h!73385 (exprs!6668 lt!2481615))) (nullableFct!2604 (h!73385 (exprs!6668 lt!2481615))))))

(declare-fun bs!1860804 () Bool)

(assert (= bs!1860804 d!2173836))

(declare-fun m!7667078 () Bool)

(assert (=> bs!1860804 m!7667078))

(assert (=> b!6980596 d!2173836))

(declare-fun d!2173838 () Bool)

(assert (=> d!2173838 (= (tail!13146 (exprs!6668 lt!2481615)) (t!380804 (exprs!6668 lt!2481615)))))

(assert (=> b!6980596 d!2173838))

(declare-fun d!2173840 () Bool)

(declare-fun choose!52033 ((Set Context!12336) Int) (Set Context!12336))

(assert (=> d!2173840 (= (flatMap!2158 lt!2481609 lambda!399073) (choose!52033 lt!2481609 lambda!399073))))

(declare-fun bs!1860805 () Bool)

(assert (= bs!1860805 d!2173840))

(declare-fun m!7667080 () Bool)

(assert (=> bs!1860805 m!7667080))

(assert (=> b!6980595 d!2173840))

(declare-fun b!6980699 () Bool)

(declare-fun e!4195504 () (Set Context!12336))

(assert (=> b!6980699 (= e!4195504 (as set.empty (Set Context!12336)))))

(declare-fun b!6980700 () Bool)

(declare-fun e!4195502 () (Set Context!12336))

(assert (=> b!6980700 (= e!4195502 e!4195504)))

(declare-fun c!1294014 () Bool)

(assert (=> b!6980700 (= c!1294014 (is-Cons!66937 (exprs!6668 lt!2481616)))))

(declare-fun bm!633416 () Bool)

(declare-fun call!633421 () (Set Context!12336))

(assert (=> bm!633416 (= call!633421 (derivationStepZipperDown!1890 (h!73385 (exprs!6668 lt!2481616)) (Context!12337 (t!380804 (exprs!6668 lt!2481616))) (h!73386 s!7408)))))

(declare-fun b!6980701 () Bool)

(assert (=> b!6980701 (= e!4195504 call!633421)))

(declare-fun b!6980702 () Bool)

(assert (=> b!6980702 (= e!4195502 (set.union call!633421 (derivationStepZipperUp!1822 (Context!12337 (t!380804 (exprs!6668 lt!2481616))) (h!73386 s!7408))))))

(declare-fun d!2173842 () Bool)

(declare-fun c!1294015 () Bool)

(declare-fun e!4195503 () Bool)

(assert (=> d!2173842 (= c!1294015 e!4195503)))

(declare-fun res!2846619 () Bool)

(assert (=> d!2173842 (=> (not res!2846619) (not e!4195503))))

(assert (=> d!2173842 (= res!2846619 (is-Cons!66937 (exprs!6668 lt!2481616)))))

(assert (=> d!2173842 (= (derivationStepZipperUp!1822 lt!2481616 (h!73386 s!7408)) e!4195502)))

(declare-fun b!6980703 () Bool)

(assert (=> b!6980703 (= e!4195503 (nullable!6932 (h!73385 (exprs!6668 lt!2481616))))))

(assert (= (and d!2173842 res!2846619) b!6980703))

(assert (= (and d!2173842 c!1294015) b!6980702))

(assert (= (and d!2173842 (not c!1294015)) b!6980700))

(assert (= (and b!6980700 c!1294014) b!6980701))

(assert (= (and b!6980700 (not c!1294014)) b!6980699))

(assert (= (or b!6980702 b!6980701) bm!633416))

(declare-fun m!7667082 () Bool)

(assert (=> bm!633416 m!7667082))

(declare-fun m!7667084 () Bool)

(assert (=> b!6980702 m!7667084))

(declare-fun m!7667086 () Bool)

(assert (=> b!6980703 m!7667086))

(assert (=> b!6980595 d!2173842))

(declare-fun d!2173844 () Bool)

(assert (=> d!2173844 (forall!16058 (++!15117 (exprs!6668 lt!2481615) (exprs!6668 ct2!306)) lambda!399072)))

(declare-fun lt!2481687 () Unit!160996)

(declare-fun choose!52034 (List!67061 List!67061 Int) Unit!160996)

(assert (=> d!2173844 (= lt!2481687 (choose!52034 (exprs!6668 lt!2481615) (exprs!6668 ct2!306) lambda!399072))))

(assert (=> d!2173844 (forall!16058 (exprs!6668 lt!2481615) lambda!399072)))

(assert (=> d!2173844 (= (lemmaConcatPreservesForall!508 (exprs!6668 lt!2481615) (exprs!6668 ct2!306) lambda!399072) lt!2481687)))

(declare-fun bs!1860806 () Bool)

(assert (= bs!1860806 d!2173844))

(assert (=> bs!1860806 m!7666964))

(assert (=> bs!1860806 m!7666964))

(declare-fun m!7667088 () Bool)

(assert (=> bs!1860806 m!7667088))

(declare-fun m!7667090 () Bool)

(assert (=> bs!1860806 m!7667090))

(declare-fun m!7667092 () Bool)

(assert (=> bs!1860806 m!7667092))

(assert (=> b!6980595 d!2173844))

(declare-fun d!2173846 () Bool)

(declare-fun dynLambda!26747 (Int Context!12336) (Set Context!12336))

(assert (=> d!2173846 (= (flatMap!2158 lt!2481609 lambda!399073) (dynLambda!26747 lambda!399073 lt!2481616))))

(declare-fun lt!2481690 () Unit!160996)

(declare-fun choose!52035 ((Set Context!12336) Context!12336 Int) Unit!160996)

(assert (=> d!2173846 (= lt!2481690 (choose!52035 lt!2481609 lt!2481616 lambda!399073))))

(assert (=> d!2173846 (= lt!2481609 (set.insert lt!2481616 (as set.empty (Set Context!12336))))))

(assert (=> d!2173846 (= (lemmaFlatMapOnSingletonSet!1673 lt!2481609 lt!2481616 lambda!399073) lt!2481690)))

(declare-fun b_lambda!261611 () Bool)

(assert (=> (not b_lambda!261611) (not d!2173846)))

(declare-fun bs!1860809 () Bool)

(assert (= bs!1860809 d!2173846))

(assert (=> bs!1860809 m!7666934))

(declare-fun m!7667096 () Bool)

(assert (=> bs!1860809 m!7667096))

(declare-fun m!7667098 () Bool)

(assert (=> bs!1860809 m!7667098))

(assert (=> bs!1860809 m!7666936))

(assert (=> b!6980595 d!2173846))

(declare-fun bs!1860812 () Bool)

(declare-fun d!2173850 () Bool)

(assert (= bs!1860812 (and d!2173850 b!6980595)))

(declare-fun lambda!399116 () Int)

(assert (=> bs!1860812 (= lambda!399116 lambda!399073)))

(assert (=> d!2173850 true))

(assert (=> d!2173850 (= (derivationStepZipper!2652 lt!2481609 (h!73386 s!7408)) (flatMap!2158 lt!2481609 lambda!399116))))

(declare-fun bs!1860813 () Bool)

(assert (= bs!1860813 d!2173850))

(declare-fun m!7667102 () Bool)

(assert (=> bs!1860813 m!7667102))

(assert (=> b!6980595 d!2173850))

(declare-fun bs!1860814 () Bool)

(declare-fun d!2173854 () Bool)

(assert (= bs!1860814 (and d!2173854 b!6980597)))

(declare-fun lambda!399119 () Int)

(assert (=> bs!1860814 (= lambda!399119 lambda!399072)))

(assert (=> d!2173854 (= (inv!85790 setElem!47522) (forall!16058 (exprs!6668 setElem!47522) lambda!399119))))

(declare-fun bs!1860815 () Bool)

(assert (= bs!1860815 d!2173854))

(declare-fun m!7667104 () Bool)

(assert (=> bs!1860815 m!7667104))

(assert (=> setNonEmpty!47522 d!2173854))

(declare-fun d!2173858 () Bool)

(assert (=> d!2173858 (forall!16058 (++!15117 lt!2481611 (exprs!6668 ct2!306)) lambda!399072)))

(declare-fun lt!2481691 () Unit!160996)

(assert (=> d!2173858 (= lt!2481691 (choose!52034 lt!2481611 (exprs!6668 ct2!306) lambda!399072))))

(assert (=> d!2173858 (forall!16058 lt!2481611 lambda!399072)))

(assert (=> d!2173858 (= (lemmaConcatPreservesForall!508 lt!2481611 (exprs!6668 ct2!306) lambda!399072) lt!2481691)))

(declare-fun bs!1860816 () Bool)

(assert (= bs!1860816 d!2173858))

(assert (=> bs!1860816 m!7666958))

(assert (=> bs!1860816 m!7666958))

(declare-fun m!7667108 () Bool)

(assert (=> bs!1860816 m!7667108))

(declare-fun m!7667110 () Bool)

(assert (=> bs!1860816 m!7667110))

(assert (=> bs!1860816 m!7666968))

(assert (=> b!6980606 d!2173858))

(declare-fun b!6980729 () Bool)

(declare-fun e!4195522 () Bool)

(assert (=> b!6980729 (= e!4195522 (nullable!6932 (regOne!34856 (h!73385 (exprs!6668 lt!2481615)))))))

(declare-fun bm!633429 () Bool)

(declare-fun call!633436 () (Set Context!12336))

(declare-fun call!633438 () (Set Context!12336))

(assert (=> bm!633429 (= call!633436 call!633438)))

(declare-fun b!6980730 () Bool)

(declare-fun e!4195521 () (Set Context!12336))

(declare-fun call!633435 () (Set Context!12336))

(assert (=> b!6980730 (= e!4195521 call!633435)))

(declare-fun c!1294034 () Bool)

(declare-fun bm!633430 () Bool)

(declare-fun call!633439 () List!67061)

(declare-fun c!1294032 () Bool)

(declare-fun $colon$colon!2454 (List!67061 Regex!17172) List!67061)

(assert (=> bm!633430 (= call!633439 ($colon$colon!2454 (exprs!6668 lt!2481620) (ite (or c!1294032 c!1294034) (regTwo!34856 (h!73385 (exprs!6668 lt!2481615))) (h!73385 (exprs!6668 lt!2481615)))))))

(declare-fun b!6980731 () Bool)

(declare-fun e!4195519 () (Set Context!12336))

(assert (=> b!6980731 (= e!4195519 (set.insert lt!2481620 (as set.empty (Set Context!12336))))))

(declare-fun b!6980732 () Bool)

(declare-fun e!4195520 () (Set Context!12336))

(declare-fun e!4195517 () (Set Context!12336))

(assert (=> b!6980732 (= e!4195520 e!4195517)))

(assert (=> b!6980732 (= c!1294034 (is-Concat!26017 (h!73385 (exprs!6668 lt!2481615))))))

(declare-fun c!1294033 () Bool)

(declare-fun bm!633431 () Bool)

(declare-fun call!633434 () (Set Context!12336))

(assert (=> bm!633431 (= call!633434 (derivationStepZipperDown!1890 (ite c!1294033 (regOne!34857 (h!73385 (exprs!6668 lt!2481615))) (regOne!34856 (h!73385 (exprs!6668 lt!2481615)))) (ite c!1294033 lt!2481620 (Context!12337 call!633439)) (h!73386 s!7408)))))

(declare-fun b!6980733 () Bool)

(assert (=> b!6980733 (= e!4195521 (as set.empty (Set Context!12336)))))

(declare-fun b!6980734 () Bool)

(assert (=> b!6980734 (= e!4195520 (set.union call!633434 call!633436))))

(declare-fun call!633437 () List!67061)

(declare-fun bm!633432 () Bool)

(assert (=> bm!633432 (= call!633438 (derivationStepZipperDown!1890 (ite c!1294033 (regTwo!34857 (h!73385 (exprs!6668 lt!2481615))) (ite c!1294032 (regTwo!34856 (h!73385 (exprs!6668 lt!2481615))) (ite c!1294034 (regOne!34856 (h!73385 (exprs!6668 lt!2481615))) (reg!17501 (h!73385 (exprs!6668 lt!2481615)))))) (ite (or c!1294033 c!1294032) lt!2481620 (Context!12337 call!633437)) (h!73386 s!7408)))))

(declare-fun b!6980735 () Bool)

(assert (=> b!6980735 (= e!4195517 call!633435)))

(declare-fun b!6980728 () Bool)

(assert (=> b!6980728 (= c!1294032 e!4195522)))

(declare-fun res!2846622 () Bool)

(assert (=> b!6980728 (=> (not res!2846622) (not e!4195522))))

(assert (=> b!6980728 (= res!2846622 (is-Concat!26017 (h!73385 (exprs!6668 lt!2481615))))))

(declare-fun e!4195518 () (Set Context!12336))

(assert (=> b!6980728 (= e!4195518 e!4195520)))

(declare-fun d!2173862 () Bool)

(declare-fun c!1294030 () Bool)

(assert (=> d!2173862 (= c!1294030 (and (is-ElementMatch!17172 (h!73385 (exprs!6668 lt!2481615))) (= (c!1293991 (h!73385 (exprs!6668 lt!2481615))) (h!73386 s!7408))))))

(assert (=> d!2173862 (= (derivationStepZipperDown!1890 (h!73385 (exprs!6668 lt!2481615)) lt!2481620 (h!73386 s!7408)) e!4195519)))

(declare-fun b!6980736 () Bool)

(declare-fun c!1294031 () Bool)

(assert (=> b!6980736 (= c!1294031 (is-Star!17172 (h!73385 (exprs!6668 lt!2481615))))))

(assert (=> b!6980736 (= e!4195517 e!4195521)))

(declare-fun b!6980737 () Bool)

(assert (=> b!6980737 (= e!4195518 (set.union call!633434 call!633438))))

(declare-fun bm!633433 () Bool)

(assert (=> bm!633433 (= call!633435 call!633436)))

(declare-fun bm!633434 () Bool)

(assert (=> bm!633434 (= call!633437 call!633439)))

(declare-fun b!6980738 () Bool)

(assert (=> b!6980738 (= e!4195519 e!4195518)))

(assert (=> b!6980738 (= c!1294033 (is-Union!17172 (h!73385 (exprs!6668 lt!2481615))))))

(assert (= (and d!2173862 c!1294030) b!6980731))

(assert (= (and d!2173862 (not c!1294030)) b!6980738))

(assert (= (and b!6980738 c!1294033) b!6980737))

(assert (= (and b!6980738 (not c!1294033)) b!6980728))

(assert (= (and b!6980728 res!2846622) b!6980729))

(assert (= (and b!6980728 c!1294032) b!6980734))

(assert (= (and b!6980728 (not c!1294032)) b!6980732))

(assert (= (and b!6980732 c!1294034) b!6980735))

(assert (= (and b!6980732 (not c!1294034)) b!6980736))

(assert (= (and b!6980736 c!1294031) b!6980730))

(assert (= (and b!6980736 (not c!1294031)) b!6980733))

(assert (= (or b!6980735 b!6980730) bm!633434))

(assert (= (or b!6980735 b!6980730) bm!633433))

(assert (= (or b!6980734 bm!633433) bm!633429))

(assert (= (or b!6980734 bm!633434) bm!633430))

(assert (= (or b!6980737 b!6980734) bm!633431))

(assert (= (or b!6980737 bm!633429) bm!633432))

(declare-fun m!7667112 () Bool)

(assert (=> bm!633431 m!7667112))

(declare-fun m!7667114 () Bool)

(assert (=> b!6980729 m!7667114))

(declare-fun m!7667116 () Bool)

(assert (=> bm!633432 m!7667116))

(declare-fun m!7667118 () Bool)

(assert (=> bm!633430 m!7667118))

(declare-fun m!7667120 () Bool)

(assert (=> b!6980731 m!7667120))

(assert (=> b!6980606 d!2173862))

(declare-fun b!6980751 () Bool)

(declare-fun res!2846630 () Bool)

(declare-fun e!4195530 () Bool)

(assert (=> b!6980751 (=> (not res!2846630) (not e!4195530))))

(declare-fun lt!2481699 () List!67061)

(declare-fun size!40872 (List!67061) Int)

(assert (=> b!6980751 (= res!2846630 (= (size!40872 lt!2481699) (+ (size!40872 lt!2481611) (size!40872 (exprs!6668 ct2!306)))))))

(declare-fun b!6980749 () Bool)

(declare-fun e!4195529 () List!67061)

(assert (=> b!6980749 (= e!4195529 (exprs!6668 ct2!306))))

(declare-fun b!6980752 () Bool)

(assert (=> b!6980752 (= e!4195530 (or (not (= (exprs!6668 ct2!306) Nil!66937)) (= lt!2481699 lt!2481611)))))

(declare-fun d!2173866 () Bool)

(assert (=> d!2173866 e!4195530))

(declare-fun res!2846629 () Bool)

(assert (=> d!2173866 (=> (not res!2846629) (not e!4195530))))

(declare-fun content!13198 (List!67061) (Set Regex!17172))

(assert (=> d!2173866 (= res!2846629 (= (content!13198 lt!2481699) (set.union (content!13198 lt!2481611) (content!13198 (exprs!6668 ct2!306)))))))

(assert (=> d!2173866 (= lt!2481699 e!4195529)))

(declare-fun c!1294037 () Bool)

(assert (=> d!2173866 (= c!1294037 (is-Nil!66937 lt!2481611))))

(assert (=> d!2173866 (= (++!15117 lt!2481611 (exprs!6668 ct2!306)) lt!2481699)))

(declare-fun b!6980750 () Bool)

(assert (=> b!6980750 (= e!4195529 (Cons!66937 (h!73385 lt!2481611) (++!15117 (t!380804 lt!2481611) (exprs!6668 ct2!306))))))

(assert (= (and d!2173866 c!1294037) b!6980749))

(assert (= (and d!2173866 (not c!1294037)) b!6980750))

(assert (= (and d!2173866 res!2846629) b!6980751))

(assert (= (and b!6980751 res!2846630) b!6980752))

(declare-fun m!7667130 () Bool)

(assert (=> b!6980751 m!7667130))

(declare-fun m!7667132 () Bool)

(assert (=> b!6980751 m!7667132))

(declare-fun m!7667134 () Bool)

(assert (=> b!6980751 m!7667134))

(declare-fun m!7667136 () Bool)

(assert (=> d!2173866 m!7667136))

(declare-fun m!7667138 () Bool)

(assert (=> d!2173866 m!7667138))

(declare-fun m!7667140 () Bool)

(assert (=> d!2173866 m!7667140))

(declare-fun m!7667142 () Bool)

(assert (=> b!6980750 m!7667142))

(assert (=> b!6980606 d!2173866))

(declare-fun b!6980753 () Bool)

(declare-fun e!4195533 () (Set Context!12336))

(assert (=> b!6980753 (= e!4195533 (as set.empty (Set Context!12336)))))

(declare-fun b!6980754 () Bool)

(declare-fun e!4195531 () (Set Context!12336))

(assert (=> b!6980754 (= e!4195531 e!4195533)))

(declare-fun c!1294038 () Bool)

(assert (=> b!6980754 (= c!1294038 (is-Cons!66937 (exprs!6668 lt!2481620)))))

(declare-fun bm!633435 () Bool)

(declare-fun call!633440 () (Set Context!12336))

(assert (=> bm!633435 (= call!633440 (derivationStepZipperDown!1890 (h!73385 (exprs!6668 lt!2481620)) (Context!12337 (t!380804 (exprs!6668 lt!2481620))) (h!73386 s!7408)))))

(declare-fun b!6980755 () Bool)

(assert (=> b!6980755 (= e!4195533 call!633440)))

(declare-fun b!6980756 () Bool)

(assert (=> b!6980756 (= e!4195531 (set.union call!633440 (derivationStepZipperUp!1822 (Context!12337 (t!380804 (exprs!6668 lt!2481620))) (h!73386 s!7408))))))

(declare-fun d!2173870 () Bool)

(declare-fun c!1294039 () Bool)

(declare-fun e!4195532 () Bool)

(assert (=> d!2173870 (= c!1294039 e!4195532)))

(declare-fun res!2846631 () Bool)

(assert (=> d!2173870 (=> (not res!2846631) (not e!4195532))))

(assert (=> d!2173870 (= res!2846631 (is-Cons!66937 (exprs!6668 lt!2481620)))))

(assert (=> d!2173870 (= (derivationStepZipperUp!1822 lt!2481620 (h!73386 s!7408)) e!4195531)))

(declare-fun b!6980757 () Bool)

(assert (=> b!6980757 (= e!4195532 (nullable!6932 (h!73385 (exprs!6668 lt!2481620))))))

(assert (= (and d!2173870 res!2846631) b!6980757))

(assert (= (and d!2173870 c!1294039) b!6980756))

(assert (= (and d!2173870 (not c!1294039)) b!6980754))

(assert (= (and b!6980754 c!1294038) b!6980755))

(assert (= (and b!6980754 (not c!1294038)) b!6980753))

(assert (= (or b!6980756 b!6980755) bm!633435))

(declare-fun m!7667144 () Bool)

(assert (=> bm!633435 m!7667144))

(declare-fun m!7667146 () Bool)

(assert (=> b!6980756 m!7667146))

(declare-fun m!7667148 () Bool)

(assert (=> b!6980757 m!7667148))

(assert (=> b!6980606 d!2173870))

(declare-fun d!2173872 () Bool)

(declare-fun c!1294040 () Bool)

(assert (=> d!2173872 (= c!1294040 (isEmpty!39072 s!7408))))

(declare-fun e!4195534 () Bool)

(assert (=> d!2173872 (= (matchZipper!2712 lt!2481618 s!7408) e!4195534)))

(declare-fun b!6980758 () Bool)

(assert (=> b!6980758 (= e!4195534 (nullableZipper!2401 lt!2481618))))

(declare-fun b!6980759 () Bool)

(assert (=> b!6980759 (= e!4195534 (matchZipper!2712 (derivationStepZipper!2652 lt!2481618 (head!14073 s!7408)) (tail!13148 s!7408)))))

(assert (= (and d!2173872 c!1294040) b!6980758))

(assert (= (and d!2173872 (not c!1294040)) b!6980759))

(assert (=> d!2173872 m!7667066))

(declare-fun m!7667150 () Bool)

(assert (=> b!6980758 m!7667150))

(assert (=> b!6980759 m!7667070))

(assert (=> b!6980759 m!7667070))

(declare-fun m!7667152 () Bool)

(assert (=> b!6980759 m!7667152))

(assert (=> b!6980759 m!7667074))

(assert (=> b!6980759 m!7667152))

(assert (=> b!6980759 m!7667074))

(declare-fun m!7667154 () Bool)

(assert (=> b!6980759 m!7667154))

(assert (=> start!669770 d!2173872))

(declare-fun bs!1860820 () Bool)

(declare-fun d!2173874 () Bool)

(assert (= bs!1860820 (and d!2173874 b!6980597)))

(declare-fun lambda!399127 () Int)

(assert (=> bs!1860820 (= lambda!399127 lambda!399071)))

(assert (=> d!2173874 true))

(declare-fun map!15424 ((Set Context!12336) Int) (Set Context!12336))

(assert (=> d!2173874 (= (appendTo!293 z1!570 ct2!306) (map!15424 z1!570 lambda!399127))))

(declare-fun bs!1860821 () Bool)

(assert (= bs!1860821 d!2173874))

(declare-fun m!7667168 () Bool)

(assert (=> bs!1860821 m!7667168))

(assert (=> start!669770 d!2173874))

(declare-fun bs!1860822 () Bool)

(declare-fun d!2173880 () Bool)

(assert (= bs!1860822 (and d!2173880 b!6980597)))

(declare-fun lambda!399128 () Int)

(assert (=> bs!1860822 (= lambda!399128 lambda!399072)))

(declare-fun bs!1860823 () Bool)

(assert (= bs!1860823 (and d!2173880 d!2173854)))

(assert (=> bs!1860823 (= lambda!399128 lambda!399119)))

(assert (=> d!2173880 (= (inv!85790 ct2!306) (forall!16058 (exprs!6668 ct2!306) lambda!399128))))

(declare-fun bs!1860824 () Bool)

(assert (= bs!1860824 d!2173880))

(declare-fun m!7667170 () Bool)

(assert (=> bs!1860824 m!7667170))

(assert (=> start!669770 d!2173880))

(assert (=> b!6980603 d!2173844))

(declare-fun b!6980765 () Bool)

(declare-fun res!2846634 () Bool)

(declare-fun e!4195538 () Bool)

(assert (=> b!6980765 (=> (not res!2846634) (not e!4195538))))

(declare-fun lt!2481703 () List!67061)

(assert (=> b!6980765 (= res!2846634 (= (size!40872 lt!2481703) (+ (size!40872 (exprs!6668 lt!2481615)) (size!40872 (exprs!6668 ct2!306)))))))

(declare-fun b!6980763 () Bool)

(declare-fun e!4195537 () List!67061)

(assert (=> b!6980763 (= e!4195537 (exprs!6668 ct2!306))))

(declare-fun b!6980766 () Bool)

(assert (=> b!6980766 (= e!4195538 (or (not (= (exprs!6668 ct2!306) Nil!66937)) (= lt!2481703 (exprs!6668 lt!2481615))))))

(declare-fun d!2173882 () Bool)

(assert (=> d!2173882 e!4195538))

(declare-fun res!2846633 () Bool)

(assert (=> d!2173882 (=> (not res!2846633) (not e!4195538))))

(assert (=> d!2173882 (= res!2846633 (= (content!13198 lt!2481703) (set.union (content!13198 (exprs!6668 lt!2481615)) (content!13198 (exprs!6668 ct2!306)))))))

(assert (=> d!2173882 (= lt!2481703 e!4195537)))

(declare-fun c!1294043 () Bool)

(assert (=> d!2173882 (= c!1294043 (is-Nil!66937 (exprs!6668 lt!2481615)))))

(assert (=> d!2173882 (= (++!15117 (exprs!6668 lt!2481615) (exprs!6668 ct2!306)) lt!2481703)))

(declare-fun b!6980764 () Bool)

(assert (=> b!6980764 (= e!4195537 (Cons!66937 (h!73385 (exprs!6668 lt!2481615)) (++!15117 (t!380804 (exprs!6668 lt!2481615)) (exprs!6668 ct2!306))))))

(assert (= (and d!2173882 c!1294043) b!6980763))

(assert (= (and d!2173882 (not c!1294043)) b!6980764))

(assert (= (and d!2173882 res!2846633) b!6980765))

(assert (= (and b!6980765 res!2846634) b!6980766))

(declare-fun m!7667172 () Bool)

(assert (=> b!6980765 m!7667172))

(declare-fun m!7667174 () Bool)

(assert (=> b!6980765 m!7667174))

(assert (=> b!6980765 m!7667134))

(declare-fun m!7667176 () Bool)

(assert (=> d!2173882 m!7667176))

(declare-fun m!7667178 () Bool)

(assert (=> d!2173882 m!7667178))

(assert (=> d!2173882 m!7667140))

(declare-fun m!7667180 () Bool)

(assert (=> b!6980764 m!7667180))

(assert (=> b!6980597 d!2173882))

(assert (=> b!6980597 d!2173844))

(declare-fun d!2173884 () Bool)

(declare-fun e!4195543 () Bool)

(assert (=> d!2173884 e!4195543))

(declare-fun res!2846639 () Bool)

(assert (=> d!2173884 (=> (not res!2846639) (not e!4195543))))

(declare-fun lt!2481708 () Context!12336)

(declare-fun dynLambda!26748 (Int Context!12336) Context!12336)

(assert (=> d!2173884 (= res!2846639 (= lt!2481607 (dynLambda!26748 lambda!399071 lt!2481708)))))

(declare-fun choose!52036 ((Set Context!12336) Int Context!12336) Context!12336)

(assert (=> d!2173884 (= lt!2481708 (choose!52036 z1!570 lambda!399071 lt!2481607))))

(assert (=> d!2173884 (set.member lt!2481607 (map!15424 z1!570 lambda!399071))))

(assert (=> d!2173884 (= (mapPost2!27 z1!570 lambda!399071 lt!2481607) lt!2481708)))

(declare-fun b!6980772 () Bool)

(assert (=> b!6980772 (= e!4195543 (set.member lt!2481708 z1!570))))

(assert (= (and d!2173884 res!2846639) b!6980772))

(declare-fun b_lambda!261613 () Bool)

(assert (=> (not b_lambda!261613) (not d!2173884)))

(declare-fun m!7667182 () Bool)

(assert (=> d!2173884 m!7667182))

(declare-fun m!7667184 () Bool)

(assert (=> d!2173884 m!7667184))

(declare-fun m!7667186 () Bool)

(assert (=> d!2173884 m!7667186))

(declare-fun m!7667188 () Bool)

(assert (=> d!2173884 m!7667188))

(declare-fun m!7667190 () Bool)

(assert (=> b!6980772 m!7667190))

(assert (=> b!6980597 d!2173884))

(declare-fun b!6980778 () Bool)

(declare-fun e!4195547 () Bool)

(declare-fun tp!1928221 () Bool)

(declare-fun tp!1928222 () Bool)

(assert (=> b!6980778 (= e!4195547 (and tp!1928221 tp!1928222))))

(assert (=> b!6980608 (= tp!1928201 e!4195547)))

(assert (= (and b!6980608 (is-Cons!66937 (exprs!6668 setElem!47522))) b!6980778))

(declare-fun b!6980783 () Bool)

(declare-fun e!4195550 () Bool)

(declare-fun tp!1928225 () Bool)

(assert (=> b!6980783 (= e!4195550 (and tp_is_empty!43569 tp!1928225))))

(assert (=> b!6980605 (= tp!1928204 e!4195550)))

(assert (= (and b!6980605 (is-Cons!66938 (t!380805 s!7408))) b!6980783))

(declare-fun condSetEmpty!47528 () Bool)

(assert (=> setNonEmpty!47522 (= condSetEmpty!47528 (= setRest!47522 (as set.empty (Set Context!12336))))))

(declare-fun setRes!47528 () Bool)

(assert (=> setNonEmpty!47522 (= tp!1928202 setRes!47528)))

(declare-fun setIsEmpty!47528 () Bool)

(assert (=> setIsEmpty!47528 setRes!47528))

(declare-fun setNonEmpty!47528 () Bool)

(declare-fun tp!1928231 () Bool)

(declare-fun setElem!47528 () Context!12336)

(declare-fun e!4195553 () Bool)

(assert (=> setNonEmpty!47528 (= setRes!47528 (and tp!1928231 (inv!85790 setElem!47528) e!4195553))))

(declare-fun setRest!47528 () (Set Context!12336))

(assert (=> setNonEmpty!47528 (= setRest!47522 (set.union (set.insert setElem!47528 (as set.empty (Set Context!12336))) setRest!47528))))

(declare-fun b!6980788 () Bool)

(declare-fun tp!1928230 () Bool)

(assert (=> b!6980788 (= e!4195553 tp!1928230)))

(assert (= (and setNonEmpty!47522 condSetEmpty!47528) setIsEmpty!47528))

(assert (= (and setNonEmpty!47522 (not condSetEmpty!47528)) setNonEmpty!47528))

(assert (= setNonEmpty!47528 b!6980788))

(declare-fun m!7667200 () Bool)

(assert (=> setNonEmpty!47528 m!7667200))

(declare-fun b!6980789 () Bool)

(declare-fun e!4195554 () Bool)

(declare-fun tp!1928232 () Bool)

(declare-fun tp!1928233 () Bool)

(assert (=> b!6980789 (= e!4195554 (and tp!1928232 tp!1928233))))

(assert (=> b!6980601 (= tp!1928203 e!4195554)))

(assert (= (and b!6980601 (is-Cons!66937 (exprs!6668 ct2!306))) b!6980789))

(declare-fun b_lambda!261617 () Bool)

(assert (= b_lambda!261607 (or b!6980597 b_lambda!261617)))

(declare-fun bs!1860825 () Bool)

(declare-fun d!2173888 () Bool)

(assert (= bs!1860825 (and d!2173888 b!6980597)))

(declare-fun validRegex!8836 (Regex!17172) Bool)

(assert (=> bs!1860825 (= (dynLambda!26744 lambda!399072 (h!73385 lt!2481611)) (validRegex!8836 (h!73385 lt!2481611)))))

(declare-fun m!7667202 () Bool)

(assert (=> bs!1860825 m!7667202))

(assert (=> b!6980667 d!2173888))

(declare-fun b_lambda!261619 () Bool)

(assert (= b_lambda!261613 (or b!6980597 b_lambda!261619)))

(declare-fun bs!1860826 () Bool)

(declare-fun d!2173890 () Bool)

(assert (= bs!1860826 (and d!2173890 b!6980597)))

(declare-fun lt!2481710 () Unit!160996)

(assert (=> bs!1860826 (= lt!2481710 (lemmaConcatPreservesForall!508 (exprs!6668 lt!2481708) (exprs!6668 ct2!306) lambda!399072))))

(assert (=> bs!1860826 (= (dynLambda!26748 lambda!399071 lt!2481708) (Context!12337 (++!15117 (exprs!6668 lt!2481708) (exprs!6668 ct2!306))))))

(declare-fun m!7667204 () Bool)

(assert (=> bs!1860826 m!7667204))

(declare-fun m!7667206 () Bool)

(assert (=> bs!1860826 m!7667206))

(assert (=> d!2173884 d!2173890))

(declare-fun b_lambda!261621 () Bool)

(assert (= b_lambda!261609 (or b!6980599 b_lambda!261621)))

(declare-fun bs!1860827 () Bool)

(declare-fun d!2173892 () Bool)

(assert (= bs!1860827 (and d!2173892 b!6980599)))

(assert (=> bs!1860827 (= (dynLambda!26746 lambda!399070 lt!2481682) (matchZipper!2712 (set.insert lt!2481682 (as set.empty (Set Context!12336))) s!7408))))

(declare-fun m!7667208 () Bool)

(assert (=> bs!1860827 m!7667208))

(assert (=> bs!1860827 m!7667208))

(declare-fun m!7667210 () Bool)

(assert (=> bs!1860827 m!7667210))

(assert (=> d!2173828 d!2173892))

(declare-fun b_lambda!261623 () Bool)

(assert (= b_lambda!261611 (or b!6980595 b_lambda!261623)))

(declare-fun bs!1860828 () Bool)

(declare-fun d!2173894 () Bool)

(assert (= bs!1860828 (and d!2173894 b!6980595)))

(assert (=> bs!1860828 (= (dynLambda!26747 lambda!399073 lt!2481616) (derivationStepZipperUp!1822 lt!2481616 (h!73386 s!7408)))))

(assert (=> bs!1860828 m!7666930))

(assert (=> d!2173846 d!2173894))

(push 1)

(assert (not b!6980668))

(assert (not b!6980765))

(assert tp_is_empty!43569)

(assert (not b!6980756))

(assert (not d!2173874))

(assert (not bs!1860828))

(assert (not d!2173854))

(assert (not d!2173836))

(assert (not b!6980788))

(assert (not bm!633431))

(assert (not b!6980758))

(assert (not b!6980783))

(assert (not d!2173846))

(assert (not b!6980757))

(assert (not d!2173882))

(assert (not b_lambda!261623))

(assert (not d!2173826))

(assert (not d!2173858))

(assert (not bm!633432))

(assert (not bm!633435))

(assert (not b!6980702))

(assert (not d!2173872))

(assert (not d!2173884))

(assert (not b!6980778))

(assert (not b!6980751))

(assert (not bm!633430))

(assert (not b!6980750))

(assert (not d!2173822))

(assert (not b!6980687))

(assert (not d!2173866))

(assert (not bm!633416))

(assert (not d!2173844))

(assert (not d!2173830))

(assert (not b!6980729))

(assert (not b!6980688))

(assert (not d!2173880))

(assert (not b!6980759))

(assert (not setNonEmpty!47528))

(assert (not d!2173820))

(assert (not b!6980789))

(assert (not bs!1860826))

(assert (not b_lambda!261621))

(assert (not d!2173828))

(assert (not d!2173840))

(assert (not b_lambda!261619))

(assert (not bs!1860827))

(assert (not b_lambda!261617))

(assert (not bs!1860825))

(assert (not d!2173850))

(assert (not b!6980764))

(assert (not b!6980703))

(assert (not b!6980673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

